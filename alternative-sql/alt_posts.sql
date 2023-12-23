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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Content` text DEFAULT NULL,
  `date_time` varchar(255) DEFAULT NULL,
  `State` enum('Visible','Hidden','MarkedDeleted','MarkedHidden','MarkedDeletedHidden','MarkedDeletedAdmin','MarkedDeletedHiddenAdmin') DEFAULT 'Visible',
  `post_reply_id` int(11) DEFAULT NULL,
  `post_reply_level` int(11) DEFAULT NULL,
  `Type` enum('Normal','Triggering','Achievement') DEFAULT 'Normal',
  `Privacy` enum('Everyone','MHP','Followers','Friends') DEFAULT 'Everyone',
  `Remark` text DEFAULT NULL,
  `post_edit_id` int(11) DEFAULT NULL,
  `IsEdited` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `Username`, `Content`, `date_time`, `State`, `post_reply_id`, `post_reply_level`, `Type`, `Privacy`, `Remark`, `post_edit_id`, `IsEdited`) VALUES
(229, 22, 'ekween', 'hello', '2023-12-23T10:58:26.711Z', 'Visible', NULL, 0, 'Normal', 'Everyone', '', NULL, 0),
(230, 24, 'gwapako', 'Hello', '2023-12-23T10:59:17.598Z', 'Visible', NULL, 0, 'Normal', 'Everyone', '', NULL, 0),
(232, 44, 'jcoolidge', 'Reall', '2023-12-23T11:00:34.415Z', 'Visible', NULL, 0, 'Normal', 'Everyone', '', NULL, 0),
(233, 45, 'vganda', 'Sure', '2023-12-23T11:00:55.056Z', 'Visible', 232, 1, 'Normal', 'Everyone', '', NULL, 0),
(234, 46, 'hchafer', 'The way idc', '2023-12-23T11:01:16.919Z', 'Visible', NULL, 0, 'Normal', 'Everyone', '', NULL, 1),
(235, 46, 'hchafer', 'The way idcs', '2023-12-23T11:07:30.559Z', 'MarkedHidden', NULL, 0, 'Normal', 'Everyone', '', 234, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_reply_id` (`post_reply_id`),
  ADD KEY `post_edit_id` (`post_edit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `posts_ibfk_2` FOREIGN KEY (`post_reply_id`) REFERENCES `posts` (`post_id`),
  ADD CONSTRAINT `posts_ibfk_3` FOREIGN KEY (`post_edit_id`) REFERENCES `posts` (`post_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
