-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2016 at 01:57 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel reservation system`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_1`
--

CREATE TABLE `bill_1` (
  `room_charges` int(11) NOT NULL,
  `food_charges` int(11) NOT NULL,
  `vat` double NOT NULL,
  `lux_tax` double NOT NULL,
  `ser_tax` double NOT NULL,
  `grand_total` double NOT NULL,
  `bill_no` varchar(15) NOT NULL,
  `bill_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_1`
--

INSERT INTO `bill_1` (`room_charges`, `food_charges`, `vat`, `lux_tax`, `ser_tax`, `grand_total`, `bill_no`, `bill_date`) VALUES
(4000, 350, 15.75, 0, 348, 4943.75, 'HRS.BN.01', '2013-01-20'),
(4500, 400, 18, 0, 391.5, 5540.5, 'HRS.BN.02', '2013-05-12'),
(5000, 450, 20.25, 150, 435, 6287.25, 'HRS.BN.03', '2014-03-14'),
(5500, 500, 22.5, 165, 478.5, 6899, 'HRS.BN.04', '2014-04-30'),
(6000, 550, 24.75, 180, 522, 7510.75, 'HRS.BN.05', '2015-03-17'),
(6500, 600, 27, 1950, 565.5, 8122.5, 'HRS.BN.06', '2015-05-13'),
(7000, 650, 29.25, 210, 609, 8734.25, 'HRS.BN.07', '2015-06-30'),
(7500, 700, 31.5, 225, 652.5, 9346, 'HRS.BN.08', '2016-04-23'),
(8000, 750, 33.75, 240, 696, 9957.75, 'HRS.BN.09', '2016-04-28'),
(8500, 800, 360, 255, 739.5, 10569.5, 'HRS.BN.10', '2017-06-23'),
(9000, 850, 38.25, 270, 783, 11181.25, 'HRS.BN.11', '2017-03-18'),
(9500, 900, 40.5, 285, 826.5, 11793, 'HRS.BN.12', '2017-04-10'),
(10000, 950, 42.75, 300, 870, 12404.75, 'HRS.BN.13', '2017-04-28'),
(10500, 1000, 45, 315, 913.5, 13016.5, 'HRS.BN.14', '2017-04-30'),
(11000, 1050, 47.25, 330, 957, 13628.25, 'HRS.BN.15', '2017-06-20'),
(11500, 1100, 49.5, 345, 1000.5, 14240, 'HRS.BN.16', '2018-04-30'),
(12000, 1150, 51.75, 360, 1044, 14851.75, 'HRS.BN.17', '2019-05-02'),
(12500, 1200, 540, 375, 1087.5, 15463.5, 'HRS.BN.18', '2019-06-05'),
(13000, 1250, 56.25, 390, 1131, 16075.25, 'HRS.BN.19', '2019-07-29'),
(13500, 1300, 58.5, 405, 1174.5, 16687, 'HRS.BN.20', '2019-12-10');

-- --------------------------------------------------------

--
-- Table structure for table `bill_2`
--

CREATE TABLE `bill_2` (
  `food_charges` int(11) NOT NULL,
  `vat` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_2`
--

INSERT INTO `bill_2` (`food_charges`, `vat`) VALUES
(350, 15.75),
(400, 18),
(450, 20.25),
(500, 22.5),
(550, 24.75),
(600, 27),
(650, 29.25),
(700, 31.5),
(750, 33.75),
(800, 36),
(850, 38.25),
(900, 40.5),
(950, 42.75),
(1000, 45),
(1050, 47.25),
(1100, 49.5),
(1150, 51.75),
(1200, 54),
(1250, 56.25),
(1300, 58.5);

-- --------------------------------------------------------

--
-- Table structure for table `bill_3`
--

CREATE TABLE `bill_3` (
  `room_charges` int(11) NOT NULL,
  `lux_tax` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_3`
--

INSERT INTO `bill_3` (`room_charges`, `lux_tax`) VALUES
(4000, 0),
(4500, 0),
(5000, 150),
(5500, 165),
(6000, 180),
(6500, 195),
(7000, 210),
(7500, 225),
(8000, 240),
(8500, 255),
(9000, 270),
(9500, 285),
(10000, 300),
(10500, 315),
(11000, 330),
(11500, 345),
(12000, 360),
(12500, 375),
(13000, 390),
(13500, 405);

-- --------------------------------------------------------

--
-- Table structure for table `bill_4`
--

CREATE TABLE `bill_4` (
  `room_charges` int(11) NOT NULL,
  `food_charges` int(11) NOT NULL,
  `ser_tax` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_4`
--

INSERT INTO `bill_4` (`room_charges`, `food_charges`, `ser_tax`) VALUES
(4000, 350, 348),
(4500, 400, 391.5),
(5000, 450, 435),
(5500, 500, 478.5),
(6000, 550, 522),
(6500, 600, 565.5),
(7000, 650, 609),
(7500, 700, 652.5),
(8000, 750, 696),
(8500, 800, 739.5),
(9000, 850, 783),
(9500, 900, 826.5),
(10000, 950, 870),
(10500, 1000, 913.5),
(11000, 1050, 957),
(11500, 1100, 1000.5),
(12000, 1150, 1044),
(12500, 1200, 1087.5),
(13000, 1250, 1131),
(13500, 1300, 1174.5);

-- --------------------------------------------------------

--
-- Table structure for table `coorporate1`
--

CREATE TABLE `coorporate1` (
  `company_name` varchar(40) NOT NULL,
  `factory_name` varchar(40) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `reservation_folio_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coorporate1`
--

INSERT INTO `coorporate1` (`company_name`, `factory_name`, `area`, `city`, `state`, `reservation_folio_id`) VALUES
('ACE India Ltd.', 'factory no 234', 'Lokhandwala', 'Mumbai', 'Maharashtra', '6789'),
('Adarsh Chemical Fertilizers', 'Adarsh Chemical Fertilizers', 'near Rajgiri', 'Ghaziabad', 'UP', '7890'),
('BCL Industries Ltd.', 'factory no 34', 'Industrial area', 'raipur', 'chattisgarh', '5656'),
('Dr. Datasons Labs Ltd.', 'Dr. Datasons Labs', 'Barbican Centre', 'Jaipur', 'Rajasthan', '4545'),
('Eicher LTd.', 'Eicher Industries', 'Kamla Nagar', 'Kamla Nagar', 'New Delhi', '3445'),
('GTL Texlies LTd.', 'GTL Textiles', 'GTL Textiles', 'Karnataka', 'Karnataka', '1290'),
('Gwalior Sugar Company Ltd.', 'Gwalior Sugar industries', 'Kailash Vihar', 'gwalior', 'MP', '1267'),
('ISPL Industries Ltd.', 'ISPL Industries', 'Indira Nagar', 'Pune', 'Maharashtra', '9809'),
('Kabra Driugs Ltd.', 'factory no 456', 'Jayanagar', 'noida', 'UP', '8789'),
('Khaitan Electrical Ltd.', 'Khaitan Electricals ', 'Parasmani Nagar', 'bhopal', 'MP', '2343');

-- --------------------------------------------------------

--
-- Table structure for table `coorporate2`
--

CREATE TABLE `coorporate2` (
  `company_id` varchar(50) NOT NULL,
  `company_name` varchar(50) DEFAULT NULL,
  `reservation_folio_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coorporate2`
--

INSERT INTO `coorporate2` (`company_id`, `company_name`, `reservation_folio_id`) VALUES
('ACE1234', 'ACE India Ltd.', '6789'),
('ACF4567', 'Adarsh Chemical Fertilizers', '7890'),
('BCL8989', 'BCL Industries Ltd.', '5656'),
('DDL5667', 'Dr. Datasons Labs Ltd.', '4545'),
('ELL2349', 'Eicher LTd.', '3445'),
('GSC3223', 'Gwalior Sugar Company Ltd.', '1267'),
('GTL0123', 'GTL Texlies LTd.', '1290'),
('ISPL9090', 'ISPL Industries Ltd.', '9808'),
('KAB4848', 'Kabra Driugs Ltd.', '8789'),
('KEL8123', 'Khaitan Electrical Ltd.', '2343');

-- --------------------------------------------------------

--
-- Table structure for table `corp_members2`
--

CREATE TABLE `corp_members2` (
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `designation` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_members2`
--

INSERT INTO `corp_members2` (`first_name`, `middle_name`, `last_name`, `age`, `gender`, `designation`) VALUES
('abhishek ', '', 'khanna', 36, 'M', 'senior clerk'),
('ayush', '', 'seddana', 55, 'M', 'foreman'),
('ayushi', '', 'bhardwaj', 33, 'F', 'account executive'),
('deepek', '', 'gangwar', 39, ' M', 'manager'),
('divyansh', '', 'malhotra', 24, 'M', 'CEO'),
('farooq', '', 'abdullah', 45, 'M', 'board chairman'),
('gagan', '', 'garg', 51, 'M', 'SEO strategist'),
('hardik', 'kumar', 'patel', 28, 'M', 'chief marketing officer'),
('harsh', 'wardhan', 'singh', 25, 'M', 'divisional head'),
('hemant', '', 'kapoor', 38, 'M', 'social media manager'),
('himanshu', '', 'gupta', 42, 'M', 'content stretegist'),
('honey', '', 'singh', 42, 'M', 'data analyst'),
('ishika', '', 'kapoor', 28, 'F', 'assistant manager'),
('jigar', '', 'sharma', 28, 'M', 'company secretary'),
('joney', '', 'singhal', 19, 'M', 'chief administrative officer'),
('kartik', '', 'verma', 42, 'M', 'production manager'),
('mayank', '', 'agarwal', 34, 'M', 'SEO specialist'),
('mayank', '', 'chichta', 37, 'M', 'digital marketing manager'),
('naksh', '', 'nayak', 28, 'M', 'content specialist'),
('nirmal', '', 'roberts', 50, 'M', 'senior manager'),
('piyush', '', 'tripathi', 31, 'M', 'engineer supervisor'),
('priya', '', 'yadav', 44, 'F', 'marketing supervisor'),
('rahul', '', 'sachan', 33, 'M', 'marketing supervisor'),
('rakesh', '', 'dixit', 34, 'M', 'secretery'),
('rashmi', '', 'shrivastava', 51, 'M', 'executive director'),
('reshma', '', 'khan', 23, 'F', 'vice chairman'),
('rishi', '', 'kaithale', 42, 'M', 'enginner trainer'),
('ruhaani', '', 'singh', 32, 'F', 'HR manager'),
('shubhangi', '', 'iyer', 43, 'F', 'account executive'),
('shubhi', '', 'jain', 23, 'F', 'general manager'),
('smiriti', '', 'jain', 27, 'F', 'executive chief'),
('subhash', '', 'upadhyay', 27, 'F', 'chief accounting officer'),
('sudesh', '', 'maheshwari', 44, 'M', 'senior manager'),
('trupti', '', 'bhardwaj', 29, 'F', 'office manager'),
('upendra', '', 'sachan', 38, 'M', 'vice president'),
('varun', '', 'trivedi', 64, 'M', 'COO'),
('vikas', '', 'kumar', 40, 'M', 'marketing manager'),
('yugal', '', 'shakyawar', 43, 'M', 'assistant manager');

-- --------------------------------------------------------

--
-- Table structure for table `corp_members_1`
--

CREATE TABLE `corp_members_1` (
  `reservation_folio_id` int(11) NOT NULL,
  `contact_no` bigint(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `corp_members_1`
--

INSERT INTO `corp_members_1` (`reservation_folio_id`, `contact_no`, `first_name`, `middle_name`, `last_name`) VALUES
(1267, 2121216767, 'nirmal', NULL, 'roberts'),
(1267, 2323237890, 'abhishek', NULL, 'khanna'),
(1267, 7776664489, 'piyush', NULL, 'tripathi'),
(1267, 8738938934, 'rishi', 'kumar', 'kaithale'),
(1290, 4343434390, 'himanshu', NULL, 'gupta'),
(2343, 3434348715, 'upendra', NULL, 'sachan'),
(2343, 4578903218, 'kartik', NULL, 'verma\r\n'),
(2343, 9009612389, 'divyansh', NULL, 'malhotra'),
(2343, 9229913537, 'trupti', NULL, 'bhardwaj'),
(3445, 6789235691, 'hemant', NULL, 'kapoor'),
(3445, 7676868680, 'mayank', NULL, 'agarwal'),
(3445, 7879709027, 'rashi', NULL, 'chichra'),
(4545, 1112889032, 'ishika', NULL, 'kapoor'),
(4545, 6666892333, 'rahul', NULL, 'sachan'),
(4545, 7776767645, 'harsh', 'wardhan', 'singh'),
(4545, 9808923568, 'smriti', NULL, 'jain'),
(5656, 1212348787, 'yugal', NULL, 'shakywar'),
(5656, 1236245812, 'ayush', NULL, 'sedana'),
(5656, 2390123763, 'jigar', NULL, 'sharma'),
(5656, 3345367334, 'deepak', NULL, 'gangwar'),
(5656, 6565467834, 'reshma', NULL, 'khan'),
(5656, 9823467890, 'farooq', NULL, 'abdullah'),
(6789, 1234567892, 'subhash', NULL, 'upadhyay'),
(6789, 4567892390, 'rashmi', NULL, 'shrivastava'),
(6789, 5656787889, 'Vikas', NULL, 'Kumar\r\n'),
(6789, 5678901234, 'hardik', 'kumar ', 'patel'),
(6789, 7879023145, 'rakesh', NULL, 'dixit\r\n'),
(7890, 3434567891, 'joney ', NULL, 'singhal'),
(7890, 6789023456, 'shubhi', NULL, 'jain'),
(7890, 9090909090, 'honey ', NULL, 'singh'),
(8789, 303030235, 'naksh', NULL, 'nayak'),
(8789, 3345568901, 'gagan', NULL, 'garg'),
(8789, 4444555667, 'priya', NULL, 'yadav'),
(8789, 5568890023, 'sudesh', NULL, 'maheshwari'),
(8789, 6678893345, 'varun', NULL, 'trivedi'),
(9809, 8889993336, 'shubhangi', NULL, 'iyer');

-- --------------------------------------------------------

--
-- Table structure for table `employee1`
--

CREATE TABLE `employee1` (
  `emp_mb_no` bigint(20) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(10) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee1`
--

INSERT INTO `employee1` (`emp_mb_no`, `first_name`, `middle_name`, `last_name`) VALUES
(4734773883, 'naresh', NULL, 'aluwalia'),
(4773458787, 'amaya', NULL, 'singh'),
(4773573858, 'jeetu', NULL, 'sharma'),
(5666485959, 'manish', 'kumar', 'sachan'),
(6578475960, 'gaurav', NULL, 'sharma'),
(6858589888, 'sudama', NULL, 'kumar'),
(7377373534, 'ronak', NULL, 'agarwal'),
(7563823845, 'shanti', NULL, 'kumari'),
(7566456850, 'piyush', NULL, 'singh'),
(7566940393, 'priya', NULL, 'garg'),
(7567483029, 'sudhish', NULL, 'kumar'),
(7575858855, 'saurabh', NULL, 'tripathi'),
(7663655463, 'sonu', NULL, 'gupta'),
(7674784888, 'brajesh', NULL, 'singh'),
(7893567382, 'sooraj', NULL, 'agarwal'),
(7899563525, 'alok', NULL, 'garg'),
(8635429588, 'mahesh', NULL, 'kumar'),
(8686985939, 'pulkit', NULL, 'singh'),
(8778885885, 'ankur', 'kumar', 'prakash'),
(9006846399, 'geeta', NULL, 'singh'),
(9357935780, 'akash', NULL, 'ahuja'),
(9453735289, 'mukesh', 'kumar', 'solanki'),
(9457363783, 'pankaj', 'dev', 'garg'),
(9565242828, 'palak', NULL, 'agarwal'),
(9685747483, 'ankit ', NULL, 'mudgal');

-- --------------------------------------------------------

--
-- Table structure for table `employee2`
--

CREATE TABLE `employee2` (
  `emp_id` int(11) NOT NULL,
  `emp_mb_no` bigint(20) DEFAULT NULL,
  `post` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee2`
--

INSERT INTO `employee2` (`emp_id`, `emp_mb_no`, `post`) VALUES
(33330, 9357935780, 'manager'),
(33331, 9453735289, 'general manager'),
(33332, 9565242828, 'receptionist'),
(33333, 9457363783, 'chef'),
(33334, 8635429588, 'chef'),
(33335, 9006846399, 'bar tender'),
(33336, 7663655463, 'kitchen worker'),
(33337, 5666485959, 'plumber'),
(33338, 7567483029, 'electrician'),
(33339, 7674784888, 'security guard'),
(33340, 4734773883, 'house keeper'),
(33341, 8686985939, 'housekeeper'),
(33342, 9685747483, 'baby sitter'),
(33343, 7563823845, 'house keeper'),
(33344, 7899563525, 'waiter'),
(33345, 8778885885, 'currency exchanger'),
(33346, 4773573858, 'waiter'),
(33347, 7377373534, 'doctor'),
(33348, 7893567382, 'laundary man'),
(33349, 7575858855, 'cab service provider'),
(33350, 6578475960, 'travel assistant'),
(33351, 7566456850, 'store keepers'),
(33352, 7566940393, 'attendence handler'),
(33353, 6858589888, 'gym instructor'),
(33354, 4773458787, 'spa manager');

-- --------------------------------------------------------

--
-- Table structure for table `employee3`
--

CREATE TABLE `employee3` (
  `post` varchar(40) NOT NULL,
  `facility_type` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee3`
--

INSERT INTO `employee3` (`post`, `facility_type`) VALUES
('attendence handler', NULL),
('baby sitter', 'baby sitting'),
('bar tender', 'bar'),
('cab service provider', 'cab hire service'),
('chef', 'restaurant'),
('currency exchanger', 'currency exchange'),
('doctor', 'doctor on call'),
('electrician', NULL),
('general manager', NULL),
('gym instructor', NULL),
('housekeeper', NULL),
('kitchen worker', 'restaurant'),
('laundary man', 'laundary'),
('manager', NULL),
('plumber', NULL),
('receptionist', NULL),
('security guard', NULL),
('spa manager', 'spa'),
('storekeepers', 'restaurant'),
('travel assistant', 'travel assistance'),
('waiter', 'restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `facility_type` varchar(50) NOT NULL,
  `facility_rate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`facility_type`, `facility_rate`) VALUES
('baby sitting', '100/hr'),
('bar', 'as per requirement'),
('buffet ', '500/person'),
('business center', 'as per requirement'),
('cab hire service', '15/km'),
('currency exchange', 'free'),
('doctor on call', '1000/visit'),
('gym', 'free'),
('laundary', '10/pc'),
('pool', 'free'),
('restaurant', 'as per requirement'),
('spa', '800\\-'),
('travel assistance', '100/day'),
('wifi', 'free');

-- --------------------------------------------------------

--
-- Table structure for table `family_1`
--

CREATE TABLE `family_1` (
  `head_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `no_of_children` int(11) DEFAULT NULL,
  `no_of_adults` int(11) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `age` int(11) NOT NULL,
  `reservation_folio_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family_1`
--

INSERT INTO `family_1` (`head_id`, `first_name`, `middle_name`, `last_name`, `no_of_children`, `no_of_adults`, `gender`, `age`, `reservation_folio_id`) VALUES
(566251, 'Anmol', NULL, ' Tongya', 2, 1, 'M', 34, '123456'),
(566252, 'Animesh', NULL, ' Choudhary', 2, 1, 'M', 35, '123457'),
(566253, 'Anshika', NULL, ' Singh', 1, 1, 'F', 32, '123458'),
(566254, 'chandler', ' Marriel', ' Marriel Bing', 2, 2, 'M', 31, '123459'),
(566255, 'stefan', NULL, 'Salvatore', 0, 2, 'M', 36, '123451'),
(566256, 'joey', NULL, 'Tribbiani', 2, 2, 'M', 37, '123452'),
(566257, 'akshay', NULL, 'Tiwari', 2, 2, 'M', 38, '123453'),
(566258, 'jeet', NULL, ' Ahuja', 0, 2, 'M', 25, '123454'),
(566259, 'harsh', NULL, 'Badjatiya', 2, 1, 'M', 39, '123455'),
(566261, 'aditya', 'kumar', ' Roy', 1, 2, 'M', 41, '123856');

-- --------------------------------------------------------

--
-- Table structure for table `family_2`
--

CREATE TABLE `family_2` (
  `first_name` char(50) NOT NULL,
  `middle_name` char(50) NOT NULL,
  `last_name` char(50) NOT NULL,
  `proffesion` char(50) DEFAULT NULL,
  `reservation_folio_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family_2`
--

INSERT INTO `family_2` (`first_name`, `middle_name`, `last_name`, `proffesion`, `reservation_folio_id`) VALUES
('aditya', 'kumar', 'roy', 'enigneer', '123856'),
('akshay', '', 'tiwari', 'pilot', '123453'),
('Animesh', '', 'Choudhary', 'doctor', '123457'),
('Anmol', '', 'Tongya', 'teacher', '123456'),
('Anshika', '', 'Singh', 'businessman', '123458'),
('Chandler', '', 'Marriel Bing', 'government servant', '123459'),
('Harsh', '', 'Badjatiya', 'proffessor', '123455'),
('jeet', '', 'ahuja', 'lawyer', '123454'),
('joey', '', 'Tribbiani', 'ploceman', '123452'),
('stefan', '', 'salvatore', 'businessman', '123451');

-- --------------------------------------------------------

--
-- Table structure for table `family_3`
--

CREATE TABLE `family_3` (
  `first_name` varchar(30) NOT NULL,
  `middle_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `house_no_or_name` varchar(30) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `reservation_folio_id` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family_3`
--

INSERT INTO `family_3` (`first_name`, `middle_name`, `last_name`, `house_no_or_name`, `area`, `city`, `state`, `reservation_folio_id`) VALUES
('aditya', 'kumar', 'Roy', 'Roy''s Mansion', 'near Salt Inifid Lake', 'Calcutta', 'WB', '123856'),
('akshay', '', 'Tiwari', '87', 'Vigyan Vihar', 'Nagpur', 'Maharashtra', '123453'),
('Animesh', '', ' Choudhary', 'G/34', 'Govindpuri', 'Gwalior', 'MP', '123457'),
('Anmol', '', 'Tongya', 'A-35', 'DD nagar', 'Gwalior', 'MP', '123456'),
('Anshika ', '', 'Singh', 'A7-56', 'Janki vihar', 'Lucknow', 'UP', '123458'),
('chandler', ' Marriel', 'Bing', '65', 'Gomti Nagar', 'New Delhi', 'New Delhi', '123459'),
('harsh', '', 'Badjatiya', 'B-11', 'MG road', 'Bengaluru', 'Karnataka', '123455'),
('jeet', '', 'Ahuja', 'Shanti Bhawan ', 'Rani Lakshmi Bai Square', 'Bhopal', 'MP', '123454'),
('joey', '', 'Tribbiani', '14', 'Kingsway Apartment', 'Hyderabad', 'Telangana', '123452'),
('stefan', '', 'Salvatore', '32', 'Maria Street', 'Bengaluru', 'Karnataka', '123451');

-- --------------------------------------------------------

--
-- Table structure for table `fmembers`
--

CREATE TABLE `fmembers` (
  `reservation_folio_id` int(11) NOT NULL,
  `first_name` char(50) NOT NULL,
  `middle_name` char(50) NOT NULL,
  `last_name` char(50) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fmembers`
--

INSERT INTO `fmembers` (`reservation_folio_id`, `first_name`, `middle_name`, `last_name`, `age`, `gender`) VALUES
(123451, 'Naksh', '', 'Salvatore', 34, 'M'),
(123452, 'Navneet', '', 'Tribbiani', 15, 'M'),
(123452, 'Sanket', '', 'Tribbiani', 12, 'M'),
(123452, 'Vansh', '', 'Tribbiani', 16, 'M'),
(123453, 'Juhi', '', 'Tiwari', 38, 'F'),
(123453, 'Kashish', '', 'Tiwari', 16, 'F'),
(123453, 'Richie', '', 'Tiwari', 12, 'M'),
(123454, 'Welfred', '', 'Ahuja', 26, 'M'),
(123455, 'Aditi', '', 'Badjatiya', 8, 'F'),
(123455, 'Munjali', '', 'Badjatiya', 30, 'F'),
(123456, 'Priyanka', '', 'Tongya', 13, 'F'),
(123456, 'Ritu', '', 'Tongya', 12, 'F'),
(123457, 'Eshaan', '', 'Choudhary', 13, 'M'),
(123457, 'Geet', '', 'Choudhary', 32, 'F'),
(123458, 'Arabh', '', 'Singh', 10, 'M'),
(123459, 'Karthik', '', 'Bing', 9, 'M'),
(123459, 'Raghav', '', 'Bing', 14, 'M'),
(123459, 'Tanu', '', 'Bing', 36, 'F'),
(123856, 'Sakshi', '', 'Roy', 16, 'F'),
(123856, 'Tanya', '', 'Roy', 18, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `food_relation`
--

CREATE TABLE `food_relation` (
  `pdct_name` varchar(50) NOT NULL,
  `pdct_price` int(20) NOT NULL,
  `food_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_relation`
--

INSERT INTO `food_relation` (`pdct_name`, `pdct_price`, `food_type`) VALUES
('Bangda Masala', 200, 'Non-Veg'),
('Chicken Biryani', 200, 'Non-Veg'),
('Chocolate Souffle', 500, 'Desserts'),
('Coffee', 300, 'Beverages'),
('Cottage Cheese Shaslik', 0, 'Continental'),
('Dal Makhani', 0, 'Indian '),
('Farmer Baked', 0, 'Continental'),
('Fruit Punch', 0, 'Mocktail'),
('Ginger Lemonade', 50, 'Mocktail'),
('Green Curry', 0, 'Thai'),
('Hot Chocolate Brownie', 0, 'Desserts'),
('Idli Sambhar', 100, 'South Indian'),
('Kadai Paneer', 0, 'Indian '),
('Malai Kofta', 0, 'Indian '),
('Masala Dosa', 0, 'South Indian'),
('Paneer Tikka', 0, 'Indian '),
('Pasta Arabiatta ', 0, 'Pasta Arabiatta 	Rs.120	Italian'),
('Pomfret Masala', 0, 'Sea Food'),
('Potato Rosti', 0, 'Italian'),
('Prawns Masala', 0, 'Sea Food'),
('Rasmalai', 0, 'Desserts'),
('Sambhar Vada', 110, 'South Indian'),
('Shahi Paneer', 150, 'Indian '),
('Soft Drink', 0, 'Beverages'),
('Tea', 0, 'Beverages'),
('Thai Tofu Curry', 0, 'Thai'),
('Veg. Hakka Noodles', 0, 'Chinese'),
('Veg. Manchurian', 150, 'Chinese'),
('Veg. Schezwan', 0, 'Chinese'),
('White Baked Macroni', 0, 'Italian');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `resrevation_folio_id` varchar(30) NOT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `email_id` varchar(40) DEFAULT NULL,
  `no_of_members` varchar(10) DEFAULT NULL,
  `arr_frm` varchar(30) DEFAULT NULL,
  `prcdng_to` varchar(30) DEFAULT NULL,
  `prps_of_visit` varchar(60) DEFAULT NULL,
  `package_type` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`resrevation_folio_id`, `contact_no`, `email_id`, `no_of_members`, `arr_frm`, `prcdng_to`, `prps_of_visit`, `package_type`) VALUES
('123451', '5241041024', 'stef.salva@gmail.com', '2', 'Madras', 'Chandigarh', 'educational', 'Family Package\r\n'),
('123452', '7896541234', 'joey.tribb@gmail.com', '4', 'Bengaluru', 'Shimla', 'training', 'Discount on Suite Offer\r\n'),
('123453', '7854698536', 'akshay.tiwar@gmail.com', '4', 'Nagpur', 'Ooty', 'trip', 'Extended Stay Offer\r\n'),
('123454', '4561778568', 'jeet.ahuja@gmail.com', '2', 'Bhopal', 'Coimbatore', 'wedding', 'Advance Purchase Offer\r\n'),
('123455', '9425774658', 'harsh.badja@gmail.com', '3', 'Bengaluru', 'Gwalior', 'business', 'Business Package\r\n'),
('123456', '9452485645', 'anm.tongya@gmail.com', '3', 'Ranipur', 'Delhi', 'trip', 'Discount on Suite Offer\r\n'),
('123457', '6584361541', 'ani.Choudh@gmail.com', '3', 'Bhopal', 'Jaipur', 'wedding', 'Extended Stay Offer\r\n'),
('123458', '2465451584', 'anshika.singh@gmail.com', '2', 'Raipur', 'Jodhpur', 'business', 'Advance Purchase Offer\r\n'),
('123459', '1452352111', 'awesome.chandu@gmail.com', '4', 'Palamkhet', 'Jammu&Kashmir', 'official', 'Business Package\r\n'),
('123856', '3216549871', 'aditya.kumar@gmail.com', '3', 'Calcutta', 'Indore', 'official', 'Family Package\r\n'),
('1267', '5537812923', 'gwalior.company@gmail.com', '4', 'Gwalior', 'Mumbai', 'educational', 'Advance Purchase Offer\r\n'),
('1290', '2234478912', 'gtl.texlies@gmail.com', '2', 'Bangalore', 'Roorkee', 'official', 'Extended Stay Offer\r\n'),
('2343', '7879213456', 'khaitan.electrical@gmail.com', '4', 'Bhopal', 'Sitapur', 'wedding', 'Extended Stay Offer\r\n'),
('3445', '6652381290', 'eicher.eicher@gmail.com', '3', 'Kamla Nagar', 'Guwahati', 'business', 'Discount on Suite Offer'),
('4545', '7690123054', 'dr.labs@gmail.com', '4', 'London', 'Una', 'wedding', 'Business Package\r\n'),
('5656', '3345218902', 'bcl.industries@gmail.com', '6', 'Raipur', 'Manali', 'trip', 'Advance Purchase Offer\r\n'),
('6789', '6677889230', 'ace.india@gmail.com', '5', 'Mumbai', 'Agra', 'educational', 'Discount on Suite Offer\r\n'),
('7890', '4567891201', 'adarsh.chemical@gmail.com', '3', 'Gaziabad', 'Mathura', 'training', 'Extended Stay Offer\r\n'),
('8789', '9893451209', 'kabra.driugs@gmail.com', '5', 'Noida', 'Rampur', 'trip', 'Discount on Suite Offer\r\n'),
('9809', '7681230121', 'ispl.industries@gmail.com', '2', 'Indira Nagar, Pune', 'Joanpur', 'training', 'Business Package\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `guest_alloted_room`
--

CREATE TABLE `guest_alloted_room` (
  `reservation_folio_id` varchar(30) NOT NULL,
  `room_no` varchar(30) DEFAULT NULL,
  `cin_date` varchar(30) DEFAULT NULL,
  `cin_time` varchar(30) DEFAULT NULL,
  `cout_date` varchar(30) DEFAULT NULL,
  `cout_time` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_alloted_room`
--

INSERT INTO `guest_alloted_room` (`reservation_folio_id`, `room_no`, `cin_date`, `cin_time`, `cout_date`, `cout_time`) VALUES
('123453', '107', '12.04.2014', '4:00 PM', '18.04.2014', '3:55 PM'),
('123455', '109', '18.04.2014', '4:30 AM', '26.04.2014', '5:30 PM'),
('123457', '102', '18.04.2014', '6:30 AM', '13.02.2016', '2:15pm'),
('123458', '103', '24.04.2013', '5:00 PM', '18.04.2014', '4:00 PM'),
('123459', '104', '30.04.2013', '9:45 AM', NULL, NULL),
('1290', '206', '30.04.2015', '8:00 PM', '8.05.2015', '1:30 AM'),
('2343', '210', '18.04.2016', '2:40 PM', NULL, NULL),
('3445', '205', '24.04.2015', '1:20 PM', '29.04.2015', '6:45 AM'),
('4545', '204', '18.04.2015', '7:00 PM', NULL, NULL),
('6789', '201', '04.05.2014', '12:00 PM', NULL, NULL),
('9809', '208', '08.05.2015', '3:00 PM', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guest_orders_food`
--

CREATE TABLE `guest_orders_food` (
  `reservation_folio_id` int(11) NOT NULL,
  `pdct_name` char(50) NOT NULL,
  `order_no` char(50) DEFAULT NULL,
  `date` char(50) DEFAULT NULL,
  `time` char(50) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_orders_food`
--

INSERT INTO `guest_orders_food` (`reservation_folio_id`, `pdct_name`, `order_no`, `date`, `time`, `qty`) VALUES
(1267, 'Ginger Lemonade', '40', '5.06.2016', '10:30 PM', 2),
(1267, 'Idli Sambhar', '38', '5.06.2016', '10:00 PM', 2),
(1267, 'Sambhar Vada', '39', '5.06.2016', '10:15 PM', 2),
(1290, 'Shahi Paneer', '37', '15.05.2016', '9:45 PM', 2),
(1290, 'Veg. Manchurian', '36', '15.05.2016', '9:30 PM', 1),
(2343, 'Pomfret masala', '46', '15.07.2016', '12:00 AM', 1),
(2343, 'Shahi Paneer', '47', '15.07.2016', '12:15 AM', 2),
(2343, 'Tea', '45', '15.07.2016', '11:45 PM', 2),
(3445, 'Fruit Punch', '34', '10.05.2016', '9:00 PM', 1),
(3445, 'Hot Chocolate Brownie', '35', '10.05.2016', '9:15 PM', 1),
(4545, 'Kadai Paneer', '32', '25.04.2016', '8:30 PM', 1),
(4545, 'Rasmalai', '33', '25.04.2016', '8:45 PM', 2),
(5656, '	Bangda Masala', '31', '19.04.2016', '8:15 PM', 3),
(5656, 'Cottage Cheese Shaslik', '30', '19.04.2016', '8:00 PM', 2),
(6789, 'Kadai Paneer', '26', '08.05.2015', '7:00 PM', 1),
(6789, 'Pasta Arabiatta', '25', '08.05.2015', '6:45 PM', 1),
(7890, 'Potato Rosti', '29', '18.04.2016', '7:45 PM', 1),
(7890, 'Veg. Manchurian', '28', '18.04.2016', '7:30 PM', 2),
(7890, 'Veg. Schezwan', '27', '18.04.2016', '7:15 PM', 2),
(8789, 'Coffee', '43', '10.07.2016', '11:15 PM', 2),
(8789, 'Tea', '44', '10.07.2016', '11:30 PM', 1),
(9809, 'Potato Rosti', '41', '4.07.2016', '10:45 PM', 2),
(9809, 'Prawns Masala', '42', '4.07.2016', '11:00 PM', 1),
(123451, 'Prawns Masala', '16', '24.04.2014', '4:30 PM', 2),
(123451, 'Shahi Paneer', '17', '24.04.2014', '4:45 PM', 2),
(123451, 'Soft Drink', '15', '24.04.2014', '4:15 PM', 2),
(123452, 'Green Curry', '18', '04.05.2014', '5:00 PM', 2),
(123453, 'Chocolate Souffle', '19', '04.05.2014', '5:15 PM', 1),
(123454, 'Ginger Lemonade', '20', '18.04.2015', '5:30 PM', 1),
(123454, 'Idli Sambhar', '21', '18.04.2015', '5:45 PM', 2),
(123455, 'Green Curry', '22', '24.04.2015', '6:00 PM', 1),
(123455, 'Sambhar Vada', '23', '24.04.2015', '6:15 PM', 2),
(123456, 'Hot Chocolate Brownie', '2', '18.04.2013', '1:00 PM', 2),
(123456, 'Rasmalai', '3', '18.04.2013', '1:15 PM', 1),
(123456, 'Sambhar Vada', '1', '18.04.2013', '12:45 PM', 1),
(123456, 'Tea', '4', '18.04.2013', '1:30 PM', 3),
(123457, 'Chicken Biryani', '6', '24.04.2013', '2:00 PM', 1),
(123457, 'Coffee', '5', '	24.04.2013', '1:45 PM', 1),
(123457, 'Farmer Baked', '8', '24.04.2013', '2:30 PM', 2),
(123457, 'Thai Tofu Curry', '7', '24.04.2013', '2:15 PM', 1),
(123458, 'Fruit Punch', '9', '30.04.2013', '2:45 PM', 1),
(123458, 'Masala Dosa', '10', '30.04.2013', '3:00 PM', 3),
(123458, 'Veg. Hakka Noodles', '11', '30.04.2013', '3:15 PM', 1),
(123459, 'Kadai Paneer', '13', '12.04.2014', '3:45 PM', 2),
(123459, 'Malai Kofta', '12', '12.04.2014', '3:30 PM', 2),
(123459, 'White Baked Macroni', '14', '12.04.2014', '4:00 PM', 1),
(123856, 'Potato Rosti', '24', '30.04.2015', '6:30 PM', 3);

-- --------------------------------------------------------

--
-- Table structure for table `guest_pays_bill`
--

CREATE TABLE `guest_pays_bill` (
  `reservation_folio_id` bigint(20) NOT NULL,
  `bill_no` varchar(10) NOT NULL,
  `payment_method` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_pays_bill`
--

INSERT INTO `guest_pays_bill` (`reservation_folio_id`, `bill_no`, `payment_method`) VALUES
(1267, 'HRS.BN.17', 'cheque'),
(1290, 'HRS.BN.16', 'credit card'),
(2343, 'HRS.BN.20', 'cash'),
(3445, 'HRS.BN.15', 'credit card'),
(4545, 'HRS.BN.14', 'cash'),
(5656, 'HRS.BN.13', 'cash'),
(6789, 'HRS.BN.11', NULL),
(7890, 'HRS.BN.12', 'cheque'),
(8789, 'HRS.BN.19', 'cash'),
(9809, 'HRS.BN.18', 'cheque'),
(123451, 'HRS.BN.05', 'cash'),
(123452, 'HRS.BN.06', 'cash'),
(123453, 'HRS.BN.07', 'credit card'),
(123455, 'HRS.BN.09', 'cheque'),
(123456, 'HRS.BN.01', 'cash'),
(123457, 'HRS.BN.02', 'cheque'),
(123458, 'HRS.BN.03', 'credit card'),
(123459, 'HRS.BN.04', 'cash'),
(123856, 'HRS.BN.10', 'credit card'),
(1234594, 'HRS.BN.08', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `guest_uses_facility`
--

CREATE TABLE `guest_uses_facility` (
  `reservation_folio_id` varchar(30) DEFAULT NULL,
  `facility_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest_uses_facility`
--

INSERT INTO `guest_uses_facility` (`reservation_folio_id`, `facility_type`) VALUES
('123456', 'restaurant'),
('123456', 'baby sitting'),
('123457', 'restaurant'),
('123458', 'restaurant'),
('123458', 'laundary'),
('123458', 'cabhire service'),
('123458', 'spa'),
('123459', 'restaurant'),
('123451', 'restaurant'),
('123452', 'restaurant'),
('123452', 'doctor on call'),
('123454', 'restaurant'),
('123454', 'laundary'),
('123454', 'pool'),
('123455', 'restaurant'),
('123856', 'restaurant'),
('123856', 'gym'),
('6789', 'restaurant'),
('7890', 'restaurant'),
('5656', 'restaurant'),
('5656', 'business center'),
('5656', 'laundary'),
('4545', 'restaurant'),
('4545', 'pool'),
('3445', 'restaurant'),
('3445', 'gym'),
('1290', 'business center'),
('1290', 'restaurant'),
('1267', 'currexchange'),
('1267', 'restaurant'),
('9809', 'restaurant'),
('8789', 'restaurant'),
('8789', 'currexchange'),
('8789', 'business center'),
('2343', 'restaurant'),
('123453', 'restaurant');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `package_type` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`package_type`, `description`) VALUES
('Advance Purchase Offer', 'avail special advance purchase rate with full prepayment on advance booking of min 14 days'),
('Business Package', 'free breakfast, one way airport transfer, 2 pieces of laundary and internet on min 3 night stay.'),
('Discount on Suite Offer', '10% discount on 5 days and 4 nights visit'),
('Extended Stay Offer', 'free breakfast, laundary, internet and free airport transfers on min 7 days and 6 nights'),
('Family Package', 'complementary room for 2 kids upto 12 yrs of age');

-- --------------------------------------------------------

--
-- Table structure for table `roomrelation_1`
--

CREATE TABLE `roomrelation_1` (
  `room_type` varchar(20) DEFAULT NULL,
  `room_no` int(11) NOT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomrelation_1`
--

INSERT INTO `roomrelation_1` (`room_type`, `room_no`, `status`) VALUES
('single non ac', 101, 'alloted'),
('single non ac', 102, 'vacant'),
('single ac', 103, 'vacant'),
('single ac', 104, 'vacant'),
('double non ac', 105, 'alloted'),
('double non ac', 106, 'alloted'),
('double ac', 107, 'vacant'),
('junior suite', 108, 'alloted'),
('junior suite', 109, 'vacant'),
('execcutive', 110, 'alloted'),
('double non ac', 201, 'vacant'),
('double ac', 202, 'alloted'),
('double ac', 203, 'alloted'),
('executive suite', 204, 'vacant'),
('superior suite', 205, 'vacant'),
('superior suite', 206, 'vacant'),
('grande suite', 207, 'alloted'),
('grande suite', 208, 'vacant'),
('family suite', 209, 'alloted'),
('family suite', 210, 'vacant');

-- --------------------------------------------------------

--
-- Table structure for table `room_relation_2`
--

CREATE TABLE `room_relation_2` (
  `room_type` varchar(20) NOT NULL,
  `rate` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_relation_2`
--

INSERT INTO `room_relation_2` (`room_type`, `rate`) VALUES
('double ac', 'Rs.4000'),
('double non ac', 'Rs.3000'),
('executive suite', 'Rs.8000'),
('family suite', 'Rs. 11000'),
('grande suite', 'Rs.12000'),
('junior suite', 'Rs 5000'),
('single ac', 'Rs.3000'),
('single non ac', 'Rs.2000'),
('superior suite', 'Rs.10000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill_1`
--
ALTER TABLE `bill_1`
  ADD PRIMARY KEY (`bill_no`);

--
-- Indexes for table `bill_2`
--
ALTER TABLE `bill_2`
  ADD PRIMARY KEY (`food_charges`);

--
-- Indexes for table `bill_3`
--
ALTER TABLE `bill_3`
  ADD PRIMARY KEY (`room_charges`);

--
-- Indexes for table `bill_4`
--
ALTER TABLE `bill_4`
  ADD PRIMARY KEY (`room_charges`,`food_charges`);

--
-- Indexes for table `coorporate1`
--
ALTER TABLE `coorporate1`
  ADD PRIMARY KEY (`company_name`);

--
-- Indexes for table `coorporate2`
--
ALTER TABLE `coorporate2`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `corp_members2`
--
ALTER TABLE `corp_members2`
  ADD PRIMARY KEY (`first_name`,`middle_name`,`last_name`);

--
-- Indexes for table `corp_members_1`
--
ALTER TABLE `corp_members_1`
  ADD PRIMARY KEY (`reservation_folio_id`,`contact_no`);

--
-- Indexes for table `employee1`
--
ALTER TABLE `employee1`
  ADD PRIMARY KEY (`emp_mb_no`);

--
-- Indexes for table `employee2`
--
ALTER TABLE `employee2`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `employee3`
--
ALTER TABLE `employee3`
  ADD PRIMARY KEY (`post`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`facility_type`);

--
-- Indexes for table `family_1`
--
ALTER TABLE `family_1`
  ADD PRIMARY KEY (`head_id`);

--
-- Indexes for table `family_2`
--
ALTER TABLE `family_2`
  ADD PRIMARY KEY (`first_name`,`middle_name`,`last_name`);

--
-- Indexes for table `family_3`
--
ALTER TABLE `family_3`
  ADD PRIMARY KEY (`first_name`,`middle_name`,`last_name`);

--
-- Indexes for table `fmembers`
--
ALTER TABLE `fmembers`
  ADD PRIMARY KEY (`reservation_folio_id`,`first_name`,`middle_name`,`last_name`);

--
-- Indexes for table `food_relation`
--
ALTER TABLE `food_relation`
  ADD PRIMARY KEY (`pdct_name`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`resrevation_folio_id`);

--
-- Indexes for table `guest_alloted_room`
--
ALTER TABLE `guest_alloted_room`
  ADD PRIMARY KEY (`reservation_folio_id`);

--
-- Indexes for table `guest_orders_food`
--
ALTER TABLE `guest_orders_food`
  ADD PRIMARY KEY (`reservation_folio_id`,`pdct_name`);

--
-- Indexes for table `guest_pays_bill`
--
ALTER TABLE `guest_pays_bill`
  ADD PRIMARY KEY (`reservation_folio_id`,`bill_no`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`package_type`);

--
-- Indexes for table `roomrelation_1`
--
ALTER TABLE `roomrelation_1`
  ADD PRIMARY KEY (`room_no`);

--
-- Indexes for table `room_relation_2`
--
ALTER TABLE `room_relation_2`
  ADD PRIMARY KEY (`room_type`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
