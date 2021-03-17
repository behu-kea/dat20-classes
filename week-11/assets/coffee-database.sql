-- create the database
DROP DATABASE IF EXISTS coffee_database;
CREATE DATABASE coffee_database;

-- select the database
USE coffee_database;

-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: acoffeeshop
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `countryid` int NOT NULL,
  `country` varchar(100) NOT NULL,
  PRIMARY KEY (`countryid`),
  UNIQUE KEY `country_UNIQUE` (`country`),
  UNIQUE KEY `countryid_UNIQUE` (`countryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (5,'Columbia'),(1,'Danmark'),(4,'Finland'),(3,'Norge'),(6,'Sri Lanka'),(2,'Sverige');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customerid` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `phonenum` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`customerid`),
  UNIQUE KEY `customerid_UNIQUE` (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Chris','Martin','M','01123147789'),(2,'Emma','Law','F','01123439899'),(3,'Mark','Watkins','M','01174592013'),(4,'Daniel','Williams','M','2323'),(5,'Sarah','Taylor','F','01176348290'),(6,'Katie','Armstrong','F','01145787353'),(7,'Michael','Bluth','M','01980289282'),(8,'Kat','Nash','F','01176987789'),(9,'Buster','Bluth','M','01173456782'),(10,'Charlie',NULL,'F','01139287883'),(11,'Lindsay','Bluth','F','01176923804'),(12,'Harry','Johnson','M',NULL),(13,'John','Smith','M','01174987221'),(14,'John','Taylor','M',NULL),(15,'Emma','Smith','F','01176984116'),(16,'Gob','Bluth','M','01176985498'),(17,'George','Bluth','M','01176984303'),(18,'Lucille','Bluth','F','01198773214'),(19,'George','Evans','M','01174502933'),(20,'Emily','Simmonds','F','01899284352'),(21,'John','Smith','M','01144473330'),(22,'Jennifer',NULL,'F',NULL),(23,'Toby','West','M','01176009822'),(24,'Paul','Edmonds','M','01966947113');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `productid` int NOT NULL,
  `customerid` int NOT NULL,
  `qty` smallint DEFAULT NULL,
  `orderdttm` datetime DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  UNIQUE KEY `orderid_UNIQUE` (`orderid`),
  KEY `ordercustpk_idx` (`customerid`),
  KEY `orderprodfk_idx` (`productid`),
  CONSTRAINT `ordercustfk` FOREIGN KEY (`customerid`) REFERENCES `customers` (`customerid`),
  CONSTRAINT `orderprodfk` FOREIGN KEY (`productid`) REFERENCES `products` (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,2,'2021-02-05 14:10:20'),(2,2,1,2,'2021-02-05 15:30:10'),(3,3,1,3,'2021-02-06 16:30:10'),(4,1,2,3,'2021-02-06 16:40:10'),(5,1,1,3,'2021-02-06 14:40:10'),(6,3,3,2,'2021-02-08 12:30:10'),(7,18,3,2,'2021-01-02 13:10:10'),(8,20,4,3,'2021-01-02 14:10:09'),(9,20,2,1,'2021-02-10 15:10:10'),(10,20,2,2,'2021-02-02 14:10:10'),(11,20,3,1,'2021-02-07 13:00:00'),(12,3,4,2,'2021-03-01 00:00:01'),(13,3,2,2,'2021-02-01 13:30:01');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` decimal(5,2) DEFAULT NULL,
  `countryid` int DEFAULT NULL,
  PRIMARY KEY (`productid`),
  CONSTRAINT `countryproductid` FOREIGN KEY (`countryid`) REFERENCES `countries` (`countryid`),
  UNIQUE KEY `productid_UNIQUE` (`productid`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Espresso',25.00,5),(2,'Latte',30.50,5),(3,'Cappuchino',30.50,5),(18,'Black',24.00,6),(20,'Te',10.00,6),(21,'Saft',7.00,2),(22,'Black Exotic',35.00,6);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-09 13:57:35
