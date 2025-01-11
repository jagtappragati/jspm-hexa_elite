-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2025 at 04:46 AM
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
-- Database: `vpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7898799798, 'tester1@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '2024-05-01 05:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `VehicleCat` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `VehicleCat`, `CreationDate`, `limit`) VALUES
(1, 'Four Wheeler Vehicle', '2024-05-03 11:06:50', 15),
(2, 'Two Wheeler Vehicle', '2024-05-03 11:06:50', 50),
(4, 'Bicycles', '2024-05-03 11:06:50', 50),
(8, 'Electriic vehicle ', '2025-01-09 04:59:02', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tblregusers`
--

CREATE TABLE `tblregusers` (
  `ID` int(5) NOT NULL,
  `FirstName` varchar(250) DEFAULT NULL,
  `LastName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblregusers`
--

INSERT INTO `tblregusers` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(2, 'Anuj', 'Kumar', 1234567890, 'ak@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-06-01 18:05:56'),
(3, 'pragati', 'jagtap', 7249651379, 'jagtappragati22@gamil.com', '827ccb0eea8a706c4c34a16891f84e7b', '2025-01-02 08:59:15'),
(4, 'Diksha ', 'jadhav', 1234567899, 'jdhavd20201@gmail.com', 'cdaeb1282d614772beb1e74c192bebda', '2025-01-02 09:02:36'),
(5, 'test', 'user', 1111111111, 'user@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', '2025-01-02 09:04:28'),
(6, 'ram', 'biradar', 5654246779, 'ram123@gmail.om', 'e99a18c428cb38d5f260853678922e03', '2025-01-08 05:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicle`
--

CREATE TABLE `tblvehicle` (
  `ID` int(10) NOT NULL,
  `ParkingNumber` varchar(120) DEFAULT NULL,
  `VehicleCategory` varchar(120) NOT NULL,
  `VehicleCompanyname` varchar(120) DEFAULT NULL,
  `RegistrationNumber` varchar(120) DEFAULT NULL,
  `OwnerName` varchar(120) DEFAULT NULL,
  `OwnerContactNumber` bigint(10) DEFAULT NULL,
  `InTime` timestamp NULL DEFAULT current_timestamp(),
  `OutTime` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `ParkingCharge` varchar(120) NOT NULL,
  `Remark` mediumtext NOT NULL,
  `Status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicle`
--

INSERT INTO `tblvehicle` (`ID`, `ParkingNumber`, `VehicleCategory`, `VehicleCompanyname`, `RegistrationNumber`, `OwnerName`, `OwnerContactNumber`, `InTime`, `OutTime`, `ParkingCharge`, `Remark`, `Status`) VALUES
(1, '125061388', 'Electric Vehicle', 'Tata Nexon', 'DL8CAS1234', 'Amit', 1233211230, '2025-01-01 06:42:36', '2025-01-02 06:43:43', '50', 'NA', 'Out'),
(2, '787303637', 'Two Wheeler Vehicle', 'Honda Actvia', 'UP81AN4851', 'Anuj kumar', 1234567890, '2024-12-16 06:47:23', '2024-12-16 06:48:26', '20', 'NA', 'Out'),
(3, '901288727', 'Four Wheeler Vehicle', 'Hyundai i10', 'Dl6CAs1234', 'Anuj Kumar', 1234567890, '2025-01-02 06:58:34', '2025-01-09 07:15:19', '840', 'NA', 'Out'),
(4, '266619324', 'Two Wheeler Vehicle', 'hero honda', 'mh 13 cd 3126', 'bhujang jagtap', 7249651379, '2025-01-06 08:14:19', '2025-01-08 06:29:19', '230', 'REMAIN 50 RS', 'Out'),
(7, '744197379', 'Four Wheeler Vehicle', 'tata', 'mh 12 af 4353', 'test owner', 1111111111, '2025-01-06 08:21:53', '2025-01-09 04:14:46', '335', 'NA', 'Out'),
(15, '238731900', 'Four Wheeler Vehicle', 'ford ', 'mh65 av 7598', 'test owner', 1111111111, '2025-01-06 08:52:52', '2025-01-06 08:54:41', '50', 'NA', 'Out'),
(17, '794280290', 'Two Wheeler Vehicle', 'Bajaj', 'MH12VJ8830', 'Kartik', 1111111111, '2025-01-06 09:16:44', '2025-01-06 09:17:18', '5', 'NA', 'Out'),
(18, '136302019', 'Four Wheeler Vehicle', 'toyota', '45', 'ram', 5654246779, '2025-01-08 05:46:48', '2025-01-08 05:49:11', '5', 'NA', 'Out'),
(19, '653336217', 'Four Wheeler Vehicle', 'ford ', '6@35^', 'test owner', 5654246779, '2025-01-08 05:54:29', '2025-01-09 07:15:31', '125', 'NA', 'Out'),
(20, '832375893', 'Bicycles', 'ford ', '6@35^', 'test owner', 5654246779, '2025-01-08 05:57:05', NULL, '', '', ''),
(21, '530041269', 'Electric Vehicle', 'hero honda', 'mh65 av 7598', 'Kartik', 5654246779, '2025-01-08 05:57:43', '2025-01-08 06:12:45', '50', 'NA', 'Out'),
(22, '389778392', 'Four Wheeler Vehicle', 'ford ', 'XX00YY', 'test owner', 5654246779, '2025-01-08 05:59:06', '2025-01-08 06:11:54', '5', 'NA', 'Out'),
(23, '902072002', 'Four Wheeler Vehicle', 'ola', 'mh42 bc 7657', 'test owner', 1111111111, '2025-01-09 04:18:38', '2025-01-09 04:19:47', '5', 'na', 'Out'),
(24, '210854617', 'Four Wheeler Vehicle', 'tata', 'mh42 bc 7658', 'test owner', 1111111111, '2025-01-09 05:21:08', '2025-01-09 09:08:24', '15', 'NA', 'Out'),
(25, '482600199', 'Four Wheeler Vehicle', 'tata', 'mh 13 hf 7943', 'test owner', 1111111111, '2025-01-09 05:51:58', NULL, '', '', ''),
(26, '573647140', 'Four Wheeler Vehicle', 'tata', 'mh 13 hf 7977', 'test owner', 1111111111, '2025-01-09 05:54:56', NULL, '', '', ''),
(27, '747199742', 'Four Wheeler Vehicle', 'tata', 'mh 13 hf 7977', 'test owner', 1111111111, '2025-01-09 05:56:59', NULL, '', '', ''),
(28, '359827030', 'Four Wheeler Vehicle', 'tata', 'mh 13 hf 7922', 'test owner', 1111111111, '2025-01-09 05:57:25', NULL, '', '', ''),
(29, '637192649', 'Four Wheeler Vehicle', 'tata', 'mh 13 hf 7922', 'test owner', 1111111111, '2025-01-09 05:57:51', NULL, '', '', ''),
(30, '835914331', 'Four Wheeler Vehicle', 'tata', 'mh 13 hf 7633', 'test owner', 1111111111, '2025-01-09 05:58:01', NULL, '', '', ''),
(31, '766514596', 'Four Wheeler Vehicle', 'tata', 'mh 13 hf 7633', 'test owner', 1111111111, '2025-01-09 05:58:26', NULL, '', '', ''),
(32, '677419339', 'Four Wheeler Vehicle', 'tata', 'mh 13 hf 7633', 'test owner', 1111111111, '2025-01-09 05:59:26', NULL, '', '', ''),
(33, '252611784', 'Four Wheeler Vehicle', 'tata', 'mh 13 hf 7633', 'test owner', 1111111111, '2025-01-09 06:00:14', NULL, '', '', ''),
(34, '274881364', 'Four Wheeler Vehicle', 'tata', 'mh 13 hf 7633', 'test owner', 1111111111, '2025-01-09 06:00:47', NULL, '', '', ''),
(35, '312759868', 'Four Wheeler Vehicle', 'tata', 'mh 13 hf 7633', 'test owner', 1111111111, '2025-01-09 06:03:16', '2025-01-09 07:16:15', '5', 'NA', 'Out'),
(37, '233530934', 'Two Wheeler Vehicle', 'tata', 'mh 13 hf 7632', 'test owner', 1111111111, '2025-01-10 03:45:38', NULL, '', '', ''),
(38, '142550926', 'Bicycles', 'tata', 'mh 13 hf 7632', 'test owner', 1111111111, '2025-01-10 03:47:03', NULL, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `VehicleCat` (`VehicleCat`);

--
-- Indexes for table `tblregusers`
--
ALTER TABLE `tblregusers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MobileNumber` (`MobileNumber`);

--
-- Indexes for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblregusers`
--
ALTER TABLE `tblregusers`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
