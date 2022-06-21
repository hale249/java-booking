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
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rooms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` text,
  `price` decimal(10,0) NOT NULL DEFAULT '0',
  `unit` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `type_room` varchar(30) DEFAULT NULL,
  `bed_size` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `number_amount` int(11) DEFAULT NULL,
  `room_size` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'Phong 1','/rooms/download.jpg',12500,'vnd','Xin','2022-06-18 01:25:40','2022-06-18 01:25:40',1,'Cao cấp',NULL,NULL,0,NULL),(4,'',NULL,0,'','','2022-06-18 02:27:49','2022-06-18 02:27:49',1,'Cơ bản',NULL,NULL,0,NULL),(7,'','/rooms/20040087-ef0cc832543cfc2fdfdb37b1d45e9710.jpg',0,'','','2022-06-18 02:53:05','2022-06-18 02:53:05',1,'Cơ bản',NULL,NULL,0,NULL),(8,'Phòng Update Số 9','/rooms/room-img4.jpg',2000,'VND','cHECK update p9','2022-06-18 11:01:44','2022-06-18 11:01:44',0,'Cơ bản','Kingsize','Ha Noi',5,'20m2'),(9,'Luxury Room P9','/rooms/room-img1.jpg',1000,'VND','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore\r\n\r\nEcespiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quci velit modi tempora incidunt ut labore et dolore magnam aliquam quaerat .','2022-06-18 11:31:26','2022-06-18 11:31:26',1,'Cao cấp','Kingsize','Ha Noi',3,'50m2'),(10,'Single Room','/rooms/4.jpg',320,'VND','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore\r\n\r\nEcespiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quci velit modi tempora incidunt ut labore et dolore magnam aliquam quaerat .','2022-06-18 11:32:05','2022-06-18 11:32:05',1,'Cao cấp','Kingsize','Ha Noi',3,'5m2'),(11,'Double Room','/rooms/room-img3.jpg',1200,'VND','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore\r\n\r\nEcespiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quci velit modi tempora incidunt ut labore et dolore magnam aliquam quaerat .','2022-06-18 11:32:53','2022-06-18 11:32:53',1,'Cơ bản',NULL,NULL,0,NULL),(12,'Family Room 2','/rooms/room-img4.jpg',2500,'VND','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore\r\n\r\nEcespiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quci velit modi tempora incidunt ut labore et dolore magnam aliquam quaerat .','2022-06-18 11:33:23','2022-06-18 11:33:23',1,'Cơ bản','Kingsize','',0,'0m2'),(13,'Phòng 25','/rooms/room-img4.jpg',0,'VND','OKE','2022-06-18 15:05:30','2022-06-18 15:05:30',1,NULL,NULL,NULL,0,NULL),(14,'Phòng VIO','/rooms/room-img3.jpg',0,'VND','xịn','2022-06-18 15:31:18','2022-06-18 15:31:18',1,NULL,'Kingsize','Ha Noi',3,'25m2'),(15,'',NULL,0,'','<p>Xin ch&agrave;o</p>\r\n\r\n<p><input name=\"OK\" type=\"radio\" value=\"2\" /></p>\r\n','2022-06-18 19:09:48','2022-06-18 19:09:48',1,NULL,'Kingsize','',0,'0m2'),(16,'',NULL,0,'','','2022-06-18 23:20:54','2022-06-18 23:20:54',1,NULL,'Kingsize','',0,'0m2'),(17,'',NULL,0,'','','2022-06-18 23:21:12','2022-06-18 23:21:12',1,NULL,'Kingsize','',0,'0m2'),(18,'Phòng VIO',NULL,0,'VND','xịn s','2022-06-19 19:28:02','2022-06-19 19:28:02',0,NULL,'Kingsize','Ha Noi',3,'25m2'),(19,'Phòng',NULL,0,'VND','cHECKs','2022-06-19 19:33:12','2022-06-19 19:33:12',0,NULL,'Kingsize','',0,'0m2'),(20,'Phòng',NULL,0,'VND','cHECK s','2022-06-19 19:34:05','2022-06-19 19:34:05',0,NULL,'Kingsize','',0,'0m2'),(21,'Phòng',NULL,0,'VND','cHECKs','2022-06-19 19:35:08','2022-06-19 19:35:08',1,NULL,'Kingsize','',0,'0m2'),(22,'Phòng VIO',NULL,0,'VND','xịn s','2022-06-19 19:37:10','2022-06-19 19:37:10',0,NULL,'Kingsize','Ha Noi',3,'25m2'),(23,'Phòng VIO',NULL,0,'VND','xịn s','2022-06-19 19:39:11','2022-06-19 19:39:11',1,NULL,'Kingsize','Ha Noi',3,'25m2');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
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
