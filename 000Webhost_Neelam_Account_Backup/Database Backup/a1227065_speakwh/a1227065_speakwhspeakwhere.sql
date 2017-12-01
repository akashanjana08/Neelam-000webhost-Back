-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 09, 2017 at 05:09 AM
-- Server version: 5.1.57
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `a1227065_speakwh`
--

-- --------------------------------------------------------

--
-- Table structure for table `GiftCatagories`
--

CREATE TABLE `GiftCatagories` (
  `catagoryId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `catagoryName` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `activeStatus` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`catagoryId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `GiftCatagories`
--

INSERT INTO `GiftCatagories` VALUES('GC101', 'Chocolates Gifts', 'Y');
INSERT INTO `GiftCatagories` VALUES('GC102', 'Decorative Thali', 'Y');
INSERT INTO `GiftCatagories` VALUES('GC103', 'Handicrafts gifts', 'Y');
INSERT INTO `GiftCatagories` VALUES('GC104', 'bounch', 'Y');
INSERT INTO `GiftCatagories` VALUES('GC105', 'Decorative Basket', 'Y');
INSERT INTO `GiftCatagories` VALUES('GC106', 'Glasses', 'Y');
INSERT INTO `GiftCatagories` VALUES('GC107', 'Pepper Bags', 'Y');
INSERT INTO `GiftCatagories` VALUES('GC108', 'Ring Tray', 'Y');
INSERT INTO `GiftCatagories` VALUES('GC109', 'Sugar crash', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `GiftProductMaster`
--

CREATE TABLE `GiftProductMaster` (
  `AutoId` int(255) NOT NULL AUTO_INCREMENT,
  `productCode` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `productName` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `imageUrl` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `productDescription` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `productCost` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `productDiscount` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `productCatagoryId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `Rating` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `dateTime` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `ActiveStatus` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`productCode`,`AutoId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `GiftProductMaster`
--

INSERT INTO `GiftProductMaster` VALUES(1, 'GP101', 'Chocholates Gift', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco1.jpg', 'Chocholates with Gift Pack', '150', '5', 'GC101', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GP102', 'Only chocholates', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco2.jpg', 'Chocholates Without gift Pack', '150', '5', 'GC101', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(2, 'GP103', 'Candy', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco3.jpg', 'chocholates And Gift box both', '150', '5', 'GC101', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(3, 'GP104', 'Dry Fruit Thali', 'http://bloodtrackerplus.in/GiftsImages/tryandthali/thaliandtray.jpg', 'only chocholates', '150', '5', 'GC102', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GP105', 'Puja Thali', 'http://bloodtrackerplus.in/GiftsImages/tryandthali/GoldenStonePujaThali.jpg', 'Puja Thali', '150', '5', 'GC102', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(2, 'GP117', 'Decorative Baskets', 'http://bloodtrackerplus.in/GiftsImages/handicraftGift/BoatBasket.jpg', 'Decorative Baskets', '150', '5', 'GC103', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(3, 'GP106', 'Decorative Saree Tray', 'http://bloodtrackerplus.in/GiftsImages/handicraftGift/SilverSareeTrayRactangle.jpg', 'Decorative Saree Tray', '150', '5', 'GC103', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(4, 'GP107', 'Decorative Bunches', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco1.jpg', 'Decorative Bunches', '150', '5', 'GC103', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GP108', 'Decorative Diyas', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco1.jpg', 'Decorative Diyas', '150', '5', 'GC103', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GP109', 'Decorative Candles', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco1.jpg', 'Decorative Candles', '150', '5', 'GC103', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GP110', 'Decorative Glass Jar', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco1.jpg', 'Decorative Glass Jar', '150', '5', 'GC103', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GP111', 'Decorative Rings Tray', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco1.jpg', 'Decorative Rings Tray', '150', '5', 'GC103', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GP112', 'Decorative Paper Bags', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco1.jpg', 'Decorative Paper Bags', '150', '5', 'GC103', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GP113', 'Decorative Bandanbar', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco1.jpg', 'Decorative Bandanbar', '150', '5', 'GC103', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GP114', 'Decorative Platter', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco1.jpg', 'Decorative Platter', '150', '5', 'GC103', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GP115', 'Decorative Envolpe', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco1.jpg', 'Decorative Envolpe', '150', '5', 'GC103', '3.5', '2016-10-12', 'N');
INSERT INTO `GiftProductMaster` VALUES(1, 'GP116', 'Decorative Pen Holders', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco1.jpg', 'Decorative Pen Holders', '150', '5', 'GC103', '3.5', '2016-10-12', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPB101', 'Pink and White bunch', 'http://bloodtrackerplus.in/GiftsImages/bounch/Pink_and_White%20bunch.jpg', 'Pink and White bunch', '150', '5', 'GC104', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPB102', 'Purple Bunch', 'http://bloodtrackerplus.in/GiftsImages/bounch/Purple_Bunch.jpg', 'Purple Bunch', '150', '5', 'GC104', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPDB101', 'Boat Basket', 'http://bloodtrackerplus.in/GiftsImages/DecorativeBasket/BoatBasket.jpg', 'Boat Basket', '150', '5', 'GC105', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPDB102', 'Brown Basket', 'http://bloodtrackerplus.in/GiftsImages/DecorativeBasket/BrownBasket.jpg', 'Brown Basket', '150', '5', 'GC105', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPDB103', 'Gray Flower Basket', 'http://bloodtrackerplus.in/GiftsImages/DecorativeBasket/GrayFlowerBasket.jpg', 'GrayFlowerBasket', '150', '5', 'GC105', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPDB104', 'Pearl Basket', 'http://bloodtrackerplus.in/GiftsImages/DecorativeBasket/pearlBasket.jpg', 'Pearl Basket', '150', '5', 'GC105', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPDB105', 'Pepper Bsket', 'http://bloodtrackerplus.in/GiftsImages/DecorativeBasket/pepperBsket.jpg', 'Pepper Bsket', '150', '5', 'GC105', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPDB106', 'Purpleriben Basket', 'http://bloodtrackerplus.in/GiftsImages/DecorativeBasket/PurpleribenBaket.jpg', 'Purpleriben Basket', '150', '5', 'GC105', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPG101', 'Robestyle Glass', 'http://bloodtrackerplus.in/GiftsImages/Glasses/robestyleGlass.jpg', 'Robestyle Glass', '150', '5', 'GC106', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPG102', 'Red Rose Glass', 'http://bloodtrackerplus.in/GiftsImages/Glasses/RedRoseGlass.jpg', 'RedRoseGlass', '150', '5', 'GC106', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPG103', 'Pink Rose Glasses', 'http://bloodtrackerplus.in/GiftsImages/Glasses/PinkroseGlasses.jpg', 'PinkroseGlasses', '150', '5', 'GC106', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPG104', 'Couple styel Glass', 'http://bloodtrackerplus.in/GiftsImages/Glasses/couplestyelGlass1.jpg', 'couplestyelGlass1', '150', '5', 'GC106', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPG105', 'Couple Style Glass', 'http://bloodtrackerplus.in/GiftsImages/Glasses/CouplestyleGlass2.jpg', 'CouplestyleGlass2', '150', '5', 'GC106', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPPB101', 'Doll Printed Pepper Bag', 'http://bloodtrackerplus.in/GiftsImages/PepperBags/dollPrintedPepper20Bag.jpg', 'Doll Printed Pepper Bag', '150', '5', 'GC107', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPPB102', 'Frock Style Peperbeg', 'http://bloodtrackerplus.in/GiftsImages/PepperBags/frockstylePeperbeg.jpg', 'frockstylePeperbeg', '150', '5', 'GC107', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPPB103', 'Lady Pusre Style PaperBeg', 'http://bloodtrackerplus.in/GiftsImages/PepperBags/LadyPusreStylePaperBeg.jpg', 'LadyPusreStylePaperBeg', '150', '5', 'GC107', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPPB104', 'owl Paper Bages', 'http://bloodtrackerplus.in/GiftsImages/PepperBags/owlPaperBages.jpg', 'owlPaperBages', '150', '5', 'GC107', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPRT101', 'Couple Ring Tray', 'http://bloodtrackerplus.in/GiftsImages/RingTray/CoupleRingTray.jpg', 'CoupleRingTray', '150', '5', 'GC108', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPRT102', 'Golden Ring Tray', 'http://bloodtrackerplus.in/GiftsImages/RingTray/Golden Ring Tray.jpg', 'Golden Ring Tray', '150', '5', 'GC108', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPRT103', 'Pink Ring box tray', 'http://bloodtrackerplus.in/GiftsImages/RingTray/PinkRingboxtray.jpg', 'Pink Ring box tray', '150', '5', 'GC108', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPRT104', 'Silver Box Ring Tray', 'http://bloodtrackerplus.in/GiftsImages/RingTray/SilverBoxRingTray.jpg', 'Silver Box Ring Tray', '150', '5', 'GC108', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPRT105', 'Blue Saree tray Ractangle', 'http://bloodtrackerplus.in/GiftsImages/RingTray/BlueSareetrayRactangle.jpg', 'BlueSareetrayRactangle', '150', '5', 'GC108', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPRT106', 'CornerFlowerSareetray', 'http://bloodtrackerplus.in/GiftsImages/RingTray/CornerFlowerSareetray.jpg', 'CornerFlowerSareetray', '150', '5', 'GC108', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPRT107', 'Cornner Design red saree Tray Rectangle', 'http://bloodtrackerplus.in/GiftsImages/RingTray/CornnerDesignredsareeTrayRectangle.jpg', 'CornnerDesignredsareeTrayRectangle', '150', '5', 'GC108', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPRT108', 'Dark pink puja thali', 'http://bloodtrackerplus.in/GiftsImages/RingTray/darkpinkpujathali.jpg', 'darkpinkpujathali', '150', '5', 'GC108', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPRT109', 'Golden Flower Red saree Tray', 'http://bloodtrackerplus.in/GiftsImages/RingTray/goldenFlowerRedsareetrY.jpg', '	goldenFlowerRedsareetrY', '150', '5', 'GC108', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPRT110', 'Maroon Saree tray circle', 'http://bloodtrackerplus.in/GiftsImages/RingTray/maroonSareetraycircle.jpg', 'maroonSareetraycircle', '150', '5', 'GC108', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPSC101', 'Chocholate Dip Almonds', 'http://bloodtrackerplus.in/GiftsImages/Sugarcrash/ChocholateDipAlmonds.jpg', 'ChocholateDipAlmonds', '150', '5', 'GC109', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPSC102', 'Chocholates Lollipop', 'http://bloodtrackerplus.in/GiftsImages/Sugarcrash/ChocholatesLollipop.jpg', 'ChocholatesLollipop', '150', '5', 'GC109', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPSC103', 'Chocholates Lollipos', 'http://bloodtrackerplus.in/GiftsImages/Sugarcrash/ChocholatesLollipos.jpg', 'ChocholatesLollipos', '150', '5', 'GC109', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPSC104', 'Multi Color Sugar Lolipop', 'http://bloodtrackerplus.in/GiftsImages/Sugarcrash/MultiColorSugarLolipop.jpg', 'MultiColorSugarLolipop', '150', '5', 'GC109', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPSC105', 'Spoon Jelly', 'http://bloodtrackerplus.in/GiftsImages/Sugarcrash/SpoonJelly.jpg', 'SpoonJelly', '150', '5', 'GC109', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPSC106', 'Sugar Lolipop', 'http://bloodtrackerplus.in/GiftsImages/Sugarcrash/SugarLolipop.jpg', 'SugarLolipop', '150', '5', 'GC109', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPC104', 'BrownBox', 'http://bloodtrackerplus.in/GiftsImages/chocolate/BrownBox.jpg', 'BrownBox', '150', '5', 'GC101', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPC105', 'ChocholateCup', 'http://bloodtrackerplus.in/GiftsImages/chocolate/ChocholateCup.jpg', 'ChocholateCup', '150', '5', 'GC101', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPC106', 'Chocholates Dip Dry Fruits', 'http://bloodtrackerplus.in/GiftsImages/chocolate/ChocholatesDipDryFruits.jpg', 'ChocholatesDipDryFruits', '150', '5', 'GC101', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPC107', 'Chocholetsballs', 'http://bloodtrackerplus.in/GiftsImages/chocolate/Chocholetsballs.jpg', 'Chocholetsballs', '150', '5', 'GC101', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPC108', 'ChoclatesCranchyCup', 'http://bloodtrackerplus.in/GiftsImages/chocolate/ChoclatesCranchyCup.jpg', 'ChoclatesCranchyCup', '150', '5', 'GC101', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPC109', 'Multi Shape Chocholate Piece', 'http://bloodtrackerplus.in/GiftsImages/chocolate/MultiShapeChocholatePiece.jpg', 'MultiShapeChocholatePiece', '150', '5', 'GC101', '3.5', '2016-10-21', 'Y');
INSERT INTO `GiftProductMaster` VALUES(1, 'GPC110', 'Red Heart', 'http://bloodtrackerplus.in/GiftsImages/chocolate/RedHeart.jpg', 'RedHeart', '150', '5', 'GC101', '3.5', '2016-10-21', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `ProductImages`
--

CREATE TABLE `ProductImages` (
  `AutoId` int(255) NOT NULL AUTO_INCREMENT,
  `productId` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `profileImageUrl` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`AutoId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `ProductImages`
--

INSERT INTO `ProductImages` VALUES(1, 'GP101', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco2.jpg');
INSERT INTO `ProductImages` VALUES(2, 'GP101', 'http://bloodtrackerplus.in/GiftsImages/chocolate/choco1.jpg');
INSERT INTO `ProductImages` VALUES(3, 'GP104', 'http://bloodtrackerplus.in/GiftsImages/tryandthali/GoldenStonePujaThali.jpg');
INSERT INTO `ProductImages` VALUES(4, 'GP104', 'http://bloodtrackerplus.in/GiftsImages/bounch/Purple_Bunch.jpg');
