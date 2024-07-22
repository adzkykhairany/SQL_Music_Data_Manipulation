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
-- Table structure for table `msemployee`
--

DROP TABLE IF EXISTS `msemployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `msemployee` (
  `EmployeeID` varchar(6) NOT NULL,
  `EmployeeName` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone` varchar(50) DEFAULT NULL,
  `Gender` char(1) NOT NULL,
  `DateOfBirth` datetime DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `BranchID` varchar(6) DEFAULT NULL,
  KEY `FK_MsEmployee_MsBranch` (`BranchID`),
  CONSTRAINT `FK_MsEmployee_MsBranch` FOREIGN KEY (`BranchID`) REFERENCES `msbranch` (`BranchID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `CheckEmpl1` CHECK ((char_length(`EmployeeID`) = 5)),
  CONSTRAINT `CheckEmpl2` CHECK (regexp_like(`EmployeeID`,_utf8mb4'EM[0-9][0-9][0-9]')),
  CONSTRAINT `CheckEmpl3` CHECK ((`Gender` in (_utf8mb4'M',_utf8mb4'F')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msemployee`
--

LOCK TABLES `msemployee` WRITE;
/*!40000 ALTER TABLE `msemployee` DISABLE KEYS */;
INSERT INTO `msemployee` VALUES ('EM001','Kikis Sabrina Mona','Jl. Putar-Putar No. 8','022-1239995','F','1989-03-21 00:00:00',3500000.00,'BR001'),('EM002','Marlene Martani','Jl. Gajebo No. 32','022-5675542','F','1988-06-14 00:00:00',4250000.00,'BR002'),('EM003','Rakhmat Suryahadi','Gang Gansing No. 19','021-3451232','M','1988-01-30 00:00:00',3670000.00,'BR002'),('EM004','Suhandi','Jl. Pintu Lima No. 5','022-4519377','M','1985-02-10 00:00:00',5600000.00,'BR001'),('EM005','Lisye Mareta Cahya','Jl. Gang Medan Merdeka No. 25','021-9798123','F','1986-12-12 00:00:00',5400000.00,'BR001'),('EM006','Sofian Chandra','Jl. Putar-Putar No. 12','021-8763445','M','1987-12-11 00:00:00',5500000.00,'BR005'),('EM007','William Salim','Jl. Pusing-Pusing No. 76','022-4859345','M','1987-08-14 00:00:00',5490000.00,'BR005'),('EM008','William Wijaya','Jl. Gichung No. 10','022-7859123','M','1989-11-04 00:00:00',5590000.00,'BR003');
/*!40000 ALTER TABLE `msemployee` ENABLE KEYS */;
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
