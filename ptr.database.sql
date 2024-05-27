-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.12-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for fivem-methodrp_ptr
CREATE DATABASE IF NOT EXISTS `fivem-methodrp_ptr` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `fivem-methodrp_ptr`;

-- Dumping structure for table fivem-methodrp_ptr.crafting_cooldowns
CREATE TABLE IF NOT EXISTS `crafting_cooldowns` (
  `bench` varchar(64) NOT NULL,
  `id` varchar(64) NOT NULL,
  `expires` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

-- Dumping structure for table fivem-methodrp_ptr.inventory
CREATE TABLE IF NOT EXISTS `inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `slot` int(11) DEFAULT NULL,
  `item_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `information` varchar(1024) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '0',
  `dropped` tinyint(4) NOT NULL DEFAULT 0,
  `creationDate` bigint(20) NOT NULL DEFAULT 0,
  `expiryDate` bigint(20) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1164831 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

-- Dumping structure for table fivem-methodrp_ptr.inventory_shop_logs
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

-- Dumping structure for table fivem-methodrp_ptr.meth_tables
CREATE TABLE IF NOT EXISTS `meth_tables` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tier` int(11) NOT NULL DEFAULT 1,
  `created` bigint(20) NOT NULL,
  `cooldown` bigint(20) DEFAULT NULL,
  `recipe` varchar(512) NOT NULL,
  `active_cook` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

-- Dumping structure for table fivem-methodrp_ptr.placed_meth_tables
CREATE TABLE IF NOT EXISTS `placed_meth_tables` (
  `table_id` int(11) NOT NULL,
  `owner` bigint(20) DEFAULT NULL,
  `placed` bigint(20) NOT NULL DEFAULT 0,
  `expires` bigint(20) NOT NULL DEFAULT 0,
  `coords` varchar(255) NOT NULL,
  `heading` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

-- Dumping structure for table fivem-methodrp_ptr.placed_props
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Data exporting was unselected.

CREATE TABLE `bank_accounts` (
	`account` INT(10) NOT NULL,
	`type` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`owner` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	`balance` INT(10) NOT NULL DEFAULT '0',
	`name` VARCHAR(255) NOT NULL COLLATE 'latin1_swedish_ci',
	PRIMARY KEY (`account`) USING BTREE,
	INDEX `Owner` (`owner`) USING BTREE,
	INDEX `Type` (`type`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB;

CREATE TABLE `bank_accounts_permissions` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`account` INT(10) NOT NULL,
	`type` INT(10) NOT NULL,
	`jointOwner` VARCHAR(255) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`job` VARCHAR(255) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`workplace` VARCHAR(255) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	`jobPermissions` VARCHAR(1024) NULL DEFAULT NULL COLLATE 'latin1_swedish_ci',
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `job` (`job`) USING BTREE,
	INDEX `workplace` (`workplace`) USING BTREE,
	INDEX `jointOwner` (`jointOwner`) USING BTREE,
	INDEX `account` (`account`) USING BTREE
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1;


CREATE TABLE `bank_accounts_transactions` (
	`id` INT(10) NOT NULL AUTO_INCREMENT,
	`type` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_general_ci',
	`account` INT(10) NOT NULL,
	`amount` INT(10) NOT NULL DEFAULT '0',
	`timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	`title` VARCHAR(255) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	`description` VARCHAR(1024) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	`data` VARCHAR(1024) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `account` (`account`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1;

-- Dumping structure for table fivem-methodrp_ptr.character_parole
CREATE TABLE IF NOT EXISTS `character_parole` (
  `SID` int(11) NOT NULL,
  `end` datetime NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `parole` int(11) NOT NULL DEFAULT 0,
  `sentence` int(11) NOT NULL DEFAULT 0,
  `fine` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping structure for table fivem-methodrp_ptr.mdt_charges
CREATE TABLE IF NOT EXISTS `mdt_charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NOT NULL DEFAULT 1,
  `title` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fine` int(11) NOT NULL DEFAULT 0,
  `jail` int(11) NOT NULL DEFAULT 0,
  `points` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table fivem-sandboxrp_prod.mdt_charges: ~144 rows (approximately)
DELETE FROM `mdt_charges`;
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
	(16, 3, 'Reckless Endangerment ', "Person creates a substantial risk of serious physical injury to themselves or another person. The accused person isn\'t required to intend the resulting or potential harm, but must have acted in a way that showed a disregard for the foreseeable consequences of the actions.", 1000, 15, 0),
	(17, 2, 'Unlawful Imprisonment', "Restricts a person\'s movement within any area without justification or consent.", 1000, 15, 0),
	(18, 2, 'Criminal Threats', 'A "criminal threat" is when you threaten to kill or physically harm someone.That person is thereby placed in a state of reasonably sustained fear for his/her safety or for the safety of his/her immediate family, the threat is specific and unequivocal and you communicate the threat verbally, in writing, or via an electronically transmitted device.', 1250, 15, 0),
	(19, 2, 'Assault & Battery', 'Openly threatens violence or injury upon an individual either orally or thru their actions and acts upon that threat.', 825, 15, 0),
	(20, 3, 'Terrorism ', 'The unlawful use of Extreme Violence and Intimidation against the Civilian Population that would pursue political aims, compromise medical neutrality, or in the name of religious ideology. The unlawful use of Extreme Violence and Intimidation against Government Entities that would pursue the disruption, destabilization or destruction of those entities for political or religious aims.', 0, 999, 0),
	(21, 3, 'Weapons Trafficking', 'The unlawful transportation of a large quantity of any class of firearms and/or molotov cocktails and/or explosives, with the intent to distribute. Intent to distribute can be inferred through circumstances surrounding the discovery of the firearms or a pattern of behavior of the suspects, including large sums of money, and/or the possession of six or more firearms.', 0, 999, 0),
	(22, 3, 'Criminal Possession of a Government-Issue Firearm', 'It is illegal to possess a government-owned or issued firearm, without being a duly sworn Peace Officer. This also includes flashbangs.', 22500, 210, 0),
	(23, 3, 'Criminal Possession of a Government-Issue Less Lethal Firearm/Weapon', 'It is illegal to possess a government-owned or issued less-lethal firearm, without being a duly sworn Peace Officer. This would include tasers, batons and beanbag shotguns.', 12000, 70, 0),
	(24, 3, 'Criminal Possession of a Firearm [Class 3]', "Possesses a Class 3 weapon. LMG, RPG, DMR\'s", 3000, 35, 0),
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
	(53, 3, 'Grand Theft Auto', "Unlawfully taking a vehicle belonging to another, or driving the vehicle without the owner\'s consent, with the intent to permanently deprive the owner of the vehicle.", 1050, 15, 0),
	(54, 2, 'Joyriding', "The taking or operating of a vehicle without the owner\'s consent, without the intent to deprive the owner of the vehicle permanently.", 500, 10, 4),
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
	(68, 3, 'Harboring or Aiding an Escaped Violent Felon', "Whoever knowingly harbors or conceals any prisoner wanted for a capital level offense after their escape from custody of Bolingbroke State Penitentiary or any other State correctional institution shall be guilty of this offense. This offense shall include but not be limited to providing residence for the prisoner, assisting the prisoner in escape from the authorities, and/or failing to notify the proper authorities of the prisoner\'s location if the suspect should reasonably know the prisoner is wanted for arrest on capital level offenses. ", 3000, 65, 0),
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
	(90, 3, 'Illegal Exhumation', "The removal of a body without authorization from where it lies in state, or it\'s final resting place.", 1000, 15, 0),
	(91, 2, 'Practicing Medicine Without a License', 'Practicing medicine without a proper license. Treating citizens for any medical, or health related issue without proper documentation or licensing. Law Enforcement is exempt only during their qualified duties. ', 1500, 12, 0),
	(92, 2, 'Public Indecency', 'A lewd caress or indecent fondling of the body. Public place shall also include jails, and correctional institutions of the state.', 500, 10, 0),
	(93, 1, 'Littering', 'The act of throwing objects on the ground in a disobedient manner. Leaving trash and other items on the ground.', 250, 0, 0),
	(94, 1, 'Public Intoxication ', 'A person who is under the influence of Alcohol or a Controlled Dangerous Substance, in a public place.', 100, 0, 0),
	(95, 3, 'Impersonating a Judge', 'Acting as a Judge or introducing themselves to others a judge and attempting to perform judicial duties', 10000, 40, 0),
	(96, 3, 'Impersonating a Government Employee', 'Acting as public servant or introducing themselves to others as a public servant, and attempting to perform their duties. This includes public servants and all other government employees that are not otherwise listed under a higher impersonation charge.', 5000, 30, 0),
	(97, 3, 'Impersonation', 'Providing law enforcement with a false, or fictitious name, while under detainment or under arrest.', 1250, 15, 0),
	(98, 3, 'Identity Theft', "A person secures an undeserved financial benefit for themselves. Cause the victim to suffer a loss, which could be financial, emotional or some other type of damage. Escapes criminal liability by using another person\'s name, birth date or other identifying information.", 1500, 20, 0),
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
	(132, 1, 'Improper Window Tint', "Operating a vehicle with tint that obscures the view from the outside. Window tint must be completely be dark to where Law Enforcement can\'t see citizens in the vehicle.  Law Enforcement may use discretion to give a verbal warning, or written violation. Vehicle may be impounded. **Government vehicles are exempt.**", 250, 0, 0),
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

-- Dumping structure for table fivem-methodrp_ptr.mdt_library
CREATE TABLE IF NOT EXISTS `mdt_library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `link` varchar(1024) NOT NULL,
  `job` varchar(255) DEFAULT NULL,
  `workplace` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job` (`job`),
  KEY `workplace` (`workplace`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping structure for table fivem-methodrp_ptr.mdt_notices
CREATE TABLE IF NOT EXISTS `mdt_notices` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(1024) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `creator` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `restricted` varchar(50) NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `job` (`restricted`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping structure for table fivem-methodrp_ptr.mdt_reports
CREATE TABLE IF NOT EXISTS `mdt_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL DEFAULT 0,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `allowAttorney` tinyint(4) NOT NULL DEFAULT 0,
  `creatorSID` int(11) NOT NULL,
  `creatorName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creatorCallsign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `type` (`type`),
  KEY `creatorSID` (`creatorSID`),
  KEY `creatorName` (`creatorName`),
  KEY `creatorCallsign` (`creatorCallsign`),
  KEY `allowAttorney` (`allowAttorney`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping structure for table fivem-methodrp_ptr.mdt_reports_evidence
CREATE TABLE IF NOT EXISTS `mdt_reports_evidence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `label` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report` (`report`),
  CONSTRAINT `FK1_mdt_reports_evidence` FOREIGN KEY (`report`) REFERENCES `mdt_reports` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping structure for table fivem-methodrp_ptr.mdt_reports_people
CREATE TABLE IF NOT EXISTS `mdt_reports_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report` int(11) NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'person',
  `SID` int(11) NOT NULL,
  `First` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Last` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Callsign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Licenses` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '{}',
  `charges` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '{}',
  `sentenced` tinyint(4) NOT NULL DEFAULT 0,
  `sentencedAt` datetime DEFAULT NULL,
  `plea` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'unknown',
  `points` int(11) NOT NULL DEFAULT 0,
  `fine` int(11) NOT NULL DEFAULT 0,
  `jail` int(11) NOT NULL DEFAULT 0,
  `parole` int(11) NOT NULL DEFAULT 0,
  `reduction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `revoked` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping structure for table fivem-methodrp_ptr.mdt_warrants
CREATE TABLE IF NOT EXISTS `mdt_warrants` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state` varchar(50) NOT NULL DEFAULT 'active',
  `title` varchar(1024) NOT NULL,
  `report` int(10) NOT NULL,
  `suspect` int(10) NOT NULL,
  `notes` longtext NOT NULL,
  `creatorSID` int(11) NOT NULL,
  `creatorName` varchar(255) NOT NULL DEFAULT '',
  `creatorCallsign` varchar(255) NOT NULL DEFAULT '',
  `issued` datetime NOT NULL DEFAULT current_timestamp(),
  `expires` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `suspect` (`suspect`),
  KEY `report` (`report`),
  KEY `expires` (`expires`),
  CONSTRAINT `FK1_mdt_warrants` FOREIGN KEY (`report`) REFERENCES `mdt_reports` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `FK2_mdt_warrants` FOREIGN KEY (`suspect`) REFERENCES `mdt_reports_people` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `whitelisted_peds` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`sid` INT(11) NOT NULL,
	`model` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_520_ci',
	`label` VARCHAR(255) NOT NULL COLLATE 'utf8mb4_unicode_520_ci',
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `sid` (`sid`) USING BTREE
)
COLLATE='utf8mb4_unicode_520_ci' ENGINE=InnoDBAUTO_INCREMENT=0;

CREATE TABLE IF NOT EXISTS `business_phones` (
  `id` char(64) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `number` varchar(12) NOT NULL,
  `muted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
