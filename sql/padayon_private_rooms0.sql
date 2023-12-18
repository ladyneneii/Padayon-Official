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
-- Table structure for table `private_rooms`
--

DROP TABLE IF EXISTS `private_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `private_rooms` (
  `private_room_id` int NOT NULL AUTO_INCREMENT,
  `State` enum('Active','Pending','Archived','Blocked') DEFAULT 'Active',
  `Member1` varchar(255) DEFAULT NULL,
  `Member2` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `member1_user_id` int DEFAULT NULL,
  `member2_user_id` int DEFAULT NULL,
  PRIMARY KEY (`private_room_id`),
  KEY `fk_member1_user` (`member1_user_id`),
  KEY `fk_member2_user` (`member2_user_id`),
  CONSTRAINT `fk_member1_user` FOREIGN KEY (`member1_user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `fk_member2_user` FOREIGN KEY (`member2_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_rooms`
--

LOCK TABLES `private_rooms` WRITE;
/*!40000 ALTER TABLE `private_rooms` DISABLE KEYS */;
INSERT INTO `private_rooms` VALUES (5,'Active','hchafer','dlovato','hchafer, dlovato',46,49),(6,'Active','hchafer','mbeer','hchafer, mbeer',46,47),(7,'Active','hchafer','eslay','hchafer, eslay',46,43),(8,'Active','dlovato','shawn','dlovato, shawn',49,38),(9,'Active','dlovato','mbeer','dlovato, mbeer',49,47),(10,'Active','dlovato','joshhutcherson','dlovato, joshhutcherson',49,42),(11,'Active','dlovato','tsivan','dlovato, tsivan',49,31),(12,'Active','dlovato','jcoolidge','dlovato, jcoolidge',49,44),(13,'Active','hchafer','shawn','hchafer, shawn',46,38),(14,'Active','hchafer','joshua','hchafer, joshua',46,39),(15,'Active','hchafer','melanie','hchafer, melanie',46,40),(16,'Active','hchafer','jcoolidge','hchafer, jcoolidge',46,44),(17,'Active','mbeer','tsivan','mbeer, tsivan',47,31),(18,'Active','mbeer','olivia','mbeer, olivia',47,37),(19,'Active','olivia','tsivan','olivia, tsivan',37,31),(20,'Active','tsivan','nminaj','tsivan, nminaj',31,23),(21,'Active','tsivan','squid','tsivan, squid',31,26),(22,'Active','tsivan','hchafer','tsivan, hchafer',31,46),(23,'Active','tsivan','elle','tsivan, elle',31,41),(24,'Active','tsivan','joshua','tsivan, joshua',31,39),(25,'Active','tsivan','jcoolidge','tsivan, jcoolidge',31,44),(26,'Active','gwapako','jcoolidge','gwapako, jcoolidge',24,44),(27,'Active','mbeer','jcoolidge','mbeer, jcoolidge',47,44),(28,'Active','cgray','jcoolidge','cgray, jcoolidge',50,44),(29,'Active','mother2','kconnor','mother2, kconnor',52,51);
/*!40000 ALTER TABLE `private_rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19  0:28:21
