-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 06:57 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Glitz and Glamup', 'admin', 9988855222, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-05-24 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, '261064124', 'Komala', 'komala@gmail.com', 7798797897, '7/27/2020', '4:00pm', 'Makeup', '2020-07-17 04:48:25', 'Accepted', '1', '2020-11-28 17:27:50'),
(2, '985645887', 'Shravya', 'shravya@gmail.com', 5646464646, '12/09/2020', '5.00pm', 'Normal waxing', '2020-09-02 17:07:25', 'currently waxing is not there.', '2', '2020-11-28 17:28:16'),
(3, '965887988', 'Sanjeeta Jain', 'sanjeeta@gmail.com', 5646464646, '8/20/2020', '2:30pm', 'Loreal Hair Color(Full)', '2020-08-14 12:35:30', 'we will wait', '1', '2020-11-28 17:28:40'),
(4, '899118550', 'Anuja Kumar', 'anuja@gmail.com', 123456789, '8/30/2020', '1:30pm', 'Threading', '2020-08-01 16:13:13', 'you are delay to the appointment time', '2', '2020-11-28 17:47:16'),
(7, '534623002', 'Anika', 'anika@gmail.com', 8755963210, '12/2/2020', '3:00pm', 'U-Shape Hair Cut', '2020-11-28 17:25:41', 'certainly madam', '1', '2020-11-28 17:43:51'),
(8, '161081099', 'nandini', 'nandini@gmail.com', 8965231470, '11/30/2020', '6:30pm', 'Feet care', '2020-11-28 17:30:49', 'okay mam', '1', '2020-11-28 17:43:21'),
(9, '600278467', 'Varsha rao', 'varsha@gmail.com', 8977456821, '12/10/2020', '4:00pm', 'Fruit Facial', '2020-11-28 17:32:08', 'which fruit facial you would like to have mam?', '1', '2020-11-28 17:45:26'),
(10, '948396344', 'pragna das', 'pragnadas@gmail.com', 9855647120, '1/13/2021', '10:30am', 'O3 Facial', '2020-11-28 17:33:09', '', '', '0000-00-00 00:00:00'),
(11, '498824765', 'preksha gowda', 'preksha@gmail.com', 9870125478, '12/15/2020', '11:30am', 'Rebonding', '2020-11-28 17:34:51', '', '', '0000-00-00 00:00:00'),
(12, '654399040', 'yuktha nair', 'yuktha@gmail.com', 9201534875, '12/14/2020', '11:00am', 'Chocolate waxing', '2020-11-28 17:37:00', 'certainly mam, please don\"t delay', '1', '2020-11-28 17:46:08'),
(13, '995641766', 'tanusha jain', 'tanusha@gmail.com', 8742153920, '12/24/2020', '12:30pm', 'Nail care', '2020-11-28 17:38:01', '', '', '0000-00-00 00:00:00'),
(14, '771950096', 'aditi nivas', 'aditi@gmail.com', 7541289632, '12/29/2020', '5:00pm', 'Dressup', '2020-11-28 17:39:07', '', '', '0000-00-00 00:00:00'),
(15, '171493427', 'sakshi singh', 'sakshi@gmail.com', 8745002369, '12/6/2020', '2:30pm', 'Charcol Facial', '2020-11-28 17:40:28', 'accepted mam.please be on time', '1', '2020-11-28 17:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Sunita Verma', 'verma@gmail.com', 5546464646, 'Female', 'Taking Hair Spa', '2020-07-26 11:09:10', '2020-11-28 17:14:50'),
(2, 'Brinda', 'Brinda@gmail.com', 8544632910, 'Female', 'Deluxe Pedicure,o3 facial', '2020-08-12 17:14:59', NULL),
(3, 'Aadya', 'aadya@gmail.com', 8755964123, 'Female', 'Regular services', '2020-06-02 17:16:20', NULL),
(4, 'Sanjeeta Jain', 'san@gmail.com', 5646464646, 'Female', 'Taking Body Spa', '2020-09-10 13:38:58', NULL),
(5, 'Rachana', 'rachana@gmail.com', 5646464646, 'Female', 'Deluxe Pedicure, charcol facial', '2020-07-23 17:17:29', NULL),
(6, 'Deepti', 'deepti@gmail.com', 8544632910, 'Female', 'Regular package', '2020-08-11 17:18:39', NULL),
(7, 'Aindri', 'aindri@gmail.com', 8745963210, 'Female', 'Offer package', '2020-09-08 17:19:53', NULL),
(8, 'Hitha', 'Hitha@gmail.com', 7899654120, 'Female', 'Regular package', '2020-05-25 17:20:46', NULL),
(9, 'Gowri', 'gowri@gmail.com', 7845965120, 'Female', 'festival package', '2020-08-26 17:21:29', NULL),
(10, 'Namrata', 'namrata@gmail.com', 8544632910, 'Female', 'haircut', '2020-09-22 17:22:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, 2, 2, 621839533, '2020-07-30 15:33:22'),
(11, 3, 1, 970548035, '2020-07-31 04:42:45'),
(19, 4, 1, 810518673, '2020-11-29 05:53:06'),
(20, 4, 8, 810518673, '2020-11-29 05:53:06'),
(21, 4, 13, 810518673, '2020-11-29 05:53:06'),
(22, 4, 16, 810518673, '2020-11-29 05:53:06'),
(23, 6, 2, 439941386, '2020-11-29 05:54:09'),
(24, 6, 17, 439941386, '2020-11-29 05:54:09'),
(25, 8, 2, 556537289, '2020-11-29 05:54:44'),
(26, 8, 5, 556537289, '2020-11-29 05:54:44'),
(27, 8, 12, 556537289, '2020-11-29 05:54:44'),
(28, 8, 13, 556537289, '2020-11-29 05:54:44'),
(29, 8, 16, 556537289, '2020-11-29 05:54:44'),
(30, 8, 19, 556537289, '2020-11-29 05:54:44'),
(31, 5, 14, 585579089, '2020-11-29 05:55:19'),
(32, 5, 18, 585579089, '2020-11-29 05:55:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', 'Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings.<br>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '                890,Sector 62, MG Road, Bangalore.', 'glitzandglamup@gmail.in', 9876543210, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(1, 'O3 Facial', 1200, '2020-06-25 11:22:38'),
(2, 'Fruit Facial', 500, '2020-06-24 11:22:53'),
(3, 'Charcol Facial', 1000, '2020-07-05 11:23:10'),
(4, 'Deluxe Menicure', 500, '2020-07-25 11:23:34'),
(5, 'Deluxe Pedicure', 600, '2020-06-25 11:23:47'),
(6, 'Normal Menicure', 300, '2020-07-25 11:24:01'),
(7, 'Normal Pedicure', 400, '2020-07-25 11:24:19'),
(8, 'U-Shape Hair Cut', 250, '2020-07-25 11:24:38'),
(9, 'Layer Haircut', 550, '2020-07-25 11:24:53'),
(10, 'Rebonding', 3999, '2020-07-25 11:25:08'),
(11, 'Loreal Hair Color(Full)', 1200, '2020-07-25 11:25:35'),
(12, 'Body Spa', 1500, '2020-08-19 13:36:27'),
(13, 'Threading', 50, '2020-05-21 15:45:50'),
(14, 'Dressup', 2000, '2020-08-21 16:23:23'),
(15, 'Normal waxing', 300, '2020-09-16 13:38:38'),
(16, 'Chocolate waxing', 600, '2020-09-08 13:39:10'),
(17, 'Nail care', 1500, '2020-08-18 13:39:37'),
(18, 'Makeup', 800, '2020-08-18 13:40:58'),
(19, 'Hands care', 3000, '2020-11-02 13:41:39'),
(20, 'Feet care', 3000, '2020-11-02 13:45:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
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
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
