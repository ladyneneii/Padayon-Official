-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 02:12 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `padayon`
--

-- --------------------------------------------------------

--
-- Table structure for table `mental_health_professionals`
--

CREATE TABLE `mental_health_professionals` (
  `mhp_id` int(11) NOT NULL,
  `license_number` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `disorders_specializations` varchar(255) DEFAULT NULL,
  `Fees` varchar(255) DEFAULT NULL,
  `years_of_experience` int(11) DEFAULT NULL,
  `Languages` varchar(255) DEFAULT NULL,
  `min_age` int(11) DEFAULT NULL,
  `max_age` int(11) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `Notes` text DEFAULT NULL,
  `State` enum('open','closed','deactivated') DEFAULT NULL,
  `available_days` varchar(255) DEFAULT NULL,
  `available_hours` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mental_health_professionals`
--

INSERT INTO `mental_health_professionals` (`mhp_id`, `license_number`, `user_id`, `location_id`, `disorders_specializations`, `Fees`, `years_of_experience`, `Languages`, `min_age`, `max_age`, `contact_number`, `Notes`, `State`, `available_days`, `available_hours`) VALUES
(6, 313545, 40, 75, 'bipolar-affective-disorder, paranoia', '500-1000', 2, 'English', 1, 19, '4353454', '', 'open', 'sunday, monday', '4:00AM'),
(7, 34526256, 31, 74, 'bipolar-affective-disorder, depression, dissociation-and-dissociative-disorders', '500-1000, 1000-1500, 4000-4500', 2, 'English', 1, 100, '3543453', '', 'open', 'wednesday, tuesday', '3:00AM'),
(8, 3254354, 39, 76, 'depression', '1000-1500, 1500-2000', 34, 'English', 1, 19, '5436233', '', 'open', 'sunday', '1:00AM, 2:00AM, 3:00AM, 4:00AM, 5:00AM, 6:00AM'),
(9, 32153545, 38, 77, 'bipolar-affective-disorder, depression', '500-1000, 1000-1500, 1500-2000', 7, 'English', 1, 199, '315436', 'hiii don\'t be afraid to talk to me', 'open', 'tuesday, wednesday', '2:00AM, 3:00AM, 4:00AM, 4:00PM, 5:00PM, 6:00PM'),
(10, 3154, 37, 78, 'bipolar-affective-disorder, depression, dissociation-and-dissociative-disorders', '2000-2500', 2, 'Filipino', 1, 100, '432643656', '', 'open', 'sunday, monday, tuesday, wednesday', '2:00AM, 3:00AM, 4:00AM, 5:00AM'),
(11, 643435, 33, 79, 'bipolar-affective-disorder, depression, dissociation-and-dissociative-disorders', '2000-2500, 5000-above', 4, 'English', 12, 21, '436243646', '', 'open', 'sunday, monday, tuesday', '5:00AM, 6:00AM, 7:00AM, 8:00AM'),
(12, 98849425, 41, 80, 'eating-disorders, bipolar-affective-disorder, depression, dissociation-and-dissociative-disorders', '1000-1500, 1500-2000, 2000-2500', 4, 'English', 10, 48, '42343524646', '', 'open', 'monday, tuesday, wednesday, thursday, friday', '12:00AM, 1:00AM, 2:00AM, 3:00AM, 4:00AM, 5:00AM'),
(13, 462235, 42, 81, 'eating-disorders, post-traumatic-stress-disorder, neurodevelopmental-disorders, schizophrenia', '4500-5000, 5000-above', 2, 'English', 1, 100, '3452436646', '', 'open', 'sunday', '3:00AM'),
(14, 54724523, 21, 125, 'eating-disorders', '500-1000', 2, 'English', 1, 199, '43269849', '', 'open', 'wednesday', '2:00AM'),
(15, 858573456, 22, 82, 'dissociation-and-dissociative-disorders', '2500-3000', 5, 'Bisaya', 1, 20, '6856574565', '', 'open', 'wednesday', '5:00AM, 6:00AM, 8:00AM'),
(16, 9574624, 23, 83, 'depression, psychosis, schizophrenia', '1000-1500, 1500-2000', 4, 'English', 20, 50, '389890328491', '', 'open', 'sunday, monday, tuesday', '1:00AM, 2:00AM, 3:00AM, 4:00AM, 5:00AM'),
(17, 394839, 26, 84, 'bipolar-affective-disorder, depression', '500-1000, 1500-2000, 1000-1500', 7, 'Bisaya', 19, 89, '357457', '', 'open', 'saturday', '1:00AM, 2:00AM, 3:00AM'),
(18, 341349385, 29, 86, 'eating-disorders, depression', '500-1000', 7, 'English', 1, 180, '5347557', '', 'open', 'wednesday', '2:00AM'),
(19, 84782458, 43, 88, 'eating-disorders, obsessive-compulsive-disorder', '500-1000, 1000-1500, 1500-2000', 8, 'English', 18, 99, '83895783', '', 'open', 'monday, tuesday', '1:00AM, 2:00AM, 3:00AM, 4:00AM'),
(20, 7815833, 44, 90, 'eating-disorders, obsessive-compulsive-disorder', '2000-2500, 2500-3000', 25, 'English', 0, 99, '57546454', 'hi gays', 'open', 'monday, tuesday, wednesday, thursday, friday', '7:00AM, 8:00AM, 9:00AM, 10:00AM, 11:00AM, 1:00PM, 2:00PM, 3:00PM, 4:00PM, 5:00PM'),
(21, 898413789, 46, 92, 'eating-disorders, bipolar-affective-disorder', '5000-above', 5, 'English', 1, 97, '093590839549', 'LGBTQIA+ rights activist.', 'open', 'monday, tuesday, wednesday, thursday, friday, saturday', '10:00AM, 11:00AM, 12:00PM, 2:00PM, 3:00PM, 4:00PM, 5:00PM, 6:00PM, 7:00PM'),
(22, 9831298, 47, 94, 'eating-disorders, bipolar-affective-disorder, paranoia', '2500-3000, 3000-3500, 3500-4000, 4000-4500', 6, 'English', 2, 78, '547257243, 23464369', '', 'open', 'monday, tuesday', '1:00AM, 2:00AM, 3:00AM'),
(23, 54754624, 49, 96, 'depression, eating-disorders, dissociation-and-dissociative-disorders', '1000-1500, 2000-2500', 5, 'English', 19, 100, '734524', '', 'open', 'wednesday', '3:00AM'),
(24, 658356, 50, 98, 'depression', '4000-4500', 1, 'English', 10, 80, '245754745', '', 'open', 'friday', '10:00AM, 11:00AM, 12:00PM'),
(25, 457575, 51, 100, 'depression, dissociation-and-dissociative-disorders', '2500-3000', 5, 'English', 18, 49, '2646', '', 'open', 'saturday', '1:00PM'),
(26, 74825483, 52, 102, 'eating-disorders', '4500-5000', 6, 'English', 4, 90, '2746t246', 'karma is my boyfriend', 'open', 'tuesday', '2:00AM'),
(27, 575654, 53, 104, 'psychosis', '4500-5000', 1, 'English', 10, 20, '435843925', '', 'open', 'thursday', '2:00AM'),
(28, 45829485, 55, 106, 'depression', '1000-1500', 2, 'English', 10, 50, '46346245', '', 'open', 'saturday', '3:00PM'),
(29, 3135450, 57, 108, 'bipolar-affective-disorder', '1000-1500', 5, 'English', 1, 100, '24364545', '', 'open', 'monday', '5:00AM'),
(30, 4326435, 58, 110, 'bipolar-affective-disorder', '2000-2500', 2, 'Bisaya', 10, 70, '13253513', '', 'open', 'thursday', '6:00AM, 7:00AM'),
(31, 13957385, 61, 112, 'bipolar-affective-disorder', '3500-4000', 4, 'English', 10, 90, '8345243', 'i came in like a wrecking ball', 'open', 'friday', '1:00PM'),
(32, 7983584, 62, 114, 'eating-disorders', '2000-2500', 3, 'English', 1, 100, '46423757', '', 'open', 'tuesday', '8:00AM'),
(33, 321535457, 63, 116, 'obsessive-compulsive-disorder', '5000-above', 20, 'English', 1, 100, '423665464', '', 'open', 'wednesday', '4:00AM'),
(34, 3452436, 65, 118, 'dissociation-and-dissociative-disorders', '1000-1500', 4, 'English', 1, 100, '5963456', '', 'open', 'wednesday', '3:00AM'),
(35, 5435324, 66, 120, 'depression', '1000-1500', 1, 'English', 18, 25, '23464646', 'stop making fetch happen', 'open', 'tuesday', '4:00AM'),
(36, 871854, 67, 122, 'depression', '1500-2000, 4500-5000', 5, 'English, Filipino, Bisaya', 1, 100, '3254352', 'thank u, next', 'open', 'tuesday, wednesday, thursday, friday, saturday', '5:00AM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mental_health_professionals`
--
ALTER TABLE `mental_health_professionals`
  ADD PRIMARY KEY (`mhp_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `location_id` (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mental_health_professionals`
--
ALTER TABLE `mental_health_professionals`
  MODIFY `mhp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mental_health_professionals`
--
ALTER TABLE `mental_health_professionals`
  ADD CONSTRAINT `mental_health_professionals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `mental_health_professionals_ibfk_2` FOREIGN KEY (`location_id`) REFERENCES `locations` (`location_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
