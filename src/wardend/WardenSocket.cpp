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

#include "Common.h"
#include "Database/DatabaseEnv.h"
#include "Config/Config.h"
#include "Log.h"
#include "WardenSocket.h"
#include "Auth/BigNumber.h"
#include "WardendProtocol.h"

#include <ace/OS_NS_unistd.h>
#include <ace/OS_NS_fcntl.h>
#include <ace/OS_NS_sys_stat.h>

extern DatabaseType LoginDatabase;

enum eStatus
{
    STATUS_NONE         = 0,
    STATUS_CONNECTED    = 1
};

#pragma pack(push,1)

typedef struct WardenHandler
{
    eWardendOpcode cmd;
    uint32 status;
    bool (WardenSocket::*handler)(void);
}WardenHandler;

#pragma pack(pop)

const WardenHandler table[] =
{
    { MMSG_REGISTER,                STATUS_CONNECTED,   &WardenSocket::_HandleRegister                  },
    { MMSG_UNREGISTER,              STATUS_CONNECTED,   &WardenSocket::_HandleUnregister                },
    { MMSG_SERVER_KEY_REQUEST,      STATUS_CONNECTED,   &WardenSocket::_HandleServerKeyRequest          },
    { MMSG_CLIENT_KEY_REQUEST,      STATUS_CONNECTED,   &WardenSocket::_HandleClientKeyRequest          },
    { MMSG_CHEATS_REQUEST,          STATUS_CONNECTED,   &WardenSocket::_HandleCheatCheckRequest         },
    { MMSG_CHEATS_VALIDATION_REQUEST,STATUS_CONNECTED,  &WardenSocket::_HandleCheatCheckValidationRequest },
    { MMSG_TSEED_VALIDATION_REQUEST,STATUS_CONNECTED,   &WardenSocket::_HandleTSeedValidationRequest    },
    { MMSG_MODULEFILE_REQUEST,      STATUS_CONNECTED,   &WardenSocket::_HandleModuleFile                }
};

#define WARDEN_TOTAL_COMMANDS sizeof(table)/sizeof(WardenHandler)

/// Constructor
WardenSocket::WardenSocket() : _connected(false)
{
}

/// Destructor
WardenSocket::~WardenSocket()
{
}

/// Accept the connection
void WardenSocket::OnAccept()
{
    BASIC_LOG("Accepting connection from '%s'", get_remote_address().c_str());
}

/// Connection closed
void WardenSocket::OnClose()
{
    BASIC_LOG("Terminating connection from '%s'", get_remote_address().c_str());
    sWardend.Finalize();
}

/// Read the packet from world server
void WardenSocket::OnRead()
{
    uint8 _cmd;
    while (1)
    {
        if (!_connected)
        {
            char sign[7];
            if(!recv_soft(sign, 7) || strcmp(sign, WARDEND_SIGN))
            {
                DEBUG_LOG("Received a connection not from Mangos '%s'.", sign);
                recv_skip(recv_len());
                return;
            }
            _connected = true;
            recv_skip(7);
            DEBUG_LOG("World process connected.");
        }

        if(!recv_soft((char *)&_cmd, 1))
            return;

        size_t i;

        ///- Circle through known commands and call the correct command handler
        for (i = 0; i < WARDEN_TOTAL_COMMANDS; ++i)
        {
            if ((uint8)table[i].cmd == _cmd && table[i].status == STATUS_CONNECTED && _connected)
            {
                if (!(*this.*table[i].handler)())
                {
                    DEBUG_LOG("Command handler failed for cmd %u recv length %u",
                        (uint32)_cmd, (uint32)recv_len());

                    return;
                }
                break;
            }
        }

        ///- Report unknown commands in the debug log
        if (i == WARDEN_TOTAL_COMMANDS)
        {
            DEBUG_LOG("[Warden] got unknown packet %u, len of received data %u", (uint32)_cmd, (uint32)recv_len());
            return;
        }
    }
}

bool WardenSocket::_HandleRegister()
{
    DEBUG_LOG("WardenSocket::_HandleRegister");
    recv_skip(1);
    uint32 id;
    recv((char *)&id, 4);

    uint8 rc4[16];
    uint8 md5[16];
    uint32 moduleLen;

    uint32 status = sWardend.Register(id, rc4, md5, &moduleLen);
    ByteBuffer pkt;
    pkt << uint8(WMSG_REGISTER_REPLY);
    pkt << uint32(id);
    if (status == 1)
    {
        pkt << uint32(moduleLen);
        pkt.append(rc4, 16);
        pkt.append(md5, 16);
    }
    else if (status == 0)
    {
        pkt << uint32(0); // We indicate by 0 that registration failed
    }
    else // status == 2 // os not supported
    {
        pkt << uint32(0xFFFFFFFF);
    }
    send((char const*)pkt.contents(), pkt.size());
    return true;
}

bool WardenSocket::_HandleUnregister()
{
    DEBUG_LOG("WardenSocket::_HandleRegister");
    recv_skip(1);
    uint32 id;
    recv((char *)&id, 4);
    sWardend.Unregister(id);
    return true;
}

bool WardenSocket::_HandleServerKeyRequest()
{
    DEBUG_LOG("WardenSocket::_HandleServerKeyRequest");
    recv_skip(1);
    uint32 accountId;
    uint8 clientPkt[17];
    uint8 sessionKey[40];
    uint8 *keyAddr;

    recv((char *)&accountId, 4);
    recv((char *)&sessionKey, 40);
    recv((char *)&clientPkt, 17);
    keyAddr = sWardend.GenerateAndGetNewServerKey(accountId, sessionKey, clientPkt);

    ByteBuffer pkt;
    pkt << uint8(WMSG_SERVER_KEY_REPLY);
    pkt << uint32(accountId);
    pkt.append(((KeyPair*)keyAddr)->server, 0x102); // server key @ 0x102

    send((char const*)pkt.contents(), pkt.size());
    return true;
}

bool WardenSocket::_HandleClientKeyRequest()
{
    DEBUG_LOG("WardenSocket::_HandleClientKeyRequest");
    recv_skip(1);
    uint32 accountId;
    uint8 *keyAddr;

    recv((char *)&accountId, 4);
    keyAddr = sWardend.GetNewClientKey(accountId);

    ByteBuffer pkt;
    pkt << uint8(WMSG_CLIENT_KEY_REPLY);
    pkt << uint32(accountId);
    pkt.append(((KeyPair*)keyAddr)->client, 0x102); // client key @ 0x000

    send((char const*)pkt.contents(), pkt.size());

    // Now we can save the seed 1st byte and close this module not usefull anymore
    sWardend.SaveSeed1Byte(accountId);
    sWardend.FreeModuleForAccount(accountId);
    return true;
}

bool WardenSocket::_HandleCheatCheckRequest()
{
    DEBUG_LOG("WardenSocket::_HandleCheatCheckRequest");
    recv_skip(1);
    uint32 accountId;
    size_t realPktBegin;
    recv((char *)&accountId, 4);

    ByteBuffer pkt;
    pkt << uint8(WMSG_CHEATS_REPLY);
    pkt << uint32(accountId);
    size_t len_pos = pkt.wpos();
    pkt << uint32(pkt.size());
    realPktBegin = pkt.wpos();

    sWardend.BuildCheatCheck(accountId, &pkt);

    pkt.put<uint32>(len_pos, pkt.size() - realPktBegin);
    pkt.hexlike();
    send((char const*)pkt.contents(), pkt.size());
    return true;
}

bool WardenSocket::_HandleCheatCheckValidationRequest()
{
    DEBUG_LOG("WardenSocket::_HandleCheatCheckValidationRequest");
    recv_skip(1);
    uint32 accountId;
    ByteBuffer pkt, pktClient;

    uint32 tmpSize;
    uint8 *tmpBuff;
    recv((char *)&accountId, 4);
    recv((char *)&tmpSize, 4);

    tmpBuff = (uint8*)malloc(tmpSize);
    recv((char *)tmpBuff, tmpSize);

    pktClient.append(tmpBuff, tmpSize);
    free(tmpBuff);

    pkt << uint8(WMSG_CHEATS_VALIDATION_REPLY);
    pkt << uint32(accountId);
    if (sWardend.ValidateCheatCheckResult(accountId, &pktClient))
        pkt << uint8(1);
    else
        pkt << uint8(0);
    send((char const*)pkt.contents(), pkt.size());
    return true;
}

bool WardenSocket::_HandleTSeedValidationRequest()
{
    DEBUG_LOG("WardenSocket::_HandleCheatCheckValidationRequest");
    recv_skip(1);
    uint32 accountId;
    uint8 clientTSeedSHA[20];
    ByteBuffer pkt;

    recv((char *)&accountId, 4);
    recv((char *)clientTSeedSHA, 20);

    pkt << uint8(WMGS_TSEED_VALIDATION_REPLY);
    pkt << uint32(accountId);
    if (sWardend.IsCodedTransformedSeedValid(accountId, clientTSeedSHA))
        pkt << uint8(1);
    else
        pkt << uint8(0);
    send((char const*)pkt.contents(), pkt.size());
    return true;
}

bool WardenSocket::_HandleModuleFile()
{
    DEBUG_LOG("WardenSocket::_HandleModuleFile");
    recv_skip(1);
    uint32 accountId;
    recv((char *)&accountId, 4);

    std::string md5 = sWardend.GetModuleMd5(accountId);
    std::string modulekeyfile = sWardend.GetDataPath()+ "warden/" + md5 + ".key";
    std::string modulefile = sWardend.GetDataPath()+ "warden/" + md5 + ".bin";

    // Load .key file to get module length of the module
    FILE* mf = fopen(modulekeyfile.c_str(), "rb");
    if (!mf)
        return false;

    uint32 mod_length;
    fread(&mod_length, 1, 4, mf);
    fclose(mf);

    // Load the module binary
    mf = fopen(modulefile.c_str(), "rb");
    if (!mf)
        return false;

    uint8* m_tmpModule;
    m_tmpModule = (uint8*)malloc(sizeof(uint8)*mod_length);
    fread(m_tmpModule, sizeof(uint8)*mod_length, 1, mf);
    fclose(mf);

    ByteBuffer pkt;
    pkt << uint8(WMSG_MODULEFILE_REPLY);
    pkt << uint32(accountId);
    pkt << uint16(mod_length);
    pkt.append(m_tmpModule, mod_length);
    send((char const*)pkt.contents(), pkt.size());
    free(m_tmpModule);
    return true;
}
