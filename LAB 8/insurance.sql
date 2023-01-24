-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2023 at 06:41 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `insurance`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `cus_email` varchar(50) NOT NULL,
  `cus_password` varchar(20) NOT NULL,
  `cus_name` varchar(50) NOT NULL,
  `cus_ic` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_email`, `cus_password`, `cus_name`, `cus_ic`) VALUES
(37, 's60494@ocean.umt.edu.my', '1234', 'Asyraf Razali', '111111223333'),
(47, 'archwork28@gmail.com', '1234', 'Asyraf Razali', '111111223333'),
(51, 'test@mail.com', '1234', 'Asyraf', '960628112356'),
(79, 'admin@mail.com', '1234', 'Asyraf Razali', '111111223333');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `veh_id` int(11) NOT NULL,
  `veh_plat` varchar(9) NOT NULL,
  `veh_type` varchar(20) NOT NULL,
  `veh_brand` varchar(20) NOT NULL,
  `veh_marketprice` double(9,2) NOT NULL,
  `cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`veh_id`, `veh_plat`, `veh_type`, `veh_brand`, `veh_marketprice`, `cus_id`) VALUES
(42, 'tbt1043', 'Motorcycle', 'Yamaha', 9200.00, 79),
(43, 'TBS8643', 'Motorcycle', 'Yamaha', 40000.00, 79);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`),
  ADD UNIQUE KEY `cus_email` (`cus_email`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`veh_id`),
  ADD UNIQUE KEY `veh_plat` (`veh_plat`),
  ADD KEY `FK_cusid` (`cus_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `FK_cusid` FOREIGN KEY (`cus_id`) REFERENCES `customer` (`cus_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
