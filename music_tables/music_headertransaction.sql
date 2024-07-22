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
-- Table structure for table `headertransaction`
--

DROP TABLE IF EXISTS `headertransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `headertransaction` (
  `TransactionID` varchar(6) NOT NULL,
  `TransactionDate` datetime NOT NULL,
  `EmployeeID` varchar(6) DEFAULT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  CONSTRAINT `headertransaction_chk_1` CHECK ((char_length(`TransactionID`) = 5)),
  CONSTRAINT `headertransaction_chk_2` CHECK (regexp_like(`TransactionID`,_utf8mb4'TR[0-9][0-9][0-9]'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headertransaction`
--

LOCK TABLES `headertransaction` WRITE;
/*!40000 ALTER TABLE `headertransaction` DISABLE KEYS */;
INSERT INTO `headertransaction` VALUES ('TR001','2010-10-02 15:30:00','EM003','Veronica'),('TR002','2010-10-15 09:50:00','EM008','Richard Parker'),('TR003','2010-10-16 13:26:00','EM005','Steven Michael'),('TR004','2010-11-22 10:55:00','EM004','Anabelle Setiawan Wati'),('TR005','2010-11-25 15:30:00','EM003','Michelle Regina'),('TR006','2010-12-13 08:23:00','EM001','Dian Sastro'),('TR007','2010-12-13 18:19:00','EM001','Cathy'),('TR008','2010-12-27 15:21:00','EM006','Stephanie Meyer'),('TR009','2010-01-02 10:28:00','EM007','Michael J.'),('TR010','2010-01-03 12:39:00','EM002','Arnold Swasana Segar');
/*!40000 ALTER TABLE `headertransaction` ENABLE KEYS */;
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
