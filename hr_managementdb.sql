-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2019 at 08:34 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `370project`
--

-- --------------------------------------------------------

--
-- Table structure for table `alogin`
--

CREATE TABLE `alogin` (
  `id` int(11) NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alogin`
--

INSERT INTO `alogin` (`id`, `email`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `nid` int(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dept` varchar(100) NOT NULL,
  `degree` varchar(100) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstName`, `lastName`, `email`, `password`, `birthday`, `gender`, `contact`, `nid`, `address`, `dept`, `degree`, `pic`) VALUES
(1, 'Arjun', 'Kumar', 'arjun.kumar@example.com', 'pass@123', '1992-05-14', 'Male', '9876543210', '100001', 'Chennai TN', 'IT', 'B.Tech CSE', 55000),
(2, 'Priya', 'Sharma', 'priya.sharma@example.com', 'pass@123', '1995-08-23', 'Female', '9876543211', '100002', 'Bangalore KA', 'HR', 'MBA HR', 48000),
(3, 'Karthik', 'Raj', 'karthik.raj@example.com', 'pass@123', '1990-01-12', 'Male', '9876543212', '100003', 'Hyderabad TS', 'Finance', 'M.Com', 60000),
(4, 'Sneha', 'Iyer', 'sneha.iyer@example.com', 'pass@123', '1993-03-17', 'Female', '9876543213', '100004', 'Coimbatore TN', 'Marketing', 'BBA', 45000),
(5, 'Vignesh', 'Reddy', 'vignesh.reddy@example.com', 'pass@123', '1991-07-20', 'Male', '9876543214', '100005', 'Vizag AP', 'IT', 'MCA', 57000),
(6, 'Meena', 'Nair', 'meena.nair@example.com', 'pass@123', '1994-02-11', 'Female', '9876543215', '100006', 'Kochi KL', 'Sales', 'MBA', 52000),
(7, 'Rajesh', 'Pillai', 'rajesh.pillai@example.com', 'pass@123', '1989-06-09', 'Male', '9876543216', '100007', 'Trivandrum KL', 'IT', 'B.Sc IT', 59000),
(8, 'Kavya', 'Menon', 'kavya.menon@example.com', 'pass@123', '1996-04-25', 'Female', '9876543217', '100008', 'Mysore KA', 'HR', 'BBA', 46000),
(9, 'Suresh', 'Das', 'suresh.das@example.com', 'pass@123', '1992-09-30', 'Male', '9876543218', '100009', 'Kolkata WB', 'Finance', 'MBA', 61000),
(10, 'Anjali', 'Verma', 'anjali.verma@example.com', 'pass@123', '1995-12-18', 'Female', '9876543219', '100010', 'Delhi DL', 'Marketing', 'B.Com', 47000),
(11, 'Rohit', 'Gupta', 'rohit.gupta@example.com', 'pass@123', '1993-11-05', 'Male', '9876543220', '100011', 'Pune MH', 'IT', 'B.Tech IT', 58000),
(12, 'Pooja', 'Patil', 'pooja.patil@example.com', 'pass@123', '1996-01-29', 'Female', '9876543221', '100012', 'Nashik MH', 'Sales', 'MBA', 50000),
(13, 'Ajay', 'Singh', 'ajay.singh@example.com', 'pass@123', '1991-08-15', 'Male', '9876543222', '100013', 'Jaipur RJ', 'HR', 'MBA', 49500),
(14, 'Divya', 'Rani', 'divya.rani@example.com', 'pass@123', '1994-10-07', 'Female', '9876543223', '100014', 'Lucknow UP', 'Marketing', 'BBA', 46000),
(15, 'Manoj', 'Kumar', 'manoj.kumar@example.com', 'pass@123', '1990-03-22', 'Male', '9876543224', '100015', 'Patna BR', 'Finance', 'M.Com', 60500),
(16, 'Neha', 'Joshi', 'neha.joshi@example.com', 'pass@123', '1995-06-19', 'Female', '9876543225', '100016', 'Bhopal MP', 'IT', 'MCA', 56000),
(17, 'Varun', 'Das', 'varun.das@example.com', 'pass@123', '1992-02-28', 'Male', '9876543226', '100017', 'Chandigarh CH', 'Sales', 'MBA', 52000),
(18, 'Shalini', 'Rao', 'shalini.rao@example.com', 'pass@123', '1996-09-11', 'Female', '9876543227', '100018', 'Mangalore KA', 'HR', 'BBA', 45500),
(19, 'Abhishek', 'Jain', 'abhishek.jain@example.com', 'pass@123', '1993-12-02', 'Male', '9876543228', '100019', 'Indore MP', 'IT', 'B.Tech CSE', 58500),
(20, 'Ritu', 'Mehra', 'ritu.mehra@example.com', 'pass@123', '1994-07-16', 'Female', '9876543229', '100020', 'Gurgaon HR', 'Marketing', 'MBA', 47500);
-- --------------------------------------------------------

--
-- Table structure for table `employee_leave`
--

CREATE TABLE `employee_leave` (
  `id` int(11) DEFAULT NULL,
  `token` int(11) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `reason` char(100) DEFAULT NULL,
  `status` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_leave`
--

INSERT INTO `employee_leave` (`id`, `token`, `start`, `end`, `reason`, `status`) VALUES
(1, 'LV2025001', '2025-02-10', '2025-02-12', 'Medical Leave', 'Approved'),
(2, 'LV2025002', '2025-03-05', '2025-03-07', 'Family Function', 'Pending'),
(3, 'LV2025003', '2025-04-15', '2025-04-16', 'Sick Leave', 'Approved'),
(4, 'LV2025004', '2025-05-02', '2025-05-05', 'Vacation Trip', 'Approved'),
(5, 'LV2025005', '2025-03-20', '2025-03-22', 'Personal Work', 'Rejected'),
(6, 'LV2025006', '2025-06-01', '2025-06-03', 'Medical Leave', 'Approved'),
(7, 'LV2025007', '2025-07-18', '2025-07-19', 'Urgent Work', 'Pending'),
(8, 'LV2025008', '2025-04-09', '2025-04-11', 'Festival', 'Approved'),
(9, 'LV2025009', '2025-05-25', '2025-05-28', 'Family Event', 'Approved'),
(10, 'LV2025010', '2025-02-22', '2025-02-23', 'Sick Leave', 'Pending'),
(11, 'LV2025011', '2025-06-10', '2025-06-12', 'Conference', 'Approved'),
(12, 'LV2025012', '2025-08-01', '2025-08-02', 'Medical Leave', 'Approved'),
(13, 'LV2025013', '2025-03-15', '2025-03-16', 'Exam Preparation', 'Rejected'),
(14, 'LV2025014', '2025-05-12', '2025-05-14', 'Vacation', 'Approved'),
(15, 'LV2025015', '2025-07-07', '2025-07-09', 'Marriage Function', 'Pending'),
(16, 'LV2025016', '2025-04-04', '2025-04-06', 'Medical Leave', 'Approved'),
(17, 'LV2025017', '2025-03-28', '2025-03-29', 'Family Function', 'Approved'),
(18, 'LV2025018', '2025-06-15', '2025-06-17', 'Festival', 'Approved'),
(19, 'LV2025019', '2025-08-03', '2025-08-04', 'Personal Work', 'Pending'),
(20, 'LV2025020', '2025-05-08', '2025-05-10', 'Sick Leave', 'Approved'),
(3, 'LV2025021', '2025-07-20', '2025-07-21', 'Family Event', 'Approved'),
(5, 'LV2025022', '2025-08-12', '2025-08-13', 'Urgent Work', 'Rejected'),
(7, 'LV2025023', '2025-06-25', '2025-06-26', 'Vacation', 'Approved'),
(9, 'LV2025024', '2025-03-18', '2025-03-19', 'Medical Leave', 'Approved'),
(12, 'LV2025025', '2025-04-21', '2025-04-23', 'Family Function', 'Pending'),
(15, 'LV2025026', '2025-02-14', '2025-02-15', 'Exam Preparation', 'Approved'),
(17, 'LV2025027', '2025-07-02', '2025-07-03', 'Marriage Function', 'Approved'),
(19, 'LV2025028', '2025-06-08', '2025-06-09', 'Festival', 'Approved'),
(2, 'LV2025029', '2025-08-06', '2025-08-07', 'Conference', 'Pending'),
(4, 'LV2025030', '2025-03-09', '2025-03-10', 'Vacation', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(11) NOT NULL,
  `eid` int(11) DEFAULT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `subdate` date DEFAULT '0000-00-00',
  `mark` int(11) NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `eid`, `pname`, `duedate`, `subdate`, `mark`, `status`) VALUES
(1, 1, 'E-Commerce Website', '2025-09-10', '2025-08-27', 100, 'Completed'),
(2, 1, 'Portfolio Site', '2025-09-12', '2025-09-05', 85, 'Completed'),
(3, 1, 'Blog CMS', '2025-09-15', '2025-09-02', 95, 'Completed'),
(4, 1, 'Landing Page Redesign', '2025-09-18', NULL, NULL, 'Pending'),

-- Employee 2 - Data Analysis
(5, 2, 'Sales Dashboard', '2025-09-08', '2025-08-22', 100, 'Completed'),
(6, 2, 'Customer Churn Report', '2025-09-14', '2025-09-10', 80, 'Completed'),
(7, 2, 'Revenue Forecasting', '2025-09-20', NULL, NULL, 'Pending'),
(8, 2, 'Marketing ROI Analysis', '2025-09-25', '2025-09-19', 85, 'Completed'),

-- Employee 3 - Mobile Apps
(9, 3, 'Food Delivery App', '2025-09-07', '2025-08-20', 100, 'Completed'),
(10, 3, 'Fitness Tracker', '2025-09-12', '2025-08-30', 95, 'Completed'),
(11, 3, 'Online Learning App', '2025-09-18', '2025-09-12', 82, 'Completed'),
(12, 3, 'Event Booking App', '2025-09-22', '2025-09-25', 70, 'Delayed'),

-- Employee 4 - Networking
(13, 4, 'LAN Setup', '2025-09-06', '2025-08-19', 100, 'Completed'),
(14, 4, 'VPN Configuration', '2025-09-14', '2025-09-08', 80, 'Completed'),
(15, 4, 'Firewall Installation', '2025-09-17', NULL, NULL, 'Pending'),
(16, 4, 'Network Monitoring', '2025-09-21', '2025-09-10', 90, 'Completed'),

-- Employee 5 - Cybersecurity
(17, 5, 'Vulnerability Scan', '2025-09-05', '2025-08-19', 100, 'Completed'),
(18, 5, 'Penetration Test', '2025-09-09', '2025-09-01', 88, 'Completed'),
(19, 5, 'Incident Response Plan', '2025-09-15', '2025-09-18', 65, 'Delayed'),
(20, 5, 'Security Awareness Training', '2025-09-20', '2025-09-12', 85, 'Completed'),

-- Employee 6 - Database
(21, 6, 'Inventory DB', '2025-09-07', '2025-08-20', 100, 'Completed'),
(22, 6, 'Payroll System', '2025-09-13', '2025-09-04', 86, 'Completed'),
(23, 6, 'CRM Database', '2025-09-18', NULL, NULL, 'Pending'),
(24, 6, 'Backup Automation', '2025-09-23', '2025-09-15', 80, 'Completed'),

-- Employee 7 - Cloud Computing
(25, 7, 'AWS Migration', '2025-09-06', '2025-08-21', 100, 'Completed'),
(26, 7, 'Azure Deployment', '2025-09-12', '2025-09-06', 84, 'Completed'),
(27, 7, 'GCP Integration', '2025-09-19', '2025-09-10', 90, 'Completed'),
(28, 7, 'Cloud Security Audit', '2025-09-24', NULL, NULL, 'Pending'),

-- Employee 8 - AI/ML
(29, 8, 'Chatbot Development', '2025-09-05', '2025-08-19', 100, 'Completed'),
(30, 8, 'Recommendation System', '2025-09-10', '2025-09-01', 88, 'Completed'),
(31, 8, 'Fraud Detection Model', '2025-09-15', '2025-09-18', 68, 'Delayed'),
(32, 8, 'Image Recognition', '2025-09-21', '2025-09-12', 85, 'Completed'),

-- Employee 9 - IoT
(33, 9, 'Smart Home System', '2025-09-06', '2025-08-20', 100, 'Completed'),
(34, 9, 'IoT Sensor Network', '2025-09-13', '2025-09-07', 82, 'Completed'),
(35, 9, 'Vehicle Tracking', '2025-09-18', NULL, NULL, 'Pending'),
(36, 9, 'Wearable Device', '2025-09-23', '2025-09-14', 90, 'Completed'),

-- Employee 10 - Game Development
(37, 10, 'Puzzle Game', '2025-09-08', '2025-08-22', 100, 'Completed'),
(38, 10, 'Racing Game', '2025-09-14', '2025-09-08', 80, 'Completed'),
(39, 10, 'AR Adventure', '2025-09-20', '2025-09-12', 86, 'Completed'),
(40, 10, 'Multiplayer Shooter', '2025-09-26', NULL, NULL, 'Pending'),

-- Employee 11 - Robotics
(41, 11, 'Delivery Robot', '2025-09-06', '2025-08-19', 100, 'Completed'),
(42, 11, 'Warehouse Automation', '2025-09-11', '2025-09-02', 95, 'Completed'),
(43, 11, 'Humanoid Robot', '2025-09-16', '2025-09-08', 85, 'Completed'),
(44, 11, 'Drone Control System', '2025-09-22', '2025-09-15', 88, 'Completed'),

-- Employee 12 - Blockchain
(45, 12, 'Crypto Wallet', '2025-09-05', '2025-08-20', 100, 'Completed'),
(46, 12, 'NFT Marketplace', '2025-09-12', '2025-09-04', 90, 'Completed'),
(47, 12, 'Smart Contract Audit', '2025-09-18', '2025-09-10', 85, 'Completed'),
(48, 12, 'Token Launch Platform', '2025-09-25', '2025-09-15', 86, 'Completed'),

-- Employee 13 - UI/UX Design
(49, 13, 'App Redesign', '2025-09-07', '2025-08-22', 100, 'Completed'),
(50, 13, 'Design System', '2025-09-14', '2025-09-07', 84, 'Completed'),
(51, 13, 'Wireframe Library', '2025-09-20', '2025-09-12', 90, 'Completed'),
(52, 13, 'Prototype Testing', '2025-09-28', '2025-09-20', 85, 'Completed'),

-- Employee 14 - Digital Marketing
(53, 14, 'SEO Campaign', '2025-09-05', '2025-08-20', 100, 'Completed'),
(54, 14, 'Social Media Ads', '2025-09-11', '2025-09-03', 90, 'Completed'),
(55, 14, 'Email Automation', '2025-09-18', '2025-09-10', 88, 'Completed'),
(56, 14, 'Influencer Outreach', '2025-09-24', '2025-09-16', 85, 'Completed'),

-- Employee 15 - AR/VR
(57, 15, 'VR Training Module', '2025-09-07', '2025-08-22', 100, 'Completed'),
(58, 15, 'AR Shopping App', '2025-09-13', '2025-09-05', 86, 'Completed'),
(59, 15, 'VR Real Estate Tour', '2025-09-19', '2025-09-10', 90, 'Completed'),
(60, 15, 'AR Game', '2025-09-25', '2025-09-15', 88, 'Completed'),

-- Employee 16 - ERP Systems
(61, 16, 'ERP Finance Module', '2025-09-08', '2025-08-25', 100, 'Completed'),
(62, 16, 'ERP HR Module', '2025-09-14', '2025-09-05', 86, 'Completed'),
(63, 16, 'ERP Sales Module', '2025-09-20', '2025-09-12', 90, 'Completed'),
(64, 16, 'ERP Inventory Module', '2025-09-26', '2025-09-18', 88, 'Completed'),

-- Employee 17 - E-learning
(65, 17, 'Online Course Platform', '2025-09-06', '2025-08-20', 100, 'Completed'),
(66, 17, 'LMS Mobile App', '2025-09-12', '2025-09-04', 90, 'Completed'),
(67, 17, 'Assessment System', '2025-09-18', '2025-09-10', 85, 'Completed'),
(68, 17, 'Gamified Learning', '2025-09-24', '2025-09-16', 88, 'Completed'),

-- Employee 18 - Health Tech
(69, 18, 'Telemedicine Platform', '2025-09-05', '2025-08-20', 100, 'Completed'),
(70, 18, 'Patient Record System', '2025-09-10', '2025-09-02', 95, 'Completed'),
(71, 18, 'Medical Billing System', '2025-09-15', '2025-09-07', 88, 'Completed'),
(72, 18, 'Lab Test Booking', '2025-09-20', '2025-09-12', 85, 'Completed'),

-- Employee 19 - Logistics
(73, 19, 'Fleet Management', '2025-09-06', '2025-08-22', 100, 'Completed'),
(74, 19, 'Warehouse Tracking', '2025-09-11', '2025-09-03', 90, 'Completed'),
(75, 19, 'Shipment Tracking', '2025-09-17', '2025-09-10', 85, 'Completed'),
(76, 19, 'Supply Chain Analytics', '2025-09-23', '2025-09-15', 88, 'Completed'),

-- Employee 20 - Manufacturing Automation
(77, 20, 'Assembly Line Automation', '2025-09-07', '2025-08-21', 100, 'Completed'),
(78, 20, 'Quality Control System', '2025-09-13', '2025-09-05', 86, 'Completed'),
(79, 20, 'Maintenance Scheduler', '2025-09-19', '2025-09-11', 90, 'Completed'),
(80, 20, 'Energy Monitoring', '2025-09-25', '2025-09-17', 88, 'Completed');
-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `eid` int(11) NOT NULL,
  `points` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`eid`, `points`) VALUES
(1, 88),
(2, 92),
(3, 75),
(4, 81),
(5, 95),
(6, 78),
(7, 85),
(8, 69),
(9, 90),
(10, 73),
(11, 87),
(12, 80),
(13, 76),
(14, 84),
(15, 91),
(16, 72),
(17, 97),
(18, 65),
(19, 89),
(20, 82);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `base` int(11) NOT NULL,
  `bonus` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `base`, `bonus`, `total`) VALUES
(1, 55000, 5500, 60500),   -- IT, 5 yrs
(2, 60000, 7200, 67200),   -- Sales, 6 yrs
(3, 45000, 4500, 49500),   -- Support, 3 yrs
(4, 50000, 5000, 55000),   -- Admin, 4 yrs
(5, 70000, 10500, 80500),  -- IT, 8 yrs
(6, 48000, 4800, 52800),   -- Support, 3 yrs
(7, 52000, 6240, 58240),   -- Sales, 5 yrs
(8, 46000, 4600, 50600),   -- HR, 3 yrs
(9, 68000, 10200, 78200),  -- IT, 7 yrs
(10, 49000, 4900, 53900),  -- Support, 4 yrs
(11, 53000, 7420, 60420),  -- Sales, 6 yrs
(12, 47000, 4700, 51700),  -- HR, 3 yrs
(13, 55000, 8250, 63250),  -- IT, 6 yrs
(14, 50000, 6000, 56000),  -- Admin, 5 yrs
(15, 72000, 10800, 82800), -- IT, 9 yrs
(16, 46000, 4600, 50600),  -- HR, 2 yrs
(17, 75000, 11250, 86250), -- Sales, 10 yrs
(18, 44000, 4400, 48400),  -- Support, 2 yrs
(19, 65000, 9750, 74750),  -- IT, 8 yrs
(20, 52000, 6240, 58240);  -- Admin, 5 yrs

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alogin`
--
ALTER TABLE `alogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD PRIMARY KEY (`token`),
  ADD KEY `employee_leave_ibfk_1` (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `project_ibfk_1` (`eid`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alogin`
--
ALTER TABLE `alogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `employee_leave`
--
ALTER TABLE `employee_leave`
  MODIFY `token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_leave`
--
ALTER TABLE `employee_leave`
  ADD CONSTRAINT `employee_leave_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rank`
--
ALTER TABLE `rank`
  ADD CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
