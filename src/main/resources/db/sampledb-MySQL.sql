-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.6.21-log - MySQL Community Server (GPL)
-- 서버 OS:                        Win32
-- HeidiSQL 버전:                  9.3.0.5104
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- example 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `example` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `example`;

-- 테이블 example.ids 구조 내보내기
CREATE TABLE IF NOT EXISTS `ids` (
  `TABLE_NAME` varchar(20) NOT NULL,
  `NEXT_ID` int(30) DEFAULT NULL,
  PRIMARY KEY (`TABLE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 example.ids:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `ids` DISABLE KEYS */;
INSERT INTO `ids` (`TABLE_NAME`, `NEXT_ID`) VALUES
	('SAMPLE', 115);
/*!40000 ALTER TABLE `ids` ENABLE KEYS */;

-- 테이블 example.sample 구조 내보내기
CREATE TABLE IF NOT EXISTS `sample` (
  `ID` varchar(20) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `DESCRIPTION` varchar(20) DEFAULT NULL,
  `USE_YN` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `REG_USER` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 example.sample:~55 rows (대략적) 내보내기
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
INSERT INTO `sample` (`ID`, `NAME`, `DESCRIPTION`, `USE_YN`, `REG_USER`) VALUES
	('SAMPLE-00001', 'Runtime Environment', 'Foundation Layer', 'Y', 'eGov'),
	('SAMPLE-00002', 'Runtime Environment', 'Persistence Layer', 'Y', 'eGov'),
	('SAMPLE-00003', 'Runtime Environment', 'Presentation Layer', 'Y', 'eGov'),
	('SAMPLE-00004', 'Runtime Environment', 'Business Layer', 'Y', 'eGov'),
	('SAMPLE-00005', 'Runtime Environment', 'Batch Layer', 'Y', 'eGov'),
	('SAMPLE-00007', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00008', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00009', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00010', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00011', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00012', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00013', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00014', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00015', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00016', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00017', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00018', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00019', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00020', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00021', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00022', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00023', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00024', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00025', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00026', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00027', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00028', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00029', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00030', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00031', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00032', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00033', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00034', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00035', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00036', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00037', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00038', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00039', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00040', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00041', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00042', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00043', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00044', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00045', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00046', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00047', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00048', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00049', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00050', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00051', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00052', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00053', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov'),
	('SAMPLE-00054', 'Runtime Environment', 'Integration Layer', 'Y', 'eGov');
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
