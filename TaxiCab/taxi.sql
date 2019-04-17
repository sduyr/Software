-- MySQL dump 10.13  Distrib 8.0.12, for macos10.13 (x86_64)
--
-- Host: localhost    Database: new_taxicab_system
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
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `coupon` (
  `CouponID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Coupon` varchar(45) DEFAULT NULL,
  `Expiration_Date` date DEFAULT NULL,
  `Discount_Percentage` int(11) DEFAULT NULL,
  PRIMARY KEY (`CouponID`),
  KEY `customer-name_idx` (`Customer_Coupon`),
  CONSTRAINT `fk_customer` FOREIGN KEY (`Customer_Coupon`) REFERENCES `customer` (`customername`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
INSERT INTO `coupon` VALUES (3,'David','2019-01-01',10),(4,'Senjuti','2020-01-01',15),(5,'Hani','2021-06-30',20),(6,'David','2018-12-31',25);
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `EmailID` varchar(45) NOT NULL,
  `CustomerName` varchar(45) DEFAULT NULL,
  `CustomerGender` varchar(45) DEFAULT NULL,
  `CustomerDOB` date DEFAULT NULL,
  `GPS` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`EmailID`),
  UNIQUE KEY `CustomerName` (`CustomerName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('david@memphis.edu','David','male','1999-01-01',12),('hani@memphis.edu','Hani','female','2001-01-01',20),('senjuti@memphis.edu','Senjuti','female','2000-01-01',35);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `driver` (
  `SSN` int(11) NOT NULL,
  `DriverName` varchar(45) DEFAULT NULL,
  `DriverGender` varchar(45) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `fk_vehicle` int(11) DEFAULT NULL,
  PRIMARY KEY (`SSN`),
  UNIQUE KEY `driver-name_UNIQUE` (`DriverName`),
  KEY `fk_vehicle` (`fk_vehicle`),
  CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`fk_vehicle`) REFERENCES `vehicle` (`vehicleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (100,'Ellen','female','1988-02-05 00:00:00',2),(101,'Hani','female','1950-04-06 00:00:00',3),(102,'Bob','male','1992-07-05 00:00:00',4),(103,'Ben','male','1983-05-06 00:00:00',5),(104,'Brian','male','1986-08-06 00:00:00',7),(105,'Anna','female','1986-04-02 00:00:00',7),(106,'Aaron','male','1996-08-02 00:00:00',7),(145678,'Sakira','Female','1993-12-02 00:00:00',6);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `feedback` (
  `FeedbackID` int(11) NOT NULL AUTO_INCREMENT,
  `Comment` varchar(45) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `fk_ride` int(11) DEFAULT NULL,
  PRIMARY KEY (`FeedbackID`),
  KEY `idx_feedback_fk_ride` (`fk_ride`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`fk_ride`) REFERENCES `ride` (`rideid`)
) ENGINE=InnoDB AUTO_INCREMENT=124226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (124223,'Great ride!',10,3),(124224,'Terrible ride :(',2,4),(124225,'Car smells like french fries :)',8,5);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ride`
--

DROP TABLE IF EXISTS `ride`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ride` (
  `RideID` int(11) NOT NULL AUTO_INCREMENT,
  `SourceGPS` decimal(10,0) DEFAULT NULL,
  `DestGPS` decimal(10,0) DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `fk_driver` int(11) DEFAULT NULL,
  `fk_customer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`RideID`),
  UNIQUE KEY `RideID_UNIQUE` (`RideID`),
  KEY `fk_driver` (`fk_driver`),
  KEY `fk_customer` (`fk_customer`),
  KEY `idx_ride_RideID` (`RideID`),
  CONSTRAINT `ride_ibfk_1` FOREIGN KEY (`fk_driver`) REFERENCES `driver` (`ssn`),
  CONSTRAINT `ride_ibfk_2` FOREIGN KEY (`fk_customer`) REFERENCES `customer` (`emailid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ride`
--

LOCK TABLES `ride` WRITE;
/*!40000 ALTER TABLE `ride` DISABLE KEYS */;
INSERT INTO `ride` VALUES (3,10,20,'2018-11-12 10:00:00','2018-11-12 10:30:00',101,'senjuti@memphis.edu'),(4,10,20,'2018-11-18 23:00:00','2018-11-19 00:30:00',105,'david@memphis.edu'),(5,20,30,'2018-11-29 14:00:00','2018-11-29 15:00:00',145678,'hani@memphis.edu');
/*!40000 ALTER TABLE `ride` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicle` (
  `VehicleID` int(11) NOT NULL AUTO_INCREMENT,
  `Make` varchar(45) DEFAULT NULL,
  `Model` varchar(45) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `PersonCapacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`VehicleID`),
  UNIQUE KEY `VehicleID_UNIQUE` (`VehicleID`),
  KEY `idx_vehicle_VehicleID` (`VehicleID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (2,'Toyota','Camry',2015,4),(3,'Honda','Accord',2011,3),(4,'Nissan','Altima',2013,4),(5,'Kia','Optima',2014,3),(6,'Ford','F150',2017,1),(7,'Cooper','Mini',2011,1);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-30  0:39:34
