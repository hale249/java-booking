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
-- Table structure for table `comment_room`
--

DROP TABLE IF EXISTS `comment_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment_room` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `email` varchar(128) NOT NULL,
  `message` varchar(128) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `reply_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_9uds0al9lwjtwx1regiegmdjn` (`message`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_room`
--

LOCK TABLES `comment_room` WRITE;
/*!40000 ALTER TABLE `comment_room` DISABLE KEYS */;
INSERT INTO `comment_room` VALUES (1,'2022-06-18 14:02:00','2022-06-18 14:02:00',0,'sanvankhanh@gmail.com','sdsadasd','san khanh',NULL),(2,'2022-06-18 14:03:05','2022-06-18 14:03:05',0,'sanvankhanh@gmail.com','sdasdas','san sadas',NULL),(5,'2022-06-18 14:07:08','2022-06-18 14:07:08',0,'sanvankhanh@gmail.com','sdasdas ','san sadas',NULL),(7,'2022-06-18 14:08:39','2022-06-18 14:08:39',0,'sanvankhanh@gmail.com','Tesst comment','San Khanh Vui',NULL),(8,'2022-06-18 14:09:32','2022-06-18 14:09:32',0,'sanvankhanh@gmail.com','Test commment new','san khanh',NULL),(9,'2022-06-18 14:10:12','2022-06-18 14:10:12',0,'sanvankhanh@gmail.com','Test commment new 2','san khanh',NULL),(10,'2022-06-18 14:10:56','2022-06-18 14:10:56',0,'sanvankhanh@gmail.com','sần vss ','san khanh',NULL),(11,'2022-06-18 14:11:43','2022-06-18 14:11:43',0,'sanvankhanh@gmail.com','test new com sần','San Khanh Vui',NULL),(12,'2022-06-18 14:12:18','2022-06-18 14:12:18',0,'sanvankhanh@gmail.com','sdasdsadasasđá','San Khanh Vui',NULL),(13,'2022-06-18 14:14:50','2022-06-18 14:14:50',0,'sanvankhanh@gmail.com','sdasdsadasasđá   sdasdas','San Khanh Vui',NULL),(14,'2022-06-18 14:15:43','2022-06-18 14:15:43',0,'sanvankhanh@gmail.com','sdsadasasxasxassa','San Khanh Vui',NULL),(15,'2022-06-18 14:17:33','2022-06-18 14:17:33',0,'sanvankhanh@gmail.com','dsdsasaaaa','khanhvui',NULL),(18,'2022-06-18 14:21:11','2022-06-18 14:21:11',0,'sanvankhanh@gmail.com','s5','san khanh vui',NULL),(19,'2022-06-18 14:27:36','2022-06-18 14:27:36',0,'sanvankhanh@gmail.com','3352','san khanh vui',NULL),(22,'2022-06-18 14:32:37','2022-06-18 14:32:37',0,'sanvankhanh@gmail.com','sdsadsadasdasdas','san khanh',12),(23,'2022-06-18 14:33:40','2022-06-18 14:33:40',0,'sanvankhanh@gmail.com','bai 8','san khanh vui',8),(24,'2022-06-18 14:37:06','2022-06-18 14:37:06',0,'sanvankhanh@gmail.com','sds','san khanh',8),(25,'2022-06-18 14:38:39','2022-06-18 14:38:39',0,'sanvankhanh@gmail.com','sdass','san khanh vui',8),(26,'2022-06-18 14:39:21','2022-06-18 14:39:21',0,'sanvankhanh@gmail.com','sdasdsa','san khanh',8),(28,'2022-06-19 17:27:25','2022-06-19 17:27:25',0,'sanvankhanh@gmail.com','s','san khanh vui',14),(29,'2022-06-19 20:15:46','2022-06-19 20:15:46',0,'sanvankhanh@gmail.com','Test Comment','Nguyen Van A',10),(30,'2022-06-19 23:12:34','2022-06-19 23:12:34',0,'sanvankhanh@gmail.com','sa','',8),(31,'2022-06-19 23:47:42','2022-06-19 23:47:42',0,'sanvankhanh@gmail.com','dá','dsa',8),(32,'2022-06-20 00:00:11','2022-06-20 00:00:11',0,'sanvankhanh@gmail.com','comment test thử','san khanh vui',8);
/*!40000 ALTER TABLE `comment_room` ENABLE KEYS */;
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
