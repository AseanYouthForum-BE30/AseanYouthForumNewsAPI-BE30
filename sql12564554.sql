-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql12.freemysqlhosting.net
-- Generation Time: Nov 13, 2022 at 05:01 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql12564554`
--

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Economy', '2022-11-13 16:54:54', '0000-00-00 00:00:00'),
(2, 'Environment', '2022-11-13 16:54:54', '0000-00-00 00:00:00'),
(3, 'Health', '2022-11-13 16:54:54', '0000-00-00 00:00:00'),
(4, 'Politic', '2022-11-13 16:54:54', '0000-00-00 00:00:00'),
(5, 'Other', '2022-11-13 16:54:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Countries`
--

CREATE TABLE `Countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Countries`
--

INSERT INTO `Countries` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Brunei Darussalam', '2022-11-13 16:54:54', '0000-00-00 00:00:00'),
(2, 'Cambodia', '2022-11-13 16:54:54', '0000-00-00 00:00:00'),
(3, 'Indonesia', '2022-11-13 16:54:54', '0000-00-00 00:00:00'),
(4, 'Laos', '2022-11-13 16:54:54', '0000-00-00 00:00:00'),
(5, 'Malaysia', '2022-11-13 16:54:54', '0000-00-00 00:00:00'),
(6, 'Myanmar', '2022-11-13 16:54:54', '0000-00-00 00:00:00'),
(7, 'Philippines', '2022-11-13 16:54:54', '0000-00-00 00:00:00'),
(8, 'Singapore', '2022-11-13 16:54:54', '0000-00-00 00:00:00'),
(9, 'Thailand', '2022-11-13 16:54:54', '0000-00-00 00:00:00'),
(10, 'Vietnam', '2022-11-13 16:54:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `News`
--

CREATE TABLE `News` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `summary` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `isPublished` tinyint(1) DEFAULT NULL,
  `total_like` int(11) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20221113160344-create-user.js'),
('20221113160813-create-user-detail.js'),
('20221113160911-create-country.js'),
('20221113160936-create-category.js'),
('20221113161432-create-news.js');

-- --------------------------------------------------------

--
-- Table structure for table `UserDetails`
--

CREATE TABLE `UserDetails` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `countryId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserDetails`
--

INSERT INTO `UserDetails` (`id`, `fullName`, `image`, `countryId`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin ASEAN Youth Forum News', 'https://i.ibb.co/37c1FJH/logo-large.png', 3, 1, '2022-11-13 16:55:43', '0000-00-00 00:00:00'),
(2, 'Fabyan Ihsan Sayiq', 'https://i.ibb.co/vk6PhTf/gas-station.jpg', 3, 2, '2022-11-13 16:55:43', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `email`, `password`, `isAdmin`, `createdAt`, `updatedAt`) VALUES
(1, 'admin@ayfn.com', '$2b$10$FUfCvvq6coQRv1Xwh3Ddg.TxqhmG8SpzYXv6ryTj25p7B6H4xGRwi', 1, '2022-11-13 16:55:42', '0000-00-00 00:00:00'),
(2, 'anggota@ayfn.com', '$2b$10$Aq1krCNmgMnAtUnep8vyTe0jXk9fFxQtzbiMnlTgkmINssZUHQX1G', 0, '2022-11-13 16:55:42', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Countries`
--
ALTER TABLE `Countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `News`
--
ALTER TABLE `News`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `UserDetails`
--
ALTER TABLE `UserDetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Countries`
--
ALTER TABLE `Countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `News`
--
ALTER TABLE `News`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UserDetails`
--
ALTER TABLE `UserDetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
