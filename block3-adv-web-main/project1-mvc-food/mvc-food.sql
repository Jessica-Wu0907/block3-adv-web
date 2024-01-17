-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2024 at 05:05 PM
-- Server version: 10.3.38-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc-food`
--

-- --------------------------------------------------------

--
-- Table structure for table `dish`
--

CREATE TABLE `dish` (
  `dishID` int(11) NOT NULL,
  `dishName` varchar(256) NOT NULL,
  `dishDescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dish`
--

INSERT INTO `dish` (`dishID`, `dishName`, `dishDescription`) VALUES
(6, 'Catfish', 'test'),
(8, 'Salad', ''),
(13, 'BBQ', ' dfdgdgsg');

-- --------------------------------------------------------

--
-- Table structure for table `dishIngredient`
--

CREATE TABLE `dishIngredient` (
  `dishID` int(11) NOT NULL,
  `ingredientID` int(11) NOT NULL,
  `ingredientQuantity` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `ingredientID` int(11) NOT NULL,
  `ingredientName` varchar(256) NOT NULL,
  `ingredientType` varchar(256) NOT NULL,
  `ingredientPrice` decimal(60,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`ingredientID`, `ingredientName`, `ingredientType`, `ingredientPrice`) VALUES
(1, 'Fresh Potato', 'Vegetables', 3),
(2, 'Steak', 'Meat', 5),
(3, 'Cabbage', 'Vegetables	', 3),
(4, 'Olive Oil  ', 'Condiment', 10);

-- --------------------------------------------------------

--
-- Table structure for table `ingredientType`
--

CREATE TABLE `ingredientType` (
  `ingredientTypeID` int(11) NOT NULL,
  `ingredientTypeName` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ingredientType`
--

INSERT INTO `ingredientType` (`ingredientTypeID`, `ingredientTypeName`) VALUES
(1, 'Vegetable'),
(2, 'Meat'),
(3, 'Fruit'),
(4, 'Seafood'),
(5, 'Fruit'),
(6, 'Seafood');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplierID` int(11) NOT NULL,
  `supplierName` varchar(256) NOT NULL,
  `supplierLocation` varchar(256) NOT NULL,
  `supplierContact` varchar(128) NOT NULL,
  `supplierEmail` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierID`, `supplierName`, `supplierLocation`, `supplierContact`, `supplierEmail`) VALUES
(1, 'Bonjour Farms', 'Bonjour Farm. BC', 'FarmeC', 'Bonjourfarme@gmail.com'),
(3, 'Green Harvest', 'Veggie City, QC ', 'Jone Gardner ', 'jone@greenharvest.com'),
(4, 'Peter Peter', 'Peter Grove, QC', 'Peter Oliveoil', 'Peteroil@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dish`
--
ALTER TABLE `dish`
  ADD PRIMARY KEY (`dishID`);

--
-- Indexes for table `dishIngredient`
--
ALTER TABLE `dishIngredient`
  ADD KEY `dishID` (`dishID`),
  ADD KEY `ingredientID` (`ingredientID`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`ingredientID`);

--
-- Indexes for table `ingredientType`
--
ALTER TABLE `ingredientType`
  ADD PRIMARY KEY (`ingredientTypeID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dish`
--
ALTER TABLE `dish`
  MODIFY `dishID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `ingredientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ingredientType`
--
ALTER TABLE `ingredientType`
  MODIFY `ingredientTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dishIngredient`
--
ALTER TABLE `dishIngredient`
  ADD CONSTRAINT `dishID` FOREIGN KEY (`dishID`) REFERENCES `dish` (`dishID`),
  ADD CONSTRAINT `ingredientID` FOREIGN KEY (`ingredientID`) REFERENCES `ingredient` (`ingredientID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
