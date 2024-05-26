-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.0.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table fivem-sandboxrp_ptr.bench_schematics
DROP TABLE IF EXISTS `bench_schematics`;
CREATE TABLE IF NOT EXISTS `bench_schematics` (
  `bench` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `schematic` char(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  KEY `bench` (`bench`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

-- Dumping structure for table fivem-sandboxrp_ptr.character_schematics
DROP TABLE IF EXISTS `character_schematics`;
CREATE TABLE IF NOT EXISTS `character_schematics` (
  `sid` int(11) DEFAULT NULL,
  `bench` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `schematic` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  KEY `sid` (`sid`,`bench`),
  KEY `schematic` (`schematic`,`bench`,`sid`),
  KEY `sid_schem` (`sid`,`schematic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

-- Dumping structure for table fivem-sandboxrp_ptr.firearms
DROP TABLE IF EXISTS `firearms`;
CREATE TABLE IF NOT EXISTS `firearms` (
  `police_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `serial` char(128) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `scratched` tinyint(1) NOT NULL DEFAULT 0,
  `purchased` datetime NOT NULL DEFAULT current_timestamp(),
  `model` varchar(128) NOT NULL,
  `item` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `owner_sid` int(11) unsigned DEFAULT NULL,
  `owner_name` varchar(512) DEFAULT NULL,
  `police_filed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`police_id`),
  KEY `owner_sid` (`owner_sid`) USING BTREE,
  KEY `police_filed` (`police_filed`) USING BTREE,
  KEY `serial` (`serial`)
) ENGINE=InnoDB AUTO_INCREMENT=1956 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Data exporting was unselected.

-- Dumping structure for table fivem-sandboxrp_ptr.firearms_flags
DROP TABLE IF EXISTS `firearms_flags`;
CREATE TABLE IF NOT EXISTS `firearms_flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serial` char(128) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `type` char(32) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `author_sid` int(11) unsigned NOT NULL,
  `author_first` varchar(128) NOT NULL,
  `author_last` varchar(128) NOT NULL,
  `author_callsign` varchar(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `serial` (`serial`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Data exporting was unselected.

-- Dumping structure for table fivem-sandboxrp_ptr.item_template
DROP TABLE IF EXISTS `item_template`;
CREATE TABLE IF NOT EXISTS `item_template` (
  `name` char(64) CHARACTER SET big5 COLLATE big5_bin NOT NULL,
  `label` varchar(128) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `rarity` int(11) NOT NULL,
  `iconOverride` varchar(256) DEFAULT NULL,
  `price` int(10) unsigned NOT NULL DEFAULT 0,
  `weapon` varchar(256) DEFAULT NULL,
  `state` varchar(256) DEFAULT NULL,
  `weight` int(10) unsigned NOT NULL DEFAULT 0,
  `imitate` char(64) CHARACTER SET ascii COLLATE ascii_bin DEFAULT NULL,
  `isStackable` int(10) unsigned DEFAULT NULL,
  `closeUi` tinyint(1) NOT NULL DEFAULT 0,
  `metalic` tinyint(1) NOT NULL DEFAULT 0,
  `durability` bigint(20) unsigned DEFAULT NULL,
  `isUsable` tinyint(1) NOT NULL DEFAULT 0,
  `isDestroyed` tinyint(1) NOT NULL DEFAULT 0,
  `isRemoved` tinyint(1) NOT NULL DEFAULT 0,
  `gun` tinyint(1) NOT NULL DEFAULT 0,
  `requiresLicense` tinyint(1) NOT NULL DEFAULT 0,
  `qualification` varchar(32) DEFAULT NULL,
  `ammoType` varchar(32) DEFAULT NULL,
  `bulletCount` int(10) unsigned DEFAULT NULL,
  `container` int(10) unsigned DEFAULT NULL,
  `staticMetadata` longtext DEFAULT NULL,
  `component` longtext DEFAULT NULL,
  `animConfig` longtext DEFAULT NULL,
  `statusChange` longtext DEFAULT NULL,
  `extra` longtext DEFAULT NULL,
  `schematic` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Data exporting was unselected.

-- Dumping structure for table fivem-sandboxrp_ptr.player_shops
DROP TABLE IF EXISTS `player_shops`;
CREATE TABLE IF NOT EXISTS `player_shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `ped_model` varchar(256) DEFAULT NULL,
  `position` text NOT NULL,
  `owner` int(10) unsigned NOT NULL,
  `owner_bank` int(11) NOT NULL,
  `job` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

-- Dumping structure for table fivem-sandboxrp_ptr.player_shops_moderators
DROP TABLE IF EXISTS `player_shops_moderators`;
CREATE TABLE IF NOT EXISTS `player_shops_moderators` (
  `shop` int(10) unsigned NOT NULL,
  `name` varchar(512) DEFAULT NULL,
  `sid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`shop`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

-- Dumping structure for table fivem-sandboxrp_ptr.sequence
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE IF NOT EXISTS `sequence` (
  `id` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `sequence` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

-- Dumping structure for table fivem-sandboxrp_ptr.shop_bank_accounts
DROP TABLE IF EXISTS `shop_bank_accounts`;
CREATE TABLE IF NOT EXISTS `shop_bank_accounts` (
  `shop` int(10) unsigned NOT NULL,
  `bank` int(10) unsigned NOT NULL,
  PRIMARY KEY (`shop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
