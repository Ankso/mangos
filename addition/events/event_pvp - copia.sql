-- ------------------------------------------------------------------------------
-- PvP event for private server ReinoDeLaOscuridad, www.reinodelaoscuridad.com --
--                        Created and designed by Ankso                        --
--                                                                             --
-- This event creates a custom area in Shattrat during the weekend. It spawns  --
-- some gameobjects and custom NPCs, two for each faction, and two neutral.    --
-- This NPCs will give quests, that allow you to change a custom item rewarded --
-- on battlegrounds during the weekend (expected also with duels) for PvP equip--
-- Please install it in a test server to see more. IT NEEDS CORE SUPPORT for   --
-- work properly. Please, take a look at my github's repo.                     --
--                                                                             --
-- The event has been made specially for low populated servers, like mine, to  --
-- foment the PvP. This event has been designed for a SPANISH server, so all   --
-- the quests/items/NPCs names and descriptions are in spanish. Please, give   --
-- credits and USE IT AT YOUR OWN RISK!                                        --
--                                                                             --
-- Enjoy!                                                                      --
-- ------------------------------------------------------------------------------

-- -----------------------------------------------------
-- Event duration: two days (weekend), repeat weekly. --
-- -----------------------------------------------------

DELETE FROM game_event WHERE entry = '100';
INSERT INTO game_event VALUES (100, '2010-08-28 00:30:00', '2020-12-30 23:59', 10080, 2880, 0, 'Evento JcJ de fin de semana de ReinoDeLaOscuridad.');

-- ------------------------------------------------------
-- GAMEOBJECTS - Used guids: from 20000000 to 20000053 --
-- ------------------------------------------------------

DELETE FROM gameobject WHERE guid = '20000001';
INSERT INTO gameobject VALUES ( 20000001, 173000, 1, 1,1,1848.68, -4422.01, 6.58957, 4.34074, 0, 0, 0.825575, -0.564293, 5000, 0, 1);
DELETE FROM gameobject WHERE guid = '20000002';
INSERT INTO gameobject VALUES ( 20000002, 173000, 1, 1,1,1852.85, -4421.09, 6.80942, 4.76485, 0, 0, 0.688317, -0.72541, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000003';
INSERT INTO gameobject VALUES ( 20000003, 180038, 1, 1,1,-1630.15, 112.403, -17.9481, 5.81414, 0, 0, 0.23238, -0.972625, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000004';
INSERT INTO gameobject VALUES ( 20000004, 185967, 530, 1,1,-1895.78, 5507.95, -12.4277, 3.72061, 0, 0, 0.958385, -0.28548, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000005';
INSERT INTO gameobject VALUES ( 20000005, 185967, 530, 1,1,-1907.66, 5501.45, -12.4275, 0.558507, 0, 0, 0.275638, 0.961261, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000006';
INSERT INTO gameobject VALUES ( 20000006, 185967, 530, 1,1,-1899.08, 5515.65, -12.4281, 3.69399, 0, 0, 0.962099, -0.2727, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000007';
INSERT INTO gameobject VALUES ( 20000007, 185967, 530, 1,1,-1910.89, 5508.5, -12.4279, 0.559946, 0, 0, 0.27633, 0.961063, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000008';
INSERT INTO gameobject VALUES ( 20000008, 185967, 530, 1,1,-1902.65, 5522.61, -12.4282, 3.61667, 0, 0, 0.97192, -0.235312, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000009';
INSERT INTO gameobject VALUES ( 20000009, 185967, 530, 1,1,-1914.99, 5516.19, -12.4281, 0.539788, 0, 0, 0.266629, 0.963799, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000010';
INSERT INTO gameobject VALUES ( 20000010, 180042, 530, 1,1,-1857.47, 5579.44, -12.4276, 4.27728, 0, 0, 0.843063, -0.537815, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000011';
INSERT INTO gameobject VALUES ( 20000011, 180031, 530, 1,1,-1989.69, 5512.99, -12.4276, 3.38738, 0, 0, 0.992458, -0.122584, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000012';
INSERT INTO gameobject VALUES ( 20000012, 180032, 530, 1,1,-1939.36, 5567.11, -12.4269, 3.16175, 0, 0, 0.999949, -0.0100809, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000013';
INSERT INTO gameobject VALUES ( 20000013, 180038, 530, 1,1,-1929.63, 5570, -12.4269, 2.37928, 0, 0, 0.928236, 0.371993, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000014';
INSERT INTO gameobject VALUES ( 20000014, 180037, 530, 1,1,-1931.31, 5572.84, -12.4279, 4.27539, 0, 0, 0.843571, -0.537018, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000015';
INSERT INTO gameobject VALUES ( 20000015, 112192, 530, 1,1,-1937.13, 5568.28, -12.428, 4.91855, 0, 0, 0.630595, -0.776112, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000016';
INSERT INTO gameobject VALUES ( 20000016, 112192, 530, 1,1,-1941.05, 5565.49, -12.4276, 5.84183, 0, 0, 0.218893, -0.975749, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000017';
INSERT INTO gameobject VALUES ( 20000017, 112192, 530, 1,1,-1966.69, 5529.14, -12.428, 1.39102, 0, 0, 0.640775, 0.767728, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000018';
INSERT INTO gameobject VALUES ( 20000018, 112192, 530, 1,1,-1970.04, 5531.92, -12.4282, 0.41254, 0, 0, 0.20481, 0.978802, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000019';
INSERT INTO gameobject VALUES ( 20000019, 112192, 530, 1,1,-1970.23, 5536.81, -12.4282, 6.00327, 0, 0, 0.139502, -0.990222, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000020';
INSERT INTO gameobject VALUES ( 20000020, 112192, 530, 1,1,-1966.57, 5539.66, -12.4282, 4.89433, 0, 0, 0.639946, -0.76842, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000021';
INSERT INTO gameobject VALUES ( 20000021, 112192, 530, 1,1,-1961.46, 5538.45, -12.4279, 4.02625, 0, 0, 0.903758, -0.428044, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000022';
INSERT INTO gameobject VALUES ( 20000022, 112192, 530, 1,1,-1959.24, 5533.67, -12.4282, 3.113, 0, 0, 0.999898, 0.0142941, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000023';
INSERT INTO gameobject VALUES ( 20000023, 112192, 530, 1,1,-1961.82, 5530.17, -12.4279, 2.2063, 0, 0, 0.892633, 0.450785, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000024';
INSERT INTO gameobject VALUES ( 20000024, 183433, 530, 1,1,-1964.93, 5534.36, -12.4279, 0.262696, 0, 0, 0.130971, 0.991386, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000025';
INSERT INTO gameobject VALUES ( 20000025, 173000, 530, 1,1,-1938.31, 5558.23, -12.4281, 2.19146, 0, 0, 0.889262, 0.457397, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000026';
INSERT INTO gameobject VALUES ( 20000026, 173000, 530, 1,1,-1930.97, 5563.04, -12.4281, 2.16637, 0, 0, 0.883455, 0.468516, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000027';
INSERT INTO gameobject VALUES ( 20000027, 173000, 530, 1,1,-1866.76, 5582.36, -12.4292, 0.440328, 0, 0, 0.21839, 0.975862, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000028';
INSERT INTO gameobject VALUES ( 20000028, 173000, 530, 1,1,-1862.84, 5573.28, -12.4292, 0.390149, 0, 0, 0.19384, 0.981033, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000029';
INSERT INTO gameobject VALUES ( 20000029, 173000, 530, 1,1,-1978.68, 5509.75, -12.4292, 3.13198, 0, 0, 0.999988, 0.0048086, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000030';
INSERT INTO gameobject VALUES ( 20000030, 173000, 530, 1,1,-1979.05, 5519.32, -12.4292, 3.16557, 0, 0, 0.999928, -0.0119901, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000031';
INSERT INTO gameobject VALUES ( 20000031, 112192, 530, 1,1,-1987.41, 5517.37, -12.4281, 5.5914, 0, 0, 0.339034, -0.940774, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000032';
INSERT INTO gameobject VALUES ( 20000032, 112192, 530, 1,1,-1987.32, 5512.2, -12.4281, 0.597324, 0, 0, 0.294242, 0.955731, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000033';
INSERT INTO gameobject VALUES ( 20000033, 180043, 530, 1,1,-1922.31, 5518.27, -12.4276, 3.63517, 0, 0, 0.969702, -0.24429, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000034';
INSERT INTO gameobject VALUES ( 20000034, 180043, 530, 1,1,-1934.75, 5515.99, -12.4276, 3.12623, 0, 0, 0.99997, 0.00768149, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000035';
INSERT INTO gameobject VALUES ( 20000035, 180043, 530, 1,1,-1945.04, 5520.89, -12.4276, 1.90808, 0, 0, 0.815758, 0.578394, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000036';
INSERT INTO gameobject VALUES ( 20000036, 180043, 530, 1,1,-1947.16, 5534.77, -12.4276, 1.35908, 0, 0, 0.628436, 0.777861, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000037';
INSERT INTO gameobject VALUES ( 20000037, 180043, 530, 1,1,-1941.64, 5546.77, -12.4276, 0.927899, 0, 0, 0.447484, 0.894292, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000038';
INSERT INTO gameobject VALUES ( 20000038, 180043, 530, 1,1,-1917.73, 5557.17, -12.4276, 0.0631753, 0, 0, 0.0315824, 0.999501, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000039';
INSERT INTO gameobject VALUES ( 20000039, 180043, 530, 1,1,-1893.99, 5546.97, -12.4276, 5.09051, 0, 0, 0.561617, -0.827398, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000040';
INSERT INTO gameobject VALUES ( 20000040, 180043, 530, 1,1,-1893.6, 5536.93, -12.4276, 4.46376, 0, 0, 0.789327, -0.613973, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000041';
INSERT INTO gameobject VALUES ( 20000041, 180043, 530, 1,1,-1900.24, 5528.76, -12.4276, 3.95247, 0, 0, 0.91893, -0.39442, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000042';
INSERT INTO gameobject VALUES ( 20000042, 180043, 530, 1,1,-1902.38, 5557.72, -12.4282, 4.37876, 0, 0, 0.814701, -0.579881, 25, 0, 1);DELETE FROM gameobject WHERE guid = '14531860';
DELETE FROM gameobject WHERE guid = '20000043';
INSERT INTO gameobject VALUES ( 20000043, 178666, 530, 1,1,-1876.84, 5582.19, -12.4279, 3.35037, 0, 0, 0.994556, -0.1042, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000044';
INSERT INTO gameobject VALUES ( 20000044, 178666, 530, 1,1,-1918.52, 5574.28, -12.4276, 3.33483, 0, 0, 0.995336, -0.0964697, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000045';
INSERT INTO gameobject VALUES ( 20000045, 178666, 530, 1,1,-1980.03, 5530.01, -12.4276, 4.06242, 0, 0, 0.895869, -0.444318, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000046';
INSERT INTO gameobject VALUES ( 20000046, 180037, 530, 1,1,-1974.94, 5535.64, -12.4278, 2.46439, 0, 0, 0.943221, 0.332166, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000047';
INSERT INTO gameobject VALUES ( 20000047, 180038, 530, 1,1,-1910.92, 5574.13, -12.4276, 3.37306, 0, 0, 0.993311, -0.115473, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000048';
INSERT INTO gameobject VALUES ( 20000048, 180037, 530, 1,1,-1868, 5587.35, -12.4282, 1.03741, 0, 0, 0.495757, 0.868461, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000049';
INSERT INTO gameobject VALUES ( 20000049, 180038, 530, 1,1,-1880.53, 5577.63, -12.4274, 0.63097, 0, 0, 0.310278, 0.950646, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000050';
INSERT INTO gameobject VALUES ( 20000050, 194597, 530, 1,1,-1976.35, 5509.51, -12.428, 6.12294, 0, 0, 0.0800381, -0.996792, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000051';
INSERT INTO gameobject VALUES ( 20000051, 194597, 530, 1,1,-1976.37, 5519.47, -12.428, 0.0224877, 0, 0, 0.0112436, 0.999937, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000052';
INSERT INTO gameobject VALUES ( 20000052, 194594, 530, 1,1,-1869.99, 5581.32, -12.428, 4.47818, 0, 0, 0.784881, -0.619646, 25, 0, 1);
DELETE FROM gameobject WHERE guid = '20000053';
INSERT INTO gameobject VALUES ( 20000053, 194594, 530, 1,1,-1865.23, 5571.25, -12.428, 3.76743, 0, 0, 0.951438, -0.307839, 25, 0, 1);

DELETE FROM `game_event_gameobject` WHERE `guid` = 20000001;
INSERT INTO `game_event_gameobject` VALUES ( 20000001, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000002;
INSERT INTO `game_event_gameobject` VALUES ( 20000002, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000003;
INSERT INTO `game_event_gameobject` VALUES ( 20000003, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000004;
INSERT INTO `game_event_gameobject` VALUES ( 20000004, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000005;
INSERT INTO `game_event_gameobject` VALUES ( 20000005, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000006;
INSERT INTO `game_event_gameobject` VALUES ( 20000006, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000007;
INSERT INTO `game_event_gameobject` VALUES ( 20000007, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000008;
INSERT INTO `game_event_gameobject` VALUES ( 20000008, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000009;
INSERT INTO `game_event_gameobject` VALUES ( 20000009, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000010;
INSERT INTO `game_event_gameobject` VALUES ( 20000010, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000011;
INSERT INTO `game_event_gameobject` VALUES ( 20000011, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000012;
INSERT INTO `game_event_gameobject` VALUES ( 20000012, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000013;
INSERT INTO `game_event_gameobject` VALUES ( 20000013, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000014;
INSERT INTO `game_event_gameobject` VALUES ( 20000014, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000015;
INSERT INTO `game_event_gameobject` VALUES ( 20000015, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000016;
INSERT INTO `game_event_gameobject` VALUES ( 20000016, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000017;
INSERT INTO `game_event_gameobject` VALUES ( 20000017, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000018;
INSERT INTO `game_event_gameobject` VALUES ( 20000018, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000019;
INSERT INTO `game_event_gameobject` VALUES ( 20000019, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000020;
INSERT INTO `game_event_gameobject` VALUES ( 20000020, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000021;
INSERT INTO `game_event_gameobject` VALUES ( 20000021, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000022;
INSERT INTO `game_event_gameobject` VALUES ( 20000022, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000023;
INSERT INTO `game_event_gameobject` VALUES ( 20000023, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000024;
INSERT INTO `game_event_gameobject` VALUES ( 20000024, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000025;
INSERT INTO `game_event_gameobject` VALUES ( 20000025, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000026;
INSERT INTO `game_event_gameobject` VALUES ( 20000026, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000027;
INSERT INTO `game_event_gameobject` VALUES ( 20000027, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000028;
INSERT INTO `game_event_gameobject` VALUES ( 20000028, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000029;
INSERT INTO `game_event_gameobject` VALUES ( 20000029, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000030;
INSERT INTO `game_event_gameobject` VALUES ( 20000030, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000031;
INSERT INTO `game_event_gameobject` VALUES ( 20000031, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000032;
INSERT INTO `game_event_gameobject` VALUES ( 20000032, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000033;
INSERT INTO `game_event_gameobject` VALUES ( 20000033, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000034;
INSERT INTO `game_event_gameobject` VALUES ( 20000034, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000035;
INSERT INTO `game_event_gameobject` VALUES ( 20000035, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000036;
INSERT INTO `game_event_gameobject` VALUES ( 20000036, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000037;
INSERT INTO `game_event_gameobject` VALUES ( 20000037, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000038;
INSERT INTO `game_event_gameobject` VALUES ( 20000038, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000039;
INSERT INTO `game_event_gameobject` VALUES ( 20000039, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000040;
INSERT INTO `game_event_gameobject` VALUES ( 20000040, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000041;
INSERT INTO `game_event_gameobject` VALUES ( 20000041, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000042;
INSERT INTO `game_event_gameobject` VALUES ( 20000042, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000043;
INSERT INTO `game_event_gameobject` VALUES ( 20000043, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000044;
INSERT INTO `game_event_gameobject` VALUES ( 20000044, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000045;
INSERT INTO `game_event_gameobject` VALUES ( 20000045, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000046;
INSERT INTO `game_event_gameobject` VALUES ( 20000046, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000047;
INSERT INTO `game_event_gameobject` VALUES ( 20000047, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000048;
INSERT INTO `game_event_gameobject` VALUES ( 20000048, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000049;
INSERT INTO `game_event_gameobject` VALUES ( 20000049, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000050;
INSERT INTO `game_event_gameobject` VALUES ( 20000050, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000051;
INSERT INTO `game_event_gameobject` VALUES ( 20000051, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000052;
INSERT INTO `game_event_gameobject` VALUES ( 20000052, 100);
DELETE FROM `game_event_gameobject` WHERE `guid` = 20000053;
INSERT INTO `game_event_gameobject` VALUES ( 20000053, 100);

-- -------------------------------------------------------------------------
-- NPCs - Used guids: from 9328304 to 9328317; IDs: from 100000 to 100010 --
-- -------------------------------------------------------------------------

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (100000, 0, 0, 0, 0, 0, 2097, 0, 0, 0, 'Billy', 'Vendedor de comida', '', 6234, 80, 80, 12250, 12251, 0, 0, 1361, 35, 35, 640, 1.11, 1.14286, 1, 0, 34, 51, 0, 13, 1, 1500, 1500, 1, 512, 0, 0, 0, 0, 0, 0, 27, 41, 10, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, '');

DELETE FROM `npc_vendor` WHERE (`entry`=100000);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES 
(100000, 19223, 0, 0, 0),
(100000, 19224, 0, 0, 0),
(100000, 19225, 0, 0, 0),
(100000, 19304, 0, 0, 0),
(100000, 19305, 0, 0, 0),
(100000, 19306, 0, 0, 0),
(100000, 33246, 0, 0, 0),
(100000, 33254, 0, 0, 0),
(100000, 44940, 0, 0, 0);

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (100001, 0, 0, 0, 0, 0, 25882, 0, 0, 0, 'John el Lento', 'Vendedor de bebidas', '', 0, 80, 80, 3256, 3256, 7981, 7981, 6588, 2007, 2007, 640, 1, 1.14286, 1, 0, 248, 372, 0, 93, 1, 2000, 2000, 8, 2, 0, 0, 0, 0, 0, 0, 198, 298, 74, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 203, 0, 0, '');

DELETE FROM `npc_vendor` WHERE (`entry`=100001);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES 
(100001, 33444, 0, 0, 0),
(100001, 33445, 0, 0, 0),
(100001, 35954, 0, 0, 0);

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (100002, 0, 0, 0, 0, 0, 26441, 0, 0, 0, 'Fiona Rompecorazones', 'Vendedora de bebidas para adultos', '', 0, 80, 80, 10635, 10635, 0, 0, 8235, 2007, 2007, 640, 1, 1.14286, 1, 0, 340, 510, 0, 127, 1, 2000, 2000, 1, 2, 0, 0, 0, 0, 0, 0, 272, 408, 102, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

DELETE FROM `npc_vendor` WHERE (`entry`=100002);
INSERT INTO `npc_vendor` (entry, item, maxcount, incrtime, ExtendedCost) VALUES 
(100002, 2593, 0, 0, 0),
(100002, 2595, 0, 0, 0),
(100002, 2596, 0, 0, 0),
(100002, 2723, 0, 0, 0),
(100002, 35948, 0, 0, 0),
(100002, 40035, 0, 0, 0),
(100002, 40036, 0, 0, 0),
(100002, 40042, 0, 0, 0),
(100002, 44616, 0, 0, 0),
(100002, 44617, 0, 0, 0),
(100002, 44618, 0, 0, 0);

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (100005, 0, 0, 0, 0, 0, 5770, 0, 0, 0, 'Dir\'Mahul', 'Intendente de Marcas de Guerrero', '', 0, 80, 80, 11828, 11828, 0, 0, 5245, 35, 29, 3, 1, 1.14286, 1, 0, 188, 282, 0, 70, 1, 2000, 2000, 1, 2, 0, 0, 0, 0, 0, 0, 150, 226, 56, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 677, 0, 0, '');

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (100006, 0, 0, 0, 0, 0, 9811, 0, 0, 0, 'Ana Quilacion', 'Intendente de Marcas de Guerrero', '', 0, 80, 80, 11828, 11828, 0, 0, 5245, 11, 35, 3, 1, 1.14286, 1, 0, 188, 282, 0, 70, 1, 2000, 2000, 1, 2, 0, 0, 0, 0, 0, 0, 150, 226, 56, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 677, 0, 0, '');

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (100007, 0, 0, 0, 0, 0, 4534, 0, 0, 0, 'Zul\'Omen', 'Intendente de Marcas de Guerrero', '', 0, 80, 80, 11828, 11828, 0, 0, 5245, 35, 29, 3, 1, 1.14286, 1, 0, 188, 282, 0, 70, 1, 2000, 2000, 1, 2, 0, 0, 0, 0, 0, 0, 150, 226, 56, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 677, 0, 0, '');

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (100008, 0, 0, 0, 0, 0, 5567, 0, 0, 0, 'Oficial Marui', 'Intendente de Marcas de Guerrero', '', 0, 80, 80, 13045, 13045, 0, 0, 5245, 11, 35, 3, 1, 1.14286, 1, 0, 188, 282, 0, 70, 1, 2000, 2000, 1, 2, 0, 0, 0, 0, 0, 0, 150, 226, 56, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 677, 0, 0, '');

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (100009, 0, 0, 0, 0, 0, 6797, 0, 0, 0, 'Franchesca', 'Intendente de Marcas de Guerrero', '', 0, 80, 80, 13056, 13056, 0, 0, 5245, 35, 35, 3, 1, 1.14286, 1, 0, 188, 282, 0, 70, 1, 2000, 2000, 1, 2, 0, 0, 0, 0, 0, 0, 150, 226, 56, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `modelid_3`, `modelid_4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (100010, 0, 0, 0, 0, 0, 6575, 0, 0, 0, 'Grom\'gul el Sabio', 'Intendente de Marcas de Guerrero', '', 0, 80, 80, 13056, 13056, 0, 0, 5245, 35, 35, 3, 1, 1.14286, 1, 0, 188, 282, 0, 70, 1, 2000, 2000, 1, 2, 0, 0, 0, 0, 0, 0, 150, 226, 56, 7, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

DELETE FROM creature WHERE guid = '9328304';
INSERT INTO creature VALUES (9328304,31144,530,1,1,0,0,-1903.54,5577.1,-12.4279,5.15386,25,5,0,9999982,0,0,0);
DELETE FROM creature WHERE guid = '9328305';
INSERT INTO creature VALUES (9328305,31144,530,1,1,0,0,-1887.03,5579.5,-12.4279,4.21553,25,5,0,9999982,0,0,0);
DELETE FROM creature WHERE guid = '9328306';
INSERT INTO creature VALUES (9328306,31144,530,1,1,0,0,-1895.58,5579.33,-12.4279,4.83272,25,5,0,9999982,0,0,0);
DELETE FROM creature WHERE guid = '9328309';
INSERT INTO creature VALUES (9328309,100000,530,1,1,0,0,-1977.46,5528.48,-12.428,5.71559,25,5,0,12250,0,0,0);
DELETE FROM creature WHERE guid = '9328312';
INSERT INTO creature VALUES (9328312,100005,530,1,1,0,677,-1986.19,5517.34,-12.4282,5.77424,25,5,0,11828,0,0,0);
DELETE FROM creature WHERE guid = '9328313';
INSERT INTO creature VALUES (9328313,100006,530,1,1,0,677,-1859.08,5583.15,-12.4269,3.93371,25,5,0,11828,0,0,0);
DELETE FROM creature WHERE guid = '9328314';
INSERT INTO creature VALUES (9328314,100002,530,1,1,0,0,-1917.6,5571.27,-12.4279,4.94455,25,5,0,10635,0,0,0);
DELETE FROM creature WHERE guid = '9328315';
INSERT INTO creature VALUES (9328315,100001,530,1,1,0,203,-1875.83,5579.56,-12.4277,4.99932,25,5,0,3256,7981,0,0);
DELETE FROM creature WHERE guid = '9328316';
INSERT INTO creature VALUES (9328316,100008,530,1,1,0,677,-1857.36,5579.5,-12.4278,3.6613,25,5,0,13045,0,0,0);
DELETE FROM creature WHERE guid = '9328317';
INSERT INTO creature VALUES (9328317,100007,530,1,1,0,677,-1986.03,5512.69,-12.4273,0.402848,25,5,0,11828,0,0,0);
DELETE FROM creature WHERE guid = '9328318';
INSERT INTO creature VALUES (9328318,100009,530,1,1,10045,0,-1936.87,5567.35,-12.4278,5.08528,25,5,0,13056,0,0,0);
DELETE FROM creature WHERE guid = '9328319';
INSERT INTO creature VALUES (9328319,100010,530,1,1,0,0,-1940.12,5564.88,-12.4278,5.7204,25,5,0,13056,0,0,0);


DELETE FROM game_event_creature WHERE guid = '9328304';
INSERT INTO game_event_creature VALUES ( 9328304, 100 );
DELETE FROM game_event_creature WHERE guid = '9328305';
INSERT INTO game_event_creature VALUES ( 9328305, 100 );
DELETE FROM game_event_creature WHERE guid = '9328306';
INSERT INTO game_event_creature VALUES ( 9328306, 100 );
DELETE FROM game_event_creature WHERE guid = '9328309';
INSERT INTO game_event_creature VALUES ( 9328309, 100 );
DELETE FROM game_event_creature WHERE guid = '9328312';
INSERT INTO game_event_creature VALUES ( 9328312, 100 );
DELETE FROM game_event_creature WHERE guid = '9328313';
INSERT INTO game_event_creature VALUES ( 9328313, 100 );
DELETE FROM game_event_creature WHERE guid = '9328314';
INSERT INTO game_event_creature VALUES ( 9328314, 100 );
DELETE FROM game_event_creature WHERE guid = '9328315';
INSERT INTO game_event_creature VALUES ( 9328315, 100 );
DELETE FROM game_event_creature WHERE guid = '9328316';
INSERT INTO game_event_creature VALUES ( 9328316, 100 );
DELETE FROM game_event_creature WHERE guid = '9328317';
INSERT INTO game_event_creature VALUES ( 9328317, 100 );
DELETE FROM game_event_creature WHERE guid = '9328318';
INSERT INTO game_event_creature VALUES ( 9328318, 100 );
DELETE FROM game_event_creature WHERE guid = '9328319';
INSERT INTO game_event_creature VALUES ( 9328319, 100 );

-- ---------------------------------------------------------------------------------------------------------
-- Custom Tokens (Alterac Valley and Isle of Conquest Mark of Honor modified - anyway not used since 3.3) --
-- ---------------------------------------------------------------------------------------------------------

REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `Flags2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `ExtraFlags`) VALUES (20560, 10, 0, -1, 'Marca de Guerrero', 33022, 5, 0, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2000, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Medalla obtenida por luchar en campos de batalla durante los eventos JcJ de los fines de semana.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0);
DELETE FROM `locales_item` WHERE `entry` = 20560;
REPLACE INTO `item_template` (`entry`, `class`, `subclass`, `unk0`, `name`, `displayid`, `Quality`, `Flags`, `Flags2`, `BuyCount`, `BuyPrice`, `SellPrice`, `InventoryType`, `AllowableClass`, `AllowableRace`, `ItemLevel`, `RequiredLevel`, `RequiredSkill`, `RequiredSkillRank`, `requiredspell`, `requiredhonorrank`, `RequiredCityRank`, `RequiredReputationFaction`, `RequiredReputationRank`, `maxcount`, `stackable`, `ContainerSlots`, `StatsCount`, `stat_type1`, `stat_value1`, `stat_type2`, `stat_value2`, `stat_type3`, `stat_value3`, `stat_type4`, `stat_value4`, `stat_type5`, `stat_value5`, `stat_type6`, `stat_value6`, `stat_type7`, `stat_value7`, `stat_type8`, `stat_value8`, `stat_type9`, `stat_value9`, `stat_type10`, `stat_value10`, `ScalingStatDistribution`, `ScalingStatValue`, `dmg_min1`, `dmg_max1`, `dmg_type1`, `dmg_min2`, `dmg_max2`, `dmg_type2`, `armor`, `holy_res`, `fire_res`, `nature_res`, `frost_res`, `shadow_res`, `arcane_res`, `delay`, `ammo_type`, `RangedModRange`, `spellid_1`, `spelltrigger_1`, `spellcharges_1`, `spellppmRate_1`, `spellcooldown_1`, `spellcategory_1`, `spellcategorycooldown_1`, `spellid_2`, `spelltrigger_2`, `spellcharges_2`, `spellppmRate_2`, `spellcooldown_2`, `spellcategory_2`, `spellcategorycooldown_2`, `spellid_3`, `spelltrigger_3`, `spellcharges_3`, `spellppmRate_3`, `spellcooldown_3`, `spellcategory_3`, `spellcategorycooldown_3`, `spellid_4`, `spelltrigger_4`, `spellcharges_4`, `spellppmRate_4`, `spellcooldown_4`, `spellcategory_4`, `spellcategorycooldown_4`, `spellid_5`, `spelltrigger_5`, `spellcharges_5`, `spellppmRate_5`, `spellcooldown_5`, `spellcategory_5`, `spellcategorycooldown_5`, `bonding`, `description`, `PageText`, `LanguageID`, `PageMaterial`, `startquest`, `lockid`, `Material`, `sheath`, `RandomProperty`, `RandomSuffix`, `block`, `itemset`, `MaxDurability`, `area`, `Map`, `BagFamily`, `TotemCategory`, `socketColor_1`, `socketContent_1`, `socketColor_2`, `socketContent_2`, `socketColor_3`, `socketContent_3`, `socketBonus`, `GemProperties`, `RequiredDisenchantSkill`, `ArmorDamageModifier`, `Duration`, `ItemLimitCategory`, `HolidayId`, `ScriptName`, `DisenchantID`, `FoodType`, `minMoneyLoot`, `maxMoneyLoot`, `ExtraFlags`) VALUES (47395, 10, 0, -1, 'Marca de luchador', 34869, 4, 0, 0, 1, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 1, 'Medalla obtenida por ganar duelos en Shattrat durante los eventos JcJ del fin de semana. Mucho menos valiosa que la Marca de Guerrero.', 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, '', 0, 0, 0, 0, 0);
DELETE FROM `locales_item` WHERE `entry` = 47395;

-- ----------------------------------------------------
-- Custom Quests - Used guids: from 100000 to 1000XX --
-- ----------------------------------------------------

-- NOTE: Dates are not relevant, they are from Quice log.

-- --------------------------------------------
-- ------------ HORDE - ARMORS ----------------
-- --------------------------------------------

-- 26/08/2010 16:02:38
DELETE FROM `creature_questrelation` WHERE `quest` = 100000;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100000;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100000;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100000);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100000;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100000;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100000);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100000, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Brujo Indomito', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42014, 41990, 41996, 42002, 42008, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:02:52
DELETE FROM `creature_questrelation` WHERE `quest` = 100001;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100001;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100001;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100001);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100001;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100001;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100001);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100001, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Brujo Odioso', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42015, 41991, 42001, 42003, 42009, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:03:07
DELETE FROM `creature_questrelation` WHERE `quest` = 100002;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100002;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100002;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100002);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100002;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100002;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100002);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100002, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Caballero de la Muerte Indomito', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40857, 40779, 40799, 40817, 40837, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:03:22
DELETE FROM `creature_questrelation` WHERE `quest` = 100003;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100003;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100003;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100003);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100003;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100003;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100003);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100003, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Caballero de la Muerte Odioso', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40781, 40779, 40803, 40820, 40841, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:03:38
DELETE FROM `creature_questrelation` WHERE `quest` = 100004;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100004;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100004;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100004);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100004;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100004;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100004);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100004, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Cazador Indomito', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41214, 41084, 41140, 41154, 41202, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:03:52
DELETE FROM `creature_questrelation` WHERE `quest` = 100005;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100005;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100005;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100005);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100005;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100005;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100005);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100005, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Cazador Odioso', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 130 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41215, 41085, 41141, 41155, 41203, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:04:08
DELETE FROM `creature_questrelation` WHERE `quest` = 100006;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100006;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100006;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100006);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100006;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100006;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100006);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100006, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Chaman Indomito (1)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40986, 40998, 41010, 41023, 41024, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:04:25
DELETE FROM `creature_questrelation` WHERE `quest` = 100007;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100007;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100007;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100007);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100007;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100007;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100007);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100007, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Chaman Indomito (2)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40987, 41004, 41016, 41030, 41041, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:04:41
DELETE FROM `creature_questrelation` WHERE `quest` = 100008;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100008;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100008;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100008);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100008;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100008;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100008);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100008, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Chaman Indomito (3)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41078, 41134, 41148, 41160, 41208, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:04:56
DELETE FROM `creature_questrelation` WHERE `quest` = 100009;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100009;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100009;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100009);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100009;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100009;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100009);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100009, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Chaman Odioso (1)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahull quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40988, 40999, 41011, 41025, 41036, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:05:10
DELETE FROM `creature_questrelation` WHERE `quest` = 100010;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100010;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100010;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100010);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100010;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100010;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100010);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100010, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Chaman Odioso (2)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40989, 41005, 41017, 41031, 41042, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:05:25
DELETE FROM `creature_questrelation` WHERE `quest` = 100011;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100011;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100011;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100011);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100011;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100011;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100011);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100011, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Chaman Odioso (3)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41079, 41135, 41149, 41162, 41209, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:05:37
DELETE FROM `creature_questrelation` WHERE `quest` = 100012;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100012;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100012;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100012);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100012;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100012;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100012);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100012, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Druida Indomito (1)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41278, 41290, 41301, 41313, 41324, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:05:53
DELETE FROM `creature_questrelation` WHERE `quest` = 100013;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100013;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100013;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100013);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100013;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100013;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100013);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100013, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Druida Indomito (2)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41268, 41269, 41270, 41271, 41272, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:06:05
DELETE FROM `creature_questrelation` WHERE `quest` = 100014;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100014;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100014;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100014);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100014;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100014;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100014);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100014, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Druida Indomito (3)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41658, 41664, 41675, 41712, 41770, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:06:19
DELETE FROM `creature_questrelation` WHERE `quest` = 100015;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100015;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100015;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100015);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100015;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100015;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100015);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100015, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Druida Odioso (1)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41279, 41291, 41302, 41314, 41325, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:06:34
DELETE FROM `creature_questrelation` WHERE `quest` = 100016;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100016;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100016;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100016);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100016;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100016;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100016);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100016, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Druida Odioso (2)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41273, 41284, 41296, 41308, 41319, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:06:48
DELETE FROM `creature_questrelation` WHERE `quest` = 100017;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100017;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100017;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100017);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100017;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100017;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100017);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100017, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Druida Odioso (3)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41659, 41665, 41676, 41713, 41771, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:07:05
DELETE FROM `creature_questrelation` WHERE `quest` = 100018;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100018;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100018;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100018);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100018;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100018;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100018);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100018, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Guerrero Indomito', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40778, 40797, 40816, 40836, 40856, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:07:19
DELETE FROM `creature_questrelation` WHERE `quest` = 100019;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100019;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100019;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100019);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100019;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100019;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100019);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100019, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Guerrero Odioso', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40783, 40801, 40819, 40840, 40859, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:07:37
DELETE FROM `creature_questrelation` WHERE `quest` = 100020;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100020;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100020;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100020);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100020;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100020;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100020);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100020, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Mago Indomito', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41943, 41949, 41956, 41962, 41968, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:07:56
DELETE FROM `creature_questrelation` WHERE `quest` = 100021;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100021;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100021;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100021);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100021;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100021;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100021);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100021, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Mago Odioso', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41944, 41950, 41957, 41963, 41969, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:08:08
DELETE FROM `creature_questrelation` WHERE `quest` = 100022;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100022;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100022;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100022);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100022;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100022;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100022);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100022, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Paladin Indomito (1)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40898, 40918, 40930, 40936, 40960, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:08:18
DELETE FROM `creature_questrelation` WHERE `quest` = 100023;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100023;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100023;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100023);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100023;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100023;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100023);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100023, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Paladin Indomito (2)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40780, 40798, 40818, 40838, 40858, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:08:37
DELETE FROM `creature_questrelation` WHERE `quest` = 100024;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100024;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100024;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100024);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100024;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100024;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100024);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100024, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Paladin Odioso (1)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40904, 40925, 40931, 40937, 40961, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:08:48
DELETE FROM `creature_questrelation` WHERE `quest` = 100025;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100025;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100025;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100025);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100025;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100025;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100025);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100025, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Paladin Odioso (2)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40782, 40802, 40821, 40842, 40861, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:09:00
DELETE FROM `creature_questrelation` WHERE `quest` = 100026;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100026;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100026;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100026);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100026;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100026;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100026);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100026, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Picaro Indomito', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41643, 41644, 41645, 41646, 41647, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:09:12
DELETE FROM `creature_questrelation` WHERE `quest` = 100027;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100027;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100027;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100027);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100027;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100027;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100027);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100027, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Picaro Odioso', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41648, 41653, 41670, 41681, 41765, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:09:29
DELETE FROM `creature_questrelation` WHERE `quest` = 100028;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100028;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100028;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100028);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100028;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100028;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100028);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100028, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Sacerdote Indomito (1)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41847, 41848, 41849, 41850, 41851, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:09:39
DELETE FROM `creature_questrelation` WHERE `quest` = 100029;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100029;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100029;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100029);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100029;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100029;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100029);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100029, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Sacerdote Indomito (2)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41912, 41918, 41924, 41930, 41937, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:09:54
DELETE FROM `creature_questrelation` WHERE `quest` = 100030;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100030;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100030;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100030);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100030;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100030;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100030);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100030, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Sacerdote Odioso (1)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41852, 41857, 41862, 41867, 41872, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:10:12
DELETE FROM `creature_questrelation` WHERE `quest` = 100031;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100031;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100031;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100005, 100031);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100005;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100031;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100031;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100005, 100031);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100005;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100031, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Sacerdote Odioso (2)', 'Que estas haciendo aqui, $n? Deberias estar luchando por tu pequeño lugar en este mundo! Ve ahora y demuestrame de lo que eres capaz!$B$B<Dir\'Mahul se da la vuelta un momento>$B$BAun sigues ahi? A que estas esperando?!', 'Dir\'Mahul quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41913, 41919, 41925, 41931, 41938, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- -----------------------------------------------------
-- --------------- ALLIANCE - ARMORS -------------------
-- -----------------------------------------------------

-- 26/08/2010 16:02:38
DELETE FROM `creature_questrelation` WHERE `quest` = 100032;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100032;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100032;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100032);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100032;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100032;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100032);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100032, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Brujo Indomito', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42014, 41990, 41996, 42002, 42008, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:02:52
DELETE FROM `creature_questrelation` WHERE `quest` = 100033;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100033;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100033;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100033);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100033;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100033;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100033);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100033, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Brujo Odioso', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que al menos lo has intentado. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42015, 41991, 42001, 42003, 42009, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:03:07
DELETE FROM `creature_questrelation` WHERE `quest` = 100034;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100034;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100034;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100034);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100034;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100034;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100034);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100034, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Caballero de la Muerte Indomito', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40857, 40779, 40799, 40817, 40837, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:03:22
DELETE FROM `creature_questrelation` WHERE `quest` = 100035;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100035;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100035;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100035);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100035;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100035;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100035);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100035, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Caballero de la Muerte Odioso', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40857, 40779, 40803, 40820, 40841, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:03:38
DELETE FROM `creature_questrelation` WHERE `quest` = 100036;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100036;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100036;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100036);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100036;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100036;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100036);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100036, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Cazador Indomito', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41214, 41084, 41140, 41154, 41202, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:03:52
DELETE FROM `creature_questrelation` WHERE `quest` = 100037;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100037;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100037;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100037);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100037;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100037;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100037);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100037, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Cazador Odioso', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Dir\'Mahul quiere que le entregues 130 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41215, 41085, 41141, 41155, 41203, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:04:08
DELETE FROM `creature_questrelation` WHERE `quest` = 100038;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100038;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100038;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100038);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100038;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100038;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100038);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100038, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Chaman Indomito (1)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40986, 40998, 41010, 41023, 41024, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:04:25
DELETE FROM `creature_questrelation` WHERE `quest` = 100039;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100039;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100039;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100039);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100039;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100039;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100039);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100039, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Chaman Indomito (2)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40987, 41004, 41016, 41030, 41041, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:04:41
DELETE FROM `creature_questrelation` WHERE `quest` = 100040;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100040;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100040;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100040);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100040;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100040;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100040);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100040, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Chaman Indomito (3)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41078, 41134, 41148, 41160, 41208, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:04:56
DELETE FROM `creature_questrelation` WHERE `quest` = 100041;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100041;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100041;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100041);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100041;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100041;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100041);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100041, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Chaman Odioso (1)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Dir\'Mahull quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40988, 40999, 41011, 41025, 41036, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:05:10
DELETE FROM `creature_questrelation` WHERE `quest` = 100042;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100042;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100042;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100042);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100042;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100042;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100042);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100042, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Chaman Odioso (2)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40989, 41005, 41017, 41031, 41042, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:05:25
DELETE FROM `creature_questrelation` WHERE `quest` = 100043;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100043;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100043;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100043);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100043;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100043;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100043);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100043, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Chaman Odioso (3)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41079, 41135, 41149, 41162, 41209, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:05:37
DELETE FROM `creature_questrelation` WHERE `quest` = 100044;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100044;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100044;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100044);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100044;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100044;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100044);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100044, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Druida Indomito (1)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41278, 41290, 41301, 41313, 41324, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:05:53
DELETE FROM `creature_questrelation` WHERE `quest` = 100045;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100045;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100045;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100045);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100045;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100045;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100045);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100045, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Druida Indomito (2)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41268, 41269, 41270, 41271, 41272, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:06:05
DELETE FROM `creature_questrelation` WHERE `quest` = 100046;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100046;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100046;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100046);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100046;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100046;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100046);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100046, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Druida Indomito (3)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41658, 41664, 41675, 41712, 41770, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:06:19
DELETE FROM `creature_questrelation` WHERE `quest` = 100047;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100047;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100047;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100047);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100047;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100047;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100047);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100047, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Druida Odioso (1)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41279, 41291, 41302, 41314, 41325, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:06:34
DELETE FROM `creature_questrelation` WHERE `quest` = 100048;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100048;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100048;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100048);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100048;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100048;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100048);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100048, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Druida Odioso (2)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41273, 41284, 41296, 41308, 41319, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:06:48
DELETE FROM `creature_questrelation` WHERE `quest` = 100049;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100049;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100049;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100049);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100049;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100049;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100049);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100049, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Druida Odioso (3)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41659, 41665, 41676, 41713, 41771, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:07:05
DELETE FROM `creature_questrelation` WHERE `quest` = 100050;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100050;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100050;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100050);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100050;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100050;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100050);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100050, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Guerrero Indomito', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40778, 40797, 40816, 40836, 40856, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:07:19
DELETE FROM `creature_questrelation` WHERE `quest` = 100051;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100051;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100051;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100051);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100051;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100051;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100051);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100051, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Guerrero Odioso', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40783, 40801, 40819, 40840, 40859, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:07:37
DELETE FROM `creature_questrelation` WHERE `quest` = 100052;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100052;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100052;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100052);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100052;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100052;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100052);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100052, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Mago Indomito', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41943, 41949, 41956, 41962, 41968, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:07:56
DELETE FROM `creature_questrelation` WHERE `quest` = 100053;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100053;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100053;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100053);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100053;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100053;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100053);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100053, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Mago Odioso', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41944, 41950, 41957, 41963, 41969, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:08:08
DELETE FROM `creature_questrelation` WHERE `quest` = 100054;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100054;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100054;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100054);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100054;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100054;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100054);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100054, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Paladin Indomito (1)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40898, 40918, 40930, 40936, 40960, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:08:18
DELETE FROM `creature_questrelation` WHERE `quest` = 100055;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100055;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100055;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100055);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100055;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100055;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100055);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100055, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Paladin Indomito (2)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40780, 40798, 40818, 40838, 40858, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:08:37
DELETE FROM `creature_questrelation` WHERE `quest` = 100056;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100056;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100056;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100056);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100056;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100056;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100056);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100056, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Paladin Odioso (1)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40904, 40925, 40931, 40937, 40961, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:08:48
DELETE FROM `creature_questrelation` WHERE `quest` = 100057;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100057;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100057;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100057);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100057;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100057;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100057);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100057, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Paladin Odioso (2)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40782, 40802, 40821, 40842, 40861, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:09:00
DELETE FROM `creature_questrelation` WHERE `quest` = 100058;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100058;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100058;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100058);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100058;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100058;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100058);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100058, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Picaro Indomito', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41643, 41644, 41645, 41646, 41647, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:09:12
DELETE FROM `creature_questrelation` WHERE `quest` = 100059;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100059;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100059;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100059);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100059;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100059;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100059);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100059, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Picaro Odioso', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41648, 41653, 41670, 41681, 41765, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:09:29
DELETE FROM `creature_questrelation` WHERE `quest` = 100060;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100060;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100060;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100060);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100060;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100060;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100060);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100060, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Sacerdote Indomito (1)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41847, 41848, 41849, 41850, 41851, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:09:39
DELETE FROM `creature_questrelation` WHERE `quest` = 100061;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100061;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100061;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100061);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100061;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100061;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100061);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100061, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Sacerdote Indomito (2)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 30 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41912, 41918, 41924, 41930, 41937, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:09:54
DELETE FROM `creature_questrelation` WHERE `quest` = 100062;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100062;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100062;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100062);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100062;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100062;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100062);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100062, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Sacerdote Odioso (1)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41852, 41857, 41862, 41867, 41872, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 16:10:12
DELETE FROM `creature_questrelation` WHERE `quest` = 100063;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100063;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100063;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100006, 100063);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100006;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100063;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100063;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100006, 100063);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100006;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100063, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La recompensa del Sacerdote Odioso (2)', 'Eh, tu! Si, tu, $n, ven aqui!$BSupongo que sabras que estamos en guerra, peleandonos por recursos y emplazamientos clave con la Horda. Pues necesitamos toda la ayuda posible! Y esto no es una peticion, es una obligacion!$BAsi que demuestra de lo que eres capaz... si sobrevives.', 'Ana Quilacion quiere que le entregues 70 Marcas de Guerrero de los eventos JcJ de los fines de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun! Y por cierto... gracias.', 'Veo que por ahora aun sigues con vida. Veamos... Que tienes para mi hoy?', '', 'Marca de Guerrero', '', '', '', '', 20560,0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41913, 41919, 41925, 41931, 41938, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------
-- -------- WEAPONS/TRINKETS ETC --------------
-- --------------------------------------------

-- 26/08/2010 18:37:52
DELETE FROM `creature_questrelation` WHERE `quest` = 100064;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100064;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100064;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100007, 100064);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100007;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100064;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100064;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100007, 100064);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100007;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100064, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Armas... Muchas armas de una mano! (Cuerpo a cuerpo)', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos gnomos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 200 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42242, 42208, 42275, 42285, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 18:38:14
DELETE FROM `creature_questrelation` WHERE `quest` = 100065;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100065;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100065;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100008, 100065);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100008;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100065;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100065;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100008, 100065);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100008;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100065, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Armas... Muchas armas de una mano! (Cuerpo a cuerpo)', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos orcos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 200 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42242, 42208, 42275, 42285, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 18:38:24
DELETE FROM `creature_questrelation` WHERE `quest` = 100066;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100066;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100066;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100007, 100066);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100007;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100066;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100066;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100007, 100066);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100007;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100066, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Armas... Muchas armas de una mano! (Hechizos)', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos gnomos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 200 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42346, 42352, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 18:38:30
DELETE FROM `creature_questrelation` WHERE `quest` = 100067;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100067;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100067;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100008, 100067);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100008;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100067;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100067;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100008, 100067);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100008;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100067, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Armas... Muchas armas de una mano! (Hechizos)', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos orcos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 200 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42346, 42352, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 18:38:38
DELETE FROM `creature_questrelation` WHERE `quest` = 100068;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100068;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100068;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100007, 100068);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100007;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100068;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100068;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100007, 100068);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100007;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100068, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Armas... Muchas armas de dos manos!', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos gnomos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 400 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42317, 42322, 42332, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 18:38:47
DELETE FROM `creature_questrelation` WHERE `quest` = 100069;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100069;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100069;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100008, 100069);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100008;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100069;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100069;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100008, 100069);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100008;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100069, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Armas... Muchas armas dos manos!', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos orcos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 400 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42317, 42322, 42332, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 18:38:54
DELETE FROM `creature_questrelation` WHERE `quest` = 100070;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100070;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100070;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100007, 100070);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100007;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100070;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100070;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100007, 100070);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100007;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100070, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bastones... Muchos bastones!', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos gnomos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 400 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44419, 44420, 42384, 42362, 42390, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 18:39:01
DELETE FROM `creature_questrelation` WHERE `quest` = 100071;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100071;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100071;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100008, 100071);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100008;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100071;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100071;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100008, 100071);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100008;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100071, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bastones... Muchos bastones!', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos orcos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 400 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44419, 44420, 42384, 42362, 42390, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 18:39:07
DELETE FROM `creature_questrelation` WHERE `quest` = 100072;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100072;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100072;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100007, 100072);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100007;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100072;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100072;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100007, 100072);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100007;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100072, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escudos... Muchos escudos!', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos gnomos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 200 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42570, 42559, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 18:39:15
DELETE FROM `creature_questrelation` WHERE `quest` = 100073;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100073;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100073;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100008, 100073);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100008;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100073;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100073;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100008, 100073);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100008;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100073, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Escudos... Muchos escudos!', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos orcos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 200 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42570, 42559, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 18:39:21
DELETE FROM `creature_questrelation` WHERE `quest` = 100074;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100074;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100074;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100007, 100074);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100007;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100074;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100074;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100007, 100074);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100007;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100074, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Abalorios e idolos.', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos gnomos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 200 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42128, 42129, 42132, 42588, 42578, 42583, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 18:39:28
DELETE FROM `creature_questrelation` WHERE `quest` = 100075;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100075;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100075;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100008, 100075);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100008;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100075;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100075;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100008, 100075);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100008;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100075, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Abalorios e idolos', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos orcos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 200 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42128, 42129, 42132, 42588, 42578, 42583, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 18:39:34
DELETE FROM `creature_questrelation` WHERE `quest` = 100076;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100076;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100076;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100007, 100076);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100007;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100076;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100076;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100007, 100076);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100007;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100076, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Totems, sigilos y tratados.', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos gnomos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 200 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42607, 42620, 42852, 42614, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 26/08/2010 18:39:40
DELETE FROM `creature_questrelation` WHERE `quest` = 100077;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100077;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100077;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100008, 100077);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100008;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100077;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100077;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100008, 100077);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100008;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100077, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Totems, sigilos y tratados.', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos orcos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 200 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42607, 42620, 42852, 42614, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- -----------------------------------------------------
-- NEUTRAL QUESTS (Mounts, companions, rare items...) --
-- -----------------------------------------------------

-- 27/08/2010 0:53:15
DELETE FROM `creature_questrelation` WHERE `quest` = 100078;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100078;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100078;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100009, 100078);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100009;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100078;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100078;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100009, 100078);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100009;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100078, 2, 0, 0, 80, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Si, es un mamut!', 'Hola $n!$B$BVeo que estas interesado en mis bienes, aunque solo se los doy a los guerreros mas valientes de la region.$B$BCrees que puedes optar a ellos? Demuestralo!', 'Para conseguir el mamut adecuado a tu raza, debes conseguir al menos 2000 Marcas de guerrero. Tu puedes!', 'Enhorabuena, disfruta de tu recompensa!', 'Oh, vaya! Ya estas aqui? Enseñame que has conseguido', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44235, 44234, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 27/08/2010 0:53:21
DELETE FROM `creature_questrelation` WHERE `quest` = 100079;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100079;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100079;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100009, 100079);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100009;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100079;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100079;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100009, 100079);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100009;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100079, 2, 0, 0, 80, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Te gustan las monturas?', 'Hola $n!$B$BVeo que estas interesado en uno de mis bienes, aunque solo se los doy a los guerreros mas valientes de la region.$B$BCrees que puedes optar a ellos? Demuestralo!', 'Franchesca opina que 1000 Marcas de guerrero es un precio razonable a cambio de alguna de estas extrañas monturas.', 'Enhorabuena, disfruta de tu recompensa!', 'Oh, vaya! Ya estas aqui? Enseñame que has conseguido', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49290, 37828, 23720, 49282, 49284, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 27/08/2010 0:34:30
DELETE FROM `creature_questrelation` WHERE `quest` = 100080;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100080;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100080;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100010, 100080);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100010;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100080;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100080;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100010, 100080);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100010;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100080, 2, 0, 0, 80, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Objetos curiosos y utiles... o no.', 'Mmmm... Hola, $n$B$BTu interes por mis bienes no me sorprende... seguramente, no los encontraras en ningun vendedor en todo Kalimdor.$B$BCrees que puedes optar a ellos? Demuestralo!', 'Grom\'Gul pide como minimo 750 Marcas de guerrero por cualquiera de estos objetos.', 'Disfruta de tu recompensa... mientras puedas.$B$B<Grom\'Gul suelta una sonora carcajada>', 'Oh, vaya! Ya estas aqui? Enseñame que has conseguido', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46349, 51809, 45991, 38268, 34484, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 27/08/2010 0:53:35
DELETE FROM `creature_questrelation` WHERE `quest` = 100081;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100081;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100081;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100010, 100081);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100010;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100081;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100081;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100010, 100081);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100010;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100081, 2, 0, 0, 80, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Si te sientes solo...', 'Mmmm... Hola, $n$B$BTu interes por mis bienes no me sorprende... seguramente, no los encontraras en ningun vendedor en todo Kalimdor.$B$BCrees que puedes optar a ellos? Demuestralo!', 'Grom\'Gul pide como minimo 500 Marcas de guerrero por cualquiera de estos compañeros.', 'Disfruta de tu recompensa... mientras puedas.$B$B<Grom\'Gul suelta una sonora carcajada>', 'Oh, vaya! Ya estas aqui? Enseñame que has conseguido', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44819, 20371, 27445, 33993, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 27/08/2010 16:58:23
DELETE FROM `creature_questrelation` WHERE `quest` = 100082;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100082;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100082;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100010, 100082);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100010;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100082;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100082;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100010, 100082);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100010;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100082, 2, 0, 0, 80, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Intercambio monetario', 'Mmmm... Hola, $n$B$BSi quieres te puedo cambiar algunos emblemas a cambio de Marcas de guerrero.$B$BQue me dices?', 'Entrega 10 Marcas de Guerrero a Grom\'Gul', 'Ha sido un placer hacer tratos contigo...$B$B<Grom\'Gul suelta una sonora carcajada>', '', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40753, 40752, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 27/08/2010 16:58:17
DELETE FROM `creature_questrelation` WHERE `quest` = 100083;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100083;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100083;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100010, 100083);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100010;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100083;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100083;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100010, 100083);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100010;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100083, 2, 0, 0, 80, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Intercambio monetario (2)', 'Mmmm... Hola, $n$B$BSi necesitas cambiar tus Marcas de luchador por Marcas de Guerrero, que son con las que de verdad se consiguen cosas, has acudido a la persona indicada.$B$BBueno, Que tienes por aqui?', 'Entrega 10 Marcas de luchador a Grom\'Gul.', 'Ha sido un placer hacer tratos contigo...$B$B<Grom\'Gul suelta una sonora carcajada>', '', '', 'Marca de luchador', '', '', '', '', 47395, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20560, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 27/08/2010 17:37:18
DELETE FROM `creature_questrelation` WHERE `quest` = 100084;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100084;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100084;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100008, 100084);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100008;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100084;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100084;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100008, 100084);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100008;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100084, 2, 0, 0, 80, 80, 0, 1101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Armas a distancia.', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos orcos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 400 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42490, 42495, 42485, 42450, 42502, 42519, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- 27/08/2010 17:37:24
DELETE FROM `creature_questrelation` WHERE `quest` = 100085;
DELETE FROM `gameobject_questrelation` WHERE `quest` = 100085;
UPDATE `item_template` SET `StartQuest`=0 WHERE `StartQuest` = 100085;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (100007, 100085);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry` = 100007;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 100085;
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 100085;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (100007, 100085);
UPDATE `creature_template` SET `npcflag`=`npcflag`|2 WHERE `entry`=100007;
REPLACE INTO `quest_template` (`entry`, `Method`, `ZoneOrSort`, `SkillOrClass`, `MinLevel`, `QuestLevel`, `Type`, `RequiredRaces`, `RequiredSkillValue`, `RepObjectiveFaction`, `RepObjectiveValue`, `RequiredMinRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepFaction`, `RequiredMaxRepValue`, `SuggestedPlayers`, `LimitTime`, `QuestFlags`, `SpecialFlags`, `CharTitleId`, `PlayersSlain`, `BonusTalents`, `PrevQuestId`, `NextQuestId`, `ExclusiveGroup`, `NextQuestInChain`, `RewXPId`, `SrcItemId`, `SrcItemCount`, `SrcSpell`, `Title`, `Details`, `Objectives`, `OfferRewardText`, `RequestItemsText`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `ReqItemId1`, `ReqItemId2`, `ReqItemId3`, `ReqItemId4`, `ReqItemId5`, `ReqItemId6`, `ReqItemCount1`, `ReqItemCount2`, `ReqItemCount3`, `ReqItemCount4`, `ReqItemCount5`, `ReqItemCount6`, `ReqSourceId1`, `ReqSourceId2`, `ReqSourceId3`, `ReqSourceId4`, `ReqSourceCount1`, `ReqSourceCount2`, `ReqSourceCount3`, `ReqSourceCount4`, `ReqCreatureOrGOId1`, `ReqCreatureOrGOId2`, `ReqCreatureOrGOId3`, `ReqCreatureOrGOId4`, `ReqCreatureOrGOCount1`, `ReqCreatureOrGOCount2`, `ReqCreatureOrGOCount3`, `ReqCreatureOrGOCount4`, `ReqSpellCast1`, `ReqSpellCast2`, `ReqSpellCast3`, `ReqSpellCast4`, `RewChoiceItemId1`, `RewChoiceItemId2`, `RewChoiceItemId3`, `RewChoiceItemId4`, `RewChoiceItemId5`, `RewChoiceItemId6`, `RewChoiceItemCount1`, `RewChoiceItemCount2`, `RewChoiceItemCount3`, `RewChoiceItemCount4`, `RewChoiceItemCount5`, `RewChoiceItemCount6`, `RewItemId1`, `RewItemId2`, `RewItemId3`, `RewItemId4`, `RewItemCount1`, `RewItemCount2`, `RewItemCount3`, `RewItemCount4`, `RewRepFaction1`, `RewRepFaction2`, `RewRepFaction3`, `RewRepFaction4`, `RewRepFaction5`, `RewRepValueId1`, `RewRepValueId2`, `RewRepValueId3`, `RewRepValueId4`, `RewRepValueId5`, `RewRepValue1`, `RewRepValue2`, `RewRepValue3`, `RewRepValue4`, `RewRepValue5`, `RewHonorAddition`, `RewHonorMultiplier`, `RewOrReqMoney`, `RewMoneyMaxLevel`, `RewSpell`, `RewSpellCast`, `RewMailTemplateId`, `RewMailDelaySecs`, `PointMapId`, `PointX`, `PointY`, `PointOpt`, `DetailsEmote1`, `DetailsEmote2`, `DetailsEmote3`, `DetailsEmote4`, `DetailsEmoteDelay1`, `DetailsEmoteDelay2`, `DetailsEmoteDelay3`, `DetailsEmoteDelay4`, `IncompleteEmote`, `CompleteEmote`, `OfferRewardEmote1`, `OfferRewardEmote2`, `OfferRewardEmote3`, `OfferRewardEmote4`, `OfferRewardEmoteDelay1`, `OfferRewardEmoteDelay2`, `OfferRewardEmoteDelay3`, `OfferRewardEmoteDelay4`, `StartScript`, `CompleteScript`) VALUES (100085, 2, 0, 0, 80, 80, 0, 690, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32768, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Armas a distancia.', 'Te veo mala cara, $n, quizas necesites ir a matar a unos cuantos gnomos... eso siempre sube la moral.$B$BAdemas, te podria proporcionar una amplia variedad de armas. Pero primero demuestra lo que vales.', 'Consigue al menos 400 Marcas de Guerrero en los campos de batalla luchando durante el fin de semana.', 'En fin, ya sabes donde estare la semana que viene. Y espero volver a verte, hay muchos enemigos que matar aun!', 'Oh, vaya! Ya has vuelto? Y donde estan mis preciosas marcas?', '', 'Marca de Guerrero', '', '', '', '', 20560, 0, 0, 0, 0, 0, 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42490, 42495, 42485, 42450, 42502, 42519, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------
-- locales esES: --
-- ----------------

DELETE FROM `locales_quest` WHERE `entry` = 100000;
DELETE FROM `locales_quest` WHERE `entry` = 100001;
DELETE FROM `locales_quest` WHERE `entry` = 100002;
DELETE FROM `locales_quest` WHERE `entry` = 100003;
DELETE FROM `locales_quest` WHERE `entry` = 100004;
DELETE FROM `locales_quest` WHERE `entry` = 100005;
DELETE FROM `locales_quest` WHERE `entry` = 100006;
DELETE FROM `locales_quest` WHERE `entry` = 100007;
DELETE FROM `locales_quest` WHERE `entry` = 100008;
DELETE FROM `locales_quest` WHERE `entry` = 100009;
DELETE FROM `locales_quest` WHERE `entry` = 100010;
DELETE FROM `locales_quest` WHERE `entry` = 100011;
DELETE FROM `locales_quest` WHERE `entry` = 100012;
DELETE FROM `locales_quest` WHERE `entry` = 100013;
DELETE FROM `locales_quest` WHERE `entry` = 100014;
DELETE FROM `locales_quest` WHERE `entry` = 100015;
DELETE FROM `locales_quest` WHERE `entry` = 100016;
DELETE FROM `locales_quest` WHERE `entry` = 100017;
DELETE FROM `locales_quest` WHERE `entry` = 100018;
DELETE FROM `locales_quest` WHERE `entry` = 100019;
DELETE FROM `locales_quest` WHERE `entry` = 100020;
DELETE FROM `locales_quest` WHERE `entry` = 100021;
DELETE FROM `locales_quest` WHERE `entry` = 100022;
DELETE FROM `locales_quest` WHERE `entry` = 100023;
DELETE FROM `locales_quest` WHERE `entry` = 100024;
DELETE FROM `locales_quest` WHERE `entry` = 100025;
DELETE FROM `locales_quest` WHERE `entry` = 100026;
DELETE FROM `locales_quest` WHERE `entry` = 100027;
DELETE FROM `locales_quest` WHERE `entry` = 100028;
DELETE FROM `locales_quest` WHERE `entry` = 100029;
DELETE FROM `locales_quest` WHERE `entry` = 100030;
DELETE FROM `locales_quest` WHERE `entry` = 100031;
DELETE FROM `locales_quest` WHERE `entry` = 100032;
DELETE FROM `locales_quest` WHERE `entry` = 100033;
DELETE FROM `locales_quest` WHERE `entry` = 100034;
DELETE FROM `locales_quest` WHERE `entry` = 100035;
DELETE FROM `locales_quest` WHERE `entry` = 100036;
DELETE FROM `locales_quest` WHERE `entry` = 100037;
DELETE FROM `locales_quest` WHERE `entry` = 100038;
DELETE FROM `locales_quest` WHERE `entry` = 100039;
DELETE FROM `locales_quest` WHERE `entry` = 100040;
DELETE FROM `locales_quest` WHERE `entry` = 100041;
DELETE FROM `locales_quest` WHERE `entry` = 100042;
DELETE FROM `locales_quest` WHERE `entry` = 100043;
DELETE FROM `locales_quest` WHERE `entry` = 100044;
DELETE FROM `locales_quest` WHERE `entry` = 100045;
DELETE FROM `locales_quest` WHERE `entry` = 100046;
DELETE FROM `locales_quest` WHERE `entry` = 100047;
DELETE FROM `locales_quest` WHERE `entry` = 100048;
DELETE FROM `locales_quest` WHERE `entry` = 100049;
DELETE FROM `locales_quest` WHERE `entry` = 100050;
DELETE FROM `locales_quest` WHERE `entry` = 100051;
DELETE FROM `locales_quest` WHERE `entry` = 100052;
DELETE FROM `locales_quest` WHERE `entry` = 100053;
DELETE FROM `locales_quest` WHERE `entry` = 100054;
DELETE FROM `locales_quest` WHERE `entry` = 100055;
DELETE FROM `locales_quest` WHERE `entry` = 100056;
DELETE FROM `locales_quest` WHERE `entry` = 100057;
DELETE FROM `locales_quest` WHERE `entry` = 100058;
DELETE FROM `locales_quest` WHERE `entry` = 100059;
DELETE FROM `locales_quest` WHERE `entry` = 100060;
DELETE FROM `locales_quest` WHERE `entry` = 100061;
DELETE FROM `locales_quest` WHERE `entry` = 100062;
DELETE FROM `locales_quest` WHERE `entry` = 100063;
DELETE FROM `locales_quest` WHERE `entry` = 100064;
DELETE FROM `locales_quest` WHERE `entry` = 100065;
DELETE FROM `locales_quest` WHERE `entry` = 100066;
DELETE FROM `locales_quest` WHERE `entry` = 100067;
DELETE FROM `locales_quest` WHERE `entry` = 100068;
DELETE FROM `locales_quest` WHERE `entry` = 100069;
DELETE FROM `locales_quest` WHERE `entry` = 100070;
DELETE FROM `locales_quest` WHERE `entry` = 100071;
DELETE FROM `locales_quest` WHERE `entry` = 100072;
DELETE FROM `locales_quest` WHERE `entry` = 100073;
DELETE FROM `locales_quest` WHERE `entry` = 100074;
DELETE FROM `locales_quest` WHERE `entry` = 100075;
DELETE FROM `locales_quest` WHERE `entry` = 100076;
DELETE FROM `locales_quest` WHERE `entry` = 100077;
DELETE FROM `locales_quest` WHERE `entry` = 100078;
DELETE FROM `locales_quest` WHERE `entry` = 100079;
DELETE FROM `locales_quest` WHERE `entry` = 100080;
DELETE FROM `locales_quest` WHERE `entry` = 100081;
DELETE FROM `locales_quest` WHERE `entry` = 100082;
DELETE FROM `locales_quest` WHERE `entry` = 100083;
DELETE FROM `locales_quest` WHERE `entry` = 100084;
DELETE FROM `locales_quest` WHERE `entry` = 100085;

INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100000,
(SELECT `title` FROM quest_template WHERE `entry` = 100000),
(SELECT `Details` FROM quest_template WHERE `entry` = 100000),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100000),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100000),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100000),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100000),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100000),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100000));

-- delete FROM `locales_quest` WHERE `entry` = 100001;
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100001,
(SELECT `title` FROM quest_template WHERE `entry` = 100001),
(SELECT `Details` FROM quest_template WHERE `entry` = 100001),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100001),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100001),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100001),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100001),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100001),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100001));

-- delete FROM `locales_quest` WHERE `entry` = 100002);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100002,
(SELECT `title` FROM quest_template WHERE `entry` = 100002),
(SELECT `Details` FROM quest_template WHERE `entry` = 100002),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100002),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100002),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100002),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100002),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100002),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100002));

-- delete FROM `locales_quest` WHERE `entry` = 100003);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100003,
(SELECT `title` FROM quest_template WHERE `entry` = 100003),
(SELECT `Details` FROM quest_template WHERE `entry` = 100003),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100003),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100003),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100003),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100003),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100003),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100003));

-- delete FROM `locales_quest` WHERE `entry` = 100004);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100004,
(SELECT `title` FROM quest_template WHERE `entry` = 100004),
(SELECT `Details` FROM quest_template WHERE `entry` = 100004),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100004),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100004),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100004),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100004),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100004),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100004));

-- delete FROM `locales_quest` WHERE `entry` = 100005);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100005,
(SELECT `title` FROM quest_template WHERE `entry` = 100005),
(SELECT `Details` FROM quest_template WHERE `entry` = 100005),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100005),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100005),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100005),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100005),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100005),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100005));

-- delete FROM `locales_quest` WHERE `entry` = 100006);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100006,
(SELECT `title` FROM quest_template WHERE `entry` = 100006),
(SELECT `Details` FROM quest_template WHERE `entry` = 100006),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100006),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100006),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100006),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100006),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100006),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100006));

-- delete FROM `locales_quest` WHERE `entry` = 100007);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100007,
(SELECT `title` FROM quest_template WHERE `entry` = 100007),
(SELECT `Details` FROM quest_template WHERE `entry` = 100007),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100007),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100007),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100007),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100007),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100007),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100007));

-- delete FROM `locales_quest` WHERE `entry` = 100008);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100008,
(SELECT `title` FROM quest_template WHERE `entry` = 100008),
(SELECT `Details` FROM quest_template WHERE `entry` = 100008),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100008),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100008),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100008),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100008),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100008),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100008));

-- delete FROM `locales_quest` WHERE `entry` = 100009);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100009,
(SELECT `title` FROM quest_template WHERE `entry` = 100009),
(SELECT `Details` FROM quest_template WHERE `entry` = 100009),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100009),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100009),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100009),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100009),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100009),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100009));

-- delete FROM `locales_quest` WHERE `entry` = 100010);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100010,
(SELECT `title` FROM quest_template WHERE `entry` = 100010),
(SELECT `Details` FROM quest_template WHERE `entry` = 100010),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100010),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100010),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100010),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100010),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100010),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100010));

-- delete FROM `locales_quest` WHERE `entry` = 100011);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100011,
(SELECT `title` FROM quest_template WHERE `entry` = 100011),
(SELECT `Details` FROM quest_template WHERE `entry` = 100011),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100011),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100011),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100011),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100011),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100011),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100011));

-- delete FROM `locales_quest` WHERE `entry` = 100012);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100012,
(SELECT `title` FROM quest_template WHERE `entry` = 100012),
(SELECT `Details` FROM quest_template WHERE `entry` = 100012),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100012),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100012),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100012),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100012),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100012),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100012));

-- delete FROM `locales_quest` WHERE `entry` = 100013);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100013,
(SELECT `title` FROM quest_template WHERE `entry` = 100013),
(SELECT `Details` FROM quest_template WHERE `entry` = 100013),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100013),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100013),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100013),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100013),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100013),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100013));

-- delete FROM `locales_quest` WHERE `entry` = 100014);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100014,
(SELECT `title` FROM quest_template WHERE `entry` = 100014),
(SELECT `Details` FROM quest_template WHERE `entry` = 100014),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100014),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100014),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100014),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100014),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100014),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100014));

-- delete FROM `locales_quest` WHERE `entry` = 100015);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100015,
(SELECT `title` FROM quest_template WHERE `entry` = 100015),
(SELECT `Details` FROM quest_template WHERE `entry` = 100015),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100015),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100015),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100015),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100015),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100015),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100015));

-- delete FROM `locales_quest` WHERE `entry` = 100016);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100016,
(SELECT `title` FROM quest_template WHERE `entry` = 100016),
(SELECT `Details` FROM quest_template WHERE `entry` = 100016),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100016),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100016),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100016),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100016),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100016),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100016));

-- delete FROM `locales_quest` WHERE `entry` = 100017);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100017,
(SELECT `title` FROM quest_template WHERE `entry` = 100017),
(SELECT `Details` FROM quest_template WHERE `entry` = 100017),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100017),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100017),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100017),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100017),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100017),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100017));

-- delete FROM `locales_quest` WHERE `entry` = 100018);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100018,
(SELECT `title` FROM quest_template WHERE `entry` = 100018),
(SELECT `Details` FROM quest_template WHERE `entry` = 100018),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100018),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100018),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100018),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100018),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100018),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100018));

-- delete FROM `locales_quest` WHERE `entry` = 100019);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100019,
(SELECT `title` FROM quest_template WHERE `entry` = 100019),
(SELECT `Details` FROM quest_template WHERE `entry` = 100019),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100019),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100019),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100019),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100019),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100019),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100019));

-- delete FROM `locales_quest` WHERE `entry` = 100020);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100020,
(SELECT `title` FROM quest_template WHERE `entry` = 100020),
(SELECT `Details` FROM quest_template WHERE `entry` = 100020),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100020),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100020),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100020),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100020),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100020),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100020));

-- delete FROM `locales_quest` WHERE `entry` = 100021);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100021,
(SELECT `title` FROM quest_template WHERE `entry` = 100021),
(SELECT `Details` FROM quest_template WHERE `entry` = 100021),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100021),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100021),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100021),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100021),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100021),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100021));

-- delete FROM `locales_quest` WHERE `entry` = 100022);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100022,
(SELECT `title` FROM quest_template WHERE `entry` = 100022),
(SELECT `Details` FROM quest_template WHERE `entry` = 100022),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100022),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100022),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100022),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100022),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100022),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100022));

-- delete FROM `locales_quest` WHERE `entry` = 100023);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100023,
(SELECT `title` FROM quest_template WHERE `entry` = 100023),
(SELECT `Details` FROM quest_template WHERE `entry` = 100023),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100023),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100023),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100023),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100023),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100023),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100023));

-- delete FROM `locales_quest` WHERE `entry` = 100024);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100024,
(SELECT `title` FROM quest_template WHERE `entry` = 100024),
(SELECT `Details` FROM quest_template WHERE `entry` = 100024),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100024),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100024),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100024),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100024),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100024),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100024));

-- delete FROM `locales_quest` WHERE `entry` = 100025);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100025,
(SELECT `title` FROM quest_template WHERE `entry` = 100025),
(SELECT `Details` FROM quest_template WHERE `entry` = 100025),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100025),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100025),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100025),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100025),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100025),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100025));

-- delete FROM `locales_quest` WHERE `entry` = 100026);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100026,
(SELECT `title` FROM quest_template WHERE `entry` = 100026),
(SELECT `Details` FROM quest_template WHERE `entry` = 100026),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100026),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100026),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100026),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100026),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100026),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100026));

-- delete FROM `locales_quest` WHERE `entry` = 100027);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100027,
(SELECT `title` FROM quest_template WHERE `entry` = 100027),
(SELECT `Details` FROM quest_template WHERE `entry` = 100027),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100027),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100027),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100027),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100027),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100027),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100027));

-- delete FROM `locales_quest` WHERE `entry` = 100028);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100028,
(SELECT `title` FROM quest_template WHERE `entry` = 100028),
(SELECT `Details` FROM quest_template WHERE `entry` = 100028),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100028),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100028),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100028),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100028),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100028),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100028));

-- delete FROM `locales_quest` WHERE `entry` = 100029);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100029,
(SELECT `title` FROM quest_template WHERE `entry` = 100029),
(SELECT `Details` FROM quest_template WHERE `entry` = 100029),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100029),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100029),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100029),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100029),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100029),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100029));

-- delete FROM `locales_quest` WHERE `entry` = 100030);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100030,
(SELECT `title` FROM quest_template WHERE `entry` = 100030),
(SELECT `Details` FROM quest_template WHERE `entry` = 100030),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100030),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100030),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100030),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100030),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100030),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100030));

-- delete FROM `locales_quest` WHERE `entry` = 100031);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100031,
(SELECT `title` FROM quest_template WHERE `entry` = 100031),
(SELECT `Details` FROM quest_template WHERE `entry` = 100031),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100031),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100031),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100031),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100031),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100031),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100031));

-- delete FROM `locales_quest` WHERE `entry` = 100032);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100032,
(SELECT `title` FROM quest_template WHERE `entry` = 100032),
(SELECT `Details` FROM quest_template WHERE `entry` = 100032),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100032),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100032),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100032),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100032),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100032),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100032));

-- delete FROM `locales_quest` WHERE `entry` = 100033);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100033,
(SELECT `title` FROM quest_template WHERE `entry` = 100033),
(SELECT `Details` FROM quest_template WHERE `entry` = 100033),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100033),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100033),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100033),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100033),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100033),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100033));

-- delete FROM `locales_quest` WHERE `entry` = 100034);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100034,
(SELECT `title` FROM quest_template WHERE `entry` = 100034),
(SELECT `Details` FROM quest_template WHERE `entry` = 100034),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100034),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100034),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100034),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100034),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100034),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100034));

-- delete FROM `locales_quest` WHERE `entry` = 100035);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100035,
(SELECT `title` FROM quest_template WHERE `entry` = 100035),
(SELECT `Details` FROM quest_template WHERE `entry` = 100035),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100035),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100035),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100035),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100035),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100035),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100035));

-- delete FROM `locales_quest` WHERE `entry` = 100036);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100036,
(SELECT `title` FROM quest_template WHERE `entry` = 100036),
(SELECT `Details` FROM quest_template WHERE `entry` = 100036),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100036),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100036),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100036),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100036),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100036),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100036));

-- delete FROM `locales_quest` WHERE `entry` = 100037);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100037,
(SELECT `title` FROM quest_template WHERE `entry` = 100037),
(SELECT `Details` FROM quest_template WHERE `entry` = 100037),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100037),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100037),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100037),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100037),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100037),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100037));

-- delete FROM `locales_quest` WHERE `entry` = 100038);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100038,
(SELECT `title` FROM quest_template WHERE `entry` = 100038),
(SELECT `Details` FROM quest_template WHERE `entry` = 100038),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100038),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100038),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100038),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100038),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100038),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100038));

-- delete FROM `locales_quest` WHERE `entry` = 100039);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100039,
(SELECT `title` FROM quest_template WHERE `entry` = 100039),
(SELECT `Details` FROM quest_template WHERE `entry` = 100039),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100039),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100039),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100039),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100039),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100039),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100039));

-- delete FROM `locales_quest` WHERE `entry` = 100040);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100040,
(SELECT `title` FROM quest_template WHERE `entry` = 100040),
(SELECT `Details` FROM quest_template WHERE `entry` = 100040),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100040),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100040),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100040),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100040),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100040),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100040));

-- delete FROM `locales_quest` WHERE `entry` = 100041);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100041,
(SELECT `title` FROM quest_template WHERE `entry` = 100041),
(SELECT `Details` FROM quest_template WHERE `entry` = 100041),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100041),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100041),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100041),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100041),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100041),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100041));

-- delete FROM `locales_quest` WHERE `entry` = 100042);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100042,
(SELECT `title` FROM quest_template WHERE `entry` = 100042),
(SELECT `Details` FROM quest_template WHERE `entry` = 100042),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100042),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100042),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100042),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100042),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100042),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100042));

-- delete FROM `locales_quest` WHERE `entry` = 100043);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100043,
(SELECT `title` FROM quest_template WHERE `entry` = 100043),
(SELECT `Details` FROM quest_template WHERE `entry` = 100043),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100043),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100043),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100043),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100043),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100043),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100043));

-- delete FROM `locales_quest` WHERE `entry` = 100044);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100044,
(SELECT `title` FROM quest_template WHERE `entry` = 100044),
(SELECT `Details` FROM quest_template WHERE `entry` = 100044),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100044),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100044),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100044),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100044),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100044),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100044));

-- delete FROM `locales_quest` WHERE `entry` = 100045);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100045,
(SELECT `title` FROM quest_template WHERE `entry` = 100045),
(SELECT `Details` FROM quest_template WHERE `entry` = 100045),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100045),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100045),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100045),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100045),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100045),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100045));

-- delete FROM `locales_quest` WHERE `entry` = 100046);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100046,
(SELECT `title` FROM quest_template WHERE `entry` = 100046),
(SELECT `Details` FROM quest_template WHERE `entry` = 100046),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100046),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100046),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100046),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100046),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100046),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100046));

-- delete FROM `locales_quest` WHERE `entry` = 100047);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100047,
(SELECT `title` FROM quest_template WHERE `entry` = 100047),
(SELECT `Details` FROM quest_template WHERE `entry` = 100047),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100047),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100047),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100047),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100047),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100047),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100047));

-- delete FROM `locales_quest` WHERE `entry` = 100048);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100048,
(SELECT `title` FROM quest_template WHERE `entry` = 100048),
(SELECT `Details` FROM quest_template WHERE `entry` = 100048),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100048),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100048),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100048),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100048),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100048),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100048));

-- delete FROM `locales_quest` WHERE `entry` = 100049);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100049,
(SELECT `title` FROM quest_template WHERE `entry` = 100049),
(SELECT `Details` FROM quest_template WHERE `entry` = 100049),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100049),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100049),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100049),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100049),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100049),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100049));

-- delete FROM `locales_quest` WHERE `entry` = 100050);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100050,
(SELECT `title` FROM quest_template WHERE `entry` = 100050),
(SELECT `Details` FROM quest_template WHERE `entry` = 100050),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100050),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100050),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100050),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100050),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100050),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100050));

-- delete FROM `locales_quest` WHERE `entry` = 100051);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100051,
(SELECT `title` FROM quest_template WHERE `entry` = 100051),
(SELECT `Details` FROM quest_template WHERE `entry` = 100051),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100051),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100051),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100051),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100051),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100051),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100051));

-- delete FROM `locales_quest` WHERE `entry` = 100052);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100052,
(SELECT `title` FROM quest_template WHERE `entry` = 100052),
(SELECT `Details` FROM quest_template WHERE `entry` = 100052),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100052),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100052),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100052),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100052),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100052),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100052));

-- delete FROM `locales_quest` WHERE `entry` = 100053);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100053,
(SELECT `title` FROM quest_template WHERE `entry` = 100053),
(SELECT `Details` FROM quest_template WHERE `entry` = 100053),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100053),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100053),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100053),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100053),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100053),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100053));

-- delete FROM `locales_quest` WHERE `entry` = 100054);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100054,
(SELECT `title` FROM quest_template WHERE `entry` = 100054),
(SELECT `Details` FROM quest_template WHERE `entry` = 100054),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100054),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100054),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100054),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100054),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100054),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100054));

-- delete FROM `locales_quest` WHERE `entry` = 100055);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100055,
(SELECT `title` FROM quest_template WHERE `entry` = 100055),
(SELECT `Details` FROM quest_template WHERE `entry` = 100055),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100055),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100055),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100055),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100055),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100055),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100055));

-- delete FROM `locales_quest` WHERE `entry` = 100056);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100056,
(SELECT `title` FROM quest_template WHERE `entry` = 100056),
(SELECT `Details` FROM quest_template WHERE `entry` = 100056),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100056),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100056),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100056),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100056),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100056),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100056));

-- delete FROM `locales_quest` WHERE `entry` = 100057);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100057,
(SELECT `title` FROM quest_template WHERE `entry` = 100057),
(SELECT `Details` FROM quest_template WHERE `entry` = 100057),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100057),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100057),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100057),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100057),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100057),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100057));

-- delete FROM `locales_quest` WHERE `entry` = 100058);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100058,
(SELECT `title` FROM quest_template WHERE `entry` = 100058),
(SELECT `Details` FROM quest_template WHERE `entry` = 100058),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100058),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100058),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100058),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100058),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100058),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100058));

-- delete FROM `locales_quest` WHERE `entry` = 100059);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100059,
(SELECT `title` FROM quest_template WHERE `entry` = 100059),
(SELECT `Details` FROM quest_template WHERE `entry` = 100059),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100059),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100059),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100059),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100059),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100059),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100059));

-- delete FROM `locales_quest` WHERE `entry` = 100060);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100060,
(SELECT `title` FROM quest_template WHERE `entry` = 100060),
(SELECT `Details` FROM quest_template WHERE `entry` = 100060),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100060),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100060),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100060),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100060),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100060),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100060));

-- delete FROM `locales_quest` WHERE `entry` = 100061);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100061,
(SELECT `title` FROM quest_template WHERE `entry` = 100061),
(SELECT `Details` FROM quest_template WHERE `entry` = 100061),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100061),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100061),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100061),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100061),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100061),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100061));

-- delete FROM `locales_quest` WHERE `entry` = 100062);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100062,
(SELECT `title` FROM quest_template WHERE `entry` = 100062),
(SELECT `Details` FROM quest_template WHERE `entry` = 100062),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100062),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100062),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100062),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100062),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100062),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100062));

-- delete FROM `locales_quest` WHERE `entry` = 100063);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100063,
(SELECT `title` FROM quest_template WHERE `entry` = 100063),
(SELECT `Details` FROM quest_template WHERE `entry` = 100063),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100063),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100063),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100063),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100063),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100063),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100063));

-- delete FROM `locales_quest` WHERE `entry` = 100064);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100064,
(SELECT `title` FROM quest_template WHERE `entry` = 100064),
(SELECT `Details` FROM quest_template WHERE `entry` = 100064),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100064),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100064),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100064),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100064),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100064),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100064));

-- delete FROM `locales_quest` WHERE `entry` = 100065);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100065,
(SELECT `title` FROM quest_template WHERE `entry` = 100065),
(SELECT `Details` FROM quest_template WHERE `entry` = 100065),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100065),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100065),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100065),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100065),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100065),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100065));

-- delete FROM `locales_quest` WHERE `entry` = 100066);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100066,
(SELECT `title` FROM quest_template WHERE `entry` = 100066),
(SELECT `Details` FROM quest_template WHERE `entry` = 100066),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100066),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100066),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100066),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100066),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100066),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100066));

-- delete FROM `locales_quest` WHERE `entry` = 100067);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100067,
(SELECT `title` FROM quest_template WHERE `entry` = 100067),
(SELECT `Details` FROM quest_template WHERE `entry` = 100067),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100067),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100067),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100067),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100067),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100067),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100067));

-- delete FROM `locales_quest` WHERE `entry` = 100068);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100068,
(SELECT `title` FROM quest_template WHERE `entry` = 100068),
(SELECT `Details` FROM quest_template WHERE `entry` = 100068),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100068),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100068),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100068),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100068),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100068),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100068));

-- delete FROM `locales_quest` WHERE `entry` = 100069);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100069,
(SELECT `title` FROM quest_template WHERE `entry` = 100069),
(SELECT `Details` FROM quest_template WHERE `entry` = 100069),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100069),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100069),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100069),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100069),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100069),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100069));

-- delete FROM `locales_quest` WHERE `entry` = 100070);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100070,
(SELECT `title` FROM quest_template WHERE `entry` = 100070),
(SELECT `Details` FROM quest_template WHERE `entry` = 100070),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100070),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100070),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100070),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100070),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100070),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100070));

-- delete FROM `locales_quest` WHERE `entry` = 100071);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100071,
(SELECT `title` FROM quest_template WHERE `entry` = 100071),
(SELECT `Details` FROM quest_template WHERE `entry` = 100071),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100071),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100071),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100071),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100071),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100071),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100071));

-- delete FROM `locales_quest` WHERE `entry` = 100072);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100072,
(SELECT `title` FROM quest_template WHERE `entry` = 100072),
(SELECT `Details` FROM quest_template WHERE `entry` = 100072),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100072),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100072),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100072),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100072),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100072),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100072));

-- delete FROM `locales_quest` WHERE `entry` = 100073);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100073,
(SELECT `title` FROM quest_template WHERE `entry` = 100073),
(SELECT `Details` FROM quest_template WHERE `entry` = 100073),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100073),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100073),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100073),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100073),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100073),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100073));

-- delete FROM `locales_quest` WHERE `entry` = 100074);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100074,
(SELECT `title` FROM quest_template WHERE `entry` = 100074),
(SELECT `Details` FROM quest_template WHERE `entry` = 100074),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100074),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100074),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100074),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100074),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100074),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100074));

-- delete FROM `locales_quest` WHERE `entry` = 100075);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100075,
(SELECT `title` FROM quest_template WHERE `entry` = 100075),
(SELECT `Details` FROM quest_template WHERE `entry` = 100075),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100075),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100075),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100075),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100075),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100075),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100075));

-- delete FROM `locales_quest` WHERE `entry` = 100076);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100076,
(SELECT `title` FROM quest_template WHERE `entry` = 100076),
(SELECT `Details` FROM quest_template WHERE `entry` = 100076),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100076),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100076),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100076),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100076),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100076),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100076));

-- delete FROM `locales_quest` WHERE `entry` = 100077);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100077,
(SELECT `title` FROM quest_template WHERE `entry` = 100077),
(SELECT `Details` FROM quest_template WHERE `entry` = 100077),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100077),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100077),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100077),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100077),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100077),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100077));

-- delete FROM `locales_quest` WHERE `entry` = 100078);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100078,
(SELECT `title` FROM quest_template WHERE `entry` = 100078),
(SELECT `Details` FROM quest_template WHERE `entry` = 100078),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100078),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100078),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100078),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100078),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100078),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100078));

-- delete FROM `locales_quest` WHERE `entry` = 100079);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100079,
(SELECT `title` FROM quest_template WHERE `entry` = 100079),
(SELECT `Details` FROM quest_template WHERE `entry` = 100079),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100079),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100079),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100079),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100079),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100079),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100079));

-- delete FROM `locales_quest` WHERE `entry` = 100080);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100080,
(SELECT `title` FROM quest_template WHERE `entry` = 100080),
(SELECT `Details` FROM quest_template WHERE `entry` = 100080),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100080),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100080),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100080),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100080),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100080),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100080));

-- delete FROM `locales_quest` WHERE `entry` = 100081);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100081,
(SELECT `title` FROM quest_template WHERE `entry` = 100081),
(SELECT `Details` FROM quest_template WHERE `entry` = 100081),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100081),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100081),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100081),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100081),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100081),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100081));

-- delete FROM `locales_quest` WHERE `entry` = 100082);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100082,
(SELECT `title` FROM quest_template WHERE `entry` = 100082),
(SELECT `Details` FROM quest_template WHERE `entry` = 100082),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100082),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100082),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100082),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100082),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100082),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100082));

-- delete FROM `locales_quest` WHERE `entry` = 100083);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100083,
(SELECT `title` FROM quest_template WHERE `entry` = 100083),
(SELECT `Details` FROM quest_template WHERE `entry` = 100083),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100083),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100083),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100083),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100083),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100083),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100083));

-- delete FROM `locales_quest` WHERE `entry` = 100084);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100084,
(SELECT `title` FROM quest_template WHERE `entry` = 100084),
(SELECT `Details` FROM quest_template WHERE `entry` = 100084),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100084),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100084),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100084),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100084),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100084),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100084));

-- delete FROM `locales_quest` WHERE `entry` = 100085);
INSERT INTO `locales_quest` (`entry`, `Title_loc6`, `Details_loc6`, `Objectives_loc6`, `OfferRewardText_loc6`, `RequestItemsText_loc6`, `EndText_loc6`, `CompletedText_loc6`, `ObjectiveText1_loc6`) VALUES
(100085,
(SELECT `title` FROM quest_template WHERE `entry` = 100085),
(SELECT `Details` FROM quest_template WHERE `entry` = 100085),
(SELECT `Objectives` FROM quest_template WHERE `entry` = 100085),
(SELECT `OfferRewardText` FROM quest_template WHERE `entry` = 100085),
(SELECT `RequestItemsText` FROM quest_template WHERE `entry` = 100085),
(SELECT `EndText` FROM quest_template WHERE `entry` = 100085),
(SELECT `CompletedText` FROM quest_template WHERE `entry` = 100085),
(SELECT `ObjectiveText1` FROM quest_template WHERE `entry` = 100085));
-- END