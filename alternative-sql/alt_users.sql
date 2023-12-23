-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 02:11 PM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
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
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Pronouns` varchar(50) DEFAULT NULL,
  `firebase_avatar_url` varchar(255) DEFAULT 'n/a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `Username`, `Email`, `Password`, `avatar_url`, `Role`, `register_date`, `State`, `first_name`, `middle_name`, `last_name`, `Age`, `Gender`, `Pronouns`, `firebase_avatar_url`) VALUES
(21, 'arianagrande', 'arianagrande@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'mhp', '2023-12-06 14:26:54', 'Active', 'Ariana', 'Yas', 'Grande', 23, 'Woman', 'she/her', 'n/a'),
(22, 'ekween', 'ekween@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'mhp', '2023-12-06 14:32:25', 'Active', 'Elektra', '', 'Kween', 31, 'Woman', '', 'n/a'),
(23, 'nminaj', 'nminaj@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'mhp', '2023-12-06 14:36:48', 'Active', 'Nicki', '', 'Minaj', 31, 'Woman', '', 'n/a'),
(24, 'gwapako', 'gwapako@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'nmhp', '2023-12-06 14:56:39', 'Active', 'Gwapa', '', 'Ko', 19, 'Woman', '', 'n/a'),
(25, 'squarepants', 'squarepants@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'nmhp', '2023-12-07 13:38:13', 'Active', 'Spongebob', '', 'Squarepants', 10, 'Non-Binary', 'he/him', 'n/a'),
(26, 'squid', 'squid@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'mhp', '2023-12-07 14:47:02', 'Active', 'Squidward', '', 'Tentacles', 25, 'Woman', '', 'n/a'),
(27, 'patrick', 'patric@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'nmhp', '2023-12-07 14:48:43', 'Blocked', 'Patrick', '', 'Star', 5, 'Man', '', 'n/a'),
(28, 'lnene', 'lnene@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'nmhp', '2023-12-08 05:50:39', 'Blocked', 'Lady', '', 'Nene', 21, 'Non-Binary', '', 'n/a'),
(29, 'scarpenter', 'scarpenter@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'mhp', '2023-12-08 05:51:19', 'Active', 'Sabrina', '', 'Carpenter', 25, 'Woman', 'she/her', 'n/a'),
(30, 'rlynch', 'rlynch@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'nmhp', '2023-12-08 06:28:21', 'Active', 'Ross ', '', 'Lynch', 11, 'Man', 'he/him', 'n/a'),
(31, 'tsivan', 'tsivan@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'mhp', '2023-12-08 06:30:20', 'Active', 'Troye', 'Yas', 'Sivan', 27, 'Non-Binary', 'they/them', 'n/a'),
(32, 'lgaga', 'lgaga@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'nmhp', '2023-12-08 06:40:18', 'Active', 'Lady', '', 'Gaga', 33, 'Woman', '', 'n/a'),
(33, 'dojact', 'dojacat@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'mhp', '2023-12-08 06:41:13', 'Active', 'Doja', '', 'Cat', 25, 'Woman', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/dojact?alt=media&token=2ee07730-9945-49f5-a976-f4f8180a3279'),
(34, 'jiafei', 'jiafei@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'nmhp', '2023-12-08 08:13:43', 'Active', 'Queen', '', 'Jiafei', 100, 'Non-Binary', '', 'n/a'),
(35, 'cardib', 'cardib@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'nmhp', '2023-12-08 08:41:07', 'Active', 'Cardi', '', 'B', 32, 'PNTS', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/cardib?alt=media&token=03ad8407-6d2d-48f4-b2df-c754e3515f57'),
(37, 'olivia', 'olivia@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'mhp', '2023-12-08 14:55:23', 'Active', 'Olivia', '', 'Rodrigo', 23, 'Woman', '', 'n/a'),
(38, 'shawn', 'shawn@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'mhp', '2023-12-08 15:05:56', 'Active', 'Shawn', '', 'Mendez', 25, 'PNTS', '', 'n/a'),
(39, 'joshua', 'joshua@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'mhp', '2023-12-08 15:30:15', 'Active', 'Joshua', '', 'Bassett', 19, 'PNTS', '', 'n/a'),
(40, 'melanie', 'melanie@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'mhp', '2023-12-08 17:42:01', 'Active', 'Melani', '', 'Martinez', 31, 'PNTS', '', 'n/a'),
(41, 'elle', 'elle@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'mhp', '2023-12-10 11:46:40', 'Active', 'Elle', '', 'Ardent', 18, 'Woman', 'she/her', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/elle?alt=media&token=4b5811df-9659-4784-bbd7-8bffca9858ee'),
(42, 'joshhutcherson', 'joshhutcherson@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'mhp', '2023-12-11 05:11:12', 'Active', 'Josh', '', 'Hutcherson', 31, 'Man', 'he/him', 'n/a'),
(43, 'eslay', 'eslay@gmail.com', 'SamplePassword@2023', 'tinn-and-gun.jpg', 'mhp', '2023-12-16 14:44:11', 'Active', 'Elizabeth', '', 'Slay', 46, 'PNTS', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/eslay?alt=media&token=6c8ebc97-6318-4135-ae64-5913d71e1e64'),
(44, 'jcoolidge', 'jcoolidge@gmail.com', 'SamplePassword@2023', 'jcoolidge.jpg', 'mhp', '2023-12-17 06:27:27', 'Unverified', 'Jennifer', '', 'Coolidge', 62, 'Woman', 'she/her', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/jcoolidge?alt=media&token=7b2938d3-1f91-4cd0-a3be-66af5641bf88'),
(45, 'vganda', 'vganda@gmail.com', 'SamplePassword@2023', 'vice-ganda.jpg', 'nmhp', '2023-12-17 11:30:56', 'Active', 'Vice', '', 'Ganda', 45, 'Non-Binary', 'any', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/vganda?alt=media&token=c07c4339-6b77-49ad-a3ef-00ba79e4708f'),
(46, 'hchafer', 'hchafer@gmail.com', 'SamplePassword@2023', 'hunter-schafer.jpg', 'mhp', '2023-12-17 13:28:49', 'Active', 'Hunter ', '', 'Schafer', 24, 'Woman', 'she/her', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/hchafer?alt=media&token=02f999a2-ede5-4655-866b-70d3a5e41a9c'),
(47, 'mbeer', 'mbeer@gmail.com', 'SamplePassword@2023', 'madison-beer.jpg', 'mhp', '2023-12-17 13:39:11', 'Active', 'Madison', 'Elle', 'Beer', 24, 'Woman', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/mbeer?alt=media&token=1bc63de7-ffb5-43e1-8d9f-4480880ae655'),
(49, 'dlovato', 'dlovato@gmail.com', 'SamplePassword@2023', 'demi-lovato.jpg', 'mhp', '2023-12-17 15:54:50', 'Active', 'Demi', 'Devonne', 'Lovato', 31, 'PNTS', 'she/her, they/them', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/dlovato?alt=media&token=069f595a-2bea-43ba-9411-670b5c642374'),
(50, 'cgray', 'cgray@gmail.com', 'SamplePassword@2023', 'conan-gray.jpg', 'mhp', '2023-12-18 15:22:44', 'Active', 'Conan', 'Lee', 'Gray', 25, 'PNTS', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/cgray?alt=media&token=ef539c74-18ea-45d3-a572-cdf3d6b53361'),
(51, 'kconnor', 'kconnor@gmail.com', 'SamplePassword@2023', 'kit-connor.jpg', 'mhp', '2023-12-18 15:29:42', 'Active', 'Kit', '', 'Connor', 20, 'Man', 'he/him', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/kconnor?alt=media&token=32a6663f-a876-43bf-87a8-47d55af3009f'),
(52, 'mother2', 'mother@gmail.com', 'SamplePassword@2023', 'taylor-swift.png', 'mhp', '2023-12-18 16:21:36', 'Active', 'Taylor', 'Alison', 'Swift', 34, 'Woman', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/mother2?alt=media&token=219dfdd5-202f-45f6-86a6-63c3d30d21a9'),
(53, 'pstar', 'pstar@gmail.com', 'SamplePassword@2023', 'n/a', 'mhp', '2023-12-19 07:25:28', 'Active', 'Patrick', '', 'Star', 5, 'PNTS', '', 'n/a'),
(54, 'pikachu', 'pikachu@gmail.com', 'SamplePassword@2023', 'pikachu.webp', 'nmhp', '2023-12-19 07:28:49', 'Active', 'Pikachu', '', 'Pokemon', 5, 'PNTS', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/pikachu?alt=media&token=55a32781-7485-4d99-97ed-74994b2da1ee'),
(55, 'kclarkson', 'kclarkson@gmail.com', 'SamplePassword@2023', 'n/a', 'mhp', '2023-12-19 10:33:20', 'Active', 'Kelly', '', 'Clarkson', 31, 'PNTS', '', 'n/a'),
(56, 'scheeks', 'scheeks@gmail.com', 'SamplePassword@2023', 'sandy-cheeks.webp', 'nmhp', '2023-12-19 10:40:30', 'Active', 'Sandy', '', 'Cheeks', 20, 'PNTS', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/scheeks?alt=media&token=5133ae82-1f4b-4564-8652-e26a2b0179b3'),
(57, 'mkrabs', 'mkrabs@gmail.com', 'SamplePassword@2023', 'mr-krabss.webp', 'mhp', '2023-12-19 10:50:57', 'Active', 'Mr', '', 'Krabs', 50, 'Man', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/mkrabs?alt=media&token=203db68b-bfd8-42f4-993b-cfaea8c3b7d9'),
(58, 'mrobbie', 'mrobbie@gmail.com', 'SamplePassword@2023', 'margot-robbie.webp', 'mhp', '2023-12-19 11:55:55', 'Active', 'Margot', '', 'Robbie', 33, 'Woman', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/mrobbie?alt=media&token=7b562ed4-d4c0-45af-ab91-3c62c075bc6a'),
(59, 'mteresa', 'mteresa@gmail.com', 'SamplePassword@2023', 'n/a', 'nmhp', '2023-12-21 03:30:05', 'Active', 'Maria', 'Leonora', 'Teresa', 6, 'PNTS', '', 'n/a'),
(60, 'test2', 'test2@gmail.com', 'SamplePassword@2023', 'n/a', 'nmhp', '2023-12-21 03:38:59', 'Active', 'test', '', 'testtest', 9, 'PNTS', '', 'n/a'),
(61, 'mcyrus', 'mcyrus@gmail.com', 'SamplePassword@2023', 'miley-cyrs.jpg', 'mhp', '2023-12-21 03:44:46', 'Active', 'Miley', 'Ray', 'Cyrus', 31, 'PNTS', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/mcyrus?alt=media&token=686d4e40-1862-489b-8879-5623ae41bfd3'),
(62, 'rfenty', 'rfenty@gmail.com', 'SamplePassword@2023', 'rihanna.jpg', 'mhp', '2023-12-21 05:43:01', 'Active', 'Robyn', 'Rihanna', 'Fenty', 35, 'Woman', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/rfenty?alt=media&token=8182363e-baf2-4be8-97dd-d5b4d41de0e6'),
(63, 'beyonce', 'beyonce@gmail.com', 'SamplePassword@2023', 'beyonce.jpg', 'mhp', '2023-12-21 08:25:14', 'Active', 'Beyoncé', 'Giselle', 'Knowles', 42, 'PNTS', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/beyonce?alt=media&token=177c18fb-d13c-43f2-bd10-6c9c861508ee'),
(64, 'admin', 'admin@gmail.com', 'SamplePassword@2023', 'n/a', 'admin', '2023-12-21 08:25:14', 'Active', 'admin', 'admin', 'admin', 21, 'PNTS', NULL, 'n/a'),
(65, 'ewoods', 'ewoods@gmail.com', 'SamplePassword@2023', 'elle-woods.webp', 'mhp', '2023-12-21 12:49:37', 'Unverified', 'Elle', '', 'Woods', 23, 'Woman', 'she/her', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/ewoods?alt=media&token=c3e61481-d397-4ce0-85b0-b6c6c58e141d'),
(66, 'rgeorge', 'rgeorge@gmail.com', 'SamplePassword@2023', 'regina-george.webp', 'mhp', '2023-12-21 13:08:23', 'Unverified', 'Regina', '', 'George', 23, 'PNTS', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/rgeorge?alt=media&token=3d282fe4-b476-42bd-adbc-01e579c2b7ef'),
(67, 'rembeauty', 'rembeauty@gmail.com', 'SamplePassword@2023', 'ariana-grande.webp', 'mhp', '2023-12-22 12:40:14', 'Unverified', 'Ariana', '', 'Grande-Butera', 30, 'Woman', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/rembeauty?alt=media&token=884e41ab-a8f7-4814-adb5-9d9404577f10'),
(68, 'troye', 'troye@gmail.com', 'SamplePassword@2023', 'troye.jpg', 'mhp', '2023-12-22 12:48:03', 'Unverified', 'Troye', '', 'Sivan', 28, 'PNTS', '', 'https://firebasestorage.googleapis.com/v0/b/padayon-df7dd.appspot.com/o/troye?alt=media&token=249efb32-5a02-4c83-ba3f-338934a64187');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
