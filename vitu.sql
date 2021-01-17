-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: Student_Management_System
-- ------------------------------------------------------
-- Server version	8.0.22-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Education_info`
--

DROP TABLE IF EXISTS `Education_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Education_info` (
  `Srno` int DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Current_education_status` varchar(255) DEFAULT NULL,
  `Stream` varchar(255) DEFAULT NULL,
  `Course_opted` varchar(255) DEFAULT NULL,
  `Course_start_date` date DEFAULT NULL,
  `Course_end_date` date DEFAULT NULL,
  `Course_fee` int DEFAULT NULL,
  `Scholarship` int DEFAULT NULL,
  `Final_fee` int DEFAULT NULL,
  KEY `Name` (`Name`),
  KEY `stream` (`Course_opted`),
  CONSTRAINT `Education_info_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `Student_info` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Education_info`
--

LOCK TABLES `Education_info` WRITE;
/*!40000 ALTER TABLE `Education_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `Education_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment_info`
--

DROP TABLE IF EXISTS `Payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Payment_info` (
  `Srno` int DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Payment_amount` int DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_datetime` datetime DEFAULT NULL,
  `Payment_proof` varchar(255) DEFAULT NULL,
  KEY `Name` (`Name`),
  CONSTRAINT `Payment_info_ibfk_1` FOREIGN KEY (`Name`) REFERENCES `Student_info` (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment_info`
--

LOCK TABLES `Payment_info` WRITE;
/*!40000 ALTER TABLE `Payment_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `Payment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student_info`
--

DROP TABLE IF EXISTS `Student_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Student_info` (
  `Srno` int DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `DOB` date DEFAULT NULL,
  `ID_Proof_Provided` varchar(255) DEFAULT NULL,
  `ID_Proof_status` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Guardian_Name` varchar(255) DEFAULT NULL,
  `Guardian_Relation` varchar(255) DEFAULT NULL,
  `Student_Contact` int DEFAULT NULL,
  `Guardian_Contact` int DEFAULT NULL,
  `Email_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student_info`
--

LOCK TABLES `Student_info` WRITE;
/*!40000 ALTER TABLE `Student_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `Student_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-18  0:16:52
