-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 19, 2018 at 08:09 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lamp_final_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE DATABASE FAKERDB;
USE FAKERDB;

CREATE TABLE `Category` (
  `Category_ID` mediumint(9) NOT NULL,
  `CategoryName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`Category_ID`, `CategoryName`) VALUES
(1, 'Sales'),
(2, 'Service'),
(3, 'Jobs');

-- --------------------------------------------------------

--
-- Table structure for table `Location`
--

CREATE TABLE `Location` (
  `Location_ID` mediumint(9) NOT NULL,
  `Region_ID` mediumint(9) DEFAULT NULL,
  `LocationName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Location`
--

INSERT INTO `Location` (`Location_ID`, `Region_ID`, `LocationName`) VALUES
(1, 1, 'cupertino'),
(2, 1, 'melnopark'),
(3, 1, 'stanford'),
(4, 2, 'london'),
(5, 2, 'paris'),
(6, 2, 'zurich'),
(7, 3, 'delhi'),
(8, 3, 'mumbai'),
(9, 3, 'bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` mediumint(9) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `username`, `password`, `email`) VALUES
(2, 'john', 'e2fc714c4727ee9395f324cd2e7f331f', 'john@yahoo.com'),
(3, 'potato', '1f3870be274f6c49b3e31a0c6728957f', 'potato@app.le');

-- --------------------------------------------------------

--
-- Table structure for table `Posts`
--

CREATE TABLE `Posts` (
  `Post_ID` mediumint(9) NOT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Description` text,
  `Email` varchar(50) DEFAULT NULL,
  `Agreement` tinyint(4) DEFAULT NULL,
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Image_1` longblob,
  `Image_2` longblob,
  `Image_3` longblob,
  `Image_4` longblob,
  `SubCategory_ID` mediumint(9) DEFAULT NULL,
  `Location_ID` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Posts`
--

INSERT INTO `Posts` (`Post_ID`, `Title`, `Price`, `Description`, `Email`, `Agreement`, `TimeStamp`, `Image_1`, `Image_2`, `Image_3`, `Image_4`, `SubCategory_ID`, `Location_ID`) VALUES
(5, 'USA the great', 17, 'aaaa', 'john@yahoo.com', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 10, 2),
(6, 'computer science for beginner', 10, 'thi is a good book', 'john@yahoo.com', 0, '2018-12-19 03:44:03', NULL, NULL, NULL, NULL, 8, 8),
(7, 'Alps volunteer', 1111, 'COme work in the swiss alps and learn valuable skills', 'zurich@swiss.alps', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 12, 6),
(8, 'Piano lessons for free', 1, 'learn from the pro for free', 'pro@piano.com', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 9, 5),
(9, 'Help needed', 20, 'need somebody to come clean the house every saturday 8-10 am. pay $20 per hour', 'clean@house.com', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 6, 3),
(10, 'babysitting job', 1, 'babysitting job for high school kids', 'babysitting@jobs.com', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 11, 9),
(12, 'personal financial advisor', 100, 'to keep my record books straight. please help me with all the accounting mess. i need to pay back taxes to the irs', 'money@tax.com', 0, '2018-12-19 03:41:25', NULL, NULL, NULL, NULL, 7, 4),
(13, 'computer book writer', 99, 'we need somebody in our computer department to write undergrauduate level books please contact ifyou have relevant experience', 'book@stanford.edu', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 10, 3),
(14, 'electronic book', 19.9, 'this electronic book is very useful for you to do your bookkeeping and financial service. it uses computer billing', 'john@hotmail.com', 1, '2018-12-19 03:39:16', NULL, NULL, NULL, NULL, 5, 1),
(15, 'household potato', 11.11, 'this household potato wokrs great for all; fulltime parttime or volunteering opportunity that can be of service with sales and jobs.', NULL, NULL, '2018-12-19 03:39:16', NULL, NULL, NULL, NULL, 6, 7),
(16, 'my book', 11, 'my book is the best in its service for all', NULL, 0, '2018-12-19 03:45:43', NULL, NULL, NULL, NULL, 1, 3),
(17, 'guitar lessons', 11, 'guitar lessons from us. learn something that no computer or book can teach us. we have fulltime jobs so this is not something that comes easy', 'john@yahoo.com', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 9, 2),
(18, 'guitar lessons', 11, 'guitar lessons from us. learn something that no computer or book can teach us. we have fulltime jobs so this is not something that comes easy', 'john@yahoo.com', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 9, 2),
(20, 'long walk to freedom', 111, 'nelson mandela book about his life in prison during apartite in south africa now on sale via me', 'john@yahoo.com', 0, '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `Region`
--

CREATE TABLE `Region` (
  `Region_ID` mediumint(9) NOT NULL,
  `RegionName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Region`
--

INSERT INTO `Region` (`Region_ID`, `RegionName`) VALUES
(1, 'USA'),
(2, 'Europe'),
(3, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `SubCategory`
--

CREATE TABLE `SubCategory` (
  `SubCategory_ID` mediumint(9) NOT NULL,
  `Category_ID` mediumint(9) DEFAULT NULL,
  `CategoryName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SubCategory`
--

INSERT INTO `SubCategory` (`SubCategory_ID`, `Category_ID`, `CategoryName`) VALUES
(1, 1, 'book'),
(5, 1, 'electronics'),
(6, 1, 'household'),
(7, 2, 'financial'),
(8, 2, 'computer'),
(9, 2, 'lessons'),
(10, 3, 'fulltime'),
(11, 3, 'parttime'),
(12, 3, 'volunteering');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`Category_ID`);

--
-- Indexes for table `Location`
--
ALTER TABLE `Location`
  ADD PRIMARY KEY (`Location_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Posts`
--
ALTER TABLE `Posts`
  ADD PRIMARY KEY (`Post_ID`),
  ADD KEY `SubCategory_ID` (`SubCategory_ID`),
  ADD KEY `Location_ID` (`Location_ID`);

--
-- Indexes for table `Region`
--
ALTER TABLE `Region`
  ADD PRIMARY KEY (`Region_ID`);

--
-- Indexes for table `SubCategory`
--
ALTER TABLE `SubCategory`
  ADD PRIMARY KEY (`SubCategory_ID`),
  ADD KEY `Category_ID` (`Category_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `Category_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Location`
--
ALTER TABLE `Location`
  MODIFY `Location_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Posts`
--
ALTER TABLE `Posts`
  MODIFY `Post_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Region`
--
ALTER TABLE `Region`
  MODIFY `Region_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `SubCategory`
--
ALTER TABLE `SubCategory`
  MODIFY `SubCategory_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Posts`
--
ALTER TABLE `Posts`
  ADD CONSTRAINT `Posts_ibfk_1` FOREIGN KEY (`SubCategory_ID`) REFERENCES `SubCategory` (`SubCategory_ID`),
  ADD CONSTRAINT `Posts_ibfk_2` FOREIGN KEY (`Location_ID`) REFERENCES `Location` (`Location_ID`);

--
-- Constraints for table `SubCategory`
--
ALTER TABLE `SubCategory`
  ADD CONSTRAINT `SubCategory_ibfk_1` FOREIGN KEY (`Category_ID`) REFERENCES `Category` (`Category_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
