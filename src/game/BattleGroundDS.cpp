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

#include "BattleGround.h"
#include "BattleGroundDS.h"
#include "Language.h"
#include "Player.h"
#include "Object.h"
#include "ObjectMgr.h"
#include "WorldPacket.h"

BattleGroundDS::BattleGroundDS()
{
    m_BgObjects.resize(BG_DS_OBJECT_MAX);

    m_StartDelayTimes[BG_STARTING_EVENT_FIRST]  = BG_START_DELAY_1M;
    m_StartDelayTimes[BG_STARTING_EVENT_SECOND] = BG_START_DELAY_30S;
    m_StartDelayTimes[BG_STARTING_EVENT_THIRD]  = BG_START_DELAY_15S;
    m_StartDelayTimes[BG_STARTING_EVENT_FOURTH] = BG_START_DELAY_NONE;
    //we must set messageIds
    m_StartMessageIds[BG_STARTING_EVENT_FIRST]  = LANG_ARENA_ONE_MINUTE;
    m_StartMessageIds[BG_STARTING_EVENT_SECOND] = LANG_ARENA_THIRTY_SECONDS;
    m_StartMessageIds[BG_STARTING_EVENT_THIRD]  = LANG_ARENA_FIFTEEN_SECONDS;
    m_StartMessageIds[BG_STARTING_EVENT_FOURTH] = LANG_ARENA_HAS_BEGUN;
}

BattleGroundDS::~BattleGroundDS()
{

}

void BattleGroundDS::Update(uint32 diff)
{
    BattleGround::Update(diff);

    if (GetStatus() == STATUS_IN_PROGRESS)
    {
        if (GetStartTime() >= 47*MINUTE*IN_MILLISECONDS)    // after 47 minutes without one team losing, the arena closes with no winner and no rating change
            EndBattleGround(TEAM_NONE);
        // knockback
        if(m_uiKnockback < diff)
        {
            for(BattleGroundPlayerMap::const_iterator itr = GetPlayers().begin(); itr != GetPlayers().end(); ++itr)
            {
                Player * plr = sObjectMgr.GetPlayer(itr->first);
                if (plr && plr->IsWithinLOS(1214,765,14) && plr->GetDistance2d(1214,765) <= 50)
                    plr->KnockBackPlayerWithAngle(6.40f,55,7);
                if (plr && plr->IsWithinLOS(1369,817,14) && plr->GetDistance2d(1369,817) <= 50)
                    plr->KnockBackPlayerWithAngle(3.03f,55,7);
            }
            m_uiKnockback = 1000;
        }
        else
            m_uiKnockback -= diff;
    }

    if (getWaterFallTimer() < diff)
    {
        if (isWaterFallActive())
        {
            setWaterFallTimer(urand(BG_DS_WATERFALL_TIMER_MIN, BG_DS_WATERFALL_TIMER_MAX));
            for (uint32 i = BG_DS_OBJECT_WATER_1; i <= BG_DS_OBJECT_WATER_2; ++i)
                DoorOpen(m_BgObjects[i]);
            setWaterFallActive(false);
        }
        else
        {
            setWaterFallTimer(BG_DS_WATERFALL_DURATION);
            for (uint32 i = BG_DS_OBJECT_WATER_1; i <= BG_DS_OBJECT_WATER_2; ++i)
                DoorOpen(m_BgObjects[i]);
            setWaterFallActive(true);
        }
    }
    else
        setWaterFallTimer(getWaterFallTimer() - diff);
}

void BattleGroundDS::StartingEventCloseDoors()
{
    for (uint32 i = BG_DS_OBJECT_DOOR_1; i <= BG_DS_OBJECT_DOOR_2; ++i)
        SpawnBGObject(m_BgObjects[i], RESPAWN_IMMEDIATELY);
}

void BattleGroundDS::StartingEventOpenDoors()
{
    for (uint32 i = BG_DS_OBJECT_DOOR_1; i <= BG_DS_OBJECT_DOOR_2; ++i)
        DoorOpen(m_BgObjects[i]);

    for (uint32 i = BG_DS_OBJECT_BUFF_1; i <= BG_DS_OBJECT_BUFF_2; ++i)
        SpawnBGObject(m_BgObjects[i], 60);

    setWaterFallTimer(urand(BG_DS_WATERFALL_TIMER_MIN, BG_DS_WATERFALL_TIMER_MAX));
    setWaterFallActive(false);

    for (uint32 i = BG_DS_OBJECT_WATER_1; i <= BG_DS_OBJECT_WATER_2; ++i)
        DoorOpen(m_BgObjects[i]);

    // With mmaps, pets can't get out of the tube, so teleport it to the ground:
    for (BattleGroundPlayerMap::const_iterator itr = m_Players.begin(); itr != m_Players.end(); ++itr)
    {
        Player *player = sObjectMgr.GetPlayer(itr->first);
        if (!player)
            continue;

        Pet *pet = player->GetPet();
        if (!pet)
            continue;

        if (player->GetPositionX() > 1300.0f) // Switch in function of owner's starting tube
            player->TeleportTo(GetMapId(), petTeleLocations[0][0], petTeleLocations[0][1], petTeleLocations[0][2], petTeleLocations[0][3]);
        else
            player->TeleportTo(GetMapId(), petTeleLocations[1][0], petTeleLocations[1][1], petTeleLocations[1][2], petTeleLocations[1][3]);
    }
}

void BattleGroundDS::AddPlayer(Player *plr)
{
    BattleGround::AddPlayer(plr);
    //create score and add it to map, default values are set in constructor
    BattleGroundDSScore* sc = new BattleGroundDSScore;

    m_PlayerScores[plr->GetGUID()] = sc;
}

void BattleGroundDS::RemovePlayer(Player * /*plr*/, ObjectGuid /*guid*/)
{
    if (GetStatus() == STATUS_WAIT_LEAVE)
        return;

    CheckArenaWinConditions();
}

void BattleGroundDS::HandleKillPlayer(Player* player, Player* killer)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    if (!killer)
    {
        sLog.outError("BattleGroundDS: Killer player not found");
        return;
    }

    BattleGround::HandleKillPlayer(player,killer);
    CheckArenaWinConditions();
}

void BattleGroundDS::HandleAreaTrigger(Player *Source, uint32 Trigger)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    switch(Trigger)
    {
        case 5347:
        case 5348:
            break;
        default:
            sLog.outError("WARNING: Unhandled AreaTrigger in BattleGround: %u", Trigger);
            break;
    }
}

bool BattleGroundDS::HandlePlayerUnderMap(Player *player)
{
    player->TeleportTo(GetMapId(), 1299.046f, 784.825f, 9.338f, 2.422f, false);
    return true;
}

void BattleGroundDS::FillInitialWorldStates(WorldPacket &data)
{
    data << uint32(3610) << uint32(1);                                              // 9 show
}

void BattleGroundDS::Reset()
{
    m_uiKnockback = 5000;
    //call parent's class reset
    BattleGround::Reset();
}


bool BattleGroundDS::SetupBattleGround()
{
    // gates
    if (!AddObject(BG_DS_OBJECT_DOOR_1, BG_DS_OBJECT_TYPE_DOOR_1, 1350.95f, 817.2f, 20.8096f, 3.15f, 0, 0, 0.99627f, 0.0862864f, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_DS_OBJECT_DOOR_2, BG_DS_OBJECT_TYPE_DOOR_2, 1232.65f, 764.913f, 20.0729f, 6.3f, 0, 0, 0.0310211f, -0.999519f, RESPAWN_IMMEDIATELY)
    // water
        || !AddObject(BG_DS_OBJECT_WATER_1, BG_DS_OBJECT_TYPE_WATER_1, 1291.56f, 790.837f, 7.1f, 3.14238f, 0, 0, 0.694215f, -0.719768f, 120)
        || !AddObject(BG_DS_OBJECT_WATER_2, BG_DS_OBJECT_TYPE_WATER_2, 1291.56f, 790.837f, 7.1f, 3.14238f, 0, 0, 0.694215f, -0.719768f, 120)
    // buffs
        || !AddObject(BG_DS_OBJECT_BUFF_1, BG_DS_OBJECT_TYPE_BUFF_1, 1291.7f, 813.424f, 7.11472f, 4.64562f, 0, 0, 0.730314f, -0.683111f, 120)
        || !AddObject(BG_DS_OBJECT_BUFF_2, BG_DS_OBJECT_TYPE_BUFF_2, 1291.7f, 768.911f, 7.11472f, 1.55194f, 0, 0, 0.700409f, 0.713742f, 120))
    {
        sLog.outErrorDb("BatteGroundDS: Failed to spawn some object!");
        return false;
    }

    for (uint32 i = BG_DS_OBJECT_WATER_1; i <= BG_DS_OBJECT_WATER_2; ++i)
        SpawnBGObject(m_BgObjects[i], RESPAWN_IMMEDIATELY);
    return true;
}