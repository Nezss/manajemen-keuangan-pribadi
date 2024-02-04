-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 03, 2023 at 03:59 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manajemenkeuangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `Transaction_id` int NOT NULL,
  `User_id` int NOT NULL,
  `Transaction_category` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `Transaction_date` date NOT NULL,
  `Transaction_amount` int NOT NULL,
  `Transaction_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Nama_Method` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`Transaction_id`, `User_id`, `Transaction_category`, `Transaction_date`, `Transaction_amount`, `Transaction_name`, `Nama_Method`) VALUES
(5, 26, 'Income', '2023-11-28', 2020, 'nemu', ''),
(6, 26, 'Income', '2023-11-28', 2000, 'dikasi orang', ''),
(7, 30, 'Income', '2023-11-28', 1000, 'JJJJU', ''),
(22, 32, 'Income', '2023-12-03', 10, 'alhamduililah', 'E-Wallet'),
(23, 32, 'Income', '2023-12-03', 9999, 'asdf', 'Bank BCA'),
(24, 32, 'Income', '2023-12-03', 99999, 'gfjhgf', 'E-Wallet'),
(25, 32, 'Income', '2023-12-03', 100000, '000', 'Tunai'),
(26, 32, 'Outcome', '2023-12-03', 1000, 'aku ', 'Bank Mandiri'),
(27, 32, 'Income', '2023-12-03', 1999, 'nasi ayam', 'Tunai'),
(29, 32, 'Income', '2023-12-03', 6666, 'mi ayam', 'Bank BCA'),
(30, 32, 'Income', '2023-12-03', 777, 'cilok', 'E-Wallet'),
(31, 32, 'Outcome', '2023-12-03', 555, 'sdaf', 'E-Wallet'),
(32, 32, 'Income', '2023-12-03', 888, 'fgf', 'E-Wallet'),
(33, 33, 'Income', '2023-12-03', 20000, 'gajian', 'Bank BRI'),
(35, 32, 'Income', '2023-12-03', 234, '234', 'E-Wallet'),
(36, 32, 'Income', '2023-12-03', 2345, 'asdfasdg', 'Bank BRI'),
(37, 32, 'Income', '2023-12-03', 34, 'asdf', 'Bank Mandiri'),
(38, 32, 'Outcome', '2023-12-03', 34, 'asdf', 'E-Wallet'),
(39, 32, 'Income', '2023-12-03', 2345, 'asdf', 'E-Wallet'),
(40, 32, 'Income', '2023-12-03', 345, 'asdfdsa', 'Tunai'),
(41, 32, 'Income', '2023-12-03', 324, 'asdf', 'Tunai'),
(42, 32, 'Income', '2023-12-03', 4567, 'adfg', 'Bank BRI'),
(43, 32, 'Outcome', '2023-12-03', 96745, 'jfgd', 'E-Wallet');

-- --------------------------------------------------------

--
-- Table structure for table `transactionhistory`
--

CREATE TABLE `transactionhistory` (
  `TransactionHistory_id` int NOT NULL,
  `Transaction_id` int NOT NULL,
  `Nama_History` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `User_id` int NOT NULL,
  `Transaction_date` date NOT NULL,
  `Transaction_amount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactionhistory`
--

INSERT INTO `transactionhistory` (`TransactionHistory_id`, `Transaction_id`, `Nama_History`, `User_id`, `Transaction_date`, `Transaction_amount`) VALUES
(1, 0, 'Income', 31, '2023-12-02', 666),
(2, 0, 'Income', 31, '2023-12-02', 333),
(5, 0, 'seberesebere', 32, '2023-11-28', 555),
(6, 0, 'Income', 32, '2023-12-02', 666),
(7, 0, 'Income', 31, '2023-12-02', 111),
(8, 0, 'Income', 32, '2023-12-02', 9999999),
(9, 0, 'Income', 32, '2023-12-02', 69696),
(10, 0, 'Income', 32, '2023-12-02', 5858),
(11, 0, 'Income', 32, '2023-12-02', 7867),
(12, 0, 'Income', 32, '2023-12-02', 666),
(13, 0, 'Income', 32, '2023-12-02', 666),
(14, 0, 'Income', 32, '2023-12-02', 7777),
(15, 0, 'Outcome', 32, '2023-12-02', 99),
(16, 0, 'Outcome', 32, '2023-12-02', 345),
(17, 0, 'Income', 32, '2023-12-02', 3600),
(18, 0, 'Income', 32, '2023-12-02', 22),
(19, 0, 'Income', 32, '2023-12-02', 574),
(20, 0, 'Income', 32, '2023-12-02', 2200),
(21, 0, 'Income', 32, '2023-12-02', 22),
(22, 0, 'Delete', 32, '2023-12-03', 574),
(23, 0, 'Delete', 32, '2023-12-03', 22),
(24, 0, 'Income', 32, '2023-12-03', 80),
(25, 0, 'Delete', 32, '2023-12-03', 80),
(26, 0, 'Income', 32, '2023-12-03', 10),
(27, 0, 'Income', 32, '2023-12-03', 9999),
(28, 0, 'Income', 32, '2023-12-03', 99999),
(29, 0, 'Income', 32, '2023-12-03', 100000),
(30, 0, 'Outcome', 32, '2023-12-03', 1000),
(31, 0, 'Update', 32, '2023-12-03', 100000),
(32, 0, 'Income', 32, '2023-12-03', 192),
(33, 0, 'Update', 32, '2023-12-03', 100000),
(34, 0, 'Income', 32, '2023-12-03', 69),
(35, 26, 'Update', 32, '2023-12-03', 1000),
(36, 0, 'Income', 32, '2023-12-03', 800),
(37, 0, 'Income', 32, '2023-12-03', 1999),
(38, 0, 'Outcome', 32, '2023-12-03', 9991),
(39, 28, 'Update', 32, '2023-12-03', 9991),
(40, 0, 'Income', 32, '2023-12-03', 998),
(41, 28, 'Delete', 32, '2023-12-03', 9991),
(42, 27, 'Update', 32, '2023-12-03', 1999),
(43, 0, 'Income', 32, '2023-12-03', 1888),
(44, 26, 'Update', 32, '2023-12-03', 1000),
(45, 0, 'Income', 32, '2023-12-03', 333),
(46, 0, 'Income', 32, '2023-12-03', 6666),
(47, 0, 'Income', 32, '2023-12-03', 777),
(48, 13, 'Delete', 32, '2023-12-03', 7777),
(49, 14, 'Delete', 32, '2023-12-03', 99),
(50, 0, 'Outcome', 32, '2023-12-03', 555),
(51, 1, 'Income', 32, '2023-12-03', 888),
(52, 32, 'Update', 32, '2023-12-03', 888),
(53, 32, 'Income', 32, '2023-12-03', 88),
(54, 1, 'Income', 33, '2023-12-03', 20000),
(55, 1, 'Outcome', 33, '2023-12-03', 1500),
(56, 34, 'Update', 33, '2023-12-03', 1500),
(57, 34, 'Income', 33, '2023-12-03', 2000),
(58, 34, 'Delete', 33, '2023-12-03', 1500),
(59, 1, 'Income', 32, '2023-12-03', 234),
(60, 1, 'Income', 32, '2023-12-03', 2345),
(61, 1, 'Income', 32, '2023-12-03', 34),
(62, 19, 'Delete', 32, '2023-12-03', 2200),
(63, 1, 'Outcome', 32, '2023-12-03', 34),
(64, 1, 'Income', 32, '2023-12-03', 2345),
(65, 1, 'Income', 32, '2023-12-03', 345),
(66, 0, 'Income', 32, '2023-12-03', 324),
(67, 0, 'Income', 32, '2023-12-03', 234),
(68, 0, 'Income', 32, '2023-12-03', 234),
(69, 0, 'Outcome', 32, '2023-12-03', 345),
(70, 1, 'Income', 32, '2023-12-03', 324),
(71, 1, 'Income', 32, '2023-12-03', 4567),
(72, 1, 'Outcome', 32, '2023-12-03', 96745);

-- --------------------------------------------------------

--
-- Table structure for table `transactionmethod`
--

CREATE TABLE `transactionmethod` (
  `Id_method` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `Nama_Method` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactionmethod`
--

INSERT INTO `transactionmethod` (`Id_method`, `Nama_Method`) VALUES
('M001 ', 'Tunai'),
('M002', 'E-Wallet'),
('M003 ', 'Bank BRi'),
('M004', 'Bank BCA'),
('M005', 'Bank Mandiri');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_id` int NOT NULL,
  `Email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `Username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `Password` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `Email`, `Username`, `Password`, `Name`) VALUES
(26, 'wahid697@gmail.com', 'Hazz', '$2b$12$OQ8lZVIXNu8nK51RfMtz2.I0QtUODbvWgP65oORGVcsAkmKLlEBIW', 'wahid hasim'),
(27, 'wa', 'wa', '$2b$12$EzJlmDkWLgpfPjmMBlFwiuqZdz0DgcWSKS1hmiAuNuEeGacaGuENa', 'wa'),
(29, 'B', 'A', '$2b$12$hX.bSK0isr4d74orlECzAO0Wb1vWJ6DxIAJciwL/ahIYoDsanrJ1S', 'A'),
(30, 'a', 'u', '$2b$12$XHQI44ORRlEfLtv36rDuTOE0c7IbDGxU2kkLg6TK.WmW1bz0ys.jC', 'u'),
(31, 'a', 'aa', 'a', 'aa'),
(32, 'a', 'usa', 'aa', 'aan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`Transaction_id`),
  ADD KEY `user_id` (`User_id`),
  ADD KEY `Nama_Method` (`Nama_Method`);

--
-- Indexes for table `transactionhistory`
--
ALTER TABLE `transactionhistory`
  ADD PRIMARY KEY (`TransactionHistory_id`),
  ADD KEY `Transaction` (`Nama_History`),
  ADD KEY `User_id` (`User_id`),
  ADD KEY `Transaction_id` (`Transaction_id`);

--
-- Indexes for table `transactionmethod`
--
ALTER TABLE `transactionmethod`
  ADD PRIMARY KEY (`Id_method`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `Transaction_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `transactionhistory`
--
ALTER TABLE `transactionhistory`
  MODIFY `TransactionHistory_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
