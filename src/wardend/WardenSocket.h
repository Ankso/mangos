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

#ifndef _WARDENSOCKET_H
#define _WARDENSOCKET_H

#include "Common.h"
#include "ByteBuffer.h"
#include "WardenDaemon.h"

#include "BufferedSocket.h"

/// Handle login commands
class WardenSocket: public BufferedSocket
{
    public:
        const static int s_BYTE_SIZE = 32;

        WardenSocket();
        ~WardenSocket();

        void OnAccept();
        void OnRead();
        void OnClose();

        bool _HandleRegister();
        bool _HandleUnregister();
        bool _HandleServerKeyRequest();
        bool _HandleClientKeyRequest();
        bool _HandleCheatCheckRequest();
        bool _HandleCheatCheckValidationRequest();
        bool _HandleTSeedValidationRequest();
        bool _HandleModuleFile();

    private:

        bool _connected;
};
#endif