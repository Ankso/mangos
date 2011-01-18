UPDATE `creature_template` SET npcflag=1, `ScriptName` = 'npc_sa_vendor' WHERE entry in (29260,29262);
-- Seaforium source
DELETE FROM `creature_template` WHERE `entry` in (50000);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(50000, 0, 0, 0, 0, 0, 27462, 0, 27462, 0, 'Carga de Seforio', NULL, NULL, 0, 80, 80, 5000, 5000, 0, 0, 9730, 7, 7, 0, 1, 0.5, 0, 420, 630, 0, 157, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 336, 504, 126, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 94, 1, 0, 0, 0, 'npc_sa_bomb');
-- Doors
UPDATE `gameobject_template` SET `faction` = 14 WHERE `entry` in (192549,190727,190726,190723,190724,190722);
-- Seaforium barrels
DELETE FROM `gameobject_template` WHERE `entry` in (190753,194086);
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `IconName`, `castBarCaption`, `unk1`, `faction`, `flags`, `size`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `data0`, `data1`, `data2`, `data3`, `data4`, `data5`, `data6`, `data7`, `data8`, `data9`, `data10`, `data11`, `data12`, `data13`, `data14`, `data15`, `data16`, `data17`, `data18`, `data19`, `data20`, `data21`, `data22`, `data23`, `ScriptName`) VALUES
(190753, 22, 8582, 'Barril de seforio', '', '', '', 12, 0, 2, 0, 0, 0, 0, 0, 0, 52415, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(194086, 22, 8582, 'Barril de seforio', '', '', '', 29, 0, 2, 0, 0, 0, 0, 0, 0, 52415, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- Demolisher
UPDATE `creature_template` SET `npcflag` = '1', minhealth = '80000', maxhealth = '80000', `ScriptName` = 'npc_sa_demolisher' WHERE `entry` = '28781';
DELETE FROM `npc_spellclick_spells` WHERE npc_entry in (28781);
INSERT INTO `npc_spellclick_spells` VALUES ('28781', '60968', '0', '0', '0', '0');

-- AP Cannon
UPDATE `creature_template` SET `npcflag` = '1', unit_flags = 32768, type_flags = 131080, dynamicflags = 8, minhealth = '60000', maxhealth = '60000', `faction_A` = '35', `faction_H` = '35', `ScriptName` = 'npc_sa_cannon' WHERE entry = '27894';
DELETE FROM `npc_spellclick_spells` WHERE npc_entry in (27894);
INSERT INTO `npc_spellclick_spells` VALUES ('27894', '60968', '0', '0', '0', '0');

REPLACE INTO `mangos_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(20056,'The battle for Strand of the Ancients begins in 2 minutes.',NULL,NULL,NULL,NULL,NULL,'La batalla por Playa de los Ancestros comenzará en 2 minutos.','La batalla por Playa de los Ancestros comenzará en 2 minutos.',NULL),
(20057,'The battle for Strand of the Ancients begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,'La batalla por Playa de los Ancestros comenzará en 1 minuto.','La batalla por Playa de los Ancestros comenzará en 1 minuto.',NULL),
(20058,'The battle for Strand of the Ancients begins in 30 seconds. Prepare yourselves!.',NULL,NULL,NULL,NULL,NULL,'La batalla por Playa de los Ancestros comenzará en 30 segundos. ¡Preparaos!','La batalla por Playa de los Ancestros comenzará en 30 segundos. ¡Preparaos!',NULL),
(20059,'Let the battle for Strand of the Ancients begin!',NULL,NULL,NULL,NULL,NULL,'¡La batalla por Playa de los Ancestros ha comenzado!','¡La batalla por Playa de los Ancestros ha comenzado!',NULL),
(20060,'The %s is under attack!',NULL,NULL,NULL,NULL,NULL,'¡La %s está siendo atacada!','¡La %s está siendo atacada!',NULL),
(20061,'The %s was destroyed!',NULL,NULL,NULL,NULL,NULL,'¡La %s ha sido destruída!','¡La %s ha sido destruída!',NULL),
(20062,'Round 1 -  finished!',NULL,NULL,NULL,NULL,NULL,'¡La primera ronda ha finalizado!','¡La primera ronda ha finalizado!',NULL),
(20063,'The Alliance captured the titan portal!',NULL,NULL,NULL,NULL,NULL,'¡La Alianza ha capturado la Reliquia del Titán.!','¡La Alianza ha capturado la Reliquia del Titán.!',NULL),
(20064,'The Horde captured the titan portal!',NULL,NULL,NULL,NULL,NULL,'¡La Horda ha capturado la Reliquia del Titán.!','¡La Horda ha capturado la Reliquia del Titán.!',NULL),
(20065,'Round 2 of the Battle for the Strand of the Ancients begins in 1 minute.',NULL,NULL,NULL,NULL,NULL,'La segunda ronda de la batalla por la Playa de los Ancestros comienza en 1 minuto.','La segunda ronda de la batalla por la Playa de los Ancestros comienza en 1 minuto.',NULL),
(20066,'Round 2 begins in 30 seconds. Prepare yourselves!',NULL,NULL,NULL,NULL,NULL,'La segunda ronda comenzará en 30 segundos. ¡Preparaos!','La segunda ronda comenzará en 30 segundos. ¡Preparaos!',NULL),
(20067,'The chamber has been breached! The titan relic is vulnerable!',NULL,NULL,NULL,NULL,NULL,'¡Se ha abierto una brecha en la Cámara!¡La Reliquia del Titán es vulnerable!','¡Se ha abierto una brecha en la Cámara!¡La Reliquia del Titán es vulnerable!',NULL),
(20068,'The Alliance captured the South Graveyard!',NULL,NULL,NULL,NULL,NULL,'¡La Alianza ha capturado el cementerio Sur!','¡La Alianza ha capturado el cementerio Sur!',NULL),
(20069,'The Alliance captured the West Graveyard!',NULL,NULL,NULL,NULL,NULL,'¡La Alianza ha capturado el cementerio Occidental!','¡La Alianza ha capturado el cementerio Occidental!',NULL),
(20070,'The Alliance captured the East Graveyard!',NULL,NULL,NULL,NULL,NULL,'¡La Alianza ha capturado el cementerio Oriental!','¡La Alianza ha capturado el cementerio Oriental!',NULL),
(20071,'The Horde captured the South Graveyard!',NULL,NULL,NULL,NULL,NULL,'¡La Horda ha capturado el cementerio Sur!','¡La Horda ha capturado el cementerio Sur!',NULL),
(20072,'The Horde captured the West Graveyard!',NULL,NULL,NULL,NULL,NULL,'¡La Horda ha capturado el cementerio Occidental!','¡La Horda ha capturado el cementerio Occidental!',NULL),
(20073,'The Horde captured the East Graveyard!',NULL,NULL,NULL,NULL,NULL,'¡La Horda ha capturado el cementerio Oriental!','¡La Horda ha capturado el cementerio Oriental!',NULL),

UPDATE `gameobject_template` Set `ScriptName` = 'go_sa_def_portal' WHERE entry = 191575;