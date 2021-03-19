-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2021 at 04:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobilization`
--

-- --------------------------------------------------------

--
-- Table structure for table `course_tbl`
--

CREATE TABLE `course_tbl` (
  `cid` int(11) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `totalseat` int(11) NOT NULL,
  `totalseatrem` int(11) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_tbl`
--

INSERT INTO `course_tbl` (`cid`, `cname`, `totalseat`, `totalseatrem`, `pid`) VALUES
(1, 'DDU-JSD', 33, 32, 1),
(2, 'DDU-UI', 32, 31, 1),
(3, 'DDU-CN', 33, 33, 1),
(4, 'DDU-ED', 33, 32, 1),
(5, 'YK-JSD', 100, 99, 2);

-- --------------------------------------------------------

--
-- Table structure for table `distarget`
--

CREATE TABLE `distarget` (
  `tid` int(11) NOT NULL,
  `distarget` int(11) NOT NULL,
  `distargetrem` int(11) NOT NULL,
  `disid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `distarget`
--

INSERT INTO `distarget` (`tid`, `distarget`, `distargetrem`, `disid`, `cid`, `pid`) VALUES
(1, 20, 4, 1, 5, 1),
(2, 20, 19, 3, 4, 1),
(3, 20, 20, 2, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `districtname_tbl`
--

CREATE TABLE `districtname_tbl` (
  `disid` int(11) NOT NULL,
  `disname` varchar(30) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `districtname_tbl`
--

INSERT INTO `districtname_tbl` (`disid`, `disname`, `pid`) VALUES
(1, 'tvm', 1),
(2, 'kollam', 1),
(3, 'pta', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `utype` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `utype`) VALUES
(1, 'keerthi', 'keerthi@gmail.com', '$2y$10$ci2iOkVfNlnx79X492/Ja.mzsN39ODAYLbWDiImJ4uETph/J1X4Mm', '0'),
(2, 'admin', 'admin@gmail.com', '$2y$10$hOu6Qhi354yjS3pLcYRgyOhhIvFJQHo3ua.HS/Htyh5Mbn4NXI2TG', '1');

-- --------------------------------------------------------

--
-- Table structure for table `project_tbl`
--

CREATE TABLE `project_tbl` (
  `pid` int(11) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `s_date` date NOT NULL,
  `e_date` date NOT NULL,
  `year` int(11) NOT NULL,
  `totalseat` int(11) NOT NULL,
  `totalrem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_tbl`
--

INSERT INTO `project_tbl` (`pid`, `pname`, `s_date`, `e_date`, `year`, `totalseat`, `totalrem`) VALUES
(1, 'DDU-GKY', '2019-06-01', '2021-06-01', 2, 315, 312),
(2, 'YUVA-KERALAM', '2019-06-01', '2021-06-01', 2, 100, 99);

-- --------------------------------------------------------

--
-- Table structure for table `studdetails_tbl`
--

CREATE TABLE `studdetails_tbl` (
  `sid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `kudumbasree` varchar(30) NOT NULL,
  `aplbpl` varchar(30) NOT NULL,
  `religion` varchar(30) NOT NULL,
  `caste` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `mgnreg` varchar(30) NOT NULL,
  `panchayath` varchar(30) NOT NULL,
  `cid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `disid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studdetails_tbl`
--

INSERT INTO `studdetails_tbl` (`sid`, `name`, `gender`, `kudumbasree`, `aplbpl`, `religion`, `caste`, `category`, `mgnreg`, `panchayath`, `cid`, `pid`, `disid`) VALUES
(1, 'kavya', 'female', 'Yes', 'APL', 'Hindu', 'Ezhava', 'General', 'Yes', 'Panchayath', 2, 2, 2),
(2, 'Nikhila', 'female', 'Yes', 'BPL', 'Muslim', 'Ezhava', 'SC', 'Yes', 'Municipality', 2, 2, 1),
(3, 'anju', 'female', 'Yes', 'APL', 'Hindu', 'Ezhava', 'General', 'Yes', 'Panchayath', 5, 1, 1),
(4, 'amala', 'female', 'Yes', 'APL', 'Hindu', 'Others', 'SC', 'Yes', 'Panchayath', 5, 1, 1),
(5, 'keerthi', 'female', 'Yes', 'APL', 'Hindu', 'Ezhava', 'General', 'Yes', 'Municipality', 5, 1, 1),
(6, 'nura', 'male', 'No', 'BPL', 'Hindu', 'Nair', 'General', 'Yes', 'Municipality', 1, 1, 1),
(7, 'varsha', 'female', 'Yes', 'BPL', 'Hindu', 'Nair', 'General', 'Yes', 'Panchayath', 2, 2, 2),
(8, 'revathi', 'female', 'Yes', 'BPL', 'Hindu', 'Nair', 'General', 'Yes', 'Panchayath', 4, 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course_tbl`
--
ALTER TABLE `course_tbl`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `distarget`
--
ALTER TABLE `distarget`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `districtname_tbl`
--
ALTER TABLE `districtname_tbl`
  ADD PRIMARY KEY (`disid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_tbl`
--
ALTER TABLE `project_tbl`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `studdetails_tbl`
--
ALTER TABLE `studdetails_tbl`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course_tbl`
--
ALTER TABLE `course_tbl`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `distarget`
--
ALTER TABLE `distarget`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `districtname_tbl`
--
ALTER TABLE `districtname_tbl`
  MODIFY `disid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_tbl`
--
ALTER TABLE `project_tbl`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `studdetails_tbl`
--
ALTER TABLE `studdetails_tbl`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
