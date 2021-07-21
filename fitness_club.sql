-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2021 at 10:52 PM
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
-- Database: `fitness_club`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_contact` varchar(10) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_picture` varchar(100) NOT NULL,
  `admin_cdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_contact`, `admin_password`, `admin_picture`, `admin_cdate`) VALUES
(1, 'admin', 'c@gmail.com', '1234567890', 'admin@123', 'dog-f2.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `package_name` varchar(100) NOT NULL,
  `package_price` int(11) NOT NULL,
  `package_validity` int(11) NOT NULL,
  `package_status` enum('1','0') NOT NULL DEFAULT '1',
  `package_cdate` varchar(200) NOT NULL,
  `package_udate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`package_id`, `package_name`, `package_price`, `package_validity`, `package_status`, `package_cdate`, `package_udate`) VALUES
(1, 'REGULAR ', 1000, 30, '1', '', '08/14/2020'),
(2, 'GOLD', 2500, 90, '1', '13/08/20', '08/14/2020'),
(3, 'Six', 1200, 30, '0', '1313/0808/2020', '08/21/2020'),
(4, 'PREMIUM', 9500, 360, '1', '08/25/2020', ''),
(5, 'GOLD2', 500, 30, '0', '08/25/2020', '12/03/2020'),
(6, 'Nini', 700, 30, '0', '08/25/2020', '09/05/2020'),
(7, 'Silver', 500, 360, '0', '09/06/2020', '12/03/2020'),
(8, 'Yello Family', 9000, 90, '0', '09/06/2020', '12/03/2020');

-- --------------------------------------------------------

--
-- Table structure for table `timeslote`
--

CREATE TABLE `timeslote` (
  `timeslote_id` int(11) NOT NULL,
  `timeslote_time` varchar(11) NOT NULL,
  `timeslote_status` enum('1','0') NOT NULL DEFAULT '1',
  `timeslote_cdate` varchar(100) NOT NULL,
  `timeslote_udate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timeslote`
--

INSERT INTO `timeslote` (`timeslote_id`, `timeslote_time`, `timeslote_status`, `timeslote_cdate`, `timeslote_udate`) VALUES
(1, '6 pm', '1', '08/13/2020', '08/14/2020'),
(2, '8 pm', '0', '', '12/04/2020'),
(3, '11am', '0', '', '08/21/2020'),
(4, '10 am', '1', '08/22/2020', ''),
(5, '6 am', '1', '09/06/2020', ''),
(6, '7 am', '1', '09/06/2020', ''),
(7, '8 pm', '1', '12/04/2020', ''),
(8, '5.50', '1', '12/04/2020', ''),
(9, '6.30', '1', '12/04/2020', '');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `trainer_id` int(11) NOT NULL,
  `trainer_fname` varchar(100) NOT NULL,
  `trainer_lname` varchar(100) NOT NULL,
  `trainer_email` varchar(100) NOT NULL,
  `trainer_contact` varchar(11) NOT NULL,
  `trainer_gender` varchar(100) NOT NULL,
  `trainer_aadhar` varchar(11) NOT NULL,
  `trainer_time_id` int(11) NOT NULL,
  `trainer_address` varchar(100) NOT NULL,
  `trainer_status` enum('1','0') NOT NULL DEFAULT '1',
  `trainer_cdate` varchar(100) NOT NULL,
  `trainer_udate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`trainer_id`, `trainer_fname`, `trainer_lname`, `trainer_email`, `trainer_contact`, `trainer_gender`, `trainer_aadhar`, `trainer_time_id`, `trainer_address`, `trainer_status`, `trainer_cdate`, `trainer_udate`) VALUES
(1, 'Ragju', 'Shyam', 'raghu@gmail.com', '2147483647', 'Female', '2147483647', 1, '', '0', '08/13/2020', '12/04/2020'),
(2, 'a', 'a', 'a@gmail.com', '11', 'Female', '1', 1, '', '0', '', '09/05/2020'),
(3, 'Balu', 'Nelwade', 'balu@gmail.com', '844848444', 'Female', '156489484', 1, '', '0', '', '08/21/2020'),
(4, 'Riya', 'Sharama', 'riya@mgail.com', '2147483647', '', '2147483647', 1, 'Dheli', '1', '09/06/2020', ''),
(5, 'Rohit', 'Rawut', 'rohit@gamil.com', '2147483647', '', '448444844', 6, 'Nagpur', '0', '09/06/2020', '12/03/2020'),
(6, 'John ', 'Mayes', 'john@gmail.com', '2147483647', '', '2147483647', 0, 'Plot number 7, Fly heights, Mumbai 400213', '1', '12/04/2020', ''),
(7, 'Aditya', 'Swamy', 'aditya@yahoo.com', '2147483647', '', '456712233', 6, 'Plot no.8, Kunj Villa, Mumbai- 400021', '1', '12/04/2020', ''),
(8, 'Shilpa', 'Vij', 'shilpa@gmail.com', '87623450000', '', '2147483647', 7, 'Plot no.3, Hill View apt, Kalyan-431002', '1', '12/04/2020', ''),
(9, 'Sumona ', 'Ghosh', 'sumona@gmail.com', '87766554433', '', '10999999922', 4, 'Plot no. 31, Rumi Villa, Mumbai-431090', '1', '12/04/2020', ''),
(10, 'Dhananjay', 'Pandey', 'dhan@gmail.com', '9988', '', '1122', 2, 'badlapur', '1', '12/04/2020', ''),
(11, 'Ram', 'kumarvishwas', 'ram@gmail.com', '4455', '', '899976', 8, 'warap', '1', '12/05/2020', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_fname` varchar(100) NOT NULL,
  `user_lname` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_gender` varchar(100) NOT NULL,
  `user_contact` varchar(11) NOT NULL,
  `user_aadhar` varchar(11) NOT NULL,
  `user_timeslote` int(11) NOT NULL,
  `user_trainer` int(11) NOT NULL,
  `user_address` varchar(200) NOT NULL,
  `user_status` enum('1','0') NOT NULL,
  `user_dob` varchar(100) NOT NULL,
  `user_joindate` varchar(200) NOT NULL,
  `user_cdate` varchar(100) NOT NULL,
  `user_udate` varchar(100) NOT NULL,
  `user_package` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_fname`, `user_lname`, `user_email`, `user_gender`, `user_contact`, `user_aadhar`, `user_timeslote`, `user_trainer`, `user_address`, `user_status`, `user_dob`, `user_joindate`, `user_cdate`, `user_udate`, `user_package`) VALUES
(1, 'Ram', 'Kumar', 'ram@gmail.com', 'Male', '2147483647', '2147483647', 1, 3, 'Goa', '0', '01/01/2020', '08/13/2020', '08/13/2020', '08/21/2020', 3),
(3, 'Priya', 'Shide', 'priya@gmail.com', 'Female', '2147483647', '2147483647', 1, 4, 'Dheli', '1', '06/06/1998', '09/06/2020', '09/06/2020', '', 7),
(4, 'Sachin', 'Dani', 'sachin@gmail.com', 'Male', '2147483647', '2147483647', 6, 5, 'Nagpur', '1', '05/09/1995', '09/06/2020', '09/06/2020', '', 8),
(5, 'raj ', 'dongre', 'raj@gmail.com', 'Male', '899901111', '1233967888', 4, 1, 'badlapur', '1', '01/05/2005', '12/03/2020', '12/03/2020', '', 1),
(6, 'Sherly', 'John', 'sherly@yahoo.in', 'Female', '2147483647', '90093322', 1, 4, 'Plot no 5 , Rose villa , Mumbai 421336', '1', '1992-10-14', '12/03/2020', '12/03/2020', 'fff', 2),
(8, 'Varun', 'Sharma', 'varun@gmail.com', 'Male', '6789000001', '4501343434', 5, 6, 'Plot no.2, Fame Villa, Mumbai 421000', '1', '10/20/1993', '12/04/2020', '12/04/2020', '', 2),
(9, 'raju', 'Sulsa', 'deppak@gmail.com', 'Male', '9000001122', '3456780000', 1, 6, 'Plot 6, Hill View apt, Mumbai 4310000', '1', '2001-11-15', '12/04/2020', '12/04/2020', 'fff', 2),
(11, 'Manoj ', 'Gill', 'manoj@gmail.com', 'Male', '77889900', '123456', 9, 6, 'badlapur', '1', '01/09/2010', '12/05/2020', '12/05/2020', '', 1),
(12, 'abc', 'xyz', 'abc@gmail.com', 'Male', '56778', '111000099', 6, 7, 'ulhasnagar', '1', '02/23/2012', '12/05/2020', '12/05/2020', '', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `timeslote`
--
ALTER TABLE `timeslote`
  ADD PRIMARY KEY (`timeslote_id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`trainer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `timeslote`
--
ALTER TABLE `timeslote`
  MODIFY `timeslote_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `trainer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
