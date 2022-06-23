-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2018 at 07:10 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` varchar(35) NOT NULL,
  `Apass` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `Apass`) VALUES
('admin@tsec.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `facutlytable`
--

CREATE TABLE `facutlytable` (
  `FID` int(10) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `JDate` date NOT NULL,
  `City` varchar(10) NOT NULL,
  `Pass` varchar(10) NOT NULL,
  `PhNo` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facutlytable`
--

INSERT INTO `facutlytable` (`FID`, `FName`,`FaName`, `Addrs`, `Gender`, `JDate`, `City`, `Pass`, `PhNo`) VALUES
(101, 'Newton','Einstein', 'Bandra', 'Male', '2020-02-03', 'Mumbai', '1234', 12345678),
(102, 'Bill Gates','Microsoft', 'Bandra', 'Male', '2020-02-03', 'Mumbai', '1234', 12345678),
(103, 'Steve Jobs','Apple', 'Bandra', 'Male', '2020-02-03', 'Mumbai', '1234', 12345678);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `GuEid` varchar(35) NOT NULL,
  `Gname` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`GuEid`, `Gname`) VALUES
('Anil21@gmail.com', 'Anil Rawat'),
('g10093k@gmail.com', 'Gunjan Kumari');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `Query` text NOT NULL,
  `Ans` text NOT NULL,
  `Eid` varchar(35) NOT NULL,
  `Qid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`Query`, `Ans`, `Eid`, `Qid`) VALUES
('Can i do mca  ', 'yes', 'g10093k@gmail.com', 1),
('Can I do M.Tech? ', 'Ofcourse.', 'dhruveel@tsec.com', 2),
('Can i do BCA.', '', 'Anil21@gmail.com', 3),
('I want to take addmission in bca?', '', 'ria@tsec.com', 4),
('Can i do MCS after B.Com. ', 'Yes Sure You Can', 'adtiya@tsec.com', 5),
('Dear Sir,\r\nCan I do M.SC. ?\r\nPlease Answer Soon..\r\nThanks ', 'Yes, First you complete M.tech.', 'madhu@tsec.com', 6);

-- --------------------------------------------------------

-- Table structure for table `studenttable`
--

CREATE TABLE `studenttable` (
  `Eno` bigint(20) NOT NULL,
  `FName` varchar(30) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `PhNo` bigint(10) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Eid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenttable`
--

INSERT INTO `studenttable` (`Eno`, `FName`, `LName`, `FaName`, `Addrs`, `Gender`, `Course`, `DOB`, `PhNo`, `Pass`, `Eid`) VALUES
(146891650, 'Dhruveel', 'Chouhan', 'Lalit', 'Mumbai', 'Male', 'IT', '2000-02-03', 1234567890, '1234', 'dhruveel3@tsec.com'),
(146891651, 'Madhu', 'Damani', 'Ram Kumar', 'Ghaziabad', 'Female', 'EXTC', '2000-05-12', 6666666666, '1234', 'madhu@tsec.com'),
(146891652, 'Ria', 'Choithramani', 'Arjun ', 'Noida', 'Female', 'MECH.', '2000-02-14', 6555555555, '1234', 'ria@tsec.com'),
(146891653, 'Aditya', 'Dingankar', 'Vinod ', 'Badlapur', 'Male', 'BIOMED', '1996-07-08', 1111111111, '1234', 'aditya@tsec.com');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `V_id` int(10) NOT NULL,
  `V_Title` varchar(50) NOT NULL,
  `V_Url` longtext NOT NULL,
  `V_Remarks` longtext NOT NULL,
  `V_Links` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table is used to store videos info.';

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`V_id`, `V_Title`, `V_Url`, `V_Remarks`, `V_Links`) VALUES
(1, 'PHP', '<iframe width="560" height="315" src="https://www.youtube.com/embed/ZdP0KM49IVk" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 'How to create a complete login system in PHP. In this PHP tutorial you will learn how to create an simple PHP login system from scratch, and how to show content after being logged in. In this PHP login tutorial, you will learn about error handlers, and MySQLi databases, which includes how to make a login form and a signup form.','<a href="https://www.w3schools.com/php/DEFAULT.asp" style = "color: red;">PHP Tutorials</a>'),
(2, 'Bootstrap','<iframe width="560" height="315" src="https://www.youtube.com/embed/5GcQtLDGXy8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>','Want to learn Twitter Bootstrap? In this video we will cover the Twitter Bootstrap framework in depth from installation to all of the HTML/CSS components and features.','<a href="https://www.w3schools.com/bootstrap/" style = "color: red;">Bootstrap Tutorials</a>'),
(3, 'HTML', '<iframe width="560" height="315" src="https://www.youtube.com/embed/uDIL-GguPOw?rel=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>', 'html complete layout','<a href="https://www.w3schools.com/html/" style = "color: red;">HTML Tutorials</a>'),
(4, 'CSS Grid ', '<iframe width="560" height="315" src="https://www.youtube.com/embed/HgwCeNVPlo0?rel=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>', 'How to create website layouts using CSS grid','<a href="https://www.w3schools.com/css/css_grid.asp" style = "color: red;">CSS Grid Tutorials</a>'),
(5, 'JQuery', '<iframe width="560" height="315" src="https://www.youtube.com/embed/BWXggB-T1jQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>', 'JQuery Tutorial:\r\nQuery is a cross-platform JavaScript library designed to simplify the client-side scripting of HTML. It is free, open-source software using the permissive MIT License.','<a href="https://www.w3schools.com/jquery/" style = "color: red;">JQuery Tutorials</a>'),
(6, 'JSON ', '<iframe width="560" height="315" src="https://www.youtube.com/embed/JuFdz8f-cT4" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>', 'JavaScript Object Notation or JSON is an open-standard file format that uses human-readable text to transmit data objects consisting of attributeâ€“value pairs and array data types (or any other serializable value).\r\nIt is a very common data format used for asynchronous browserâ€“server communication, including as a replacement for XML in some AJAX-style systems.\r\nJSON is a language-independent data format.\r\nIt was derived from JavaScript.','<a href="https://www.w3schools.com/js/js_json_intro.asp" style = "color: red;">JSON Tutorials</a>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `facutlytable`
--
ALTER TABLE `facutlytable`
  ADD PRIMARY KEY (`FID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`Gname`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `studenttable`
--
ALTER TABLE `studenttable`
  ADD PRIMARY KEY (`Eno`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`V_id`);

--
-- AUTO_INCREMENT for dumped tables
--

-- AUTO_INCREMENT for table `facutlytable`
--
ALTER TABLE `facutlytable`
  MODIFY `FID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `Qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `studenttable`
--
ALTER TABLE `studenttable`
  MODIFY `Eno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146891654;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `V_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
