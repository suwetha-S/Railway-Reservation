-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2021 at 02:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway_reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicant_details`
--

CREATE TABLE `applicant_details` (
  `PNR_NO` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `PHONE NO` varchar(10) NOT NULL,
  `EMAILID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applicant_details`
--

INSERT INTO `applicant_details` (`PNR_NO`, `NAME`, `ADDRESS`, `PHONE NO`, `EMAILID`) VALUES
(1, 'SUWETHA', '73A, ABC NAGAR, COIMBATORE', '9876543210', 'suwe@gmail.com'),
(2, 'NAVEENA', '23, ABC COLONY, NAMAKKAL', '9988776655', 'navi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `book_details`
--

CREATE TABLE `book_details` (
  `PNR_NO` int(11) NOT NULL,
  `START` varchar(50) NOT NULL,
  `END` varchar(50) NOT NULL,
  `DATE` date NOT NULL,
  `CLASS` varchar(50) NOT NULL,
  `TRAIN_NO` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_details`
--

INSERT INTO `book_details` (`PNR_NO`, `START`, `END`, `DATE`, `CLASS`, `TRAIN_NO`) VALUES
(1, 'Mumbai', 'Chennai', '2020-05-21', 'First Ac - 1A', '112233'),
(2, 'Mumbai', 'Chennai', '2020-05-20', 'First Ac - 1A', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL,
  `EMAILID` varchar(50) NOT NULL,
  `COMPLAINT` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`ID`, `NAME`, `ADDRESS`, `EMAILID`, `COMPLAINT`) VALUES
(1, 'ANU', '23,NEHRU NAGAR ,CBE', '12345@gmail.com', 'The train was late'),
(2, 'KUMAR', '73A, 4th street, Erode.', 'abc@gmail.com', 'The service was not good.'),
(4, 'KRITHI', '54, GANDHI NAGAR,CHENNAI', 'xyx@gmail.com', 'The train was not clean and neat');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `NAME` varchar(50) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `AGE` int(11) NOT NULL,
  `CONCESSION` varchar(50) NOT NULL,
  `PNR_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`NAME`, `GENDER`, `AGE`, `CONCESSION`, `PNR_NO`) VALUES
('ABI', 'FEMALE', 18, 'NIL', 1),
('HEMA', 'FEMALE', 25, 'NIL', 1),
('KAVIYA', 'FEMALE', 20, 'NIL', 2),
('NIVI', 'FEMALE', 20, 'NIL', 2),
('SABI', 'FEMALE', 20, 'NIL', 2);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `TRAIN_NO` varchar(50) NOT NULL,
  `SEAT_COUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`TRAIN_NO`, `SEAT_COUNT`) VALUES
('12345', 47),
('100102', 50),
('112233', 48);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `TRAIN_NO` varchar(10) NOT NULL,
  `TRAIN_NAME` varchar(50) NOT NULL,
  `START` varchar(50) NOT NULL,
  `END` varchar(50) NOT NULL,
  `PRICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`TRAIN_NO`, `TRAIN_NAME`, `START`, `END`, `PRICE`) VALUES
('12345', 'CHENNAI EXPRESS', 'Mumbai', 'Chennai', 4500),
('100102', 'DELHI EXPRESS', 'Chennai', 'Delhi', 6000),
('112233', 'NETAJI EXPRESS', 'Mumbai', 'Chennai', 5000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_details`
--
ALTER TABLE `book_details`
  ADD PRIMARY KEY (`PNR_NO`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_details`
--
ALTER TABLE `book_details`
  MODIFY `PNR_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
