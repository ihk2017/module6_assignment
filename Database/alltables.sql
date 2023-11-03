-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2023 at 07:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `module6`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Clothes', '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(2, 'Electronics', '2023-10-30 19:07:16', '2023-10-30 19:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `location` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Alice Johnson', 'alice.johnson@email.com', 'Dhaka', '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(2, 'Bob Smith', 'bob.smith@email.com', 'Faridpur', '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(3, 'Charlie Brown', 'charlie.brown@email.com', 'Gazipur', '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(4, 'Diana Ross', 'diana.ross@email.com', 'Gazipur', '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(5, 'Edward Norton', 'edward.norton@email.com', 'Gazipur', '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(6, 'Fiona Apple', 'fiona.apple@email.com', 'Faridpur5', '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(7, 'George Lucas', 'george.lucas@email.com', 'Faridpur', '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(8, 'Helen Hunt', 'helen.hunt@email.com', 'Dhaka', '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(9, 'Ian McKellen', 'ian.mckellen@email.com', 'Faridpur', '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(10, 'Julia Roberts', 'julia.roberts@email.com', 'Faridpur', '2023-10-30 19:07:16', '2023-10-30 19:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `order_date` date NOT NULL,
  `total_amount` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `order_date`, `total_amount`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-10-11', 222, '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(2, 2, '2023-10-13', 3333, '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(3, 1, '2023-10-23', 444, '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(4, 3, '2023-10-31', 5555, '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(5, 5, '2023-10-31', 666, '2023-10-30 19:07:16', '2023-10-30 19:07:16'),
(6, 6, '2023-11-01', 6000, '2023-11-02 17:51:35', '2023-11-02 17:51:35'),
(7, 7, '2023-11-02', 2323, '2023-11-02 17:51:35', '2023-11-02 17:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 11, 2000, '2023-11-02 16:59:54', '2023-11-02 16:59:54'),
(2, 2, 2, 22, 3000, '2023-11-02 16:59:54', '2023-11-02 16:59:54'),
(3, 3, 4, 10, 77777, '2023-11-02 17:00:44', '2023-11-02 17:00:44'),
(4, 4, 5, 4, 3333, '2023-11-02 17:00:44', '2023-11-02 17:00:44'),
(5, 5, 4, 6, 88888, '2023-11-02 17:46:46', '2023-11-02 17:46:46'),
(6, 1, 1, 90, 2000, '2023-11-02 17:48:38', '2023-11-02 17:48:38'),
(7, 2, 2, 6, 3000, '2023-11-02 17:48:38', '2023-11-02 17:48:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 'T-Shirt', 'Men Blue-color T-Shirt', 2000, '2023-10-30 19:07:16', '2023-11-02 17:18:14'),
(2, 1, 'Pant', 'Jens 34\" Full Pant', 3000, '2023-10-30 19:07:16', '2023-11-02 17:18:20'),
(3, 1, 'Casual Shirt', 'Blac colort Full-Hand Shirt', 2344, '2023-10-30 19:07:16', '2023-11-02 17:18:24'),
(4, 2, 'Laptop', 'Lenevo 22\" Full HDD Laptop', 77777, '2023-10-30 19:07:16', '2023-11-02 17:18:28'),
(5, 2, 'Mobile', 'Vivo Anroid Mobile Phone', 3333, '2023-10-30 19:07:16', '2023-11-02 17:18:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
