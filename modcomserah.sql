-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 24, 2026 at 11:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modcomserah`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `salary` int(50) DEFAULT NULL,
  `dept_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'Authur Mwangi\r\n', '1998-06-15', 40000, 1),
(2, 'Mary Martha', '2022-06-20', 50000, 2),
(3, 'Peter Wilson', '1996-09-15', 80000, 1),
(4, 'Mary wanjiku', '2020-06-20', 50000, 2),
(5, 'John kamau', '2018-03-12', 45000, 1),
(6, 'Grace Achieng', '2019-07-25', 55000, 3),
(7, 'David Kiptoo', '2021-01-10', 38000, 2),
(8, 'Jane Njeri', '2017-11-05', 62000, 4),
(9, 'Samuel Otieno', '2022-04-18', 35000, 3),
(10, 'Faith Chebet', '2016-09-30', 70000, 4),
(11, 'Brian Mutua', '2023-02-14', 32000, 2),
(12, 'Mercy Wairimu', '2015-08-22', 80000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text DEFAULT NULL,
  `product_cost` int(50) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  `product_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendor_id`, `vendor_name`, `phone_number`, `email`, `city`) VALUES
(1, 'ABC Suppliers', '0768594634', 'abc@gmail.com', 'Nairobi'),
(2, 'Best Traders', '0734567896', 'best@gmail.com', 'Mombasa'),
(3, 'Malik Beauty', '0765842254', 'malik@gmail.com', 'Kisumu'),
(4, 'Osana Yarns', '0768543212', 'osana@gmail.com', 'Kitale'),
(5, 'Six & Sevens', '0712570498', 'sixseven@gmail.com', 'Nakuru'),
(6, 'Ongata Sacco', '0123456701', 'ongata@gmail.com', 'Kajiado'),
(7, 'Darling Kenya', '0728719108', 'darling@gmail.com', 'Naivasha'),
(8, 'Shoes extreme', '0700111444', 'extremeshoes@gmail.com', 'Moyale'),
(9, 'Decor vixen', '0111776688', 'decor@gmail.com', 'Narok'),
(10, 'Masala traders', '0745372819', 'masala@gmail.com', 'Kwale');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
