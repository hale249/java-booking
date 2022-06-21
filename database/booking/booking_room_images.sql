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
-- Table structure for table `room_images`
--

DROP TABLE IF EXISTS `room_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `room_images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` text,
  `file_path` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `room_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtky1jnwoh1hv50m263p2vlt0y` (`room_id`),
  CONSTRAINT `FKtky1jnwoh1hv50m263p2vlt0y` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_images`
--

LOCK TABLES `room_images` WRITE;
/*!40000 ALTER TABLE `room_images` DISABLE KEYS */;
INSERT INTO `room_images` VALUES (1,'2.jpg','/rooms/2.jpg','2022-06-18 02:53:05','2022-06-18 02:53:05',7),(2,'3.jpg','/rooms/3.jpg','2022-06-18 02:53:05','2022-06-18 02:53:05',7),(3,'4.jpg','/rooms/4.jpg','2022-06-18 02:53:05','2022-06-18 02:53:05',7),(4,'2.jpg','/rooms/2.jpg','2022-06-18 11:01:44','2022-06-18 11:01:44',8),(5,'3.jpg','/rooms/3.jpg','2022-06-18 11:01:44','2022-06-18 11:01:44',8),(6,'4.jpg','/rooms/4.jpg','2022-06-18 11:01:44','2022-06-18 11:01:44',8),(7,'20040087-ef0cc832543cfc2fdfdb37b1d45e9710.jpg','/rooms/20040087-ef0cc832543cfc2fdfdb37b1d45e9710.jpg','2022-06-18 11:01:44','2022-06-18 11:01:44',8),(8,'room-img1.jpg','/rooms/room-img1.jpg','2022-06-18 11:31:26','2022-06-18 11:31:26',9),(9,'room-img2.jpg','/rooms/room-img2.jpg','2022-06-18 11:32:05','2022-06-18 11:32:05',10),(10,'room-img3.jpg','/rooms/room-img3.jpg','2022-06-18 11:32:53','2022-06-18 11:32:53',11),(11,'room-img4.jpg','/rooms/room-img4.jpg','2022-06-18 11:33:23','2022-06-18 11:33:23',12),(12,'room-img1.jpg','/rooms/room-img1.jpg','2022-06-18 15:05:30','2022-06-18 15:05:30',13),(13,'room-img2.jpg','/rooms/room-img2.jpg','2022-06-18 15:05:30','2022-06-18 15:05:30',13),(14,'room-img3.jpg','/rooms/room-img3.jpg','2022-06-18 15:05:30','2022-06-18 15:05:30',13),(15,'room-img1.jpg','/rooms/room-img1.jpg','2022-06-18 15:31:18','2022-06-18 15:31:18',14),(16,'room-img2.jpg','/rooms/room-img2.jpg','2022-06-18 15:31:18','2022-06-18 15:31:18',14),(17,'room-img3.jpg','/rooms/room-img3.jpg','2022-06-18 15:31:18','2022-06-18 15:31:18',14),(18,'room-img4.jpg','/rooms/room-img4.jpg','2022-06-18 15:31:18','2022-06-18 15:31:18',14),(19,'room-img5.jpg','/rooms/room-img5.jpg','2022-06-19 20:08:54','2022-06-19 20:08:54',8),(20,'room-img6.jpg','/rooms/room-img6.jpg','2022-06-19 20:08:54','2022-06-19 20:08:54',8),(21,'2.jpg','/rooms/2.jpg','2022-06-19 20:25:29','2022-06-19 20:25:29',10),(22,'3.jpg','/rooms/3.jpg','2022-06-19 20:25:29','2022-06-19 20:25:29',10),(23,'4.jpg','/rooms/4.jpg','2022-06-19 20:25:29','2022-06-19 20:25:29',10),(24,'20040087-ef0cc832543cfc2fdfdb37b1d45e9710.jpg','/rooms/20040087-ef0cc832543cfc2fdfdb37b1d45e9710.jpg','2022-06-19 20:25:29','2022-06-19 20:25:29',10),(25,'download (1).jpg','/rooms/download (1).jpg','2022-06-19 20:25:29','2022-06-19 20:25:29',10),(26,'download.jpg','/rooms/download.jpg','2022-06-19 20:25:29','2022-06-19 20:25:29',10),(27,'room-img1.jpg','/rooms/room-img1.jpg','2022-06-19 20:25:29','2022-06-19 20:25:29',10),(28,'room-img2.jpg','/rooms/room-img2.jpg','2022-06-19 20:25:29','2022-06-19 20:25:29',10),(29,'room-img3.jpg','/rooms/room-img3.jpg','2022-06-19 20:25:29','2022-06-19 20:25:29',10),(30,'room-img4.jpg','/rooms/room-img4.jpg','2022-06-19 20:25:29','2022-06-19 20:25:29',10),(31,'room-img5.jpg','/rooms/room-img5.jpg','2022-06-19 20:25:29','2022-06-19 20:25:29',10),(32,'room-img6.jpg','/rooms/room-img6.jpg','2022-06-19 20:25:29','2022-06-19 20:25:29',10);
/*!40000 ALTER TABLE `room_images` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-20  0:13:27
