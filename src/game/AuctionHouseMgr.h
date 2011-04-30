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

#ifndef _AUCTION_HOUSE_MGR_H
#define _AUCTION_HOUSE_MGR_H

#include "Common.h"
#include "SharedDefines.h"
#include "Platform/Define.h"
#include "Policies/Singleton.h"
#include "DBCStructure.h"
#include "Item.h"
#include <ace/Thread_Mutex.h>
#include <ace/RW_Thread_Mutex.h>

class Player;
class Unit;
class WorldPacket;

struct ItemProtoType;

#define MIN_AUCTION_TIME (12*HOUR)
#define MAX_AUCTION_SORT 12
#define AUCTION_SORT_REVERSED 0x10

enum AuctionError
{
    AUCTION_OK                          = 0,                // depends on enum AuctionAction
    AUCTION_ERR_INVENTORY               = 1,                // depends on enum InventoryChangeResult
    AUCTION_ERR_DATABASE                = 2,                // ERR_AUCTION_DATABASE_ERROR (default)
    AUCTION_ERR_NOT_ENOUGH_MONEY        = 3,                // ERR_NOT_ENOUGH_MONEY
    AUCTION_ERR_ITEM_NOT_FOUND          = 4,                // ERR_ITEM_NOT_FOUND
    AUCTION_ERR_HIGHER_BID              = 5,                // ERR_AUCTION_HIGHER_BID
    AUCTION_ERR_BID_INCREMENT           = 7,                // ERR_AUCTION_BID_INCREMENT
    AUCTION_ERR_BID_OWN                 = 10,               // ERR_AUCTION_BID_OWN
    AUCTION_ERR_RESTRICTED_ACCOUNT      = 13                // ERR_RESTRICTED_ACCOUNT
};

enum AuctionAction
{
    AUCTION_STARTED     = 0,                                // ERR_AUCTION_STARTED
    AUCTION_REMOVED     = 1,                                // ERR_AUCTION_REMOVED
    AUCTION_BID_PLACED  = 2                                 // ERR_AUCTION_BID_PLACED
};

struct AuctionEntry
{
    AuctionEntry() : m_deleted(false) {};

    bool   m_deleted;

    uint32 Id;
    uint32 itemGuidLow;
    uint32 itemTemplate;
    uint32 owner;
    uint32 startbid;                                        // maybe useless
    uint32 bid;
    uint32 buyout;
    time_t expireTime;
    time_t moneyDeliveryTime;
    uint32 bidder;
    uint32 deposit;                                         // deposit can be calculated only when creating auction
    AuctionHouseEntry const* auctionHouseEntry;             // in AuctionHouse.dbc

    // helpers
    uint32 GetHouseId() const { return auctionHouseEntry->houseId; }
    uint32 GetHouseFaction() const { return auctionHouseEntry->faction; }
    uint32 GetAuctionCut() const;
    uint32 GetAuctionOutBid() const;
    bool BuildAuctionInfo(WorldPacket & data) const;
    void DeleteFromDB() const;
    void SaveToDB() const;

    bool IsDeleted() const { return m_deleted; };
    void SetDeleted() { m_deleted = true; };
};

//this class is used as auctionhouse instance
class AuctionHouseObject
{
    public:
        AuctionHouseObject() {}
        ~AuctionHouseObject()
        {
            for (AuctionEntryMap::const_iterator itr = AuctionsMap.begin(); itr != AuctionsMap.end(); ++itr)
                delete itr->second;
        }

        typedef std::map<uint32, AuctionEntry*> AuctionEntryMap;

        uint32 GetCount() { return AuctionsMap.size(); }

        AuctionEntryMap *GetAuctions() { return &AuctionsMap; }

        AuctionEntryMap::iterator GetAuctionsBegin() {return AuctionsMap.begin();}
        AuctionEntryMap::iterator GetAuctionsEnd() {return AuctionsMap.end();}

        void AddAuction(AuctionEntry *ah)
        {
            MANGOS_ASSERT( ah );
            AuctionsMap[ah->Id] = ah;
        }

        AuctionEntry* GetAuction(uint32 id) const
        {
            AuctionEntryMap::const_iterator itr = AuctionsMap.find( id );
            return itr != AuctionsMap.end() ? itr->second : NULL;
        }

        bool RemoveAuction(uint32 id)
        {
            return AuctionsMap.erase(id) ? true : false;
        }

        void Update();

        void BuildListBidderItems(WorldPacket& data, Player* player, uint32& count, uint32& totalcount);
        void BuildListOwnerItems(WorldPacket& data, Player* player, uint32& count, uint32& totalcount);
        void BuildListPendingSales(WorldPacket& data, Player* player, uint32& count);

    private:
        AuctionEntryMap AuctionsMap;
};

class AuctionSorter
{
    public:
        AuctionSorter(uint8 *sort) : m_sort(sort) {}
        bool operator()(const AuctionEntry *auc1, const AuctionEntry *auc2) const;

    private:
        uint8* m_sort;
};

class AuctionHouseMgr
{
    public:
        AuctionHouseMgr();
        ~AuctionHouseMgr();

        typedef UNORDERED_MAP<uint32, Item*> ItemMap;
        typedef ACE_RW_Thread_Mutex          LockType;
        typedef ACE_Read_Guard<LockType>     ReadGuard;
        typedef ACE_Write_Guard<LockType>    WriteGuard;

        AuctionHouseObject* GetAuctionsMap(AuctionHouseEntry const* house);

        Item* GetAItem(uint32 id)
        {
            ReadGuard guard(i_lock);
            ItemMap::const_iterator itr = mAitems.find(id);
            if (itr != mAitems.end())
            {
                return itr->second;
            }
            return NULL;
        }

        ItemPrototype const* GetAItemProto(uint32 id)
        {
            ReadGuard guard(i_lock);
            ItemMap::const_iterator itr = mAitems.find(id);
            if (itr != mAitems.end())
            {
                return itr->second->GetProto();
            }
            return NULL;
        }

        //auction messages
        void SendAuctionWonMail( AuctionEntry * auction );
        void SendAuctionSalePendingMail( AuctionEntry * auction );
        void SendAuctionSuccessfulMail( AuctionEntry * auction );
        void SendAuctionExpiredMail( AuctionEntry * auction );
        static uint32 GetAuctionDeposit(AuctionHouseEntry const* entry, uint32 time, Item *pItem);

        static uint32 GetAuctionHouseTeam(AuctionHouseEntry const* house);
        static AuctionHouseEntry const* GetAuctionHouseEntry(Unit* unit);

        bool CompareAuctionEntry(uint32 column, const AuctionEntry* auc1, const AuctionEntry* auc2) const;

    public:
        //load first auction items, because of check if item exists, when loading
        void LoadAuctionItems();
        void LoadAuctions();

        void AddAItem(Item* it);
        bool RemoveAItem(uint32 id);

        void AddAItemToRemoveList(Item* item);
        void ClearRemovedAItems();

        void Update();

    private:
        AuctionHouseObject  mHordeAuctions;
        AuctionHouseObject  mAllianceAuctions;
        AuctionHouseObject  mNeutralAuctions;

        ItemMap             mAitems;

        LockType            i_lock;
        std::queue<Item*>   m_deletedItems;
};

#define sAuctionMgr MaNGOS::Singleton<AuctionHouseMgr>::Instance()

#endif
