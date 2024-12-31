-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: database-eda.chuw4mu887pw.ap-northeast-2.rds.amazonaws.com    Database: eda
-- ------------------------------------------------------
-- Server version	8.0.39

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `auto_type`
--

DROP TABLE IF EXISTS `auto_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auto_type` (
  `auto_id` int NOT NULL,
  `auto` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `brand_type`
--

DROP TABLE IF EXISTS `brand_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_type` (
  `brand_id` int NOT NULL,
  `brand` varchar(32) DEFAULT NULL,
  `auto_level` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `car_accident`
--

DROP TABLE IF EXISTS `car_accident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_accident` (
  `accident_id` int NOT NULL AUTO_INCREMENT,
  `accident_date` date DEFAULT NULL,
  `speed` int DEFAULT NULL,
  `age` int DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `auto_id` int DEFAULT NULL,
  `state_id` int DEFAULT NULL,
  `weather_id` int DEFAULT NULL,
  `road_id` int DEFAULT NULL,
  `movement_id` int DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `pavement_id` int DEFAULT NULL,
  PRIMARY KEY (`accident_id`),
  KEY `auto_id` (`auto_id`),
  KEY `state_id` (`state_id`),
  KEY `weather_id` (`weather_id`),
  KEY `road_id` (`road_id`),
  KEY `movement_id` (`movement_id`),
  KEY `brand_id` (`brand_id`),
  KEY `pavement_id` (`pavement_id`),
  CONSTRAINT `car_accident_ibfk_1` FOREIGN KEY (`auto_id`) REFERENCES `auto_type` (`auto_id`),
  CONSTRAINT `car_accident_ibfk_2` FOREIGN KEY (`state_id`) REFERENCES `country_type` (`country_id`),
  CONSTRAINT `car_accident_ibfk_3` FOREIGN KEY (`weather_id`) REFERENCES `weather_type` (`weather_id`),
  CONSTRAINT `car_accident_ibfk_4` FOREIGN KEY (`road_id`) REFERENCES `road_type` (`road_id`),
  CONSTRAINT `car_accident_ibfk_5` FOREIGN KEY (`movement_id`) REFERENCES `movement_type` (`movement_id`),
  CONSTRAINT `car_accident_ibfk_6` FOREIGN KEY (`brand_id`) REFERENCES `brand_type` (`brand_id`),
  CONSTRAINT `car_accident_ibfk_7` FOREIGN KEY (`pavement_id`) REFERENCES `pavement_type` (`pavement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16749 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country_type`
--

DROP TABLE IF EXISTS `country_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country_type` (
  `country_id` int NOT NULL,
  `country` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `movement_type`
--

DROP TABLE IF EXISTS `movement_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movement_type` (
  `movement_id` int NOT NULL,
  `movement` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`movement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pavement_type`
--

DROP TABLE IF EXISTS `pavement_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pavement_type` (
  `pavement_id` int NOT NULL,
  `pavement` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`pavement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `road_type`
--

DROP TABLE IF EXISTS `road_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `road_type` (
  `road_id` int NOT NULL,
  `road` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`road_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weather_type`
--

DROP TABLE IF EXISTS `weather_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_type` (
  `weather_id` int NOT NULL,
  `weather` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`weather_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-31 16:51:48
