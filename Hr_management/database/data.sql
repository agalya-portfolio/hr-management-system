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
(10, 'admin', 'admin');

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
  `points` text NOT NULL
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


(21, 'Akash', 'Mishra', 'akash.mishra@example.com', 'pass@123', '1998-03-12', 'Male', '9876543230', '100021', 'Chennai TN', 'IT', 'B.Tech CSE', 56500),
(22, 'Swathi', 'Menon', 'swathi.menon@example.com', 'pass@123', '1997-11-25', 'Female', '9876543231', '100022', 'Bangalore KA', 'HR', 'MBA HR', 48000),
(23, 'Nikhil', 'Rao', 'nikhil.rao@example.com', 'pass@123', '1995-07-18', 'Male', '9876543232', '100023', 'Hyderabad TS', 'Finance', 'MBA Finance', 60000),
(24, 'Anusha', 'Sharma', 'anusha.sharma@example.com', 'pass@123', '1996-05-10', 'Female', '9876543233', '100024', 'Delhi DL', 'Marketing', 'BBA', 47000),
(25, 'Harish', 'Verma', 'harish.verma@example.com', 'pass@123', '1994-12-29', 'Male', '9876543234', '100025', 'Kochi KL', 'Sales', 'MBA', 52000),
(26, 'Deepa', 'Iyer', 'deepa.iyer@example.com', 'pass@123', '1997-09-08', 'Female', '9876543235', '100026', 'Mumbai MH', 'IT', 'MCA', 55500),
(27, 'Ramesh', 'Nair', 'ramesh.nair@example.com', 'pass@123', '1991-06-14', 'Male', '9876543236', '100027', 'Trivandrum KL', 'Finance', 'M.Com', 60500),
(28, 'Lavanya', 'Kapoor', 'lavanya.kapoor@example.com', 'pass@123', '1995-08-21', 'Female', '9876543237', '100028', 'Pune MH', 'HR', 'BBA HR', 46500),
(29, 'Vishal', 'Patel', 'vishal.patel@example.com', 'pass@123', '1990-10-02', 'Male', '9876543238', '100029', 'Ahmedabad GJ', 'Operations', 'MBA Ops', 59000),
(30, 'Roshni', 'Das', 'roshni.das@example.com', 'pass@123', '1998-01-15', 'Female', '9876543239', '100030', 'Kolkata WB', 'Marketing', 'B.Com', 45000),
(31, 'Kiran', 'Reddy', 'kiran.reddy@example.com', 'pass@123', '1993-04-09', 'Male', '9876543240', '100031', 'Hyderabad TS', 'IT', 'B.Tech IT', 57500),
(32, 'Gayathri', 'Pillai', 'gayathri.pillai@example.com', 'pass@123', '1996-02-20', 'Female', '9876543241', '100032', 'Chennai TN', 'Finance', 'CA', 61000),
(33, 'Sandeep', 'Jain', 'sandeep.jain@example.com', 'pass@123', '1997-07-13', 'Male', '9876543242', '100033', 'Indore MP', 'HR', 'MBA HR', 49500),
(34, 'Keerthi', 'Desai', 'keerthi.desai@example.com', 'pass@123', '1995-05-03', 'Female', '9876543243', '100034', 'Surat GJ', 'Sales', 'MBA', 50500),
(35, 'Amit', 'Choudhary', 'amit.choudhary@example.com', 'pass@123', '1988-09-17', 'Male', '9876543244', '100035', 'Jaipur RJ', 'Marketing', 'MBA Marketing', 62000),
(36, 'Pallavi', 'Joshi', 'pallavi.joshi@example.com', 'pass@123', '1997-10-26', 'Female', '9876543245', '100036', 'Bhopal MP', 'IT', 'M.Tech IT', 56000),
(37, 'Ravi', 'Krishnan', 'ravi.krishnan@example.com', 'pass@123', '1992-01-31', 'Male', '9876543246', '100037', 'Coimbatore TN', 'Finance', 'MBA Finance', 60000),
(38, 'Sowmya', 'Rana', 'sowmya.rana@example.com', 'pass@123', '1996-06-12', 'Female', '9876543247', '100038', 'Delhi DL', 'HR', 'MBA HR', 47000),
(39, 'Mohan', 'Shetty', 'mohan.shetty@example.com', 'pass@123', '1993-03-07', 'Male', '9876543248', '100039', 'Mangalore KA', 'Operations', 'BBA', 49500),
(40, 'Nandini', 'Bose', 'nandini.bose@example.com', 'pass@123', '1995-11-22', 'Female', '9876543249', '100040', 'Kolkata WB', 'IT', 'B.Sc IT', 54500);

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

-- Employee 1: Arjun Kumar
(1, 2025001, '2025-01-10', '2025-01-12', 'Medical Leave', 'Approved'),
(1, 2025002, '2025-04-05', '2025-04-07', 'Family Function', 'Pending'),
(1, 2025003, '2025-07-15', '2025-07-18', 'Vacation Trip', 'Approved'),

-- Employee 2: Priya Sharma
(2, 2025004, '2025-02-20', '2025-02-22', 'Personal Work', 'Rejected'),
(2, 2025005, '2025-05-08', '2025-05-10', 'Medical Leave', 'Approved'),
(2, 2025006, '2025-10-12', '2025-10-14', 'Festival', 'Approved'),

-- Employee 3: Karthik Raj
(3, 2025007, '2025-03-03', '2025-03-05', 'Conference', 'Approved'),
(3, 2025008, '2025-06-17', '2025-06-19', 'Sick Leave', 'Pending'),
(3, 2025009, '2025-09-25', '2025-09-27', 'Vacation', 'Approved'),

-- Employee 4: Sneha Iyer
(4, 2025010, '2025-01-22', '2025-01-24', 'Exam Preparation', 'Rejected'),
(4, 2025011, '2025-04-12', '2025-04-14', 'Marriage Function', 'Approved'),
(4, 2025012, '2025-07-29', '2025-07-31', 'Family Event', 'Approved'),

-- Employee 5: Vignesh Reddy
(5, 2025013, '2025-02-15', '2025-02-17', 'Urgent Work', 'Pending'),
(5, 2025014, '2025-06-05', '2025-06-07', 'Medical Leave', 'Approved'),
(5, 2025015, '2025-11-10', '2025-11-12', 'Festival', 'Approved'),

-- Employee 6: Meena Nair
(6, 2025016, '2025-03-19', '2025-03-21', 'Conference', 'Approved'),
(6, 2025017, '2025-05-25', '2025-05-27', 'Vacation Trip', 'Approved'),
(6, 2025018, '2025-08-18', '2025-08-20', 'Sick Leave', 'Approved'),

-- Employee 7: Rajesh Pillai
(7, 2025019, '2025-01-08', '2025-01-10', 'Festival', 'Approved'),
(7, 2025020, '2025-04-28', '2025-04-30', 'Family Function', 'Pending'),
(7, 2025021, '2025-12-02', '2025-12-04', 'Vacation', 'Approved'),

-- Employee 8: Kavya Menon
(8, 2025022, '2025-02-11', '2025-02-13', 'Marriage Function', 'Approved'),
(8, 2025023, '2025-06-22', '2025-06-24', 'Medical Leave', 'Rejected'),
(8, 2025024, '2025-09-10', '2025-09-12', 'Family Event', 'Approved'),

-- Employee 9: Suresh Das
(9, 2025025, '2025-03-07', '2025-03-09', 'Vacation', 'Approved'),
(9, 2025026, '2025-05-30', '2025-06-01', 'Personal Work', 'Pending'),
(9, 2025027, '2025-11-15', '2025-11-17', 'Conference', 'Approved'),

-- Employee 10: Anjali Verma
(10, 2025028, '2025-04-03', '2025-04-05', 'Sick Leave', 'Approved'),
(10, 2025029, '2025-07-11', '2025-07-13', 'Festival', 'Approved'),
(10, 2025030, '2025-12-20', '2025-12-22', 'Vacation', 'Approved'),

-- Employee 11: Rohit Gupta
(11, 2025031, '2025-02-16', '2025-02-18', 'Medical Leave', 'Approved'),
(11, 2025032, '2025-06-14', '2025-06-16', 'Family Function', 'Pending'),
(11, 2025033, '2025-09-28', '2025-09-30', 'Exam Preparation', 'Rejected'),

-- Employee 12: Pooja Patil
(12, 2025034, '2025-03-22', '2025-03-24', 'Marriage Function', 'Approved'),
(12, 2025035, '2025-07-19', '2025-07-21', 'Vacation Trip', 'Approved'),
(12, 2025036, '2025-11-08', '2025-11-10', 'Sick Leave', 'Approved'),

-- Employee 13: Manoj Kumar
(13, 2025037, '2025-01-05', '2025-01-07', 'Medical Leave', 'Approved'),
(13, 2025038, '2025-04-19', '2025-04-21', 'Festival', 'Approved'),
(13, 2025039, '2025-09-02', '2025-09-04', 'Personal Work', 'Pending'),

-- Employee 14: Divya Rani
(14, 2025040, '2025-02-18', '2025-02-20', 'Marriage Function', 'Approved'),
(14, 2025041, '2025-05-22', '2025-05-24', 'Vacation Trip', 'Approved'),
(14, 2025042, '2025-11-25', '2025-11-27', 'Family Event', 'Approved'),

-- Employee 15: Sanjay Singh
(15, 2025043, '2025-03-11', '2025-03-13', 'Exam Preparation', 'Rejected'),
(15, 2025044, '2025-07-23', '2025-07-25', 'Medical Leave', 'Approved'),
(15, 2025045, '2025-10-09', '2025-10-11', 'Festival', 'Approved'),

-- Employee 16: Neha Joshi
(16, 2025046, '2025-01-27', '2025-01-29', 'Personal Work', 'Pending'),
(16, 2025047, '2025-06-09', '2025-06-11', 'Conference', 'Approved'),
(16, 2025048, '2025-09-19', '2025-09-21', 'Vacation', 'Approved'),

-- Employee 17: Aditya Rao
(17, 2025049, '2025-02-08', '2025-02-10', 'Festival', 'Approved'),
(17, 2025050, '2025-05-12', '2025-05-14', 'Medical Leave', 'Approved'),
(17, 2025051, '2025-08-27', '2025-08-29', 'Marriage Function', 'Approved'),

-- Employee 18: Aishwarya Shetty
(18, 2025052, '2025-03-28', '2025-03-30', 'Sick Leave', 'Approved'),
(18, 2025053, '2025-07-02', '2025-07-04', 'Family Function', 'Pending'),
(18, 2025054, '2025-12-14', '2025-12-16', 'Vacation', 'Approved'),

-- Employee 19: Deepak Yadav
(19, 2025055, '2025-04-07', '2025-04-09', 'Medical Leave', 'Approved'),
(19, 2025056, '2025-08-05', '2025-08-07', 'Conference', 'Approved'),
(19, 2025057, '2025-11-29', '2025-12-01', 'Family Event', 'Rejected'),

-- Employee 20: Ritu Malhotra
(20, 2025058, '2025-02-12', '2025-02-14', 'Vacation Trip', 'Approved'),
(20, 2025059, '2025-05-18', '2025-05-20', 'Medical Leave', 'Approved'),
(20, 2025060, '2025-10-22', '2025-10-24', 'Festival', 'Approved'),

-- Employee 21: Varun Mehta
(21, 2025061, '2025-01-09', '2025-01-11', 'Marriage Function', 'Approved'),
(21, 2025062, '2025-06-04', '2025-06-06', 'Family Function', 'Pending'),
(21, 2025063, '2025-09-26', '2025-09-28', 'Sick Leave', 'Approved'),

-- Employee 22: Shreya Das
(22, 2025064, '2025-03-15', '2025-03-17', 'Festival', 'Approved'),
(22, 2025065, '2025-07-07', '2025-07-09', 'Vacation Trip', 'Approved'),
(22, 2025066, '2025-12-18', '2025-12-20', 'Medical Leave', 'Rejected'),

-- Employee 23: Nikhil Jain
(23, 2025067, '2025-02-06', '2025-02-08', 'Exam Preparation', 'Rejected'),
(23, 2025068, '2025-05-27', '2025-05-29', 'Marriage Function', 'Approved'),
(23, 2025069, '2025-08-23', '2025-08-25', 'Vacation', 'Approved'),

-- Employee 24: Swati Kaur
(24, 2025070, '2025-01-31', '2025-02-02', 'Medical Leave', 'Approved'),
(24, 2025071, '2025-06-16', '2025-06-18', 'Conference', 'Approved'),
(24, 2025072, '2025-09-13', '2025-09-15', 'Family Function', 'Pending'),
(24, 2025073, '2025-12-13', '2025-12-15', 'Vacation', 'Pending'),

-- Employee 25: Harish Kumar
(25, 2025074, '2025-04-11', '2025-04-13', 'Sick Leave', 'Approved'),
(25, 2025075, '2025-07-25', '2025-07-27', 'Festival', 'Approved'),
(25, 2025076, '2025-11-21', '2025-11-23', 'Vacation', 'Approved'),

-- Employee 26: Anusha Rao
(26, 2025077, '2025-02-21', '2025-02-23', 'Family Function', 'Pending'),
(26, 2025078, '2025-05-31', '2025-06-02', 'Marriage Function', 'Approved'),
(26, 2025079, '2025-08-15', '2025-08-17', 'Medical Leave', 'Approved'),

-- Employee 27: Ramesh Chandra
(27, 2025080, '2025-03-25', '2025-03-27', 'Exam Preparation', 'Rejected'),
(27, 2025081, '2025-06-19', '2025-06-21', 'Vacation Trip', 'Approved'),
(27, 2025082, '2025-10-03', '2025-10-05', 'Festival', 'Approved'),

-- Employee 28: Kavitha Nair
(28, 2025083, '2025-01-14', '2025-01-16', 'Medical Leave', 'Approved'),
(28, 2025084, '2025-05-15', '2025-05-17', 'Family Event', 'Approved'),
(28, 2025085, '2025-09-07', '2025-09-09', 'Marriage Function', 'Approved'),

-- Employee 29: Ajay Sharma
(29, 2025086, '2025-02-19', '2025-02-21', 'Vacation', 'Approved'),
(29, 2025087, '2025-07-01', '2025-07-03', 'Conference', 'Approved'),
(29, 2025088, '2025-12-26', '2025-12-28', 'Sick Leave', 'Approved'),

-- Employee 30: Rina Paul
(30, 2025089, '2025-03-01', '2025-03-03', 'Festival', 'Approved'),
(30, 2025090, '2025-06-12', '2025-06-14', 'Vacation Trip', 'Approved'),

-- Employee 31: Gaurav Patel
(31, 2025091, '2025-04-15', '2025-04-17', 'Family Function', 'Pending'),
(31, 2025092, '2025-07-09', '2025-07-11', 'Marriage Function', 'Approved'),
(31, 2025093, '2025-09-30', '2025-10-02', 'Vacation', 'Approved'),

-- Employee 32: Ananya Sen
(32, 2025094, '2025-03-06', '2025-03-08', 'Medical Leave', 'Approved'),
(32, 2025095, '2025-05-20', '2025-05-22', 'Exam Preparation', 'Rejected'),
(32, 2025096, '2025-08-30', '2025-09-01', 'Festival', 'Approved'),

-- Employee 33: Sunil Dutt
(33, 2025097, '2025-01-19', '2025-01-21', 'Vacation Trip', 'Approved'),
(33, 2025098, '2025-06-24', '2025-06-26', 'Conference', 'Approved'),
(33, 2025099, '2025-12-06', '2025-12-08', 'Sick Leave', 'Approved'),

-- Employee 34: Lakshmi Krishnan
(34, 2025100, '2025-03-09', '2025-03-11', 'Marriage Function', 'Approved'),
(34, 2025101, '2025-07-05', '2025-07-07', 'Medical Leave', 'Pending'),
(34, 2025102, '2025-10-28', '2025-10-30', 'Vacation', 'Approved'),

-- Employee 35: Vivek Anand
(35, 2025103, '2025-02-25', '2025-02-27', 'Medical Leave', 'Approved'),
(35, 2025104, '2025-05-13', '2025-05-15', 'Festival', 'Approved'),
(35, 2025105, '2025-09-16', '2025-09-18', 'Personal Work', 'Rejected'),

-- Employee 36: Radhika Menon
(36, 2025106, '2025-01-06', '2025-01-08', 'Exam Preparation', 'Rejected'),
(36, 2025107, '2025-04-24', '2025-04-26', 'Marriage Function', 'Approved'),
(36, 2025108, '2025-08-09', '2025-08-11', 'Family Function', 'Pending'),

-- Employee 37: Tarun Bhatia
(37, 2025109, '2025-03-18', '2025-03-20', 'Vacation', 'Approved'),
(37, 2025110, '2025-06-26', '2025-06-28', 'Medical Leave', 'Approved'),
(37, 2025111, '2025-12-11', '2025-12-13', 'Festival', 'Approved'),

-- Employee 38: Sonia Kapoor
(38, 2025112, '2025-02-14', '2025-02-16', 'Conference', 'Approved'),
(38, 2025113, '2025-05-09', '2025-05-11', 'Vacation Trip', 'Approved');


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

(81, 21, 'HR Portal Design', '2025-09-20', '2025-09-18', 85, 'Completed'),
(82, 21, 'Payroll Automation', '2025-09-22', '2025-09-21', 90, 'Completed'),

(83, 22, 'E-Commerce App', '2025-09-25', NULL, NULL, 'Pending'),
(84, 22, 'Product Catalog', '2025-09-28', '2025-09-27', 78, 'Completed'),

(85, 23, 'Banking Dashboard', '2025-09-15', '2025-09-17', NULL, 'Delayed'),
(86, 23, 'Loan Calculator', '2025-09-18', '2025-09-18', 82, 'Completed'),

(87, 24, 'Marketing Website', '2025-09-30', '2025-09-28', 88, 'Completed'),
(88, 24, 'SEO Analytics', '2025-10-05', '2025-10-04', 79, 'Completed'),

(89, 25, 'Inventory Tracker', '2025-09-27', '2025-09-26', 91, 'Completed'),
(90, 25, 'Supplier Database', '2025-09-29', NULL, NULL, 'Pending'),

(91, 26, 'CRM Tool', '2025-09-18', '2025-09-20', NULL, 'Delayed'),
(92, 26, 'Lead Management', '2025-09-22', '2025-09-21', 76, 'Completed'),

(93, 27, 'Sales Forecast', '2025-10-01', '2025-09-30', 89, 'Completed'),
(94, 27, 'Market Survey', '2025-10-03', '2025-10-02', 81, 'Completed'),

(95, 28, 'Budget Planner', '2025-09-19', '2025-09-19', 73, 'Completed'),
(96, 28, 'Tax Reports', '2025-09-25', NULL, NULL, 'Pending'),

(97, 29, 'Mobile Banking App', '2025-09-12', '2025-09-15', NULL, 'Delayed'),
(98, 29, 'Transaction Logs', '2025-09-20', '2025-09-19', 84, 'Completed'),

(99, 30, 'Recruitment System', '2025-09-24', '2025-09-23', 77, 'Completed'),
(100, 30, 'Training Portal', '2025-09-27', '2025-09-26', 80, 'Completed'),

(101, 31, 'Feedback Analysis', '2025-09-30', NULL, NULL, 'Pending'),
(102, 31, 'Employee Survey', '2025-10-02', '2025-10-01', 85, 'Completed'),

(103, 32, 'Stock Management', '2025-09-29', '2025-09-28', 83, 'Completed'),
(104, 32, 'Order Tracker', '2025-10-01', '2025-09-30', 88, 'Completed'),

(105, 33, 'Online Classes', '2025-09-20', '2025-09-19', 86, 'Completed'),
(106, 33, 'Exam Portal', '2025-09-23', NULL, NULL, 'Pending'),

(107, 34, 'Hospital Records', '2025-09-14', '2025-09-16', NULL, 'Delayed'),
(108, 34, 'Patient Tracker', '2025-09-18', '2025-09-17', 81, 'Completed'),

(109, 35, 'Attendance System', '2025-09-22', '2025-09-21', 90, 'Completed'),
(110, 35, 'Payroll App', '2025-09-25', '2025-09-24', 87, 'Completed'),

(111, 36, 'Library System', '2025-09-27', NULL, NULL, 'Pending'),
(112, 36, 'E-Book Portal', '2025-09-29', '2025-09-28', 75, 'Completed'),

(113, 37, 'Restaurant Orders', '2025-09-15', '2025-09-17', NULL, 'Delayed'),
(114, 37, 'Menu System', '2025-09-20', '2025-09-19', 82, 'Completed'),

(115, 38, 'Chatbot Support', '2025-09-25', '2025-09-24', 84, 'Completed'),
(116, 38, 'Ticketing System', '2025-09-28', '2025-09-27', 79, 'Completed'),

(117, 39, 'Flight Booking', '2025-09-23', NULL, NULL, 'Pending'),
(118, 39, 'Check-in Portal', '2025-09-26', '2025-09-25', 88, 'Completed'),

(119, 40, 'Hotel Reservation', '2025-09-29', '2025-09-28', 85, 'Completed'),
(120, 40, 'Travel Guide', '2025-10-02', '2025-10-01', 91, 'Completed');

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
(1, 70),
(2, 88),
(3, 87),
(4, 65),
(5, 85),
(6, 67),
(7, 67),
(8, 85),
(9, 68),
(10, 67),
(11, 92),
(12, 90),
(13, 90),
(14, 91),
(15, 91),
(16, 90),
(17, 90),
(18, 90),
(19, 91),
(20, 91),
(21, 44),
(22, 20),
(23, 21),
(24, 42),
(25, 23),
(26, 19),
(27, 43),
(28, 18),
(29, 21),
(30, 39),
(31, 21),
(32, 43),
(33, 22),
(34, 28),
(35, 44),
(36, 19),
(37, 21),
(38, 41),
(39, 19),
(40, 44);


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

(1, 55000, 5500, 60500),   
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
(20, 52000, 6240, 58240),  -- Admin, 5 yrs
(21, 50000, 5000, 55000),  -- IT, 3 yrs
(22, 52000, 6240, 58240),  -- HR, 5 yrs
(23, 47000, 4700, 51700),  -- Finance, 3 yrs
(24, 48000, 5760, 53760),  -- Marketing, 4 yrs
(25, 60000, 9000, 69000),  -- Sales, 8 yrs
(26, 55000, 8250, 63250),  -- IT, 6 yrs
(27, 52000, 6240, 58240),  -- Finance, 5 yrs
(28, 48000, 4800, 52800),  -- HR, 3 yrs
(29, 65000, 9750, 74750),  -- Marketing, 8 yrs
(30, 57000, 8550, 65550),  -- IT, 7 yrs
(31, 53000, 7420, 60420),  -- Sales, 6 yrs
(32, 60000, 7200, 67200),  -- Finance, 6 yrs
(33, 56000, 6720, 62720),  -- IT, 6 yrs
(34, 50000, 5000, 55000),  -- HR, 4 yrs
(35, 68000, 10200, 78200), -- IT, 9 yrs
(36, 49000, 4900, 53900),  -- Marketing, 4 yrs
(37, 53000, 7420, 60420),  -- Sales, 6 yrs
(38, 55000, 8250, 63250),  -- IT, 6 yrs
(39, 60000, 9000, 69000),  -- Finance, 8 yrs
(40, 50000, 5000, 55000);  -- HR, 4 yrs


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
