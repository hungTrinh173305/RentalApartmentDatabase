-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: project_dongk_trinhh
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Current Database: `project_dongk_trinhh`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `project_dongk_trinhh` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `project_dongk_trinhh`;

--
-- Table structure for table `apartment`
--

DROP TABLE IF EXISTS `apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apartment` (
  `building_no` int NOT NULL,
  `floor` int NOT NULL,
  `room_no` int NOT NULL,
  `no_of_bedroom` int NOT NULL,
  `no_of_bathroom` int NOT NULL,
  `type` varchar(20) NOT NULL,
  `size` float NOT NULL,
  PRIMARY KEY (`building_no`,`floor`,`room_no`),
  CONSTRAINT `apartment_ibfk_1` FOREIGN KEY (`building_no`) REFERENCES `building` (`building_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apartment`
--

LOCK TABLES `apartment` WRITE;
/*!40000 ALTER TABLE `apartment` DISABLE KEYS */;
INSERT INTO `apartment` VALUES (1,1,1,2,3,'normal',100),(1,1,2,2,3,'duplex',200),(1,2,1,2,3,'normal',150),(1,2,2,2,3,'duplex',200),(2,1,1,2,3,'duplex',200),(2,1,2,2,3,'duplex',210),(2,2,1,2,3,'duplex',250),(2,2,2,2,3,'duplex',230),(2,3,1,3,4,'penthouse',300),(2,3,2,3,4,'penthouse',200),(3,1,1,2,3,'normal',110),(3,1,2,2,3,'normal',120),(3,2,1,2,3,'normal',120),(3,2,2,2,3,'normal',120),(4,1,1,2,2,'normal',120),(4,1,2,2,2,'normal',120),(5,1,1,2,2,'normal',110),(5,1,2,2,2,'normal',120),(5,2,1,2,2,'normal',130),(5,2,2,2,2,'normal',130),(5,3,1,2,2,'normal',110),(5,3,2,3,3,'penthouse',320);
/*!40000 ALTER TABLE `apartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `building_no` int NOT NULL,
  `build_date` date NOT NULL,
  `no_of_floor` int NOT NULL,
  `no_of_room` int NOT NULL,
  `allow_pets` binary(1) NOT NULL,
  `address` varchar(500) NOT NULL,
  `parking_lot_no` int NOT NULL,
  PRIMARY KEY (`building_no`),
  KEY `parking_lot_no` (`parking_lot_no`),
  CONSTRAINT `building_ibfk_1` FOREIGN KEY (`parking_lot_no`) REFERENCES `parking_lot` (`parking_lot_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,'2001-06-09',2,4,_binary '1','123 1st Street, Schenectady, NY, 12308-01',1),(2,'2001-07-09',3,6,_binary '0','124 1st Street, Schenectady, NY, 12309-02',2),(3,'2001-08-09',2,4,_binary '1','125 1st Street, Schenectady, NY, 12308-03',3),(4,'2001-09-09',1,2,_binary '0','126 1st Street, Schenectady, NY, 12308-04',4),(5,'2001-10-09',3,6,_binary '1','127 1st Street, Schenectady, NY, 12308-05',5);
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ssn` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `mis` varchar(10) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `hourly_rate` float NOT NULL,
  `hire_date` date NOT NULL,
  `address` varchar(500) NOT NULL,
  PRIMARY KEY (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('041865556','Hung','Trinh','T','Male','trinhh@land.co','2000-01-07',1000,'2018-08-10','127 2nd Street, Schenectady, NY, 12309-03'),('232105522','Justina','Sergeant','B','Female','sergej@land.co','1980-01-15',50,'2007-01-10','125 2nd Street, Schenectady, NY, 12309-01'),('262117281','Jade','Proudfoot','M','Male','prounj@land.co','1992-07-10',40,'2012-08-10','132 2nd Street, Schenectady, NY, 12309-08'),('269019796','Anastasia','Marina','MM','Female','marina@land.co','1980-06-01',60,'2000-08-10','129 2nd Street, Schenectady, NY, 12309-05'),('416155508','Camille','Hathaway','D','Female','hathac@land.co','1991-09-10',20,'2010-08-10','124 2nd Street, Schenectady, NY, 12309-02'),('417605992','Minerva','Leon','A','Female','leonm@land.co','2001-10-10',15,'2021-08-06','134 3rd Street, Schenectady, NY, 12330'),('469232069','Peyton','Davies','J','Female','daviep@land.co','1998-06-07',25,'2012-08-07','130 2nd Street, Schenectady, NY, 12309-06'),('502823428','Candace','Mould','LD','Female','mouldc@land.co','1995-07-10',25,'2005-09-10','128 2nd Street, Schenectady, NY, 12309-04'),('519707770','Kara','Oliverson','IA','Female','olivek@land.co','1980-01-10',55,'1997-08-10','133 2nd Street, Schenectady, NY, 12309-09'),('545927795','Toby','Thompsett','A','Male','thompst@land.co','1997-10-10',20,'2010-08-10','131 2nd Street, Schenectady, NY, 12309-07'),('627389775','Donald','Blued','MV','Male','blued@land.co','2000-05-15',30,'2018-01-15','126 2nd Street, Schenectady, NY, 12309-02'),('680824963','Ronald','Power','A','Male','powerr@land.co','1990-10-10',30,'2010-08-10','123 2nd Street, Schenectady, NY, 12309-01');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_phone`
--

DROP TABLE IF EXISTS `employee_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_phone` (
  `employee_ssn` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`phone`),
  KEY `employee_ssn` (`employee_ssn`),
  CONSTRAINT `employee_phone_ibfk_1` FOREIGN KEY (`employee_ssn`) REFERENCES `employee` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_phone`
--

LOCK TABLES `employee_phone` WRITE;
/*!40000 ALTER TABLE `employee_phone` DISABLE KEYS */;
INSERT INTO `employee_phone` VALUES ('041865556','3019432887'),('232105522','2075350426'),('262117281','5056210175'),('269019796','4128155323'),('416155508','8286704454'),('417605992','5057124167'),('469232069','5053773175'),('502823428','2132533822'),('519707770','2079191562'),('545927795','2348735131'),('545927795','3513614564'),('545927795','5056441243'),('627389775','2167774130'),('680824963','5054203279'),('680824963','5056320305');
/*!40000 ALTER TABLE `employee_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `employee_ssn` varchar(20) NOT NULL,
  `building_no` int NOT NULL,
  PRIMARY KEY (`employee_ssn`),
  KEY `building_no` (`building_no`),
  CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`employee_ssn`) REFERENCES `employee` (`ssn`),
  CONSTRAINT `manager_ibfk_2` FOREIGN KEY (`building_no`) REFERENCES `building` (`building_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('269019796',1),('519707770',2),('232105522',3),('262117281',4),('041865556',5);
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `non_tenant`
--

DROP TABLE IF EXISTS `non_tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `non_tenant` (
  `person_phone` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  PRIMARY KEY (`person_phone`),
  CONSTRAINT `non_tenant_ibfk_1` FOREIGN KEY (`person_phone`) REFERENCES `person` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `non_tenant`
--

LOCK TABLES `non_tenant` WRITE;
/*!40000 ALTER TABLE `non_tenant` DISABLE KEYS */;
INSERT INTO `non_tenant` VALUES ('3867410059','123 3rd Street, Schenectady, NY, 12310-01'),('5506112804','124 3rd Street, Schenectady, NY, 12310-02'),('6452451857','125 3rd Street, Schenectady, NY, 12310-03'),('6554382010','126 3rd Street, Schenectady, NY, 12310-04'),('6669680591','127 3rd Street, Schenectady, NY, 12310-05');
/*!40000 ALTER TABLE `non_tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking_lot`
--

DROP TABLE IF EXISTS `parking_lot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking_lot` (
  `parking_lot_no` int NOT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`parking_lot_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_lot`
--

LOCK TABLES `parking_lot` WRITE;
/*!40000 ALTER TABLE `parking_lot` DISABLE KEYS */;
INSERT INTO `parking_lot` VALUES (1,5),(2,5),(3,5),(4,5),(5,5);
/*!40000 ALTER TABLE `parking_lot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking_slot`
--

DROP TABLE IF EXISTS `parking_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parking_slot` (
  `parking_lot_no` int NOT NULL,
  `section` varchar(5) NOT NULL,
  `slot_no` int NOT NULL,
  `type` varchar(20) NOT NULL,
  `vehicle_license_plate` varchar(10) DEFAULT NULL,
  `in_date` date DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  PRIMARY KEY (`parking_lot_no`,`section`,`slot_no`),
  KEY `vehicle_license_plate` (`vehicle_license_plate`),
  CONSTRAINT `parking_slot_ibfk_1` FOREIGN KEY (`parking_lot_no`) REFERENCES `parking_lot` (`parking_lot_no`),
  CONSTRAINT `parking_slot_ibfk_2` FOREIGN KEY (`vehicle_license_plate`) REFERENCES `vehicle` (`license_plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_slot`
--

LOCK TABLES `parking_slot` WRITE;
/*!40000 ALTER TABLE `parking_slot` DISABLE KEYS */;
INSERT INTO `parking_slot` VALUES (1,'A',1,'car','4TBW335','2022-09-12','12:30:00'),(1,'A',2,'car','5JZR350','2022-09-12','11:30:00'),(1,'A',3,'car','7ZMU685','2022-08-12','09:30:00'),(1,'B',1,'moped','6BFM827','2015-10-12','12:30:00'),(1,'B',2,'moped',NULL,NULL,NULL),(2,'A',1,'car','EPP5277','2022-09-12','12:30:00'),(2,'A',2,'car',NULL,NULL,NULL),(2,'A',3,'car',NULL,NULL,NULL),(2,'B',1,'moped','LGP7277','2022-09-12','12:33:00'),(2,'B',2,'moped',NULL,NULL,NULL),(3,'A',1,'car','YZP2277','2022-09-12','12:30:00'),(3,'A',2,'car','DUP5277','2022-09-12','12:33:00'),(3,'A',3,'car',NULL,NULL,NULL),(3,'B',1,'moped',NULL,NULL,NULL),(3,'B',2,'moped',NULL,NULL,NULL),(4,'A',1,'car',NULL,NULL,NULL),(4,'A',2,'car',NULL,NULL,NULL),(4,'A',3,'car',NULL,NULL,NULL),(4,'B',1,'moped','EOP9347','2022-11-12','12:30:00'),(4,'B',2,'moped',NULL,NULL,NULL),(5,'A',1,'car',NULL,NULL,NULL),(5,'A',2,'car',NULL,NULL,NULL),(5,'A',3,'car',NULL,NULL,NULL),(5,'B',1,'moped',NULL,NULL,NULL),(5,'B',2,'moped',NULL,NULL,NULL);
/*!40000 ALTER TABLE `parking_slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `mis` varchar(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES ('Roberta','Workman','RG','Female','1990-09-09','robertaw@gmail.com','1185349029'),('John','Cena','D','Male','1990-09-09','cenaj@union.edu','1234567890'),('Pamela','Cruz','AS','Female','1996-03-03','pamelac@gmail.com','2156670742'),('Jon','Workman','P','Male','1990-09-09','johnw@gmail.com','2185579873'),('Shanon','Brown','K','Female','1990-09-09','shanonb@gmail.com','3867410059'),('Michael','Workman','ED','Male','2002-01-01','michaelw@gmail.com','4515933138'),('Shanon','Workman','A','Female','1990-09-09','shanonw@gmail.com','5055101519'),('Ismael','Patterson','C','Male','1999-02-02','ismaelp@gmail.com','5506112804'),('Cheryl','Edwards','KH','Female','1997-12-02','cheryle@gmail.com','6452451857'),('Gary','Nelson','B','Male','1995-05-09','garyn@gmail.com','6554382010'),('Andrew','Obrien','SW','Male','1989-09-10','andrewo@gmail.com','6669680591'),('Shanon','Fields','QE','Female','1990-09-09','shanonf@gmail.com','6886941262'),('Anna','Gabrielsen','D','Female','2000-01-09','annag@gmail.com','7714772096'),('Hart','Workman','W','Male','1990-09-09','hartw@gmail.com','9750383219'),('Joshua','Brown','G','Male','1990-09-09','joshuab@gmail.com','9822078501');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rented_apartment`
--

DROP TABLE IF EXISTS `rented_apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rented_apartment` (
  `building_no` int NOT NULL,
  `floor` int NOT NULL,
  `room_no` int NOT NULL,
  `lease_start_date` date NOT NULL,
  `lease_end_date` date NOT NULL,
  `lease_signed_date` date NOT NULL,
  `utilities_included` binary(1) NOT NULL,
  `monthly_rate` float NOT NULL,
  `lease_tenant_phone` varchar(20) NOT NULL,
  PRIMARY KEY (`building_no`,`floor`,`room_no`),
  KEY `lease_tenant_phone` (`lease_tenant_phone`),
  CONSTRAINT `rented_apartment_ibfk_1` FOREIGN KEY (`building_no`) REFERENCES `building` (`building_no`),
  CONSTRAINT `rented_apartment_ibfk_2` FOREIGN KEY (`lease_tenant_phone`) REFERENCES `tenant` (`person_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rented_apartment`
--

LOCK TABLES `rented_apartment` WRITE;
/*!40000 ALTER TABLE `rented_apartment` DISABLE KEYS */;
INSERT INTO `rented_apartment` VALUES (1,1,1,'2020-09-12','2030-09-12','2020-08-11',_binary '1',800,'5055101519'),(2,1,1,'2020-09-12','2030-09-12','2020-08-11',_binary '1',1500,'9822078501'),(2,1,2,'2020-09-12','2030-09-12','2020-08-11',_binary '1',1505,'6886941262'),(3,1,1,'2020-09-12','2030-09-12','2020-08-11',_binary '1',820,'2156670742'),(3,1,2,'2020-09-12','2030-09-12','2020-08-11',_binary '0',930,'1234567890');
/*!40000 ALTER TABLE `rented_apartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `building_no` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `opentime` time NOT NULL,
  `closetime` time NOT NULL,
  `type` varchar(20) NOT NULL,
  `operating_company` varchar(20) NOT NULL,
  PRIMARY KEY (`building_no`,`name`),
  CONSTRAINT `service_ibfk_1` FOREIGN KEY (`building_no`) REFERENCES `building` (`building_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'Aquamate Swimming','08:00:00','22:00:00','swimming','AquaCo'),(1,'Lunar Laundry','07:00:00','17:00:00','laundry','LunarCo'),(2,'Fitness Gym','07:00:00','22:00:00','gym','FitnessCo'),(2,'Lunar Laundry','07:00:00','17:00:00','laundry','LunarCo'),(3,'Lunar Laundry','07:00:00','17:00:00','laundry','LunarCo'),(4,'Lunar Laundry','07:00:00','17:00:00','laundry','LunarCo'),(5,'Lunar Laundry','07:00:00','17:00:00','laundry','LunarCo');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribed`
--

DROP TABLE IF EXISTS `subscribed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscribed` (
  `person_phone` varchar(20) NOT NULL,
  `service_building_no` int NOT NULL,
  `service_name` varchar(20) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`person_phone`,`service_building_no`,`service_name`),
  KEY `service_building_no` (`service_building_no`,`service_name`),
  CONSTRAINT `subscribed_ibfk_1` FOREIGN KEY (`person_phone`) REFERENCES `person` (`phone`),
  CONSTRAINT `subscribed_ibfk_2` FOREIGN KEY (`service_building_no`, `service_name`) REFERENCES `service` (`building_no`, `name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribed`
--

LOCK TABLES `subscribed` WRITE;
/*!40000 ALTER TABLE `subscribed` DISABLE KEYS */;
INSERT INTO `subscribed` VALUES ('3867410059',2,'Lunar Laundry','2021-09-09','2022-12-30','personal'),('5055101519',1,'Aquamate Swimming','2021-09-09','2023-02-28','business'),('5055101519',1,'Lunar Laundry','2021-09-09','2022-12-30','personal'),('5055101519',2,'Fitness Gym','2021-08-09','2022-12-31','personal'),('5506112804',2,'Fitness Gym','2021-08-09','2022-12-31','business'),('6452451857',3,'Lunar Laundry','2021-09-09','2022-12-30','personal'),('6554382010',4,'Lunar Laundry','2021-09-09','2022-12-30','personal'),('6669680591',5,'Lunar Laundry','2021-08-09','2023-02-28','business');
/*!40000 ALTER TABLE `subscribed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant`
--

DROP TABLE IF EXISTS `tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant` (
  `person_phone` varchar(20) NOT NULL,
  `ssn` char(9) NOT NULL,
  `depended_tenant_phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`person_phone`),
  KEY `depended_tenant_phone` (`depended_tenant_phone`),
  CONSTRAINT `tenant_ibfk_1` FOREIGN KEY (`person_phone`) REFERENCES `person` (`phone`),
  CONSTRAINT `tenant_ibfk_2` FOREIGN KEY (`depended_tenant_phone`) REFERENCES `tenant` (`person_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant`
--

LOCK TABLES `tenant` WRITE;
/*!40000 ALTER TABLE `tenant` DISABLE KEYS */;
INSERT INTO `tenant` VALUES ('1185349029','510318312','5055101519'),('1234567890','123456789',NULL),('2156670742','440360264',NULL),('2185579873','041906822','5055101519'),('4515933138','449303642','5055101519'),('5055101519','519177808',NULL),('6886941262','528937347',NULL),('7714772096','520442597','9822078501'),('9750383219','417312080','5055101519'),('9822078501','503212684',NULL);
/*!40000 ALTER TABLE `tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_vehicle`
--

DROP TABLE IF EXISTS `tenant_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant_vehicle` (
  `vehicle_license_plate` varchar(10) NOT NULL,
  `register_date` date NOT NULL,
  `tenant_phone` varchar(20) NOT NULL,
  PRIMARY KEY (`vehicle_license_plate`),
  KEY `tenant_phone` (`tenant_phone`),
  CONSTRAINT `tenant_vehicle_ibfk_1` FOREIGN KEY (`vehicle_license_plate`) REFERENCES `vehicle` (`license_plate`),
  CONSTRAINT `tenant_vehicle_ibfk_2` FOREIGN KEY (`tenant_phone`) REFERENCES `tenant` (`person_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_vehicle`
--

LOCK TABLES `tenant_vehicle` WRITE;
/*!40000 ALTER TABLE `tenant_vehicle` DISABLE KEYS */;
INSERT INTO `tenant_vehicle` VALUES ('4TBW335','2022-10-10','5055101519'),('5JZR350','2019-06-15','5055101519'),('6BFM827','2020-09-19','5055101519'),('7ZMU685','2020-12-09','4515933138'),('EPP5277','2019-11-29','4515933138');
/*!40000 ALTER TABLE `tenant_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `license_plate` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  PRIMARY KEY (`license_plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('4TBW335','car','red'),('5JZR350','car','blue'),('6BFM827','moped','yellow'),('7ZMU685','car','black'),('DUP5277','car','black'),('EOP9347','moped','purple'),('EPP5277','car','white'),('LGP7277','moped','white'),('YZP2277','car','white');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker` (
  `employee_ssn` char(9) NOT NULL,
  `building_no` int NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`employee_ssn`),
  KEY `building_no` (`building_no`),
  CONSTRAINT `worker_ibfk_1` FOREIGN KEY (`employee_ssn`) REFERENCES `employee` (`ssn`),
  CONSTRAINT `worker_ibfk_2` FOREIGN KEY (`building_no`) REFERENCES `building` (`building_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES ('416155508',4,'Plumber'),('417605992',2,'Security'),('469232069',2,'Security'),('502823428',3,'Plumber'),('545927795',5,'Electrician'),('627389775',3,'Janitor'),('680824963',1,'Janitor');
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-08 15:44:23

