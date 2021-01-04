-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 04, 2021 at 10:34 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Dress', ''),
(2, 'Pant', ''),
(3, 'Top', '');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(90) NOT NULL,
  `last_name` varchar(90) NOT NULL,
  `address` varchar(200) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `city` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `address`, `zip_code`, `city`) VALUES
(1, 'Chuck', 'Norris', '4447 Hamill Avenue ', 92121, 'San Diego'),
(2, 'Charlize', 'Theron', '3226 Brown Bear Drive', 91752, 'Mira Loma'),
(3, 'Ryan', 'Gosling', '2942  Canis Heights Drive', 90071, 'Los Angeles');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `total` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `date`, `total`, `customer_id`) VALUES
(1, '2020-12-11 14:12:34', 12000, 1),
(2, '2020-12-02 14:12:34', 60000, 1),
(3, '2020-12-03 14:12:34', 15000, 2),
(4, '2020-12-05 14:12:34', 52000, 2),
(5, '2020-12-11 14:12:34', 60000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_id`, `product_id`, `quantity`, `total`) VALUES
(1, 4, 2, 2000),
(1, 2, 1, 10000),
(2, 10, 2, 10000),
(2, 14, 1, 50000),
(3, 11, 1, 5000),
(3, 3, 1, 10000),
(4, 4, 2, 2000),
(4, 12, 1, 50000),
(5, 3, 1, 10000),
(5, 13, 1, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `image` varchar(45) NOT NULL,
  `quantity` int(45) NOT NULL,
  `availability` tinyint(1) NOT NULL,
  `categorie_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `weight`, `image`, `quantity`, `availability`, `categorie_id`) VALUES
(2, 'Pink Pastel Dress', '100% Bio Fairtrade linen\r\nNatural dying technique\r\nMade in France', 10000, 1000, 'assets/pink-dress.png', 10, 1, 1),
(3, 'Pastis Dress', '100% Bio Fairtrade linen\r\nNatural dying technique\r\nMade in France', 10000, 1000, 'assets/yellow-dress.png', 10, 1, 1),
(4, 'Marseille Dress', '100% Bio Fairtrade coton\r\nNatural dying technique\r\nMade in France', 1000, 500, 'assets/marseille.png', 1, 1, 1),
(5, 'Elegant Dress', '100% Bio Fairtrade coton\r\nNatural dying technique\r\nMade in France', 1000, 500, 'assets/white-beige.png', 1, 1, 1),
(6, 'Pink Volante Dress', '100% Bio Fairtrade silk\r\nNatural dying technique\r\nMade in France', 1000, 500, 'assets/blue-sky.png', 1, 0, 1),
(7, 'Green Volante Dress', '100% Bio Fairtrade silk\r\nNatural dying technique\r\nMade in France', 1000, 500, 'assets/green-blue.png', 1, 0, 1),
(8, 'Blue Love Jeans', '100% Bio Fairtrade Jeans\r\nNatural dying technique\r\nMade in France', 1300, 500, 'assets/blue-love.png', 0, 1, 2),
(9, 'Punk Jeans', '100% Bio Fairtrade Jeans\r\nNatural dying technique\r\nMade in France', 1300, 500, 'assets/lila-sweater.png', 0, 1, 2),
(10, 'Jade Fame Pant', '100% Bio Fairtrade coton\r\nNatural dying technique\r\nMade in France', 5000, 1200, 'assets/lila-green.png', 2, 1, 2),
(11, 'Cream Volant Pant', '100% Bio Fairtrade coton\r\nNatural dying technique\r\nMade in France', 5000, 1200, 'assets/volant-creme.png', 2, 1, 2),
(12, 'Marseille Jumper', '100% Bio Fairtrade coton\r\nNatural dying technique\r\nMade in France', 50000, 1200, 'assets/yellow-sweater.png', 5, 1, 3),
(13, 'Lila Jumper', '100% Bio Fairtrade coton\r\nNatural dying technique\r\nMade in France', 50000, 1200, 'assets/lila-sweater.png', 5, 1, 3),
(14, 'Sportswear Green Top', '100% Bio Fairtrade coton\r\nNatural dying technique\r\nMade in France', 50000, 1200, 'assets/sports-cute.png', 5, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_orders` (`customer_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD KEY `order_product` (`order_id`),
  ADD KEY `product_order` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_products` (`categorie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `customers_orders` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `product_order` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `categories_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
