-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2021 at 10:57 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `senzori`
--

-- --------------------------------------------------------

--
-- Table structure for table `stroj1`
--

CREATE TABLE `stroj1` (
  `idmjerenja` datetime NOT NULL,
  `vibr` float NOT NULL,
  `avibr` float NOT NULL,
  `temper` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stroj1`
--

INSERT INTO `stroj1` (`idmjerenja`, `vibr`, `avibr`, `temper`) VALUES
('2021-01-15 16:15:07', 0.01, 0.1, 19.15),
('2021-01-15 16:15:12', 0.01, 0.1, 19.18),
('2021-01-15 16:15:17', 0.01, 0.1, 19.13),
('2021-01-15 16:15:22', 0.01, 0.1, 19.15),
('2021-01-15 16:15:27', 0.01, 0.1, 19.16),
('2021-01-15 16:15:32', 0.01, 0.1, 19.13),
('2021-01-15 16:15:36', 0.01, 0.1, 19.13),
('2021-01-15 16:15:41', 0.01, 0.1, 19.13),
('2021-01-15 16:15:46', 0.01, 0.1, 19.14),
('2021-01-15 16:15:51', 0.01, 0.1, 19.13),
('2021-01-15 16:15:56', 0.01, 0.1, 19.14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stroj1`
--
ALTER TABLE `stroj1`
  ADD PRIMARY KEY (`idmjerenja`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
