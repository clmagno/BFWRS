-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2022 at 05:40 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bfwrs`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `fullName` varchar(150) NOT NULL,
  `phoneNo` varchar(15) NOT NULL,
  `houseNo` varchar(15) NOT NULL,
  `subdivision` varchar(25) NOT NULL,
  `street` varchar(25) NOT NULL,
  `barangay` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(150) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `fullName`, `phoneNo`, `houseNo`, `subdivision`, `street`, `barangay`, `city`, `username`, `password`, `isAdmin`) VALUES
(1, 'Christopher Lloyd Magno', '09186851819', 'B1A L6', 'Barcelona Townhomes', 'Jones Street', 'Wawa', 'Taguig', 'chrism', 'e99a18c428cb38d5f260853678922e03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(5) NOT NULL,
  `quantity` int(10) NOT NULL,
  `total_price` varchar(50) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(2) NOT NULL,
  `description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `description`) VALUES
(1, 'Services'),
(2, 'Containers'),
(3, 'Container Parts');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL,
  `code` varchar(5) NOT NULL,
  `category` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `code`, `category`) VALUES
(1, 'SLIM CONTAINER MINERAL REFILL', 'refill_slim.png', 25.00, 'p001', 1),
(2, 'ROUND CONTAINER MINERAL REFILL', 'refill_round.png', 25.00, 'p002', 1),
(3, 'SLIM CONTAINER ALKALINE REFILL', 'refill_slim_alkaline.png', 35.00, 'p003', 1),
(4, 'ROUND CONTAINER ALKALINE REFILL', 'refill_round_alkaline.png', 35.00, 'p004', 1),
(5, 'SLIM CONTAINER', 'Slim_empty.png', 200.00, 'p005', 2),
(6, 'ROUND CONTAINER', 'round_empty.png', 200.00, 'p006', 2),
(7, 'ROUND CONTAINER CAP', 'round_cap.png', 20.00, 'p007', 3),
(8, 'SLIM CONTAINER BIG CAP', 'slim_big_cap.png', 35.00, 'p008', 3),
(9, 'SLIM CONTAINER SMALL CAP', 'slim_small_cap.png', 25.00, 'p009', 3),
(10, 'SLIM CONTAINER FAUCET', 'slim_faucet.png', 50.00, 'p010', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
