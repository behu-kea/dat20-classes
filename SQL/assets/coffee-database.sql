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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
                             `country_id` int NOT NULL,
                             `country` varchar(100) NOT NULL,
                             PRIMARY KEY (`country_id`),
                             UNIQUE KEY `country_UNIQUE` (`country`),
                             UNIQUE KEY `country_id_UNIQUE` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (5,'Columbia'),(1,'Danmark'),(4,'Finland'),(3,'Norge'),(6,'Sri Lanka'),(2,'Sverige');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
                             `customer_id` int NOT NULL AUTO_INCREMENT,
                             `firstname` varchar(100) DEFAULT NULL,
                             `lastname` varchar(100) DEFAULT NULL,
                             `gender` enum('M','F') DEFAULT NULL,
                             `phone_number` varchar(20) DEFAULT NULL,
                             PRIMARY KEY (`customer_id`),
                             UNIQUE KEY `customer_id_UNIQUE` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Chris','Martin','M','01123147789'),(2,'Emma','Law','F','01123439899'),(3,'Mark','Watkins','M','01174592013'),(4,'Daniel','Williams','M','2323'),(5,'Sarah','Taylor','F','01176348290'),(6,'Katie','Armstrong','F','01145787353'),(7,'Michael','Bluth','M','01980289282'),(8,'Kat','Nash','F','01176987789'),(9,'Buster','Bluth','M','01173456782'),(10,'Charlie',NULL,'F','01139287883'),(11,'Lindsay','Bluth','F','01176923804'),(12,'Harry','Johnson','M',NULL),(13,'John','Smith','M','01174987221'),(14,'John','Taylor','M',NULL),(15,'Emma','Smith','F','01176984116'),(16,'Gob','Bluth','M','01176985498'),(17,'George','Bluth','M','01176984303'),(18,'Lucille','Bluth','F','01198773214'),(19,'George','Evans','M','01174502933'),(20,'Emily','Simmonds','F','01899284352'),(21,'John','Smith','M','01144473330'),(22,'Jennifer',NULL,'F',NULL),(23,'Toby','West','M','01176009822'),(24,'Paul','Edmonds','M','01966947113');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_table`
--

DROP TABLE IF EXISTS `order_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_table` (
                          `order_table_id` int NOT NULL AUTO_INCREMENT,
                          `product_id` int NOT NULL,
                          `customer_id` int NOT NULL,
                          `qty` smallint DEFAULT NULL,
                          `order_table_datetime` datetime DEFAULT NULL,
                          PRIMARY KEY (`order_table_id`),
                          UNIQUE KEY `order_table_id_UNIQUE` (`order_table_id`),
                          KEY `order_tablecustpk_idx` (`customer_id`),
                          KEY `order_tableprodfk_idx` (`product_id`),
                          CONSTRAINT `order_tablecustfk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
                          CONSTRAINT `order_tableprodfk` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_table`
--

LOCK TABLES `order_table` WRITE;
/*!40000 ALTER TABLE `order_table` DISABLE KEYS */;
INSERT INTO `order_table` VALUES (1,1,1,2,'2021-02-05 14:10:20'),(2,2,1,2,'2021-02-05 15:30:10'),(3,3,1,3,'2021-02-06 16:30:10'),(4,1,2,3,'2021-02-06 16:40:10'),(5,1,1,3,'2021-02-06 14:40:10'),(6,3,3,2,'2021-02-08 12:30:10'),(7,18,3,2,'2021-01-02 13:10:10'),(8,20,4,3,'2021-01-02 14:10:09'),(9,20,2,1,'2021-02-10 15:10:10'),(10,20,2,2,'2021-02-02 14:10:10'),(11,20,3,1,'2021-02-07 13:00:00'),(12,3,4,2,'2021-03-01 00:00:01'),(13,3,2,2,'2021-02-01 13:30:01');
/*!40000 ALTER TABLE `order_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
                            `product_id` int NOT NULL AUTO_INCREMENT,
                            `name` varchar(100) NOT NULL,
                            `price` decimal(5,2) DEFAULT NULL,
                            `country_id` int DEFAULT NULL,
                            PRIMARY KEY (`product_id`),
                            CONSTRAINT `countryproduct_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`),
                            UNIQUE KEY `product_id_UNIQUE` (`product_id`),
                            UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Espresso',25.00,5),(2,'Latte',30.50,5),(3,'Cappuchino',30.50,5),(18,'Black',24.00,6),(20,'Te',10.00,6),(21,'Saft',7.00,2),(22,'Black Exotic',35.00,6);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
