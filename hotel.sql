-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 05:24 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `room_ID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `passport_Number` varchar(50) NOT NULL,
  `phoneNo` varchar(50) NOT NULL,
  `Card_Number` varchar(50) NOT NULL,
  `card_Pass` varchar(50) NOT NULL,
  `number_Of_Days` int(10) NOT NULL,
  `fees` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`room_ID`, `Name`, `Email`, `Address`, `city`, `Nationality`, `passport_Number`, `phoneNo`, `Card_Number`, `card_Pass`, `number_Of_Days`, `fees`) VALUES
(1, 'Tanjim Ul Ahmed', 'tanjim@gmail.com', 'Mirpur,Dhaka', 'Dhaka', 'Bangladeshi', '1234567894561234', '01642870987', '1234561234561231', '111', 2, 400);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `roomID` int(10) NOT NULL,
  `room_Type` varchar(15) NOT NULL,
  `room_capacity` varchar(15) NOT NULL,
  `Check_In_Date` date NOT NULL,
  `Check_Out_Date` date NOT NULL,
  `isEmpty` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomID`, `room_Type`, `room_capacity`, `Check_In_Date`, `Check_Out_Date`, `isEmpty`) VALUES
(47, 'Normal', 'Double', '2019-04-14', '2019-04-14', 1),
(48, 'Normal', 'Double', '2019-04-14', '2019-04-16', 1),
(50, 'Normal', 'Double', '2019-04-14', '2019-04-15', 1),
(52, 'Normal', 'Triple', '2019-04-30', '2019-04-30', 1),
(53, 'Normal', 'Triple', '2019-04-17', '2019-04-30', 1),
(55, 'Normal', 'Triple', '2019-04-14', '2019-04-18', 1),
(62, 'Vip', 'Single', '2019-04-14', '2019-04-14', 1),
(63, 'Vip', 'Single', '2019-04-14', '2019-04-14', 1),
(64, 'Vip', 'Single', '2019-04-14', '2019-04-14', 1),
(72, 'Vip', 'Double', '2019-05-04', '2019-05-30', 0),
(73, 'Vip', 'Double', '2019-04-14', '2019-04-14', 1),
(74, 'Vip', 'Double', '2019-04-14', '2019-04-14', 1),
(75, 'Vip', 'Double', '2019-04-14', '2019-04-14', 1),
(76, 'Vip', 'Double', '2019-04-14', '2019-04-22', 1),
(77, 'Vip', 'Double', '2019-04-01', '2019-04-21', 1),
(78, 'Vip', 'Double', '2019-04-14', '2019-04-14', 1),
(79, 'Vip', 'Double', '2019-04-14', '2019-04-14', 1),
(80, 'Vip', 'Double', '2019-04-14', '2019-04-14', 1),
(81, 'Vip', 'Triple', '2019-05-16', '2022-12-22', 1),
(82, 'Vip', 'Triple', '2019-04-14', '2019-04-14', 1),
(83, 'Vip', 'Triple', '2019-04-14', '2019-04-14', 1),
(84, 'Vip', 'Triple', '2019-04-14', '2019-04-14', 1),
(85, 'Vip', 'Triple', '2019-04-19', '2019-04-21', 1),
(86, 'Vip', 'Triple', '2019-04-18', '2019-04-19', 1),
(87, 'Vip', 'Triple', '2019-04-16', '2019-04-19', 1),
(88, 'Vip', 'Triple', '2019-04-14', '2019-04-19', 1),
(89, 'Vip', 'Triple', '2019-04-14', '2019-04-19', 1),
(90, 'Vip', 'Triple', '2019-04-14', '2019-04-15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_name` varchar(50) NOT NULL,
  `user_pass` int(20) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_name`, `user_pass`, `is_admin`) VALUES
('Takrim', 524295, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`passport_Number`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`roomID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `roomID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
