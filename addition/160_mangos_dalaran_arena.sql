delete from `gameobject` where `map` = 617;
insert into `gameobject` values
-- buffs
('200160','184663','617','1','1','1291.7','813.424','7.11472','4.64562','0','0','0.730314','-0.683111','-120','100','1'),
('200161','184664','617','1','1','1291.7','768.911','7.11472','1.55194','0','0','0.700409','0.713742','-120','100','1'),
-- doors
('200162','192642','617','1','1','1350.95','817.2','21.4096','3.15','0','0','0.99627','0.0862864','86400','100','1'),
('200163','192643','617','1','1','1232.65','764.913','21.4729','6.3','0','0','0.0310211','-0.999519','86400','100','1');

delete from `gameobject_battleground` where `guid` in (200060,200061,200062,200063);
insert into `gameobject_battleground` values
-- buffs
('200160','252','0'),
('200161','252','0'),
-- doors
('200162','254','0'),
('200163','254','0');

delete from `battleground_events` where `map` = 617;
insert into `battleground_events` values
('617','252','0','buffs'),
('617','254','0','doors');

-- doors
update `gameobject_template` set `faction` = 114, `flags` = 32, `size` = 1.5 where `entry` in (192642,192643);
