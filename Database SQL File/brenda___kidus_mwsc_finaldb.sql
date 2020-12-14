-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 07:01 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `brenda & kidus_mwsc_finaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` varchar(50) NOT NULL,
  `premise_id` varchar(50) NOT NULL,
  `tariff_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `premise_id`, `tariff_id`) VALUES
('BID001', 'PID01', 'TA02'),
('BID002', 'PID02', 'TA02'),
('BID003', 'PID03', 'TA01'),
('BID004', 'PID04', 'TA02'),
('BID005', 'PID05', 'TA01'),
('BID006', 'PID06', 'TA02'),
('BID007', 'PID07', 'TA01'),
('BID008', 'PID08', 'TA02'),
('BID009', 'PID09', 'TA01'),
('BID010', 'PID10', 'TA02'),
('BID011', 'PID11', 'TA01');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` varchar(10) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `Phone_number` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `Phone_number`) VALUES
('AD01', 'Betty Matu', 788726782),
('AD02', 'John Mutua', 787026782),
('AD03', 'Ivan Inyan', 788406782),
('AD04', 'Jack Johnson', 788626702),
('AD05', 'Charlie Mazaa', 788006782),
('AD06', 'Eddie Kia', 787001245),
('AD07', 'Alia Zala', 78720782),
('AD08', 'Grace Koo', 787267820),
('AD09', 'Sofi Mohammed', 788723622),
('AD10', 'Emily Karmushu', 787267882),
('AD11', 'Don Abebe', 788705582);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `bill_id` varchar(50) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `amount_paid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`bill_id`, `transaction_id`, `amount_paid`) VALUES
('BID001', 'INV01', 4000),
('BID002', 'INV02', 500),
('BID003', 'INV03', 1500),
('BID004', 'INV04', 3000),
('BID005', 'INV05', 1000),
('BID006', 'INV06', 3000),
('BID007', 'INV07', 500),
('BID008', 'INV08', 4000),
('BID009', 'INV09', 800),
('BID010', 'INV10', 900),
('BID011', 'INV11', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `plant_id` varchar(50) NOT NULL,
  `plant_name` varchar(100) NOT NULL,
  `plant_capacity` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plants`
--

INSERT INTO `plants` (`plant_id`, `plant_name`, `plant_capacity`) VALUES
('PLO1', 'Maji', 200),
('PLO2', 'Safi', 200),
('PLO3', 'Spark', 200);

-- --------------------------------------------------------

--
-- Table structure for table `premise`
--

CREATE TABLE `premise` (
  `premise_id` varchar(50) NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `meter_number` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premise`
--

INSERT INTO `premise` (`premise_id`, `customer_id`, `meter_number`) VALUES
('PIDO1', 'AD01', 1),
('PIDO2', 'AD02', 2),
('PIDO3', 'AD03', 3),
('PIDO4', 'AD04', 4),
('PIDO5', 'AD05', 5),
('PIDO6', 'AD06', 6),
('PIDO7', 'AD07', 7),
('PIDO8', 'AD08', 8),
('PIDO9', 'AD09', 9),
('PID10', 'AD10', 10),
('PID11', 'AD11', 11);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `route_id` varchar(50) NOT NULL,
  `route_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`route_id`, `route_name`) VALUES
('ROI', 'Route1'),
('RO2', 'Route2'),
('R03', 'Route3');

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `sector_id` varchar(100) NOT NULL,
  `sector_name` varchar(100) NOT NULL,
  `sector_capacity` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`sector_id`, `sector_name`, `sector_capacity`) VALUES
('Sector1', 'Doldol', 85),
('Sector2', 'Lomur', 100),
('Sector3', 'Gondar', 115),
('Sector4', 'Adama', 90),
('Sector5', 'Adiss', 95),
('Sector1', 'Kwale', 90),
('Sector2', 'Naibor', 100),
('Sector3', 'Suguta', 95),
('Sector4', 'Mara', 105),
('Sector5', 'Kitoo', 100),
('Sector1', 'Bay', 110);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` varchar(50) NOT NULL,
  `staff_name` varchar(100) NOT NULL,
  `sector_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `sector_id`) VALUES
('B01', 'Evans Men', 'Sector1'),
('B02', 'Emma Koroma', 'Sector5'),
('B03', 'Alicia Beadle', 'Sector2'),
('B04', 'John Soma', 'Sector4'),
('B05', 'Joan Nteti', 'Sector3'),
('B06', 'Ben Bell', 'Sector3'),
('B07', 'Jonas Blue', 'Sector4'),
('B08', 'Banny Benet', 'Sector2'),
('B09', 'Umutoni Grace', 'Sector5'),
('B10', 'Kevin Meme', 'Sector1'),
('S01', 'Mitchelle Maina', 'Sector1'),
('S02', 'Smith Ken', 'Sector2'),
('S03', 'Amelia Mengi', 'Sector3'),
('S04', 'Jayden Junior', 'Sector4'),
('S05', 'Georhe King', 'Sector5');

-- --------------------------------------------------------

--
-- Table structure for table `tariff`
--

CREATE TABLE `tariff` (
  `tariff_id` varchar(50) NOT NULL,
  `tariff_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tariff`
--

INSERT INTO `tariff` (`tariff_id`, `tariff_name`) VALUES
('TA01', 'commericial'),
('TA02', 'domestic');

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` varchar(50) NOT NULL,
  `zone_name` varchar(100) NOT NULL,
  `sector_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_name`, `sector_id`) VALUES
('Z01', 'Suriname', 'sector1'),
('Z02', 'Blue', 'sector5'),
('Z03', 'Tuvala', 'sector2'),
('Z04', 'Montego', 'sector4'),
('Z05', 'Dol', 'sector3'),
('Z06', 'Para', 'sector3'),
('Z07', 'St. Mary', 'sector4'),
('Z08', 'Mara', 'sector2'),
('Z09', 'Rugando', 'sector5'),
('Z10', 'Muff', 'sector1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
