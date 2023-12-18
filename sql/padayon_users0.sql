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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `avatar_url` varchar(255) DEFAULT NULL,
  `Role` enum('admin','mhp','nmhp') DEFAULT NULL,
  `register_date` datetime NOT NULL,
  `State` enum('Active','Pending','Blocked','Unverified') DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Pronouns` varchar(50) DEFAULT NULL,
  `firebase_avatar_url` varchar(255) DEFAULT 'n/a',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (21,'arianagrande','arianagrande@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-06 14:26:54','Active','Ariana','Yas','Grande',23,'Woman','she/her','n/a'),(22,'ekween','ekween@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-06 14:32:25','Active','Elektra','n/a','Kween',31,'Woman','n/a','n/a'),(23,'nminaj','nminaj@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-06 14:36:48','Active','Nicki','n/a','Minaj',31,'Woman','n/a','n/a'),(24,'gwapako','gwapako@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-06 14:56:39','Active','Gwapa','n/a','Ko',19,'Woman','n/a','n/a'),(25,'squarepants','squarepants@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-07 13:38:13','Active','Spongebob','n/a','Squarepants',10,'Non-Binary','he/him','n/a'),(26,'squid','squid@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-07 14:47:02','Active','Squidward','n/a','Tentacles',25,'Woman','n/a','n/a'),(27,'patrick','patric@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-07 14:48:43','Active','Patrick','n/a','Star',5,'Man','n/a','n/a'),(28,'lnene','lnene@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-08 05:50:39','Active','Lady','n/a','Nene',21,'Non-Binary','n/a','n/a'),(29,'scarpenter','scarpenter@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-08 05:51:19','Active','Sabrina','n/a','Carpenter',25,'Woman','she/her','n/a'),(30,'rlynch','rlynch@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-08 06:28:21','Active','Ross ','n/a','Lynch',11,'Man','he/him','n/a'),(31,'tsivan','tsivan@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-08 06:30:20','Active','Troye','Yas','Sivan',27,'Non-Binary','they/them','n/a'),(32,'lgaga','lgaga@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-08 06:40:18','Active','Lady','n/a','Gaga',33,'Woman','n/a','n/a'),(33,'dojact','dojacat@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-08 06:41:13','Active','Doja','n/a','Cat',25,'Woman','n/a','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/dojact?alt=media&token=2ee07730-9945-49f5-a976-f4f8180a3279'),(34,'jiafei','jiafei@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-08 08:13:43','Active','Queen','n/a','Jiafei',100,'Non-Binary','n/a','n/a'),(35,'cardib','cardib@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-08 08:41:07','Active','Cardi','n/a','B',32,'PNTS','n/a','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/cardib?alt=media&token=03ad8407-6d2d-48f4-b2df-c754e3515f57'),(37,'olivia','olivia@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-08 14:55:23','Active','Olivia','n/a','Rodrigo',23,'Woman','n/a','n/a'),(38,'shawn','shawn@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-08 15:05:56','Active','Shawn','n/a','Mendez',25,'PNTS','n/a','n/a'),(39,'joshua','joshua@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-08 15:30:15','Active','Joshua','n/a','Bassett',19,'PNTS','n/a','n/a'),(40,'melanie','melanie@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-08 17:42:01','Active','Melani','n/a','Martinez',31,'PNTS','n/a','n/a'),(41,'elle','elle@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-10 11:46:40','Active','Elle','n/a','Ardent',18,'Woman','she/her','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/elle?alt=media&token=4b5811df-9659-4784-bbd7-8bffca9858ee'),(42,'joshhutcherson','joshhutcherson@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-11 05:11:12','Active','Josh','n/a','Hutcherson',31,'Man','he/him','n/a'),(43,'eslay','eslay@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-16 14:44:11','Active','Elizabeth','n/a','Slay',46,'PNTS','n/a','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/eslay?alt=media&token=6c8ebc97-6318-4135-ae64-5913d71e1e64'),(44,'jcoolidge','jcoolidge@gmail.com','SamplePassword@2023','jcoolidge.jpg','mhp','2023-12-17 06:27:27','Active','Jennifer','n/a','Coolidge',62,'Woman','she/her','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/jcoolidge?alt=media&token=7b2938d3-1f91-4cd0-a3be-66af5641bf88'),(45,'vganda','vganda@gmail.com','SamplePassword@2023','vice-ganda.jpg','nmhp','2023-12-17 11:30:56','Active','Vice','n/a','Ganda',45,'Non-Binary','any','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/vganda?alt=media&token=c07c4339-6b77-49ad-a3ef-00ba79e4708f'),(46,'hchafer','hchafer@gmail.com','SamplePassword@2023','hunter-schafer.jpg','mhp','2023-12-17 13:28:49','Active','Hunter ','n/a','Schafer',24,'Woman','she/her','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/hchafer?alt=media&token=02f999a2-ede5-4655-866b-70d3a5e41a9c'),(47,'mbeer','mbeer@gmail.com','SamplePassword@2023','madison-beer.jpg','mhp','2023-12-17 13:39:11','Active','Madison','Elle','Beer',24,'Woman','n/a','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/mbeer?alt=media&token=1bc63de7-ffb5-43e1-8d9f-4480880ae655'),(49,'dlovato','dlovato@gmail.com','SamplePassword@2023','demi-lovato.jpg','mhp','2023-12-17 15:54:50','Active','Demi','Devonne','Lovato',31,'PNTS','she/her, they/them','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/dlovato?alt=media&token=069f595a-2bea-43ba-9411-670b5c642374'),(50,'cgray','cgray@gmail.com','SamplePassword@2023','conan-gray.jpg','mhp','2023-12-18 15:22:44','Active','Conan','Lee','Gray',25,'PNTS','n/a','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/cgray?alt=media&token=ef539c74-18ea-45d3-a572-cdf3d6b53361'),(51,'kconnor','kconnor@gmail.com','SamplePassword@2023','kit-connor.jpg','mhp','2023-12-18 15:29:42','Active','Kit','n/a','Connor',20,'Man','he/him','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/kconnor?alt=media&token=32a6663f-a876-43bf-87a8-47d55af3009f'),(52,'mother2','mother@gmail.com','SamplePassword@2023','taylor-swift.png','mhp','2023-12-18 16:21:36','Active','Taylor','Alison','Swift',34,'Woman','n/a','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/mother2?alt=media&token=219dfdd5-202f-45f6-86a6-63c3d30d21a9');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
