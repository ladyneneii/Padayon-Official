-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: padayon
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `private_messages`
--

DROP TABLE IF EXISTS `private_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `private_messages` (
  `private_message_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `private_room_id` int DEFAULT NULL,
  `Content` text,
  `date_time` varchar(255) DEFAULT NULL,
  `private_message_reply_id` int DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `private_message_reply_username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`private_message_id`),
  KEY `user_id` (`user_id`),
  KEY `private_room_id` (`private_room_id`),
  KEY `private_message_reply_id` (`private_message_reply_id`),
  CONSTRAINT `private_messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `private_messages_ibfk_2` FOREIGN KEY (`private_room_id`) REFERENCES `private_rooms` (`private_room_id`),
  CONSTRAINT `private_messages_ibfk_3` FOREIGN KEY (`private_message_reply_id`) REFERENCES `private_messages` (`private_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_messages`
--

LOCK TABLES `private_messages` WRITE;
/*!40000 ALTER TABLE `private_messages` DISABLE KEYS */;
INSERT INTO `private_messages` VALUES (1,49,5,'hello?','12/18/2023 6:40 PM',NULL,'dlovato',NULL),(2,49,5,'hi hunter','12/18/2023 6:40 PM',NULL,'dlovato',NULL),(3,46,5,'HELLO','12/18/2023 6:41 PM',NULL,'hchafer',NULL),(4,46,5,'omg it works','12/18/2023 6:41 PM',NULL,'hchafer',NULL),(5,46,5,'hi i love your songss','12/18/2023 6:41 PM',NULL,'hchafer',NULL),(6,46,6,'hiii','12/18/2023 6:41 PM',NULL,'hchafer',NULL),(7,49,9,'.','12/18/2023 6:50 PM',NULL,'dlovato',NULL),(8,49,9,'hi queen','12/18/2023 7:4 PM',NULL,'dlovato',NULL),(9,49,8,'hello shawn','12/18/2023 7:6 PM',NULL,'dlovato',NULL),(10,46,13,'hi shawn','12/18/2023 7:13 PM',NULL,'hchafer',NULL),(11,46,14,'hello how r u and sabrina','12/18/2023 7:14 PM',NULL,'hchafer',NULL),(12,46,15,'hii melanie','12/18/2023 8:45 PM',NULL,'hchafer',NULL),(13,46,6,'hii madisoin','12/18/2023 8:55 PM',NULL,'hchafer',NULL),(14,46,16,'hello!! omg i  love u','12/18/2023 8:55 PM',NULL,'hchafer',NULL),(15,46,16,'   so much','12/18/2023 8:55 PM',NULL,'hchafer',NULL),(16,46,16,'dsjagkl  kldjsakgj     kldajv','12/18/2023 8:55 PM',NULL,'hchafer',NULL),(17,46,6,'each day goes by','12/18/2023 9:5 PM',NULL,'hchafer',NULL),(18,47,6,'each night i cry','12/18/2023 9:6 PM',NULL,'mbeer',NULL),(20,31,17,'.','12/18/2023 9:6 PM',NULL,'tsivan',NULL),(21,47,18,'how is joshua bassett queen','12/18/2023 9:7 PM',NULL,'mbeer',NULL),(22,37,18,'omg stop','12/18/2023 9:8 PM',NULL,'olivia',NULL),(25,31,19,'girl hi','12/18/2023 9:14 PM',NULL,'tsivan',NULL),(27,31,20,'hi','12/18/2023 9:16 PM',NULL,'tsivan',NULL),(30,31,11,'..','12/18/2023 9:21 PM',NULL,'tsivan',NULL),(31,31,17,'test','12/18/2023 9:21 PM',NULL,'tsivan',NULL),(32,31,22,'hello','12/18/2023 9:21 PM',NULL,'tsivan',NULL),(33,31,21,'hiiiiiii','12/18/2023 9:21 PM',NULL,'tsivan',NULL),(34,31,23,'hai','12/18/2023 9:22 PM',NULL,'tsivan',NULL),(35,31,21,'hello','12/18/2023 9:22 PM',NULL,'tsivan',NULL),(36,31,24,'hi babes','12/18/2023 9:23 PM',NULL,'tsivan',NULL),(37,31,20,'guurl hi','12/18/2023 9:25 PM',NULL,'tsivan',NULL),(38,31,25,'hi queen','12/18/2023 9:40 PM',NULL,'tsivan',NULL),(39,31,25,'i love u','12/18/2023 9:40 PM',NULL,'tsivan',NULL),(40,31,25,'sm','12/18/2023 9:40 PM',NULL,'tsivan',NULL),(41,44,25,'i love sm too','12/18/2023 9:41 PM',NULL,'jcoolidge',NULL),(42,44,25,'sm seaside','12/18/2023 9:41 PM',NULL,'jcoolidge',NULL),(43,24,26,'omg HII','12/18/2023 9:56 PM',NULL,'gwapako',NULL),(44,47,27,'hii','12/18/2023 10:46 PM',NULL,'mbeer',NULL),(45,47,9,'somebody','12/18/2023 10:47 PM',NULL,'mbeer',NULL),(46,47,6,'somebody saw u with her last night','12/18/2023 10:51 PM',NULL,'mbeer',NULL),(47,47,18,'hello','12/18/2023 11:2 PM',NULL,'mbeer',NULL),(48,50,28,'hi love u','12/18/2023 11:23 PM',NULL,'cgray',NULL),(49,44,28,'love u too','12/18/2023 11:24 PM',NULL,'jcoolidge',NULL),(50,52,29,'love ur show','12/19/2023 12:22 AM',NULL,'mother2',NULL),(51,44,28,'..','12/19/2023 3:4 PM',NULL,'jcoolidge',NULL),(52,56,30,'HIIII','12/19/2023 6:41 PM',NULL,'scheeks',NULL),(53,56,30,'ROMEO TAKE ME SOMEWHERE WE CAN BE ALONE','12/19/2023 6:41 PM',NULL,'scheeks',NULL),(54,52,30,'ILL BE WAITING ALL','12/19/2023 8:3 PM',NULL,'mother2',NULL),(55,46,5,'yass','12/19/2023 8:47 PM',NULL,'hchafer',NULL),(56,46,6,'truee','12/19/2023 8:47 PM',NULL,'hchafer',NULL),(57,46,31,'hiii','12/19/2023 9:58 PM',NULL,'hchafer',NULL),(58,46,5,'hiii','12/19/2023 10:4 PM',NULL,'hchafer',NULL),(59,46,5,'hii','12/20/2023 12:0 AM',NULL,'hchafer',NULL),(60,46,6,'hi','12/21/2023 2:53 PM',NULL,'hchafer',NULL),(61,63,32,'yass','12/21/2023 6:26 PM',NULL,'beyonce',NULL);
/*!40000 ALTER TABLE `private_messages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-21 21:49:01
