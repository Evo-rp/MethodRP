/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Adatbázis struktúra mentése a fivem-methodrp.
CREATE DATABASE IF NOT EXISTS `fivem-methodrp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `fivem-methodrp`;

-- Struktúra mentése tábla fivem-methodrp. app_profile_history
CREATE TABLE IF NOT EXISTS `app_profile_history` (
  `sid` bigint(20) unsigned NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `app` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `picture` varchar(2048) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.app_profile_history: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `app_profile_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_profile_history` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. bank_accounts
CREATE TABLE IF NOT EXISTS `bank_accounts` (
  `account` int(10) NOT NULL,
  `type` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `balance` int(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`account`) USING BTREE,
  KEY `Owner` (`owner`) USING BTREE,
  KEY `Type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.bank_accounts: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `bank_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_accounts` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. bank_accounts_permissions
CREATE TABLE IF NOT EXISTS `bank_accounts_permissions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account` int(10) NOT NULL,
  `type` int(10) NOT NULL,
  `jointOwner` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `workplace` varchar(255) DEFAULT NULL,
  `jobPermissions` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `job` (`job`) USING BTREE,
  KEY `workplace` (`workplace`) USING BTREE,
  KEY `jointOwner` (`jointOwner`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.bank_accounts_permissions: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `bank_accounts_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_accounts_permissions` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. bank_accounts_transactions
CREATE TABLE IF NOT EXISTS `bank_accounts_transactions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `account` int(10) NOT NULL,
  `amount` int(10) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(1024) NOT NULL DEFAULT '',
  `data` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `account` (`account`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Tábla adatainak mentése fivem-methodrp.bank_accounts_transactions: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `bank_accounts_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_accounts_transactions` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. bench_schematics
CREATE TABLE IF NOT EXISTS `bench_schematics` (
  `bench` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `schematic` char(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  KEY `bench` (`bench`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.bench_schematics: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `bench_schematics` DISABLE KEYS */;
/*!40000 ALTER TABLE `bench_schematics` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. blueline_race_history
CREATE TABLE IF NOT EXISTS `blueline_race_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `state` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `host` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `track` int(11) unsigned NOT NULL,
  `class` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `racers` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '[]',
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pd_race_history_track` (`track`) USING BTREE,
  KEY `host` (`host`),
  CONSTRAINT `pd_race_history_track` FOREIGN KEY (`track`) REFERENCES `blueline_tracks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.blueline_race_history: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `blueline_race_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `blueline_race_history` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. blueline_tracks
CREATE TABLE IF NOT EXISTS `blueline_tracks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `distance` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `checkpoints` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_by` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.blueline_tracks: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `blueline_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `blueline_tracks` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. blueline_track_history
CREATE TABLE IF NOT EXISTS `blueline_track_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `track` int(11) unsigned NOT NULL,
  `race` int(11) unsigned NOT NULL,
  `callsign` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lap_start` int(11) NOT NULL,
  `lap_end` int(11) NOT NULL,
  `laptime` int(11) NOT NULL,
  `car` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `owned` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pd_track_history_track` (`track`) USING BTREE,
  KEY `pd_track_history_race` (`race`) USING BTREE,
  KEY `callsign` (`callsign`),
  CONSTRAINT `pd_track_history_race` FOREIGN KEY (`race`) REFERENCES `blueline_race_history` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pd_track_history_track` FOREIGN KEY (`track`) REFERENCES `blueline_tracks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.blueline_track_history: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `blueline_track_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `blueline_track_history` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. business_phones
CREATE TABLE IF NOT EXISTS `business_phones` (
  `id` char(50) NOT NULL DEFAULT 'AUTO_INCREMENT',
  `number` varchar(50) NOT NULL DEFAULT '0',
  `muted` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.business_phones: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `business_phones` DISABLE KEYS */;
/*!40000 ALTER TABLE `business_phones` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. character_app_profiles
CREATE TABLE IF NOT EXISTS `character_app_profiles` (
  `sid` bigint(20) unsigned NOT NULL,
  `app` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `picture` varchar(512) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '{}',
  PRIMARY KEY (`sid`,`app`),
  UNIQUE KEY `app` (`app`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.character_app_profiles: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `character_app_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_app_profiles` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. character_calls
CREATE TABLE IF NOT EXISTS `character_calls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `number` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `method` bit(1) NOT NULL DEFAULT b'0',
  `duration` int(11) NOT NULL DEFAULT -1,
  `anonymous` bit(1) NOT NULL DEFAULT b'0',
  `decryptable` bit(1) NOT NULL DEFAULT b'0',
  `limited` bit(1) NOT NULL DEFAULT b'0',
  `unread` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `number` (`number`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.character_calls: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `character_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_calls` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. character_chatter_groups
CREATE TABLE IF NOT EXISTS `character_chatter_groups` (
  `sid` bigint(20) unsigned NOT NULL,
  `chatty_group` bigint(20) unsigned NOT NULL,
  `joined_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`sid`,`chatty_group`) USING BTREE,
  KEY `chatter_char_group` (`chatty_group`),
  CONSTRAINT `chatter_char_group` FOREIGN KEY (`chatty_group`) REFERENCES `chatter_groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.character_chatter_groups: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `character_chatter_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_chatter_groups` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. character_contacts
CREATE TABLE IF NOT EXISTS `character_contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sid` bigint(20) NOT NULL,
  `number` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `avatar` varchar(256) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `color` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `favorite` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.character_contacts: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `character_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_contacts` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. character_documents
CREATE TABLE IF NOT EXISTS `character_documents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `title` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner` (`sid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.character_documents: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `character_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_documents` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. character_documents_shared
CREATE TABLE IF NOT EXISTS `character_documents_shared` (
  `doc_id` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `sharer` int(10) unsigned NOT NULL,
  `sharer_name` varchar(256) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `shared_date` datetime NOT NULL DEFAULT current_timestamp(),
  `signature_required` tinyint(1) NOT NULL DEFAULT 0,
  `signed` datetime DEFAULT NULL,
  `signed_name` varchar(256) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  UNIQUE KEY `doc_id_sid` (`doc_id`,`sid`),
  KEY `sid` (`sid`),
  KEY `sharer` (`sharer`),
  KEY `doc_sid` (`doc_id`) USING BTREE,
  CONSTRAINT `doc_shared` FOREIGN KEY (`doc_id`) REFERENCES `character_documents` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.character_documents_shared: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `character_documents_shared` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_documents_shared` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. character_emails
CREATE TABLE IF NOT EXISTS `character_emails` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned NOT NULL,
  `sender` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `subject` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `unread` bit(1) NOT NULL DEFAULT b'1',
  `flags` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.character_emails: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `character_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_emails` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. character_messages
CREATE TABLE IF NOT EXISTS `character_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `number` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method` tinyint(1) NOT NULL DEFAULT 0,
  `unread` bit(1) NOT NULL DEFAULT b'1',
  `time` datetime NOT NULL DEFAULT current_timestamp(),
  `message` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `number` (`number`),
  KEY `ownu` (`owner`,`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.character_messages: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `character_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_messages` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. character_parole
CREATE TABLE IF NOT EXISTS `character_parole` (
  `SID` int(11) NOT NULL,
  `end` datetime NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `parole` int(11) NOT NULL DEFAULT 0,
  `sentence` int(11) NOT NULL DEFAULT 0,
  `fine` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.character_parole: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `character_parole` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_parole` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. character_schematics
CREATE TABLE IF NOT EXISTS `character_schematics` (
  `sid` int(11) DEFAULT NULL,
  `bench` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `schematic` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  KEY `sid` (`sid`,`bench`),
  KEY `schematic` (`schematic`,`bench`,`sid`),
  KEY `sid_schem` (`sid`,`schematic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.character_schematics: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `character_schematics` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_schematics` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. chatter_groups
CREATE TABLE IF NOT EXISTS `chatter_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Chatter Group',
  `icon` varchar(1024) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `owner` bigint(20) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.chatter_groups: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `chatter_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatter_groups` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. chatter_messages
CREATE TABLE IF NOT EXISTS `chatter_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group` bigint(20) unsigned NOT NULL,
  `author` bigint(20) unsigned NOT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `chatter_msg_group` (`group`),
  KEY `chatter_msg_author` (`author`),
  CONSTRAINT `chatter_msg_group` FOREIGN KEY (`group`) REFERENCES `chatter_groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.chatter_messages: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `chatter_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatter_messages` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. crafting_cooldowns
CREATE TABLE IF NOT EXISTS `crafting_cooldowns` (
  `bench` varchar(64) NOT NULL,
  `id` varchar(64) NOT NULL,
  `expires` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.crafting_cooldowns: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `crafting_cooldowns` DISABLE KEYS */;
/*!40000 ALTER TABLE `crafting_cooldowns` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. firearms
CREATE TABLE IF NOT EXISTS `firearms` (
  `police_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `serial` char(128) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `scratched` tinyint(1) NOT NULL DEFAULT 0,
  `purchased` datetime NOT NULL DEFAULT current_timestamp(),
  `model` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `item` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `owner_sid` int(11) unsigned DEFAULT NULL,
  `owner_name` varchar(512) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `police_filed` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`police_id`),
  KEY `owner_sid` (`owner_sid`) USING BTREE,
  KEY `police_filed` (`police_filed`) USING BTREE,
  KEY `serial` (`serial`)
) ENGINE=InnoDB AUTO_INCREMENT=1956 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.firearms: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `firearms` DISABLE KEYS */;
/*!40000 ALTER TABLE `firearms` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. firearms_flags
CREATE TABLE IF NOT EXISTS `firearms_flags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serial` char(128) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `type` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `author_sid` int(11) unsigned NOT NULL,
  `author_first` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `author_last` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `author_callsign` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `serial` (`serial`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.firearms_flags: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `firearms_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `firearms_flags` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. inventory
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `type` char(64) NOT NULL,
  `slot` int(11) DEFAULT NULL,
  `item_id` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `quality` int(11) DEFAULT NULL,
  `information` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dropped` tinyint(4) NOT NULL DEFAULT 0,
  `creationDate` bigint(20) NOT NULL DEFAULT 0,
  `expiryDate` bigint(20) NOT NULL DEFAULT -1,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name` (`owner`) USING BTREE,
  KEY `slot` (`slot`,`owner`) USING BTREE,
  KEY `item_id` (`owner`,`item_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1164832 DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.inventory: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. inventory_shop_logs
CREATE TABLE IF NOT EXISTS `inventory_shop_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `inventory` varchar(255) NOT NULL DEFAULT '0',
  `item` varchar(255) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT 0,
  `itemId` bigint(20) DEFAULT NULL,
  `buyer` int(11) NOT NULL DEFAULT 0,
  `metadata` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.inventory_shop_logs: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `inventory_shop_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_shop_logs` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. item_template
CREATE TABLE IF NOT EXISTS `item_template` (
  `name` char(64) CHARACTER SET big5 COLLATE big5_bin NOT NULL,
  `label` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(256) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `type` int(11) NOT NULL,
  `rarity` int(11) NOT NULL,
  `iconOverride` varchar(256) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `price` int(10) unsigned NOT NULL DEFAULT 0,
  `weapon` varchar(256) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `state` varchar(256) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
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
  `qualification` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ammoType` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `bulletCount` int(10) unsigned DEFAULT NULL,
  `container` int(10) unsigned DEFAULT NULL,
  `staticMetadata` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `component` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `animConfig` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `statusChange` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `extra` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schematic` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.item_template: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `item_template` DISABLE KEYS */;
INSERT INTO `item_template` (`name`, `label`, `description`, `type`, `rarity`, `iconOverride`, `price`, `weapon`, `state`, `weight`, `imitate`, `isStackable`, `closeUi`, `metalic`, `durability`, `isUsable`, `isDestroyed`, `isRemoved`, `gun`, `requiresLicense`, `qualification`, `ammoType`, `bulletCount`, `container`, `staticMetadata`, `component`, `animConfig`, `statusChange`, `extra`, `schematic`) VALUES
	('AMMO_PISTOL', 'Pistol Ammo', NULL, 9, 1, NULL, 50, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_PISTOL', 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_PISTOL_PD', 'PD Pistol Ammo', NULL, 9, 1, 'AMMO_PISTOL', 5, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_PISTOL', 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_RIFLE', 'Rifle Ammo', NULL, 9, 1, NULL, 25, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_RIFLE', 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_RIFLE_PD', 'PD Rifle Ammo', NULL, 9, 1, 'AMMO_RIFLE', 10, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, 'PD_AR', 'AMMO_RIFLE', 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_RPG', 'Fookin Rockets Mate', NULL, 9, 1, NULL, 3, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_RPG', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_SHOTGUN', 'Shotgun Ammo', NULL, 9, 1, NULL, 30, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_SHOTGUN', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_SHOTGUN_PD', 'PD Shotgun Ammo', NULL, 9, 1, 'AMMO_SHOTGUN', 5, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, 'PD_BEANBAG', 'AMMO_SHOTGUN', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_SMG', 'SMG Ammo', NULL, 9, 1, NULL, 300, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_SMG', 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_SMG_PD', 'PD SMG Ammo', NULL, 9, 1, 'AMMO_SMG', 5, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, 'PD_SMG', 'AMMO_SMG', 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_SNIPER', 'Hunting Rifle Ammo', NULL, 9, 1, NULL, 250, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_SNIPER', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('AMMO_STUNGUN', 'Taser Ammo', NULL, 9, 1, NULL, 3, NULL, NULL, 1, NULL, 10, 1, 1, 2592000, 1, 1, 1, 0, 0, NULL, 'AMMO_STUNGUN', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('ATTCH_ADV_AR_SILENCER', 'Adv. Rifle Suppressor', NULL, 16, 4, NULL, 25000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"muzzle","returnItem":true,"strings":{"WEAPON_ASSAULTRIFLE_MK2":"COMPONENT_AT_AR_SUPP_02","WEAPON_RPK16":"COMPONENT_RPK16_MUZZLE_05","WEAPON_CARBINERIFLE_MK2":"COMPONENT_AT_AR_SUPP_02","WEAPON_PM4":"COMPONENT_MARKOMODS_SHARED_SUPP_14","WEAPON_BULLPUPRIFLE_MK2":"COMPONENT_AT_AR_SUPP","WEAPON_HK416":"COMPONENT_AT_HK416B_SUPP","WEAPON_SPECIALCARBINE_MK2":"COMPONENT_AT_AR_SUPP_02","WEAPON_G36":"COMPONENT_MARKOMODSG36_BARREL_03","WEAPON_AR15":"COMPONENT_AR15_SUPP_01"}}', NULL, NULL, NULL, NULL),
	('ATTCH_ADV_PISTOL_SILENCER', 'Adv. Pistol Suppressor', NULL, 16, 4, NULL, 25000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"muzzle","returnItem":true,"strings":{"WEAPON_SNSPISTOL_MK2":"COMPONENT_AT_PI_SUPP_02","WEAPON_GLOCK19":"COMPONENT_GLOCK19_SUPP_02","WEAPON_PISTOL_MK2":"COMPONENT_AT_PI_SUPP_02","WEAPON_GLOCK19_CIV":"COMPONENT_GLOCK19_CIV_SUPP_02","WEAPON_FM1_M9A3":"COMPONENT_FMSUPP_07"}}', NULL, NULL, NULL, NULL),
	('ATTCH_ADV_SMG_SILENCER', 'Adv. SMG Suppressor', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"muzzle","returnItem":true,"strings":{"WEAPON_MPX":"COMPONENT_MPX_BARREL_08","WEAPON_VECTOR":"COMPONENT_MARKOMODS_VECTOR_SUPP_1","WEAPON_PP19":"COMPONENT_PP19_MUZZLE_05","WEAPON_SMG_MK2":"COMPONENT_AT_PI_SUPP","WEAPON_HKUMP":"COMPONENT_UMP_SUPP_02","WEAPON_MINIUZI":"COMPONENT_MARKOMODSUZI_SUPP_02"}}', NULL, NULL, NULL, NULL),
	('ATTCH_AR_EXT_MAG', 'Extended AR Magazine', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"magazine","returnItem":true,"strings":{"WEAPON_ASSAULTRIFLE_MK2":"COMPONENT_ASSAULTRIFLE_MK2_CLIP_02","WEAPON_ADVANCEDRIFLE":"COMPONENT_ADVANCEDRIFLE_CLIP_02","WEAPON_BULLPUPRIFLE":"COMPONENT_BULLPUPRIFLE_CLIP_02","WEAPON_G36":"COMPONENT_MARKOMODSG36_CLIP_02","WEAPON_BULLPUPRIFLE_MK2":"COMPONENT_BULLPUPRIFLE_MK2_CLIP_02","WEAPON_ASSAULTRIFLE":"COMPONENT_ASSAULTRIFLE_CLIP_02","WEAPON_SPECIALCARBINE":"COMPONENT_SPECIALCARBINE_CLIP_02","WEAPON_FM1_HONEYBADGER":"COMPONENT_FMCLIP_02","WEAPON_AR15":"COMPONENT_AR15_CLIP_02","WEAPON_ASSAULTSMG":"COMPONENT_ASSAULTSMG_CLIP_02","WEAPON_CARBINERIFLE_MK2":"COMPONENT_CARBINERIFLE_MK2_CLIP_02","WEAPON_PM4":"COMPONENT_MARKOMODS_SHARED_556MAG_03","WEAPON_HK416":"COMPONENT_HK416B_CLIP_02","WEAPON_RPK16":"COMPONENT_RPK16_CLIP_05","WEAPON_COMPACTRIFLE":"COMPONENT_COMPACTRIFLE_CLIP_02","WEAPON_CARBINERIFLE":"COMPONENT_CARBINERIFLE_CLIP_02","WEAPON_AK74":"COMPONENT_AK74_CLIP_02","WEAPON_SPECIALCARBINE_MK2":"COMPONENT_SPECIALCARBINE_MK2_CLIP_02"}}', NULL, NULL, NULL, NULL),
	('ATTCH_AR_SILENCER', 'Rifle Suppressor', NULL, 16, 3, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"muzzle","returnItem":true,"strings":{"WEAPON_SPECIALRIFLE":"COMPONENT_AT_AR_SUPP","WEAPON_ADVANCEDRIFLE":"COMPONENT_AT_AR_SUPP","WEAPON_BULLPUPRIFLE":"COMPONENT_AT_AR_SUPP_02","WEAPON_ASSAULTRIFLE":"COMPONENT_AT_AR_SUPP_02","WEAPON_AK74":"COMPONENT_AK74_SUPP","WEAPON_CARBINERIFLE":"COMPONENT_AT_AR_SUPP"}}', NULL, NULL, NULL, NULL),
	('ATTCH_BOX_MAG', 'Box Magazine', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"magazine","returnItem":true,"strings":{"WEAPON_RPK16":"COMPONENT_RPK16_CLIP_06","WEAPON_CARBINERIFLE":"COMPONENT_CARBINERIFLE_CLIP_03","WEAPON_AK74":"COMPONENT_AK74_CLIP_03","WEAPON_G36":"COMPONENT_MARKOMODSG36_CLIP_04"}}', NULL, NULL, NULL, NULL),
	('ATTCH_DRUM_MAG', 'Drum Magazine', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"magazine","returnItem":true,"strings":{"WEAPON_MACHINEPISTOL":"COMPONENT_MACHINEPISTOL_CLIP_03","WEAPON_RPK16":"COMPONENT_RPK16_CLIP_07","WEAPON_G36":"COMPONENT_MARKOMODSG36_CLIP_03","WEAPON_MPX":"COMPONENT_MPX_CLIP_03","WEAPON_ASSAULTRIFLE":"COMPONENT_ASSAULTRIFLE_CLIP_03","WEAPON_PP19":"COMPONENT_PP19_CLIP_07","WEAPON_COMPACTRIFLE":"COMPONENT_COMPACTRIFLE_CLIP_03","WEAPON_COMBATPDW":"COMPONENT_COMBATPDW_CLIP_03","WEAPON_SPECIALCARBINE":"COMPONENT_SPECIALCARBINE_CLIP_03","WEAPON_MINIUZI":"COMPONENT_MARKOMODSUZI_CLIP_04"}}', NULL, NULL, NULL, NULL),
	('ATTCH_GRIP', 'Foregrip', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"grip","returnItem":true,"strings":{"WEAPON_RPK16":"COMPONENT_RPK16_GRIP_01","WEAPON_HKUMP":"COMPONENT_UMP_GRIP_01","WEAPON_G36":"COMPONENT_MARKOMODSG36_GRIP_02"}}', NULL, NULL, NULL, NULL),
	('ATTCH_HOLO', 'Holographic Sight', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"optic","returnItem":true,"strings":{"WEAPON_AR15":"COMPONENT_BEOWULF_SCOPE_04","WEAPON_P90FM":"COMPONENT_P90_SCOPE_07","WEAPON_RPK16":"COMPONENT_MARKOMODSG36_SCOPE_02","WEAPON_G36":"COMPONENT_MARKOMODSG36_SCOPE_04","WEAPON_MPX":"COMPONENT_MPX_SCOPE_04","WEAPON_PP19":"COMPONENT_PP19_SCOPE_07","WEAPON_HK416":"COMPONENT_AT_SCOPE_HK416B","WEAPON_HKUMP":"COMPONENT_UMP_SCOPE_04","WEAPON_L5":"COMPONENT_MARKOMODSL5_SCOPE_06","WEAPON_MINIUZI":"COMPONENT_MARKOMODSUZI_SCOPE_01"}}', NULL, NULL, NULL, NULL),
	('ATTCH_LRG_SCOPE', 'Large Scope', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"optic","returnItem":true,"strings":{"WEAPON_MPX":"COMPONENT_MPX_SCOPE_08","WEAPON_ASSAULTRIFLE_MK2":"COMPONENT_AT_SCOPE_MEDIUM_MK2","WEAPON_SPECIALCARBINE_MK2":"COMPONENT_AT_SCOPE_MEDIUM_MK2","WEAPON_G36":"COMPONENT_MARKOMODSG36_SCOPE_10","WEAPON_CARBINERIFLE_MK2":"COMPONENT_AT_SCOPE_MEDIUM_MK2"}}', NULL, NULL, NULL, NULL),
	('ATTCH_MED_SCOPE', 'Medium Scope', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"optic","returnItem":true,"strings":{"WEAPON_L5":"COMPONENT_MARKOMODSL5_SCOPE_09","WEAPON_RPK16":"COMPONENT_MARKOMODSG36_SCOPE_08","WEAPON_G36":"COMPONENT_MARKOMODSG36_SCOPE_09","WEAPON_MPX":"COMPONENT_MPX_SCOPE_06","WEAPON_BULLPUPRIFLE_MK2":"COMPONENT_AT_SCOPE_SMALL_MK2","WEAPON_HKUMP":"COMPONENT_UMP_SCOPE_10","WEAPON_CARBINERIFLE":"COMPONENT_AT_SCOPE_MEDIUM","WEAPON_SPECIALCARBINE":"COMPONENT_AT_SCOPE_MEDIUM","WEAPON_PP19":"COMPONENT_PP19_SCOPE_10"}}', NULL, NULL, NULL, NULL),
	('ATTCH_PISTOL_EXT_MAG', 'Extended Pistol Magazine', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"magazine","returnItem":true,"strings":{"WEAPON_SNSPISTOL":"COMPONENT_SNSPISTOL_CLIP_02","WEAPON_L5":"COMPONENT_MARKOMODSL5_CLIP_02","WEAPON_APPISTOL":"COMPONENT_APPISTOL_CLIP_02","WEAPON_MACHINEPISTOL":"COMPONENT_MACHINEPISTOL_CLIP_02","WEAPON_FIVESEVEN":"COMPONENT_FIVESEVEN_CLIP_02","WEAPON_2011":"COMPONENT_MARKOMODS2011_CLIP_02","WEAPON_PISTOL":"COMPONENT_PISTOL_CLIP_02","WEAPON_SNSPISTOL_MK2":"COMPONENT_SNSPISTOL_MK2_CLIP_02","WEAPON_GLOCK19":"COMPONENT_GLOCK19_CLIP_02","WEAPON_PISTOL50":"COMPONENT_PISTOL50_CLIP_02","WEAPON_M45A1":"COMPONENT_M45A1_CLIP_02","WEAPON_HEAVYPISTOL":"COMPONENT_HEAVYPISTOL_CLIP_02","WEAPON_GLOCK19_CIV":"COMPONENT_GLOCK19_CIV_CLIP_02","WEAPON_COMBATPISTOL":"COMPONENT_COMBATPISTOL_CLIP_02","WEAPON_FM1_M9A3":"COMPONENT_FM1_M9A3_CLIP_02","WEAPON_PISTOL_MK2":"COMPONENT_PISTOL_MK2_CLIP_02","WEAPON_FNX45":"COMPONENT_MARKOMODS_FNX45_MAG_03","WEAPON_P320A":"COMPONENT_MARKOMODSP320a_CLIP_02"}}', NULL, NULL, NULL, NULL),
	('ATTCH_PISTOL_SILENCER', 'Pistol Suppressor', NULL, 16, 3, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"muzzle","returnItem":true,"strings":{"WEAPON_2011":"COMPONENT_MARKOMODS2011_MUZZLE_02","WEAPON_HEAVYPISTOL":"COMPONENT_AT_PI_SUPP","WEAPON_FNX45":"COMPONENT_MARKOMODS_FNX45_SUPP_02","WEAPON_COMBATPISTOL":"COMPONENT_AT_PI_SUPP","WEAPON_M45A1":"COMPONENT_M45A1_SUPP_01","WEAPON_PISTOL":"COMPONENT_AT_PI_SUPP"}}', NULL, NULL, NULL, NULL),
	('ATTCH_REDDOT', 'Red Dot Sight', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"optic","returnItem":true,"strings":{"WEAPON_AR15":"COMPONENT_BEOWULF_SCOPE_09","WEAPON_RPK16":"COMPONENT_MARKOMODSG36_SCOPE_06","WEAPON_GLOCK19_CIV":"COMPONENT_GLOCK19_CIV_SCOPE_03","WEAPON_G36":"COMPONENT_MARKOMODSG36_SCOPE_03","WEAPON_HKUMP":"COMPONENT_UMP_SCOPE_04","WEAPON_PP19":"COMPONENT_PP19_SCOPE_02","WEAPON_SMG_MK2":"COMPONENT_AT_SIGHTS_SMG","WEAPON_GLOCK19":"COMPONENT_GLOCK19_SCOPE_03","WEAPON_L5":"COMPONENT_MARKOMODSL5_SCOPE_07","WEAPON_MINIUZI":"COMPONENT_MARKOMODSUZI_SCOPE_06"}}', NULL, NULL, NULL, NULL),
	('ATTCH_SMALL_SCOPE', 'Small Scope', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"optic","returnItem":true,"strings":{"WEAPON_ASSAULTRIFLE_MK2":"COMPONENT_AT_SCOPE_MACRO_MK2","WEAPON_ADVANCEDRIFLE":"COMPONENT_AT_SCOPE_SMALL","WEAPON_BULLPUPRIFLE":"COMPONENT_AT_SCOPE_SMALL","WEAPON_G36":"COMPONENT_MARKOMODSG36_SCOPE_06","WEAPON_SMG":"COMPONENT_AT_SCOPE_MACRO_02","WEAPON_BULLPUPRIFLE_MK2":"COMPONENT_AT_SCOPE_MACRO_02_MK2","WEAPON_SMG_MK2":"COMPONENT_AT_SCOPE_SMALL_SMG_MK2","WEAPON_MICROSMG":"COMPONENT_AT_SCOPE_MACRO","WEAPON_HKUMP":"COMPONENT_UMP_SCOPE_01","WEAPON_ASSAULTRIFLE":"COMPONENT_AT_SCOPE_MACRO","WEAPON_GLOCK19":"COMPONENT_GLOCK19_SCOPE_07","WEAPON_AR15":"COMPONENT_BEOWULF_SCOPE_10","WEAPON_L5":"COMPONENT_MARKOMODSL5_SCOPE_08","WEAPON_RPK16":"COMPONENT_MARKOMODSG36_SCOPE_04","WEAPON_ASSAULTSMG":"COMPONENT_AT_SCOPE_MACRO","WEAPON_PP19":"COMPONENT_PP19_SCOPE_06","WEAPON_GLOCK19_CIV":"COMPONENT_GLOCK19_CIV_SCOPE_07","WEAPON_CARBINERIFLE_MK2":"COMPONENT_AT_SCOPE_MACRO_MK2","WEAPON_MPX":"COMPONENT_MPX_SCOPE_03","WEAPON_MP9A":"COMPONENT_AT_SCOPE_MP9A","WEAPON_P90FM":"P90Scope4FluffysMods","WEAPON_COMBATPDW":"COMPONENT_AT_SCOPE_SMALL","WEAPON_MP5":"COMPONENT_AT_SCOPE_MP5","WEAPON_SPECIALCARBINE_MK2":"COMPONENT_AT_SCOPE_MACRO_MK2","WEAPON_CARBINERIFLE":"COMPONENT_CARBINERIFLE_CLIP_03","WEAPON_MINIUZI":"COMPONENT_MARKOMODSUZI_SCOPE_03"}}', NULL, NULL, NULL, NULL),
	('ATTCH_SMG_EXT_MAG', 'Extended SMG Magazine', NULL, 16, 4, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"magazine","returnItem":true,"strings":{"WEAPON_MP9A":"COMPONENT_MP9A_CLIP_02","WEAPON_SMG_MK2":"COMPONENT_SMG_MK2_CLIP_02","WEAPON_ASSAULTSMG":"COMPONENT_ASSAULTSMG_CLIP_02","WEAPON_HKUMP":"COMPONENT_UMP_CLIP_02","WEAPON_MINISMG":"COMPONENT_MINISMG_CLIP_02","WEAPON_PISTOL_MK2":"COMPONENT_PISTOL_MK2_CLIP_02","WEAPON_MPX":"COMPONENT_MPX_CLIP_02","WEAPON_VECTOR":"COMPONENT_MARKOMODS_VECTOR_CLIP_2","WEAPON_SMG":"COMPONENT_SMG_CLIP_02","WEAPON_PP19":"COMPONENT_PP19_CLIP_03","WEAPON_MP5":"COMPONENT_MP5_CLIP_02","WEAPON_MICROSMG":"COMPONENT_MICROSMG_CLIP_02","WEAPON_COMBATPDW":"COMPONENT_SNSPISTOL_MK2_CLIP_02","WEAPON_MINIUZI":"COMPONENT_MARKOMODSUZI_CLIP_03"}}', NULL, NULL, NULL, NULL),
	('ATTCH_SMG_SILENCER', 'SMG Suppressor', NULL, 16, 3, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"muzzle","returnItem":true,"strings":{"WEAPON_MP9A":"COMPONENT_AT_MP9A_SUPP_02","WEAPON_SMG":"COMPONENT_AT_PI_SUPP","WEAPON_MP5":"COMPONENT_AT_MP5_SUPP","WEAPON_MICROSMG":"COMPONENT_AT_AR_SUPP_02","WEAPON_MINIUZI":"COMPONENT_MARKOMODSUZI_SUPP_01"}}', NULL, NULL, NULL, NULL),
	('ATTCH_WEAPON_FLASHLIGHT', 'Weapon Flashlight', NULL, 16, 2, NULL, 15000, NULL, NULL, 2, NULL, 0, 1, 1, 5184000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '{"type":"flashlight","returnItem":true,"strings":{"WEAPON_MP9A":"COMPONENT_AT_MP9A_FLSH","WEAPON_APPISTOL":"COMPONENT_AT_PI_FLSH","WEAPON_ADVANCEDRIFLE":"COMPONENT_AT_AR_FLSH","WEAPON_BULLPUPRIFLE":"COMPONENT_AT_AR_FLSH","WEAPON_G36":"COMPONENT_MARKOMODSG36_FLASH_02","WEAPON_SMG":"COMPONENT_AT_AR_FLSH","WEAPON_BULLPUPRIFLE_MK2":"COMPONENT_AT_AR_FLSH","WEAPON_SMG_MK2":"COMPONENT_AT_AR_FLSH","WEAPON_SPECIALCARBINE":"COMPONENT_AT_AR_FLSH","WEAPON_FM1_HONEYBADGER":"COMPONENT_FMFLSH_12","WEAPON_AR15":"COMPONENT_BEOWULF_FLSH_01","WEAPON_ASSAULTSMG":"COMPONENT_AT_AR_FLSH","WEAPON_CARBINERIFLE_MK2":"COMPONENT_AT_AR_FLSH","WEAPON_MPX":"COMPONENT_MPX_FLSH_03","WEAPON_PUMPSHOTGUN":"COMPONENT_AT_AR_FLSH","WEAPON_CARBINERIFLE":"COMPONENT_AT_AR_FLSH","WEAPON_ASSAULTRIFLE_MK2":"COMPONENT_AT_AR_FLSH","WEAPON_2011":"COMPONENT_MARKOMODS2011_FLSH_03","WEAPON_PISTOL":"COMPONENT_AT_PI_FLSH","WEAPON_PM4":"COMPONENT_MARKOMODS_SHARED_FLASH_07a","WEAPON_FM1_M9A3":"COMPONENT_FMFLSH_01","WEAPON_HEAVYSHOTGUN":"COMPONENT_AT_AR_FLSH","WEAPON_FNX45":"COMPONENT_MARKOMODS_FNX45_FLASH_02","WEAPON_HK416":"COMPONENT_AT_HK416B_FLSH","WEAPON_PISTOL50":"COMPONENT_AT_PI_FLSH","WEAPON_M45A1":"COMPONENT_M45A1_FLSH_01","WEAPON_HEAVYPISTOL":"COMPONENT_AT_PI_FLSH","WEAPON_HKUMP":"COMPONENT_UMP_FLSH_03","WEAPON_P90FM":"COMPONENT_P90_FLSH_01","WEAPON_P320A":"COMPONENT_MARKOMODSP320a_FLASH_01","WEAPON_RPK16":"COMPONENT_RPK16_LASER_01","WEAPON_ASSAULTSHOTGUN":"COMPONENT_AT_AR_FLSH","WEAPON_ASSAULTRIFLE":"COMPONENT_AT_AR_FLSH","WEAPON_GLOCK19_CIV":"COMPONENT_GLOCK19_CIV_FLSH_01","WEAPON_COMBATPISTOL":"COMPONENT_AT_PI_FLSH","WEAPON_PUMPSHOTGUN_MK2":"COMPONENT_AT_AR_FLSH","WEAPON_SPECIALCARBINE_MK2":"COMPONENT_AT_AR_FLSH","WEAPON_50BEOWULF":"COMPONENT_BEOWULF_FLSH_01","WEAPON_COMBATPDW":"COMPONENT_AT_AR_FLSH","WEAPON_MP5":"COMPONENT_AT_AR_FLSH","WEAPON_PISTOL_MK2":"COMPONENT_AT_PI_FLSH_02","WEAPON_BULLPUPSHOTGUN":"COMPONENT_AT_AR_FLSH","WEAPON_MICROSMG":"COMPONENT_AT_PI_FLSH"}}', NULL, NULL, NULL, NULL),
	('BOBCAT_57', 'Six Eight', NULL, 2, 2, 'WEAPON_FIVESEVEN', 10000, 'WEAPON_FIVESEVEN', NULL, 10, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_COMBATPISTOL', 'Combat Pistol', NULL, 2, 1, 'WEAPON_COMBATPISTOL', 3200, 'WEAPON_COMBATPISTOL', NULL, 10, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_DBSHOTGUN', 'Double Barrel Shotgun', NULL, 2, 1, 'WEAPON_DBSHOTGUN', 10000, 'WEAPON_DBSHOTGUN', NULL, 12, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_DOUBLEACTION', 'Double Action Revolver', NULL, 2, 2, 'WEAPON_DOUBLEACTION', 8000, 'WEAPON_DOUBLEACTION', NULL, 10, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_FNX', 'SB 45 Tactical', NULL, 2, 1, 'WEAPON_FNX', 3200, 'WEAPON_FNX', NULL, 10, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_GLOCK19_CIV', 'F19X', NULL, 2, 3, 'WEAPON_GLOCK19', 6000, 'WEAPON_GLOCK19_CIV', NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_PISTOL50', 'Desert Eagle', NULL, 2, 2, 'WEAPON_PISTOL50', 6000, 'WEAPON_PISTOL50', NULL, 10, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_PUMPSHOTGUN', 'Pump Shotgun', NULL, 2, 2, 'WEAPON_PUMPSHOTGUN', 10000, 'WEAPON_PUMPSHOTGUN', NULL, 15, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_REVOLVER', 'Revolver', NULL, 2, 2, 'WEAPON_REVOLVER', 7000, 'WEAPON_REVOLVER', NULL, 10, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_SAWNOFFSHOTGUN', 'Sawnoff Shotgun', NULL, 2, 1, 'WEAPON_SAWNOFFSHOTGUN', 10000, 'WEAPON_SAWNOFFSHOTGUN', NULL, 12, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_SMG_MK2', 'SIG MPX', NULL, 2, 2, 'WEAPON_SMG_MK2', 10000, 'WEAPON_SMG_MK2', NULL, 12, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('BOBCAT_SNSPISTOL', 'SNS Pistol', NULL, 2, 2, 'WEAPON_SNSPISTOL', 3500, 'WEAPON_SNSPISTOL', NULL, 8, NULL, 0, 1, 1, 604800, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_2011', '2011 Tactical', NULL, 2, 3, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_50BEOWULF', 'SB .50 Beowulf', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_ADVANCEDRIFLE', 'Adv. Rifle', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_AK74', 'AK-74', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_APPISTOL', 'F18 Auto', NULL, 2, 2, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_AR15', 'SB556A1', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_AR15_PD', 'PD SB556A1', NULL, 2, 3, 'WEAPON_AR15', 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, 'PD_AR', 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_ASSAULTRIFLE', 'AK-47', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_ASSAULTRIFLE_MK2', 'AK-12', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_ASSAULTSHOTGUN', 'SB 12G Assault', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_ASSAULTSMG', 'F90', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_ASVAL', 'AS-VAL', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_AUTOSHOTGUN', 'Auto Shotty', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BALL', 'Ball', NULL, 2, 1, NULL, 1000, NULL, NULL, 5, NULL, 0, 1, 0, 1814400, 1, 0, 1, 1, 0, NULL, 'AMMO_BALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BAT', 'Baseball Bat', NULL, 2, 1, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BATTLEAXE', 'Battle Axe', NULL, 2, 2, NULL, 400, NULL, NULL, 18, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BEANBAG', 'Beanbag Gun', NULL, 2, 3, NULL, 300, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, 'PD_BEANBAG', 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BENELLIM2', 'BM2', NULL, 2, 1, NULL, 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BENELLIM2_PD', 'PD BM2', NULL, 2, 1, NULL, 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, 'PD_BEANBAG', 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BOTTLE', 'Broken Bottle', NULL, 2, 1, NULL, 400, NULL, NULL, 8, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BULLPUPRIFLE', 'Bullpup Rifle', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BULLPUPRIFLE_MK2', 'Bullpup Rifle Mk2', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BULLPUPSHOTGUN', 'SB Bullpup Shotgun', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_BZGAS', 'BZ Gas', NULL, 2, 4, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 1, 1, 1, NULL, 'AMMO_BZGAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_CARBINERIFLE', 'PD .556', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_CARBINERIFLE_MK2', 'PD .762', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_COMBATMG', 'LMG', NULL, 2, 3, NULL, 10000, NULL, NULL, 20, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_MG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_COMBATMG_MK2', 'LMG MK2', NULL, 2, 3, NULL, 10000, NULL, NULL, 20, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_MG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_COMBATPDW', 'Combat PDW', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_COMBATPISTOL', 'Combat Pistol', NULL, 2, 1, NULL, 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_COMPACTRIFLE', 'Draco', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_CROWBAR', 'Crowbar', NULL, 2, 1, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_CRUTCH', 'Crutch', NULL, 2, 1, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_DAGGER', 'Dagger', NULL, 2, 2, NULL, 400, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_DBSHOTGUN', 'Double Barrel Shotgun', NULL, 2, 1, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_DOUBLEACTION', 'Double Action Revolver', NULL, 2, 3, NULL, 8000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_DOUBLEBARRELFM', 'Double Barrel', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_DRBAT', 'Dr-Deshbat', NULL, 2, 1, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FIREEXTINGUISHER', 'Fire Extinguisher', NULL, 1, 1, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 1, 0, 0, 0, NULL, 'AMMO_FIREEXTINGUISHER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FIREWORK', 'Firework Launcher', NULL, 2, 1, NULL, 100000, NULL, NULL, 20, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, 'AMMO_FIREWORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FIVESEVEN', 'Six Eight', NULL, 2, 3, NULL, 10000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FLARE', 'Flare', NULL, 2, 3, NULL, 1000, NULL, NULL, 10, NULL, 10, 1, 1, 1209600, 1, 0, 1, 1, 0, NULL, 'AMMO_FLARE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FLAREGUN', 'Flaregun', NULL, 2, 3, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, 'AMMO_FLAREGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FLASHBANG', 'Flashbang', NULL, 2, 4, NULL, 1000, NULL, NULL, 1, NULL, 10, 1, 1, 1814400, 1, 0, 1, 1, 1, 'PD_SWAT', 'AMMO_FLASH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FLASHLIGHT', 'Flashlight', NULL, 2, 1, NULL, 75, NULL, NULL, 8, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FM1_CZ75', 'SB-69', NULL, 2, 1, NULL, 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FM1_HK416', 'HK416 FM1', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FM1_HONEYBADGER', 'Honey Badger', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FM1_M9A3', 'M9A3', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FM1_P226', 'SB 226', NULL, 2, 1, NULL, 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FM2_HK416', 'HK416 FM2', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FN509', 'SB-509', NULL, 2, 1, NULL, 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FNX', 'SB 45 Tactical', NULL, 2, 1, NULL, 3200, 'WEAPON_FNX45', NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_FNX45', 'SB 45 Tactical', NULL, 2, 1, 'WEAPON_FNX', 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_G36', 'F69', NULL, 2, 3, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_GLOCK19', 'PD F19', NULL, 2, 3, 'WEAPON_GLOCK19', 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_GLOCK19_CIV', 'F19', NULL, 2, 3, 'WEAPON_GLOCK19', 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_GOLFCLUB', 'Golf Club', NULL, 2, 1, NULL, 500, NULL, NULL, 12, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_GRENADE', 'Grenade', NULL, 2, 4, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 1, 1, 1, NULL, 'AMMO_GRENADE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_GRENADELAUNCHER_SMOKE', 'S Grenade Launcher', NULL, 2, 3, NULL, 100000, NULL, NULL, 20, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_GRENADELAUNCHER_SMOKE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_GUSENBERG', 'Tommy Gun', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HAMMER', 'Hammer', NULL, 2, 1, NULL, 500, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HATCHET', 'Hatchet', NULL, 2, 1, NULL, 400, NULL, NULL, 18, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HEAVYPISTOL', 'Heavy Pistol', NULL, 2, 2, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HEAVYSHOTGUN', 'Assault Shotgun', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HEAVYSNIPER', '.50 Sniper', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SNIPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HEAVYSNIPER_MK2', 'BFG-50A', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SNIPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HK417', 'HK417', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HKUMP', '.45 SMG', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 259200, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_HKUMP_PD', 'PD .45 SMG', NULL, 2, 3, 'WEAPON_HKUMP', 10000, NULL, NULL, 15, NULL, 0, 1, 1, 259200, 1, 0, 0, 1, 1, 'PD_SMG', 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_KATANAS', 'Katana', NULL, 2, 1, NULL, 2000, NULL, NULL, 3, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, 'NONE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_KNIFE', 'Knife', NULL, 2, 1, NULL, 400, NULL, NULL, 9, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_KNUCKLE', 'Knuckle Dusters', NULL, 2, 2, NULL, 400, NULL, NULL, 8, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_L5', 'Desert Eagle K8', NULL, 2, 3, 'WEAPON_PISTOL50', 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_LUCILLE', 'Lucille', NULL, 2, 1, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_M249', 'M249', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_MG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_M45A1', 'M45', NULL, 2, 3, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MACHETE', 'Machete', NULL, 2, 2, NULL, 700, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MACHINEPISTOL', 'TEC-9', NULL, 2, 3, NULL, 10000, NULL, NULL, 12, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MARKSMANPISTOL', 'Marksman Pistol', NULL, 2, 3, NULL, 7500, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MARKSMANRIFLE', 'F39 MMR', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SNIPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MARKSMANRIFLE_MK2', 'F39 MMR mk2', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SNIPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MCXRATTLER', 'MCX Rattler', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MCXSPEAR', 'MCX Spear', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MG', 'PKM', NULL, 2, 3, NULL, 10000, NULL, NULL, 20, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_MG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MICROSMG', 'MAC 10', NULL, 2, 3, NULL, 10000, NULL, NULL, 12, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MINISMG', 'Mini SMG', NULL, 2, 3, NULL, 10000, NULL, NULL, 12, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MINIUZI', 'Mini UZI', NULL, 2, 3, NULL, 10000, NULL, NULL, 5, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MK14', 'Mk14 EBR', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SNIPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MK47BANSHEE', 'MK47 Banshee S', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MK47BANSHEE2', 'MK47 Banshee A', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MK47FM', 'MK47 Mutant', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MOLOTOV', 'Molotov', NULL, 2, 4, NULL, 1000, NULL, NULL, 2, NULL, 5, 1, 0, 604800, 1, 0, 1, 1, 0, NULL, 'AMMO_MOLOTOV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MP5', 'SB54', NULL, 2, 3, 'WEAPON_SMG', 10000, 'WEAPON_MP5', NULL, 5, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MP9A', 'MP9', NULL, 2, 3, NULL, 10000, 'WEAPON_MP9A', NULL, 5, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MPX', 'MP 9mm', NULL, 2, 3, NULL, 10000, NULL, NULL, 5, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_MUSKET', 'Musket', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_NIGHTSTICK', 'Nightstick', NULL, 2, 1, NULL, 1000, NULL, NULL, 8, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_NSR9', 'NSR9', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_P3200A', 'SB9x19 Custom', NULL, 2, 3, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_P320A', 'SB 9x19a', NULL, 2, 2, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_P90FM', 'PDW', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PETROLCAN', 'Petrol Can', NULL, 2, 1, NULL, 150, NULL, NULL, 10, NULL, 0, 1, 0, 1814400, 1, 1, 0, 1, 0, NULL, 'AMMO_PETROLCAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PIPEBOMB', 'Pipe Bomb', NULL, 2, 4, NULL, 1000, NULL, NULL, 12, NULL, 10, 1, 1, 604800, 1, 0, 1, 1, 0, NULL, 'AMMO_PIPEBOMB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PISTOL', 'Pistol', NULL, 2, 1, NULL, 2000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PISTOL50', 'Desert Eagle', NULL, 2, 3, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PISTOL_MK2', 'PD 9MM', NULL, 2, 3, NULL, 2500, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PM4', 'M4', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PONY', 'Pony', NULL, 2, 2, NULL, 700, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_POOLCUE', 'Pool Cue', NULL, 2, 1, NULL, 200, NULL, NULL, 10, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PP19', 'PP-19', NULL, 2, 3, NULL, 10000, NULL, NULL, 5, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PROXMINE', 'Proximity Mine', NULL, 2, 4, NULL, 1000, NULL, NULL, 12, NULL, 10, 1, 1, 1814400, 1, 0, 1, 1, 1, NULL, 'AMMO_PROXMINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_PUMPSHOTGUN_MK2', 'PD Shotgun', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_REVOLVER', 'Revolver', NULL, 2, 3, NULL, 7000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_REVOLVER_MK2', 'Revolver MK2', NULL, 2, 3, NULL, 7000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_RFB', 'RFB', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_RPG', 'RPG', NULL, 2, 4, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 1, 1, 1, NULL, 'AMMO_RPG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_RPK16', 'RPK16', NULL, 2, 3, NULL, 6000, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SAWNOFFSHOTGUN', 'Sawnoff Shotgun', NULL, 2, 1, NULL, 10000, NULL, NULL, 12, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SHOTGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SHIV', 'Shiv', NULL, 2, 1, NULL, 2000, NULL, NULL, 1, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, 'NONE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SHOVEL', 'Shovel', NULL, 2, 1, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SLEDGE', 'Sledge Hammer', NULL, 2, 1, NULL, 1000, NULL, NULL, 12, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SMG', 'SMG', NULL, 2, 3, NULL, 10000, NULL, NULL, 5, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SMG_MK2', 'SMG Mk2', NULL, 2, 3, NULL, 10000, NULL, NULL, 12, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SMOKEGRENADE', 'Smoke Grenade', NULL, 2, 3, NULL, 1000, NULL, NULL, 1, NULL, 10, 1, 1, 1814400, 1, 0, 1, 1, 1, 'PD_SWAT', 'AMMO_SMOKEGRENADE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SNIPERRIFLE', '7.62 Sniper', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SNIPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SNIPERRIFLE2', 'Hunting Rifle', NULL, 2, 3, NULL, 1000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SNIPER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SNOWBALL', 'Snowball', NULL, 2, 1, NULL, 1000, NULL, NULL, 5, NULL, 0, 1, 0, 86400, 1, 0, 1, 1, 0, NULL, 'AMMO_SNOWBALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SNSPISTOL', 'SNS Pistol', NULL, 2, 2, NULL, 3500, NULL, NULL, 8, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SNSPISTOL_MK2', 'SNS Pistol MK2', NULL, 2, 3, NULL, 4500, NULL, NULL, 8, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SPECIALCARBINE', 'F36D', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SPECIALCARBINE_MK2', 'F36D Mk2', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_RIFLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_STICKYBOMB', 'C4', NULL, 2, 4, NULL, 1000, NULL, NULL, 12, NULL, 10, 1, 1, 1814400, 1, 0, 1, 1, 1, NULL, 'AMMO_STICKYBOMB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_STONE_HATCHET', 'Stone Hatchet', NULL, 2, 1, NULL, 300, NULL, NULL, 12, NULL, 0, 1, 0, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SWITCHBLADE', 'Switchblade', NULL, 2, 1, NULL, 400, NULL, NULL, 8, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_SWMP9', 'SB NQ9', NULL, 2, 1, NULL, 3200, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_TASER', 'Taser', NULL, 2, 1, NULL, 200, NULL, NULL, 5, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, 'AMMO_STUNGUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_UZI', 'Uzi', NULL, 2, 3, NULL, 10000, NULL, NULL, 12, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_VECTOR', 'Vector', NULL, 2, 3, NULL, 10000, NULL, NULL, 15, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_SMG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_VINTAGEPISTOL', 'Vintage Pistol', NULL, 2, 1, NULL, 5500, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 1, NULL, 'AMMO_PISTOL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('WEAPON_WRENCH', 'Pipe Wrench', NULL, 2, 1, NULL, 400, NULL, NULL, 10, NULL, 0, 1, 1, 1814400, 1, 0, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('accessory', 'Accessory', NULL, 13, 1, NULL, 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('adv_electronics_kit', 'Hacking Device', '<i>Marked For Police Seizure</i>', 7, 1, NULL, 7500, NULL, NULL, 1, NULL, 5, 1, 0, 2419200, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('adv_lockpick', 'Advanced Lockpick', NULL, 3, 2, NULL, 600, NULL, NULL, 1, NULL, 20, 1, 1, 2419200, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('amethyst', 'Amethyst', NULL, 11, 2, NULL, 1500, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('apple_crumble', 'Apple Crumble', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('armor', 'Body Armor', NULL, 1, 1, NULL, 750, NULL, NULL, 8, NULL, 5, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"adjust","pbConfig":{"label":"Equipping","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":5000}', NULL, NULL, NULL),
	('baconeggbiscuit', 'Bacon & Egg Biscuit', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":20},"Add":{"PLAYER_HUNGER":100}}', '{"armourModifier":15}', NULL),
	('baggy', 'Empty Baggy', NULL, 4, 1, NULL, 50, NULL, NULL, 0, NULL, 100, 1, 0, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('baguette', 'Baguette', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('bahama_mamas', 'Bahama Mamas', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('bandage', 'Bandage', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 30, 1, 0, 432000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Bandaging","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"anim":"bandage","time":2000,"dictName":"ifak"}', NULL, NULL, NULL),
	('bavarois', 'Bavarois', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('beanbag', 'A Beanbag', 'So Comfortable', 13, 1, NULL, 700, NULL, NULL, 2, NULL, 0, 1, 1, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('beanmachine', 'The Bean Machine', 'We take beans and put them in machines', 1, 1, NULL, 200, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Coffee","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":15}}', '{"progressModifier":{"min":3,"modifier":60,"max":6}}', NULL),
	('beef', 'Beef', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('beer', 'Beer', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('bento_box', 'Bento Box', 'Open Me!', 10, 1, NULL, 4, NULL, NULL, 10, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL),
	('big_tv', 'Television', 'Potentially Stolen', 6, 1, NULL, 3400, NULL, 'ANIM_bigtv', 100, NULL, 1, 0, 1, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('binoculars', 'Binoculars', NULL, 1, 4, NULL, 90, NULL, NULL, 3, NULL, 0, 1, 1, 1814400, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('birthday_cake', 'Birthday Cake', 'Happy Birthday', 5, 4, NULL, 240, NULL, NULL, 2, NULL, 1, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"Ignore":{"PLAYER_STRESS":20},"Add":{"PLAYER_HUNGER":100}}', '{"stressTicks":["3","3","3","3","3","3","3","3"]}', NULL),
	('blindfold', 'Blindfold', NULL, 13, 1, NULL, 2, NULL, NULL, 1, NULL, 0, 1, 0, 4320000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('bloody_mary', 'Bloody Mary', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('blue_dongle', 'USB Drive (Blue)', '<i>Marked For Police Seizure</i>', 3, 3, NULL, 10000, NULL, 'DONGLE_BLUE', 1, NULL, 0, 0, 1, 1814400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('blue_laptop', 'Laptop (Blue)', '<i>Marked For Police Seizure</i>', 3, 3, NULL, 10000, NULL, NULL, 1, NULL, 0, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('blue_sequencer', 'Blue Keypad Sequencer', '<i>Marked For Police Seizure</i>', 3, 1, NULL, 10000, NULL, NULL, 1, NULL, 0, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('blueberry_muffin', 'Blueberry Muffin', NULL, 1, 1, NULL, 105, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":50}}', '{"stressTicks":["2","2","1","1","1"]}', NULL),
	('boar_bait', 'Boar Bait', NULL, 7, 5, 'hunting_bait', 100, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('bobcat_charge', 'Breach Charge', 'Kinda like thermite, but more ... explosive', 7, 3, 'thermite', 1000, NULL, NULL, 3, NULL, 0, 1, 1, 3600, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('bobcat_tracker', 'GPS Tracker', NULL, 7, 4, NULL, 15000, NULL, NULL, 1, NULL, 0, 1, 0, 1814400, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('booba_tea', 'Bobba Tea', NULL, 1, 1, NULL, 125, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bubble_tea","pbConfig":{"label":"Drinking Tea","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":100}}', '{"progressModifier":{"min":2,"modifier":60,"max":4}}', NULL),
	('boombox', 'Boom Box', 'Potentially Stolen', 6, 1, NULL, 300, NULL, 'ANIM_boombox', 50, NULL, 1, 0, 1, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('boosting_tracking_disabler', 'Tracker Hacker Device', '<i>Marked For Police Seizure</i>', 7, 1, NULL, 7500, NULL, NULL, 1, NULL, 5, 1, 0, 2419200, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('bowling_ball', 'Bowling Ball', NULL, 7, 4, NULL, 0, NULL, 'ANIM_bowling_ball', 50, NULL, 0, 1, 1, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('briefcase_cash', 'Briefcase', 'Sandbox Lotto Event', 1, 4, NULL, 25000, NULL, NULL, 1, NULL, 0, 1, 0, 864000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('bun', 'Hamburger Bun', NULL, 1, 1, NULL, 5, NULL, NULL, 0, NULL, 200, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('burger', 'The Bleeder', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_bleeder","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Add":{"PLAYER_HUNGER":70}}', NULL, NULL),
	('burgershot_bag', 'Burgershot Bag', 'Have a Murder Meal!', 10, 1, NULL, 6, NULL, NULL, 10, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL),
	('burgershot_cup', 'BS Cup', NULL, 1, 1, NULL, 5, NULL, NULL, 0, NULL, 200, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('burgershot_drink', 'Burger Shot Drink', NULL, 1, 1, NULL, 10, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_drink","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Remove":{"PLAYER_HUNGER":0},"Add":{"PLAYER_THIRST":75}}', NULL, NULL),
	('burgershot_fries', 'Fries', NULL, 1, 1, NULL, 15, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_fries","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Add":{"PLAYER_HUNGER":60}}', NULL, NULL),
	('buttplug_black', 'Butt Plug', 'Part of the Uranus Butt Plug Corporation.', 1, 4, NULL, 200, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('buttplug_pink', 'Butt Plug', 'Part of the Uranus Butt Plug Corporation.', 1, 4, NULL, 200, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('camera', 'Camera', NULL, 1, 4, NULL, 200, NULL, NULL, 3, NULL, 0, 1, 1, 1814400, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('camping_chair', 'Foldable Chair', NULL, 13, 1, NULL, 400, NULL, NULL, 2, NULL, 0, 1, 1, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('car_bomb', 'Car Bomb', NULL, 3, 3, NULL, 1500, NULL, NULL, 5, NULL, 0, 1, 1, 1814400, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('carclean', 'Car Cleaning Kit', 'Make your car squeaky clean!', 3, 1, NULL, 425, NULL, NULL, 5, NULL, 100, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('card_holder', 'Card Holder', 'Store Those Cards!', 10, 1, NULL, 3, NULL, NULL, 2, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 91, NULL, NULL, NULL, NULL, NULL, NULL),
	('cardboard_box', 'Box', 'Open Me!', 10, 1, NULL, 8, NULL, 'ANIM_box', 50, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, NULL, NULL),
	('carpolish', 'Car Polish', 'Stop your car getting dirty!', 3, 1, NULL, 275, NULL, NULL, 2, NULL, 100, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('carpolish_high', 'Fantastic Car Wax', 'Stop your car getting dirty and keep it sqeaky clean!', 3, 2, NULL, 375, NULL, NULL, 2, NULL, 100, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('carrot_cake', 'Carrot Cake', 'A Lovely Comforting Cake', 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Ignore":{"PLAYER_STRESS":20},"Add":{"PLAYER_HUNGER":100}}', '{"stressTicks":["3","3","3","3","3","3","3","3"]}', NULL),
	('case_black', 'Phone Case: Black', NULL, 1, 1, NULL, 1000, NULL, NULL, 0, NULL, 0, 1, 0, 432000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Applying Case","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":3000}', NULL, '{"phoneCase":"black"}', NULL),
	('case_blue', 'Phone Case: Blue', NULL, 1, 1, NULL, 1000, NULL, NULL, 0, NULL, 0, 1, 0, 432000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Applying Case","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":3000}', NULL, '{"phoneCase":"blue"}', NULL),
	('case_gold', 'Phone Case: Gold', NULL, 1, 1, NULL, 25000, NULL, NULL, 0, NULL, 0, 1, 0, 432000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Applying Case","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":3000}', NULL, '{"phoneCase":"gold"}', NULL),
	('case_pink', 'Phone Case: Pink', NULL, 1, 1, NULL, 1000, NULL, NULL, 0, NULL, 0, 1, 0, 432000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Applying Case","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":3000}', NULL, '{"phoneCase":"pink"}', NULL),
	('case_white', 'Phone Case: White', NULL, 1, 1, NULL, 1000, NULL, NULL, 0, NULL, 0, 1, 0, 432000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Applying Case","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":3000}', NULL, '{"phoneCase":"white"}', NULL),
	('cat_cupcake', 'Cat Cupcake', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"donut","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Ignore":{"PLAYER_STRESS":10},"Add":{"PLAYER_HUNGER":40}}', NULL, NULL),
	('cat_donut', 'Cat Donut', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"donut","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Ignore":{"PLAYER_STRESS":10},"Add":{"PLAYER_HUNGER":40}}', NULL, NULL),
	('cat_tuccino', 'Cat Tuccino', NULL, 1, 1, NULL, 200, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Coffee","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":15}}', '{"progressModifier":{"min":6,"modifier":40,"max":10}}', NULL),
	('chain', 'Gold Chain', 'Potentially Stolen', 6, 1, NULL, 215, NULL, NULL, 1, NULL, 50, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('charlotte', 'Charlotte', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Add":{"PLAYER_HUNGER":100}}', '{"stressTicks":["1","1","1","1","3"]}', NULL),
	('cheese', 'Bag of Cheese', NULL, 4, 1, NULL, 4, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('cheeseburger', 'Cheese Burger', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Remove":{"PLAYER_THIRST":3},"Add":{"PLAYER_HUNGER":15}}', NULL, NULL),
	('chicken', 'Chicken', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('chicken_bait', 'Chicken Bait', NULL, 7, 5, 'hunting_bait', 100, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('chicken_wrap', 'Chicken Wrap', NULL, 1, 1, NULL, 65, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_wrap2","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_HUNGER":100}}', '{"stressTicks":["1","2","3","4","5"]}', NULL),
	('chickenfriedsteak', 'Chicken Fried Steak', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":15},"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('chickenpotpie', 'Chicken Pot Pie', 'A truly hearty meal', 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_HUNGER":100}}', '{"healthModifier":15,"stressTicks":["6","6","6"]}', NULL),
	('chips', 'Chips', NULL, 1, 1, NULL, 30, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Add":{"PLAYER_HUNGER":55}}', NULL, NULL),
	('choclat_eclair', 'Chocolate Eclair', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Add":{"PLAYER_HUNGER":100}}', '{"stressTicks":["1","1","1","1","3"]}', NULL),
	('choclate_pancakes', 'Chocolate Pancakes', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('chocolate_bar', 'Chocolate Bar', NULL, 1, 1, NULL, 25, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"egobar","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":10}}', NULL, NULL),
	('chocolate_shake', 'Chocolate Shake', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Add":{"PLAYER_THIRST":80,"PLAYER_HUNGER":20}}', '{"energyModifier":{"cooldown":60,"modifier":1.15,"duration":6,"skipScreenEffects":true},"stressTicks":["3","3","3","5","5","5"]}', NULL),
	('chocy_muff', 'Chocolate Muffin', NULL, 1, 1, NULL, 105, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":50}}', '{"stressTicks":["2","2","1","1","1"]}', NULL),
	('choplist', 'LSUNDG Shopping List', 'Personal list just for you, how special', 14, 4, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('choux', 'Choux Pastry', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Add":{"PLAYER_HUNGER":100}}', '{"stressTicks":["1","1","1","1","3"]}', NULL),
	('cigarette', 'Cigarette', NULL, 1, 1, NULL, 3, NULL, NULL, 0, NULL, 30, 1, 1, 864000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"animation":{"anim":"smoke_cigarette"},"label":"Smoking","disableMouse":false,"disarm":false,"disableCombat":false,"disableMovement":false,"canCancel":false,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', NULL, NULL, NULL),
	('cigarette_pack', 'Pack of Cigarettes', NULL, 1, 1, NULL, 20, NULL, NULL, 5, NULL, 0, 1, 1, 864000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Unpacking","disableMouse":false,"disarm":false,"disableCombat":false,"disableMovement":false,"ignoreModifier":true,"canCancel":false,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":2000}', NULL, NULL, NULL),
	('citrine', 'Citrine', NULL, 11, 2, NULL, 1500, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('cloth', 'Cloth', NULL, 6, 1, NULL, 4, NULL, NULL, 0, NULL, 1000, 0, 0, 2592000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('coconut_milk', 'Coconut Milk', NULL, 4, 1, NULL, 3, NULL, NULL, 1, NULL, 100, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('coffee', 'Coffee', NULL, 1, 1, NULL, 295, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Coffee","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Add":{"PLAYER_THIRST":15}}', '{"progressModifier":{"min":2,"modifier":70,"max":4}}', NULL),
	('coffee_beans', 'Coffee Beans', NULL, 1, 1, NULL, 7, NULL, NULL, 0, NULL, 300, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('coffee_holder', 'Drinks Holder', 'Open Me!', 10, 1, NULL, 3, NULL, NULL, 8, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, NULL, NULL),
	('coke_bag', 'Cocaine', NULL, 12, 1, NULL, 400, NULL, NULL, 0, NULL, 25, 1, 0, 1728000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"Remove":{"PLAYER_THIRST":5}}', '{"drugState":{"duration":3600,"type":"meth"}}', NULL),
	('coke_brick', 'Brick of Cocaine', NULL, 12, 1, NULL, 60, NULL, NULL, 5, NULL, 0, 1, 0, 1728000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('contraband', 'Mysterious Box', NULL, 14, 5, NULL, 1000, NULL, 'ANIM_box', 10, NULL, 0, 0, 0, 86400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('copperwire', 'Copper Wire', NULL, 4, 1, NULL, 10, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('cow_bait', 'Cow Bait', NULL, 7, 5, 'hunting_bait', 100, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('crisp', 'Crisps', 'Yeah, that\'s right. Crisps', 1, 1, NULL, 25, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":20}}', NULL, NULL),
	('croissant', 'Croissant', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Ignore":{"PLAYER_STRESS":10},"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('crushedrock', 'Crushed Rock', NULL, 6, 1, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('crypto_voucher', 'Crypto Voucher', NULL, 7, 4, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('cucumber', 'Cucumber', NULL, 4, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('deer_bait', 'Deer Bait', NULL, 7, 5, 'hunting_bait', 100, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('diamond', 'Diamond', NULL, 11, 4, NULL, 3000, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('diamond_drink', 'The Diamond Cocktail', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('diamond_vip', 'Diamond VIP', NULL, 5, 3, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('donut', 'Donut', NULL, 1, 1, NULL, 105, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"donut","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":15}}', '{"energyModifier":{"modifier":1.1,"duration":3,"cooldown":80},"stressTicks":["1","1","1","1","3"]}', NULL),
	('donut_stack', 'Stack of Donuts', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":5000}', '{"Add":{"PLAYER_HUNGER":80}}', '{"energyModifier":{"cooldown":60,"modifier":1.15,"duration":6,"skipScreenEffects":true},"stressTicks":["3","3","3","3","3"]}', NULL),
	('double_shot_burger', 'Double Shot', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_doubleshot","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('dough', 'Dough', NULL, 4, 1, NULL, 3, NULL, NULL, 0, NULL, 200, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('drill', 'Drill', NULL, 7, 1, NULL, 5000, NULL, NULL, 1, NULL, 0, 1, 0, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('earrings', 'Gold Earrings', 'Potentially Stolen', 6, 1, NULL, 185, NULL, NULL, 1, NULL, 100, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('eggs', 'Eggs', NULL, 4, 1, NULL, 2, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('electronic_parts', 'Electronic Parts', NULL, 4, 1, NULL, 250, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('electronics_kit', 'Electronics Kit', NULL, 7, 1, NULL, 7500, NULL, NULL, 1, NULL, 5, 1, 0, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('emerald', 'Emerald', NULL, 11, 4, NULL, 3000, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('energy_pepe', 'Energy Drink', NULL, 1, 1, NULL, 110, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"energydrink","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":6000}', '{"Add":{"PLAYER_THIRST":15}}', '{"energyModifier":{"modifier":1.15,"duration":4,"cooldown":60}}', NULL),
	('evidence-casing', 'Bullet Casing', 'Identifies the type of ammo used', 8, 1, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('evidence-dna', 'DNA Sample', NULL, 8, 1, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('evidence-paint', 'Paint Fragment', NULL, 8, 1, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('evidence-projectile', 'Bullet Projectile', 'Can be matched to the weapon it was fired from', 8, 1, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('exotic_bait', 'Exotic Bait', NULL, 7, 5, 'hunting_bait', 1000, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('expresso', 'Espresso', NULL, 1, 1, NULL, 200, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee_expresso","pbConfig":{"label":"Drinking Espresso","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":25}}', '{"progressModifier":{"min":6,"modifier":50,"max":10}}', NULL),
	('fakeplates', 'License Plates', 'A set of license plates from a vehicle', 3, 3, NULL, 5000, NULL, NULL, 2, NULL, 0, 1, 1, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fertilizer_nitrogen', 'Fertilizer (Nitrogen)', 'Nitrogen rich fertilizer improves viability of output when the plant is harvested.', 1, 1, NULL, 600, NULL, NULL, 3, NULL, 50, 1, 1, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fertilizer_phosphorus', 'Fertilizer (Phosphorus)', 'Phosphorus rich fertilizer helps increase plant growth speed.', 1, 1, NULL, 600, NULL, NULL, 3, NULL, 50, 1, 1, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fertilizer_potassium', 'Fertilizer (Potassium)', 'Potassium rich fertilizer helps keep plants hydrated.', 1, 1, NULL, 600, NULL, NULL, 3, NULL, 50, 1, 1, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fettuccini_alfredo', 'Fettuccini Alfredo', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('firstaid', 'First Aid Kit', NULL, 1, 2, NULL, 250, NULL, NULL, 5, NULL, 5, 1, 0, 432000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"firstaid","pbConfig":{"label":"Using First Aid Kit","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', NULL, NULL, NULL),
	('fishandchips', 'Fish and Chips', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":20000}', '{"Add":{"PLAYER_HUNGER":80}}', NULL, NULL),
	('fishing_bait_lugworm', 'Lugworm Bait', 'Marine Fish Bait', 7, 1, NULL, 10, NULL, NULL, 0, NULL, 50, 0, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_bait_worm', 'Worm Bait', 'Fresh Water Fish Bait', 7, 1, NULL, 15, NULL, NULL, 0, NULL, 50, 0, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_bass', 'Bass Fish', 'A fish found in the ocean', 4, 2, NULL, 70, NULL, NULL, 2, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_bike', 'Rusty Bicycle', 'I don\'t think this is worth anything', 6, 2, NULL, 250, NULL, NULL, 25, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_bluefintuna', 'Bluefin Tuna', NULL, 4, 3, NULL, 0, NULL, NULL, 4, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_boot', 'Soggy Boot', 'I think someone is missing a boot', 6, 3, NULL, 250, NULL, NULL, 5, NULL, 2, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_chest', 'Old Chest', 'Maybe There is Treasure!', 5, 4, NULL, 1500, NULL, 'ANIM_chest', 50, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_chub', 'Chub', 'A fish found in fresh water', 4, 2, NULL, 40, NULL, NULL, 2, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_dolphin', 'A Dolphin', NULL, 4, 4, NULL, 0, NULL, NULL, 50, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_grasscarp', 'Grass Carp', 'A fish found in fresh water', 4, 2, NULL, 40, NULL, NULL, 1, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_kelp', 'Kelp Fish', 'A fish found in the ocean', 4, 2, NULL, 50, NULL, NULL, 2, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_lobster', 'Lobster', 'It\'s a lobster', 4, 2, NULL, 0, NULL, NULL, 1, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_net', 'Fishing Net', 'Catch all the Fishies', 3, 2, NULL, 3000, NULL, NULL, 5, NULL, 0, 1, 1, 5184000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_oil', 'Fish Oil', 'Eww', 5, 4, NULL, 175, NULL, NULL, 0, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_rainbowtrout', 'Rainbow Trout', 'A fish found in fresh water', 4, 2, NULL, 60, NULL, NULL, 2, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_rockfish', 'Rock Fish', 'A fish found in the ocean', 4, 2, NULL, 70, NULL, NULL, 1, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_rod', 'Fishing Rod', 'Catch the Fishies', 3, 1, NULL, 900, NULL, NULL, 4, NULL, 0, 1, 1, 2592000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_seaweed', 'Seaweed', 'A salty snack', 4, 2, NULL, 30, NULL, NULL, 0, NULL, 250, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_shark', 'A Shark', NULL, 4, 4, NULL, 0, NULL, NULL, 75, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_tuna', 'Tuna', NULL, 4, 2, NULL, 0, NULL, NULL, 3, NULL, 25, 1, 0, 5184000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fishing_whale', 'A Whale', NULL, 4, 4, NULL, 0, NULL, NULL, 100, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fleeca_card', 'Disposable Access Card', 'This seems like it may be usefull', 14, 4, NULL, 10000, NULL, NULL, 0, NULL, 0, 1, 0, 21600, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fleeca_tracker', 'GPS Tracker', NULL, 7, 4, NULL, 15000, NULL, NULL, 1, NULL, 0, 1, 0, 1814400, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('flour', 'Bag of Flour', NULL, 4, 1, NULL, 2, NULL, NULL, 1, NULL, 60, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('fluffyhandcuffs', 'Fluffy Handcuffs', NULL, 3, 1, NULL, 600, NULL, NULL, 1, NULL, 0, 1, 0, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('foodbag', 'Carrier Bag', 'Open Me!', 10, 1, NULL, 4, NULL, NULL, 15, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, NULL, NULL),
	('fresh_lemonade', 'Fresh Lemonade', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Add":{"PLAYER_THIRST":40,"PLAYER_HUNGER":5}}', '{"energyModifier":{"cooldown":60,"modifier":1.15,"duration":6,"skipScreenEffects":true}}', NULL),
	('fries', 'Fries', NULL, 1, 1, NULL, 15, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_fries","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Add":{"PLAYER_HUNGER":30}}', NULL, NULL),
	('frosty_chain', 'Frosty Chain', 'Frosty Chain', 5, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"frosty"}', NULL),
	('frozen_yoghurt', 'Frozen Yoghurt', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Add":{"PLAYER_THIRST":10,"PLAYER_HUNGER":40}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":6,"skipScreenEffects":true}}', NULL),
	('fruit_explosion', 'Fruit Explosion', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":5000}', '{"Add":{"PLAYER_HUNGER":30,"PLAYER_THIRST":100}}', '{"energyModifier":{"cooldown":30,"modifier":1.2,"duration":4,"skipScreenEffects":true}}', NULL),
	('gascan', 'Gas Can', NULL, 1, 2, NULL, 25, NULL, NULL, 1, NULL, 5, 1, 0, 432000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"redd","pbConfig":{"label":"Drinking Gasoline","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":20000}', '{"Remove":{"PLAYER_THIRST":70}}', NULL, NULL),
	('gauze', 'Gauze', NULL, 1, 1, NULL, 10, NULL, NULL, 0, NULL, 30, 1, 0, 432000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Packing Wound","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"anim":"bandage","time":2000,"dictName":"gauze"}', NULL, NULL, NULL),
	('ginger', 'Ginger', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('gingerale', 'Gingerale', NULL, 1, 1, NULL, 25, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"soda","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Remove":{"PLAYER_HUNGER":0},"Add":{"PLAYER_THIRST":35}}', NULL, NULL),
	('glass_cock', 'Coke', 'Glass of Cock', 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Add":{"PLAYER_THIRST":60,"PLAYER_HUNGER":5}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":5,"skipScreenEffects":true}}', NULL),
	('glue', 'Glue', NULL, 4, 1, NULL, 150, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('goat_cheese_wrap', 'Goat Cheese Wrap', NULL, 1, 1, NULL, 65, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_wrap1","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_HUNGER":100}}', '{"stressTicks":["1","2","3","4","5"]}', NULL),
	('goldbar', 'Gold Bar', NULL, 4, 3, NULL, 500, NULL, NULL, 0, NULL, 10000, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('goldcoins', 'Gold Coins', 'Potentially Stolen', 6, 1, NULL, 90, NULL, NULL, 0, NULL, 1000, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('goldore', 'Gold Ore', NULL, 6, 3, NULL, 0, NULL, NULL, 0, NULL, 200, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('golfclubs', 'Golf Club Set', NULL, 6, 2, NULL, 450, NULL, 'ANIM_golfclubs', 100, NULL, 1, 0, 1, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('gotti_chain', 'Gotti Family Chain', 'Gotti Family Chain', 15, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"gotti"}', NULL),
	('government_badge', 'Badge', 'Government Issued Badge', 5, 1, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('govid', 'Government ID', NULL, 5, 1, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('gps', 'SB NavMaster', NULL, 7, 1, NULL, 5000, NULL, 'GPS', 1, NULL, 0, 0, 0, 1814400, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('gps_tracker', 'GPS Tracker', NULL, 7, 4, NULL, 15000, NULL, NULL, 1, NULL, 0, 1, 0, 1814400, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('grain', 'Grain', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('green_dongle', 'USB Drive (Green)', '<i>Marked For Police Seizure</i>', 3, 2, NULL, 5000, NULL, 'DONGLE_GREEN', 1, NULL, 0, 0, 1, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('green_laptop', 'Laptop (Green)', '<i>Marked For Police Seizure</i>', 3, 2, NULL, 5000, NULL, NULL, 1, NULL, 0, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('green_sequencer', 'Green Keypad Sequencer', '<i>Marked For Police Seizure</i>', 3, 1, NULL, 5000, NULL, NULL, 1, NULL, 0, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('green_tea', 'Green Tea', NULL, 1, 1, NULL, 125, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Tea","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Remove":{"PLAYER_DRUNK":10},"Add":{"PLAYER_THIRST":75}}', '{"progressModifier":{"min":1,"modifier":50,"max":2},"stressTicks":["5","4","3","2","1"]}', NULL),
	('guksu', 'Guksu', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_THIRST":10,"PLAYER_HUNGER":100}}', '{"armourModifier":10,"stressTicks":["3","3","3","5","5","5"]}', NULL),
	('gunpowder', 'Gun Powder', NULL, 4, 1, NULL, 1000, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hack_usb', 'Easy Hacker 3000', 'So easy, a caveman could maybe do it.', 7, 1, NULL, 15000, NULL, NULL, 1, NULL, 0, 1, 0, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('handcuffs', 'Handcuffs', NULL, 3, 1, NULL, 600, NULL, NULL, 1, NULL, 0, 1, 0, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('harness', 'Vehicle Harness', 'Stop flying to the moon!', 3, 2, NULL, 1150, NULL, NULL, 3, NULL, 0, 1, 1, NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hat', 'Hat', NULL, 13, 1, NULL, 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('heartstopper', 'Heart Stopper', NULL, 1, 1, NULL, 65, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_heartstopper","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":12},"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('heavy_glue', 'Heavy Duty Glue', NULL, 4, 1, NULL, 200, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('heavyarmor', 'Heavy Body Armor', NULL, 1, 2, NULL, 2250, NULL, NULL, 8, NULL, 5, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"adjust","pbConfig":{"label":"Equipping","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', NULL, NULL, NULL),
	('hide_tier1', 'Animal Hide (Tier 1)', NULL, 3, 1, NULL, 10000, NULL, NULL, 0, NULL, 100, 1, 0, 864000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hide_tier2', 'Animal Hide (Tier 2)', NULL, 3, 1, NULL, 10000, NULL, NULL, 0, NULL, 100, 1, 0, 864000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hide_tier3', 'Animal Hide (Tier 3)', NULL, 3, 1, NULL, 10000, NULL, NULL, 0, NULL, 100, 1, 0, 864000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hide_tier4', 'Animal Hide (Tier 4)', NULL, 3, 1, NULL, 10000, NULL, NULL, 0, NULL, 100, 1, 0, 864000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hobs', 'Hobs', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('homemade_cookie', 'Homemade Cookie', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":5000}', '{"Add":{"PLAYER_HUNGER":50}}', NULL, NULL),
	('hotdog', 'Hotdog', 'A dog but very hot', 1, 1, NULL, 20, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"hotdog","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Remove":{"PLAYER_THIRST":3},"Add":{"PLAYER_HUNGER":10}}', NULL, NULL),
	('hotdog_single', 'Hotdog Single', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('house_art', 'Painting', NULL, 6, 2, NULL, 3600, NULL, 'ANIM_house_art', 100, NULL, 1, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hunting_bait', 'Hunting Bait', NULL, 7, 5, NULL, 25, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hunting_map_dark', 'Hunting Map (Dark)', NULL, 5, 1, NULL, 25, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('hunting_map_light', 'Hunting Map (Light)', NULL, 5, 1, NULL, 25, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('iced_coffee', 'Iced Coffee', NULL, 1, 1, NULL, 200, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Coffee","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":25}}', '{"progressModifier":{"min":8,"modifier":75,"max":12}}', NULL),
	('icing', 'Icing', NULL, 4, 1, NULL, 3, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('ifak', 'IFAK', NULL, 1, 3, NULL, 200, NULL, NULL, 3, NULL, 5, 1, 0, 432000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"ifak","pbConfig":{"label":"Using IFAK","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', NULL, NULL, NULL),
	('ironbar', 'Iron Bar', NULL, 4, 1, NULL, 2500, NULL, NULL, 0, NULL, 10000, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('ironore', 'Iron Ore', NULL, 6, 3, NULL, 0, NULL, NULL, 0, NULL, 200, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('jaeger', 'Jägermeister', NULL, 1, 1, NULL, 150, NULL, NULL, 0, NULL, 10, 1, 0, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('jaeger_bomb', 'Jägerbomb', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('japanese_pan_noodles', 'Japanese Pan Noodles', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":12},"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('keg', 'Keg of Irish Stout', 'McDougle\'s Irish Stout™', 4, 1, NULL, 150, NULL, NULL, 2, NULL, 5, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('laptop', 'Laptop', NULL, 7, 2, NULL, 1250, NULL, 'LAPTOP', 4, NULL, 0, 1, 1, 2592000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('lasagna', 'Lasagna', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":12},"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('latte', 'Latte', NULL, 1, 1, NULL, 200, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Latte","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":25}}', '{"progressModifier":{"min":6,"modifier":40,"max":10}}', NULL),
	('lemonade', 'Lemonade', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Add":{"PLAYER_THIRST":40,"PLAYER_HUNGER":5}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":6,"skipScreenEffects":true}}', NULL),
	('lettuce', 'Lettuce', NULL, 4, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('loaf', 'Bread Loaf', NULL, 4, 1, NULL, 4, NULL, NULL, 1, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('lockpick', 'Lockpick', NULL, 3, 2, NULL, 200, NULL, NULL, 1, NULL, 50, 1, 1, 1209600, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('lockpick_pd', 'PD Lockpick', 'Only Usable By Police', 3, 1, 'lockpick', 200, NULL, NULL, 1, NULL, 10, 1, 1, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('lsundg_invite', 'LSUNDG Invitation', 'Gain access to an exclusive club, wow aren\'t you special', 7, 4, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('maki_calirolls', 'San Andreas Maki', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_THIRST":10,"PLAYER_HUNGER":100}}', '{"healthModifier":15}', NULL),
	('maki_tuna', 'Tuna Rolls', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_THIRST":10,"PLAYER_HUNGER":100}}', '{"healthModifier":15,"armourModifier":10}', NULL),
	('margherita_pizza', 'Margherita Pizza', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"pizza","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Ignore":{"PLAYER_STRESS":15},"Add":{"PLAYER_HUNGER":90}}', '{"healthModifier":10}', NULL),
	('mask', 'Mask', NULL, 13, 1, NULL, 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('matcha_latte', 'Matcha Latte', NULL, 1, 1, NULL, 200, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Latte","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":50}}', '{"progressModifier":{"min":3,"modifier":60,"max":6}}', NULL),
	('medicalkit', 'Medical Kit', 'Used to treat patients. Only usable by Doctors', 1, 1, NULL, 1000, NULL, NULL, 3, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('megaphone', 'Megaphone', 'Yell insults at people but from a longer distance', 3, 2, NULL, 1500, NULL, 'MEGAPHONE', 2, NULL, 0, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('meteorite_icecream', 'Meteorite Ice Cream', NULL, 1, 1, NULL, 65, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_icecream","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":20},"Add":{"PLAYER_THIRST":50,"PLAYER_HUNGER":50}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":2,"skipScreenEffects":true}}', NULL),
	('meth_bag', 'Meth', NULL, 12, 1, NULL, 400, NULL, NULL, 0, NULL, 25, 1, 0, 1728000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('meth_brick', 'Brick of Meth', NULL, 12, 1, NULL, 60, NULL, NULL, 5, NULL, 0, 1, 0, 1728000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('meth_pipe', 'Meth Pipe', NULL, 12, 1, NULL, 1000, NULL, NULL, 1, NULL, 0, 1, 0, 2592000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('meth_table', 'Meth Table', NULL, 3, 2, NULL, 200, NULL, NULL, 1, NULL, 0, 1, 1, 1209600, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('microwave', 'Microwave', 'Potentially Stolen', 6, 1, NULL, 500, NULL, 'ANIM_microwave', 50, NULL, 1, 0, 1, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('milk_can', 'Milk Canister', NULL, 4, 1, NULL, 4, NULL, NULL, 2, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('milk_chain', 'Milk Chain', 'Milk Chain', 5, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"milk"}', NULL),
	('milkshake', 'Explosive Shake', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Add":{"PLAYER_THIRST":80,"PLAYER_HUNGER":20}}', '{"armourModifier":10,"energyModifier":{"cooldown":60,"modifier":1.15,"duration":6,"skipScreenEffects":true}}', NULL),
	('million_shrtbread', 'Millionare Shortbread', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":5000}', '{"Add":{"PLAYER_HUNGER":80}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":6,"skipScreenEffects":true}}', NULL),
	('mint_mate_chain', 'Mint Mate Chain', 'It\'s Mint Mate', 15, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"mint_mate"}', NULL),
	('mint_mate_chain_2', 'Mint Mate Chain (Large)', 'It\'s Mint Mate ... but large', 15, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"mint_mate2"}', NULL),
	('mocha_shake', 'Mocha Shake', 'Go Crazy', 1, 1, NULL, 200, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Shake","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_HUNGER":10,"PLAYER_THIRST":50}}', '{"progressModifier":{"min":3,"modifier":60,"max":6}}', NULL),
	('moneybag', 'Bag of Cash', NULL, 14, 1, NULL, 10000, NULL, NULL, 3, NULL, 0, 1, 0, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('moneyband', 'Bands of Cash', NULL, 14, 1, NULL, 1000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('moneyroll', 'Cash Roll', NULL, 14, 1, NULL, 100, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('morphine', 'Morphine', NULL, 1, 1, NULL, 600, NULL, NULL, 1, NULL, 3, 1, 0, 432000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"label":"Administering Morphine","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":true,"canCancel":true,"disableCarMovement":true,"vehicle":false,"useWhileDead":false},"anim":"bandage","time":8000,"dictName":"morphine"}', NULL, NULL, NULL),
	('nails', 'Nails', NULL, 6, 1, NULL, 2, NULL, NULL, 0, NULL, 1000, 0, 0, 2592000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('nitrous', 'Nitrous Oxide', 'Copium', 3, 3, NULL, 2000, NULL, NULL, 3, NULL, 5, 1, 1, NULL, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, '{"Nitrous":100}', NULL, NULL, NULL, NULL, NULL),
	('onion_rings', 'Onion Rings', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_HUNGER":30}}', '{"stressTicks":["3","3","3","3","3"]}', NULL),
	('opal', 'Opal', NULL, 11, 1, NULL, 500, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('orange', 'Orange', NULL, 4, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('orangotang_icecream', 'Orangotang Ice Cream', NULL, 1, 1, NULL, 65, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_icecream2","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":20},"Add":{"PLAYER_THIRST":50,"PLAYER_HUNGER":50}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":2,"skipScreenEffects":true}}', NULL),
	('oxy', 'OxyContin', NULL, 12, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 1728000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"pbConfig":{"animation":{"animDict":"mp_suicide","anim":"pill","flags":50},"label":"Popping Oxy","disableMouse":false,"disarm":false,"disableCombat":false,"disableMovement":false,"ignoreModifier":true,"canCancel":false,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":2800}', '{"Remove":{"PLAYER_THIRST":3}}', '{"drugState":{"duration":3600,"type":"oxy"}}', NULL),
	('packaged_parts', 'Packaged Parts', NULL, 7, 5, NULL, 0, NULL, NULL, 4, NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pad_thai', 'Pad Thai', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_THIRST":10,"PLAYER_HUNGER":100}}', '{"armourModifier":10,"stressTicks":["3","3","3","5","5","5"]}', NULL),
	('paleto_access_codes', 'Access Codes', '<i>Marked For Police Seizure</i>', 3, 4, NULL, 2500, NULL, NULL, 1, NULL, 0, 1, 1, 14400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('paper_bag', 'Bag', 'Open Me!', 10, 1, NULL, 6, NULL, NULL, 10, NULL, 0, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL),
	('parachute', 'Parachute', NULL, 3, 2, NULL, 1000, NULL, NULL, 5, NULL, 0, 1, 0, 604800, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('parts_box', 'Scrap Box', NULL, 1, 3, NULL, 250, NULL, 'ANIM_box', 10, NULL, 0, 1, 0, 604800, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pasta_fresca', 'Pasta Fresca', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":20000}', '{"Add":{"PLAYER_HUNGER":80}}', NULL, NULL),
	('patty', 'Hamburger Patty', NULL, 1, 1, NULL, 10, NULL, NULL, 0, NULL, 200, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pc', 'PC', NULL, 6, 2, NULL, 1200, NULL, 'ANIM_pc', 80, NULL, 1, 0, 1, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pdarmor', 'PD Body Armor', NULL, 1, 3, NULL, 25, NULL, NULL, 8, NULL, 5, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"adjust","pbConfig":{"label":"Equipping","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', NULL, NULL, NULL),
	('pdhandcuffs', 'PD Handcuffs', NULL, 3, 4, NULL, 25, NULL, NULL, 0, NULL, 0, 1, 0, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('peach_juice', 'Peach Juice', NULL, 4, 1, NULL, 2, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('peas', 'Peas', NULL, 4, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('penna_rosa', 'Penne Rosa', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":20000}', '{"Add":{"PLAYER_HUNGER":85}}', NULL, NULL),
	('pepperoni_pizza', 'Pepperoni Pizza', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"pizza","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Ignore":{"PLAYER_STRESS":15},"Add":{"PLAYER_HUNGER":100}}', '{"armourModifier":20}', NULL),
	('personal_plates', 'Personal Plate', 'Set a personal plate for a vehicle.', 3, 3, NULL, 5000, NULL, NULL, 1, NULL, 10, 1, 1, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('personal_plates_donator', 'Personal Plate', 'Set a personal plate for a vehicle.', 3, 3, 'personal_plates', 5000, NULL, NULL, 1, NULL, 10, 1, 1, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pesto_cavatappi', 'Pesto Cavatappi', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":17000}', '{"Add":{"PLAYER_HUNGER":75}}', NULL, NULL),
	('petrock', 'Pet Rock', 'Please take care of me', 5, 4, NULL, 10, NULL, NULL, 1, NULL, 0, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('phone', 'Phone', NULL, 7, 1, NULL, 100, NULL, 'PHONE', 1, NULL, 0, 1, 0, 1814400, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pickaxe', 'Pickaxe', NULL, 3, 1, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, 86400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pickle', 'Pickle', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pig_bait', 'Pig Bait', NULL, 7, 5, 'hunting_bait', 100, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pina_colada', 'Pina Colada', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pineapple', 'Pineapple', NULL, 4, 1, NULL, 1, NULL, NULL, 1, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pint_mcdougles', 'McDougle\'s Stout', 'McDougle\'s Irish Stout™', 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 604800, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pipe', 'Pipe', NULL, 6, 1, NULL, 12, NULL, NULL, 0, NULL, 100, 0, 0, 2592000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pixels_chain', 'Business Bureau Chain', 'Business Bureau Chain', 5, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"lua"}', NULL),
	('plastic', 'Plastic', NULL, 4, 1, NULL, 10, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('plastic_cup', 'Plastic Cup', NULL, 1, 1, NULL, 5, NULL, NULL, 0, NULL, 200, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('plastic_wrap', 'Plastic Wrap', NULL, 4, 1, NULL, 50, NULL, NULL, 0, NULL, 5, 1, 0, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('popcorn', 'Popcorn', NULL, 1, 1, NULL, 25, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"popcorn","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Remove":{"PLAYER_THIRST":3},"Add":{"PLAYER_HUNGER":20}}', NULL, NULL),
	('popcorn_bucket', 'Empty Bucket', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('popcorn_kernal', 'Popcorn Kernal', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('pork', 'Pork', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('potato', 'Potato', NULL, 4, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('prickly_burger', 'The Prickly', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_prickly","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('prison_drink', 'Prison Drink', NULL, 1, 1, NULL, 5, NULL, NULL, 1, NULL, 15, 1, 0, 86400, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"soda","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_THIRST":100}}', NULL, NULL),
	('prison_food', 'Prison Food', NULL, 1, 1, NULL, 5, NULL, NULL, 1, NULL, 15, 1, 0, 86400, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('pumpkinspiced_latte', 'Pumpkin Spice Latte', NULL, 1, 1, NULL, 200, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"coffee","pbConfig":{"label":"Drinking Coffee","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":7500}', '{"Add":{"PLAYER_THIRST":25}}', '{"progressModifier":{"min":3,"modifier":60,"max":6}}', NULL),
	('purple_dongle', 'USB Drive (Purple)', '<i>Marked For Police Seizure</i>', 3, 2, NULL, 5000, NULL, 'DONGLE_PURPLE', 1, NULL, 0, 0, 1, 604800, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('purple_laptop', 'Laptop (Purple)', '<i>Marked For Police Seizure</i>', 3, 3, NULL, 10000, NULL, NULL, 1, NULL, 0, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rabbit', 'Rabbit', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rabbit_bait', 'Rabbit Bait', NULL, 7, 5, 'hunting_bait', 100, NULL, NULL, 2, NULL, 20, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('racedongle', 'Phone Dongle', 'Its a dongly boi', 7, 4, NULL, 0, NULL, 'RACE_DONGLE', 3, NULL, 0, 1, 0, 1814400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('racing_crappy', 'Homemade Phone Dongle', 'Its a really shitty dongly boi', 7, 4, NULL, 0, NULL, 'RACE_DONGLE', 1, NULL, 0, 1, 0, 43200, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('radio', 'Encrypted Radio', 'Encrypted Communication Device for Emergency Services', 3, 2, NULL, 725, NULL, 'RADIO_ENCRYPTED', 1, NULL, 0, 1, 0, 5184000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('radio_extendo', 'B0085 Radio', 'Used for Slightly Longer Range Communication', 3, 3, NULL, 10000, NULL, 'RADIO_EXTENDO', 1, NULL, 0, 1, 0, 1814400, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('radio_shitty', 'P6900 Radio', 'High Frequency Used for Short Range Communication', 3, 1, NULL, 2500, NULL, 'RADIO_CIV', 1, NULL, 0, 1, 0, 1814400, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('raspberry', 'Raspberry', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('raspberry_liqueur', 'Raspberry Liqueur', NULL, 4, 1, NULL, 5, NULL, NULL, 0, NULL, 30, 1, 0, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('raspberry_mimosa', 'Raspberry Mimosa', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('ravioli', 'Ravioli', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_THIRST":10,"PLAYER_HUNGER":100}}', '{"armourModifier":10,"stressTicks":["3","3","3","5","5","5"]}', NULL),
	('recycledgoods', 'Recycled Goods', NULL, 6, 1, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('red_dongle', 'USB Drive (Red)', '<i>Marked For Police Seizure</i>', 3, 4, NULL, 25000, NULL, 'DONGLE_RED', 1, NULL, 0, 0, 1, 1814400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('red_laptop', 'Laptop (Red)', '<i>Marked For Police Seizure</i>', 3, 4, NULL, 25000, NULL, NULL, 1, NULL, 0, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('red_sequencer', 'Red Keypad Sequencer', '<i>Marked For Police Seizure</i>', 3, 1, NULL, 25000, NULL, NULL, 1, NULL, 0, 1, 1, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('redlight', 'Handheld Light', NULL, 7, 2, NULL, 1000, NULL, NULL, 2, NULL, 0, 1, 1, 2592000, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('refined_copper', 'Refined Copper', NULL, 4, 4, NULL, 10000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('refined_electronics', 'Advanced Electronic Parts', NULL, 4, 4, NULL, 10000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('refined_glue', 'Refined Glue', NULL, 4, 4, NULL, 10000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('refined_iron', 'Refined Iron', NULL, 4, 4, NULL, 10000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('refined_metal', 'Refined Aluminum', NULL, 4, 4, NULL, 10000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('refined_plastic', 'Refined Plasic', NULL, 4, 4, NULL, 10000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('refined_rubber', 'Refined Rubber', NULL, 4, 4, NULL, 10000, NULL, NULL, 0, NULL, 1000, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rental_papers', 'Rental Papers', 'Documents that prove who rented a vehicle.', 6, 1, NULL, 0, NULL, NULL, 1, NULL, 0, 0, 0, 86400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rep_voucher', 'Rep Voucher', NULL, 7, 4, 'crypto_voucher', 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_axle', 'Axle Parts', 'Vehicle Axle Parts', 3, 1, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_brakes', 'Brakes', 'Vehicle Brakes', 3, 1, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_brakes_hg', 'HG Brakes', '(High Grade) Vehicle Brakes', 3, 2, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_clutch', 'Clutch', 'Vehicle Clutch', 3, 1, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_clutch_hg', 'HG Clutch', '(High Grade) Vehicle Clutch', 3, 2, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_electronics', 'Vehicle Electronics', 'Vehicle Electronic Parts', 3, 1, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_injectors', 'Fuel Injectors', 'Vehicle Fuel Injectors', 3, 1, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_injectors_hg', 'HG Fuel Injectors', '(High Grade) Vehicle Fuel Injectors', 3, 2, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_rad', 'Radiator', 'Vehicle Radiator', 3, 1, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_rad_hg', 'HG Radiator', '(High Grade) Vehicle Radiator', 3, 2, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_transmission', 'Transmission Parts', 'Vehicle Transmission', 3, 1, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repair_part_transmission_hg', 'HG Transmission Parts', '(High Grade) Vehicle Transmission Parts', 3, 2, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repairkit', 'Repair Kit', 'Fixes a vehicles engine so it can be driven again.', 3, 1, NULL, 350, NULL, NULL, 10, NULL, 4, 1, 1, 604800, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('repairkitadv', 'Advanced Repair Kit', 'Fixes a vehicles engine and tires so it can be driven again.', 3, 2, NULL, 600, NULL, NULL, 15, NULL, 2, 1, 1, 1209600, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rice', 'Bag of Rice', NULL, 4, 1, NULL, 5, NULL, NULL, 1, NULL, 60, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('ring', 'Ring', 'Potentially Stolen', 6, 1, NULL, 185, NULL, NULL, 1, NULL, 100, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rolex', 'Rolex', 'Potentially Stolen', 6, 2, NULL, 500, NULL, NULL, 1, NULL, 50, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rolling_paper', 'Rolling Paper', NULL, 4, 1, NULL, 20, NULL, NULL, 0, NULL, 30, 1, 0, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rootbeerfloat', 'Root Beer Float', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":10000}', '{"Remove":{"PLAYER_STRESS":10},"Add":{"PLAYER_THIRST":90,"PLAYER_HUNGER":10}}', NULL, NULL),
	('rubber', 'Rubber', NULL, 4, 1, NULL, 10, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('ruby', 'Ruby', NULL, 11, 3, NULL, 2250, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('rum', 'Rum', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 5184000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('safecrack_kit', 'Safe Cracking Kit', '<i>Marked For Police Seizure</i>', 7, 1, NULL, 2500, NULL, NULL, 1, NULL, 0, 1, 0, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('saint_chain', 'Saint Chain', 'Saint Chain', 5, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"saint"}', NULL),
	('salad', 'Salad', NULL, 1, 1, NULL, 150, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":50}}', '{"healthModifier":7}', NULL),
	('salisbury_steak', 'Salisbury Steak', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_HUNGER":100}}', '{"healthModifier":15,"stressTicks":["6","6","6"]}', NULL),
	('salvagedparts', 'Salvaged Parts', NULL, 6, 1, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('san_manzano_pizza', 'San Manzano Pizza', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"pizza","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":18000}', '{"Ignore":{"PLAYER_STRESS":15},"Add":{"PLAYER_HUNGER":100}}', '{"armourModifier":25}', NULL),
	('sandwich', 'Ham Sandwich', NULL, 1, 1, NULL, 3, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', '{"Add":{"PLAYER_HUNGER":15}}', NULL, NULL),
	('sandwich_beef', 'Beef Sandwich', NULL, 1, 1, NULL, 6, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', '{"Add":{"PLAYER_HUNGER":42}}', NULL, NULL),
	('sandwich_blt', 'BLT Sandwich', NULL, 1, 1, NULL, 5, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', '{"Add":{"PLAYER_HUNGER":45}}', NULL, NULL),
	('sandwich_chips', 'Chip Butty', NULL, 1, 1, NULL, 3, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', '{"Add":{"PLAYER_HUNGER":40}}', NULL, NULL),
	('sandwich_crisp', 'Crisp Sandwich', NULL, 1, 1, NULL, 3, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', '{"Add":{"PLAYER_HUNGER":30}}', NULL, NULL),
	('sandwich_egg', 'Egg Sandwich', NULL, 1, 1, NULL, 3, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', '{"Add":{"PLAYER_HUNGER":35}}', NULL, NULL),
	('sandwich_turkey', 'Turkey Sandwich', NULL, 1, 1, NULL, 4, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"sandwich","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":11000}', '{"Add":{"PLAYER_HUNGER":40}}', NULL, NULL),
	('sapphire', 'Sapphire', NULL, 11, 3, NULL, 2250, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sashimi_mix', 'Sashimi Mix', NULL, 1, 1, NULL, 100, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_THIRST":10,"PLAYER_HUNGER":100}}', '{"healthModifier":15,"armourModifier":10,"stressTicks":["3","3","3","5","5","5"]}', NULL),
	('sausageroll', 'Sausage Roll', NULL, 1, 1, NULL, 15, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":8000}', '{"Add":{"PLAYER_HUNGER":40}}', NULL, NULL),
	('schematic_2011', 'Schematic: 2011 Tactical', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tact2011'),
	('schematic_57', 'Schematic: Six Eight', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fiveseven'),
	('schematic_adv_ar_suppressor', 'Schematic: Adv. AR Suppressor', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adv_ar_suppressor'),
	('schematic_adv_pistol_suppressor', 'Schematic: Adv. Pistol Suppressor', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adv_pistol_suppressor'),
	('schematic_adv_smg_suppressor', 'Schematic: Adv. SMG Suppressor', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'adv_smg_suppressor'),
	('schematic_advrifle', 'Schematic: Adv. Rifle', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'advrifle'),
	('schematic_ak74', 'Schematic: AK-74', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ak74'),
	('schematic_appistol', 'Schematic: F18 Auto', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'appistol'),
	('schematic_ar', 'Schematic: AK-47', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar'),
	('schematic_ar15', 'Schematic: AR-15', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar15'),
	('schematic_ar_suppressor', 'Schematic: AR Suppressor', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ar_suppressor'),
	('schematic_asval', 'Schematic: AS-VAL', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asval'),
	('schematic_blindfold', 'Schematic: Blindfold', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'blindfold'),
	('schematic_blue_laptop', 'Schematic: Blue Laptop', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'blue_laptop'),
	('schematic_box_mag', 'Schematic: Box Mag', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'box_mag'),
	('schematic_combat_pistol', 'Schematic: Combat Pistol', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'combatpistol'),
	('schematic_deagle', 'Schematic: Desert Eagle', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'deagle'),
	('schematic_doubleaction', 'Schematic: Double Action Revolver', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'doubleaction'),
	('schematic_draco', 'Schematic: Draco', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'draco'),
	('schematic_drum_mag', 'Schematic: Drum Mag', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drum_mag'),
	('schematic_fnx', 'Schematic: SB 45 Tactical', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fnx'),
	('schematic_g36', 'Schematic: F69', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'g36'),
	('schematic_glock', 'Schematic: F19', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'glock'),
	('schematic_green_laptop', 'Schematic: Green Laptop', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'green_laptop'),
	('schematic_handcuffs', 'Schematic: Handcuffs', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'handcuffs'),
	('schematic_heavypistol', 'Schematic: Heavy Pistol', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'heavypistol'),
	('schematic_hk16a', 'Schematic: HK16A', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hk16a'),
	('schematic_hk16b', 'Schematic: HK16B', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hk16b'),
	('schematic_hk417', 'Schematic: HK417', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hk417'),
	('schematic_honeybadger', 'Schematic: Honey Badger', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'honeybadger'),
	('schematic_l5', 'Schematic: Desert Eagle K8', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'l5'),
	('schematic_m9a3', 'Schematic: M9A3', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'm9a3'),
	('schematic_mcxrattler', 'Schematic: MCX Rattler', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mcxrattler'),
	('schematic_mcxspear', 'Schematic: MCX Spear', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mcxspear'),
	('schematic_microsmg', 'Schematic: MAC 10', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'microsmg'),
	('schematic_miniuzi', 'Schematic: Mini UZI', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'miniuzi'),
	('schematic_mk47a', 'Schematic: MK47 A', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mk47a'),
	('schematic_mk47mutant', 'Schematic: MK47 Mutant', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mk47mutant'),
	('schematic_mk47s', 'Schematic: MK47 S', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mk47s'),
	('schematic_mp5', 'Schematic: SB54', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mp5'),
	('schematic_mp9', 'Schematic: MP9', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mp9'),
	('schematic_mpx', 'Schematic: MP 9mm', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mpx'),
	('schematic_nsr9', 'Schematic: NSR9', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nsr9'),
	('schematic_p90', 'Schematic: PDW', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ump'),
	('schematic_pistol', 'Schematic: Pistol', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pistol'),
	('schematic_pistol_ammo', 'Schematic: Pistol Ammo', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pistol_ammo'),
	('schematic_pistol_ext_mag', 'Schematic: Pistol Ext. Mag', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pistol_ext_mag'),
	('schematic_pistol_suppressor', 'Schematic: Pistol Suppressor', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pistol_suppressor'),
	('schematic_pp19', 'Schematic: PP-19', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pp19'),
	('schematic_purple_laptop', 'Schematic: Purple Laptop', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'purple_laptop'),
	('schematic_radio_extendo', 'Schematic: B0085 Radio', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'radio_extendo'),
	('schematic_redlaptop', 'Schematic: Red Laptop', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'red_laptop'),
	('schematic_revolver', 'Schematic: Revolver', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'revolver'),
	('schematic_rfb', 'Schematic: RFB', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rfb'),
	('schematic_rifle_ext_mag', 'Schematic: AR Ext. Mag', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rifle_ext_mag'),
	('schematic_rpk', 'Schematic: RPK16', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rpk'),
	('schematic_scope_holo', 'Schematic: Holographic Sight', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scope_holo'),
	('schematic_scope_lrg', 'Schematic: Large Scope', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scope_lrg'),
	('schematic_scope_med', 'Schematic: Medium Scope', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scope_med'),
	('schematic_scope_reddot', 'Schematic: Red Dot Sight', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scope_reddot'),
	('schematic_scope_small', 'Schematic: Small Scope', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'scope_small'),
	('schematic_shotgun_ammo', 'Schematic: Shotgun Ammo', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'shotgun_ammo'),
	('schematic_smg', 'Schematic: SMG', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smg'),
	('schematic_smg_ammo', 'Schematic: SMG Ammo', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smg_ammo'),
	('schematic_smg_ext_mag', 'Schematic: SMG Ext. Mag', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smg_ext_mag'),
	('schematic_smg_suppressor', 'Schematic: SMG Suppressor', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smg_suppressor'),
	('schematic_smgmk2', 'Schematic: SMG Mk2', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'smgmk2'),
	('schematic_sns', 'Schematic: SNS Pistol', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sns'),
	('schematic_tec9', 'Schematic: TEC-9', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tech9'),
	('schematic_thermite', 'Schematic: Thermite', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'thermite'),
	('schematic_tommygun', 'Schematic: Tommy Gun', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tommygun'),
	('schematic_ump', 'Schematic: .45 SMG', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ump'),
	('schematic_vector', 'Schematic: Vector', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vector'),
	('schematic_weapon_flashlight', 'Schematic: Weapon Flashlight', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'weapon_flashlight'),
	('schematic_yellow_laptop', 'Schematic: Yellow Laptop', NULL, 17, 1, 'schematic', 5000, NULL, NULL, 0, NULL, 0, 0, 0, 1814400, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'yellow_laptop'),
	('scrapmetal', 'Scrap Metal', NULL, 4, 1, NULL, 10, NULL, NULL, 0, NULL, 10000, 0, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('screwdriver', 'Screwdriver', NULL, 3, 1, NULL, 400, NULL, NULL, 0, NULL, 0, 1, 1, 259200, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('scuba_gear', 'Scuba Gear', NULL, 3, 2, NULL, 1000, NULL, NULL, 10, NULL, 0, 1, 1, 1209600, 1, 1, 0, 0, 0, 'EMS_DIVING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sequencer', 'Yellow Keypad Sequencer', '<i>Marked For Police Seizure</i>', 3, 1, NULL, 2500, NULL, NULL, 1, NULL, 0, 1, 1, 1209600, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_dontblock', 'Do Not Block Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_leftturn', 'Left Turn Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 1, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_nopark', 'No Parking Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_notresspass', 'No Tresspassing Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_rightturn', 'Right Turn Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_stop', 'Stop Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_uturn', 'U-Turn Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_walkingman', 'Walking Man Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sign_yield', 'Yield Sign', 'Where did this come from?', 1, 4, NULL, 200, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('silverbar', 'Silver Bar', NULL, 4, 2, NULL, 200, NULL, NULL, 0, NULL, 10000, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('silverore', 'Silver Ore', NULL, 6, 3, NULL, 0, NULL, NULL, 0, NULL, 200, 1, 0, 7776000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('sloppyjoe', 'Sloppy Joe', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":20},"Add":{"PLAYER_HUNGER":100}}', '{"armourModifier":10}', NULL),
	('smoothie_orange', 'Orange Smoothie', NULL, 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Add":{"PLAYER_THIRST":60,"PLAYER_HUNGER":15}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":5,"skipScreenEffects":true}}', NULL),
	('smoothie_veg', 'Veg Smoothie', 'A Bean Machine Exclusive', 1, 1, NULL, 240, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"cup","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":9000}', '{"Remove":{"PLAYER_DRUNK":10},"Add":{"PLAYER_THIRST":75,"PLAYER_HUNGER":10}}', '{"energyModifier":{"cooldown":60,"modifier":1.2,"duration":5,"skipScreenEffects":true}}', NULL),
	('soda', 'Soda', NULL, 1, 1, NULL, 25, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"soda","pbConfig":{"label":"Drinking","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Remove":{"PLAYER_HUNGER":0},"Add":{"PLAYER_THIRST":35}}', NULL, NULL),
	('sombrero', 'Sombrero', NULL, 13, 1, NULL, 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, '{"hat":{"disabled":false,"textureId":0,"componentId":0,"drawableId":166}}', NULL, NULL, NULL, NULL, NULL),
	('spag_bowl', 'Spaghetti Bolognese', NULL, 1, 1, NULL, 0, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":17000}', '{"Add":{"PLAYER_HUNGER":70}}', NULL, NULL),
	('sparkling_wine', 'Sparkling Wine', NULL, 4, 1, NULL, 5, NULL, NULL, 0, NULL, 30, 1, 0, NULL, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('spikes', 'Spike Strips', NULL, 1, 4, NULL, 200, NULL, NULL, 13, NULL, 0, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('ssb_chain', 'SSB Chain', 'SSB Gang Chain', 15, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"ssb"}', NULL),
	('sugar', 'Bag of Sugar', NULL, 4, 1, NULL, 2, NULL, NULL, 1, NULL, 40, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('tacos', 'Taco', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_tacos","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Add":{"PLAYER_HUNGER":100}}', NULL, NULL),
	('tea_leaf', 'Tea Leaf', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 500, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('tequila', 'Tequila', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 5184000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('tequila_shot', 'Shot of Tequila', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('tequila_sunrise', 'Tequila Sunrise', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('the_simply_burger', 'Simply Burger', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bshot_simply","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":12000}', '{"Add":{"PLAYER_HUNGER":80}}', NULL, NULL),
	('thermite', 'Thermite Charge', NULL, 1, 1, NULL, 200, NULL, NULL, 3, NULL, 0, 1, 1, 5184000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('tiramisu', 'Tiramisu', NULL, 1, 1, NULL, 65, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Ignore":{"PLAYER_STRESS":20},"Add":{"PLAYER_THIRST":50,"PLAYER_HUNGER":50}}', '{"energyModifier":{"cooldown":60,"modifier":1.1,"duration":2,"skipScreenEffects":true}}', NULL),
	('tomato', 'Tomato', NULL, 4, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('tourniquet', 'Tourniquet', NULL, 1, 1, NULL, 150, NULL, NULL, 1, NULL, 0, 1, 0, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"bandage","pbConfig":{"label":"Applying Tourniquet","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":5000}', NULL, NULL, NULL),
	('traumakit', 'Trauma Kit', 'Needed to treat serious trauma in the field', 1, 1, NULL, 500, NULL, NULL, 5, NULL, 0, 1, 0, 432000, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('tv', 'Television', 'Potentially Stolen', 6, 1, NULL, 1800, NULL, 'ANIM_tv', 100, NULL, 1, 0, 1, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('unk_meat', 'Meat', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 250, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('unknown_ore', 'Unknown Ore', NULL, 7, 5, NULL, 0, NULL, NULL, 3, NULL, 15, 0, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_brakes1', 'Brakes Upgrade (1)', 'Upgrade a Vehicles Brakes to Level 1', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_brakes2', 'Brakes Upgrade (2)', 'Upgrade a Vehicles Brakes to Level 2', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_brakes3', 'Brakes Upgrade (3)', 'Upgrade a Vehicles Brakes to Level 3', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_brakes4', 'Brakes Upgrade (4)', 'Upgrade a Vehicles Brakes to Level 4', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_engine1', 'Engine Upgrade (1)', 'Upgrade a Vehicles Engine to Level 1', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_engine2', 'Engine Upgrade (2)', 'Upgrade a Vehicles Engine to Level 2', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_engine3', 'Engine Upgrade (3)', 'Upgrade a Vehicles Engine to Level 3', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_engine4', 'Engine Upgrade (4)', 'Upgrade a Vehicles Engine to Level 4', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_suspension1', 'Suspension Upgrade (1)', 'Upgrade a Vehicles Suspension to Level 1', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_suspension2', 'Suspension Upgrade (2)', 'Upgrade a Vehicles Suspension to Level 2', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_suspension3', 'Suspension Upgrade (3)', 'Upgrade a Vehicles Suspension to Level 3', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_suspension4', 'Suspension Upgrade (4)', 'Upgrade a Vehicles Suspension to Level 4', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_transmission1', 'Transmission Upgrade (1)', 'Upgrade a Vehicles Transmission to Level 1', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_transmission2', 'Transmission Upgrade (2)', 'Upgrade a Vehicles Transmission to Level 2', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_transmission3', 'Transmission Upgrade (3)', 'Upgrade a Vehicles Transmission to Level 3', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_transmission4', 'Transmission Upgrade (4)', 'Upgrade a Vehicles Transmission to Level 4', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('upgrade_turbo', 'Turbo Upgrade', 'Upgrade a Vehicles to a Turbo', 3, 3, NULL, 1000, NULL, NULL, 1, NULL, 100, 1, 1, 7776000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_chain', 'UwU Chain', 'UwU Chain', 5, 4, 'rlg_chain', 50, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"gangChain":"uwu"}', NULL),
	('uwu_prize_b1', 'UwU Bear', 'UwU Cafe Collectable', 5, 1, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b10', 'UwU Snow Bear', 'UwU Cafe Collectable', 5, 4, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b2', 'UwU Rainbow Bear', 'UwU Cafe Collectable', 5, 1, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b3', 'UwU Sun Bear', 'UwU Cafe Collectable', 5, 1, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b4', 'UwU Flower Bear', 'UwU Cafe Collectable', 5, 1, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b5', 'UwU Tree Bear', 'UwU Cafe Collectable', 5, 2, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b6', 'UwU Heart Bear', 'UwU Cafe Collectable', 5, 2, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b7', 'UwU Moon Bear', 'UwU Cafe Collectable', 5, 3, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b8', 'UwU Rain Bear', 'UwU Cafe Collectable', 5, 3, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_b9', 'UwU Star Bear', 'UwU Cafe Collectable', 5, 4, NULL, 0, NULL, NULL, 0, NULL, 1000, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('uwu_prize_box', 'UwU Mystery Box', 'Collect all the different bears! UwU', 1, 1, NULL, 0, NULL, NULL, 0, NULL, 100, 1, 0, NULL, 1, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"mindblown","pbConfig":{"label":"Opening UwU Mystery Box","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":3000}', NULL, NULL, NULL),
	('valuegoods', 'Valuable Goods', 'Potentially Stolen', 4, 4, NULL, 2450, NULL, NULL, 1, NULL, 10, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('vanityitem', 'Vanity Item', NULL, 5, 3, NULL, 0, NULL, NULL, 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('venison', 'Venison', NULL, 1, 1, NULL, 40, NULL, NULL, 0, NULL, 250, 0, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('vension_steak', 'Venison Steak', NULL, 1, 1, NULL, 150, NULL, NULL, 0, NULL, 15, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"eat","pbConfig":{"label":"Eating","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":15000}', '{"Add":{"PLAYER_HUNGER":50}}', NULL, NULL),
	('vibrator_pink', 'Vibrator', 'If you vibe it, they will cum.', 1, 4, NULL, 400, NULL, NULL, 2, NULL, 0, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('vodka', 'Vodka', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 5184000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('vodka_shot', 'Shot of Vodka', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('vpn', 'VPN', NULL, 7, 4, NULL, 15000, NULL, 'PHONE_VPN', 1, NULL, 0, 1, 0, 1814400, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('watch', 'Gold Watch', 'Potentially Stolen', 6, 1, NULL, 215, NULL, NULL, 1, NULL, 50, 0, 0, 864000, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('water', 'Water', NULL, 1, 1, NULL, 3, NULL, NULL, 0, NULL, 25, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '{"anim":"water","pbConfig":{"label":"Drinking Water","disableMouse":false,"disarm":true,"disableCombat":true,"disableMovement":false,"ignoreModifier":true,"canCancel":true,"disableCarMovement":false,"vehicle":false,"useWhileDead":false},"time":5000}', '{"Remove":{"PLAYER_DRUNK":20,"PLAYER_HUNGER":0},"Add":{"PLAYER_THIRST":30}}', NULL, NULL),
	('weed_baggy', 'Baggy of Weed', NULL, 12, 2, NULL, 200, NULL, NULL, 0, NULL, 100, 1, 0, 1209600, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('weed_brick', 'Brick of Weed', NULL, 12, 3, NULL, 10000, NULL, 'ANIM_weed', 10, NULL, 0, 1, 0, 3888000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('weed_bud', 'Marijuana Bud', NULL, 12, 1, NULL, 100, NULL, NULL, 0, NULL, 100, 1, 0, 1209600, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('weed_joint', 'Joint', NULL, 12, 1, NULL, 25, NULL, NULL, 1, NULL, 10, 1, 0, 1728000, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"Remove":{"PLAYER_HUNGER":5}}', '{"drugState":{"duration":1800,"type":"weed"}}', NULL),
	('weedseed_female', 'Female Marijuana Seed', NULL, 7, 1, NULL, 100, NULL, NULL, 0, NULL, 500, 1, 0, 2419200, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('weedseed_male', 'Male Marijuana Seed', NULL, 7, 1, NULL, 100, NULL, NULL, 0, NULL, 500, 1, 0, 2419200, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('whiskey', 'Whiskey', NULL, 1, 1, NULL, 50, NULL, NULL, 0, NULL, 50, 1, 0, 5184000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('whiskey_glass', 'Glass of Whiskey', NULL, 1, 1, NULL, 20, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('wine_bottle', 'Bottle of Wine', NULL, 1, 2, NULL, 50, NULL, NULL, 1, NULL, 10, 1, 0, 12960000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('wine_glass', 'Glass of Wine', NULL, 1, 2, NULL, 200, NULL, NULL, 0, NULL, 50, 1, 0, 432000, 1, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('yeast', 'Yeast', NULL, 4, 1, NULL, 1, NULL, NULL, 0, NULL, 50, 1, 0, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('yellow_dongle', 'USB Drive (Yellow)', '<i>Marked For Police Seizure</i>', 3, 4, NULL, 2500, NULL, 'DONGLE_YELLOW', 1, NULL, 0, 0, 1, 259200, 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	('yellow_laptop', 'Laptop (Yellow)', '<i>Marked For Police Seizure</i>', 3, 4, NULL, 2500, NULL, NULL, 1, NULL, 0, 1, 1, 604800, 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `item_template` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. mdt_charges
CREATE TABLE IF NOT EXISTS `mdt_charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `title` varchar(1024) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8mb4 NOT NULL,
  `fine` int(11) NOT NULL DEFAULT 0,
  `jail` int(11) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.mdt_charges: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `mdt_charges` DISABLE KEYS */;
INSERT INTO `mdt_charges` (`id`, `type`, `title`, `description`, `fine`, `jail`, `points`) VALUES
	(1, 3, 'Capital Murder', '1st Degree Murder with specific circumstances. The special circumstances are defined as such:- Killing a government employee;- Killing an active member of a jury;- Killing a witness to prevent testimony in court;- Killing more than one victim (serial);', 0, 999, 0),
	(2, 3, ' Accessory to Capital Murder', 'Accessory to Capital Murder', 0, 999, 0),
	(3, 3, '1st Degree Murder', 'The unlawful killing of another human without justification or valid excuse, with malice aforethought/premeditation.', 0, 999, 0),
	(4, 3, 'Accessory to 1st Degree Murder', 'Aids and or Abets the unlawful killing of another human without justification or valid excuse, especially the unlawful killing of another human with malice aforethought / premeditation.', 0, 999, 0),
	(5, 3, 'Attempted 1st Degree Murder', 'The attempt to unlawfully kill another human without justification or valid excuse, with malice aforethought/premeditation.', 5000, 85, 0),
	(6, 3, '2nd Degree Murder', 'The act of unlawfully killing that doesn’t involve malice aforethought—intent to seriously harm or kill, or extreme, reckless disregard for life. Heat of passion, callous disregard for human life.', 30000, 350, 0),
	(7, 3, 'Accessory to 2nd Degree Murder', 'Aids and or Abets the unlawfully killing that doesn’t involve malice aforethought—intent to seriously harm or kill, or extreme, reckless disregard for life. Heat of passion, callous disregard for human life.', 0, 300, 0),
	(8, 3, 'Attempted 2nd Degree Murder', 'The attempt to unlawfully kill that doesn’t involve malice aforethought—intent to seriously harm or kill, or extreme, reckless disregard for life. Heat of passion, callous disregard for human life.', 3000, 65, 0),
	(9, 3, 'Voluntary Manslaughter', 'The accidental, criminally negligent, or criminally reckless killing of another individual with the intent to physically harm them. ', 20000, 130, 0),
	(10, 3, 'Vehiclular Manslaughter', 'The accidental, criminally negligent, or criminally reckless killing of another individual whilst driving a motor vehicle. ', 16000, 115, 0),
	(11, 3, 'Involuntary Manslaughter', 'The accidental, criminally negligent, or criminally reckless killing of another individual with no intent to physically harm them. ', 15000, 100, 0),
	(12, 3, 'Gang Related Shooting', 'Any individual who, with one or more members of their “gang” engages in a shooting/shootout with two or more members of other gangs. A “gang” is defined as an ongoing group, club, organization, or association of three or more persons which has the primary purpose of the commission of criminal offenses, or the members of which over the last ninety days have engaged in continuing or ongoing series of felony offenses. Alternatively, any individual or individuals flagged as “gang related” based on knowledge or probable cause by Law Enforcement. ', 10000, 75, 0),
	(13, 3, 'Kidnapping a Government Employee', 'Abducts a government employee and holds them against their will.', 5000, 30, 0),
	(14, 3, 'Kidnapping', 'Abducts another person and holds them against their will.', 2000, 20, 0),
	(15, 3, 'Assault with a Deadly Weapon', 'Attempts to commit a violent injury upon another person with a deadly weapon. A weapon is descibed as a firearm or any type of melee item, also including motor vehicles.', 2000, 25, 0),
	(16, 3, 'Reckless Endangerment ', 'Person creates a substantial risk of serious physical injury to themselves or another person. The accused person isn\'t required to intend the resulting or potential harm, but must have acted in a way that showed a disregard for the foreseeable consequences of the actions.', 1000, 15, 0),
	(17, 2, 'Unlawful Imprisonment', 'Restricts a person\'s movement within any area without justification or consent.', 1000, 15, 0),
	(18, 2, 'Criminal Threats', 'A "criminal threat" is when you threaten to kill or physically harm someone.That person is thereby placed in a state of reasonably sustained fear for his/her safety or for the safety of his/her immediate family, the threat is specific and unequivocal and you communicate the threat verbally, in writing, or via an electronically transmitted device.', 1250, 15, 0),
	(19, 2, 'Assault & Battery', 'Openly threatens violence or injury upon an individual either orally or thru their actions and acts upon that threat.', 825, 15, 0),
	(20, 3, 'Terrorism ', 'The unlawful use of Extreme Violence and Intimidation against the Civilian Population that would pursue political aims, compromise medical neutrality, or in the name of religious ideology. The unlawful use of Extreme Violence and Intimidation against Government Entities that would pursue the disruption, destabilization or destruction of those entities for political or religious aims.', 0, 999, 0),
	(21, 3, 'Weapons Trafficking', 'The unlawful transportation of a large quantity of any class of firearms and/or molotov cocktails and/or explosives, with the intent to distribute. Intent to distribute can be inferred through circumstances surrounding the discovery of the firearms or a pattern of behavior of the suspects, including large sums of money, and/or the possession of six or more firearms.', 0, 999, 0),
	(22, 3, 'Criminal Possession of a Government-Issue Firearm', 'It is illegal to possess a government-owned or issued firearm, without being a duly sworn Peace Officer. This also includes flashbangs.', 22500, 210, 0),
	(23, 3, 'Criminal Possession of a Government-Issue Less Lethal Firearm/Weapon', 'It is illegal to possess a government-owned or issued less-lethal firearm, without being a duly sworn Peace Officer. This would include tasers, batons and beanbag shotguns.', 12000, 70, 0),
	(24, 3, 'Criminal Possession of a Firearm [Class 3]', 'Possesses a Class 3 weapon. LMG, RPG, DMR\'s', 3000, 35, 0),
	(25, 3, 'Criminal Possession of a Firearm [Class 2]', 'Possess a Class 2 weapon. Possesses semi-automatic to automatic firearms, and shotguns.', 2000, 28, 0),
	(26, 2, 'Criminal Possession of a Firearm [Class 1]', 'Possess a Class 1 weapon without a proper license or a weapon which is not registered to the individual possessing it.', 500, 10, 0),
	(27, 3, 'Criminal Sale of a Firearm [Class 2 and 3]', 'The unlawful sale of a Class 2 or Class 3 weapon', 3000, 35, 0),
	(28, 3, 'Criminal Sale of a Firearm [Class 1]', 'The unlawful sale, or purchase, of a Class 1 firearm, when a person does not own a proper weapon license.', 1000, 12, 0),
	(29, 3, 'Possession of Explosives', 'Possesses explosives on his or her person. Includes transport of explosives.', 5000, 100, 0),
	(30, 3, 'Criminal Use of Explosives', 'A person is guilty of criminal use of explosives if they intentionally place, use, or attempt to use explosives against any real person or property and detonate said explosives, directly or indirectly. This shall include the use of tanker trucks, cars ignited in gasoline, or tanks/barrels full of combustible liquid for the purpose of causing an explosion. This charge may be issued in addition to Attempted Murder.', 3000, 35, 0),
	(31, 3, 'Criminal Possession of a Government Issued Equipment', 'It is illegal to possess a government-owned or issued equipment (non weapons) without being a government employee with the right to possess them.', 1250, 20, 0),
	(32, 3, 'Possession of a Molotov', 'Person possesses a molotov or other improvised incendiary weapons.', 3000, 30, 0),
	(33, 3, 'Possession of a Silencer / Suppressor', 'It is illegal to possess a silencer/suppressor. No person shall possess any type of device that alters the sound of a firearm.', 1000, 25, 0),
	(34, 2, 'Resisting Arrest', 'Flees from a Law Enforcement Officer to avoid being apprehended, detained, or arrested while on foot, or a passenger in a vehicle.', 1000, 10, 0),
	(35, 2, 'Criminal Use of a Firearm', 'Discharges a firearm for no legal reason, or using a firearm in the commission to aid in a crime.', 1000, 15, 0),
	(36, 2, 'Brandishing of a Firearm', 'Displaying a firearm in public without a legal reason. "Open Carry" is not a legal reason to have a weapon in your hand. To open carry, the weapon must be holstered or attached to a sling. ', 1000, 10, 0),
	(37, 2, 'Brandishing of a non Firearm', 'It is unlawful for you to draw or exhibit a potentially deadly weapon in a rude, angry, or threatening way in the presence of another person and not in defense of self or others', 500, 10, 0),
	(38, 1, 'Jaywalking', 'Crosses a road without the use of a crosswalk, or without a marked crossing light.', 100, 0, 0),
	(39, 3, 'Aggravated Robbery', 'A robbery in which the victim, a hostage, or a third party otherwise uninvolved in the crime is physically injured. ', 2250, 35, 0),
	(40, 3, 'Accessory to Aggravated Robbery', 'Harboring, concealing or aiding a person in the act/attempt to commit Aggravated Robbery.', 1500, 30, 0),
	(41, 3, 'Robbery', 'The taking or carrying away with the intent to steal any thing of value in the care, custody, control, management, or possession of any store, bank, or financial institution, including but not limited to all Fleeca Banks, 24/7 Gas Stations, LTD Gas Stations, or Vangelico’s Jewelry Stores. Alternatively, the taking or carrying away with the intent to steal any thing of value from the direct custody of another person.', 2000, 25, 0),
	(42, 3, 'Accessory to Robbery', 'Harboring, concealing or aiding a person in the act/attempt to commit Robbery.', 1050, 20, 0),
	(43, 3, 'First Degree Money Laundering', 'Possesses money in the amount of $30,000 or more with the specific intent to use it to promote criminal activity or the knowledge that the money involved came from criminal activity.', 5000, 35, 0),
	(44, 3, 'Second Degree Money Laundering', 'Possesses money in the amount of $10,000 or more with the specific intent to use it to promote criminal activity or the knowledge that the money involved came from criminal activity.', 2500, 20, 0),
	(45, 2, 'Third Degree Money Laundering', 'Possesses money in the amount of less than $10,000 with the specific intent to use it to promote criminal activity or the knowledge that the money involved came from criminal activity.', 1500, 15, 0),
	(46, 2, 'Sale of Stolen Goods or Stolen Property', 'The bartering or selling of wares, merchandise, or property that has been stolen from another and the person knew or has reason to know the property was stolen. Color coded bank cards are per se considered to be stolen goods or property under this statute. ', 2000, 25, 0),
	(47, 3, 'Receiving Stolen Property in the First Degree', 'A person who bought, received, sold or participated in selling, concealed or withheld property that has been stolen from another, and the individual knew the property was stolen.  To include possession of color coded bank cards in the amount of 11 or more.', 1500, 15, 0),
	(48, 2, 'Receiving Stolen Property in the Second Degree', 'A person who bought, received, sold or participated in selling, concealed or withheld property that has been stolen from another, and the individual knew the property was stolen. To included color coded bank cards in the amount of 6 to 10', 1000, 12, 0),
	(49, 2, 'Receiving Stolen Property in the Third Degree', 'A person who bought, received, sold or participated in selling, concealed or withheld property that has been stolen from another, and the individual knew the property was stolen. To included color coded bank cards in the amount of 5 or less.', 500, 10, 0),
	(50, 3, 'Possession of Stolen Goods', 'Possesion of Valuable Goods without proof of ownership.', 1050, 15, 0),
	(51, 2, 'Possession of a Stolen Identification ', 'Possesses the Identification Card of another citizen without consent.', 1000, 12, 0),
	(52, 2, 'Leaving Without Paying', 'It is illegal for a person to obtain services by deception, force, threat or other unlawful means, or without lawfully compensating the provider for these services provided. This will include garages and restaurants.', 1000, 12, 0),
	(53, 3, 'Grand Theft Auto', 'Unlawfully taking a vehicle belonging to another, or driving the vehicle without the owner\'s consent, with the intent to permanently deprive the owner of the vehicle.', 1050, 15, 0),
	(54, 2, 'Joyriding', 'The taking or operating of a vehicle without the owner\'s consent, without the intent to deprive the owner of the vehicle permanently.', 500, 10, 4),
	(55, 2, 'Tampering with a Vehicle', 'No person shall either individually or in association with one or more other persons, willfully tamper with any vehicle or the contents thereof, or break or remove any part of a vehicle without the consent of the owner.', 500, 10, 0),
	(56, 2, 'Grand Theft', 'Steals property in the value of $1,000 or more from another person.', 1500, 10, 0),
	(57, 2, 'Petty Theft', 'Steals property in the value of less than $1,000 from another person.', 500, 10, 0),
	(58, 3, 'Arson', 'Person maliciously sets fire to a structure, forest land, or other property. To include the use of thermite at banks, vaults, or other locations.', 2000, 25, 0),
	(59, 3, 'Felony Trespassing', 'Enters knowingly or remains unlawfully in or upon a government property without permission or the right to do so. Includes power plants.', 1500, 15, 0),
	(60, 3, 'Burglary', 'Any person who breaks and enters any property or attempts to break and enter into a property with the intent either to commit theft or to commit any misdemeanor or felony within.', 1000, 15, 0),
	(61, 2, 'Trespassing', 'Enters knowingly or remains unlawfully upon a property without the permission or the right to do so.', 500, 10, 0),
	(62, 2, 'Contempt of Court', 'The act of being disobedient to or discourteous towards a court of law and its officers in the form of behavior that opposes or defies the authority, justice and dignity of the court. Time/Fine is at Judge discretion.', 0, 999, 0),
	(63, 2, 'Failure to Appear', 'Failure to appear in Court when summoned.', 0, 999, 0),
	(64, 3, 'Perjury', 'Knowingly lies under oath in judicial proceedings.', 0, 999, 0),
	(65, 3, 'Witness Tampering', 'The use of physical force, threat of physical force, use of intimidation, or use of threats in an attempt to hinder, delay, or prevent, an individual from producing testimony or evidence before the court or an attempt to alter or destroy the evidence or testimony to be produced. ', 0, 999, 0),
	(66, 3, 'Prison Break', 'Breaks into government buildings, vehicles designated for detainment, or imprisonment with intent to break a prisoner out. Steals a law enforcement vehicle intending to transport an individual/individuals to prison after processing has occurred. Includes the act of an inmate or suspect leaving prison through unofficial or illegal ways.', 4000, 75, 0),
	(67, 3, 'Attempted Prison Break', 'Aids in the act of, or attempt to break an individual out of prison, or prison transport after processing has occurred.', 2500, 40, 0),
	(68, 3, 'Harboring or Aiding an Escaped Violent Felon', 'Whoever knowingly harbors or conceals any prisoner wanted for a capital level offense after their escape from custody of Bolingbroke State Penitentiary or any other State correctional institution shall be guilty of this offense. This offense shall include but not be limited to providing residence for the prisoner, assisting the prisoner in escape from the authorities, and/or failing to notify the proper authorities of the prisoner\'s location if the suspect should reasonably know the prisoner is wanted for arrest on capital level offenses. ', 3000, 65, 0),
	(69, 3, 'Introducing Contraband Into a Government Facility', 'It is unlawful to introduce contraband into or upon the grounds of Bolingbroke State Penitentiary or any other State correctional institution shall be guilty of this offense.Contraband is described as any controlled substance, intoxicating beverage, weapon, explosive, radio, telephone or any writing or recording device to be used to transmit information.', 1500, 20, 0),
	(70, 3, 'Violating a Court Order', 'Willful disobedience of the terms written in a court order. To include a sentence imposed on a citizen, protective, and restraining orders.', 2000, 30, 0),
	(71, 3, 'Embezzlement ', 'Steals or misappropriates funds or property that has been entrusted in you with the intent of depriving the rightful owner.', 500, 25, 0),
	(72, 3, 'Bribery', 'The offering, giving or recieving of anything of value in exchange for the recipient to perform an act such as a favour. The bribe can consist of anything that the recipient may view as valuable like cash or personal favours. This charge includes the recipient of a bribe.', 2000, 20, 0),
	(73, 3, 'Escaping Custody', 'Escapes the custody of law enforcement once that person has been, detained/arrested but before processing occurs.', 1500, 15, 0),
	(74, 3, 'Accessory to Escaping Custody', 'Person aids or assists, another citizen in escaping the custody of law enforcement once that person has been, detained/arrested but before processing occurs.', 1000, 15, 0),
	(75, 3, 'Parole Violation ', 'Person who violates their parole time, set by their previous arrest.', 1000, 10, 0),
	(76, 2, 'Conspiracy', 'Conspires to commit a crime.', 1000, 10, 0),
	(77, 2, 'Unauthorized Practice of Law', 'Practices law without a proper Bar certification.', 2500, 10, 0),
	(78, 2, 'Misuse of a 911 System', 'Person makes a request for emergency response when no actual emergency exists, and when the caller does not have a good faith basis to request emergency assistance.', 1000, 5, 0),
	(79, 3, 'Human Trafficking', 'The unlawful act of forcefully transporting or coercing individuals into preforming an act or service, being that of forced labor or otherwise, without that indviduals consent. ', 0, 999, 0),
	(80, 3, 'Drug Trafficking', 'Any person who is found guilty of Felony Possession with Intent to Distribute and which meets one or more of the following requirements: (1) The suspect shows a pattern of drug distribution or felony possession of controlled dangerous substances, demonstrable through three or more provable instances;(2) Proof or evidence that the suspect has manufactured or cultivated a controlled dangerous substance;', 0, 999, 0),
	(81, 3, 'Felony Possession with intent to Distribute', 'Any person who is found to have large quantities of drugs on their person, vehicle, and or property with intent to distribute. Intent to distribute can be inferred through circumstances surrounding the discovery of the drugs or a pattern of behavior of the suspect such as large sums of money, high-grade weaponry, or other paraphernalia used in the measuring/weighing or breaking down of large quantities to smaller quantities', 12500, 150, 0),
	(82, 3, 'Sale of Drugs', 'Sale of a controlled substance or controlled dangerous substance.', 2500, 35, 0),
	(83, 3, 'Felony Possession of a Controlled Dangerous Substance', 'Possesses a controlled dangerous substance. 27+ units of OXY. Possesses methamphetamine. 20+ units of methamphetamine.', 2000, 30, 0),
	(84, 3, 'Felony Possession of a Controlled Substance', 'Possesses 50+ grams (10 bags @ 5g per bag) of Crack Cocaine.Possessing 50+ grams (10 bags @ 5g per bag) of Cocaine.Possesses 10 or more LSD tabs.Possesses any amount of marijuana greater than 15 lbs, or greater than 25 joints.', 2000, 25, 0),
	(85, 3, 'Cultivation of Marijuana', 'Person possesses 3 or more marijuana plants in a single location.', 2000, 25, 0),
	(86, 2, 'Misdemeanor Possession of Controlled Dangerous Substance', 'Possesses a controlled dangerous substance. 5+ units of Oxy. Possesses methamphetamine.', 1000, 15, 0),
	(87, 2, 'Misdemeanor Possession of a Controlled Substance', 'Possesses up to 50 grams (10 bags @ 5g per bag) of Crack Cocaine.Possesses up to 50 grams (10 bags @ 5g per bag) of Cocaine.Possesses less than 10 LSD tabs.Possesses any amount of marijuana greater than 5 lbs, or greater than 9 joints.', 750, 10, 0),
	(88, 2, 'Possession of Drug Paraphernalia ', 'Any item that is used in the manufacturing, production, distribution, sale, or consumption of drugs. This is to include marijuana seeds, and scales that are used to weigh drugs.', 500, 5, 0),
	(89, 3, 'Desecration of a Human Corpse', 'Desecration of a human corpse means any act committed after the death of a human being including, but not limited to, dismemberment, disfigurement, mutilation, burning, or any act committed to cause the dead body to be devoured, scattered or dissipated; except, those procedures performed by a state agency or licensed authority in due course of its duties and responsibilities. This includes the removal of a corpse from the custody of the morgue.', 1500, 20, 0),
	(90, 3, 'Illegal Exhumation', 'The removal of a body without authorization from where it lies in state, or it\'s final resting place.', 1000, 15, 0),
	(91, 2, 'Practicing Medicine Without a License', 'Practicing medicine without a proper license. Treating citizens for any medical, or health related issue without proper documentation or licensing. Law Enforcement is exempt only during their qualified duties. ', 1500, 12, 0),
	(92, 2, 'Public Indecency', 'A lewd caress or indecent fondling of the body. Public place shall also include jails, and correctional institutions of the state.', 500, 10, 0),
	(93, 1, 'Littering', 'The act of throwing objects on the ground in a disobedient manner. Leaving trash and other items on the ground.', 250, 0, 0),
	(94, 1, 'Public Intoxication ', 'A person who is under the influence of Alcohol or a Controlled Dangerous Substance, in a public place.', 100, 0, 0),
	(95, 3, 'Impersonating a Judge', 'Acting as a Judge or introducing themselves to others a judge and attempting to perform judicial duties', 10000, 40, 0),
	(96, 3, 'Impersonating a Government Employee', 'Acting as public servant or introducing themselves to others as a public servant, and attempting to perform their duties. This includes public servants and all other government employees that are not otherwise listed under a higher impersonation charge.', 5000, 30, 0),
	(97, 3, 'Impersonation', 'Providing law enforcement with a false, or fictitious name, while under detainment or under arrest.', 1250, 15, 0),
	(98, 3, 'Identity Theft', 'A person secures an undeserved financial benefit for themselves. Cause the victim to suffer a loss, which could be financial, emotional or some other type of damage. Escapes criminal liability by using another person\'s name, birth date or other identifying information.', 1500, 20, 0),
	(99, 3, 'Vehicle Registration Fraud', 'Person(s) possesses or displays a falsified license plate on a motor vehicle. Person(s) manufactures a falsified license plates.', 1500, 20, 0),
	(100, 3, 'Extortion', 'The use of force or threats to compel another person to relinquish money or property or to compel a public officer or State employee to perform an official act within the course and scope of their employment. ', 1000, 15, 0),
	(101, 3, 'Fraud', 'Wrongfully deceits intending to receive financial or personal gain.', 1000, 10, 0),
	(102, 3, 'Disruption of a Public Utility', 'Disruption of a Public Utility - The attempt, or successful execution of the disruption of any electrical power grid.', 6000, 35, 0),
	(103, 3, 'Inciting a Riot', 'Organizes an event/assembly which results in violent conduct or creates a risk of causing public harm with a group of at least four people.', 5000, 30, 0),
	(104, 3, 'Felony Obstruction of Justice', 'Intentionally hinders the discovery, apprehension, conviction, or punishment of a person who committed a crime, including intentionally involving oneself in an ongoing criminal act or investigation in such a way that peace officers are impeded from administering justice.', 2500, 25, 0),
	(105, 2, 'Misdemeanor Obstruction of Justice', 'Recklessly or with criminal negligence hinders the discovery, apprehension, conviction, or punishment of a person who committed a crime, including issuing threats of violence, impeding the administration of justice, or withholding of non-privileged information or evidence from peace officers.', 1500, 20, 0),
	(106, 2, 'Planting or Tampering of Evidence', 'Destroy, plant, conceal, or remove a piece of evidence with the purpose of hiding the truth, altering the truth or make an item unavailable for proceeding investigation.', 1000, 15, 0),
	(107, 2, 'Disobeying a Peace Officer ', 'Willfully refusing or failing to comply with a lawful order, signal, or direction of any peace officer.', 1000, 12, 0),
	(108, 2, 'Disorderly Conduct', 'Engages in behavior intending to cause public inconvenience.', 500, 10, 0),
	(109, 2, 'Harassment', 'Intimidates or pressures another person aggressively with unwelcome words, deeds, actions, or gestures.', 1000, 10, 0),
	(110, 2, 'False Reporting', 'Reports a false or non-existent crime.', 1000, 10, 0),
	(111, 3, 'Poaching', 'No person shall either individually or in association with one or more other persons, bait, trap, hunt injure, maim, kill, otherwise harm, or maintain possession of the pelt, carcass, or any other part of an a wild animal without the correct license to hunt such animal or the animal is defined as being protected by the DOJ.', 1500, 15, 0),
	(112, 2, 'Animal Cruelty', 'Maliciously and intentionally wounds or kills an animal.', 500, 10, 0),
	(113, 2, 'Stalking', 'The following, harassing, threatening of another person, to the point where an individual fears for his/her safety.', 250, 10, 0),
	(114, 2, 'Disturbing the Peace', 'Unlawfully fighting, or challenging another person to fight, in a public place. Disturbing another person by loud and unreasonable noise; if this is done willfully and maliciously. Using offensive words in a public place, if the words are likely to provoke an immediate violent reaction.', 500, 5, 0),
	(115, 2, 'Vandalism of Government Property', 'Intentionally causing damage to Government Property.', 500, 5, 0),
	(116, 1, 'Vandalism', 'Intentionally causing damage to property they do not own.', 250, 0, 0),
	(117, 1, 'Loitering', 'Intentionally standing or waiting idly without apparent purpose.', 250, 0, 0),
	(118, 3, 'Piloting Without a Proper License', 'Operating (or attempting to operate) an aircraft without the proper license. This includes, Helicopters, and Fixed Wing Aircraft.', 3500, 40, 0),
	(119, 3, 'Flying into Restricted Airspace', 'The unauthorized flight into, or landing in restricted airspace. The restricted areas are as follows. Aircraft carrier, any and all power plants. This includes landing on Pillbox Medical Center, and any Government building or property without permission to do so. Certified pilots will lose their license for any of of the above listed. Law Enforcement and EMS are exempt.', 5000, 30, 0),
	(120, 3, 'Street Racing', 'A person shall not engage (organize or partake) in a street race on a highway or public roadway of any kind whether it be as a sport of for material gain.A street race can be against another vehicle or any kind of timing device.Adds 4 points on License.', 4000, 25, 4),
	(121, 3, 'Reckless Evading', 'Dangerously flees from law enforcement while operating a motor vehicle to avoid being apprehended, detained, or arrested. Crossing into oncoming lanes of traffic, causing damage to property, putting lives in danger.', 2000, 20, 5),
	(122, 3, 'Operating a Motor Vehicle on a Suspended or Revoked License', 'Person operates a motor vehicle on a suspended and revoked license. Vehicle is to be Impounded, and the operator of the vehicle arrested for not having the proper license to drive legally.', 2000, 15, 0),
	(123, 3, 'Felony Hit and Run', 'Leaving a scene of an accident that resulted in injury to others, without identifying yourself to the parties involved.', 2000, 15, 4),
	(124, 3, 'Reckless Driving', 'Drives in a way that is careless and with gross disregard for human life.', 1000, 12, 4),
	(125, 2, 'Unauthorized Operation of an Off-Road Vehicle', 'It is unlawful to operate an off-road, or off highway vehicle on city streets, highways, county roads, and sidewalks. Off-road vehicles are classified as ATV\'s, Dirt Bikes, Farm Tractors, Golf Carts, and Dune Buggies that don\'t have a visible license plate displayed. Law enforcement may use discretion if the person is transporting from a car dealership after purchase.', 750, 10, 0),
	(126, 2, 'Misdemeanor Hit and Run', 'Leaving a scene of an accident with property damage, without identifying yourself to the parties involved.', 500, 10, 0),
	(127, 2, 'Evading', 'Flees from law enforcement in a vehicle to avoid being apprehended, detained, or arrested.', 750, 10, 3),
	(128, 1, 'Driving While Intoxicated', 'Drives while affected by drug or alcohol intoxication. Licenses is suspended ', 500, 5, 3),
	(129, 1, 'First Degree Speeding', 'Speeds exceeding the limit by more than 55 mph. Add 3 license points.', 1500, 0, 3),
	(130, 1, 'Second Degree Speeding', 'Speeds exceeding the limit by 35-55 mph. Add 2 license points.', 1000, 0, 2),
	(131, 1, 'Third Degree Speeding', 'Speeds exceeding the limit by 0-34 mph. Add 1 license point', 500, 0, 1),
	(132, 1, 'Improper Window Tint', 'Operating a vehicle with tint that obscures the view from the outside. Window tint must be completely be dark to where Law Enforcement can\'t see citizens in the vehicle.  Law Enforcement may use discretion to give a verbal warning, or written violation. Vehicle may be impounded. **Government vehicles are exempt.**', 250, 0, 0),
	(133, 1, 'Failure to Yield to Emergency Vehicle', 'Does not pull to the side of the road when an emergency vehicle is trying to pass with sirens and or lights enabled.', 250, 0, 0),
	(134, 1, 'Failure to Obey a Traffic Control Device', 'Does not obey a sign or signal defined as regulatory.', 250, 0, 0),
	(135, 1, 'Negligent Driving', 'Drives in a way that is negligent with no regard to basic traffic rules.', 500, 0, 2),
	(136, 1, 'Illegal Passing', 'Passing another vehicle by a shoulder, median, or solid lines. Passing must be completely made without interfering with safe operation of any approaching vehicle from the opposite direction.', 250, 0, 0),
	(137, 1, 'Driving on the Wrong Side of The Road', 'Driving on the left side of the road, against opposing traffic.', 250, 0, 0),
	(138, 1, 'Illegal Turn', 'Performing a turn at a stop sign or red light without coming to a full and complete stop, or failure to yield to pedestrians. Making a left-hand turn where signs posted prohibit such a turn.', 250, 0, 0),
	(139, 1, 'Failure to Stop', 'Failure to come to a complete and full stop at a posted stop sign or red light. Right on red is permitted when a full stop is completed and after yielding to traffic and pedestrians.', 250, 0, 0),
	(140, 1, 'Unauthorized Parking', 'Parks in an area that is unsafe or on government property. Parking on a sidewalk, to include ANY portion of the tire touching the curb. Parking in the wrong direction of traffic. Parking on a red line. Parking in front of a fire hydrant. Parking vehicle across multiple parking spaces. Vehicle is subject to being towed. Government vehicles with lights and/or sirens on are exempt. Further, a vehicle may be driven onto a curb or sidewalk for the purposes of immediately parking that vehicle within a garage or driveway. ', 500, 0, 0),
	(141, 1, 'Operating a Motor Vehicle Without Proper Identification ', 'Person has a valid drivers license but is unable to provide a valid citizen identification to law enforcement upon request. Vehicle is to be impounded by law enforcement. This law is to ensure that citizens provide proper identification to law enforcement while operating a motor vehicle.', 250, 0, 0),
	(142, 1, 'Failure to Signal', 'Does not use a turn signal when necessary.', 100, 0, 0),
	(143, 1, 'Driving Without Headlights During Darkness', 'Driving after dusk and before dawn or in other poor visiblity conditions without headlights.', 100, 0, 0),
	(144, 2, 'Accessory to Assault & Battery', 'Assits in the threatens violence or injury upon an individual either orally or thru their actions and acts upon that threat.', 1000, 15, 0);
/*!40000 ALTER TABLE `mdt_charges` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. mdt_library
CREATE TABLE IF NOT EXISTS `mdt_library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link` varchar(1024) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `workplace` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job` (`job`),
  KEY `workplace` (`workplace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.mdt_library: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `mdt_library` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_library` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. mdt_notices
CREATE TABLE IF NOT EXISTS `mdt_notices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `creator` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `restricted` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `job` (`restricted`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.mdt_notices: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `mdt_notices` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_notices` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. mdt_reports
CREATE TABLE IF NOT EXISTS `mdt_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `notes` longtext CHARACTER SET utf8mb4 NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `allowAttorney` tinyint(4) NOT NULL DEFAULT 0,
  `creatorSID` int(11) NOT NULL,
  `creatorName` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `creatorCallsign` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `type` (`type`),
  KEY `creatorSID` (`creatorSID`),
  KEY `creatorName` (`creatorName`),
  KEY `creatorCallsign` (`creatorCallsign`),
  KEY `allowAttorney` (`allowAttorney`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.mdt_reports: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `mdt_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_reports` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. mdt_reports_evidence
CREATE TABLE IF NOT EXISTS `mdt_reports_evidence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `label` varchar(1024) CHARACTER SET utf8mb4 NOT NULL,
  `value` varchar(1024) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report` (`report`),
  CONSTRAINT `FK1_mdt_reports_evidence` FOREIGN KEY (`report`) REFERENCES `mdt_reports` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.mdt_reports_evidence: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `mdt_reports_evidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_reports_evidence` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. mdt_reports_people
CREATE TABLE IF NOT EXISTS `mdt_reports_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'person',
  `SID` int(11) NOT NULL,
  `First` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `Last` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `Callsign` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `Licenses` varchar(1024) CHARACTER SET utf8mb4 NOT NULL DEFAULT '{}',
  `charges` varchar(1024) CHARACTER SET utf8mb4 NOT NULL DEFAULT '{}',
  `sentenced` tinyint(4) NOT NULL DEFAULT 0,
  `sentencedAt` datetime DEFAULT NULL,
  `plea` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'unknown',
  `points` int(11) NOT NULL DEFAULT 0,
  `fine` int(11) NOT NULL DEFAULT 0,
  `jail` int(11) NOT NULL DEFAULT 0,
  `parole` int(11) NOT NULL DEFAULT 0,
  `reduction` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `revoked` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `doc` tinyint(4) NOT NULL DEFAULT 0,
  `expunged` tinyint(4) NOT NULL DEFAULT 0,
  `warrant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `SID` (`SID`),
  KEY `Callsign` (`Callsign`),
  KEY `FK_mdt_reports_people` (`report`),
  KEY `type` (`type`),
  KEY `sentenced` (`sentenced`),
  KEY `expunged` (`expunged`),
  KEY `FK2_mdt_reports_people` (`warrant`),
  CONSTRAINT `FK2_mdt_reports_people` FOREIGN KEY (`warrant`) REFERENCES `mdt_warrants` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_mdt_reports_people` FOREIGN KEY (`report`) REFERENCES `mdt_reports` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.mdt_reports_people: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `mdt_reports_people` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_reports_people` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. mdt_warrants
CREATE TABLE IF NOT EXISTS `mdt_warrants` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'active',
  `title` varchar(1024) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `report` int(10) NOT NULL,
  `suspect` int(10) NOT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `creatorSID` int(11) NOT NULL,
  `creatorName` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `creatorCallsign` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `issued` datetime NOT NULL DEFAULT current_timestamp(),
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `suspect` (`suspect`),
  KEY `report` (`report`),
  KEY `expires` (`expires`),
  CONSTRAINT `FK1_mdt_warrants` FOREIGN KEY (`report`) REFERENCES `mdt_reports` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK2_mdt_warrants` FOREIGN KEY (`suspect`) REFERENCES `mdt_reports_people` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.mdt_warrants: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `mdt_warrants` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdt_warrants` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. meth_tables
CREATE TABLE IF NOT EXISTS `meth_tables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tier` int(11) NOT NULL DEFAULT 1,
  `created` bigint(20) NOT NULL,
  `cooldown` bigint(20) DEFAULT NULL,
  `recipe` varchar(512) NOT NULL,
  `active_cook` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.meth_tables: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `meth_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `meth_tables` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. placed_meth_tables
CREATE TABLE IF NOT EXISTS `placed_meth_tables` (
  `table_id` int(11) NOT NULL,
  `owner` bigint(20) DEFAULT NULL,
  `placed` bigint(20) NOT NULL DEFAULT 0,
  `expires` bigint(20) NOT NULL DEFAULT 0,
  `coords` varchar(255) NOT NULL,
  `heading` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.placed_meth_tables: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `placed_meth_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `placed_meth_tables` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. placed_props
CREATE TABLE IF NOT EXISTS `placed_props` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) NOT NULL DEFAULT '',
  `coords` varchar(255) NOT NULL,
  `rotation` varchar(255) NOT NULL,
  `heading` double NOT NULL DEFAULT 0,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `creator` bigint(20) NOT NULL,
  `is_frozen` tinyint(1) NOT NULL DEFAULT 0,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `type` int(11) NOT NULL DEFAULT 0,
  `name_override` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.placed_props: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `placed_props` DISABLE KEYS */;
/*!40000 ALTER TABLE `placed_props` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. player_shops
CREATE TABLE IF NOT EXISTS `player_shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `ped_model` varchar(256) DEFAULT NULL,
  `position` text NOT NULL,
  `owner` int(10) unsigned NOT NULL,
  `owner_bank` int(11) NOT NULL,
  `job` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.player_shops: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `player_shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_shops` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. player_shops_moderators
CREATE TABLE IF NOT EXISTS `player_shops_moderators` (
  `shop` int(10) unsigned NOT NULL,
  `name` varchar(512) DEFAULT NULL,
  `sid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`shop`,`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.player_shops_moderators: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `player_shops_moderators` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_shops_moderators` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. redline_racer_history
CREATE TABLE IF NOT EXISTS `redline_racer_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) unsigned NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `placing` int(11) NOT NULL,
  `winnings` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `vehicle` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vehicle_class` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `track` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `racer_history_track` (`track`),
  KEY `racer_history` (`sid`) USING BTREE,
  CONSTRAINT `racer_history_track` FOREIGN KEY (`track`) REFERENCES `redline_tracks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.redline_racer_history: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `redline_racer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `redline_racer_history` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. redline_race_history
CREATE TABLE IF NOT EXISTS `redline_race_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `state` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `buyin` int(11) unsigned NOT NULL DEFAULT 0,
  `host` int(11) unsigned NOT NULL,
  `track` int(11) unsigned NOT NULL,
  `class` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `racers` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '[]',
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `race_history_track` (`track`),
  CONSTRAINT `race_history_track` FOREIGN KEY (`track`) REFERENCES `redline_tracks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.redline_race_history: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `redline_race_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `redline_race_history` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. redline_tracks
CREATE TABLE IF NOT EXISTS `redline_tracks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `distance` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(16) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `checkpoints` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_by` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.redline_tracks: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `redline_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `redline_tracks` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. redline_track_history
CREATE TABLE IF NOT EXISTS `redline_track_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `track` int(11) unsigned NOT NULL,
  `race` int(11) unsigned NOT NULL,
  `sid` int(11) NOT NULL,
  `lap_start` int(11) NOT NULL,
  `lap_end` int(11) NOT NULL,
  `laptime` int(11) NOT NULL,
  `car` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `owned` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `track_history_track` (`track`),
  KEY `track_history_race` (`race`),
  KEY `sid` (`sid`),
  CONSTRAINT `track_history_race` FOREIGN KEY (`race`) REFERENCES `redline_race_history` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `track_history_track` FOREIGN KEY (`track`) REFERENCES `redline_tracks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Tábla adatainak mentése fivem-methodrp.redline_track_history: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `redline_track_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `redline_track_history` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. sequence
CREATE TABLE IF NOT EXISTS `sequence` (
  `id` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `sequence` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.sequence: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;

-- Struktúra mentése tábla fivem-methodrp. shop_bank_accounts
CREATE TABLE IF NOT EXISTS `shop_bank_accounts` (
  `shop` int(10) unsigned NOT NULL,
  `bank` int(10) unsigned NOT NULL,
  PRIMARY KEY (`shop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Tábla adatainak mentése fivem-methodrp.shop_bank_accounts: ~0 rows (hozzávetőleg)
/*!40000 ALTER TABLE `shop_bank_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_bank_accounts` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;