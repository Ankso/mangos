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

#ifndef __WARDEND_H
#define __WARDEND_H

#include "Common.h"
#include "WardendProtocol.h"

#define WARDEN_MAX_MODULES  20

// Definition of ratio of check types (based on a long session of 1162 checks)
// They are cumulative, meaning that I add the %age to the previous one
#define WCHECK_PAGE1_RATIO  36.5f   // 36.5
#define WCHECK_PAGE2_RATIO  73.0f   // 36.5
#define WCHECK_MEMORY_RATIO 94.0f   // 21.0
#define WCHECK_DRIVER_RATIO 97.4f   // 03.4
#define WCHECK_FILE_RATIO   98.7f   // 01.3
#define WCHECK_LUA_RATIO   100.0f   // 01.3

class WorldSession;
class BigNumber;
class ByteBuffer;

typedef struct _WardenFuncList WardenFuncList;

//Input
typedef VOID (__stdcall *fnSendPacket)(BYTE* pPacket, DWORD dwSize);
typedef BOOL (__stdcall *fnCheckModule)(BYTE* pModName, DWORD _2);
typedef WardenFuncList** (__stdcall *fnLoadModule)(BYTE* pRC4Key, BYTE* pModule, DWORD dwModSize);
typedef LPVOID (__stdcall *fnAllocateMemory)(DWORD dwSize);
typedef VOID (__stdcall *fnReleaseMemory)(LPVOID lpMemory);
typedef VOID (__stdcall *fnSetRC4Data)(LPVOID lpKeys, DWORD dwSize);
typedef DWORD (__stdcall *fnGetRC4Data)(LPVOID lpBuffer, LPDWORD dwSize);
typedef struct _FuncList
{
    void *fpSendPacket;     //0x00
    void *fpCheckModule;    //0x04
    void *fpLoadModule;     //0x08
    void *fpAllocateMemory; //0x0C
    void *fpReleaseMemory;  //0x10
    void *fpSetRC4Data;     //0x14
    void *fpGetRC4Data;     //0x18
} FuncList;

//output
typedef VOID (__thiscall *fnGenerateRC4Keys)(WardenFuncList** ppFncList, LPVOID lpData, DWORD dwSize);
typedef VOID (__thiscall *fnUnloadModule)(WardenFuncList** ppFncList);
typedef VOID (__thiscall *fnPacketHandler)(WardenFuncList** ppFncList, BYTE* pPacket, DWORD dwSize, DWORD* dwBuffer);
typedef VOID (__thiscall *fnTick)(WardenFuncList** ppFncList, DWORD _2); // _2 is sum dwOldTick - GetTickCount(); shit ..
typedef struct _WardenFuncList
{
    fnGenerateRC4Keys * fpGenerateRC4Keys;  //0x00
    fnUnloadModule * fpUnload;              //0x04 - Before it frees everything it will call FuncList:fpSetRC4Data and store the RC4 key
    fnPacketHandler * fpPacketHandler;      //0x08
    fnTick * fpTick;                        //0x0C
} WardenFuncList;

typedef struct _WardenChkFuncList
{
    uint32 FctAddr[15]; // we may need to init one of them to use the Tick function
} WardenChkFuncList;

typedef struct _WardenInitData
{
    _WardenFuncList* pFct;
    uint8 seed[16];
    uint32 unknown1;
    uint32 callbacks_ptr;
    uint32 unknown2;
    uint8 keys[0x204];
    uint32 packetSkipBytes;
    _WardenChkFuncList *pCheckFct;
    // and so on, but I need only the seed 1st byte
} WardenInitData;

typedef struct _KeyPair
{
    uint8 client[0x102];
    uint8 server[0x102];
} KeyPair;

typedef WardenFuncList** (__fastcall *fnInitializeModule)(DWORD* lpPtr2Table);

class CWardenLoader
{
    class CLibraryEntry
    {
    public:
        DWORD dwFileName;
        DWORD dwImports;
    };
    class CHeader
    {
    public:
        DWORD dwModuleSize;
        DWORD dwDestructor;
        DWORD dwSizeOfCode;
        DWORD dwRelocationCount;
        DWORD dwProcedureTable;
        DWORD dwProcedureCount;
        DWORD dwProcedureAdjust;
        DWORD dwLibraryTable;
        DWORD dwLibraryCount;
        DWORD dwChunkCount;
    };

    PDWORD pdwModule;
    DWORD dwModuleSize, dwLibraryCount;
public:
    template< class T >
    T GetAddress( DWORD dwOffset )
    {
        return reinterpret_cast< T >( reinterpret_cast<DWORD>( pdwModule ) + dwOffset );
    }

    template<>
    unsigned long GetAddress<DWORD>( DWORD dwOffset )
    {
        return reinterpret_cast<DWORD>( pdwModule ) + dwOffset;
    }

    inline CHeader * GetHeader( PDWORD pdwNewModule = 0 )
    {
        return reinterpret_cast<CHeader*>( pdwNewModule ? pdwNewModule : pdwModule );
    }

    void UnloadWarden();
    bool LoadWarden( PDWORD pdwNewModule, DWORD dwSize );
    PDWORD GetModule() { return pdwModule; }

    template<class T>
    T GetEntryPoint( DWORD dwIndex )
    {
        if( pdwModule )
        {
            dwIndex -= GetHeader()->dwProcedureAdjust;
            if( dwIndex < GetHeader()->dwProcedureCount )
                return GetAddress<T>( GetAddress<PDWORD>( GetHeader()->dwProcedureTable )[ dwIndex ] );
        }
        return 0;
    }
    WardenFuncList **InitializeWarden(const std::string &md5);
    void PrintHeader( PDWORD pdwHeader );
};

struct fPointers
{
    void *f1;
    void *f2;
    void *f3;
    void *f4;
};

struct InstanceS
{
    FuncList dwTable;
    FuncList *tableptr;
    fPointers pointers;
    WardenFuncList **list;
    CWardenLoader *loader;
    uint8 moduleKey[16];
};

typedef std::map<std::string, InstanceS> WardenModuleMap;

struct Wardend
{
    public:

        static Wardend& Instance();

        Wardend();
        ~Wardend() {}

        void Initialize();
        void Finalize();
        void LoadFromDB();
        void RandAnUnusedModuleMd5(std::string *result);
        bool CheckModuleExistOnDisk(const std::string &md5);

        uint32 LoadModuleFromDisk(const std::string &md5);
        uint8 *GenerateAndGetNewServerKey(uint32 accountId, uint8 *sessionKey/*[40]*/, uint8 *packet/*[17]*/);
        uint8 *GetNewClientKey(uint32 accountId);
        bool IsCodedTransformedSeedValid(uint32 accountId, uint8 *codedClientTSeed);
        const std::string& GetModuleMd5(uint32 accountId) const;
        void BuildCheatCheck(uint32 accountId, ByteBuffer *pkt);
        bool ValidateCheatCheckResult(uint32 accountId, ByteBuffer *pkt);
        uint8 GetSeedFirstByte(const std::string &md5);
        void SaveSeed1Byte(uint32 accountId);
        void FreeModuleForAccount(uint32 accountId);

        // Session related
        uint32 Register(uint32 accountId, uint8 *rc4, uint8 *binMd5, uint32 *modLen);
        void Unregister(uint32 accountId);

        std::string GetDataPath() const { return m_dataPath.c_str(); }
        void SetDataPath(const char *data) { m_dataPath = data; }

    private:
        // Structure to store checks
        struct MemoryCheckEntry
        {
            std::string String;
            uint32 Offset;
            uint8 Length;
            uint8 Result[20];
        };
        struct PageCheckEntry
        {
            uint32 Seed;
            uint8 SHA[20];
            uint32 Offset;
            uint8 Length;
        };
        struct FileCheckEntry
        {
            std::string String;
            uint8 SHA[20];
        };
        struct LuaCheckEntry
        {
            std::string String;
        };
        struct DriverCheckEntry
        {
            uint32 Seed;
            uint8 SHA[20];
            std::string String;
        };
        struct GenericCheck
        {
            uint8 check;
            union
            {
                MemoryCheckEntry* mem;
                PageCheckEntry* page;
                FileCheckEntry* file;
                LuaCheckEntry* lua;
                DriverCheckEntry* driver;
            };
        };
        typedef std::vector<uint8> WardenCheckMap;
        typedef std::map<std::string, WardenCheckMap> WardenModuleCheckMap;
        typedef std::map<uint32, std::string> WardenClientMapping;
        typedef std::map<uint32, uint8> WardenClientSeed;

        typedef std::vector<MemoryCheckEntry> WardenMemoryChecks;
        typedef std::vector<PageCheckEntry> WardenPageChecks;
        typedef std::vector<FileCheckEntry> WardenFileChecks;
        typedef std::vector<LuaCheckEntry> WardenLuaChecks;
        typedef std::vector<DriverCheckEntry> WardenDriverChecks;

        typedef std::vector<GenericCheck> WardenClientCheckList;
        typedef std::map<uint32, WardenClientCheckList> WardenClientCheckMapping;

        // Internal methods
        MemoryCheckEntry *GetRandMemCheck();
        PageCheckEntry *GetRandPageCheck();
        FileCheckEntry *GetRandFileCheck();
        LuaCheckEntry *GetRandLuaCheck();
        DriverCheckEntry *GetRandDriverCheck();

protected:
        WardenModuleCheckMap mWardenModuleChecks;
        WardenClientMapping mWardenClientMap;

        WardenMemoryChecks mWardenMemoryChecks;
        WardenPageChecks mWardenPageChecks;
        WardenFileChecks mWardenFileChecks;
        WardenLuaChecks mWardenLuaChecks;
        WardenDriverChecks mWardenDriverChecks;
        WardenClientSeed mWardenClientSeed;

        WardenClientCheckMapping mWardenClientCheckMapping;

        bool m_IsWardenInit;
        uint8 m_activeModules;
        uint8 m_maxModuleCount;

        std::string m_dataPath;
};

#define sWardend Wardend::Instance()

#endif
