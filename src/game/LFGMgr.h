/*
 * Copyright (C) 2005-2011 /dev/rsa for MaNGOS <http://getmangos.com/>
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

#ifndef _LFGMGR_H
#define _LFGMGR_H

#include "Common.h"
#include "ObjectGuid.h"
#include "Policies/Singleton.h"
#include <ace/RW_Thread_Mutex.h>
#include "LFG.h"
#include "DBCEnums.h"

class Group;
class Player;
struct LFGDungeonExpansionEntry;

// forward struct declarations
struct LFGReward;
struct LFGQueueInfo;
struct LFGProposal;

typedef std::multimap<uint32, LFGReward> LFGRewardMap;
typedef std::pair<LFGRewardMap::const_iterator, LFGRewardMap::const_iterator> LFGRewardMapBounds;
typedef std::map<ObjectGuid, LFGQueueInfo> LFGQueueInfoMap;
typedef std::map<uint32/*ID*/, LFGDungeonEntry const*> LFGDungeonMap;
typedef std::map<uint32/*ID*/, LFGDungeonExpansionEntry const*> LFGDungeonExpansionMap;
typedef std::set<ObjectGuid>  LFGQueueSet;
typedef std::map<ObjectGuid, LFGAnswer> LFGAnswerMap;
typedef std::map<uint32/*ID*/, LFGProposal> LFGProposalMap;

// Reward info
struct LFGReward
{
    uint32 maxLevel;
    struct
    {
        uint32 questId;
        uint32 variableMoney;
        uint32 variableXP;
    } reward[2];

    LFGReward(uint32 _maxLevel, uint32 firstQuest, uint32 firstVarMoney, uint32 firstVarXp, uint32 otherQuest, uint32 otherVarMoney, uint32 otherVarXp)
        : maxLevel(_maxLevel)
    {
        reward[0].questId = firstQuest;
        reward[0].variableMoney = firstVarMoney;
        reward[0].variableXP = firstVarXp;
        reward[1].questId = otherQuest;
        reward[1].variableMoney = otherVarMoney;
        reward[1].variableXP = otherVarXp;
    }
};

// Stores player or group queue info
struct LFGQueueInfo
{
    LFGQueueInfo(ObjectGuid _guid, LFGType type);
    ObjectGuid guid;                                        // guid (player or group) of queue owner
    time_t     joinTime;                                    // Player queue join time (to calculate wait times)
    uint8      tanks;                                       // Tanks needed
    uint8      healers;                                     // Healers needed
    uint8      dps;                                         // Dps needed
    // helpers
    LFGType    GetDungeonType() {return m_type;};
    private:
    LFGType    m_type;
};

struct LFGQueueStatus
{
    LFGQueueStatus(): avgWaitTime(0), waitTime(0), waitTimeTanks(0), waitTimeDps(0),
                      tanks(0), healers(0), dps(0), playersWaited(0) {};

    time_t                 avgWaitTime;                      // Average Wait time
    time_t                 waitTime;                         // Wait Time
    time_t                 waitTimeTanks;                    // Wait Tanks
    time_t                 waitTimeHealer;                   // Wait Healers
    time_t                 waitTimeDps;                      // Wait Dps
    uint8                  tanks;                            // Tanks
    uint8                  healers;                          // Healers
    uint8                  dps;                              // Dps
    uint32                 playersWaited;                    // players summ
};

/// Stores group data related to proposal to join
struct LFGProposal
{
    LFGProposal(LFGDungeonEntry const* _dungeon);
    public:
    uint32 ID;                                               // Proposal id
    LFGQueueSet playerGuids;                                 // Players in this proposal
    LFGQueueSet declinerGuids;                               // Decliners in this proposal

    // helpers
    Group* GetGroup() { return m_group; };
    void SetGroup(Group* group) { m_group = group; };
    void AddMember(ObjectGuid guid);
    void RemoveMember(ObjectGuid guid);

    void RemoveDecliner(ObjectGuid guid);
    bool IsDecliner(ObjectGuid guid);

    LFGProposalState GetState() {return m_state;};
    void SetState(LFGProposalState _state ) { m_state = _state;};

    LFGDungeonEntry const* GetDungeon() { return m_dungeon;};
    LFGType GetType();

    void Start();
    bool IsActive() { return ( m_cancelTime >= time_t(time(NULL)));};

    private:
    LFGDungeonEntry const* m_dungeon;                        // Dungeon
    LFGProposalState m_state;                                // State of the proposal
    Group* m_group;                                          // Proposal group (NULL if not created)
    time_t m_cancelTime;                                     // Time when we will cancel this proposal
};

/// Stores information of a current vote to kick someone from a group
struct LFGPlayerBoot
{
    time_t cancelTime;                                     ///< Time left to vote
    bool inProgress;                                       ///< Vote in progress
    LFGAnswerMap votes;                                    ///< Player votes (-1 not answer | 0 Not agree | 1 agree)
    ObjectGuid victim;                                     ///< Player guid to be kicked (can't vote)
    uint8 votedNeeded;                                     ///< Votes needed to kick the player
    std::string reason;                                    ///< kick reason
};

typedef std::map<ObjectGuid, LFGPlayerBoot>  LFGBootMap;
typedef std::map<LFGDungeonEntry const*, LFGQueueStatus> LFGQueueStatusMap;
typedef std::map<ObjectGuid, LFGRoleMask>  LFGRolesMap;
typedef std::set<LFGQueueInfo*> LFGQueue;
typedef std::map<LFGDungeonEntry const*, LFGQueueSet> LFGSearchMap;

class LFGMgr
{
    public:
        LFGMgr();
        ~LFGMgr();

        // Update system
        void Update(uint32 diff);

        void TryCompleteGroups(LFGType type);
        bool TryCompleteGroup(Group* group, Player* player);
        bool TryCreateGroup(LFGType type);

        // Join system
        void Join(Player* player);
        void Leave(Player* player);
        void Leave(Group* group);
        void ClearLFRList(Player* player);

        // Queue system
        void AddToQueue(ObjectGuid guid, LFGType type, bool inBegin = false);
        void RemoveFromQueue(ObjectGuid guid);
        LFGQueueInfo* GetQueueInfo(ObjectGuid guid);
        LFGQueueSet GetDungeonPlayerQueue(LFGDungeonEntry const* dungeon, Team team = TEAM_NONE);
        LFGQueueSet GetDungeonGroupQueue(LFGDungeonEntry const* dungeon, Team team = TEAM_NONE);
        LFGQueueSet GetDungeonPlayerQueue(LFGType type);

        // reward system
        void LoadRewards();
        LFGReward const* GetRandomDungeonReward(LFGDungeonEntry const* dungeon, Player* player);
        void SendLFGRewards(Group* group);
        void SendLFGReward(Player* player, LFGDungeonEntry const* dungeon);
        void DungeonEncounterReached(Group* group);

        // Proposal system
        uint32 CreateProposal(LFGDungeonEntry const* dungeon, Group* group = NULL, LFGQueueSet* playerGuids = NULL);
        bool SendProposal(uint32 ID, ObjectGuid guid);
        LFGProposal* GetProposal(uint32 ID);
        void RemoveProposal(Player* decliner, uint32 ID);
        void RemoveProposal(uint32 ID, bool success = false);
        void UpdateProposal(uint32 ID, ObjectGuid guid, bool accept);
        void CleanupProposals();
        Player* LeaderElection(LFGQueueSet* playerGuids);

        // boot vote system
        void OfferContinue(Group* group);
        void InitBoot(Player* kicker, ObjectGuid victimGuid, std::string reason);
        LFGPlayerBoot* GetBoot(ObjectGuid guid);
        void DeleteBoot(ObjectGuid guid);
        void UpdateBoot(Player* player, bool accept);

        // teleport system
        void Teleport(Group* group, bool out = false);
        void Teleport(Player* player, bool out = false, bool fromOpcode = false);

        // LFR extend system
        void UpdateLFRGroups();
        bool IsGroupCompleted(Group* group, uint8 addMembers = 0);

        // Statistic system
        LFGQueueStatus* GetDungeonQueueStatus(LFGType type);
        void SetDungeonQueueStatus(LFGType type);
        void UpdateQueueStatus(Player* player);
        void UpdateStatistic(LFGType type);

        // Role check system
        void CleanupRoleChecks(LFGType type);
        void StartRoleCheck(Group* group);
        void UpdateRoleCheck(Group* group);
        bool CheckRoles(Group* group, Player* player = NULL);
        bool CheckRoles(LFGRolesMap* roleMap);
        bool RoleChanged(Player* player, uint8 roles);
        bool SetGroupRoles(Group* group, Player* player = NULL);
        bool TrySetRoles(LFGRolesMap* roleMap);

        // Social check system
        bool HasIgnoreState(ObjectGuid guid1, ObjectGuid guid2);
        bool HasIgnoreState(Group* group, ObjectGuid guid);
        bool CheckTeam(Group* group, Player* player = NULL);
        bool CheckTeam(ObjectGuid guid1, ObjectGuid guid2);

        // Dungeon operations
        LFGDungeonEntry const* GetDungeon(uint32 dungeonID);
        LFGDungeonExpansionEntry const* GetDungeonExpansion(uint32 dungeonID);
        bool IsRandomDungeon(LFGDungeonEntry const* dungeon);
        LFGDungeonSet GetRandomDungeonsForPlayer(Player* player);

        // Group operations
        void AddMemberToLFDGroup(ObjectGuid guid);
        void RemoveMemberFromLFDGroup(Group* group, ObjectGuid guid);

        // Dungeon expand operations
        LFGDungeonSet ExpandRandomDungeonsForGroup(LFGDungeonEntry const* randomDungeon, LFGQueueSet playerGuids);
        LFGDungeonEntry const* SelectRandomDungeonFromList(LFGDungeonSet dugeons);

        // Checks
        LFGJoinResult GetPlayerJoinResult(Player* player);
        LFGJoinResult GetGroupJoinResult(Group* group);

        // Player status
        LFGLockStatusType GetPlayerLockStatus(Player* player, LFGDungeonEntry const* dungeon);
        LFGLockStatusType GetPlayerExpansionLockStatus(Player* player, LFGDungeonEntry const* dungeon);
        LFGLockStatusType GetGroupLockStatus(Group* group, LFGDungeonEntry const* dungeon);
        LFGLockStatusMap GetPlayerLockMap(Player* player);

        // Search matrix
        void AddToSearchMatrix(ObjectGuid guid, bool inBegin = false);
        void RemoveFromSearchMatrix(ObjectGuid guid);
        LFGQueueSet* GetSearchVector(LFGDungeonEntry const* dungeon);
        bool IsInSearchFor(LFGDungeonEntry const* dungeon, ObjectGuid guid);
        void CleanupSearchMatrix();

        // multithread locking
        typedef   ACE_RW_Thread_Mutex          LockType;
        typedef   ACE_Read_Guard<LockType>     ReadGuard;
        typedef   ACE_Write_Guard<LockType>    WriteGuard;
        LockType& GetLock() { return i_lock; }

    private:
        void _Join(ObjectGuid guid, LFGType type);
        void _JoinGroup(ObjectGuid guid, LFGType type);
        uint32 GenerateProposalID();
        uint32          m_proposalID;
        LFGRewardMap    m_RewardMap;                        // Stores rewards for random dungeons
        LFGQueueInfoMap m_queueInfoMap;                     // Storage for queues
        LFGQueue        m_playerQueue[LFG_TYPE_MAX];        // Queue's for players
        LFGQueue        m_groupQueue[LFG_TYPE_MAX];         // Queue's for groups
        LFGDungeonMap   m_dungeonMap;                       // sorted dungeon map
        LFGDungeonExpansionMap m_dungeonExpansionMap;       // sorted dungeon expansion map
        LFGQueueStatus  m_queueStatus[LFG_TYPE_MAX];        // Queue statisic
        LFGProposalMap  m_proposalMap;                      // Proposal store
        LFGBootMap      m_bootMap;                          // boot store
        LFGSearchMap    m_searchMatrix;                     // Search matrix

        uint32          m_updateTimer;                      // update timer for cleanup/statistic
        uint32          m_updateTimer2;                     // update timer for LFR extend system

        LockType            i_lock;

};

#define sLFGMgr MaNGOS::Singleton<LFGMgr>::Instance()
#endif
