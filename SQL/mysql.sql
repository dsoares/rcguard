-- MySQL table for rcguard

CREATE TABLE IF NOT EXISTS `rcguard` (
  `ip` VARCHAR(40) NOT NULL,
  `first` DATETIME NOT NULL,
  `last` DATETIME NOT NULL,
  `hits` INT(10) NOT NULL,
  PRIMARY KEY (`ip`),
  INDEX `time` (`first`, `last`),
  INDEX (`hits`)
) ENGINE = InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci;