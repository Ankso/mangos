-- Inner Fire
DELETE FROM spell_proc_event WHERE entry = 588;
INSERT INTO spell_proc_event VALUES
(588, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8|32|128|512, 524288, 0, 100, 0);
-- Taste for Blood
DELETE FROM spell_proc_event WHERE entry = 56636;
INSERT INTO spell_proc_event VALUES
(56636, 0, 4, 32, 32, 32, 0, 0, 0, 0, 0, 0, 262144, 524288, 0, 0, 6);
DELETE FROM `spell_proc_event` WHERE `entry` IN (51682, 58413);
INSERT INTO `spell_proc_event` VALUES
(51682, 0x00,  8, 0x10014000, 0x10014000, 0x10014000, 0x00080000, 0x00080000, 0x00080000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0),
(58413, 0x00,  8, 0x10014000, 0x10014000, 0x10014000, 0x00080000, 0x00080000, 0x00080000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0.000000, 0.000000,  0);