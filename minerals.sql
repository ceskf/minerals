-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.1.67-community-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2013-10-24 08:28:25
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for minerals
CREATE DATABASE IF NOT EXISTS `minerals` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `minerals`;


-- Dumping structure for table minerals.dates
CREATE TABLE IF NOT EXISTS `dates` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table minerals.dates: ~0 rows (approximately)
/*!40000 ALTER TABLE `dates` DISABLE KEYS */;
INSERT INTO `dates` (`id`, `type_id`, `dt`) VALUES
	(1, 1, '2013-10-24 07:00:07'),
	(2, 2, '2013-10-24 07:00:07');
/*!40000 ALTER TABLE `dates` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
