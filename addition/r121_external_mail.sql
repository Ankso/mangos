DROP TABLE IF EXISTS `mail_external`;
CREATE TABLE `mail_external` (
  `id` INT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `receiver` BIGINT(20) UNSIGNED NOT NULL,
  `subject` VARCHAR(200) DEFAULT 'Default subject',
  `message` VARCHAR(500) DEFAULT 'Default message',
  `money` INT(20) UNSIGNED NOT NULL DEFAULT '0',
  `item` INT(20) UNSIGNED NOT NULL DEFAULT '0',
  `item_count` INT(20) UNSIGNED NOT NULL DEFAULT '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;