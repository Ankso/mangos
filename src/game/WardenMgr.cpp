/*
 * Copyright (C) 2005-2010 MaNGOS <http://getmangos.com/>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "WardenMgr.h"
#include "World.h"
#include "Policies/SingletonImp.h"

/*
Useful information:

- A module is chosen for 24H and saved. Next client connection the same day will reuse the
  same module.
- The client is kicked is he failed to load a module after the module is sent.
- We ask the client to run between 5 and 9 cheat checks and we sent this request 12 to 15
  seconds after his last reply.
- The client is kicked if it did not reply 2 minutes after the cheat checks packet is sent
- The client is kicked if one test failed.
*/

WardenMgr::WardenMgr() : m_IsWardenInit(false), m_Enabled(true)
{
}

bool WardenMgr::Initialize(const char *addr, u_short port)
{
    // Save the adress and port
    m_WardendAddress = addr;
    m_WardendPort = port;
    //m_Connected = false;

    if (!m_IsWardenInit && InitializeCommunication(addr, port))
        m_IsWardenInit = true;
    return m_IsWardenInit;
}

bool WardenMgr::InitializeCommunication(const char *host, u_short port)
{
    // Establish connection.
    typedef ACE_Connector<WardenSvcHandler, ACE_SOCK_CONNECTOR> MyConnector;
    WardenSvcHandler* handler = new WardenSvcHandler;
    MyConnector connector;
    ACE_INET_Addr remoteAddr(port, host);
    if(connector.connect(handler,remoteAddr)==-1)
    {
        BASIC_LOG("Connection to Warden Daemon failed");
        return false;
    }
    //m_Connected = true;

    m_WardenProcessStream = handler->Peer;
    ByteBuffer pkt;
    const char *sign = WARDEND_SIGN;
    pkt << sign;
    m_WardenProcessStream->send((char const*)pkt.contents(), pkt.size());
    m_Enabled = true;

    return true;
}

bool WardenMgr::Register(WorldSession* const session)
{
    DEBUG_LOG("WardenMgr::Register");
    if (!m_IsWardenInit)
        return false;

    if (session->GetWardenStatus() != WARD_STATUS_UNREGISTERED)
        return false;

    // We send the session key and the account id
    ByteBuffer pkt;
    pkt << uint8(MMSG_REGISTER);
    pkt << (uint32)session->GetAccountId();
    pkt.hexlike();
    m_WardenProcessStream->send((char const*)pkt.contents(), pkt.size());

    session->GetWardenTimer().SetInterval(5*IN_MILLISECONDS); // to not resend Register in next 5 seconds
    return true;
}

// Triggered by world every 300ms
void WardenMgr::Update()
{
    if (!m_IsWardenInit)
        return;

    /*if (!m_Connected)
        InitializeCommunication(m_WardendAddress.c_str(), m_WardendPort);*/

    ACE_Time_Value t(0.001);
    int res = ACE_Reactor::instance()->run_reactor_event_loop(t);
}

// Triggered by a session
void WardenMgr::Update(WorldSession* const session, uint32 diff)
{
    session->GetWardenTimer().Update(diff);
    if (!session->GetWardenTimer().Passed())
        return;

    switch (session->GetWardenStatus())
    {
        case WARD_STATUS_CHEAT_CHECK_OUT:
            // timeout waiting for a cheat check reply
            BASIC_LOG("Warden Cheat-check: no reply received in the allowed time, kicking account %u", session->GetAccountId());
            session->KickPlayer();
            break;
        case WARD_STATUS_CHEAT_CHECK_IN:
            // send cheat check
            SendCheatCheck(session);
            session->SetWardenStatus(WARD_STATUS_CHEAT_CHECK_PENDING);
            session->GetWardenTimer().SetInterval(15*IN_MILLISECONDS);
            session->GetWardenTimer().Reset();
            break;
        case WARD_STATUS_UNREGISTERED:
            // register a client that could not register earlier
            Register(session);
            break;
        case WARD_STATUS_CHEAT_CHECK_PENDING:
            sLog.outError("Warden Daemon does not reply anymore, disabling warden functions");
            sWardenMgr.SetDisabled();
            /* try connecting again
            session->SetWardenStatus(WARD_STATUS_REGISTERED);
            m_Connected = false;*/
            break;
    }
}

void WardenMgr::Unregister(WorldSession* const session)
{
    DEBUG_LOG("WardenMgr::Unregister");
    if (!m_IsWardenInit)
        return;

    ByteBuffer pkt;
    pkt << uint8(MMSG_UNREGISTER);
    pkt << (uint32)session->GetAccountId();
    pkt.hexlike();

    m_WardenProcessStream->send((char const*)pkt.contents(), pkt.size());
}

void WardenMgr::SendModule(WorldSession* const session)
{
    ByteBuffer pkt;
    pkt << uint8(MMSG_MODULEFILE_REQUEST);
    pkt << (uint32)session->GetAccountId();
    m_WardenProcessStream->send((char const*)pkt.contents(), pkt.size());
}

void WardenMgr::SetInitialKeys(const uint8 *bSessionKey1, const uint8 *bSessionKey2, uint8* ClientKey, uint8 *ServerKey)
{
     uint8 bRandomData[20] = {0};
     uint8 bRandomSource1[20] = {0};
     uint8 bRandomSource2[20] = {0};

     SHA1(bSessionKey1, 20, bRandomSource1);
     SHA1(bSessionKey2, 20, bRandomSource2);

     SHA_CTX mCtx;
     SHA1_Init(&mCtx);

     // compute hash
     SHA1_Update(&mCtx, bRandomSource1, 20);
     SHA1_Update(&mCtx, bRandomData, 20);
     SHA1_Update(&mCtx, bRandomSource2, 20);

     // finalize
     SHA1_Final(bRandomData, &mCtx);

     uint8 position = 0;
     uint8 key[16] = {0};
     for (uint8 i=0; i<16; ++i)
     {
         if (position >= 20)
         {
             SHA1_Init(&mCtx);
             SHA1_Update(&mCtx, bRandomSource1, 20);
             SHA1_Update(&mCtx, bRandomData, 20);
             SHA1_Update(&mCtx, bRandomSource2, 20);
             SHA1_Final(bRandomData, &mCtx);
             position = 0;
         }
         key[i] = bRandomData[position];
         ++position;
     }
     rc4_init(ClientKey, key, 16);

     for (uint8 i=0; i<16; ++i)
         key[i]=0;

     for (uint8 i=0; i<16; ++i)
     {
         if (position >= 20)
         {
             SHA1_Init(&mCtx);
             SHA1_Update(&mCtx, bRandomSource1, 20);
             SHA1_Update(&mCtx, bRandomData, 20);
             SHA1_Update(&mCtx, bRandomSource2, 20);
             SHA1_Final(bRandomData, &mCtx);
             position = 0;
         }
         key[i] = bRandomData[position];
         ++position;
     }
     rc4_init(ServerKey, key, 16);
}

void WardenMgr::GenerateAndSendSeed(WorldSession* const session)
{
    DEBUG_LOG("GenerateAndSendSeed: building wardend packet");
    BigNumber s;
    s.SetRand(16 * 8);
    WorldPacket data( SMSG_WARDEN_DATA, 1+16 );
    data << uint8(WARDS_SEED);
    data.append(s.AsByteArray(16), 16);
    // We build the packet for wardend before crypting the client one
    ByteBuffer pkt;

    pkt << uint8(MMSG_SERVER_KEY_REQUEST);
    pkt << uint32(session->GetAccountId());
    pkt.append(session->GetSessionKey().AsByteArray(40), 40);
    pkt.append(data.contents(), data.size());

    // We can now crypt and send the packet to the client
    data.hexlike();
    //data.crypt(sWardenMgr, session->GetWardenServerKey(), &WardenMgr::rc4_crypt);
    data.crypt(session->GetWardenServerKey(), &rc4_crypt);
    session->SendPacket(&data);

    // And we send this packet to the warden daemon for it to make the new key pair
    m_WardenProcessStream->send((char const*)pkt.contents(), pkt.size());
}

void WardenMgr::GetNewClientKey(WorldSession* const session)
{
    ByteBuffer pkt;
    pkt << uint8(MMSG_CLIENT_KEY_REQUEST);
    pkt << uint32(session->GetAccountId());
    m_WardenProcessStream->send((char const*)pkt.contents(), pkt.size());
}

// Sending this packet to initialize engine functions warden uses
void WardenMgr::SendWardenData(WorldSession* const session)
{
    DEBUG_LOG("WardenMgr::SendWardenData");
    WorldPacket data( SMSG_WARDEN_DATA, 1 + 2+4+20 + 1 + 2+4+8 + 1 +2+4+8); // 42 // 57 // 3.3.5a init packet
    data << uint8(WARDS_DATA);
    {
        data << uint16(20);
        uint8 buff[20] =
        {
            0x01, 0x00, 0x02, 0x00,
            0x80, 0x4F, 0x02, 0x00,     // 0x00400000 + 0x00024F80 SFileOpenFile
            0xC0, 0x18, 0x02, 0x00,     // 0x00400000 + 0x000218C0 SFileGetFileSize
            0x30, 0x25, 0x02, 0x00,     // 0x00400000 + 0x00022530 SFileReadFile
            0x10, 0x29, 0x02, 0x00      // 0x00400000 + 0x00022910 SFileCloseFile
        };
        data << uint32(BuildChecksum(buff, 20));
        data.append(buff, 20);
    }
    data << uint8(WARDS_DATA);
    {
        data << uint16(8);
        uint8 buff[8] =
        {
           0x04, 0x00, 0x00,
           0x40, 0x9D, 0x41, 0x00,      // 0x00400000 + 0x00419D40 FrameScript__GetText
           0x01
        };
        data << uint32(BuildChecksum(buff, 8));
        data.append(buff, 8);
    }
    // Computed part for timing checks (did not exist on Offy 3.3.5a)
    data << uint8(WARDS_DATA);
    {
        data << uint16(8);
        uint8 buff[8] =
        {
           0x01, 0x01, 0x00,
           0x20, 0xAE, 0x46, 0x00,      // 0x00400000 + 0x0046AE20 PerformanceCounter
           0x01
        };
        data << uint32(BuildChecksum(buff, 8));
        data.append(buff, 8);
    }

    data.hexlike();
    //data.crypt(sWardenMgr, session->GetWardenServerKey(), &WardenMgr::rc4_crypt);
    data.crypt(session->GetWardenServerKey(), &rc4_crypt);
    session->SendPacket(&data);
}

uint32 WardenMgr::BuildChecksum(const uint8* data, uint32 dataLen)
{
    uint8 hash[20];
    SHA1(data, dataLen, hash);
    uint32 checkSum = 0;
    for (uint8 i=0; i<5; ++i)
        checkSum = checkSum ^ *(uint32*)(&hash[0] + i*4);
    return checkSum;
}

void WardenMgr::AskValidateTransformedSeed(WorldSession* const session, WorldPacket& clientPacket)
{
    uint32 accountId = session->GetAccountId();
    DEBUG_LOG("AskValidateTransformedSeed(%u)", accountId);
    uint8 tSeed[20];
    clientPacket.read(tSeed, 20);

    ByteBuffer pkt;
    pkt << uint8(MMSG_TSEED_VALIDATION_REQUEST);
    pkt << uint32(session->GetAccountId());
    pkt.append(tSeed, 20);
    m_WardenProcessStream->send((char const*)pkt.contents(), pkt.size());
}

void WardenMgr::SendCheatCheck(WorldSession* const session)
{
    DEBUG_LOG("SendCheatCheck: building wardend packet request for a cheat check");
    // We need to ask the wardend for the request, we don't know warden data from core
    ByteBuffer pkt;
    pkt << uint8(MMSG_CHEATS_REQUEST);
    pkt << uint32(session->GetAccountId());
    m_WardenProcessStream->send((char const*)pkt.contents(), pkt.size());
}

void WardenMgr::AskValidateCheatChecks(WorldSession* const session, WorldPacket& clientPacket)
{
    DEBUG_LOG("WardenMgr::ValidateCheatChecks");
    // We first check the checksum, no need to go further if it is wrong
    uint16 len;
    uint32 checksum;
    clientPacket >> len;
    clientPacket >> checksum;
    if (checksum != BuildChecksum(clientPacket.contents() + clientPacket.rpos(), clientPacket.size() - clientPacket.rpos()))
    {
        BASIC_LOG("Warden Cheat-check: Kicking account %u for failed check, Packet Checksum 0x%08X is invalid!", session->GetAccountId(), checksum);
        ReactToCheatCheckResult(session, false);
    }
    else
    {
        ByteBuffer pkt;
        pkt << uint8(MMSG_CHEATS_VALIDATION_REQUEST);
        pkt << uint32(session->GetAccountId());
        pkt << uint32(clientPacket.size());
        pkt.append(clientPacket.contents(), clientPacket.size()); // full packet
        m_WardenProcessStream->send((char const*)pkt.contents(), pkt.size());
    }
    // Make the packet fully read
    clientPacket.read_skip(clientPacket.size() - clientPacket.rpos());
    session->SetWardenStatus(WARD_STATUS_CHEAT_CHECK_PENDING); // so that we don't kick if daemon crashs
}

void WardenMgr::ReactToCheatCheckResult(WorldSession* const session, bool result, bool immediate)
{
    DEBUG_LOG("ReactToCheatCheckResult %s %s",result?"true":"false",immediate?"true":"false");
    if (result)
    {
        session->SetWardenStatus(WARD_STATUS_CHEAT_CHECK_IN);
        const uint32 shortTime = immediate ? 0 : urand(15, 25); // from 15 to 25 seconds
        session->GetWardenTimer().SetCurrent(0);                // so that we don't overload the timer
        session->GetWardenTimer().SetInterval(shortTime*IN_MILLISECONDS);
        DEBUG_LOG("Timer set to %u seconds", shortTime);
        session->GetWardenTimer().Reset();
    }
    else
    {
        session->KickPlayer(); // In this case, probably better to ban for 24H
    }
}

//****************************************************
// Warden Demon replies handlers

bool WardenSvcHandler::_HandleRegisterRep()
{
    DEBUG_LOG("WardenSvcHandler::_HandleRegisterRep()");

    uint8 rc4[16];
    uint8 md5[16];
    uint32 moduleLen;
    uint32 accountId;

    Peer->recv_n(&accountId, 4);
    Peer->recv_n(&moduleLen, 4);

    WorldSession* session = sWorld.FindSession(accountId);

    if (moduleLen == 0)
    {
        session->GetWardenTimer().SetInterval(5*IN_MILLISECONDS);
        session->GetWardenTimer().Reset(); // We will retry in 5 seconds
        return true;
    }
    else if (moduleLen == 0xFFFFFFFF)
    {
        session->SetWardenStatus(WARD_STATUS_USER_DISABLED);
        DEBUG_LOG("Disabling warden for account %u since not Windows platform", accountId);
        return true;
    }

    Peer->recv_n(rc4, 16);
    Peer->recv_n(md5, 16);

    session->SetWardenStatus(WARD_STATUS_REGISTERED);

    WorldPacket data( SMSG_WARDEN_DATA, 1+16+16+4 );
    data << uint8(WARDS_MODULE_INFO);
    data.append(md5, 16);
    data.append(rc4, 16);
    data << uint32(moduleLen);

    // 1st crypt the packet
    uint8 *skey = session->GetSessionKey().AsByteArray(40);

    sWardenMgr.SetInitialKeys(&skey[0], &skey[20], session->GetWardenClientKey(), session->GetWardenServerKey());
    data.hexlike();
    //data.crypt(sWardenMgr, session->GetWardenServerKey(), &WardenMgr::rc4_crypt);
    data.crypt(session->GetWardenServerKey(), &rc4_crypt);

    // Then send the first packet to client
    session->SendPacket(&data);
    return true;
}

bool WardenSvcHandler::_HandleServerKeyRep()
{
    DEBUG_LOG("WardenSvcHandler::_HandleServerKeyRep()");
    uint32 accountId;
    Peer->recv_n(&accountId, 4);
    WorldSession* session = sWorld.FindSession(accountId);
    Peer->recv_n(session->GetWardenServerKey(), 0x102);
    DEBUG_LOG("Server key changed for account %u", accountId);

    // It's time to send warden client init data for functions offset then we can do cheat checks
    sWardenMgr.SendWardenData(session);
    return true;
}

bool WardenSvcHandler::_HandleClientKeyRep()
{
    DEBUG_LOG("WardenSvcHandler::_HandleClientKeyRep()");
    uint32 accountId;
    Peer->recv_n(&accountId, 4);
    WorldSession* session = sWorld.FindSession(accountId);
    Peer->recv_n(session->GetWardenClientKey(), 0x102);
    DEBUG_LOG("Client key changed for account %u", accountId);
    return true;
}

bool WardenSvcHandler::_HandleModuleRep()
{
    DEBUG_LOG(" WardenSvcHandler::_HandleModuleRep()");
    uint32 accountId;
    uint16 modLength;
    uint16 offset = 0;
    uint8 *module;

    Peer->recv_n(&accountId ,4);
    Peer->recv_n(&modLength ,2);

    module = (uint8*)malloc(modLength);
    Peer->recv_n(module, modLength);

    WorldSession* session = sWorld.FindSession(accountId);
    while (modLength > 0)
    {
        uint16 len = modLength>500?500:modLength;
        WorldPacket data( SMSG_WARDEN_DATA, 1+2+len );
        data << uint8(WARDS_MODULE_CHUNK);
        data << uint16(len);
        data.append(module + offset, len);
        data.hexlike();
        //data.crypt(sWardenMgr, session->GetWardenServerKey(), &WardenMgr::rc4_crypt);
        data.crypt(session->GetWardenServerKey(), &rc4_crypt);

        offset = offset + len;
        modLength = modLength - len;
        session->SendPacket(&data);
    }
    free(module);
    return true;
}

bool WardenSvcHandler::_HandleCheatCheckRep()
{
    DEBUG_LOG("WardenSvcHandler::_HandleCheatCheckRep() - Sending cheat-check to client");
    uint32 accountId;
    uint32 pktLen;
    uint8 *packet;
    Peer->recv_n(&accountId ,4);
    Peer->recv_n(&pktLen ,4);
    packet = (uint8*)malloc(pktLen);
    Peer->recv_n(packet, pktLen);
    DEBUG_LOG("Received pkt len: %u", pktLen);

    WorldSession* session = sWorld.FindSession(accountId);
    WorldPacket data( SMSG_WARDEN_DATA, 1+pktLen );
    data << uint8(WARDS_CHEAT_CHECK);
    data.append(packet, pktLen);

    data.hexlike();
    //data.crypt(sWardenMgr, session->GetWardenServerKey(), &WardenMgr::rc4_crypt);
    data.crypt(session->GetWardenServerKey(), &rc4_crypt);
    session->SendPacket(&data);
    free(packet);

    // Cheat checks are sent, we have to ensure we got a reply
    session->SetWardenStatus(WARD_STATUS_CHEAT_CHECK_OUT);
    session->GetWardenTimer().SetInterval(2*MINUTE*IN_MILLISECONDS);
    session->GetWardenTimer().Reset();
    return true;
}

bool WardenSvcHandler::_HandleCheatCheckValidationRep()
{
    DEBUG_LOG("WardenSvcHandler::_HandleCheatCheckValidationRep() - Processed client reply");
    uint32 accountId;
    uint8 result;
    Peer->recv_n(&accountId ,4);
    Peer->recv_n(&result ,1);
    WorldSession* session = sWorld.FindSession(accountId);
    sWardenMgr.ReactToCheatCheckResult(session, result!=0?true:false);
    return true;
}

bool WardenSvcHandler::_HandleTSeedValidationRep()
{
    DEBUG_LOG("WardenSvcHandler::_HandleTSeedValidationRep()");
    uint32 accountId;
    uint8 result;
    Peer->recv_n(&accountId ,4);
    Peer->recv_n(&result ,1);
    WorldSession* session = sWorld.FindSession(accountId);
    sWardenMgr.ReactToCheatCheckResult(session, result!=0?true:false, true);
    return true;
}

/////////////////////////////
// Session
/////////////////////////////
void WorldSession::HandleWardenRegister()
{
    if (sWardenMgr.IsEnabled())
    {
        sWardenMgr.Register(this);
    }
}

void WorldSession::HandleWardenUnregister()
{
    if (sWardenMgr.IsEnabled())
    {
        sWardenMgr.Unregister(this);
    }
}

void WorldSession::HandleWardenDataOpcode(WorldPacket& recv_data)
{
    if (sWardenMgr.IsReady())
    {
        //recv_data.crypt(sWardenMgr, m_rc4ClientKey, &WardenMgr::rc4_crypt);
        recv_data.crypt(m_rc4ClientKey, &rc4_crypt);
        uint8 warden_opcode;
        recv_data >> warden_opcode;
        recv_data.hexlike();
        switch(warden_opcode)
        {
            case WARDC_MODULE_LOAD_FAILED:
                DEBUG_LOG("Received the reply load failed");
                // We have to send the module
                if (GetWardenStatus() == WARD_STATUS_LOAD_FAILED)
                {
                    KickPlayer();
                }
                else
                {
                    sWardenMgr.SendModule(this);
                    SetWardenStatus(WARD_STATUS_LOAD_FAILED);
                }
                break;
            case WARDC_MODULE_LOADED:
                DEBUG_LOG("Received the reply module loaded");
                SetWardenStatus(WARD_STATUS_INIT);
                // We go next step: Send a seed
                sWardenMgr.GenerateAndSendSeed(this); // This will trigger the server key change
                break;
            case WARDC_CHEAT_CHECK_RESULT:
                DEBUG_LOG("Received the cheat-check result");
                sWardenMgr.AskValidateCheatChecks(this, recv_data);
                break;
            case WARDC_TRANSFORMED_SEED:
                DEBUG_LOG("Received the transformed seed");
                // Let's validate this data
                sWardenMgr.AskValidateTransformedSeed(this, recv_data);
                // It's important to request new client key after validating this packet, because this trigger the module unload
                sWardenMgr.GetNewClientKey(this);
                break;
            default:
                DEBUG_LOG("Problem with packet");
        }
    }
    else
    {
        recv_data.read_skip<uint8>();
        DEBUG_LOG("Received opcode CMSG_WARDEN_DATA, but this session has no module linked");
    }
}

// Connection event handling

const WardenSvcHandler::WardenMgrCmd table[] =
{
    { WMSG_REGISTER_REPLY,              &WardenSvcHandler::_HandleRegisterRep               },
    { WMSG_SERVER_KEY_REPLY,            &WardenSvcHandler::_HandleServerKeyRep              },
    { WMSG_CLIENT_KEY_REPLY,            &WardenSvcHandler::_HandleClientKeyRep              },
    { WMSG_CHEATS_REPLY,                &WardenSvcHandler::_HandleCheatCheckRep             },
    { WMSG_CHEATS_VALIDATION_REPLY,     &WardenSvcHandler::_HandleCheatCheckValidationRep   },
    { WMGS_TSEED_VALIDATION_REPLY,      &WardenSvcHandler::_HandleTSeedValidationRep        },
    { WMSG_MODULEFILE_REPLY,            &WardenSvcHandler::_HandleModuleRep                 }
};

#define WARDEN_REPLY_TOTAL_COMMANDS sizeof(table)/sizeof(WardenMgrCmd)

int WardenSvcHandler::open(void*)
{
    BASIC_LOG("Connection to Warden Daemon established");
    ACE_Reactor::instance()->register_handler(this, ACE_Event_Handler::READ_MASK);
    Peer=&peer();
    return 0;
}

int WardenSvcHandler::handle_input(ACE_HANDLE /*handle*/)
{
    uint8 _cmd;
    Peer->recv_n(&_cmd, 1);

    for (int i = 0; i < WARDEN_REPLY_TOTAL_COMMANDS; ++i)
    {
        if ((uint8)table[i].cmd == _cmd)
        {
            if (!(*this.*table[i].handler)())
            {
                return 0;
            }
            break;
        }
    }
    return 0;
}

INSTANTIATE_SINGLETON_1(WardenMgr);