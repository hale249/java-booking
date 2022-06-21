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
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `email` varchar(128) NOT NULL,
  `message` varchar(128) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `reply_id` bigint(20) DEFAULT NULL,
  `blog_id` bigint(20) NOT NULL,
  `created` datetime DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1okoilyd2fe2lmdqj01rdn14b` (`message`),
  KEY `FK9aakob3a7aghrm94k9kmbrjqd` (`blog_id`),
  CONSTRAINT `FK9aakob3a7aghrm94k9kmbrjqd` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'2022-06-19 12:15:22','2022-06-19 12:15:22',0,'sanvankhanh@gmail.com','sadsa','NGUYEN MINH TUAN',NULL,7,NULL,NULL),(2,'2022-06-19 12:16:22','2022-06-19 12:16:22',0,'sanvankhanh@gmail.com','dsadsadsa','NGUYEN MINH TUAN',NULL,7,NULL,NULL),(3,'2022-06-19 12:34:17','2022-06-19 12:34:17',0,'sanvankhanh@gmail.com','sdsa','san khanh',NULL,8,NULL,'0985574580'),(4,'2022-06-19 12:45:38','2022-06-19 12:45:38',0,'','dsa','',NULL,7,NULL,'0985574580'),(5,'2022-06-19 12:57:07','2022-06-19 12:57:07',0,'sanvankhanh@gmail.com','test comment','Nguyn A',NULL,8,NULL,'0985574580'),(6,'2022-06-19 13:07:52','2022-06-19 13:07:52',0,'sanvankhanh@gmail.com','sdas','san sadas',NULL,10,NULL,'0985574580'),(7,'2022-06-19 13:21:41','2022-06-19 13:21:41',0,'sanvankhanh@gmail.com','Tesst comment final','Nguyen Van A',NULL,16,NULL,'0985574580'),(8,'2022-06-19 20:21:56','2022-06-19 20:21:56',0,'sanvankhanh@gmail.com','s','NGUYEN MINH TUAN',NULL,8,NULL,'0985574580');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
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
