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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `validate_mhp` tinyint(1) DEFAULT NULL,
  `hide_post` tinyint(1) DEFAULT NULL,
  `give_penalty` tinyint(1) DEFAULT NULL,
  `create_users` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,64,1,1,1,1);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help` (
  `help_id` int NOT NULL AUTO_INCREMENT,
  `nmhp_id` int DEFAULT NULL,
  `Content` text,
  `Mood` varchar(255) DEFAULT NULL,
  `State` enum('Active','Archived') DEFAULT 'Active',
  `Type` enum('Normal','Triggering','Achievement') DEFAULT NULL,
  `Privacy` enum('Everyone','MHP','Followers','Friends') DEFAULT 'Everyone',
  `Remark` text,
  `date_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`help_id`),
  KEY `nmhp_id` (`nmhp_id`),
  CONSTRAINT `help_ibfk_1` FOREIGN KEY (`nmhp_id`) REFERENCES `non_mental_health_professionals` (`nmhp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help`
--

LOCK TABLES `help` WRITE;
/*!40000 ALTER TABLE `help` DISABLE KEYS */;
/*!40000 ALTER TABLE `help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `location_id` int NOT NULL AUTO_INCREMENT,
  `Latitude` float DEFAULT NULL,
  `Longitude` float DEFAULT NULL,
  `Address` text,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (74,10.3403,123.942,'n/a'),(75,10.3157,123.883,'n/a'),(76,10.3157,123.911,'n/a'),(77,10.337,123.938,'n/a'),(78,10.3403,123.942,'n/a'),(79,10.3157,123.912,'n/a'),(80,10.315,123.885,'n/a'),(81,10.336,123.938,'n/a'),(82,10.3157,123.855,'n/a'),(83,10.3187,123.485,'n/a'),(84,10.314,123.81,'n/a'),(85,10.3157,123.8,'n/a'),(86,10.3157,123.885,'n/a'),(87,10.3372,123.925,'n/a'),(88,10.3372,123.938,'n/a'),(89,10.3403,123.98,'n/a'),(90,10.3372,123.938,'n/a'),(91,10.3403,121.902,'n/a'),(92,10.3403,123.942,'n/a'),(93,10.3372,123.938,'n/a'),(94,10.3372,123.938,'n/a'),(95,10.4372,123.998,'n/a'),(96,10.3403,123.142,'n/a'),(97,10.3403,123.942,'n/a'),(98,6.3403,100.942,'n/a'),(99,5.3403,123.642,'n/a'),(100,10.3372,123.938,'n/a'),(101,10.3403,123.942,'n/a'),(102,10.3401,123.314,'n/a'),(103,7.7211,123.938,'n/a'),(104,10.3372,123.908,'n/a'),(105,10.3403,123.942,'n/a'),(106,10.3103,123.942,'n/a'),(107,10.3403,123.742,'n/a'),(108,10.344,123.842,'n/a'),(109,10.3403,123.942,'n/a'),(110,10.3413,122.942,'n/a'),(111,10.3403,110.942,'n/a'),(112,10.3154,123.889,'n/a'),(113,10.3403,123.042,'n/a'),(114,10.3372,123.938,'n/a'),(115,10.3403,123.942,'n/a'),(116,9.3403,123.942,'n/a'),(117,10.3372,123.124,'n/a'),(118,10.2372,123.938,'n/a'),(119,10.3372,123.9,'n/a'),(120,10.3372,123.938,'n/a'),(121,10.3403,123.942,'n/a'),(122,10.3372,123.938,'n/a');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mental_health_professionals`
--

DROP TABLE IF EXISTS `mental_health_professionals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mental_health_professionals` (
  `mhp_id` int NOT NULL AUTO_INCREMENT,
  `license_number` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `disorders_specializations` varchar(255) DEFAULT NULL,
  `Fees` varchar(255) DEFAULT NULL,
  `years_of_experience` int DEFAULT NULL,
  `Languages` varchar(255) DEFAULT NULL,
  `min_age` int DEFAULT NULL,
  `max_age` int DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `Notes` text,
  `State` enum('open','closed','deactivated') DEFAULT NULL,
  `available_days` varchar(255) DEFAULT NULL,
  `available_hours` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mhp_id`),
  KEY `user_id` (`user_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `mental_health_professionals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `mental_health_professionals_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mental_health_professionals`
--

LOCK TABLES `mental_health_professionals` WRITE;
/*!40000 ALTER TABLE `mental_health_professionals` DISABLE KEYS */;
INSERT INTO `mental_health_professionals` VALUES (6,313545,40,75,'bipolar-affective-disorder, paranoia','500-1000',2,'English',1,19,'4353454','','open','sunday, monday','4:00AM'),(7,34526256,31,74,'bipolar-affective-disorder, depression, dissociation-and-dissociative-disorders','500-1000, 1000-1500, 4000-4500',2,'English',1,100,'3543453','','open','wednesday, tuesday','3:00AM'),(8,3254354,39,76,'depression','1000-1500, 1500-2000',34,'English',1,19,'5436233','','open','sunday','1:00AM, 2:00AM, 3:00AM, 4:00AM, 5:00AM, 6:00AM'),(9,32153545,38,77,'bipolar-affective-disorder, depression','500-1000, 1000-1500, 1500-2000',7,'English',1,199,'315436','hiii don\'t be afraid to talk to me','open','tuesday, wednesday','2:00AM, 3:00AM, 4:00AM, 4:00PM, 5:00PM, 6:00PM'),(10,3154,37,78,'bipolar-affective-disorder, depression, dissociation-and-dissociative-disorders','2000-2500',2,'Filipino',1,100,'432643656','','open','sunday, monday, tuesday, wednesday','2:00AM, 3:00AM, 4:00AM, 5:00AM'),(11,643435,33,79,'bipolar-affective-disorder, depression, dissociation-and-dissociative-disorders','2000-2500, 5000-above',4,'English',12,21,'436243646','','open','sunday, monday, tuesday','5:00AM, 6:00AM, 7:00AM, 8:00AM'),(12,98849425,41,80,'eating-disorders, bipolar-affective-disorder, depression, dissociation-and-dissociative-disorders','1000-1500, 1500-2000, 2000-2500',4,'English',10,48,'42343524646','','open','monday, tuesday, wednesday, thursday, friday','12:00AM, 1:00AM, 2:00AM, 3:00AM, 4:00AM, 5:00AM'),(13,462235,42,81,'eating-disorders, post-traumatic-stress-disorder, neurodevelopmental-disorders, schizophrenia','4500-5000, 5000-above',2,'English',1,100,'3452436646','','open','sunday','3:00AM'),(14,54724523,21,NULL,'eating-disorders','500-1000',2,'English',1,199,'43269849','','open','wednesday','2:00AM'),(15,858573456,22,82,'dissociation-and-dissociative-disorders','2500-3000',5,'Bisaya',1,20,'6856574565','','open','wednesday','5:00AM, 6:00AM, 8:00AM'),(16,9574624,23,83,'depression, psychosis, schizophrenia','1000-1500, 1500-2000',4,'English',20,50,'389890328491','','open','sunday, monday, tuesday','1:00AM, 2:00AM, 3:00AM, 4:00AM, 5:00AM'),(17,394839,26,84,'bipolar-affective-disorder, depression','500-1000, 1500-2000, 1000-1500',7,'Bisaya',19,89,'357457','','open','saturday','1:00AM, 2:00AM, 3:00AM'),(18,341349385,29,86,'eating-disorders, depression','500-1000',7,'English',1,180,'5347557','','open','wednesday','2:00AM'),(19,84782458,43,88,'eating-disorders, obsessive-compulsive-disorder','500-1000, 1000-1500, 1500-2000',8,'English',18,99,'83895783','','open','monday, tuesday','1:00AM, 2:00AM, 3:00AM, 4:00AM'),(20,7815833,44,90,'eating-disorders, obsessive-compulsive-disorder','2000-2500, 2500-3000',25,'English',0,99,'57546454','hi gays','open','monday, tuesday, wednesday, thursday, friday','7:00AM, 8:00AM, 9:00AM, 10:00AM, 11:00AM, 1:00PM, 2:00PM, 3:00PM, 4:00PM, 5:00PM'),(21,898413789,46,92,'eating-disorders, bipolar-affective-disorder','5000-above',5,'English',1,97,'093590839549','LGBTQIA+ rights activist.','open','monday, tuesday, wednesday, thursday, friday, saturday','10:00AM, 11:00AM, 12:00PM, 2:00PM, 3:00PM, 4:00PM, 5:00PM, 6:00PM, 7:00PM'),(22,9831298,47,94,'eating-disorders, bipolar-affective-disorder, paranoia','2500-3000, 3000-3500, 3500-4000, 4000-4500',6,'English',2,78,'547257243, 23464369','','open','monday, tuesday','1:00AM, 2:00AM, 3:00AM'),(23,54754624,49,96,'depression, eating-disorders, dissociation-and-dissociative-disorders','1000-1500, 2000-2500',5,'English',19,100,'734524','','open','wednesday','3:00AM'),(24,658356,50,98,'depression','4000-4500',1,'English',10,80,'245754745','','open','friday','10:00AM, 11:00AM, 12:00PM'),(25,457575,51,100,'depression, dissociation-and-dissociative-disorders','2500-3000',5,'English',18,49,'2646','','open','saturday','1:00PM'),(26,74825483,52,102,'eating-disorders','4500-5000',6,'English',4,90,'2746t246','karma is my boyfriend','open','tuesday','2:00AM'),(27,575654,53,104,'psychosis','4500-5000',1,'English',10,20,'435843925','','open','thursday','2:00AM'),(28,45829485,55,106,'depression','1000-1500',2,'English',10,50,'46346245','','open','saturday','3:00PM'),(29,3135450,57,108,'bipolar-affective-disorder','1000-1500',5,'English',1,100,'24364545','','open','monday','5:00AM'),(30,4326435,58,110,'bipolar-affective-disorder','2000-2500',2,'Bisaya',10,70,'13253513','','open','thursday','6:00AM, 7:00AM'),(31,13957385,61,112,'bipolar-affective-disorder','3500-4000',4,'English',10,90,'8345243','i came in like a wrecking ball','open','friday','1:00PM'),(32,7983584,62,114,'eating-disorders','2000-2500',3,'English',1,100,'46423757','','open','tuesday','8:00AM'),(33,321535457,63,116,'obsessive-compulsive-disorder','5000-above',20,'English',1,100,'423665464','','open','wednesday','4:00AM'),(34,3452436,65,118,'dissociation-and-dissociative-disorders','1000-1500',4,'English',1,100,'5963456','','open','wednesday','3:00AM'),(35,5435324,66,120,'depression','1000-1500',1,'English',18,25,'23464646','stop making fetch happen','open','tuesday','4:00AM'),(36,871854,67,122,'depression','1500-2000, 4500-5000',5,'English, Filipino, Bisaya',1,100,'3254352','thank u, next','open','tuesday, wednesday, thursday, friday, saturday','5:00AM');
/*!40000 ALTER TABLE `mental_health_professionals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `message_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `Content` text,
  `date_time` varchar(255) DEFAULT NULL,
  `message_reply_id` int DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `message_reply_username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`message_id`),
  KEY `user_id` (`user_id`),
  KEY `room_id` (`room_id`),
  KEY `message_reply_id` (`message_reply_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`),
  CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`message_reply_id`) REFERENCES `messages` (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (109,21,18,'hiii queens','20:54',NULL,'arianagrande',NULL),(110,23,18,'hii','20:55',NULL,'nminaj',NULL),(111,23,18,'how u','20:55',NULL,'nminaj',NULL),(112,43,18,'omg what am','23:55',NULL,'eslay',NULL),(113,43,18,'i doing here im not a celeb','23:55',NULL,'eslay',NULL),(114,45,18,'hi','20:11',NULL,'vganda',NULL),(115,45,18,'hello','20:11',NULL,'vganda',NULL),(116,45,18,'helo','20:22',NULL,'vganda',NULL),(117,45,18,'ldksagjlskjdkadf','20:44',NULL,'vganda',NULL),(118,45,18,'.','20:44',NULL,'vganda',NULL),(119,45,18,'hslkfjklsjfkjsakjfkjsFKLKLSJLJSFKLKJLKJLJLJADKLGJDKSFJKJKk','20:52',NULL,'vganda',NULL),(120,45,18,'dsjhfgshfjhsdjfhdjsfjsdahjfhasdjhfjgdshjfasdfjadshfjahsdjfhjshfjhsajfhsjhfhsdjfhjshfjahsdjfhsdjhfjahsdjfhjasdhf','20:52',NULL,'vganda',NULL),(121,45,18,'j','20:55',NULL,'vganda',NULL),(122,45,18,'dsjhfgshfjhsdjfhdjsfjsdahjfhasdjhfjgdshjfasdfjadshfjahsdjfhjshfjhsajfhsjhfhsdjfhjshfjahsdjfhsdjhfjahsdjfhjasdhfdsjhfgshfjhsdjfhdjsfjsdahjfhasdjhfjgdshjfasdfjadshfjahsdjfhjshfjhsajfhsjhfhsdjfhjshfjahsdjfhsdjhfjahsdjfhjasdhfdsjhfgshfjhsdjfhdjsfjsdahjfhasdjhfjgdshjfasdfjadshfjahsdjfhjshfjhsajfhsjhfhsdjfhjshfjahsdjfhsdjhfjahsdjfhjasdhf','21:3',NULL,'vganda',NULL),(123,46,18,'hiii','21:32',NULL,'hchafer',NULL),(124,46,18,'eveyrone','21:32',NULL,'hchafer',NULL),(125,46,1,'hiii','21:32',NULL,'hchafer',NULL),(126,46,1,'hello there','21:34',NULL,'hchafer',NULL),(127,46,1,'new chatroom','21:34',NULL,'hchafer',NULL),(128,47,1,'hii hunter!','21:40',NULL,'mbeer',NULL),(129,47,1,'hello madison!','21:40',NULL,'hchafer',NULL),(130,47,1,'you aer so pretty','21:40',NULL,'mbeer',NULL),(131,47,1,'so r u','21:40',NULL,'hchafer',NULL),(132,47,1,'awwe','21:41',NULL,'mbeer',NULL),(133,47,18,'hi','22:14',NULL,'mbeer',NULL),(134,47,19,'hii','22:15',NULL,'mbeer',NULL),(135,47,20,'hii','22:19',NULL,'mbeer',NULL),(136,47,20,'i love gay people','22:19',NULL,'mbeer',NULL),(137,49,18,'omg it finally workss','0:10',NULL,'dlovato',NULL),(138,49,18,'it works','0:11',NULL,'dlovato',NULL),(139,46,18,'hi im back','1:34',NULL,'hchafer',NULL),(140,46,18,'hii goodmornign','1:45',NULL,'hchafer',NULL),(141,46,18,'how is everyone','1:45',NULL,'hchafer',NULL),(142,46,1,'hi','2:10',NULL,'hchafer',NULL),(143,46,1,'no','2:11',NULL,'hchafer',NULL),(144,49,1,'hii','2:12',NULL,'dlovato',NULL),(145,49,1,'hello','2:12',NULL,'hchafer',NULL),(146,49,1,'hiii','2:13',NULL,'dlovato',NULL),(147,49,1,'hello again','2:13',NULL,'hchafer',NULL),(148,49,18,'good afternoon','14:3',NULL,'dlovato',NULL),(149,49,18,'hello test','2:18 PM',NULL,'dlovato',NULL),(150,49,18,'testing date and time','2:18 PM',NULL,'dlovato',NULL),(151,49,18,'/','12/18/2023 2:21 PM',NULL,'dlovato',NULL),(152,49,1,'testing date and time','12/18/2023 2:21 PM',NULL,'dlovato',NULL),(153,49,18,'hi','12/18/2023 4:54 PM',NULL,'dlovato',NULL),(154,49,18,'test again','12/18/2023 5:16 PM',NULL,'dlovato',NULL),(155,49,18,'.','12/18/2023 5:20 PM',NULL,'dlovato',NULL),(156,49,18,'out of style','12/18/2023 5:51 PM',NULL,'dlovato',NULL),(157,49,18,'u got that james dean daydream','12/18/2023 5:52 PM',NULL,'dlovato',NULL),(158,49,18,'hi again','12/18/2023 6:40 PM',NULL,'dlovato',NULL),(159,46,18,'hii','12/18/2023 6:41 PM',NULL,'hchafer',NULL),(160,49,18,'hi everyone','12/18/2023 6:50 PM',NULL,'dlovato',NULL),(161,49,18,'hello','12/18/2023 7:4 PM',NULL,'dlovato',NULL),(162,49,18,'good evening','12/18/2023 7:4 PM',NULL,'dlovato',NULL),(163,49,18,'.','12/18/2023 7:7 PM',NULL,'dlovato',NULL),(164,49,18,'..','12/18/2023 7:7 PM',NULL,'dlovato',NULL),(165,46,18,'hllo','12/18/2023 7:9 PM',NULL,'hchafer',NULL),(166,46,18,'..','12/18/2023 7:13 PM',NULL,'hchafer',NULL),(167,46,1,'stop testing','12/18/2023 7:14 PM',NULL,'hchafer',NULL),(168,46,22,'hi everyone','12/18/2023 7:14 PM',NULL,'hchafer',NULL),(169,46,22,'the password is pass','12/18/2023 7:14 PM',NULL,'hchafer',NULL),(170,46,18,'.','12/18/2023 8:45 PM',NULL,'hchafer',NULL),(171,31,18,'yas kweens','12/18/2023 9:26 PM',NULL,'tsivan',NULL),(172,31,18,'hiii','12/18/2023 9:33 PM',NULL,'tsivan',NULL),(173,31,18,'jldsaklsdfj','12/18/2023 9:33 PM',NULL,'tsivan',NULL),(174,31,18,'dasklj    kadsjfk\\','12/18/2023 9:34 PM',NULL,'tsivan',NULL),(175,31,18,'ldskjksajdfkaksjdfgkjdskgjaksdjgkajdslkgfjakldsjfljsdlfjadsjglkadsjgkajdlgjadlkjglkadjsglkjdslkfjadkslfjlakjdfkladjsgjsdlgjdljlakdjfjadlfjaljgkadjgljadljadjglkjkejkajflkadjgkdgjldkg','12/18/2023 9:38 PM',NULL,'tsivan',NULL),(176,50,18,'omg stop','12/18/2023 11:23 PM',NULL,'cgray',NULL),(177,44,18,'..','12/18/2023 11:24 PM',NULL,'jcoolidge',NULL),(178,52,18,'hi','12/19/2023 12:24 AM',NULL,'mother2',NULL),(179,52,23,'hi everyone!!!','12/19/2023 12:24 AM',NULL,'mother2',NULL),(180,57,18,'i don\'t think i belong her','12/19/2023 7:12 PM',NULL,'mkrabs',NULL),(181,57,18,'here','12/19/2023 7:12 PM',NULL,'mkrabs',NULL),(182,46,18,'hi testing','12/19/2023 8:47 PM',NULL,'hchafer',NULL),(183,46,23,'HIIII','12/19/2023 8:51 PM',NULL,'hchafer',NULL),(184,46,18,'hii','12/21/2023 10:3 AM',NULL,'hchafer',NULL),(185,46,18,'..','12/21/2023 2:54 PM',NULL,'hchafer',NULL),(186,63,18,'hi','12/21/2023 4:34 PM',NULL,'beyonce',NULL),(187,24,18,'hello','12/22/2023 6:11 PM',NULL,'gwapako',NULL),(188,44,18,'ghello ','12/23/2023 6:22 PM',NULL,'jcoolidge',NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `non_mental_health_professionals`
--

DROP TABLE IF EXISTS `non_mental_health_professionals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `non_mental_health_professionals` (
  `nmhp_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `Disorders` varchar(255) DEFAULT NULL,
  `Notes` text,
  PRIMARY KEY (`nmhp_id`),
  KEY `user_id` (`user_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `non_mental_health_professionals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `non_mental_health_professionals_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `non_mental_health_professionals`
--

LOCK TABLES `non_mental_health_professionals` WRITE;
/*!40000 ALTER TABLE `non_mental_health_professionals` DISABLE KEYS */;
/*!40000 ALTER TABLE `non_mental_health_professionals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Content` text,
  `date_time` varchar(255) DEFAULT NULL,
  `State` enum('Visible','Hidden','MarkedDeleted','MarkedHidden','MarkedDeletedHidden','MarkedDeletedAdmin','MarkedDeletedHiddenAdmin') DEFAULT 'Visible',
  `post_reply_id` int DEFAULT NULL,
  `post_reply_level` int DEFAULT NULL,
  `Type` enum('Normal','Triggering','Achievement') DEFAULT 'Normal',
  `Privacy` enum('Everyone','MHP','Followers','Friends') DEFAULT 'Everyone',
  `Remark` text,
  `post_edit_id` int DEFAULT NULL,
  `IsEdited` tinyint DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`),
  KEY `post_reply_id` (`post_reply_id`),
  KEY `post_edit_id` (`post_edit_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`post_reply_id`) REFERENCES `posts` (`post_id`),
  CONSTRAINT `posts_ibfk_3` FOREIGN KEY (`post_edit_id`) REFERENCES `posts` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (2,37,'olivia','no thanks','2023-12-09T13:34:29.875Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(6,37,'olivia','blabhalbh','2023-12-09T15:19:47.073Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(8,37,'olivia','testeste','2023-12-09T16:23:21.931Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(9,33,'dojact','i paint the town red','2023-12-10T07:22:45.855Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(11,33,'dojact','hi kween','2023-12-10T08:29:23.952Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(12,33,'dojact','test again test again','2023-12-10T08:59:41.158Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(13,33,'dojact','cus u know that baby im ur biggest fan','2023-12-10T09:00:28.060Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(14,33,'dojact','testing date and time sure','2023-12-10T09:10:29.094Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(15,33,'dojact','queen of disaster\r\n\r\n\r\n\r\n','2023-12-10T09:17:46.593Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(18,41,'elle','got me spinning like a ballerina, feeling gan','2023-12-10T11:50:31.110Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(23,41,'elle','omg the reply\'s been deleted','2023-12-10T14:41:08.429Z','Visible',18,1,'Normal','Everyone','',NULL,0),(25,41,'elle','blabhlah to u too','2023-12-10T14:42:32.509Z','Visible',6,1,'Normal','Everyone','',NULL,0),(26,41,'elle','lady gaga yass','2023-12-10T15:17:14.009Z','Visible',13,1,'Normal','Everyone','',NULL,0),(27,41,'elle','WHAHAHAHAH','2023-12-10T16:29:46.726Z','Visible',6,1,'Normal','Everyone','',NULL,0),(28,41,'elle','so real for that','2023-12-10T16:29:55.938Z','Visible',2,1,'Normal','Everyone','',NULL,0),(29,41,'elle','sure','2023-12-10T16:30:12.661Z','Visible',9,1,'Normal','Everyone','',NULL,0),(30,41,'elle','weh','2023-12-10T16:30:15.712Z','Visible',9,1,'Normal','Everyone','',NULL,0),(31,41,'elle','lets just say that queen','2023-12-10T16:30:23.354Z','Visible',29,2,'Normal','Everyone','',NULL,0),(32,41,'elle','what','2023-12-10T16:30:45.414Z','Visible',29,2,'Normal','Everyone','',NULL,0),(33,41,'elle','real','2023-12-10T16:31:56.467Z','Visible',9,1,'Normal','Everyone','',NULL,0),(34,41,'elle','eww','2023-12-10T16:45:11.099Z','Visible',32,3,'Normal','Everyone','',NULL,0),(35,41,'elle','no tnx','2023-12-10T16:45:20.188Z','Visible',29,2,'Normal','Everyone','',NULL,0),(36,41,'elle','how???','2023-12-10T16:46:31.936Z','Visible',28,2,'Normal','Everyone','',NULL,0),(37,41,'elle','shhh','2023-12-10T16:46:38.087Z','Visible',2,1,'Normal','Everyone','',NULL,0),(38,41,'elle','stop omg','2023-12-10T16:53:20.667Z','Visible',34,4,'Normal','Everyone','',NULL,0),(39,41,'elle','shutup','2023-12-10T16:53:27.319Z','Visible',34,4,'Normal','Everyone','',NULL,0),(40,41,'elle','no','2023-12-10T16:53:40.215Z','Visible',39,5,'Normal','Everyone','',NULL,0),(41,41,'elle','giirlllyasss','2023-12-10T17:07:52.501Z','Visible',15,1,'Normal','Everyone','',NULL,0),(42,41,'elle','yess','2023-12-10T17:08:12.512Z','Visible',41,2,'Normal','Everyone','',NULL,0),(43,41,'elle','omgg??','2023-12-10T17:10:56.559Z','Visible',42,3,'Normal','Everyone','',NULL,0),(44,41,'elle','hiii?','2023-12-10T17:11:26.151Z','Visible',11,1,'Normal','Everyone','',NULL,0),(45,41,'elle','helloo!!','2023-12-10T17:14:03.585Z','Visible',44,2,'Normal','Everyone','',NULL,0),(46,41,'elle','hi everyone','2023-12-10T17:52:50.287Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(47,41,'elle','yupp huhu','2023-12-10T17:53:11.109Z','Visible',23,2,'Normal','Everyone','',NULL,0),(48,41,'elle','huh','2023-12-10T17:57:48.321Z','Visible',32,3,'Normal','Everyone','',NULL,0),(49,41,'elle','stop','2023-12-10T18:08:22.034Z','Visible',48,4,'Normal','Everyone','',NULL,0),(50,42,'joshhutcherson','have u seen my new movie hehe','2023-12-11T05:21:04.872Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(51,42,'joshhutcherson','omgo why','2023-12-11T05:55:47.388Z','Visible',2,1,'Normal','Everyone','',NULL,0),(53,42,'joshhutcherson','i love lady gaga too','2023-12-11T08:27:01.579Z','Visible',26,2,'Normal','Everyone','',NULL,0),(54,42,'joshhutcherson','you mean the og post has been deleted?','2023-12-11T08:35:01.060Z','Visible',23,2,'Normal','Everyone','',NULL,0),(55,42,'joshhutcherson','omg stop','2023-12-11T09:07:30.281Z','Visible',30,2,'Normal','Everyone','',NULL,0),(56,42,'joshhutcherson','true','2023-12-11T09:08:14.030Z','Visible',30,2,'Normal','Everyone','',NULL,0),(57,42,'joshhutcherson','leaf','2023-12-11T09:08:20.762Z','Visible',33,2,'Normal','Everyone','',NULL,0),(58,42,'joshhutcherson','no not yet','2023-12-11T09:09:41.062Z','Visible',50,1,'Normal','Everyone','',NULL,0),(61,42,'joshhutcherson','real','2023-12-11T09:29:13.333Z','Visible',58,2,'Normal','Everyone','',NULL,0),(62,42,'joshhutcherson','yasss','2023-12-11T09:38:34.907Z','Visible',15,1,'Normal','Everyone','',NULL,0),(63,42,'joshhutcherson','stop saying omg omg','2023-12-11T09:53:47.775Z','Visible',43,4,'Normal','Everyone','',NULL,0),(64,42,'joshhutcherson','stop','2023-12-11T10:02:59.394Z','Visible',50,1,'Normal','Everyone','',NULL,0),(65,42,'joshhutcherson','hi doja cat','2023-12-11T10:17:45.879Z','Visible',9,1,'Normal','Everyone','',NULL,0),(66,42,'joshhutcherson','no','2023-12-11T10:17:58.943Z','Visible',49,5,'Normal','Everyone','',NULL,0),(80,42,'joshhutcherson','hiiii','2023-12-11T10:43:37.600Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(81,42,'joshhutcherson','test reply level 1','2023-12-11T10:43:44.343Z','Visible',80,1,'Normal','Everyone','',NULL,0),(82,42,'joshhutcherson','test reply level 2','2023-12-11T10:43:50.084Z','Visible',81,2,'Normal','Everyone','',NULL,0),(83,42,'joshhutcherson','test reply level 3','2023-12-11T10:43:57.910Z','Visible',82,3,'Normal','Everyone','',NULL,0),(84,42,'joshhutcherson','test reply level 2','2023-12-11T10:44:06.584Z','Visible',81,2,'Normal','Everyone','',NULL,0),(86,42,'joshhutcherson','test post','2023-12-11T10:49:48.520Z','MarkedDeleted',NULL,0,'Normal','Everyone','',NULL,0),(87,42,'joshhutcherson','test reply level 1','2023-12-11T10:49:57.588Z','Visible',86,1,'Normal','Everyone','',NULL,0),(88,42,'joshhutcherson','test reply level 2.','2023-12-11T10:50:04.080Z','Visible',87,2,'Normal','Everyone','',NULL,0),(89,42,'joshhutcherson','test reply level 3','2023-12-11T10:50:10.399Z','Visible',88,3,'Normal','Everyone','',NULL,0),(90,42,'joshhutcherson','test reply level 2','2023-12-11T10:50:17.276Z','Visible',87,2,'Normal','Everyone','',NULL,0),(91,42,'joshhutcherson','test level 4','2023-12-11T11:03:32.044Z','Visible',89,4,'Normal','Everyone','',NULL,0),(94,42,'joshhutcherson','test level 4','2023-12-11T11:03:50.951Z','Visible',89,4,'Normal','Everyone','',NULL,0),(95,42,'joshhutcherson','hello!!','2023-12-13T05:28:28.602Z','Visible',44,2,'Normal','Everyone','',NULL,0),(96,42,'joshhutcherson','no','2023-12-13T05:28:34.776Z','Visible',95,3,'Normal','Everyone','',NULL,0),(97,42,'joshhutcherson','don\'t even','2023-12-13T05:28:44.506Z','Visible',45,3,'Normal','Everyone','',NULL,0),(98,42,'joshhutcherson','why','2023-12-13T05:28:58.605Z','Visible',96,4,'Normal','Everyone','',NULL,0),(99,42,'joshhutcherson','stop keyboard smashing','2023-12-13T09:24:30.787Z','Visible',80,1,'Normal','Everyone','',NULL,0),(100,42,'joshhutcherson','level 4','2023-12-13T09:24:45.828Z','Visible',83,4,'Normal','Everyone','',NULL,0),(110,42,'joshhutcherson','omg i got oats','2023-12-14T08:42:39.000Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(112,42,'joshhutcherson','noo','2023-12-14T09:52:00.522Z','Visible',99,2,'Normal','Everyone','',NULL,0),(113,42,'joshhutcherson','yas kween slay','2023-12-15T10:30:03.899Z','Visible',NULL,0,'Triggering','Everyone','violence',NULL,0),(114,42,'joshhutcherson','this is not a triggering message anymore.','2023-12-15T10:28:13.483Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(115,42,'joshhutcherson','trigger','2023-12-14T10:37:42.378Z','Visible',NULL,0,'Triggering','Everyone','trigger warning:',NULL,0),(116,42,'joshhutcherson','lalallalala','2023-12-14T10:37:47.674Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(117,42,'joshhutcherson','no tw anymore','2023-12-15T10:21:27.087Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(118,42,'joshhutcherson','stop','2023-12-14T10:38:38.060Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(120,42,'joshhutcherson','this is a triggering post again!','2023-12-15T08:45:24.654Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(122,42,'joshhutcherson','another triggering post','2023-12-14T14:45:04.936Z','Visible',120,1,'Triggering','Everyone','trigger warning',NULL,0),(123,42,'joshhutcherson','no i will not','2023-12-14T14:48:53.826Z','Visible',118,1,'Triggering','Everyone','tw',NULL,0),(124,42,'joshhutcherson','stop','2023-12-15T08:06:10.217Z','Visible',115,1,'Normal','Everyone','',NULL,0),(134,29,'scarpenter','hiii everyone','2023-12-16T14:33:26.094Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(136,24,'gwapako','no','2023-12-17T11:22:11.200Z','Visible',118,1,'Normal','Everyone','',NULL,0),(137,45,'vganda','hello sabrina','2023-12-17T11:33:43.588Z','Visible',134,1,'Normal','Everyone','',NULL,0),(138,45,'vganda','hi madlang people','2023-12-17T11:33:02.508Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(139,46,'hchafer','omgg you look like the smiling titan','2023-12-17T13:31:30.088Z','Visible',138,1,'Normal','Everyone','',NULL,0),(140,46,'hchafer','slay','2023-12-17T13:31:40.966Z','Visible',138,1,'Normal','Everyone','',NULL,0),(141,47,'mbeer','omg stop','2023-12-17T13:41:23.262Z','Visible',139,2,'Normal','Everyone','',NULL,0),(142,47,'mbeer','tes level 5','2023-12-17T13:41:53.109Z','Visible',91,5,'Normal','Everyone','',NULL,0),(143,47,'mbeer','test level 6','2023-12-17T13:41:59.245Z','Visible',142,6,'Normal','Everyone','',NULL,0),(144,47,'mbeer','test level 7','2023-12-17T13:42:04.677Z','Visible',143,7,'Normal','Everyone','',NULL,0),(145,49,'dlovato','hello world','2023-12-17T16:11:47.200Z','Visible',134,1,'Normal','Everyone','',NULL,0),(146,49,'dlovato','hii everyone','2023-12-17T16:12:29.023Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(147,49,'dlovato','hi again','2023-12-17T16:12:37.965Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(148,49,'dlovato','test again','2023-12-17T16:17:40.602Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(150,46,'hchafer','hello!','2023-12-18T12:19:06.964Z','Visible',148,1,'Normal','Everyone','',NULL,0),(151,46,'hchafer','hello again too','2023-12-18T12:42:26.335Z','Visible',147,1,'Normal','Everyone','',NULL,0),(152,46,'hchafer','hii','2023-12-18T12:42:50.022Z','Visible',151,2,'Normal','Everyone','',NULL,0),(153,46,'hchafer','test reply','2023-12-18T12:56:51.408Z','Visible',148,1,'Normal','Everyone','',NULL,0),(154,46,'hchafer','no','2023-12-18T12:56:28.002Z','Visible',153,2,'Normal','Everyone','',NULL,0),(156,47,'mbeer','test','2023-12-18T14:52:21.349Z','Visible',152,3,'Normal','Everyone','',NULL,0),(157,52,'mother2','i love me','2023-12-18T16:23:01.514Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(158,52,'mother2','eras tour','2023-12-18T16:24:14.602Z','Visible',157,1,'Normal','Everyone','',NULL,0),(159,54,'pikachu','hii everyone!!','2023-12-19T07:29:54.413Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(160,56,'scheeks','HELO','2023-12-19T10:41:16.249Z','MarkedHidden',159,1,'Normal','Everyone','',NULL,0),(161,46,'hchafer','hi','2023-12-19T12:48:29.642Z','Visible',160,2,'Triggering','Everyone','eating disorder',NULL,0),(162,46,'hchafer','real','2023-12-19T13:04:11.082Z','Visible',159,1,'Normal','Everyone','',NULL,0),(163,46,'hchafer','hiii','2023-12-19T13:17:59.392Z','Visible',159,1,'Normal','Everyone','',NULL,0),(164,46,'hchafer','jii','2023-12-19T13:54:37.238Z','Visible',NULL,0,'Triggering','Everyone','violence',NULL,0),(166,46,'hchafer','test','2023-12-19T14:06:10.814Z','MarkedHidden',NULL,0,'Normal','Everyone','',NULL,0),(167,66,'rgeorge','.','2023-12-21T13:16:02.431Z','MarkedHidden',NULL,0,'Normal','Everyone','',NULL,0),(168,24,'gwapako','no','2023-12-22T07:03:41.001Z','MarkedDeletedHiddenAdmin',NULL,0,'Triggering','Everyone','lala',NULL,0),(170,62,'rfenty','hi','2023-12-22T10:48:44.686Z','Visible',NULL,0,'Normal','Everyone','',NULL,1),(171,62,'rfenty','no','2023-12-22T11:16:15.948Z','Visible',42,3,'Normal','Everyone','',NULL,0),(172,62,'rfenty','dasfd','2023-12-22T11:18:22.453Z','Visible',14,1,'Triggering','Everyone','dsfa',NULL,0),(173,68,'troye','hello','2023-12-22T18:14:29.595Z','Visible',208,1,'Normal','Everyone','',NULL,1),(174,68,'troye','hellooo','2023-12-22T18:32:06.524Z','Visible',208,1,'Normal','Everyone','',173,1),(175,68,'troye','hellooo','2023-12-22T18:32:48.265Z','Visible',208,1,'Triggering','Everyone','no',174,1),(176,68,'troye','hi kween','2023-12-22T18:41:32.777Z','Visible',208,1,'Normal','Everyone','',175,1),(177,68,'troye','nope lets not do that','2023-12-22T18:42:06.845Z','Visible',208,1,'Normal','Everyone','',176,1),(178,68,'troye','eww','2023-12-22T18:42:44.779Z','Visible',208,1,'Triggering','Everyone','cyberbullying',177,1),(179,68,'troye','no','2023-12-22T18:46:19.485Z','Visible',205,2,'Normal','Everyone','',NULL,0),(180,68,'troye','hehe','2023-12-22T18:46:29.216Z','Visible',208,1,'Normal','Everyone','',178,1),(183,68,'troye','heheheheheeh','2023-12-22T18:57:28.761Z','Visible',208,1,'Normal','Everyone','',180,1),(184,68,'troye','pls stop','2023-12-22T19:00:43.964Z','Visible',208,1,'Normal','Everyone','',183,1),(185,68,'troye','what why','2023-12-22T19:00:56.487Z','Visible',205,2,'Normal','Everyone','',NULL,0),(186,68,'troye','ok','2023-12-22T19:01:01.990Z','Visible',205,2,'Normal','Everyone','',NULL,0),(187,68,'troye','WHAHAHAH','2023-12-22T19:01:08.083Z','Visible',208,1,'Normal','Everyone','',184,1),(188,68,'troye','test','2023-12-22T19:04:31.177Z','Visible',NULL,0,'Normal','Everyone','',NULL,1),(189,68,'troye','test agin','2023-12-22T19:15:36.336Z','Visible',NULL,0,'Normal','Everyone','',188,1),(190,68,'troye','WHAHAHAHsadfsd','2023-12-22T19:25:19.637Z','Visible',208,1,'Normal','Everyone','',187,1),(191,68,'troye','test aginasdfsdadf pls','2023-12-22T19:25:30.433Z','Visible',NULL,0,'Normal','Everyone','',189,1),(192,68,'troye','test reply edit','2023-12-22T19:25:37.543Z','Visible',203,1,'Normal','Everyone','',NULL,0),(193,68,'troye','test aginasdfsdadf pls..','2023-12-22T19:25:55.906Z','Visible',NULL,0,'Normal','Everyone','',191,1),(194,68,'troye','test aginasdfsdadf plshj','2023-12-22T19:26:22.169Z','Visible',NULL,0,'Triggering','Everyone','what',193,1),(195,68,'troye','test aginasdfsdadf plshj no','2023-12-22T19:26:40.661Z','Visible',NULL,0,'Normal','Everyone','',194,1),(196,68,'troye','hii','2023-12-22T19:26:45.459Z','Visible',NULL,0,'Normal','Everyone','',NULL,1),(197,68,'troye','hiiiijdjaksdf','2023-12-22T19:26:49.470Z','Visible',NULL,0,'Normal','Everyone','',196,1),(198,68,'troye','test aginasdfsda','2023-12-22T19:39:40.457Z','Visible',NULL,0,'Normal','Everyone','',195,1),(199,68,'troye','test aginas','2023-12-22T19:58:59.382Z','Visible',NULL,0,'Normal','Everyone','',198,1),(200,68,'troye','test edit','2023-12-22T19:59:04.196Z','Visible',NULL,0,'Normal','Everyone','',199,1),(201,68,'troye','test edit edit again','2023-12-22T19:59:10.359Z','Visible',NULL,0,'Normal','Everyone','',200,1),(202,68,'troye','test edit edit again','2023-12-22T19:59:17.064Z','Visible',NULL,0,'Triggering','Everyone','adsf',201,1),(203,68,'troye','yuhh','2023-12-22T19:59:31.090Z','MarkedDeleted',NULL,0,'Normal','Everyone','',202,0),(204,68,'troye','hiiiijdjaksdf kween','2023-12-22T20:12:09.110Z','Visible',NULL,0,'Normal','Everyone','',197,0),(205,68,'troye','WHAHAHAHs.....','2023-12-22T20:12:36.287Z','MarkedHidden',208,1,'Normal','Everyone','',190,0),(206,62,'rfenty','not anymore','2023-12-22T22:46:29.085Z','Visible',NULL,0,'Normal','Everyone','',170,1),(207,62,'rfenty','not anymore','2023-12-22T22:46:45.935Z','Visible',NULL,0,'Triggering','Everyone','adgdg',206,1),(208,62,'rfenty','not anymore','2023-12-22T22:46:58.057Z','Visible',NULL,0,'Normal','Everyone','',207,0),(209,24,'gwapako','.','2023-12-23T05:42:48.187Z','Visible',167,1,'Normal','Everyone','',NULL,0),(210,24,'gwapako','...','2023-12-23T05:46:47.634Z','Visible',168,1,'Normal','Everyone','',NULL,0),(211,68,'troye','hi','2023-12-23T06:19:54.677Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(212,68,'troye','hello','2023-12-23T06:20:15.025Z','MarkedDeletedAdmin',NULL,0,'Normal','Everyone','',NULL,0),(213,68,'troye','.....','2023-12-23T06:22:08.805Z','Visible',NULL,0,'Normal','Everyone','',NULL,1),(214,68,'troye','..','2023-12-23T06:22:31.408Z','Visible',211,1,'Normal','Everyone','',NULL,0),(217,64,'admin','hellooo','2023-12-23T07:57:01.270Z','Visible',NULL,0,'Normal','Everyone','',NULL,0),(218,64,'admin','hiii','2023-12-23T07:57:05.249Z','Visible',217,1,'Normal','Everyone','',NULL,0),(222,24,'gwapako','ajsdklfdksjfads','2023-12-23T08:33:54.883Z','Visible',NULL,0,'Normal','Everyone','',NULL,1),(224,24,'gwapako','ajsdklfdksjfadsdkslajldf','2023-12-23T08:34:14.831Z','Visible',NULL,0,'Normal','Everyone','',222,1),(225,24,'gwapako','hahahaha','2023-12-23T08:35:35.942Z','MarkedDeleted',NULL,0,'Normal','Everyone','',224,0),(227,64,'admin','testtest','2023-12-23T08:41:47.947Z','MarkedDeleted',212,1,'Normal','Everyone','',NULL,0),(228,64,'admin','WHHAHLFKAJDSK','2023-12-23T08:41:52.328Z','Visible',227,2,'Normal','Everyone','',NULL,0),(229,64,'admin','test reply reply','2023-12-23T10:44:12.734Z','Visible',161,3,'Normal','Everyone','',NULL,1),(230,64,'admin','test reply reply','2023-12-23T10:44:25.216Z','Visible',161,3,'Triggering','Everyone','...',229,1),(231,64,'admin','test reply reply test','2023-12-23T10:44:43.828Z','Visible',161,3,'Normal','Everyone','',230,0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_messages`
--

LOCK TABLES `private_messages` WRITE;
/*!40000 ALTER TABLE `private_messages` DISABLE KEYS */;
INSERT INTO `private_messages` VALUES (1,49,5,'hello?','12/18/2023 6:40 PM',NULL,'dlovato',NULL),(2,49,5,'hi hunter','12/18/2023 6:40 PM',NULL,'dlovato',NULL),(3,46,5,'HELLO','12/18/2023 6:41 PM',NULL,'hchafer',NULL),(4,46,5,'omg it works','12/18/2023 6:41 PM',NULL,'hchafer',NULL),(5,46,5,'hi i love your songss','12/18/2023 6:41 PM',NULL,'hchafer',NULL),(6,46,6,'hiii','12/18/2023 6:41 PM',NULL,'hchafer',NULL),(7,49,9,'.','12/18/2023 6:50 PM',NULL,'dlovato',NULL),(8,49,9,'hi queen','12/18/2023 7:4 PM',NULL,'dlovato',NULL),(9,49,8,'hello shawn','12/18/2023 7:6 PM',NULL,'dlovato',NULL),(10,46,13,'hi shawn','12/18/2023 7:13 PM',NULL,'hchafer',NULL),(11,46,14,'hello how r u and sabrina','12/18/2023 7:14 PM',NULL,'hchafer',NULL),(12,46,15,'hii melanie','12/18/2023 8:45 PM',NULL,'hchafer',NULL),(13,46,6,'hii madisoin','12/18/2023 8:55 PM',NULL,'hchafer',NULL),(14,46,16,'hello!! omg i  love u','12/18/2023 8:55 PM',NULL,'hchafer',NULL),(15,46,16,'   so much','12/18/2023 8:55 PM',NULL,'hchafer',NULL),(16,46,16,'dsjagkl  kldjsakgj     kldajv','12/18/2023 8:55 PM',NULL,'hchafer',NULL),(17,46,6,'each day goes by','12/18/2023 9:5 PM',NULL,'hchafer',NULL),(18,47,6,'each night i cry','12/18/2023 9:6 PM',NULL,'mbeer',NULL),(20,31,17,'.','12/18/2023 9:6 PM',NULL,'tsivan',NULL),(21,47,18,'how is joshua bassett queen','12/18/2023 9:7 PM',NULL,'mbeer',NULL),(22,37,18,'omg stop','12/18/2023 9:8 PM',NULL,'olivia',NULL),(25,31,19,'girl hi','12/18/2023 9:14 PM',NULL,'tsivan',NULL),(27,31,20,'hi','12/18/2023 9:16 PM',NULL,'tsivan',NULL),(30,31,11,'..','12/18/2023 9:21 PM',NULL,'tsivan',NULL),(31,31,17,'test','12/18/2023 9:21 PM',NULL,'tsivan',NULL),(32,31,22,'hello','12/18/2023 9:21 PM',NULL,'tsivan',NULL),(33,31,21,'hiiiiiii','12/18/2023 9:21 PM',NULL,'tsivan',NULL),(34,31,23,'hai','12/18/2023 9:22 PM',NULL,'tsivan',NULL),(35,31,21,'hello','12/18/2023 9:22 PM',NULL,'tsivan',NULL),(36,31,24,'hi babes','12/18/2023 9:23 PM',NULL,'tsivan',NULL),(37,31,20,'guurl hi','12/18/2023 9:25 PM',NULL,'tsivan',NULL),(38,31,25,'hi queen','12/18/2023 9:40 PM',NULL,'tsivan',NULL),(39,31,25,'i love u','12/18/2023 9:40 PM',NULL,'tsivan',NULL),(40,31,25,'sm','12/18/2023 9:40 PM',NULL,'tsivan',NULL),(41,44,25,'i love sm too','12/18/2023 9:41 PM',NULL,'jcoolidge',NULL),(42,44,25,'sm seaside','12/18/2023 9:41 PM',NULL,'jcoolidge',NULL),(43,24,26,'omg HII','12/18/2023 9:56 PM',NULL,'gwapako',NULL),(44,47,27,'hii','12/18/2023 10:46 PM',NULL,'mbeer',NULL),(45,47,9,'somebody','12/18/2023 10:47 PM',NULL,'mbeer',NULL),(46,47,6,'somebody saw u with her last night','12/18/2023 10:51 PM',NULL,'mbeer',NULL),(47,47,18,'hello','12/18/2023 11:2 PM',NULL,'mbeer',NULL),(48,50,28,'hi love u','12/18/2023 11:23 PM',NULL,'cgray',NULL),(49,44,28,'love u too','12/18/2023 11:24 PM',NULL,'jcoolidge',NULL),(50,52,29,'love ur show','12/19/2023 12:22 AM',NULL,'mother2',NULL),(51,44,28,'..','12/19/2023 3:4 PM',NULL,'jcoolidge',NULL),(52,56,30,'HIIII','12/19/2023 6:41 PM',NULL,'scheeks',NULL),(53,56,30,'ROMEO TAKE ME SOMEWHERE WE CAN BE ALONE','12/19/2023 6:41 PM',NULL,'scheeks',NULL),(54,52,30,'ILL BE WAITING ALL','12/19/2023 8:3 PM',NULL,'mother2',NULL),(55,46,5,'yass','12/19/2023 8:47 PM',NULL,'hchafer',NULL),(56,46,6,'truee','12/19/2023 8:47 PM',NULL,'hchafer',NULL),(57,46,31,'hiii','12/19/2023 9:58 PM',NULL,'hchafer',NULL),(58,46,5,'hiii','12/19/2023 10:4 PM',NULL,'hchafer',NULL),(59,46,5,'hii','12/20/2023 12:0 AM',NULL,'hchafer',NULL),(60,46,6,'hi','12/21/2023 2:53 PM',NULL,'hchafer',NULL),(61,63,32,'yass','12/21/2023 6:26 PM',NULL,'beyonce',NULL),(62,24,26,'..','12/22/2023 2:10 PM',NULL,'gwapako',NULL),(63,24,26,'hello','12/22/2023 3:27 PM',NULL,'gwapako',NULL),(64,44,26,'hi','12/22/2023 6:40 PM',NULL,'jcoolidge',NULL),(65,44,33,'hi','12/22/2023 6:40 PM',NULL,'jcoolidge',NULL),(66,62,34,'hii','12/22/2023 8:44 PM',NULL,'rfenty',NULL),(67,64,35,'im such a fan','12/22/2023 8:45 PM',NULL,'admin',NULL),(68,67,35,'ty','12/22/2023 8:45 PM',NULL,'rembeauty',NULL),(69,64,36,'hi squidward','12/23/2023 5:19 PM',NULL,'admin',NULL);
/*!40000 ALTER TABLE `private_messages` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_rooms`
--

LOCK TABLES `private_rooms` WRITE;
/*!40000 ALTER TABLE `private_rooms` DISABLE KEYS */;
INSERT INTO `private_rooms` VALUES (5,'Active','hchafer','dlovato','hchafer, dlovato',46,49),(6,'Active','hchafer','mbeer','hchafer, mbeer',46,47),(7,'Active','hchafer','eslay','hchafer, eslay',46,43),(8,'Active','dlovato','shawn','dlovato, shawn',49,38),(9,'Active','dlovato','mbeer','dlovato, mbeer',49,47),(10,'Active','dlovato','joshhutcherson','dlovato, joshhutcherson',49,42),(11,'Active','dlovato','tsivan','dlovato, tsivan',49,31),(12,'Active','dlovato','jcoolidge','dlovato, jcoolidge',49,44),(13,'Active','hchafer','shawn','hchafer, shawn',46,38),(14,'Active','hchafer','joshua','hchafer, joshua',46,39),(15,'Active','hchafer','melanie','hchafer, melanie',46,40),(16,'Active','hchafer','jcoolidge','hchafer, jcoolidge',46,44),(17,'Active','mbeer','tsivan','mbeer, tsivan',47,31),(18,'Active','mbeer','olivia','mbeer, olivia',47,37),(19,'Active','olivia','tsivan','olivia, tsivan',37,31),(20,'Active','tsivan','nminaj','tsivan, nminaj',31,23),(21,'Active','tsivan','squid','tsivan, squid',31,26),(22,'Active','tsivan','hchafer','tsivan, hchafer',31,46),(23,'Active','tsivan','elle','tsivan, elle',31,41),(24,'Active','tsivan','joshua','tsivan, joshua',31,39),(25,'Active','tsivan','jcoolidge','tsivan, jcoolidge',31,44),(26,'Active','gwapako','jcoolidge','gwapako, jcoolidge',24,44),(27,'Active','mbeer','jcoolidge','mbeer, jcoolidge',47,44),(28,'Active','cgray','jcoolidge','cgray, jcoolidge',50,44),(29,'Active','mother2','kconnor','mother2, kconnor',52,51),(30,'Active','scheeks','mother2','scheeks, mother2',56,52),(31,'Active','hchafer','mkrabs','hchafer, mkrabs',46,57),(32,'Active','beyonce','tsivan','beyonce, tsivan',63,31),(33,'Active','jcoolidge','rgeorge','jcoolidge, rgeorge',44,66),(34,'Active','rfenty','rembeauty','rfenty, rembeauty',62,67),(35,'Active','admin','rembeauty','admin, rembeauty',64,67),(36,'Active','admin','squid','admin, squid',64,26);
/*!40000 ALTER TABLE `private_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `State` enum('Active','Pending','Archived','Blocked') DEFAULT NULL,
  `Members` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`room_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'Active','hchafer, mbeer, dlovato','slay','pass'),(18,'Active','arianagrande, nminaj, eslay, vganda, hchafer, mbeer, dlovato, tsivan, cgray, jcoolidge, mother2, mkrabs, beyonce, gwapako','celebs','pass'),(19,'Active','mbeer','flop','pass'),(20,'Active','mbeer','budding','pass'),(21,'Active','mbeer','celeb','pass'),(22,'Active','hchafer','another room for the gays','pass'),(23,'Active','mother2, hchafer','swifties','pass');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (21,'arianagrande','arianagrande@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-06 14:26:54','Active','Ariana','Yas','Grande',23,'Woman','she/her','n/a'),(22,'ekween','ekween@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-06 14:32:25','Active','Elektra','','Kween',31,'Woman','','n/a'),(23,'nminaj','nminaj@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-06 14:36:48','Active','Nicki','','Minaj',31,'Woman','','n/a'),(24,'gwapako','gwapako@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-06 14:56:39','Active','Gwapa','','Ko',19,'Woman','','n/a'),(25,'squarepants','squarepants@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-07 13:38:13','Active','Spongebob','','Squarepants',10,'Non-Binary','he/him','n/a'),(26,'squid','squid@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-07 14:47:02','Active','Squidward','','Tentacles',25,'Woman','','n/a'),(27,'patrick','patric@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-07 14:48:43','Blocked','Patrick','','Star',5,'Man','','n/a'),(28,'lnene','lnene@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-08 05:50:39','Blocked','Lady','','Nene',21,'Non-Binary','','n/a'),(29,'scarpenter','scarpenter@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-08 05:51:19','Active','Sabrina','','Carpenter',25,'Woman','she/her','n/a'),(30,'rlynch','rlynch@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-08 06:28:21','Active','Ross ','','Lynch',11,'Man','he/him','n/a'),(31,'tsivan','tsivan@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-08 06:30:20','Active','Troye','Yas','Sivan',27,'Non-Binary','they/them','n/a'),(32,'lgaga','lgaga@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-08 06:40:18','Active','Lady','','Gaga',33,'Woman','','n/a'),(33,'dojact','dojacat@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-08 06:41:13','Active','Doja','','Cat',25,'Woman','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/dojact?alt=media&token=2ee07730-9945-49f5-a976-f4f8180a3279'),(34,'jiafei','jiafei@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-08 08:13:43','Active','Queen','','Jiafei',100,'Non-Binary','','n/a'),(35,'cardib','cardib@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','nmhp','2023-12-08 08:41:07','Active','Cardi','','B',32,'PNTS','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/cardib?alt=media&token=03ad8407-6d2d-48f4-b2df-c754e3515f57'),(37,'olivia','olivia@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-08 14:55:23','Active','Olivia','','Rodrigo',23,'Woman','','n/a'),(38,'shawn','shawn@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-08 15:05:56','Active','Shawn','','Mendez',25,'PNTS','','n/a'),(39,'joshua','joshua@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-08 15:30:15','Active','Joshua','','Bassett',19,'PNTS','','n/a'),(40,'melanie','melanie@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-08 17:42:01','Active','Melani','','Martinez',31,'PNTS','','n/a'),(41,'elle','elle@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-10 11:46:40','Active','Elle','','Ardent',18,'Woman','she/her','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/elle?alt=media&token=4b5811df-9659-4784-bbd7-8bffca9858ee'),(42,'joshhutcherson','joshhutcherson@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-11 05:11:12','Active','Josh','','Hutcherson',31,'Man','he/him','n/a'),(43,'eslay','eslay@gmail.com','SamplePassword@2023','tinn-and-gun.jpg','mhp','2023-12-16 14:44:11','Active','Elizabeth','','Slay',46,'PNTS','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/eslay?alt=media&token=6c8ebc97-6318-4135-ae64-5913d71e1e64'),(44,'jcoolidge','jcoolidge@gmail.com','SamplePassword@2023','jcoolidge.jpg','mhp','2023-12-17 06:27:27','Active','Jennifer','','Coolidge',62,'Woman','she/her','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/jcoolidge?alt=media&token=7b2938d3-1f91-4cd0-a3be-66af5641bf88'),(45,'vganda','vganda@gmail.com','SamplePassword@2023','vice-ganda.jpg','nmhp','2023-12-17 11:30:56','Active','Vice','','Ganda',45,'Non-Binary','any','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/vganda?alt=media&token=c07c4339-6b77-49ad-a3ef-00ba79e4708f'),(46,'hchafer','hchafer@gmail.com','SamplePassword@2023','hunter-schafer.jpg','mhp','2023-12-17 13:28:49','Active','Hunter ','','Schafer',24,'Woman','she/her','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/hchafer?alt=media&token=02f999a2-ede5-4655-866b-70d3a5e41a9c'),(47,'mbeer','mbeer@gmail.com','SamplePassword@2023','madison-beer.jpg','mhp','2023-12-17 13:39:11','Active','Madison','Elle','Beer',24,'Woman','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/mbeer?alt=media&token=1bc63de7-ffb5-43e1-8d9f-4480880ae655'),(49,'dlovato','dlovato@gmail.com','SamplePassword@2023','demi-lovato.jpg','mhp','2023-12-17 15:54:50','Active','Demi','Devonne','Lovato',31,'PNTS','she/her, they/them','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/dlovato?alt=media&token=069f595a-2bea-43ba-9411-670b5c642374'),(50,'cgray','cgray@gmail.com','SamplePassword@2023','conan-gray.jpg','mhp','2023-12-18 15:22:44','Active','Conan','Lee','Gray',25,'PNTS','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/cgray?alt=media&token=ef539c74-18ea-45d3-a572-cdf3d6b53361'),(51,'kconnor','kconnor@gmail.com','SamplePassword@2023','kit-connor.jpg','mhp','2023-12-18 15:29:42','Active','Kit','','Connor',20,'Man','he/him','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/kconnor?alt=media&token=32a6663f-a876-43bf-87a8-47d55af3009f'),(52,'mother2','mother@gmail.com','SamplePassword@2023','taylor-swift.png','mhp','2023-12-18 16:21:36','Active','Taylor','Alison','Swift',34,'Woman','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/mother2?alt=media&token=219dfdd5-202f-45f6-86a6-63c3d30d21a9'),(53,'pstar','pstar@gmail.com','SamplePassword@2023','n/a','mhp','2023-12-19 07:25:28','Active','Patrick','','Star',5,'PNTS','','n/a'),(54,'pikachu','pikachu@gmail.com','SamplePassword@2023','pikachu.webp','nmhp','2023-12-19 07:28:49','Active','Pikachu','','Pokemon',5,'PNTS','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/pikachu?alt=media&token=55a32781-7485-4d99-97ed-74994b2da1ee'),(55,'kclarkson','kclarkson@gmail.com','SamplePassword@2023','n/a','mhp','2023-12-19 10:33:20','Active','Kelly','','Clarkson',31,'PNTS','','n/a'),(56,'scheeks','scheeks@gmail.com','SamplePassword@2023','sandy-cheeks.webp','nmhp','2023-12-19 10:40:30','Active','Sandy','','Cheeks',20,'PNTS','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/scheeks?alt=media&token=5133ae82-1f4b-4564-8652-e26a2b0179b3'),(57,'mkrabs','mkrabs@gmail.com','SamplePassword@2023','mr-krabss.webp','mhp','2023-12-19 10:50:57','Active','Mr','','Krabs',50,'Man','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/mkrabs?alt=media&token=203db68b-bfd8-42f4-993b-cfaea8c3b7d9'),(58,'mrobbie','mrobbie@gmail.com','SamplePassword@2023','margot-robbie.webp','mhp','2023-12-19 11:55:55','Active','Margot','','Robbie',33,'Woman','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/mrobbie?alt=media&token=7b562ed4-d4c0-45af-ab91-3c62c075bc6a'),(59,'mteresa','mteresa@gmail.com','SamplePassword@2023','n/a','nmhp','2023-12-21 03:30:05','Active','Maria','Leonora','Teresa',6,'PNTS','','n/a'),(60,'test2','test2@gmail.com','SamplePassword@2023','n/a','nmhp','2023-12-21 03:38:59','Active','test','','testtest',9,'PNTS','','n/a'),(61,'mcyrus','mcyrus@gmail.com','SamplePassword@2023','miley-cyrs.jpg','mhp','2023-12-21 03:44:46','Active','Miley','Ray','Cyrus',31,'PNTS','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/mcyrus?alt=media&token=686d4e40-1862-489b-8879-5623ae41bfd3'),(62,'rfenty','rfenty@gmail.com','SamplePassword@2023','rihanna.jpg','mhp','2023-12-21 05:43:01','Active','Robyn','Rihanna','Fenty',35,'Woman','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/rfenty?alt=media&token=8182363e-baf2-4be8-97dd-d5b4d41de0e6'),(63,'beyonce','beyonce@gmail.com','SamplePassword@2023','beyonce.jpg','mhp','2023-12-21 08:25:14','Active','Beyoncé','Giselle','Knowles',42,'PNTS','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/beyonce?alt=media&token=177c18fb-d13c-43f2-bd10-6c9c861508ee'),(64,'admin','admin@gmail.com','SamplePassword@2023','n/a','admin','2023-12-21 08:25:14','Active','admin','admin','admin',21,'PNTS',NULL,'n/a'),(65,'ewoods','ewoods@gmail.com','SamplePassword@2023','elle-woods.webp','mhp','2023-12-21 12:49:37','Unverified','Elle','','Woods',23,'Woman','she/her','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/ewoods?alt=media&token=c3e61481-d397-4ce0-85b0-b6c6c58e141d'),(66,'rgeorge','rgeorge@gmail.com','SamplePassword@2023','regina-george.webp','mhp','2023-12-21 13:08:23','Unverified','Regina','','George',23,'PNTS','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/rgeorge?alt=media&token=3d282fe4-b476-42bd-adbc-01e579c2b7ef'),(67,'rembeauty','rembeauty@gmail.com','SamplePassword@2023','ariana-grande.webp','mhp','2023-12-22 12:40:14','Unverified','Ariana','','Grande-Butera',30,'Woman','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/rembeauty?alt=media&token=884e41ab-a8f7-4814-adb5-9d9404577f10'),(68,'troye','troye@gmail.com','SamplePassword@2023','troye.jpg','mhp','2023-12-22 12:48:03','Unverified','Troye','','Sivan',28,'PNTS','','https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/troye?alt=media&token=249efb32-5a02-4c83-ba3f-338934a64187');
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

-- Dump completed on 2023-12-23 21:40:10
