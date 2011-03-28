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

#ifndef MANGOS_WARDEN_MGR_H
#define MANGOS_WARDEN_MGR_H

#include "Common.h"
#include "SharedDefines.h"
#include "Platform/Define.h"
#include "Policies/Singleton.h"
#include "../wardend/WardendProtocol.h"
// Needed for GCC
#include "WorldSession.h"
#include "Util.h"
#include "Auth/BigNumber.h"
#include "WorldPacket.h"
#include "Opcodes.h"
// End Needed for GCC
#include <ace/Connector.h>
#include <ace/SOCK_Connector.h>
#include <ace/SOCK_Stream.h>
#include <ace/Svc_Handler.h>
#include <ace/Reactor.h>

#include <openssl/sha.h>

class WardenMgr
{
    public:
        WardenMgr();
        ~WardenMgr() {};
        bool Initialize(const char* addr, u_short port);
        bool IsReady() { return m_IsWardenInit; }
        void SetDisabled() { m_Enabled = false; }
        bool IsEnabled() { return m_Enabled; }
        //bool IsConnected() { return m_Connected; }

        // Session related
        bool Register(WorldSession* const session);
        void Unregister(WorldSession* const session);
        void GenerateAndSendSeed(WorldSession* const session);
        void GetNewClientKey(WorldSession* const session);
        void SendWardenData(WorldSession* const session);
        void GetCheatCheckTable(WorldSession* const session);
        void SendCheatCheck(WorldSession* const session);
        void AskValidateCheatChecks(WorldSession* const session, WorldPacket& clientPacket);
        void ReactToCheatCheckResult(WorldSession* const session, bool result, bool immediate=false);
        void AskValidateTransformedSeed(WorldSession* const session, WorldPacket& clientPacket);

        // Update
        void Update(); // Global Warden System update for packets send/receive
        void Update(WorldSession* const session, uint32 diff); // Session specific update

        void SetInitialKeys(const uint8 *bSessionKey1, const uint8 *bSessionKey2, uint8* ClientKey, uint8 *ServerKey);
        void SendModule(WorldSession* const session);

    private:
        bool InitializeCommunication(const char* host, u_short port);
        uint32 BuildChecksum(const uint8* data, uint32 dataLen);

        ACE_SOCK_Stream *m_WardenProcessStream;
        ACE_SOCK_Connector *m_WardenProcessConnection;

    protected:
        bool m_IsWardenInit;
        bool m_Enabled;
        //bool m_Connected;
        std::string m_WardendAddress;
        u_short m_WardendPort;
};

class WardenSvcHandler: public ACE_Svc_Handler <ACE_SOCK_STREAM, ACE_NULL_SYNCH>
{
    public:
        typedef struct WardenMgrCmd
        {
            eWardendOpcode cmd;
            bool (WardenSvcHandler::*handler)(void);
        }WardenHandler;

        // Deamon replies related
        bool _HandleRegisterRep();
        bool _HandleServerKeyRep();
        bool _HandleClientKeyRep();
        bool _HandleModuleRep();
        bool _HandleCheatCheckRep();
        bool _HandleCheatCheckValidationRep();
        bool _HandleTSeedValidationRep();

        ACE_SOCK_Stream* Peer;
        int open(void*);
        int handle_input(ACE_HANDLE);

    private:

};

#define sWardenMgr MaNGOS::Singleton<WardenMgr>::Instance()

//void ByteBuffer::decrypt(&sWardenMgr, uint8* key, void(*sWardenMgr.rc4_crypt)(uint8 *useKey, uint8 *data, uint32 dataSize));

#endif
