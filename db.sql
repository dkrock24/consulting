-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.29-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_consulting
CREATE DATABASE IF NOT EXISTS `db_consulting` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_consulting`;

-- Dumping structure for table db_consulting.ar_internal_metadata
CREATE TABLE IF NOT EXISTS `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_consulting.ar_internal_metadata: ~0 rows (approximately)
DELETE FROM `ar_internal_metadata`;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
	('environment', 'development', '2018-08-01 14:19:08', '2018-08-01 14:19:08');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;

-- Dumping structure for table db_consulting.schema_migrations
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_consulting.schema_migrations: ~0 rows (approximately)
DELETE FROM `schema_migrations`;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;

-- Dumping structure for table db_consulting.tbl_contact
CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `id_contact` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `date_contact` datetime DEFAULT NULL,
  `reason_id` varchar(250) DEFAULT NULL,
  `comment` text,
  `empresa` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table db_consulting.tbl_contact: ~2 rows (approximately)
DELETE FROM `tbl_contact`;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
INSERT INTO `tbl_contact` (`id_contact`, `name`, `date_contact`, `reason_id`, `comment`, `empresa`, `email`, `status`) VALUES
	(1, 'Rafael', '2018-05-08 23:34:47', '1', 'demo', NULL, NULL, 1),
	(2, 'Rafael Tejada', '2018-05-08 23:38:52', '0', 'Quiero sus servicios', 'Focus', 'rgutierreztejada@gmail.com', 1),
	(3, 'Rafael Tejada', '2018-05-08 23:39:34', 'Realizar Pedido', 'Quiero sus servicios', 'Focus', 'rgutierreztejada@gmail.com', 1);
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;

-- Dumping structure for table db_consulting.user
CREATE TABLE IF NOT EXISTS `user` (
  `clave` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table db_consulting.user: ~0 rows (approximately)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`clave`) VALUES
	('nike');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
