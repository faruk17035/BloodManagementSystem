-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2020 at 09:52 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admincamp`
--

CREATE TABLE `admincamp` (
  `id` int(10) NOT NULL,
  `camp_area` varchar(50) NOT NULL,
  `vanue` varchar(20) NOT NULL,
  `date` varchar(15) NOT NULL,
  `time` varchar(5) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `regdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admincamp`
--

INSERT INTO `admincamp` (`id`, `camp_area`, `vanue`, `date`, `time`, `unit`, `regdate`) VALUES
(1, 'Narayanganj', 'Victoria Hospital', '12', '7pm', 'B', '');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `user_name` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`user_name`, `pass`) VALUES
('farukAdmin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE `apply` (
  `user_name` varchar(50) NOT NULL,
  `date_of_apply` varchar(15) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `regdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bloodbank`
--

CREATE TABLE `bloodbank` (
  `id` int(10) NOT NULL,
  `bank_name` varchar(50) NOT NULL,
  `hospital` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(100) NOT NULL,
  `regdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodbank`
--

INSERT INTO `bloodbank` (`id`, `bank_name`, `hospital`, `address`, `contact`, `email`, `website`, `regdate`) VALUES
(1, 'Dhaka', 'Dhaka Medical', 'Kurigram', '01676366448', 'ruhan@gmail.com', 'ruhan17005.com', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `regdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`user_name`, `email`, `message`, `regdate`) VALUES
('faruk', 'farukictmbstu@gmail.com', 'jifdhaiush kjnfaishpg jnaiufh kjlhidghais kjnidf kjnifdg kjndfhdfj knfghf kjsi', '2020-07-22'),
('faruk', 'farukictmbstu@gmail.com', 'hi', '2020-07-28'),
('Bashar mia', 'farukictmbstu@gmail.com', 'Ghjhdfkh ', '2020-07-28');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `user_name` varchar(20) NOT NULL,
  `date_of_birth` varchar(20) NOT NULL,
  `age` int(15) NOT NULL,
  `blood_group` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `regdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`user_name`, `date_of_birth`, `age`, `blood_group`, `address`, `mobile_no`, `email`, `gender`, `regdate`) VALUES
('faruk', 'null', 22, 'A+', 'Santosh,Tangail', '01558954586', 'farukictmbstu@gmail.com', 'Male', '2020-07-22'),
('hafiz', 'null', 22, 'A+', 'Narayanganj', '016665714', 'hafiz@gmail.com', 'Male', '2020-07-28');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `user_name` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `date_of_birth` varchar(10) NOT NULL,
  `age` int(10) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `regdate` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`user_name`, `pass`, `date_of_birth`, `age`, `blood_group`, `address`, `mobile_no`, `email`, `gender`, `regdate`) VALUES
('faruk', '123', '1998-07-14', 22, 'A+', 'Santosh,Tangail', '01558954586', 'farukictmbstu@gmail.com', 'Male', '2020-07-22'),
('hafiz', '17034', '1998-07-12', 22, 'A+', 'Narayanganj', '01558954586', 'farukictmbstu@gmail.com', 'Male', '2020-07-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admincamp`
--
ALTER TABLE `admincamp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloodbank`
--
ALTER TABLE `bloodbank`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admincamp`
--
ALTER TABLE `admincamp`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bloodbank`
--
ALTER TABLE `bloodbank`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
