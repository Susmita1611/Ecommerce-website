-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2024 at 04:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(19, 'Pedigree'),
(23, 'Rio'),
(25, 'Ocean Fish');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`product_id`, `ip_address`, `quantity`) VALUES
(6, '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(11, 'DOG'),
(12, 'CAT'),
(13, 'BIRD'),
(14, 'RABIT');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_pending`
--

INSERT INTO `orders_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(1, 11, 257306001, 21, 1, 'pending'),
(2, 11, 2078882703, 23, 1, 'pending'),
(3, 11, 1317984071, 19, 1, 'pending'),
(4, 11, 1864463673, 23, 1, 'pending'),
(5, 11, 504604558, 1, 1, 'pending'),
(6, 11, 1470461118, 4, 2, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `brand_id`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `date`, `status`) VALUES
(2, 'dog', 'dog sre hlihiokljou', 'dog,pedigree', 11, 19, 'lab1.jpg', 'lab2.jpeg', 'jerman1.jpeg', '1000', '2024-09-21 16:43:37', 'true'),
(3, 'cat', 'cats are very softy', 'cat,', 12, 25, 'CAT2.JPG', 'CAT1.jpg', 'CAT3.jpg', '500', '2024-09-21 16:45:26', 'true'),
(4, 'parrot', 'parot are rumu', 'parot,bird,rio', 13, 23, 'par1.jpeg', 'par2.jpeg', 'par.jpg', '300', '2024-09-21 16:46:20', 'true'),
(6, 'Drools 3+ 1.2 kg free Real Chicken and Egg 4.2 Kg Dry Adult Dog Food', 'Made with real chicken, this Drools Dry Dog Food is a palatable meal that offers your pet a host of benefits. They include strong bones, a healthy digestive system, a shiny coat of fur, and healthy skin. The crunchy texture of these kibbles promotes stron', 'dog', 11, 19, 'df1.jpg', 'df11.jpg', 'df12.jpg', '₹764', '2024-11-05 18:12:17', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `order_date`, `order_status`) VALUES
(13, 8, 5000, 1788192180, 1, '2024-09-12 18:36:36', 'Complete'),
(14, 8, 800, 951097217, 2, '2024-09-12 18:46:20', 'Complete'),
(15, 8, 10, 592632311, 1, '2024-09-12 18:45:24', 'Complete'),
(16, 8, 5000, 159442047, 1, '2024-09-12 18:48:22', 'Complete'),
(17, 8, 20, 769225973, 1, '2024-09-12 20:52:18', 'pending'),
(18, 9, 500, 1711498079, 1, '2024-09-13 16:29:53', 'pending'),
(19, 11, 500, 1998167451, 1, '2024-09-17 14:09:03', 'Complete'),
(20, 11, 5300, 1446224696, 2, '2024-09-17 14:09:09', 'Complete'),
(21, 11, 300, 257306001, 1, '2024-09-14 17:14:45', 'pending'),
(22, 11, 6000, 2078882703, 2, '2024-09-15 17:54:38', 'pending'),
(23, 11, 500, 1317984071, 1, '2024-09-15 18:17:26', 'pending'),
(24, 11, 500, 1864463673, 3, '2024-09-17 14:08:26', 'pending'),
(25, 11, 500, 504604558, 1, '2024-09-17 14:11:46', 'Complete'),
(26, 11, 1600, 1470461118, 2, '2024-09-21 17:45:34', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`payment_id`, `order_id`, `invoice_number`, `amount`, `payment_mode`, `date`) VALUES
(1, 13, 1788192180, 5000, 'Paypal', '2024-09-12 18:36:36'),
(2, 15, 592632311, 10, 'Cash on Delivery', '2024-09-12 18:45:24'),
(3, 14, 951097217, 800, 'Payoffline', '2024-09-12 18:46:20'),
(4, 16, 159442047, 5000, 'Payoffline', '2024-09-12 18:48:22'),
(5, 19, 1998167451, 500, 'Select Payment Mode', '2024-09-17 14:09:03'),
(6, 20, 1446224696, 5300, 'UPI', '2024-09-17 14:09:09'),
(7, 25, 504604558, 500, 'Cash on Delivery', '2024-09-17 14:11:46'),
(8, 26, 1470461118, 1600, 'Payoffline', '2024-09-21 17:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(11, 's', 'sus@gmail.com', '$2y$10$YSdDQDB0TEhM/z/5Zm4hKOvhkeSehVUXiK1VYU/MgzTpGlFqXmSeq', 'IMG_20221004_173208.jpg', '::1', ' ghy', ' 345678767777'),
(13, 'hi', 'hgggggg@gmail.com', '$2y$10$a9oah7wRAE/x4HeXzgOpru50M7a.9XbF6vftUfcHAmxPWedYDLDAS', 'IMG_20221026_114104_846.jpg', '::1', ' ghy', ' 56787654566');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
