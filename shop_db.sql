-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 20, 2023 at 04:27 AM
-- Server version: 10.6.14-MariaDB-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `stock` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `stock`, `image`) VALUES
(22, 'Slim Gallon (BLUE)', 'Gallon Only', 125, 100, 'Blue Slim.jpg'),
(23, 'Slim Gallon (LIGHT BLUE)', 'Gallon Only', 125, 100, 'Light Blue Slim.jpg'),
(24, 'Slim Gallon (GREEN)', 'Gallon Only', 125, 100, 'Green Slim.jpg'),
(25, 'Slim Gallon (RED)', 'Gallon Only', 125, 100, 'Red Slim.jpg'),
(26, 'Slim Gallon (ORANGE)', 'Gallon Only', 125, 100, 'Orange Slim.jpg'),
(27, 'Slim Gallon (YELLOW)', 'Gallon Only', 125, 100, 'Yellow Slim.jpg'),
(28, 'Round Gallon (BLUE)', 'Gallon Only', 130, 100, 'Round Gallon.jpeg'),
(29, 'Round Gallon (ORANGE)', 'Gallon Only', 130, 100, 'Round Gallon.jpeg'),
(30, 'PET Bottle ( 350ml )', '250pcs per pack', 625, 50, 'received_721670115591729-01.jpeg'),
(31, 'PET Bottle ( 500ml )', '200pcs per pack', 540, 50, 'received_721670115591729-01.jpeg'),
(32, 'PET Bottle ( 1000ml )', '!00pcs per pack', 410, 50, 'received_721670115591729-01.jpeg'),
(33, 'Hot & Cold Dispenser', 'Brand: Mitsu Tech', 4000, 10, 'received_928704171381748-01.jpeg'),
(34, 'Heat Gun', 'Brand: GBos', 850, 10, 'Heat Gun.jpeg'),
(35, 'Ball Valve', 'Ball Valve', 250, 5, 'Ball Valve.jpg'),
(36, 'Round Gallon Holder', 'Holder for carrying Round Gallon', 100, 10, 'Round Gallon Holder.jpg'),
(37, 'TDS Meter', 'Used to measure the conductivity of the solution and estimates the TDS from that reading.', 800, 5, 'TDS.jpeg'),
(38, 'Pebbles #5', 'Sold in sack', 400, 5, '368506658_1018851259340378_848935432962639700_n.jpg'),
(39, 'Pebbles #10', 'Sold in sack', 400, 5, '373459279_1045312773175581_7133296982212939756_n.jpg'),
(40, 'Filter Housig ( 20SL )', 'Filter Housing', 800, 10, '370220917_887256009452109_1137618315357227840_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `code` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `code`, `image`, `user_type`) VALUES
(22, 'angel', 'ajbcrisologo5@gmail.com', '8f8d0f0f5be4b12e60912affdab9690f', '1b6e3c7df5886aaa6b345f8de2732b05', '', 'admin'),
(24, 'user', 'user@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', '435013', '', 'user'),
(25, 'Caira', 'cairalianna5@gmail.com', '5d98d4358fc41cb3a262652e6d3b5171', '712788', '', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
