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
#include "BattleGroundRV.h"
#include "ObjectAccessor.h"
#include "Language.h"
#include "Player.h"
#include "WorldPacket.h"
#include "GameObject.h"

BattleGroundRV::BattleGroundRV()
{
    m_BgObjects.resize(BG_RV_OBJECT_MAX);

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

BattleGroundRV::~BattleGroundRV()
{

}

void BattleGroundRV::Update(uint32 diff)
{
    BattleGround::Update(diff);

    if (GetStatus() == STATUS_IN_PROGRESS)
    {
        /*if (GetStartTime() >= 47*MINUTE*IN_MILLISECONDS)    // after 47 minutes without one team losing, the arena closes with no winner and no rating change
        {
            UpdateArenaWorldState();
            CheckArenaAfterTimerConditions();
        }*/
        // Teleport buggers
        if (m_uiTeleport < diff)
        {
            for(BattleGroundPlayerMap::const_iterator itr = GetPlayers().begin(); itr != GetPlayers().end(); ++itr)
            {
                Player *plr = sObjectMgr.GetPlayer(itr->first);
                if (plr && plr->GetPositionZ() < 27.0f)
                    plr->TeleportTo(618, plr->GetPositionX(), plr->GetPositionY(), 29.0f, plr->GetOrientation(), false);
            }
            m_uiTeleport = 2000;
        }
        else
            m_uiTeleport -= diff;
    }

    if (getTimer() < diff)
    {
        uint32 i;
        switch(getState())
        {
            case BG_RV_STATE_OPEN_FENCES:
            {
                setTimer(BG_RV_PILAR_TO_FIRE_TIMER);
                setState(BG_RV_STATE_CLOSE_FIRE);
                break;
            }
            case BG_RV_STATE_CLOSE_FIRE:
                for (i = BG_RV_OBJECT_FIRE_1; i <= BG_RV_OBJECT_FIREDOOR_2; ++i)
                    DoorClose(m_BgObjects[i]);
                setTimer(BG_RV_FIRE_TO_PILAR_TIMER);
                setState(BG_RV_STATE_OPEN_PILARS);
                break;
            case BG_RV_STATE_OPEN_PILARS:
                for (i = BG_RV_OBJECT_PILAR_1; i <= BG_RV_OBJECT_PULLEY_2; ++i)
                    DoorOpen(m_BgObjects[i]);
                setTimer(BG_RV_PILAR_TO_FIRE_TIMER);
                setState(BG_RV_STATE_OPEN_FIRE);
                break;
            case BG_RV_STATE_OPEN_FIRE:
                for (i = BG_RV_OBJECT_FIRE_1; i <= BG_RV_OBJECT_FIREDOOR_2; ++i)
                    DoorOpen(m_BgObjects[i]);
                setTimer(BG_RV_FIRE_TO_PILAR_TIMER);
                setState(BG_RV_STATE_CLOSE_PILARS);
                break;
            case BG_RV_STATE_CLOSE_PILARS:
                uint32 i;
                for (i = BG_RV_OBJECT_PILAR_1; i <= BG_RV_OBJECT_PULLEY_2; ++i)
                    DoorOpen(m_BgObjects[i]);
                setTimer(BG_RV_PILAR_TO_FIRE_TIMER);
                setState(BG_RV_STATE_CLOSE_FIRE);
                break;
        }
    }
    else
        setTimer(getTimer() - diff);
}

void BattleGroundRV::StartingEventCloseDoors()
{
}

void BattleGroundRV::StartingEventOpenDoors()
{
    // Buff respawn
    SpawnBGObject(m_BgObjects[BG_RV_OBJECT_BUFF_1], 90);
    SpawnBGObject(m_BgObjects[BG_RV_OBJECT_BUFF_2], 90);
    // Open fences
    DoorOpen(m_BgObjects[BG_RV_OBJECT_FENCE_1]);
    DoorOpen(m_BgObjects[BG_RV_OBJECT_FENCE_2]);
    // Elevators
    DoorOpen(m_BgObjects[BG_RV_OBJECT_ELEVATOR_1]);
    DoorOpen(m_BgObjects[BG_RV_OBJECT_ELEVATOR_2]);

    setState(BG_RV_STATE_OPEN_FENCES);
    setTimer(BG_RV_FIRST_TIMER);
}

void BattleGroundRV::AddPlayer(Player *plr)
{
    BattleGround::AddPlayer(plr);
    //create score and add it to map, default values are set in constructor
    BattleGroundRVScore* sc = new BattleGroundRVScore;

    m_PlayerScores[plr->GetGUID()] = sc;

    UpdateWorldState(BG_RV_WORLD_STATE_A, GetAlivePlayersCountByTeam(ALLIANCE));
    UpdateWorldState(BG_RV_WORLD_STATE_H, GetAlivePlayersCountByTeam(HORDE));
}

void BattleGroundRV::RemovePlayer(Player * /*plr*/, ObjectGuid /*guid*/)
{
    if (GetStatus() == STATUS_WAIT_LEAVE)
        return;

    UpdateWorldState(BG_RV_WORLD_STATE_A, GetAlivePlayersCountByTeam(ALLIANCE));
    UpdateWorldState(BG_RV_WORLD_STATE_H, GetAlivePlayersCountByTeam(HORDE));

    CheckArenaWinConditions();
}

void BattleGroundRV::HandleKillPlayer(Player *player, Player *killer)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    if (!killer)
    {
        sLog.outError("BattleGroundRV: Killer player not found");
        return;
    }

    BattleGround::HandleKillPlayer(player, killer);

    UpdateWorldState(BG_RV_WORLD_STATE_A, GetAlivePlayersCountByTeam(ALLIANCE));
    UpdateWorldState(BG_RV_WORLD_STATE_H, GetAlivePlayersCountByTeam(HORDE));

    CheckArenaWinConditions();
}

bool BattleGroundRV::HandlePlayerUnderMap(Player *player)
{
    player->TeleportTo(GetMapId(), 763.5f, -284, 28.276f, 2.422f, false);
    return true;
}


void BattleGroundRV::HandleAreaTrigger(Player *Source, uint32 Trigger)
{
    if (GetStatus() != STATUS_IN_PROGRESS)
        return;

    switch(Trigger)
    {
        case 5224:
        case 5226:
            break;
        default:
            sLog.outError("WARNING: Unhandled AreaTrigger in BattleGround: %u", Trigger);
            // Source->GetSession()->SendAreaTriggerMessage("Warning: Unhandled AreaTrigger in BattleGround: %u", Trigger);
            break;
    }
}

void BattleGroundRV::FillInitialWorldStates(WorldPacket &data)
{
    data << uint32(BG_RV_WORLD_STATE_A) << uint32(GetAlivePlayersCountByTeam(ALLIANCE));
    data << uint32(BG_RV_WORLD_STATE_H) << uint32(GetAlivePlayersCountByTeam(HORDE));
    data << uint32(BG_RV_WORLD_STATE) << uint32(1);
}

void BattleGroundRV::Reset()
{
    //call parent's class reset
    BattleGround::Reset();
    m_uiTeleport = 22000;
}

bool BattleGroundRV::SetupBattleGround()
{
    // Fence
    if (!AddObject(BG_RV_OBJECT_FENCE_1, BG_RV_OBJECT_TYPE_FENCE_1, 763.432373f, -274.058197f, 28.276695f, 3.141593f, 0, 0, 0, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_RV_OBJECT_FENCE_2, BG_RV_OBJECT_TYPE_FENCE_2, 763.432373f, -294.419464f, 28.276684f, 3.141593f, 0, 0, 0, RESPAWN_IMMEDIATELY)
    // elevators
        || !AddObject(BG_RV_OBJECT_ELEVATOR_1, BG_RV_OBJECT_TYPE_ELEVATOR_1, 763.536377f, -294.535767f, 0.505383f, 3.141593f, 0, 0, 0, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_RV_OBJECT_ELEVATOR_2, BG_RV_OBJECT_TYPE_ELEVATOR_2, 763.506348f, -273.873352f, 0.505383f, 0.000000f, 0, 0, 0, RESPAWN_IMMEDIATELY)
    // buffs
        || !AddObject(BG_RV_OBJECT_BUFF_1, BG_RV_OBJECT_TYPE_BUFF_1, 735.551819f, -284.794678f, 28.276682f, 0.034906f, 0, 0, 0, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_RV_OBJECT_BUFF_2, BG_RV_OBJECT_TYPE_BUFF_2, 791.224487f, -284.794464f, 28.276682f, 2.600535f, 0, 0, 0, RESPAWN_IMMEDIATELY)
    // fire
        || !AddObject(BG_RV_OBJECT_FIRE_1, BG_RV_OBJECT_TYPE_FIRE_1, 743.543457f, -283.799469f, 28.286655f, 3.141593f, 0, 0, 0, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_RV_OBJECT_FIRE_2, BG_RV_OBJECT_TYPE_FIRE_2, 782.971802f, -283.799469f, 28.286655f, 3.141593f, 0, 0, 0, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_RV_OBJECT_FIREDOOR_1, BG_RV_OBJECT_TYPE_FIREDOOR_1, 743.711060f, -284.099609f, 27.542587f, 3.141593f, 0, 0, 0, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_RV_OBJECT_FIREDOOR_2, BG_RV_OBJECT_TYPE_FIREDOOR_2, 783.221252f, -284.133362f, 27.535686f, 0.000000f, 0, 0, 0, RESPAWN_IMMEDIATELY)
    // Gear
        || !AddObject(BG_RV_OBJECT_GEAR_1, BG_RV_OBJECT_TYPE_GEAR_1, 763.664551f, -261.872986f, 26.686588f, 0.000000f, 0, 0, 0, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_RV_OBJECT_GEAR_2, BG_RV_OBJECT_TYPE_GEAR_2, 763.578979f, -306.146149f, 26.665222f, 3.141593f, 0, 0, 0, RESPAWN_IMMEDIATELY)
    // Pulley
        || !AddObject(BG_RV_OBJECT_PULLEY_1, BG_RV_OBJECT_TYPE_PULLEY_1, 700.722290f, -283.990662f, 39.517582f, 3.141593f, 0, 0, 0, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_RV_OBJECT_PULLEY_2, BG_RV_OBJECT_TYPE_PULLEY_2, 826.303833f, -283.996429f, 39.517582f, 0.000000f, 0, 0, 0, RESPAWN_IMMEDIATELY)
    // Pilars
        || !AddObject(BG_RV_OBJECT_PILAR_1, BG_RV_OBJECT_TYPE_PILAR_1, 763.632385f, -306.162384f, 25.909504f, 3.141593f, 0, 0, 0, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_RV_OBJECT_PILAR_2, BG_RV_OBJECT_TYPE_PILAR_2, 723.644287f, -284.493256f, 24.648525f, 3.141593f, 0, 0, 0, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_RV_OBJECT_PILAR_3, BG_RV_OBJECT_TYPE_PILAR_3, 763.611145f, -261.856750f, 25.909504f, 0.000000f, 0, 0, 0, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_RV_OBJECT_PILAR_4, BG_RV_OBJECT_TYPE_PILAR_4, 802.211609f, -284.493256f, 24.648525f, 0.000000f, 0, 0, 0, RESPAWN_IMMEDIATELY)
/*
    // Pilars Collision - Fixme: Use the collision pilars - should make u break LoS
        || !AddObject(BG_RV_OBJECT_PILAR_COLLISION_1, BG_RV_OBJECT_TYPE_PILAR_COLLISION_1, 763.632385f, -306.162384f, 30.639660f, 3.141593f, 0, 0, 0, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_RV_OBJECT_PILAR_COLLISION_2, BG_RV_OBJECT_TYPE_PILAR_COLLISION_2, 723.644287f, -284.493256f, 32.382710f, 0.000000f, 0, 0, 0, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_RV_OBJECT_PILAR_COLLISION_3, BG_RV_OBJECT_TYPE_PILAR_COLLISION_3, 763.611145f, -261.856750f, 30.639660f, 0.000000f, 0, 0, 0, RESPAWN_IMMEDIATELY)
        || !AddObject(BG_RV_OBJECT_PILAR_COLLISION_4, BG_RV_OBJECT_TYPE_PILAR_COLLISION_4, 802.211609f, -284.493256f, 32.382710f, 3.141593f, 0, 0, 0, RESPAWN_IMMEDIATELY)
*/
)
    {
        sLog.outErrorDb("BatteGroundRV: Failed to spawn some object!");
        return false;
    }
    return true;
}