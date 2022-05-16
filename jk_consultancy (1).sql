-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2021 at 07:24 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jk_consultancy`
--

-- --------------------------------------------------------

--
-- Table structure for table `addjob`
--

CREATE TABLE `addjob` (
  `id` int(11) NOT NULL,
  `company` varchar(20) NOT NULL,
  `package` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `discription` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addjob`
--

INSERT INTO `addjob` (`id`, `company`, `package`, `location`, `discription`, `date`) VALUES
(1, 'Infosys', '2.3 lakh', 'Amravti', 'html,css,mysql', '2021-12-22'),
(2, '  MAHENDRA COMPANY', '  5 LAKH', '  PUNA', '    MYSQL,HTML,CSS,PHP,.NET', '2021-12-15'),
(5, 'jjjj', 'e', 'j', 'ddddd', '2021-12-08'),
(13, 'bsgsyxb', 'xjkhicybc', 'mxncjcst', 'cbjcgujuitsnmsab', '2021-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `adminregistration`
--

CREATE TABLE `adminregistration` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `conform` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminregistration`
--

INSERT INTO `adminregistration` (`name`, `email`, `password`, `conform`) VALUES
('admin', 'admin@gmail.com', 'admin123', 'admin123'),
('hty', 'jty@gmail.com', '12345', '12345'),
('Kajal', 'Kajal@gmail.com', 'kajal', 'kajal'),
('Manisha', 'manu123@gmail.com', '1234', '1234'),
('null', 'null', 'null', 'null'),
('Prajkta', 'prajkta@gmail.com', '1234', '1234'),
('yhui', 'tr@gmail.com', 'tr', 'tr'),
('TUSHAR', 'TUSHAR12@gmail.com', 'TUSHAR12', 'TUSHAR12');

-- --------------------------------------------------------

--
-- Table structure for table `applyforjob`
--

CREATE TABLE `applyforjob` (
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `number` int(11) NOT NULL,
  `qulification` varchar(30) NOT NULL,
  `course` varchar(40) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `location` varchar(30) NOT NULL,
  `fname` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applyforjob`
--

INSERT INTO `applyforjob` (`name`, `email`, `number`, `qulification`, `course`, `experience`, `location`, `fname`) VALUES
('prajkta', 'tahskhi@gmail.com', 23675, 'xjkjkxnkycc', 'xsnkhiycuw', 'xxmjjoxpoupa', 'sxnnjxnns', 0x322e706e67),
('kyt', 'kyt@gmail.com', 76300, 'kyt', 'cfg', 'kyt', 'kyt', 0x706578656c732d6d6174682d3333313638342e6a7067),
('jtyui', 'tahskhi@gmail.com', 236778, 'xjkjkxnkycccfgrx', 'xsnkhiycuw', 'xxmjjoxpoupa', 'sxnnjxnns', 0x62373938363234613535633633626337646533323961613638303066326664362e6a7067),
('zycvdy', 'nchf@gmail.com', 8888345, 'xjkjkxnkycccfgrx', 'xsnkhiycuw', 'xxmjjoxpoupa', 'sxnnjxnns', 0x62373938363234613535633633626337646533323961613638303066326664362e6a7067),
('vandana', 'vandana@gmail.com', 12345633, 'B.A', 'HTML', '5YR', 'JKLYU', 0x706578656c732d74686972646d616e2d373635333436392e6a7067),
('kajal Bhende', 'Kajal@gmail.com', 67533309, 'html,dsssst', 'jdysbdtcbxknkn ', '2yr', 'Amravati', 0x322e706e67),
('Komal Kale', 'Komal123@gmail.com', 76339900, 'M.B.A', 'mysql', '0yr', 'Hedrabad', 0x706578656c732d70686f746f2d373630353138392e6a706567),
('Manisha Wankhade', 'Manu@gmail.com', 87333894, 'B.Sc', 'English,hindi', '3yr', 'Delhi', 0x34313938313939383233315f653864393539326430325f622e6a7067),
('ram', 'ram@gamil.com', 444553322, 'htskdi', 'mbdhytrsvsb', '189', 'mdhtdudb', 0x627573696e657373776f6d616e2d776f726b696e672d686f6d652d6c6170746f702d73757266696e672d696e7465726e65742d636f6d6d65726369616c2d6f6e6c696e652d73686f7070696e672d627573696e6573732d72656c61782d686f6c696461792d3134393832313637302e6a7067),
('komal jamkl', 'komal@gmail.com', 554433777, 'dgtyjhi', 'kjhshysybjbjb', '66', 'mumbai', 0x312e706e67),
('Shraddha bansod', 'shraddha@gmail.com', 982531787, 'msjdty', 'hdtshicblsgcb', 'idbtihcbis', '78', 0x627573696e657373776f6d616e2d776f726b696e672d686f6d652d6c6170746f702d73757266696e672d696e7465726e65742d636f6d6d65726369616c2d6f6e6c696e652d73686f7070696e672d627573696e6573732d72656c61782d686f6c696461792d3134393832313637302e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `applyforjobaccept`
--

CREATE TABLE `applyforjobaccept` (
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `number` int(11) NOT NULL,
  `qulification` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `experience` varchar(30) NOT NULL,
  `location` varchar(20) NOT NULL,
  `fname` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `applyforjobaccept`
--

INSERT INTO `applyforjobaccept` (`name`, `email`, `number`, `qulification`, `course`, `experience`, `location`, `fname`) VALUES
('Manisha Wankhade', 'Manu@gmail.com', 87333894, 'B.Sc', 'English,hindi', '3yr', 'Delhi', 0x34313938313939383233315f653864393539326430325f622e6a7067),
('komal jamkl', 'komal@gmail.com', 554433777, 'dgtyjhi', 'kjhshysybjbjb', '66', 'mumbai', 0x312e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `number` bigint(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `conform` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `username`, `email`, `number`, `password`, `conform`, `gender`) VALUES
('manisha', 'm', 'manisha@gmail.com', 4, '234', '234', 'on'),
('Neha Desai', 'Neha', 'Neha@gmail.com', 43674, 'Neha', 'Neha', 'on'),
('kartik', 'kartik12', 'kartik12@gmail.com', 45333, '12345', '12345', 'on'),
('kk', 'kk', 'kk@gmail.com', 2345677, 'kk1234', 'kk1234', 'on'),
('Vandana Wankhade', 'Wankhade', 'Wankhade@gmail.com', 5432222, '12345', '12345', 'on'),
('Kajal Kumar', 'Kajal123', 'Kajal123@gmail.com', 5643287, 'kajal123', 'kajal123', 'on'),
('Manisha Wankhade', 'manu@123', 'manu123@gmail.com', 6789543, 'admin@123', 'admin@123', 'f'),
('Ramesh Wankhade', 'Ramesh123', 'Ramesh@gmail.com', 22222222, 'ramesh123', 'ramesh123', 'on'),
('Prajakta', 'Prajkta123', 'Prajkta12@gmail.com', 23422334, 'Prajkta123', 'Prajkta123', 'on'),
('xyz', 'zyz', 'zyz@gmail.com', 88888888, 'zyz', 'zyz', 'on'),
('Prajakta Desai', 'Desai123', 'Desai123@gmail.com', 98673542, 'Desai123', 'Desai123', 'on'),
('sakshi kumar', 'sakshi@123', 'sakshi123@gmail.com', 234567986, 'sakshi123', 'shakshi123', 'f'),
('khty', 'admin', 'admin@123', 453344555, 'admin123', 'admin123', 'on'),
('prajkta', 'prajkta', 'prajkta12@gmail.com', 456783936, 'prajkta12', 'prajkta12', 'on'),
('Kamala', 'kamala123', 'kamala@gmail.com', 544448769, 'kamala123', 'kamala123', 'on'),
('Rohit Wankhade', 'Rohit123', 'rohit123@gmail.com', 888855566, '12345', '12345', 'on'),
('nishant', 'nishant123', 'nishant@gmail.com', 888888888, 'nishant123', 'nishant123', 'on'),
('mansi', 'mansi', 'mansi@gmail.com', 986665473, 'mansi', 'mansi', 'on'),
('Vandana', 'Vandana123', 'Vandana123@gmail.com', 5643786340, 'Vandana123', 'Vandana123', 'on'),
('abc', 'abc12', 'abc12@gmail.com', 5644447888, 'abc12', 'abc12', 'on'),
('Rohit Wankhade', 'Rohit123', 'Rohit@gmail.com', 6666444488, 'Rohit123', 'Rohit123', 'on'),
('nishant', 'nishant123', 'nishant12@gmail.com', 8765309888, 'nishant123', 'nishant123', 'on'),
('Rohit Wankhade', 'Rohit123', 'Rohit123@gmail.com', 8777543655, '12345', '12345', 'on'),
('pallavi K', 'pallavi', 'pk@gmail.com', 9021532927, 'pk1234', 'pk1234', 'on'),
('akshay k', 'akshay', 'ak@gmail.com', 9988776655, 'ak1234', 'ak1234', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addjob`
--
ALTER TABLE `addjob`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminregistration`
--
ALTER TABLE `adminregistration`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `applyforjob`
--
ALTER TABLE `applyforjob`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `applyforjobaccept`
--
ALTER TABLE `applyforjobaccept`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
