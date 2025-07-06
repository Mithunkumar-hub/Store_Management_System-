-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2021 at 12:19 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `ORDER_ID` varchar(12) NOT NULL,
  `USER_ID` varchar(12) NOT NULL,
  `PRODUCT_ID` varchar(12) NOT NULL,
  `ORDER_QUANTITY` int(4) NOT NULL,
  `ORDER_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`ORDER_ID`, `USER_ID`, `PRODUCT_ID`, `ORDER_QUANTITY`, `ORDER_DATE`) VALUES
('ord1234', 'emp101', 'pro61022b46c', 12, '2021-06-21'),
('ord610ff68fa', 'emp002', 'pro61022fa87', 8, '2021-08-08'),
('ord610ff68fc', 'emp002', 'pro610230582', 5, '2021-08-08'),
('ord610ff7635', 'emp005', 'pro61022e509', 10, '2021-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `pending_order_table`
--

CREATE TABLE `pending_order_table` (
  `ORDER_ID` varchar(12) NOT NULL,
  `USER_ID` varchar(12) NOT NULL,
  `PRODUCT_ID` varchar(12) NOT NULL,
  `ORDER_QUANTITY` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pending_order_table`
--

INSERT INTO `pending_order_table` (`ORDER_ID`, `USER_ID`, `PRODUCT_ID`, `ORDER_QUANTITY`) VALUES
('ord6093153b4', 'emp101', 'pro123', 56),
('ord610ff723e', 'emp003', 'pro61022b46c', 56),
('ord610ff7241', 'emp003', 'pro610230c0d', 21),
('ord610ff7637', 'emp005', 'pro61022fa87', 23),
('pro12356', 'emp702', 'pro610230582', 7);

-- --------------------------------------------------------

--
-- Table structure for table `product_table`
--

CREATE TABLE `product_table` (
  `PRODUCT_NAME` varchar(30) NOT NULL,
  `PRODUCT_ID` varchar(12) NOT NULL,
  `BRAND` varchar(20) DEFAULT NULL,
  `PRODUCT_PRICE` int(5) NOT NULL,
  `ITEM_QUANTITY` int(4) NOT NULL,
  `PRODUCT_IMG` mediumblob NOT NULL,
  `PRODUCT_DESC` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_table`
--

INSERT INTO `product_table` (`PRODUCT_NAME`, `PRODUCT_ID`, `BRAND`, `PRODUCT_PRICE`, `ITEM_QUANTITY`, `PRODUCT_IMG`, `PRODUCT_DESC`) VALUES
('RABBER BOOT', 'pro61022b46c', 'acme', 990, 190, 0x3631303232623436633630346250352e6a706567, 'The Provided Gumboot is ideal for wearing by men t'),
(' Casuals For Men ', 'pro61022e509', 'Rebelbe ', 700, 89, 0x3631303232653530393564366470372e6a706567, 'Navy Canvas; Style Desc:Moc Toe Canvas Lace Up'),
('OXYFIT Casuals For Men  (Navy)', 'pro61022fa87', 'Bluemarker', 689, 72, 0x3631303232666138373934333770392e6a706567, 'Fashion is where you find it. Rockfield found it s'),
('ROME-3 Running Shoes For Men ', 'pro610230582', 'asian', 800, 295, 0x3631303233303538323432326270382e6a706567, 'Mesh\r\nModel name\r\nwndr-13 sports shoes for men | L'),
('Outdoor Casual Boots for Mens ', 'pro610230c0d', 'foot', 1200, 290, 0x363130323330633064383334667031302e6a706567, 'Mesh\r\nModel name\r\nwndr-13 sports shoes for men | L'),
('Spirit II FG Football ', 'pro6110a8297', 'puma', 1567, 467, 0x363131306138323937396637313130353532312d362d70756d612d626c61636b2d79656c6c6f772d616c6572742d6f726967696e616c2d696d61666b7966676564376b687266622e6a706567, 'THIS PRODUCT IS VERY COMFTABLE.'),
('Nike Phantom ', 'pro6110a876d', 'NIKE', 5898, 590, 0x3631313061383736646430356653484f45533151323432332e6a706567, 'provides a clean strike zone to help you dribble, '),
('Loafers For Men', 'pro6110a8e69', 'AADI', 399, 489, 0x36313130613865363933303433382d6d726a313634342d382d616164692d677265792e6a706567, '\r\nWipe gently with a dry cloth to remove any dried');

-- --------------------------------------------------------

--
-- Table structure for table `register_table`
--

CREATE TABLE `register_table` (
  `USER_ID` varchar(12) NOT NULL,
  `USER_NAME` varchar(30) NOT NULL,
  `PHONE_NO` bigint(10) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `GENDER` varchar(6) NOT NULL,
  `USER_IMG` varchar(12) NOT NULL,
  `USER_TYPE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register_table`
--

INSERT INTO `register_table` (`USER_ID`, `USER_NAME`, `PHONE_NO`, `EMAIL`, `PASSWORD`, `GENDER`, `USER_IMG`, `USER_TYPE`) VALUES
('emp110', 'anita', 1231432423, 'anita@gamil.com', 'anita', 'Female', 'u1.jpg', 'shopkeeper'),
('emp111', 'manish', 1234532556, 'manish@gmail.com', 'manish', 'Female', 'user5.jpg', 'shopkeeper'),
('emp112', 'arti', 5467477787, 'arti@gmail.com', 'arti', 'Female', 'user6.jpg', 'staff'),
('emp113', 'sandeep', 5687686787, 'sandeep@gmail.com', 'sandeep', 'Male', 'added.jpg', 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `USER_ID` varchar(12) NOT NULL,
  `USER_NAME` varchar(30) NOT NULL,
  `PHONE_NO` bigint(10) NOT NULL,
  `EMAIL` varchar(30) NOT NULL,
  `PASSWORD` varchar(30) NOT NULL,
  `GENDER` varchar(6) NOT NULL,
  `USER_IMG` varchar(30) NOT NULL,
  `USER_TYPE` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`USER_ID`, `USER_NAME`, `PHONE_NO`, `EMAIL`, `PASSWORD`, `GENDER`, `USER_IMG`, `USER_TYPE`) VALUES
('emp002', 'suman', 3873285328, 'suman@gmail.com', 'suman', 'Female', 'user5.jpg', 'Shopkeeper'),
('emp003', 'shruti ', 34634663214, 'shruti@gmail.com', 'shruti', 'Female', '610fef33a1f5duser6.jpg', 'Staff'),
('emp005', 'mohan', 12432352365, 'mohan@gmail.com', '610fee521ce5a', 'Male', '610fee521ce5cuser1.jpg', 'Shopkeeper'),
('emp101', 'admin', 6204789892, 'admin@gmail.com', 'admin', 'Male', '610eab525a2b3user5.PNG', 'Admin'),
('emp610fed654', 'mohan', 12432352365, 'mohan@gmail.com', '610fed6545716', 'Male', '610fed6545718user1.jpg', 'Shopkeeper'),
('emp610fef984', 'manish', 36464743465, 'manish@gmail.com', '610fef98454fc', 'Female', '610fef98454feuser7.jpg', 'Shopkeeper');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`ORDER_ID`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- Indexes for table `pending_order_table`
--
ALTER TABLE `pending_order_table`
  ADD PRIMARY KEY (`ORDER_ID`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- Indexes for table `product_table`
--
ALTER TABLE `product_table`
  ADD PRIMARY KEY (`PRODUCT_ID`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_table`
--
ALTER TABLE `order_table`
  ADD CONSTRAINT `order_table_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `user_table` (`USER_ID`),
  ADD CONSTRAINT `order_table_ibfk_2` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product_table` (`PRODUCT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
