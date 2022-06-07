-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 01:18 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penny_pocket`
--

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `usersID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `usersID`, `name`, `amount`, `date`) VALUES
(15, 1, '', '7565', '2021-04-09'),
(16, 1, 'Travels', '76', '2021-04-16'),
(18, 1, 'Travels', '6869', '2021-04-09'),
(19, 1, 'Travels', '809', '2021-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `usersID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `usersID`, `name`, `amount`, `date`) VALUES
(1, 2, 'Mahapola/burcery', '45', '2021-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `pwdreset`
--

CREATE TABLE `pwdreset` (
  `pwdresetID` int(11) NOT NULL,
  `pwdResetEmail` text NOT NULL,
  `pwdResetSelector` text NOT NULL,
  `pwdResetToken` longtext NOT NULL,
  `pwdResetExpires` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pwdreset`
--

INSERT INTO `pwdreset` (`pwdresetID`, `pwdResetEmail`, `pwdResetSelector`, `pwdResetToken`, `pwdResetExpires`) VALUES
(6, 'vaishnasubram@gmail.com', '9fbb7b5e47e82dc3', '$2y$10$n.t60vf1/FGRRyVm4Y8hmONjF12oAPfsb.TjYfs6WIbD1ewU9MvFO', '1617727528');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `rating` tinyint(1) NOT NULL,
  `submit_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `page_id`, `name`, `content`, `rating`, `submit_date`) VALUES
(1, 1, 'jyfyf', '86r6oooooooooofg', 4, '2021-04-05 17:49:43'),
(2, 1, 'vaish', 'Good', 5, '2021-04-05 20:29:03'),
(5, 1, 'w', 'a\r\n', 4, '2021-04-11 21:12:26'),
(6, 1, 'v', 'w', 4, '2021-04-11 21:22:41'),
(7, 1, 'e', 'a\r\n', 3, '2021-04-11 21:27:48'),
(8, 1, '@vaish', 'a', 5, '2021-04-11 21:49:48'),
(9, 1, '<VAISH', 'A', 4, '2021-04-11 21:51:02');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `usersID` int(11) NOT NULL,
  `task` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `usersID`, `task`) VALUES
(8, 8, 'pay bill'),
(10, 9, 'pay rent'),
(11, 3, 'trip'),
(12, 3, 'food');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersID` int(11) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `usersName` varchar(50) NOT NULL,
  `usersEmail` varchar(50) NOT NULL,
  `usersPassword` varchar(255) NOT NULL,
  `budget` varchar(50) DEFAULT NULL,
  `profile_image` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersID`, `fullName`, `usersName`, `usersEmail`, `usersPassword`, `budget`, `profile_image`) VALUES
(1, 'Vaishnavy', 'vai', 'v@gmail.com', '$2y$10$cqlh3.9YL89pPo0G7X076OxQhnGa7FWftlTOvqgN1De9QP4/hf83S', '10000', '63257f73aa7c4cf6904cc9df8aad5106.jpg'),
(3, 'vaishnavy', 'vaishna', 'vaishnasubram@gmail.com', '$2y$10$a6vILTLPOyfVX4zfN1BAouxFh3lwwTP.ocH4RWOo5hdu0oHS6tMJ2', '20000', ''),
(4, 'a', 'a', 'a@gmail.com', '$2y$10$T2yzLUFTk3CardHaGQ8bwunGAp1keZxOLkX9LvC71qfqDfWpCg6/K', NULL, ''),
(5, 'va', 'va', 'vv@gmail.com', '$2y$10$H45Vxg1EyOpzMsGj2sulZuU1thMtrpZNzZQuc3DTx5EtzCVRqzO0.', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pwdreset`
--
ALTER TABLE `pwdreset`
  ADD PRIMARY KEY (`pwdresetID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pwdreset`
--
ALTER TABLE `pwdreset`
  MODIFY `pwdresetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
