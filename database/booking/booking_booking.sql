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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `date_checkin` date DEFAULT NULL,
  `date_checkout` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number_of_person` int(11) NOT NULL,
  `number_of_room` int(11) NOT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `current_id` bigint(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `price` bigint(20) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (52,'2022-06-19 00:55:28','2022-06-19 22:21:57','2022-06-21','2022-06-30','sanvankhanh@gmail.com','NGUYEN MINH TUAN',0,1,'Cao cấp',15,0,2385,'Đã thanh toán','Đã rời phòng'),(54,'2022-06-19 21:03:28','2022-06-19 22:11:44','2022-06-22','2022-06-28','sanvankhanh@gmail.com','san khanh 2',0,0,'Cao cấp',14,0,1590,'Chưa thanh toán','Chưa nhận phòng'),(55,'2022-06-19 21:10:27','2022-06-19 22:17:03','2022-06-01','2022-06-06','sanvankhanh@gmail.com','san sadas',0,0,'Cơ bản',13,0,625,'Chưa thanh toán','Đã nhận phòng'),(57,'2022-06-19 22:49:23','2022-06-19 22:49:23','2022-06-22','2022-06-28','nguyenvana@gmail.com','Test Order',1,1,'Cao cấp',23,0,0,'Chưa thanh toán','Chưa nhận phòng'),(58,'2022-06-19 22:50:58','2022-06-19 22:50:58','2022-06-01','2022-06-28','vanb@gmail.com','nguyen Van B',3,2,'Cao cấp',10,0,0,'Chưa thanh toán','Chưa nhận phòng'),(59,'2022-06-19 22:52:34','2022-06-19 22:52:34','2022-06-01','2022-06-28','vanbv@gmail.com','nguyen Van B',3,2,'Cao cấp',13,0,8100,'Chưa thanh toán','Chưa nhận phòng'),(60,'2022-06-19 22:53:39','2022-06-19 22:53:39','2022-06-01','2022-06-28','vanbvt@gmail.com','nguyen Van B',3,2,'Cao cấp',9,0,0,'Chưa thanh toán','Chưa nhận phòng');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-20  0:13:29
