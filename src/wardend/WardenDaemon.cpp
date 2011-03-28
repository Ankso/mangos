/*
 * Copyright (C) 2005-2011 MaNGOS <http://getmangos.com/>
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
#include "WardenDaemon.h"
#include "ProgressBar.h"
#include "Util.h"
#include "zlib/zlib.h"
#include "Policies/SingletonImp.h"
#include "Database/DatabaseEnv.h"
#include "Auth/BigNumber.h"
#include "ByteBuffer.h"
#include <openssl/sha.h>

// === Warden Daemon internal module management ===

INSTANTIATE_SINGLETON_1(Wardend);
extern DatabaseType LoginDatabase;

const std::string NullStr = "";

void CWardenLoader::UnloadWarden()
{
    if (pdwModule)
    {
        CLibraryEntry* pLibraryList = GetAddress<CLibraryEntry*>(GetHeader()->dwLibraryTable);
        while (dwLibraryCount)
        {
            dwLibraryCount--;
            DEBUG_LOG("Unloading lib %s...", GetAddress<const char*>(pLibraryList[dwLibraryCount].dwFileName));
            FreeLibrary(GetModuleHandleA(GetAddress<const char*>(pLibraryList[dwLibraryCount].dwFileName)));
        }
        VirtualFree(pdwModule, dwModuleSize, MEM_RELEASE);

        pdwModule = 0;
        dwModuleSize = 0;
    }
}

bool CWardenLoader::LoadWarden(PDWORD pdwNewModule, DWORD dwSize)
{
    bool bUnload = true;

    dwModuleSize = GetHeader(pdwNewModule)->dwModuleSize;
    if (dwModuleSize < 0x80000000)
    {
        pdwModule = reinterpret_cast<PDWORD>(VirtualAlloc(0, dwModuleSize, MEM_COMMIT, PAGE_EXECUTE_READWRITE));
        if (pdwModule)
        {
            // Writing code begin
            memcpy(pdwModule, pdwNewModule, sizeof(CHeader));

            PDWORD pdwChunk = &pdwNewModule[(sizeof(CHeader) / sizeof(DWORD)) + GetHeader()->dwChunkCount * 3];
            DWORD dwChunkDest = GetAddress<DWORD>(pdwNewModule[sizeof(CHeader) / sizeof(DWORD)]);
            DWORD dwModuleEnd = GetAddress<DWORD>(dwModuleSize);
            bool bCopyChunk = true;

            while (dwChunkDest < dwModuleEnd)
            {
                DWORD dwCurrentChunkSize = ((WORD*)pdwChunk)[0];
                pdwChunk = (PDWORD)((DWORD)pdwChunk + (DWORD)2);

                if (bCopyChunk)
                {
                    memcpy((void*)dwChunkDest, pdwChunk, dwCurrentChunkSize);
                    pdwChunk = (PDWORD)((DWORD)pdwChunk + dwCurrentChunkSize);
                }

                dwChunkDest  += dwCurrentChunkSize;
                bCopyChunk = !bCopyChunk;
            }
            // Writing code end
            // Relocations begin
            PBYTE pbRelocationTable = GetAddress<PBYTE>(GetHeader()->dwSizeOfCode);
            DWORD dwRelocationIndex = 0, dwLastRelocation = 0;

            while (dwRelocationIndex < GetHeader()->dwRelocationCount)
            {
                DWORD dwValue = pbRelocationTable[0];
                if (dwValue < 0)
                {
                    dwValue = (dwValue & 0x7F) << 8;
                    dwValue = (dwValue + pbRelocationTable[1]) << 8;
                    dwValue = (dwValue + pbRelocationTable[2]) << 8;
                    dwValue += pbRelocationTable[3];

                    pbRelocationTable = (PBYTE)((DWORD)pbRelocationTable + 4);
                    *GetAddress<DWORD*>(dwValue) += reinterpret_cast<DWORD>(pdwModule);
                }
                else
                {
                    dwValue = (dwValue << 8) + dwLastRelocation + pbRelocationTable[1];

                    pbRelocationTable = (PBYTE)((DWORD)pbRelocationTable + 2);
                    *GetAddress<DWORD*>(dwValue) += reinterpret_cast<DWORD>(pdwModule);
                }

                dwRelocationIndex++;
                dwLastRelocation = dwValue;
            }
            // Relocations end
            // Imports begin
            CLibraryEntry * pLibraryTable = GetAddress<CLibraryEntry*>(GetHeader()->dwLibraryTable);
            dwLibraryCount = 0;
            DWORD dwLibraryIndex = 0;
            while (dwLibraryIndex < GetHeader()->dwLibraryCount)
            {
                DEBUG_LOG("Loading lib %s...", GetAddress<const char*>(pLibraryTable[dwLibraryIndex].dwFileName));
                HMODULE hModule = LoadLibraryA(GetAddress<const char*>(pLibraryTable[dwLibraryIndex].dwFileName));
                if (hModule)
                {
                    PDWORD pdwImports = GetAddress<PDWORD>(pLibraryTable[dwLibraryIndex].dwImports), dwLastImport = 0;
                    while (*pdwImports)
                    {
                        DWORD & dwCurrent = *pdwImports;

                        if( dwCurrent <= 0 )
                            dwCurrent = reinterpret_cast<DWORD>(GetProcAddress(hModule, (char*)(dwCurrent & 0x7FFFFFFF)));
                        else
                            dwCurrent = reinterpret_cast<DWORD>(GetProcAddress(hModule, GetAddress<const char*>(dwCurrent)));

                        pdwImports++;
                    }
                }
                dwLibraryIndex++;
                dwLibraryCount++;
            }
            // Imports end
            // Chunk protection flags begin
            DWORD dwIndex = 0;
            while (dwIndex < GetHeader()->dwChunkCount)
            {
                PDWORD pdwChunk = &pdwModule[10 + dwIndex * 3];

                DWORD dwOldProtect = 0;
                VirtualProtect(GetAddress<void*>(pdwChunk[0]), pdwChunk[1], pdwChunk[2], &dwOldProtect);

                if( pdwChunk[2] & 0xF0) // execute flag
                    FlushInstructionCache(GetCurrentProcess(), GetAddress<void*>(pdwChunk[0]), pdwChunk[1]);

                dwIndex++;
            }
            // Chunk protection flags end
            // Code size check begin
            if (GetHeader()->dwSizeOfCode < dwModuleSize)
            {
                DWORD dwOffset = ((GetHeader()->dwSizeOfCode + 0xFFF) & 0xFFFFF000);
                if (dwOffset >= GetHeader()->dwSizeOfCode && dwOffset > dwModuleSize)
                    VirtualFree(GetAddress<void*>(dwOffset), dwModuleSize - dwOffset, MEM_DECOMMIT);

                bUnload = false;
            }
            // Code size check end
            if (bUnload)
                UnloadWarden();
        }
        else
            return false;
    }
    else
        return false;

    return true;
}

// === Module callback functions ===

void __stdcall cSendPacket(BYTE* pPacket, DWORD dwSize)
{
    DEBUG_LOG("Callback cSendPacket called. Packet size %u.", dwSize);
}

BOOL __stdcall cCheckModule(BYTE* pModName, DWORD _2)
{
    DEBUG_LOG("Callback cCheckModule called.");
    return 0;
}

WardenFuncList** __stdcall cLoadModule(BYTE* pRC4Key, BYTE* pModule, DWORD dwModSize)
{
    DEBUG_LOG("Callback cLoadModule called.");
    return 0;
}

LPVOID __stdcall cAllocateMemory(DWORD dwSize)
{
    LPVOID *res = (LPVOID*)malloc(dwSize);
    DEBUG_LOG("Callback cAllocateMemory called. Allocated %u bytes at 0x%08X", dwSize, res);
    return res;
}

VOID __stdcall cReleaseMemory(LPVOID lpMemory)
{
    DEBUG_LOG("Callback cReleaseMemory called. Memory at 0x%08X", lpMemory);
    free(lpMemory);
}

VOID __stdcall cSetRC4Data(LPVOID lpKeys, DWORD dwSize)
{
    DEBUG_LOG("Callback cSetRC4Data called. Keys at 0x%08X, key size 0x%04X (%u).", lpKeys, dwSize, dwSize);
}

DWORD __stdcall cGetRC4Data(LPVOID lpBuffer, LPDWORD dwSize)
{
    DEBUG_LOG("Callback cGetRC4Data called. Buffer at 0x%08X, key size 0x%04X (%u).", (PDWORD)lpBuffer, *(DWORD*)dwSize, *(DWORD*)dwSize);
    memset(lpBuffer, 0, *(DWORD*)dwSize);
    return 1;
}

static WardenModuleMap mWardenModules;

WardenFuncList **CWardenLoader::InitializeWarden(const std::string &md5)
{
    DWORD A, B, C, D;

    DEBUG_LOG("Warden module mapped to: 0x%08X", pdwModule);

    C = GetHeader()->dwProcedureAdjust;
    B = 1 - C;

    if (B > GetHeader()->dwProcedureCount)
        return FALSE;

    A = GetHeader()->dwProcedureTable; // offsetWardenSetup
    D = *(DWORD*)&pdwModule[A / 4 + B * 4];
    A = D + (DWORD)pdwModule;

    fnInitializeModule fpInitializeModule;
    fpInitializeModule = (fnInitializeModule)A;
    DEBUG_LOG("Initialize Function mapped to: 0x%08X (0x%04X)", (PDWORD)A ,PDWORD((PDWORD)A - pdwModule));

    // initialize callbacks
    memset(&mWardenModules[md5].dwTable, 0, sizeof(FuncList));
    mWardenModules[md5].dwTable.fpSendPacket        = cSendPacket;
    mWardenModules[md5].dwTable.fpCheckModule       = cCheckModule;
    mWardenModules[md5].dwTable.fpLoadModule        = cLoadModule;
    mWardenModules[md5].dwTable.fpAllocateMemory    = cAllocateMemory;
    mWardenModules[md5].dwTable.fpReleaseMemory     = cReleaseMemory;
    mWardenModules[md5].dwTable.fpSetRC4Data        = cSetRC4Data;
    mWardenModules[md5].dwTable.fpGetRC4Data        = cGetRC4Data;
    mWardenModules[md5].tableptr = &mWardenModules[md5].dwTable;

    char * szCallbacksDesc[] = {
        "SendPacket",
        "CheckModule",
        "LoadModule",
        "AllocateMemory",
        "ReleaseMemory",
        "SetRC4Data",
        "GetRC4Data"
    };

    DEBUG_LOG("Warden callbacks:");
    for (int i = 0; i < 7; ++i)
        DEBUG_LOG("Callback: %s at: 0x%08X" ,szCallbacksDesc[i], ((PDWORD*)&mWardenModules[md5].dwTable)[i]);

    // warden functions pointers
    DEBUG_LOG("Calling Warden::Initialize");
    WardenFuncList **list = fpInitializeModule((DWORD*)&mWardenModules[md5].tableptr);

    char * szInitReturnDesc[] = {
        "GenerateRC4Keys",
        "UnloadModule",
        "PacketHandler",
        "Tick"
    };

    DEBUG_LOG("Warden::Initialize returns:");
    for (int i = 0; i < 4; ++i)
        DEBUG_LOG("Init: Warden::%s at: 0x%08X",szInitReturnDesc[i] ,((PDWORD*)*list)[i]);

    return list;
}

void CWardenLoader::PrintHeader( PDWORD pdwHeader )
{
    char * szHeaderDescription[] = {
        "Module size",
        "Destructor",
        "SizeOfCode",
        "RelocationCount",
        "ProcedureTable",
        "ProcedureCount",
        "ProcedureAdjust",
        "LibraryTable",
        "LibraryCount",
        "ChunkCount"
    };

    for (int i = 0; i < 10; i++)
    {
        DEBUG_LOG( "%u .+ 0x%02X %s -> %u", i ,i * 4, szHeaderDescription[i], pdwHeader[i]);
    }
}

// === Module maped functions ===

void GenerateRC4Keys(LPVOID lpData, DWORD dwSize, const std::string &md5)
{
    DEBUG_LOG("Warden::GenerateRC4Keys called for %s", md5.c_str());
    ((fnGenerateRC4Keys)mWardenModules[md5].pointers.f1)(mWardenModules[md5].list, lpData, dwSize);
}

void UnloadModule(const std::string &md5)
{
    DEBUG_LOG("Warden::UnloadModule called");
    ((fnUnloadModule)mWardenModules[md5].pointers.f2)(mWardenModules[md5].list);
}

void PacketHandler(BYTE *pPacket, DWORD dwSize, DWORD *dwBuffer, const std::string &md5)
{
    DEBUG_LOG("Warden::PacketHandler called");
    ((fnPacketHandler)mWardenModules[md5].pointers.f3)(mWardenModules[md5].list, pPacket, dwSize, dwBuffer);
    DEBUG_LOG("Warden::PacketHandler handeled %u bytes of the packet", *dwBuffer);
}

void Tick(DWORD _2, const std::string &md5)
{
    DEBUG_LOG("Warden::Tick called");
    ((fnTick)mWardenModules[md5].pointers.f4)(mWardenModules[md5].list, _2);
}

// === Warden Daemon main functions ===

void Wardend::LoadFromDB()
{
    QueryResult *result = LoginDatabase.Query("SELECT md5,chk0,chk1,chk2,chk3,chk4,chk5,chk6,chk7,chk8,end9 FROM warden_module");
    if (!result)
    {
        mWardenModuleChecks.clear();
        sLog.outString(">> Table warden_module is empty!");
        sLog.outString();
        return;
    }

    uint32 count = 0;
    {
        barGoLink bar((int)result->GetRowCount());
        do
        {
            Field *fields = result->Fetch();
            bar.step();

            std::string md5 = fields[0].GetCppString();
            if (CheckModuleExistOnDisk(md5))
            {
                WardenCheckMap& moduleCheck = mWardenModuleChecks[md5];
                moduleCheck.resize(10);

                for (uint8 i=0; i<=9; ++i)
                {
                    moduleCheck[i] = fields[i+1].GetUInt8();
                }

                ++count;
            }
            else
                sLog.outError("Module %s has a record in 'warden_module' but no binary on disk, skiping it", md5.c_str());

        } while(result->NextRow());
        delete result;

        // To know the maximum number of modules we will use at the same time
        m_maxModuleCount = count<WARDEN_MAX_MODULES?count:WARDEN_MAX_MODULES;
        sLog.outString();
        sLog.outString(">> Loaded %u warden modules", count);

    }
    // Now load the checks
    // 1) memory
    result = LoginDatabase.Query("SELECT String,Offset,Length,Result FROM warden_check_memory");
    if (!result)
    {
        sLog.outString(">> Table warden_check_memory is empty!");
        sLog.outString();
    }
    else
    {
        uint32 count = 0;
        {
            barGoLink bar((int)result->GetRowCount());
            mWardenMemoryChecks.resize((int)result->GetRowCount());
            do
            {
                Field *fields = result->Fetch();
                bar.step();

                MemoryCheckEntry& current = mWardenMemoryChecks[count];
                current.String  = fields[0].GetCppString();
                current.Offset  = fields[1].GetUInt32();
                current.Length  = fields[2].GetUInt8();
                std::string res = fields[3].GetCppString();
                hexDecodeString(res.c_str(), res.length(), current.Result);

                ++count;
            } while(result->NextRow());
            delete result;
            sLog.outString();
            sLog.outString(">> Loaded %u memory checks", count);
        }
    }
    // 2) Page
    result = LoginDatabase.Query("SELECT Seed,SHA,Offset,Length FROM warden_check_page");
    if (!result)
    {
        sLog.outString(">> Table warden_check_page is empty!");
        sLog.outString();
    }
    else
    {
        uint32 count = 0;
        {
            barGoLink bar((int)result->GetRowCount());
            mWardenPageChecks.resize((int)result->GetRowCount());
            do
            {
                Field *fields = result->Fetch();
                bar.step();

                PageCheckEntry& current = mWardenPageChecks[count];
                current.Seed  = fields[0].GetUInt32();
                std::string res = fields[1].GetCppString();
                hexDecodeString(res.c_str(), 40, current.SHA);
                current.Offset  = fields[2].GetUInt32();
                current.Length  = fields[3].GetUInt8();

                ++count;
            } while(result->NextRow());
            delete result;
            sLog.outString();
            sLog.outString(">> Loaded %u page checks", count);
        }
    }
    // 3) File
    result = LoginDatabase.Query("SELECT String,SHA FROM warden_check_file");
    if (!result)
    {
        sLog.outString(">> Table warden_check_file is empty!");
        sLog.outString();
    }
    else
    {
        uint32 count = 0;
        {
            barGoLink bar((int)result->GetRowCount());
            mWardenFileChecks.resize((int)result->GetRowCount());
            do
            {
                Field *fields = result->Fetch();
                bar.step();

                FileCheckEntry& current = mWardenFileChecks[count];
                current.String  = fields[0].GetCppString();
                std::string res = fields[1].GetCppString();
                hexDecodeString(res.c_str(), 40, current.SHA);

                ++count;
            } while(result->NextRow());
            delete result;
            sLog.outString();
            sLog.outString(">> Loaded %u file checks", count);
        }
    }
    // 4) Lua
    result = LoginDatabase.Query("SELECT String FROM warden_check_lua");
    if (!result)
    {
        sLog.outString(">> Table warden_check_lua is empty!");
        sLog.outString();
    }
    else
    {
        uint32 count = 0;
        {
            barGoLink bar((int)result->GetRowCount());
            mWardenLuaChecks.resize((int)result->GetRowCount());
            do
            {
                Field *fields = result->Fetch();
                bar.step();

                LuaCheckEntry& current = mWardenLuaChecks[count];
                current.String = fields[0].GetCppString();

                ++count;
            } while(result->NextRow());
            delete result;
            sLog.outString();
            sLog.outString(">> Loaded %u lua checks", count);
        }
    }
    // 5) Driver
    result = LoginDatabase.Query("SELECT Seed,SHA,String FROM warden_check_driver");
    if (!result)
    {
        sLog.outString(">> Table warden_check_driver is empty!");
        sLog.outString();
    }
    else
    {
        uint32 count = 0;
        {
            barGoLink bar((int)result->GetRowCount());
            mWardenDriverChecks.resize((int)result->GetRowCount());
            do
            {
                Field *fields = result->Fetch();
                bar.step();

                DriverCheckEntry& current = mWardenDriverChecks[count];
                current.Seed    = fields[0].GetUInt32();
                std::string res = fields[1].GetCppString();
                hexDecodeString(res.c_str(), 40, current.SHA);
                current.String  = fields[2].GetCppString();

                ++count;
            } while(result->NextRow());
            delete result;
            sLog.outString();
            sLog.outString(">> Loaded %u driver checks", count);
        }
    }
}

void Wardend::Initialize()
{
    if (m_maxModuleCount)
    {
        sLog.outString("Warden system initialized." );
        m_IsWardenInit = true;
    }
    else
    {
        sLog.outString("Warden system not initialized because there is no usable module." );
        m_IsWardenInit = false;
    }
}

void Wardend::Finalize()
{
    for (WardenModuleMap::const_iterator itr = mWardenModules.begin();itr != mWardenModules.end(); ++itr)
    {
        UnloadModule(itr->first);
        itr->second.loader->UnloadWarden();
        delete itr->second.loader;
    }
    // Clear the unload module list
    mWardenModules.clear();
    // Clear the client mapping (accountId / md5)
    mWardenClientMap.clear();
    // Clear any in-progress cheat check mappping (accountId / Checks)
    mWardenClientCheckMapping.clear();
    // Clear the seed cache (accountId / seed 1st byte)
    mWardenClientSeed.clear();
}

Wardend::Wardend( ) : m_maxModuleCount(0), m_activeModules(0), m_IsWardenInit(false)
{
    mWardenModules.clear();
}

uint32 Wardend::Register(uint32 accountId, uint8 *rc4, uint8 *binMd5, uint32 *modLen)
{
    DEBUG_LOG("Wardend::Register(%u)", accountId);
    std::string md5;
    std::string lastModule = "";

    if (m_IsWardenInit)
    {
        if (m_activeModules >= m_maxModuleCount)
            return 0;

        // Check if the user already had the module same day
        time_t currenttime = time(NULL);
        tm* now = localtime(&currenttime);
        QueryResult* result = LoginDatabase.PQuery("SELECT module_day,last_module,os FROM account WHERE id = '%u'", accountId);
        if (result)
        {
            Field* fields = result->Fetch();
            uint16 modDay = fields[0].GetUInt16();
            uint32 os = fields[2].GetUInt32();
            if (os != 0x0057696E) // 0x0057696E = \0niW => 'Win' so not windows, not coded yet for macho modules sending
                return 2;

            if (modDay == now->tm_yday) // no need to change the module
            {
                lastModule = fields[1].GetCppString();
                if (lastModule.length()!=32)
                {
                    DEBUG_LOG("Login same day, tried to get last used module failed, maybe never used warden");
                    RandAnUnusedModuleMd5(&md5);
                }
                else
                {
                    md5 = lastModule;
                }
            }
            else
            {
                DEBUG_LOG("Login different day, so new warden module");
                RandAnUnusedModuleMd5(&md5);
            }
        }
        else
        {
            DEBUG_LOG("Account does not exist, why? Selecting a new Warden module");
            RandAnUnusedModuleMd5(&md5);
        }

        if (!(*modLen = LoadModuleFromDisk(md5)))
        {
            sLog.outError("Warden module %s init failed, don't know what to do", md5.c_str());
            return 0;
        }
        if (md5 != lastModule)
            LoginDatabase.PExecute("UPDATE account SET last_module='%s',module_day=%u WHERE id = '%u'", md5.c_str(), now->tm_yday, accountId);
        ++m_activeModules;

        mWardenClientMap[accountId] = md5;

        memcpy(rc4, mWardenModules[md5].moduleKey, 16);
        hexDecodeString(md5.c_str(), 32, binMd5);
        DETAIL_LOG("Module %s loaded for account %u.\n%u modules loaded.", md5.c_str(), accountId, mWardenModules.size());
    }
    return 1;
}

bool Wardend::IsCodedTransformedSeedValid(uint32 accountId, uint8 *codedClientTSeed)
{
    DEBUG_LOG("Wardend::IsCodedTransformedSeedValid(%u)", accountId);
    std::string md5 = GetModuleMd5(accountId);
    uint8 codedServerTSeed[20];
    SHA1(&((WardenInitData*)(mWardenModules[md5].list))->seed[0], 16, codedServerTSeed);
    if (memcmp(codedServerTSeed, codedClientTSeed, 20))
        return false;
    return true;
}

uint8 *Wardend::GenerateAndGetNewServerKey(uint32 accountId, uint8 *sessionKey/*[40]*/, uint8 *packet/*[17]*/)
{
    DEBUG_LOG("Wardend::GenerateAndGetNewServerKey(%u)", accountId);
    std::string md5 = GetModuleMd5(accountId);
    // Call the module function to generate the key
    GenerateRC4Keys(sessionKey, 40, md5);
    // Then ask it to handle the packet we also sent to the client
    DWORD handled;
    PacketHandler(packet, 17, &handled, md5);
    return &((WardenInitData*)(mWardenModules[md5].list))->keys[0];
}

uint8 *Wardend::GetNewClientKey(uint32 accountId)
{
    DEBUG_LOG("*Wardend::GetNewClientKey(%u)", accountId);
    std::string md5 = GetModuleMd5(accountId);
    return &((WardenInitData*)(mWardenModules[md5].list))->keys[0];
}

void Wardend::SaveSeed1Byte(uint32 accountId)
{
    std::string md5 = GetModuleMd5(accountId);
    uint8* Seed0 = &mWardenClientSeed[accountId];
    memcpy(Seed0, &((WardenInitData*)(mWardenModules[md5].list))->seed[0], 1);
}

void Wardend::Unregister(uint32 accountId)
{
    // unload the module if still loaded
    FreeModuleForAccount(accountId);
    // remove from mapping
    WardenClientMapping::iterator itr = mWardenClientMap.find(accountId);
    if (itr != mWardenClientMap.end())
        mWardenClientMap.erase(itr);
    // remove the seed byte
    WardenClientSeed::iterator itr2 = mWardenClientSeed.find(accountId);
    if (itr2 != mWardenClientSeed.end())
        mWardenClientSeed.erase(itr2);
    // and cheat-checks mapping if any left
    WardenClientCheckMapping::iterator itr3 = mWardenClientCheckMapping.find(accountId);
    if (itr3 != mWardenClientCheckMapping.end())
        mWardenClientCheckMapping.erase(itr3); // this should also drop the structure
}

void Wardend::RandAnUnusedModuleMd5(std::string *result)
{
    std::vector<std::string> iList;
    for (WardenModuleCheckMap::const_iterator itr = mWardenModuleChecks.begin(); itr != mWardenModuleChecks.end(); ++itr)
    {
        bool m_found = false;
        for (WardenModuleMap::const_iterator itr2 = mWardenModules.begin();itr2 != mWardenModules.end(); ++itr2)
        {
            if (itr->first == itr2->first)
            {
                m_found = true;
                break;
            }
        }
        if (!m_found)
            iList.push_back(itr->first);
    }
    uint8 choice = urand(1, iList.size());
    *result = iList[choice-1];
}

bool Wardend::CheckModuleExistOnDisk(const std::string &md5)
{
    std::string modulekey  = GetDataPath()+ "warden/" + md5 + ".key";
    std::string modulefile = GetDataPath()+ "warden/" + md5 + ".bin";
    FILE* mf = fopen(modulefile.c_str(), "rb");
    if (mf)
    {
        fclose(mf);
        mf = fopen(modulekey.c_str(), "rb");
        if (mf)
        {
            fclose(mf);
            return true;
        }
    }
    return false;
}

const std::string& Wardend::GetModuleMd5(uint32 accountId) const
{
    WardenClientMapping::const_iterator itr = mWardenClientMap.find(accountId);
    if (itr != mWardenClientMap.end())
        return itr->second;
    return NullStr;
}

uint8 Wardend::GetSeedFirstByte(const std::string &md5)
{
    return ((WardenInitData*)(mWardenModules[md5].list))->seed[0];
}

Wardend::MemoryCheckEntry *Wardend::GetRandMemCheck()
{
    return &mWardenMemoryChecks[urand(0, mWardenMemoryChecks.size()-1)];
}
Wardend::PageCheckEntry *Wardend::GetRandPageCheck()
{
    return &mWardenPageChecks[urand(0, mWardenPageChecks.size()-1)];
}
Wardend::FileCheckEntry *Wardend::GetRandFileCheck()
{
    return &mWardenFileChecks[urand(0, mWardenFileChecks.size()-1)];
}
Wardend::LuaCheckEntry *Wardend::GetRandLuaCheck()
{
    return &mWardenLuaChecks[urand(0, mWardenLuaChecks.size()-1)];
}
Wardend::DriverCheckEntry *Wardend::GetRandDriverCheck()
{
    return &mWardenDriverChecks[urand(0, mWardenDriverChecks.size()-1)];
}

void Wardend::BuildCheatCheck(uint32 accountId, ByteBuffer *pkt)
{
    DEBUG_LOG("Wardend::BuildCheatCheck(%u, *pkt)", accountId);
    std::string md5 = GetModuleMd5(accountId);
    // Drop any previous check for this account
    WardenClientCheckMapping::iterator itr = mWardenClientCheckMapping.find(accountId);
    if (itr != mWardenClientCheckMapping.end())
    {
        mWardenClientCheckMapping.erase(itr);
    }
    // Get the Seed 1st byte for the xoring
    uint8 m_seed1 = mWardenClientSeed[accountId];
    DEBUG_LOG("Seed byte: 0x%02X, end byte: 0x%02X", m_seed1, mWardenModuleChecks[md5][WARD_CHECK_END]);

    // Rand a number of checks between 4 and 8 checks + the first time check + end packet
    uint8 nbChecks = urand(4, 8);
    WardenClientCheckList& checkList = mWardenClientCheckMapping[accountId];
    checkList.resize(nbChecks);

    for (uint8 i=0; i<nbChecks; ++i)
    {
        // We select one based on the ratio
        float mRand = rand_chance_f();
        if (mRand < WCHECK_PAGE2_RATIO)             // size 29, no string both page1 and page2 tests
        {
            checkList[i].check = urand(0,1)?WARD_CHECK_PAGE1:WARD_CHECK_PAGE2;
            checkList[i].page = GetRandPageCheck();
        }
        else if (mRand < WCHECK_MEMORY_RATIO)       // size 6, possible string
        {
            checkList[i].check = WARD_CHECK_MEMORY;
            checkList[i].mem = GetRandMemCheck();
            if (checkList[i].mem->String.length())  // add 1 for the uint8 str length
            {
                *pkt << uint8(checkList[i].mem->String.length());
                pkt->append(checkList[i].mem->String.c_str() ,checkList[i].mem->String.length());
                DEBUG_LOG("Mem str %s, len %u", checkList[i].mem->String.c_str(), checkList[i].mem->String.length());
            }
        }
        else if (mRand < WCHECK_DRIVER_RATIO)
        {
            checkList[i].check = WARD_CHECK_DRIVER; // size 25 + string
            checkList[i].driver = GetRandDriverCheck();
            *pkt << uint8(checkList[i].driver->String.length());
            pkt->append(checkList[i].driver->String.c_str(), checkList[i].driver->String.length());
            DEBUG_LOG("Driver str %s, len %u", checkList[i].driver->String.c_str(), checkList[i].driver->String.length());
        }
        else if (mRand < WCHECK_FILE_RATIO)
        {
            checkList[i].check = WARD_CHECK_FILE;   // size 1 + string
            checkList[i].file = GetRandFileCheck();
            *pkt << uint8(checkList[i].file->String.length());
            pkt->append(checkList[i].file->String.c_str(), checkList[i].file->String.length());
            DEBUG_LOG("File str %s, len %u", checkList[i].file->String.c_str(), checkList[i].file->String.length());
        }
        else
        {
            checkList[i].check = WARD_CHECK_LUA;   // size 1 + string
            checkList[i].lua = GetRandLuaCheck();
            *pkt << uint8(checkList[i].lua->String.length());
            pkt->append(checkList[i].lua->String.c_str(), checkList[i].lua->String.length());
            DEBUG_LOG("Lua str %s, len %u", checkList[i].lua->String.c_str(), checkList[i].lua->String.length());
        }
    }
    // strings terminator
    *pkt << uint8(0);
    // We first add a timing check
    *pkt << uint8(mWardenModuleChecks[md5][WARD_CHECK_TIMING] ^ m_seed1);
    // Finaly put the other checks
    uint8 m_strIndex = 1;
    DEBUG_LOG("Preparing %u checks", nbChecks);
    for (uint8 i=0; i<nbChecks; ++i)
    {
        *pkt << uint8(mWardenModuleChecks[md5][checkList[i].check] ^ m_seed1);
        switch (checkList[i].check)
        {
            case WARD_CHECK_PAGE1:
            case WARD_CHECK_PAGE2:
                DEBUG_LOG("%u : %s", i, checkList[i].check==WARD_CHECK_PAGE1?"WARD_CHECK_PAGE1":"WARD_CHECK_PAGE2");
                *pkt << uint32(checkList[i].page->Seed);
                pkt->append(&checkList[i].page->SHA[0], 20);
                *pkt << uint32(checkList[i].page->Offset);
                *pkt << uint8(checkList[i].page->Length);
                break;
            case WARD_CHECK_MEMORY:
                DEBUG_LOG("%u : WARD_CHECK_MEMORY", i);
                if (checkList[i].mem->String.length())
                    *pkt << uint8(m_strIndex++);
                else
                    *pkt << uint8(0);
                *pkt << uint32(checkList[i].mem->Offset);
                *pkt << uint8(checkList[i].mem->Length);
                break;
            case WARD_CHECK_DRIVER:
                DEBUG_LOG("%u : WARD_CHECK_DRIVER", i);
                *pkt << uint32(checkList[i].driver->Seed);
                pkt->append(&checkList[i].driver->SHA[0], 20);
                *pkt << uint8(m_strIndex++);
                break;
            case WARD_CHECK_FILE:
                DEBUG_LOG("%u : WARD_CHECK_FILE", i);
                *pkt << uint8(m_strIndex++);
                break;
            case WARD_CHECK_LUA:
                DEBUG_LOG("%u : WARD_CHECK_LUA", i);
                *pkt << uint8(m_strIndex++);
                break;
        }
    }
    *pkt << uint8(mWardenModuleChecks[md5][WARD_CHECK_END] ^ m_seed1);
}

bool Wardend::ValidateCheatCheckResult(uint32 accountId, ByteBuffer *pkt)
{
    DEBUG_LOG("Wardend::ValidateCheatCheckResult(%u, *pkt)", accountId);
    bool valid = true;
    uint16 pktLen;
pkt->hexlike();
    pkt->read_skip<uint8>();    // opcode WARDC_CHEAT_CHECK_RESULT (0x02)
    *pkt >> pktLen;
    pkt->read_skip<uint32>();   // checksum already checked

    if (pktLen==0)
        return false;

    // parse the timing check always sent
    DEBUG_LOG("TimeCheck");
    uint8 res;
    uint32 ticks;
    *pkt >> res; // should be 1
    *pkt >> ticks;
    // Need to compare ticks based on last one using server ticks diff since
    DEBUG_LOG("Time unk 0x%08X", ticks);
    pktLen = pktLen - 5;

    WardenClientCheckList& checkList = mWardenClientCheckMapping[accountId];
    for (uint8 i=0; i<checkList.size(); ++i)
    {
        switch (checkList[i].check)
        {
            case WARD_CHECK_TIMING:
            {
                DEBUG_LOG("TimeCheck");
                uint8 res;
                uint32 ticks;
                *pkt >> res; // should be 1
                *pkt >> ticks;
                // Need to compare ticks based on last one using server ticks diff since
                DEBUG_LOG("Time unk 0x%08X", ticks);
                pktLen = pktLen - 5;
                break;
            }
            case WARD_CHECK_MEMORY:
            {
                DEBUG_LOG("MemCheck");
                uint8 res;
                *pkt >> res; // should be 0
                if (res)
                {
                    valid = false;
                    BASIC_LOG("Kicking account %u for failed check, MEM at Offset 0x%04X, lentgh %u could not be read by client", accountId, checkList[i].mem->Offset, checkList[i].mem->Length);
                }
                else
                {
                    uint8 memContent[20];
                    for (uint8 pos=0; pos<checkList[i].mem->Length; ++pos)
                    {
                        *pkt >> memContent[pos];
                        if (memContent[pos]!=checkList[i].mem->Result[pos])
                        {
                            valid = false;
                        }
                    }
                    if (!valid)
                    {
                        std::string strContent, strContent2;
                        hexEncodeByteArray(memContent, checkList[i].mem->Length, strContent);
                        hexEncodeByteArray(checkList[i].mem->Result, checkList[i].mem->Length, strContent2);
                        BASIC_LOG("Kicking account %u for failed check, MEM Offset 0x%04X length %u has content '%s' instead of '%s'",
                            accountId, checkList[i].mem->Offset, checkList[i].mem->Length, strContent.c_str(), strContent2.c_str());
                    }
                    pktLen = pktLen - (1 + checkList[i].mem->Length);
                }
                DEBUG_LOG("Mem %s",valid?"Ok":"Failed");
                break;
            }
            case WARD_CHECK_FILE:
            {
                DEBUG_LOG("MPQCheck");
                uint8 res;
                uint8 resSHA1[20];
                *pkt >> res; // should be 0
                if (res)
                {
                    valid = false;
                    BASIC_LOG("Kicking account %u for failed check, MPQ '%s' not found by client", accountId, checkList[i].file->String.c_str());
                    pktLen = pktLen - 1;
                }
                else
                {
                    for (uint8 pos=0; pos<20; ++pos)
                        *pkt >> resSHA1[pos];
                    if (res || memcmp(resSHA1, checkList[i].file->SHA, 20))
                    {
                        valid = false;
                        std::string strResSHA1, strReqSHA1;
                        hexEncodeByteArray(resSHA1, 20, strResSHA1);
                        hexEncodeByteArray(checkList[i].file->SHA, 20, strReqSHA1);
                        BASIC_LOG("Kicking account %u for failed check, MPQ '%s' SHA1 is '%s' instead of '%s'", accountId, checkList[i].file->String.c_str(), strResSHA1.c_str(), strReqSHA1.c_str());
                    }
                    pktLen = pktLen - 21;
                }
                DEBUG_LOG("MPQ %s",valid?"Ok":"Failed");
                break;
            }
            case WARD_CHECK_LUA:
            {
                DEBUG_LOG("LUACheck");
                uint8 res;
                uint8 foundLuaLen;
                *pkt >> res; // should be 0
                *pkt >> foundLuaLen; // should be 0
                uint8 *luaStr;
                if (foundLuaLen > 0)
                {
                    luaStr = (uint8*)malloc(foundLuaLen+1);
                    for (uint8 pos=0; pos<foundLuaLen; ++pos)
                    {
                        *pkt >> luaStr[pos];
                    }
                    luaStr[foundLuaLen] = 0;
                    BASIC_LOG("Kicking account %u for failed check, Lua '%s' found as '%s'", accountId, checkList[i].lua->String.c_str(), (char*)luaStr);
                    valid = false;
                    free(luaStr);
                }
                DEBUG_LOG("Lua %s",valid?"Ok":"Failed");
                pktLen = pktLen - 2;
                break;
            }
            case WARD_CHECK_PAGE1:
            case WARD_CHECK_PAGE2:
            case WARD_CHECK_DRIVER:
            {
                DEBUG_LOG("PageCheck or DriverCheck");
                uint8 res;
                *pkt >> res; // should be 0xE9
                if (res != 0xE9)
                {
                    if (checkList[i].check == WARD_CHECK_DRIVER)
                        BASIC_LOG("Kicking account %u for failed driver check '%s'", accountId ,checkList[i].driver->String.c_str());
                    else
                        BASIC_LOG("Kicking account %u for failed page check Offset 0x%08X, length %u", accountId, checkList[i].page->Offset, checkList[i].page->Length);
                    valid = false;
                }
                DEBUG_LOG("Page or Driver %s",valid?"Ok":"Failed");
                pktLen = pktLen - 1;
                break;
            }
            default:
                DEBUG_LOG("Other!!");
                // Finish skiping the rest of the packet and return failed checks
                BASIC_LOG("Wrong packet for account %u or problem to parse it, I had to clean %u bytes", accountId, pkt->size() - pkt->rpos());
                pkt->read_skip(pkt->size() - pkt->rpos());
                return false;
        }
    }
    return valid;
}

void Wardend::FreeModuleForAccount(uint32 accountId)
{
    DEBUG_LOG("Wardend::FreeModuleForAccount(%u)", accountId);
    std::string md5 = GetModuleMd5(accountId);
    if (!md5.empty())
    {
        WardenModuleMap::iterator itr = mWardenModules.find(md5);
        if (itr != mWardenModules.end())
        {
            UnloadModule(md5);
            itr->second.loader->UnloadWarden();
            delete itr->second.loader;
            mWardenModules.erase(itr);
            DETAIL_LOG("Module %s unloaded for account %u.\n%u modules loaded.", md5.c_str(), accountId,  mWardenModules.size());
        }
        else
        {
            DEBUG_LOG("Module %s already unloaded", md5.c_str());
        }
    }
}

uint32 Wardend::LoadModuleFromDisk(const std::string &md5)
{
    DEBUG_LOG("Wardend::LoadModuleFromDisk(\"%s\")", md5.c_str());

    // Load decrypted binary module from disk (.dbm file)
    bool res = false;
    std::string modulekeyfile = sWardend.GetDataPath()+ "warden/" + md5 + ".key";
    std::string modulefile = sWardend.GetDataPath()+ "warden/" + md5 + ".bin";

    // Load .key file to get module length and module key
    FILE* mf = fopen(modulekeyfile.c_str(), "rb");
    if (!mf)
        return 0;

    uint32 mod_length;
    fread(&mod_length, 1, 4, mf);
    fread(mWardenModules[md5].moduleKey, sizeof(uint8)*16, 1, mf);
    fclose(mf);

    // Load the module encrypted binary
    mf = fopen(modulefile.c_str(), "rb");
    if (!mf)
        return 0;

    uint8* m_tmpModule;
    m_tmpModule = (uint8*)malloc(sizeof(uint8)*mod_length);
    fread(m_tmpModule, sizeof(uint8)*mod_length, 1, mf);
    fclose(mf);

    // Decrypt the module
    uint8 m_moduleKey[0x102];
    rc4_init(m_moduleKey, mWardenModules[md5].moduleKey, 16);
    rc4_crypt(m_moduleKey, m_tmpModule, mod_length);

    uint32 m_signature = *(uint32*)(m_tmpModule + mod_length - 0x104);
    if (m_signature != 0x5349474E) // NGIS->SIGN string
    {
        sLog.outError("Warden module %s seams damaged, cannot find signature data.", md5.c_str());
        free(m_tmpModule);
        return 0;
    }
    // More signature check code to add

    // Now inflate the module after removing uint32 size at the beginning and last 4+256 bytes of the RSA signing
    uint32 m_InflateSize = *(uint32*)m_tmpModule;
    uint8 *moduleCode = (uint8*)malloc(sizeof(uint8)*m_InflateSize);
    uint32 currentSize = mod_length - 0x104 - 4;
    uLongf finalSize = m_InflateSize;
    if (uncompress(moduleCode, &finalSize, m_tmpModule+4, currentSize) != Z_OK)
    {
        sLog.outError("Warden module %s could not be inflated.", md5);
        return 0;
    }
    free(m_tmpModule);

    InstanceS* tmp = &mWardenModules[md5]; // To create it
    tmp->loader = new CWardenLoader();

    tmp->loader->PrintHeader((PDWORD)moduleCode);
    tmp->loader->LoadWarden((PDWORD)moduleCode, finalSize);
    tmp->list = tmp->loader->InitializeWarden(md5);

    free(moduleCode);

    tmp->pointers.f1 = &*(*tmp->list)->fpGenerateRC4Keys;
    tmp->pointers.f2 = &*(*tmp->list)->fpUnload;
    tmp->pointers.f3 = &*(*tmp->list)->fpPacketHandler;
    tmp->pointers.f4 = &*(*tmp->list)->fpTick;

    return mod_length;
}

/////////////////////////////
// Singleton access function
/////////////////////////////

Wardend& sWardend
{
    static Wardend wardendaemon;
    return wardendaemon;
}
