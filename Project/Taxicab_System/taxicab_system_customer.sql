CREATE DATABASE  IF NOT EXISTS `taxicab_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `taxicab_system`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: taxicab_system
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `e-mail-id` varchar(40) NOT NULL,
  `customer-name` varchar(45) DEFAULT NULL,
  `customer-gender` varchar(45) DEFAULT NULL,
  `customer-DOB` datetime DEFAULT NULL,
  `source location name` varchar(45) DEFAULT NULL,
  `GPS` varchar(45) DEFAULT NULL,
  `coupons` varchar(45) DEFAULT NULL,
  `feedback` varchar(45) DEFAULT NULL,
  `ride` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`e-mail-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('A_Mohapa@memphis.edu','Ankita','female','1989-05-06 00:00:00','Madison',NULL,NULL,NULL,NULL),('Alex_New@memphis.edu','Alex','male','1999-04-02 00:00:00','Shelby Farms',NULL,NULL,NULL,NULL),('Dan@memphis.edu','Dan','male','1988-02-03 00:00:00','Windover',NULL,NULL,NULL,NULL),('F.1@gmail.com','Fred','male','1990-03-01 00:00:00','Poplar',NULL,NULL,NULL,NULL),('Jeni_123@gmail.com','Jennifer','female','1978-05-01 00:00:00','Quince',NULL,NULL,NULL,NULL),('N_Niki@yahoo.com','Niki','female','1987-05-04 00:00:00','Riverdale',NULL,NULL,NULL,NULL),('T_Coo@gmail.com','Tonya','female','1983-08-02 00:00:00','Riverside',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-23 11:15:52
