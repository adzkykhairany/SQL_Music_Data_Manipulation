-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: music
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `msmusicins`
--

DROP TABLE IF EXISTS `msmusicins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `msmusicins` (
  `MusicInsID` varchar(6) NOT NULL,
  `MusicIns` varchar(50) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Stock` int NOT NULL,
  `MusicInsTypeID` varchar(6) DEFAULT NULL,
  KEY `FK_MsMusicIns_MsMusicInsType` (`MusicInsTypeID`),
  CONSTRAINT `FK_MsMusicIns_MsMusicInsType` FOREIGN KEY (`MusicInsTypeID`) REFERENCES `msmusicinstype` (`MusicInsTypeID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `CheckMsci1` CHECK ((char_length(`MusicInsID`) = 5)),
  CONSTRAINT `CheckMsci2` CHECK (regexp_like(`MusicInsID`,_utf8mb4'MI[0-9][0-9][0-9]')),
  CONSTRAINT `CheckMsci3` CHECK ((`Stock` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msmusicins`
--

LOCK TABLES `msmusicins` WRITE;
/*!40000 ALTER TABLE `msmusicins` DISABLE KEYS */;
INSERT INTO `msmusicins` VALUES ('MI001','Yamaha CX-40',1150000.00,23,'MT001'),('MI002','Yamaha KX-5000',5950000.00,12,'MT005'),('MI003','Yamaha C-390',1250000.00,10,'MT001'),('MI004','Excellent P-77',25700000.00,17,'MT003'),('MI005','Board B-123',5650000.00,30,'MT005'),('MI006','Pearl Q-300',9570000.00,26,'MT004'),('MI007','Supernova X-23',4510000.00,56,'MT002'),('MI008','Yamaha Grand X-1',49750000.00,12,'MT003');
/*!40000 ALTER TABLE `msmusicins` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-03 12:50:49
