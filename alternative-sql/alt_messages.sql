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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `Content` text DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `message_reply_id` int(11) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `message_reply_username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `user_id`, `room_id`, `Content`, `date_time`, `message_reply_id`, `Username`, `message_reply_username`) VALUES
(109, 21, 18, 'hiii queens', '20:54', NULL, 'arianagrande', NULL),
(110, 23, 18, 'hii', '20:55', NULL, 'nminaj', NULL),
(111, 23, 18, 'how u', '20:55', NULL, 'nminaj', NULL),
(112, 43, 18, 'omg what am', '23:55', NULL, 'eslay', NULL),
(113, 43, 18, 'i doing here im not a celeb', '23:55', NULL, 'eslay', NULL),
(114, 45, 18, 'hi', '20:11', NULL, 'vganda', NULL),
(115, 45, 18, 'hello', '20:11', NULL, 'vganda', NULL),
(116, 45, 18, 'helo', '20:22', NULL, 'vganda', NULL),
(117, 45, 18, 'ldksagjlskjdkadf', '20:44', NULL, 'vganda', NULL),
(118, 45, 18, '.', '20:44', NULL, 'vganda', NULL),
(119, 45, 18, 'hslkfjklsjfkjsakjfkjsFKLKLSJLJSFKLKJLKJLJLJADKLGJDKSFJKJKk', '20:52', NULL, 'vganda', NULL),
(120, 45, 18, 'dsjhfgshfjhsdjfhdjsfjsdahjfhasdjhfjgdshjfasdfjadshfjahsdjfhjshfjhsajfhsjhfhsdjfhjshfjahsdjfhsdjhfjahsdjfhjasdhf', '20:52', NULL, 'vganda', NULL),
(121, 45, 18, 'j', '20:55', NULL, 'vganda', NULL),
(122, 45, 18, 'dsjhfgshfjhsdjfhdjsfjsdahjfhasdjhfjgdshjfasdfjadshfjahsdjfhjshfjhsajfhsjhfhsdjfhjshfjahsdjfhsdjhfjahsdjfhjasdhfdsjhfgshfjhsdjfhdjsfjsdahjfhasdjhfjgdshjfasdfjadshfjahsdjfhjshfjhsajfhsjhfhsdjfhjshfjahsdjfhsdjhfjahsdjfhjasdhfdsjhfgshfjhsdjfhdjsfjsdahjfhasdjhfjgdshjfasdfjadshfjahsdjfhjshfjhsajfhsjhfhsdjfhjshfjahsdjfhsdjhfjahsdjfhjasdhf', '21:3', NULL, 'vganda', NULL),
(123, 46, 18, 'hiii', '21:32', NULL, 'hchafer', NULL),
(124, 46, 18, 'eveyrone', '21:32', NULL, 'hchafer', NULL),
(125, 46, 1, 'hiii', '21:32', NULL, 'hchafer', NULL),
(126, 46, 1, 'hello there', '21:34', NULL, 'hchafer', NULL),
(127, 46, 1, 'new chatroom', '21:34', NULL, 'hchafer', NULL),
(128, 47, 1, 'hii hunter!', '21:40', NULL, 'mbeer', NULL),
(129, 47, 1, 'hello madison!', '21:40', NULL, 'hchafer', NULL),
(130, 47, 1, 'you aer so pretty', '21:40', NULL, 'mbeer', NULL),
(131, 47, 1, 'so r u', '21:40', NULL, 'hchafer', NULL),
(132, 47, 1, 'awwe', '21:41', NULL, 'mbeer', NULL),
(133, 47, 18, 'hi', '22:14', NULL, 'mbeer', NULL),
(134, 47, 19, 'hii', '22:15', NULL, 'mbeer', NULL),
(135, 47, 20, 'hii', '22:19', NULL, 'mbeer', NULL),
(136, 47, 20, 'i love gay people', '22:19', NULL, 'mbeer', NULL),
(137, 49, 18, 'omg it finally workss', '0:10', NULL, 'dlovato', NULL),
(138, 49, 18, 'it works', '0:11', NULL, 'dlovato', NULL),
(139, 46, 18, 'hi im back', '1:34', NULL, 'hchafer', NULL),
(140, 46, 18, 'hii goodmornign', '1:45', NULL, 'hchafer', NULL),
(141, 46, 18, 'how is everyone', '1:45', NULL, 'hchafer', NULL),
(142, 46, 1, 'hi', '2:10', NULL, 'hchafer', NULL),
(143, 46, 1, 'no', '2:11', NULL, 'hchafer', NULL),
(144, 49, 1, 'hii', '2:12', NULL, 'dlovato', NULL),
(145, 49, 1, 'hello', '2:12', NULL, 'hchafer', NULL),
(146, 49, 1, 'hiii', '2:13', NULL, 'dlovato', NULL),
(147, 49, 1, 'hello again', '2:13', NULL, 'hchafer', NULL),
(148, 49, 18, 'good afternoon', '14:3', NULL, 'dlovato', NULL),
(149, 49, 18, 'hello test', '2:18 PM', NULL, 'dlovato', NULL),
(150, 49, 18, 'testing date and time', '2:18 PM', NULL, 'dlovato', NULL),
(151, 49, 18, '/', '12/18/2023 2:21 PM', NULL, 'dlovato', NULL),
(152, 49, 1, 'testing date and time', '12/18/2023 2:21 PM', NULL, 'dlovato', NULL),
(153, 49, 18, 'hi', '12/18/2023 4:54 PM', NULL, 'dlovato', NULL),
(154, 49, 18, 'test again', '12/18/2023 5:16 PM', NULL, 'dlovato', NULL),
(155, 49, 18, '.', '12/18/2023 5:20 PM', NULL, 'dlovato', NULL),
(156, 49, 18, 'out of style', '12/18/2023 5:51 PM', NULL, 'dlovato', NULL),
(157, 49, 18, 'u got that james dean daydream', '12/18/2023 5:52 PM', NULL, 'dlovato', NULL),
(158, 49, 18, 'hi again', '12/18/2023 6:40 PM', NULL, 'dlovato', NULL),
(159, 46, 18, 'hii', '12/18/2023 6:41 PM', NULL, 'hchafer', NULL),
(160, 49, 18, 'hi everyone', '12/18/2023 6:50 PM', NULL, 'dlovato', NULL),
(161, 49, 18, 'hello', '12/18/2023 7:4 PM', NULL, 'dlovato', NULL),
(162, 49, 18, 'good evening', '12/18/2023 7:4 PM', NULL, 'dlovato', NULL),
(163, 49, 18, '.', '12/18/2023 7:7 PM', NULL, 'dlovato', NULL),
(164, 49, 18, '..', '12/18/2023 7:7 PM', NULL, 'dlovato', NULL),
(165, 46, 18, 'hllo', '12/18/2023 7:9 PM', NULL, 'hchafer', NULL),
(166, 46, 18, '..', '12/18/2023 7:13 PM', NULL, 'hchafer', NULL),
(167, 46, 1, 'stop testing', '12/18/2023 7:14 PM', NULL, 'hchafer', NULL),
(168, 46, 22, 'hi everyone', '12/18/2023 7:14 PM', NULL, 'hchafer', NULL),
(169, 46, 22, 'the password is pass', '12/18/2023 7:14 PM', NULL, 'hchafer', NULL),
(170, 46, 18, '.', '12/18/2023 8:45 PM', NULL, 'hchafer', NULL),
(171, 31, 18, 'yas kweens', '12/18/2023 9:26 PM', NULL, 'tsivan', NULL),
(172, 31, 18, 'hiii', '12/18/2023 9:33 PM', NULL, 'tsivan', NULL),
(173, 31, 18, 'jldsaklsdfj', '12/18/2023 9:33 PM', NULL, 'tsivan', NULL),
(174, 31, 18, 'dasklj    kadsjfk\\', '12/18/2023 9:34 PM', NULL, 'tsivan', NULL),
(175, 31, 18, 'ldskjksajdfkaksjdfgkjdskgjaksdjgkajdslkgfjakldsjfljsdlfjadsjglkadsjgkajdlgjadlkjglkadjsglkjdslkfjadkslfjlakjdfkladjsgjsdlgjdljlakdjfjadlfjaljgkadjgljadljadjglkjkejkajflkadjgkdgjldkg', '12/18/2023 9:38 PM', NULL, 'tsivan', NULL),
(176, 50, 18, 'omg stop', '12/18/2023 11:23 PM', NULL, 'cgray', NULL),
(177, 44, 18, '..', '12/18/2023 11:24 PM', NULL, 'jcoolidge', NULL),
(178, 52, 18, 'hi', '12/19/2023 12:24 AM', NULL, 'mother2', NULL),
(179, 52, 23, 'hi everyone!!!', '12/19/2023 12:24 AM', NULL, 'mother2', NULL),
(180, 57, 18, 'i don\'t think i belong her', '12/19/2023 7:12 PM', NULL, 'mkrabs', NULL),
(181, 57, 18, 'here', '12/19/2023 7:12 PM', NULL, 'mkrabs', NULL),
(182, 46, 18, 'hi testing', '12/19/2023 8:47 PM', NULL, 'hchafer', NULL),
(183, 46, 23, 'HIIII', '12/19/2023 8:51 PM', NULL, 'hchafer', NULL),
(184, 46, 18, 'hii', '12/21/2023 10:3 AM', NULL, 'hchafer', NULL),
(185, 46, 18, '..', '12/21/2023 2:54 PM', NULL, 'hchafer', NULL),
(186, 63, 18, 'hi', '12/21/2023 4:34 PM', NULL, 'beyonce', NULL),
(187, 24, 18, 'hello', '12/22/2023 6:11 PM', NULL, 'gwapako', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `message_reply_id` (`message_reply_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`),
  ADD CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`message_reply_id`) REFERENCES `messages` (`message_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
