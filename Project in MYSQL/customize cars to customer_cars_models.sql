CREATE DATABASE  IF NOT EXISTS `customize cars to customer` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `customize cars to customer`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: customize cars to customer
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `cars_models`
--

DROP TABLE IF EXISTS `cars_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cars_models` (
  `chassis_num` varchar(17) NOT NULL,
  `price` int NOT NULL,
  `model_name` varchar(45) NOT NULL,
  `year` year NOT NULL,
  `finish_level` varchar(45) NOT NULL,
  `Intercity_fuel_consumption` varchar(40) NOT NULL,
  `urban_fuel_consumption` varchar(40) NOT NULL,
  `manufacturer_name` varchar(20) NOT NULL,
  PRIMARY KEY (`chassis_num`,`manufacturer_name`),
  KEY `fk7_idx` (`manufacturer_name`),
  KEY `Index_car_price` (`price`),
  CONSTRAINT `fk7` FOREIGN KEY (`manufacturer_name`) REFERENCES `car_manufacturer` (`manufacturer_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars_models`
--

LOCK TABLES `cars_models` WRITE;
/*!40000 ALTER TABLE `cars_models` DISABLE KEYS */;
INSERT INTO `cars_models` VALUES ('31',91000,'mazda3',2020,'high','1:18','1:20','mazda'),('32',150000,'Toyota corolla',2021,'high','1:12','1:10','toyota'),('33',170000,'subaru BRZ',2020,'meduim','1:8','1:10','subaru'),('34',250000,'mazda6',2021,'high','1:12','1:12','mazda'),('35',100000,'mazda CX5',2021,'high','1:10','1:8','mazda');
/*!40000 ALTER TABLE `cars_models` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-12 22:35:49
