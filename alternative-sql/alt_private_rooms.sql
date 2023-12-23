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
-- Table structure for table `private_rooms`
--

CREATE TABLE `private_rooms` (
  `private_room_id` int(11) NOT NULL,
  `State` enum('Active','Pending','Archived','Blocked') DEFAULT 'Active',
  `Member1` varchar(255) DEFAULT NULL,
  `Member2` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `member1_user_id` int(11) DEFAULT NULL,
  `member2_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `private_rooms`
--

INSERT INTO `private_rooms` (`private_room_id`, `State`, `Member1`, `Member2`, `Title`, `member1_user_id`, `member2_user_id`) VALUES
(5, 'Active', 'hchafer', 'dlovato', 'hchafer, dlovato', 46, 49),
(6, 'Active', 'hchafer', 'mbeer', 'hchafer, mbeer', 46, 47),
(7, 'Active', 'hchafer', 'eslay', 'hchafer, eslay', 46, 43),
(8, 'Active', 'dlovato', 'shawn', 'dlovato, shawn', 49, 38),
(9, 'Active', 'dlovato', 'mbeer', 'dlovato, mbeer', 49, 47),
(10, 'Active', 'dlovato', 'joshhutcherson', 'dlovato, joshhutcherson', 49, 42),
(11, 'Active', 'dlovato', 'tsivan', 'dlovato, tsivan', 49, 31),
(12, 'Active', 'dlovato', 'jcoolidge', 'dlovato, jcoolidge', 49, 44),
(13, 'Active', 'hchafer', 'shawn', 'hchafer, shawn', 46, 38),
(14, 'Active', 'hchafer', 'joshua', 'hchafer, joshua', 46, 39),
(15, 'Active', 'hchafer', 'melanie', 'hchafer, melanie', 46, 40),
(16, 'Active', 'hchafer', 'jcoolidge', 'hchafer, jcoolidge', 46, 44),
(17, 'Active', 'mbeer', 'tsivan', 'mbeer, tsivan', 47, 31),
(18, 'Active', 'mbeer', 'olivia', 'mbeer, olivia', 47, 37),
(19, 'Active', 'olivia', 'tsivan', 'olivia, tsivan', 37, 31),
(20, 'Active', 'tsivan', 'nminaj', 'tsivan, nminaj', 31, 23),
(21, 'Active', 'tsivan', 'squid', 'tsivan, squid', 31, 26),
(22, 'Active', 'tsivan', 'hchafer', 'tsivan, hchafer', 31, 46),
(23, 'Active', 'tsivan', 'elle', 'tsivan, elle', 31, 41),
(24, 'Active', 'tsivan', 'joshua', 'tsivan, joshua', 31, 39),
(25, 'Active', 'tsivan', 'jcoolidge', 'tsivan, jcoolidge', 31, 44),
(26, 'Active', 'gwapako', 'jcoolidge', 'gwapako, jcoolidge', 24, 44),
(27, 'Active', 'mbeer', 'jcoolidge', 'mbeer, jcoolidge', 47, 44),
(28, 'Active', 'cgray', 'jcoolidge', 'cgray, jcoolidge', 50, 44),
(29, 'Active', 'mother2', 'kconnor', 'mother2, kconnor', 52, 51),
(30, 'Active', 'scheeks', 'mother2', 'scheeks, mother2', 56, 52),
(31, 'Active', 'hchafer', 'mkrabs', 'hchafer, mkrabs', 46, 57),
(32, 'Active', 'beyonce', 'tsivan', 'beyonce, tsivan', 63, 31),
(33, 'Active', 'jcoolidge', 'rgeorge', 'jcoolidge, rgeorge', 44, 66),
(34, 'Active', 'rfenty', 'rembeauty', 'rfenty, rembeauty', 62, 67),
(35, 'Active', 'admin', 'rembeauty', 'admin, rembeauty', 64, 67),
(36, 'Active', 'admin', 'squid', 'admin, squid', 64, 26);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `private_rooms`
--
ALTER TABLE `private_rooms`
  ADD PRIMARY KEY (`private_room_id`),
  ADD KEY `fk_member1_user` (`member1_user_id`),
  ADD KEY `fk_member2_user` (`member2_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `private_rooms`
--
ALTER TABLE `private_rooms`
  MODIFY `private_room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `private_rooms`
--
ALTER TABLE `private_rooms`
  ADD CONSTRAINT `fk_member1_user` FOREIGN KEY (`member1_user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_member2_user` FOREIGN KEY (`member2_user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
