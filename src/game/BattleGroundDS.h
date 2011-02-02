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
#ifndef __BATTLEGROUNDDS_H
#define __BATTLEGROUNDDS_H

class BattleGround;

enum BattlegroundDSData
{ 
    // These values are NOT blizzlike... need the correct data!
    BG_DS_WATERFALL_TIMER_MIN                    = 30000,
    BG_DS_WATERFALL_TIMER_MAX                    = 60000,
    BG_DS_WATERFALL_DURATION                     = 25000,
};

class BattleGroundDSScore : public BattleGroundScore
{
    public:
        BattleGroundDSScore() {};
        virtual ~BattleGroundDSScore() {};
        //TODO fix me
};

const float petTeleLocations[2][4] = 
{
    {1331.928223f, 817.040100f, 3.156383f, 3.163883f}, // Tube 1
    {1251.075684f, 764.763550f, 3.155599f, 0.031425f}  // Tube 2
};

class BattleGroundDS : public BattleGround
{
    friend class BattleGroundMgr;

    public:
        BattleGroundDS();
        ~BattleGroundDS();
        void Update(uint32 diff);

        /* inherited from BattlegroundClass */
        virtual void AddPlayer(Player *plr);
        virtual void StartingEventCloseDoors();
        virtual void StartingEventOpenDoors();

        void RemovePlayer(Player *plr, ObjectGuid guid);
        void HandleAreaTrigger(Player *Source, uint32 Trigger);
        bool SetupBattleGround();
        virtual void Reset();
        virtual void FillInitialWorldStates(WorldPacket &d, uint32& count);
        void HandleKillPlayer(Player* player, Player *killer);
        bool HandlePlayerUnderMap(Player * plr);
    private:
        uint32 m_uiKnockback;
        uint32 m_waterTimer;
        bool m_waterfallActive;
    protected:
        bool isWaterFallActive() { return m_waterfallActive; };
        void setWaterFallActive(bool active) { m_waterfallActive = active; };
        void setWaterFallTimer(uint32 timer) { m_waterTimer = timer; };
        uint32 getWaterFallTimer() { return m_waterTimer; };
};
#endif
