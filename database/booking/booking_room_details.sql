-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: booking
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `room_details`
--

DROP TABLE IF EXISTS `room_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `price` double NOT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `room_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKos85t2tqc3afvhll2y7klvyrh` (`room_id`),
  CONSTRAINT `FKos85t2tqc3afvhll2y7klvyrh` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_details`
--

LOCK TABLES `room_details` WRITE;
/*!40000 ALTER TABLE `room_details` DISABLE KEYS */;
INSERT INTO `room_details` VALUES (1,'2022-06-18 15:05:30','2022-06-18 15:05:30',0,125,'Cơ bản',13),(2,NULL,NULL,1,300,'Cao cấp',13),(3,'2022-06-18 15:31:18','2022-06-18 15:31:18',1,265,'Cao cấp',14),(4,'2022-06-18 19:09:48','2022-06-18 19:09:48',1,0,'Cơ bản',15),(5,'2022-06-18 23:20:54','2022-06-18 23:20:54',0,0,'Cơ bản',16),(6,'2022-06-18 23:21:12','2022-06-18 23:21:12',0,0,'Cơ bản',17),(7,'2022-06-19 19:28:02','2022-06-19 19:28:02',0,0,'Cơ bản',18),(8,'2022-06-19 19:33:12','2022-06-19 19:33:12',0,0,'Cơ bản',19),(9,'2022-06-19 19:34:05','2022-06-19 19:34:05',0,0,'Cơ bản',20),(10,'2022-06-19 19:35:08','2022-06-19 19:35:08',0,0,'Cơ bản',21),(11,'2022-06-19 19:37:10','2022-06-19 19:37:10',0,0,'Cơ bản',22),(12,'2022-06-19 19:39:11','2022-06-19 19:39:11',0,0,'Cơ bản',23);
/*!40000 ALTER TABLE `room_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-20  0:13:28
