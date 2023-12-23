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
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `Latitude` float DEFAULT NULL,
  `Longitude` float DEFAULT NULL,
  `Address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_id`, `Latitude`, `Longitude`, `Address`) VALUES
(74, 10.3403, 123.942, 'n/a'),
(75, 10.3157, 123.883, 'n/a'),
(76, 10.3157, 123.911, 'n/a'),
(77, 10.337, 123.938, 'n/a'),
(78, 10.3403, 123.942, 'n/a'),
(79, 10.3157, 123.912, 'n/a'),
(80, 10.315, 123.885, 'n/a'),
(81, 10.336, 123.938, 'n/a'),
(82, 10.3909, 123.978, 'n/a'),
(83, 10.3187, 123.485, 'n/a'),
(84, 10.314, 123.81, 'n/a'),
(85, 10.3157, 123.8, 'n/a'),
(86, 10.3157, 123.885, 'n/a'),
(87, 10.3372, 123.925, 'n/a'),
(88, 10.3372, 123.938, 'n/a'),
(89, 10.3403, 123.98, 'n/a'),
(90, 10.3909, 123.978, 'n/a'),
(91, 10.3403, 121.902, 'n/a'),
(92, 10.3909, 123.978, 'n/a'),
(93, 10.3372, 123.938, 'n/a'),
(94, 10.3372, 123.938, 'n/a'),
(95, 10.4372, 123.998, 'n/a'),
(96, 10.3403, 123.142, 'n/a'),
(97, 10.3403, 123.942, 'n/a'),
(98, 6.3403, 100.942, 'n/a'),
(99, 5.3403, 123.642, 'n/a'),
(100, 10.3372, 123.938, 'n/a'),
(101, 10.3403, 123.942, 'n/a'),
(102, 10.3401, 123.314, 'n/a'),
(103, 7.7211, 123.938, 'n/a'),
(104, 10.3372, 123.908, 'n/a'),
(105, 10.3403, 123.942, 'n/a'),
(106, 10.3103, 123.942, 'n/a'),
(107, 10.3403, 123.742, 'n/a'),
(108, 10.344, 123.842, 'n/a'),
(109, 10.3403, 123.942, 'n/a'),
(110, 10.3413, 122.942, 'n/a'),
(111, 10.3403, 110.942, 'n/a'),
(112, 10.3154, 123.889, 'n/a'),
(113, 10.3403, 123.042, 'n/a'),
(114, 10.3372, 123.938, 'n/a'),
(115, 10.3403, 123.942, 'n/a'),
(116, 9.3403, 123.942, 'n/a'),
(117, 10.3372, 123.124, 'n/a'),
(118, 10.2372, 123.938, 'n/a'),
(119, 10.3372, 123.9, 'n/a'),
(120, 10.3372, 123.938, 'n/a'),
(121, 10.3403, 123.942, 'n/a'),
(122, 10.3372, 123.938, 'n/a'),
(123, 10.3909, 123.978, 'n/a'),
(124, 10.3909, 123.978, 'n/a'),
(125, 10.3909, 123.978, 'n/a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
