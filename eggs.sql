-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.32-0ubuntu0.18.04.1 - (Ubuntu)
-- Server OS:                    Linux
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ripple
CREATE DATABASE IF NOT EXISTS `ripple` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ripple`;

-- Dumping structure for table ripple.eggs
CREATE TABLE IF NOT EXISTS `eggs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('hash','path','file','title') NOT NULL DEFAULT 'hash',
  `value` varchar(128) NOT NULL,
  `tag` varchar(128) NOT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  `is_regex` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table ripple.eggs: ~0 rows (approximately)
/*!40000 ALTER TABLE `eggs` DISABLE KEYS */;
REPLACE INTO `eggs` (`id`, `type`, `value`, `tag`, `ban`, `is_regex`) VALUES
	(1, 'hash', 'a01cfb486435838979bef7c4a7899539', 'osu!rx', 1, 0),
	(2, 'hash', '3f00c745101ae6714ef4e69633eb6291', 'ReplayRidor', 1, 0),
	(3, 'title', 'Clicking - OP Auto Clicker 3.0', 'Auto-clicker', 1, 0),
	(4, 'file', 'Autoclicker', 'Auto-clicker', 1, 0),
	(5, 'title', 'Stopped - OP Auto Clicker 3.0', 'Auto-clicker', 1, 0),
	(6, 'hash', '297ce0b3c836ae307023d7c2c3a7b1ec', 'osu!hiddenhax', 1, 0),
	(7, 'hash', '137411cbaad05967813bf9c0e9b949d1', 'OsuBot-1.0.0', 1, 0),
	(8, 'hash', '5e94db4c54c55520ee9602ceca6dc743', 'osu! spinbot v2.2.1', 1, 0),
	(9, 'hash', 'd545aec70bf269122a71259e31c26a22', 'Cursor Dance Bot', 1, 0);
/*!40000 ALTER TABLE `eggs` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
