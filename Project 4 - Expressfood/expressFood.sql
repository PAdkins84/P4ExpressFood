-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2019 at 02:56 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expressFood`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_firstName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_lastName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_city` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_postcode` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phoneNumber` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_firstName`, `customer_lastName`, `customer_address`, `customer_city`, `customer_postcode`, `customer_email`, `customer_phoneNumber`) VALUES
(1, 'David', 'Moore', '28 Yardley Wood Road', 'Birmingham', 'B13 0TB', 'david_moore@hotmail.com', '0121247847'),
(2, 'Paul', 'Davis', '12 Beecham Road', 'Birmingham', 'B13 2AB', 'davis_paul@gmail.com', '01213332735'),
(3, 'Paul', 'Jones', '76 Chamberlain Crescent', 'Solihull', 'B90 2DG', 'paul_jones@live.co.uk', '01217652901'),
(4, 'Donna', 'Chamberlain', '16 Hurdis Road', 'Solihull', 'B90 2TB', 'donna_chamb@hotmail.com', '01214562345'),
(5, 'Sarah', 'Forrest', '68 Stratford Road', 'Solihull', 'B90 1DD', 'forrest_sarah@gmail.com', '01212435689');

-- --------------------------------------------------------

--
-- Table structure for table `daily_menu`
--

CREATE TABLE `daily_menu` (
  `daily_menu_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dietary` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `price` int(10) NOT NULL,
  `stock` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_menu`
--

INSERT INTO `daily_menu` (`daily_menu_id`, `name`, `type`, `Dietary`, `date`, `price`, `stock`) VALUES
(1, 'Lasagne', 'Main', 'Meat', '2019-07-01', 6, 20),
(2, 'Vegetable Curry', 'Main', 'Vegan', '2019-07-01', 6, 30),
(3, 'Black Forest Gateau', 'Dessert', 'Vegan', '2019-07-01', 4, 20),
(4, 'Chocolate Fudge Cake', 'Dessert', 'Dairy', '2019-07-01', 4, 30),
(5, 'Beef Stew', 'Main', 'Meat', '2019-07-02', 6, 40),
(6, 'Mac and Cheese', 'Main', 'Vegetarian', '2019-07-02', 5, 30),
(7, 'Tiramisu', 'Dessert', 'Dairy', '2019-07-02', 4, 38),
(8, 'Carrot Cake', 'Dessert', 'Vegan', '2019-07-02', 4, 28),
(9, 'Moussaka', 'Main', 'Meat', '2019-07-03', 6, 53),
(10, 'Cheese and Tomato Pizza', 'Main', 'Vegetarian', '2019-07-03', 5, 46),
(11, 'Strawberry Cheesecake', 'Dessert', 'Dairy', '2019-07-03', 4, 47),
(12, 'Vanilla Cake', 'Dessert', 'Vegan', '2019-07-03', 4, 35),
(13, 'Chicken Curry', 'Main', 'Meat', '2019-07-04', 5, 56),
(14, 'Fish and Chips', 'Main', 'Vegetarian', '2019-07-04', 4, 45),
(15, 'Chocolate Brownie', 'Dessert', 'Dairy', '2019-07-04', 4, 40),
(16, 'Pancakes', 'Dessert', 'Vegan', '2019-07-04', 5, 36),
(17, 'Tuna Pasta Bake', 'Main', 'Vegetarian', '2019-07-05', 5, 31),
(18, 'Veggie Burger', 'Main', 'Vegan', '2019-07-05', 6, 27),
(19, 'Profiteroles', 'Dessert', 'Dairy', '2019-07-05', 4, 36),
(20, 'Cookie Dough Ice Cream', 'Dessert', 'Vegan', '2019-07-05', 5, 42);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_person`
--

CREATE TABLE `delivery_person` (
  `deliveryPerson_id` int(11) NOT NULL,
  `deliveryPerson_firstName` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deliveryPerson_lastName` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_person`
--

INSERT INTO `delivery_person` (`deliveryPerson_id`, `deliveryPerson_firstName`, `deliveryPerson_lastName`) VALUES
(1, 'Derek', 'Hickman'),
(2, 'Omar', 'Shareef'),
(3, 'Joe', 'Lineham'),
(4, 'Jared', 'Chillbrook'),
(5, 'Terry', 'Silvers');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `deliveryPerson_id` int(11) NOT NULL,
  `order_time` datetime NOT NULL,
  `delivery_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `customer_id`, `deliveryPerson_id`, `order_time`, `delivery_time`) VALUES
(1, 4, 3, '2019-07-01 16:16:00', '2019-07-01 16:33:00'),
(2, 5, 2, '2019-07-02 13:01:00', '2019-07-02 13:19:00'),
(3, 2, 1, '2019-07-02 16:08:00', '2019-07-02 16:15:00'),
(4, 3, 4, '2019-07-03 12:18:00', '2019-07-03 12:33:00'),
(5, 1, 5, '2019-07-04 13:22:00', '2019-07-04 13:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_quantity`
--

CREATE TABLE `order_quantity` (
  `order_id` int(20) NOT NULL,
  `daily_menu` int(20) NOT NULL,
  `quantity` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_quantity`
--

INSERT INTO `order_quantity` (`order_id`, `daily_menu`, `quantity`) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 1),
(2, 5, 2),
(2, 8, 2),
(3, 5, 2),
(3, 8, 2),
(4, 10, 1),
(4, 9, 1),
(4, 11, 1),
(4, 12, 1),
(5, 13, 2),
(5, 15, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `daily_menu`
--
ALTER TABLE `daily_menu`
  ADD PRIMARY KEY (`daily_menu_id`);

--
-- Indexes for table `delivery_person`
--
ALTER TABLE `delivery_person`
  ADD PRIMARY KEY (`deliveryPerson_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `deliveryPerson_id` (`deliveryPerson_id`);

--
-- Indexes for table `order_quantity`
--
ALTER TABLE `order_quantity`
  ADD KEY `daily_menu` (`daily_menu`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `daily_menu`
--
ALTER TABLE `daily_menu`
  MODIFY `daily_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `delivery_person`
--
ALTER TABLE `delivery_person`
  MODIFY `deliveryPerson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
