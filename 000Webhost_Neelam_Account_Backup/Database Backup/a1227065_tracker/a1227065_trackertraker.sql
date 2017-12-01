-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 09, 2017 at 06:38 AM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a1227065_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `AreaMaster`
--

CREATE TABLE `AreaMaster` (
  `AutoId` int(255) NOT NULL AUTO_INCREMENT,
  `AreaId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `AreaName` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `CityId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`AutoId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `AreaMaster`
--

INSERT INTO `AreaMaster` VALUES(1, 'SEC12GURHAR91', 'SEC-12', 'GURHAR91');

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `AutoId` int(255) NOT NULL AUTO_INCREMENT,
  `CategoryId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `CategoryName` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`AutoId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` VALUES(1, 'cat101', 'Harassment');
INSERT INTO `Category` VALUES(2, 'cat102', 'Corruption');
INSERT INTO `Category` VALUES(3, 'cat103', 'Domestic Violence');
INSERT INTO `Category` VALUES(4, 'cat104', 'Other Illegal Offence');

-- --------------------------------------------------------

--
-- Table structure for table `CityMaster`
--

CREATE TABLE `CityMaster` (
  `AutoId` int(255) NOT NULL AUTO_INCREMENT,
  `citycode` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `cityname` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `stateId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`AutoId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `CityMaster`
--

INSERT INTO `CityMaster` VALUES(1, 'LUDPUN91', 'Ludhiana', 'PUN91');
INSERT INTO `CityMaster` VALUES(2, 'AMRPUB91', 'Amritsar', 'PUN91');
INSERT INTO `CityMaster` VALUES(3, 'JALPUB91', 'Jalandhar', 'PUN91');
INSERT INTO `CityMaster` VALUES(4, 'GURHAR91', 'Gurgaon', 'HAR91');
INSERT INTO `CityMaster` VALUES(5, 'KARHAR91', 'Karnal', 'HAR91');
INSERT INTO `CityMaster` VALUES(6, 'FARHAR91', 'Faridabad', 'HAR91');
INSERT INTO `CityMaster` VALUES(7, 'LUCUP91', 'Lucknow', 'UP91');
INSERT INTO `CityMaster` VALUES(8, 'KANUP91', 'Kanpur', 'UP91');
INSERT INTO `CityMaster` VALUES(9, 'MATUP91', 'Mathura', 'UP91');

-- --------------------------------------------------------

--
-- Table structure for table `friendsRelation`
--

CREATE TABLE `friendsRelation` (
  `friend_one` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `friend_two` varchar(20) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `status` enum('0','1','2') COLLATE latin1_general_ci DEFAULT '0',
  PRIMARY KEY (`friend_one`,`friend_two`),
  KEY `friend_two` (`friend_two`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `friendsRelation`
--

INSERT INTO `friendsRelation` VALUES('1349892928384398', '1383220738471164', '0');
INSERT INTO `friendsRelation` VALUES('1349892928384398', '1243746429030885', '0');
INSERT INTO `friendsRelation` VALUES('1243746429030885', '1383220738471164', '1');

-- --------------------------------------------------------

--
-- Table structure for table `InfoMaster`
--

CREATE TABLE `InfoMaster` (
  `AutoId` int(255) NOT NULL AUTO_INCREMENT,
  `InfoId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `AreaId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `CatId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Message` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Name` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `PhoneNumber` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `DateTime` datetime NOT NULL,
  `deviceID` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Approvalstatus` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`AutoId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=94 ;

--
-- Dumping data for table `InfoMaster`
--

INSERT INTO `InfoMaster` VALUES(36, 'GB220835', 'SEC12GURHAR91', 'cat104', 'HR rjjr', '', '', '0000-00-00 00:00:00', 'b45803cc7824caad', 'A');
INSERT INTO `InfoMaster` VALUES(37, 'GB230836', 'SEC12GURHAR91', 'cat103', 'cgvjvucuv', '', '', '2016-08-23 11:54:34', 'b45803cc7824caad', 'R');
INSERT INTO `InfoMaster` VALUES(38, 'GB230837', 'SEC12GURHAR91', 'cat102', 'detatkgkfj', 'xhi', '68344456', '2016-08-23 12:24:50', '9c2cfc65d210c63f', 'A');
INSERT INTO `InfoMaster` VALUES(39, 'GB230838', 'SEC12GURHAR91', 'cat103', 'udu', 'gjyyh', '56563335', '2016-08-23 13:04:49', '9c2cfc65d210c63f', 'A');
INSERT INTO `InfoMaster` VALUES(40, 'GB230839', 'SEC12GURHAR91', 'cat103', 'udu', 'gjyyh', '56563335', '2016-08-23 13:08:17', '9c2cfc65d210c63f', 'A');
INSERT INTO `InfoMaster` VALUES(41, 'GB230840', 'SEC12GURHAR91', 'cat103', 'udu', 'gjyyh', '56563335', '2016-08-23 13:12:23', '9c2cfc65d210c63f', 'A');
INSERT INTO `InfoMaster` VALUES(42, 'GB230841', '', '', '', '', '', '2016-08-23 13:13:42', '9c2cfc65d210c63f', 'A');
INSERT INTO `InfoMaster` VALUES(43, 'GB230842', '', '', '', '', '', '2016-08-23 13:16:19', '9c2cfc65d210c63f', 'A');
INSERT INTO `InfoMaster` VALUES(44, 'GB230843', '', '', '', '', '', '2016-08-23 13:35:09', '9c2cfc65d210c63f', 'A');
INSERT INTO `InfoMaster` VALUES(45, 'GB230844', '', '', '', '', '', '2016-08-23 13:37:34', '9c2cfc65d210c63f', 'A');
INSERT INTO `InfoMaster` VALUES(46, 'GB230845', '', '', '', '', '', '2016-08-23 13:45:20', '9c2cfc65d210c63f', 'A');
INSERT INTO `InfoMaster` VALUES(47, 'GB230846', '', 'cat101', '', '', '', '2016-08-23 13:52:49', '9c2cfc65d210c63f', 'A');
INSERT INTO `InfoMaster` VALUES(48, 'GB230847', '', '', '', '', '', '2016-08-23 13:54:39', '9c2cfc65d210c63f', 'A');
INSERT INTO `InfoMaster` VALUES(49, 'GB230848', '', '', '', '', '', '2016-08-23 14:31:27', '9c2cfc65d210c63f', 'A');
INSERT INTO `InfoMaster` VALUES(50, 'GB230849', 'SEC12GURHAR91', 'cat102', 'here more corruption while make the road', 'slash sharm', '9718785822', '2016-08-23 15:09:32', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(51, 'GB230850', 'SEC12GURHAR91', 'cat103', 'hhg', '', '', '2016-08-23 15:24:50', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(52, 'GB230851', 'SEC12GURHAR91', 'cat101', 'gyyyv', '', '', '2016-08-23 15:28:27', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(53, 'GB230852', 'SEC12GURHAR91', 'cat103', 'ghfg', '', '', '2016-08-23 15:33:22', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(54, 'GB230853', '', '', '', '', '', '2016-08-23 15:34:41', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(55, 'GB230854', '', '', '', '', '', '2016-08-23 15:42:32', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(56, 'GB230855', '', '', '', '', '', '2016-08-23 15:43:46', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(57, 'GB230856', '', '', '', '', '', '2016-08-23 15:44:40', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(58, 'GB230857', 'SEC12GURHAR91', 'cat103', 'vvihhchc', '', '', '2016-08-23 15:46:35', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(59, 'GB230858', 'SEC12GURHAR91', 'cat103', 'gx hi ci', '', '', '2016-08-23 17:14:24', 'b45803cc7824caad', 'A');
INSERT INTO `InfoMaster` VALUES(60, 'GB230859', 'SEC12GURHAR91', 'cat103', 'mnm', '', '', '2016-08-23 18:52:08', '9c2cfc65d210c63f', 'A');
INSERT INTO `InfoMaster` VALUES(61, 'GB240860', 'SEC12GURHAR91', 'cat101', 'jfjjffjdjf', '', '', '2016-08-24 11:52:38', 'b45803cc7824caad', 'A');
INSERT INTO `InfoMaster` VALUES(62, 'GB240861', 'SEC12GURHAR91', 'cat101', 'jfjjffjdjf', '', '', '2016-08-24 11:53:44', 'b45803cc7824caad', 'A');
INSERT INTO `InfoMaster` VALUES(63, 'GB240862', 'SEC12GURHAR91', 'cat101', 'ydyfyddy', '', '', '2016-08-24 11:55:00', 'b45803cc7824caad', 'R');
INSERT INTO `InfoMaster` VALUES(64, 'GB240863', 'SEC12GURHAR91', 'cat103', 'vhjkkgyh', '', '', '2016-08-24 15:07:20', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(65, 'GB240864', 'SEC12GURHAR91', 'cat103', 'vhjkkgyh', '', '', '2016-08-24 15:07:41', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(66, 'GB240865', 'SEC12GURHAR91', 'cat103', 'vhjkkgyh', '', '', '2016-08-24 15:08:10', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(67, 'GB240866', 'SEC12GURHAR91', 'cat103', 'vhjkkgyh', '', '', '2016-08-24 15:08:22', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(68, 'GB240867', 'SEC12GURHAR91', 'cat103', 'vhjkkgyh', '', '', '2016-08-24 15:09:13', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(69, 'GB240868', 'SEC12GURHAR91', 'cat102', 'gg', '', '', '2016-08-24 15:09:30', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(70, 'GB240869', 'SEC12GURHAR91', 'cat102', 'xhxcviv', '', '', '2016-08-24 17:12:10', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(71, 'GB240870', 'SEC12GURHAR91', 'cat102', 'xhxcviv', '', '', '2016-08-24 17:12:28', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(72, 'GB240871', 'SEC12GURHAR91', 'cat102', 'xhxcviv', '', '', '2016-08-24 17:13:30', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(73, 'GB240872', 'SEC12GURHAR91', 'cat102', 'xhxcviv', '', '', '2016-08-24 17:16:31', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(74, 'GB250873', 'SEC12GURHAR91', 'cat103', 'thegggg\n\n\n', 'the\n', '', '2016-08-25 12:11:41', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(75, 'GB250874', 'SEC12GURHAR91', 'cat102', 'bhjk', '', '', '2016-08-25 15:22:33', 'b45803cc7824caad', 'A');
INSERT INTO `InfoMaster` VALUES(76, 'GB250875', 'SEC12GURHAR91', 'cat102', 'uhffu', '', '', '2016-08-25 15:34:38', 'b45803cc7824caad', 'A');
INSERT INTO `InfoMaster` VALUES(77, 'GB250876', 'SEC12GURHAR91', 'cat103', 'fghggj', '', '', '2016-08-25 15:37:25', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(78, 'GB250877', 'SEC12GURHAR91', 'cat103', 'hhn', '', '', '2016-08-25 15:39:27', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(79, 'GB250878', 'SEC12GURHAR91', 'cat102', 'ghff', '', '', '2016-08-25 15:49:30', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(80, 'GB250879', 'SEC12GURHAR91', 'cat102', 'yccyccy', '', '', '2016-08-25 15:51:14', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(81, 'GB250880', 'SEC12GURHAR91', 'cat103', 'hhfhfbbk', 'akadh', '5653245498', '2016-08-25 17:27:22', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(82, 'GB250881', 'SEC12GURHAR91', 'cat103', 'CT ghf', '', '', '2016-08-25 17:30:51', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(83, 'GB250882', 'SEC12GURHAR91', 'cat103', 'CT ghf', '', '', '2016-08-25 17:30:51', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(84, 'GB250883', 'SEC12GURHAR91', 'cat103', 'CT ghf', '', '', '2016-08-25 17:30:51', 'dbde9a4fd4133929', 'R');
INSERT INTO `InfoMaster` VALUES(85, 'GB250884', 'SEC12GURHAR91', 'cat103', 'CT ghf', '', '', '2016-08-25 17:34:23', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(86, 'GB250885', 'SEC12GURHAR91', 'cat103', 'hdgdf', '', '', '2016-08-25 17:37:17', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(87, 'GB250886', 'SEC12GURHAR91', 'cat103', 'CT ghf', '', '', '2016-08-25 17:30:51', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(88, 'GB260887', '', '', '', '', '', '2016-08-26 11:56:56', 'dbde9a4fd4133929', 'A');
INSERT INTO `InfoMaster` VALUES(89, 'GB260888', 'SEC12GURHAR91', 'cat104', 'illegal postitution ', '', '', '2016-08-26 14:43:56', 'dbde9a4fd4133929', 'P');
INSERT INTO `InfoMaster` VALUES(90, 'GB260889', 'SEC12GURHAR91', 'cat101', 'data gya', 'alas sharma', '9718785822', '2016-08-26 15:25:04', 'dbde9a4fd4133929', 'P');
INSERT INTO `InfoMaster` VALUES(91, 'GB310890', 'SEC12GURHAR91', 'cat102', 'more corrupted area', '', '', '2016-08-31 20:26:49', 'b45803cc7824caad', 'P');
INSERT INTO `InfoMaster` VALUES(92, 'GB010991', 'SEC12GURHAR91', 'cat102', 'adfre', '', '', '2016-09-01 13:28:18', 'b45803cc7824caad', 'P');
INSERT INTO `InfoMaster` VALUES(93, 'GB010992', 'SEC12GURHAR91', 'cat103', 'ret', '', '', '2016-09-01 13:36:29', 'b45803cc7824caad', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `MediaInfo`
--

CREATE TABLE `MediaInfo` (
  `AutoId` int(255) NOT NULL AUTO_INCREMENT,
  `InfoId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `MediaId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `MediaName` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`AutoId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=53 ;

--
-- Dumping data for table `MediaInfo`
--

INSERT INTO `MediaInfo` VALUES(16, 'GB230851', 'MI230815', 'uploads/20160823_150806.jpg');
INSERT INTO `MediaInfo` VALUES(37, '', 'MI260836', 'uploads/');
INSERT INTO `MediaInfo` VALUES(14, 'GB230850', 'MI230813', 'uploads/20160823_150806.jpg');
INSERT INTO `MediaInfo` VALUES(12, 'GB230849', 'MI230811', 'uploads/20160823_150806.jpg');
INSERT INTO `MediaInfo` VALUES(11, 'GB230849', 'MI230810', 'uploads/20160823_130430.jpg');
INSERT INTO `MediaInfo` VALUES(10, 'GB230849', 'MI2308', 'uploads/20160823_143112.jpg');
INSERT INTO `MediaInfo` VALUES(17, 'GB230852', 'MI230816', 'uploads/20160823_150806.jpg');
INSERT INTO `MediaInfo` VALUES(18, 'GB230853', 'MI230817', 'uploads/20160823_150806.jpg');
INSERT INTO `MediaInfo` VALUES(36, 'GB250883', 'MI250835', 'uploads/20160825_172700.jpg');
INSERT INTO `MediaInfo` VALUES(20, 'GB230854', 'MI230819', 'uploads/20160823_150806.jpg');
INSERT INTO `MediaInfo` VALUES(21, 'GB230855', 'MI230820', 'uploads/20160823_150806.jpg');
INSERT INTO `MediaInfo` VALUES(22, 'GB230856', 'MI230821', 'uploads/20160823_150806.jpg');
INSERT INTO `MediaInfo` VALUES(35, '', 'MI250834', 'uploads/');
INSERT INTO `MediaInfo` VALUES(24, 'GB230859', 'MI230823', 'uploads/20160823_143112.jpg');
INSERT INTO `MediaInfo` VALUES(25, 'GB230859', 'MI230824', 'uploads/20160823_130430.jpg');
INSERT INTO `MediaInfo` VALUES(34, '', 'MI250833', 'uploads/');
INSERT INTO `MediaInfo` VALUES(27, 'GB240862', 'MI240826', 'uploads/20160821_084253.jpg');
INSERT INTO `MediaInfo` VALUES(33, '', 'MI250827', 'uploads/');
INSERT INTO `MediaInfo` VALUES(38, '', 'MI260837', 'uploads/');
INSERT INTO `MediaInfo` VALUES(39, 'GB310890', 'MI310838', 'uploads/20160831_191938.jpg');
INSERT INTO `MediaInfo` VALUES(40, 'GB010991', 'MI010939', 'uploads/20160831_191924.jpg');
INSERT INTO `MediaInfo` VALUES(41, 'GB010992', 'MI010940', 'uploads/20160901_133531.jpg');
INSERT INTO `MediaInfo` VALUES(42, '', 'MI220941', 'uploads/');
INSERT INTO `MediaInfo` VALUES(43, '', 'MI131042', 'uploads/20160904_202921.jpg');
INSERT INTO `MediaInfo` VALUES(44, '', 'MI131043', 'uploads/20160917_225538.jpg');
INSERT INTO `MediaInfo` VALUES(45, '', 'MI131044', 'uploads/20160904_202921.jpg');
INSERT INTO `MediaInfo` VALUES(46, '', 'MI131045', 'uploads/20160917_225538.jpg');
INSERT INTO `MediaInfo` VALUES(47, '', 'MI131046', 'uploads/20160724_151612.jpg');
INSERT INTO `MediaInfo` VALUES(48, '', 'MI131047', 'uploads/20160724_151739.jpg');
INSERT INTO `MediaInfo` VALUES(49, '', 'MI131048', 'uploads/20160724_151753.jpg');
INSERT INTO `MediaInfo` VALUES(50, '', 'MI140149', 'uploads/');
INSERT INTO `MediaInfo` VALUES(51, '', 'MI140150', 'uploads/');
INSERT INTO `MediaInfo` VALUES(52, '', 'MI140151', 'uploads/');

-- --------------------------------------------------------

--
-- Table structure for table `OlaUser`
--

CREATE TABLE `OlaUser` (
  `auoId` int(255) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `latitude` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `longitude` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `DateTime` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`auoId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=91 ;

--
-- Dumping data for table `OlaUser`
--

INSERT INTO `OlaUser` VALUES(1, '1349892928384398', '28.4694346', '77.0346773', '2017-01-26 10:02:29.000');
INSERT INTO `OlaUser` VALUES(2, '1383220738471164', '28.4185553', '77.0523537', '2016-10-19 11:49:59.000');
INSERT INTO `OlaUser` VALUES(10, '', '', '', '');
INSERT INTO `OlaUser` VALUES(9, '', '', '', '');
INSERT INTO `OlaUser` VALUES(8, '', '', '', '');
INSERT INTO `OlaUser` VALUES(7, '', '', '', '');
INSERT INTO `OlaUser` VALUES(11, '', '', '', '');
INSERT INTO `OlaUser` VALUES(12, '', '', '', '');
INSERT INTO `OlaUser` VALUES(13, '', '', '', '');
INSERT INTO `OlaUser` VALUES(14, '', '', '', '');
INSERT INTO `OlaUser` VALUES(15, '', '', '', '');
INSERT INTO `OlaUser` VALUES(16, '', '', '', '');
INSERT INTO `OlaUser` VALUES(17, '', '', '', '');
INSERT INTO `OlaUser` VALUES(18, '', '', '', '');
INSERT INTO `OlaUser` VALUES(19, '', '', '', '');
INSERT INTO `OlaUser` VALUES(20, '', '', '', '');
INSERT INTO `OlaUser` VALUES(21, '', '', '', '');
INSERT INTO `OlaUser` VALUES(22, '', '', '', '');
INSERT INTO `OlaUser` VALUES(23, '', '', '', '');
INSERT INTO `OlaUser` VALUES(24, '', '', '', '');
INSERT INTO `OlaUser` VALUES(25, '', '', '', '');
INSERT INTO `OlaUser` VALUES(26, '', '', '', '');
INSERT INTO `OlaUser` VALUES(27, '', '', '', '');
INSERT INTO `OlaUser` VALUES(28, '', '', '', '');
INSERT INTO `OlaUser` VALUES(29, '', '', '', '');
INSERT INTO `OlaUser` VALUES(30, '', '', '', '');
INSERT INTO `OlaUser` VALUES(31, '', '', '', '');
INSERT INTO `OlaUser` VALUES(32, '', '', '', '');
INSERT INTO `OlaUser` VALUES(33, '', '', '', '');
INSERT INTO `OlaUser` VALUES(34, '', '', '', '');
INSERT INTO `OlaUser` VALUES(35, '', '', '', '');
INSERT INTO `OlaUser` VALUES(36, '', '', '', '');
INSERT INTO `OlaUser` VALUES(37, '', '', '', '');
INSERT INTO `OlaUser` VALUES(38, '', '', '', '');
INSERT INTO `OlaUser` VALUES(39, 'GB2609b3', '28.4184183', '77.0523736', '2016-12-12 18:06:50.000');
INSERT INTO `OlaUser` VALUES(40, '', '', '', '');
INSERT INTO `OlaUser` VALUES(41, '', '', '', '');
INSERT INTO `OlaUser` VALUES(42, '', '', '', '');
INSERT INTO `OlaUser` VALUES(43, '', '', '', '');
INSERT INTO `OlaUser` VALUES(44, '', '', '', '');
INSERT INTO `OlaUser` VALUES(45, '1781461802074367', '28.4186364', '77.0522638', '2016-10-12 13:04:49.000');
INSERT INTO `OlaUser` VALUES(46, '', '', '', '');
INSERT INTO `OlaUser` VALUES(47, '', '', '', '');
INSERT INTO `OlaUser` VALUES(48, '1383220738471164', '28.4185553', '77.0523537', '2016-10-19 11:49:59.000');
INSERT INTO `OlaUser` VALUES(49, '1383220738471164', '28.4185553', '77.0523537', '2016-10-19 11:49:59.000');
INSERT INTO `OlaUser` VALUES(50, '', '', '', '');
INSERT INTO `OlaUser` VALUES(51, '', '', '', '');
INSERT INTO `OlaUser` VALUES(52, '', '', '', '');
INSERT INTO `OlaUser` VALUES(53, '', '', '', '');
INSERT INTO `OlaUser` VALUES(54, '', '', '', '');
INSERT INTO `OlaUser` VALUES(55, '', '', '', '');
INSERT INTO `OlaUser` VALUES(56, '', '', '', '');
INSERT INTO `OlaUser` VALUES(57, '', '', '', '');
INSERT INTO `OlaUser` VALUES(58, '1243746429030885', '28.5046678', '77.0882668', '2016-10-14 15:45:18.000');
INSERT INTO `OlaUser` VALUES(59, '', '', '', '');
INSERT INTO `OlaUser` VALUES(60, '', '', '', '');
INSERT INTO `OlaUser` VALUES(61, '', '', '', '');
INSERT INTO `OlaUser` VALUES(62, '', '', '', '');
INSERT INTO `OlaUser` VALUES(63, '', '', '', '');
INSERT INTO `OlaUser` VALUES(64, '', '', '', '');
INSERT INTO `OlaUser` VALUES(65, '', '', '', '');
INSERT INTO `OlaUser` VALUES(66, '', '', '', '');
INSERT INTO `OlaUser` VALUES(67, '', '', '', '');
INSERT INTO `OlaUser` VALUES(68, '', '', '', '');
INSERT INTO `OlaUser` VALUES(69, '', '', '', '');
INSERT INTO `OlaUser` VALUES(70, '', '', '', '');
INSERT INTO `OlaUser` VALUES(73, '', '', '', '');
INSERT INTO `OlaUser` VALUES(72, '', '', '', '');
INSERT INTO `OlaUser` VALUES(71, '', '', '', '');
INSERT INTO `OlaUser` VALUES(74, '', '', '', '');
INSERT INTO `OlaUser` VALUES(75, '', '', '', '');
INSERT INTO `OlaUser` VALUES(76, '', '', '', '');
INSERT INTO `OlaUser` VALUES(77, '', '', '', '');
INSERT INTO `OlaUser` VALUES(78, '', '', '', '');
INSERT INTO `OlaUser` VALUES(79, '', '', '', '');
INSERT INTO `OlaUser` VALUES(80, '', '', '', '');
INSERT INTO `OlaUser` VALUES(81, '', '', '', '');
INSERT INTO `OlaUser` VALUES(82, '', '', '', '');
INSERT INTO `OlaUser` VALUES(83, '', '', '', '');
INSERT INTO `OlaUser` VALUES(84, '', '', '', '');
INSERT INTO `OlaUser` VALUES(85, '', '', '', '');
INSERT INTO `OlaUser` VALUES(86, '', '', '', '');
INSERT INTO `OlaUser` VALUES(87, '', '', '', '');
INSERT INTO `OlaUser` VALUES(88, '', '', '', '');
INSERT INTO `OlaUser` VALUES(89, '', '', '', '');
INSERT INTO `OlaUser` VALUES(90, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ReporterMaster`
--

CREATE TABLE `ReporterMaster` (
  `AutoId` int(255) NOT NULL,
  `userId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Username` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `passowrd` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `AreaId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `ApplicationId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`AutoId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `ReporterMaster`
--

INSERT INTO `ReporterMaster` VALUES(0, 'REP101', 'Raja Ram', '123', 'SEC12GURHAR91', '');

-- --------------------------------------------------------

--
-- Table structure for table `SpeakRegistration`
--

CREATE TABLE `SpeakRegistration` (
  `AutoId` int(255) NOT NULL AUTO_INCREMENT,
  `DeviceId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `UserId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `UserName` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `AppId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `dateTime` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `MobileNumber` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `profileImageUrl` varchar(1000) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`AutoId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `SpeakRegistration`
--

INSERT INTO `SpeakRegistration` VALUES(1, 'b45803cc7824caad', '1383220738471164', 'Akash Sharma', 'APA91bEWFsVZytL8Y4IrXAv8RkREfQs4_PH7DEeuNAxkWetxnH-uC2BaFNBY4_jgCGilSs_ZtqcbwSQ4sCHeFhiLE4mt3kVfZMcDBy_UA-ss0XB9CBWBpa0ncq4wjS-LFB7GXgrRqlD4rmiUTFk-B20mtyrFqfEKiw', '2016-10-07 11:48:54.000', '', 'https://scontent.xx.fbcdn.net/v/t1.0-1/c0.4.100.100/p100x100/1937479_572027966257116_7133499862081641123_n.jpg?oh=33d7237326a01894bf51dec303398a6d&oe=58AB80B3');
INSERT INTO `SpeakRegistration` VALUES(2, '9c2cfc65d210c63f', '1349892928384398', 'Alok Shukla', 'APA91bGv0DAmWILebIGyAx8LKF4XIGTwo2mC7K8_y3iIVAnPcS8GGlo4Wvf2RvdjzT4M9GPd5PuV9XPIr-K9Mt5bTr9lI0VeKc9LgbcIpJIreVslAU_nxO_GfJDuORc2CdFQCB2OjFfpXRaJ0Fgp6JZbecSiSLnQtQ', '2016-10-07 11:50:16.000', '', 'https://scontent.xx.fbcdn.net/v/t1.0-1/c18.18.231.231/s100x100/558134_527801783926854_256386364_n.jpg?oh=1a859b3cbb53fadef225a285b210149b&oe=5862BE6B');
INSERT INTO `SpeakRegistration` VALUES(3, 'd1c5e2614169801f', '1243746429030885', 'Shyam Sundar', 'APA91bGEZU8j9TJTPssS9FYRhcT6_EhRr99XnXyS18yZotbM1mNqjkD6Now2nilRSRNkFl3vDw0ugtJVTro2mdv73Ix8hAd2WK96Vez_lqWAhXe_sFr8T39u4_o0zMMEEC9GM9gehwaCGBgMttMobSz9kJ5Iur1NPA', '2016-10-10 21:31:33.000', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/c0.15.100.100/p100x100/248043_344090265663177_232046131_n.jpg?oh=6fbe67b59c0c78e7cb0a8a2525566229&oe=58A031AC&__gda__=1487449399_0e72361b6f05239dc375e908f1ea0aba');

-- --------------------------------------------------------

--
-- Table structure for table `StateMaster`
--

CREATE TABLE `StateMaster` (
  `AutoId` int(255) NOT NULL AUTO_INCREMENT,
  `StateCode` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `CountryCode` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `StateName` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`AutoId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `StateMaster`
--

INSERT INTO `StateMaster` VALUES(1, 'PUN91', '91', 'Punjab');
INSERT INTO `StateMaster` VALUES(2, 'HAR91', '91', 'Haryana');
INSERT INTO `StateMaster` VALUES(3, 'UP91', '91', 'Uttar Pradesh');
