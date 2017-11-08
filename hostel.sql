-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2017 at 08:37 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@admin.com', 'admin', '2016-04-04 20:31:45', '2017-11-03');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'B10992', 'B.Tech', 'Bachelor  of Technology', '2016-04-11 19:31:42'),
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2016-04-11 19:32:46'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2016-04-11 19:33:23'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2016-04-11 19:34:18'),
(5, 'MCA565', 'MCA', 'Master of Computer Application', '2016-04-11 19:34:40'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2016-04-11 19:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `studentid` int(11) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` varchar(500) NOT NULL,
  `CheckinStatus` tinyint(1) NOT NULL,
  `CheckinDate` date NOT NULL,
  `CheckoutStatus` tinyint(4) NOT NULL,
  `CheckoutDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `stayfrom`, `duration`, `course`, `studentid`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updateDate`, `CheckinStatus`, `CheckinDate`, `CheckoutStatus`, `CheckoutDate`) VALUES
(16, 2, 2, 3131, '2017-11-16', 4, 'Master of Business Administration', 12312, 'we', 'qwe', 'ewqe', 'female', 123, '3@gmail.com', 0, 'asda', 'asd', 0, 'sad', 'ads', 'Others', 0, 'sad', 'ads', 'Others', 0, '2017-11-03 11:25:02', '', 0, '0000-00-00', 0, '0000-00-00'),
(17, 3, 1, 333, '2017-11-09', 4, 'Bachelor  of Technology', 123, 'hss', 'ihsih', 'sisi', 'others', 213, '4@gmail.com', 23, 'asd', 'asd', 0, 'das', 'asd', 'Pahang', 0, 'das', 'asd', 'Pahang', 0, '2017-11-06 06:30:56', '', 0, '0000-00-00', 0, '0000-00-00'),
(22, 4, 2, 333, '2017-11-09', 3, 'Master of Computer Application', 1231, '2asd', 'asd', 'asd', 'female', 213, '5@gmail.com', 0, 'asd', 'asd', 0, 'da', 'ads', 'Kedah', 0, 'da', 'ads', 'Kedah', 0, '2017-11-07 10:45:46', '', 0, '0000-00-00', 0, '0000-00-00'),
(33, 123123, 1, 33, '2017-11-15', 4, 'Master of Computer Application', 0, 'asdd', 'asd', 'asd', 'female', 213, 'hcz931030@gmail.com', 0, 'asd', 'asda', 0, 'asd', 'asd', 'Federal Territory of Labuan', 0, 'asd', 'asd', 'Federal Territory of Labuan', 0, '2017-11-08 19:07:08', '', 0, '2017-11-15', 0, '2017-11-14');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(28, 1, 1, 550, '2017-11-03 09:28:49'),
(29, 2, 2, 3131, '2017-11-03 09:28:56'),
(30, 1, 3, 333, '2017-11-03 09:29:08'),
(31, 2, 4, 333, '2017-11-03 09:29:31'),
(35, 1, 123123, 33, '2017-11-03 11:12:57'),
(36, 2, 123123123, 3123, '2017-11-03 11:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Johor'),
(2, 'Kedah'),
(3, 'Kelantan'),
(4, 'Malacca'),
(5, 'Negeri Sembilan'),
(6, 'Pahang'),
(7, 'Penang'),
(8, 'Perak'),
(9, 'Perlis'),
(10, 'Selangor'),
(11, 'Terengganu'),
(12, 'Sabah'),
(13, 'Sarawak'),
(14, 'Federal Territory of Kuala Lumpur'),
(15, 'Federal Territory of Labuan'),
(16, 'Federal Territory of Putrajaya'),
(17, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 10, 'test@gmail.com', '', '', '', '2016-06-22 06:16:42'),
(2, 10, 'test@gmail.com', '', '', '', '2016-06-24 11:20:28'),
(4, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-24 11:22:47'),
(5, 10, 'test@gmail.com', 0x3a3a31, '', '', '2016-06-26 15:37:40'),
(6, 20, 'ajay@gmail.com', 0x3a3a31, '', '', '2016-06-26 16:40:57'),
(7, 10, 'test@gmail.com', 0x3a3a31, '', '', '2017-11-02 10:38:22'),
(8, 10, 'test@gmail.com', 0x3a3a31, '', '', '2017-11-02 10:40:13'),
(9, 21, '2@gmail.com', 0x3a3a31, '', '', '2017-11-03 08:05:53'),
(10, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-03 09:35:27'),
(11, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-03 09:54:18'),
(12, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-03 10:03:00'),
(13, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-03 10:08:00'),
(14, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-03 10:10:54'),
(15, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-03 10:12:04'),
(16, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-03 10:28:32'),
(17, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-03 10:29:20'),
(18, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-03 10:29:31'),
(19, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-03 10:44:38'),
(20, 24, '3@gmail.com', 0x3a3a31, '', '', '2017-11-03 10:47:08'),
(21, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-03 10:57:11'),
(22, 24, '3@gmail.com', 0x3a3a31, '', '', '2017-11-03 10:59:14'),
(23, 24, '3@gmail.com', 0x3a3a31, '', '', '2017-11-03 11:05:17'),
(24, 24, '3@gmail.com', 0x3a3a31, '', '', '2017-11-03 11:13:20'),
(25, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-03 11:14:31'),
(26, 24, '3@gmail.com', 0x3a3a31, '', '', '2017-11-03 11:24:31'),
(27, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-06 06:08:23'),
(28, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-06 06:12:48'),
(29, 22, '2@gmail.com', 0x3a3a31, '', '', '2017-11-06 06:14:49'),
(30, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-06 06:15:47'),
(31, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-06 06:17:33'),
(32, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-06 06:21:13'),
(33, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-06 06:21:57'),
(34, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-06 06:28:18'),
(35, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-06 06:28:34'),
(36, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-06 06:29:39'),
(37, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-06 06:46:48'),
(38, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-06 06:51:03'),
(39, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-06 07:11:33'),
(40, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-06 09:48:40'),
(41, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-06 10:20:44'),
(42, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-07 08:49:25'),
(43, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-07 10:11:11'),
(44, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-07 10:11:41'),
(45, 26, '5@gmail.com', 0x3a3a31, '', '', '2017-11-07 10:13:05'),
(46, 29, '7@gmail.com', 0x3a3a31, '', '', '2017-11-07 10:35:55'),
(47, 29, '7@gmail.com', 0x3a3a31, '', '', '2017-11-07 10:37:33'),
(48, 30, '5@gmail.com', 0x3a3a31, '', '', '2017-11-07 10:44:44'),
(49, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-07 16:53:50'),
(50, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-07 16:54:20'),
(51, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-07 16:54:54'),
(52, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-07 16:59:30'),
(53, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-07 17:00:15'),
(54, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-07 17:00:36'),
(55, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-07 17:01:06'),
(56, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-07 17:01:26'),
(57, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-07 17:04:24'),
(58, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-07 18:55:39'),
(59, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-07 18:59:29'),
(60, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-08 08:22:47'),
(61, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-08 14:35:48'),
(62, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-08 14:41:56'),
(63, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-08 14:42:26'),
(64, 25, '4@gmail.com', 0x3a3a31, '', '', '2017-11-08 14:43:10'),
(65, 31, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 14:57:22'),
(66, 31, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 15:08:43'),
(67, 31, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 15:15:33'),
(68, 31, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 16:15:03'),
(69, 32, 'hcz931030@gmai.com', 0x3a3a31, '', '', '2017-11-08 16:49:43'),
(70, 33, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 17:23:53'),
(71, 34, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 17:24:34'),
(72, 34, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 17:39:25'),
(73, 34, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 17:46:38'),
(74, 34, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 18:34:21'),
(75, 34, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 18:36:36'),
(76, 35, '10@gmail.com', 0x3a3a31, '', '', '2017-11-08 18:41:05'),
(77, 35, '10@gmail.com', 0x3a3a31, '', '', '2017-11-08 18:47:20'),
(78, 34, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 18:50:59'),
(79, 34, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 18:56:39'),
(80, 34, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 19:00:30'),
(81, 34, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 19:06:48'),
(82, 34, 'hcz931030@gmail.com', 0x3a3a31, '', '', '2017-11-08 19:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `studentid` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `studentid`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updateDate`, `passUdateDate`) VALUES
(22, '100070579', 'hi', 'hi', 'hi', 'male', 0, '2@gmail.com', '2', '2017-11-03 09:35:21', '03-11-2017 03:43:54', '03-11-2017 04:03:51'),
(24, '12312', 'we', 'qwe', 'ewqe', 'female', 123, '3@gmail.com', '3', '2017-11-03 10:47:04', '', ''),
(25, '123i2301323323', 'hss', 'ihsih', 'sisi', 'others', 213, '4@gmail.com', '4', '2017-11-06 06:15:43', '06-11-2017 11:52:01', ''),
(30, '1231', '2asd', 'asd', 'asd', 'female', 213, '5@gmail.com', '5', '2017-11-07 10:44:39', '', ''),
(34, 'asdas', 'asdd', 'asd', 'asd', 'female', 213, 'hcz931030@gmail.com', '123', '2017-11-08 17:24:30', '', ''),
(35, 'sd', 'asd', 'adas', 'dasd', 'female', 123, '10@gmail.com', '10', '2017-11-08 18:40:57', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
