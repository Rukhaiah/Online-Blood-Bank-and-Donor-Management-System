-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2024 at 04:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '32b610d186150e631dace39b01db9519', '2024-02-21 11:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `blood_banks`
--

CREATE TABLE `blood_banks` (
  `id` int(11) NOT NULL,
  `blood_bank_name` varchar(255) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `state` varchar(100) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `Availability` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_banks`
--

INSERT INTO `blood_banks` (`id`, `blood_bank_name`, `contact_no`, `email`, `address`, `state`, `status`, `Availability`) VALUES
(1, 'hyd govt hsptl', '9876543212', 'syedrukhaiah@gmail.com', 'hyderabad', 'telangana', NULL, NULL),
(2, 'hyd govt hsptl', '9876543212', 'syedrukhaiah@gmail.com', 'hyderabad', 'telangana', NULL, NULL),
(3, 'hyd govt hsptl', '9876543212', 'syedrukhaiah@gmail.com', 'hyderabad', 'telangana', NULL, NULL),
(4, 'hyd govt hsptl', '9876543212', 'syedrukhaiah@gmail.com', 'hyderabad', 'telangana', NULL, NULL),
(5, 'hyd govt hsptl', '9876543212', 'syedrukhaiah@gmail.com', 'hyderabad', 'telangana', NULL, NULL),
(6, 'hyd govt hsptl', '9876543212', 'syedrukhaiah@gmail.com', 'hyderabad', 'telangana', NULL, NULL),
(7, 'tpt govt hospital', '9872358634', 'tpthsptl@gmail.com', 'tirupati', 'Andhra Pradesh', NULL, NULL),
(8, 'tpt govt hospital', '9872358634', 'tpthsptl@gmail.com', 'tirupati', 'Andhra Pradesh', NULL, NULL),
(9, 'delhi hsptl', '7654726752', 'delhi@gmail.com', 'delhi', 'Delhi', 1, NULL),
(10, 'hyd govt hsptl', '9876543212', 'syedrukhaiah@gmail.com', 'hyderabad', 'Jharkhand', 1, 'O+,O-,AB+'),
(11, 'hyd govt hsptl', '9876543212', 'syedrukhaiah@gmail.com', 'hyderabad', 'Jharkhand', 1, 'O+,O-,AB+'),
(12, 'banglore govt hsptl', '5475668679', 'bnglr@gmail.com', 'banglore', 'Karnataka', 1, 'A+'),
(13, 'Kadapa Govt Hospital', '8765434567', 'kadapahsptl@gmail.com', 'Kadapa', 'Andhra Pradesh', 1, 'A+,A-,B+'),
(14, 'tirupati blood bank hsptl', '8723576237', 'tirupati@gmail.com', 'tirupati', 'Andhra Pradesh', 1, 'A+,A-,B+'),
(15, 'Tirupati blood bank Hospital', '8736573657', 'tirupati1@gmail.com', 'tirupati', 'Andhra Pradesh', 1, 'A+,B+,B-');

-- --------------------------------------------------------

--
-- Table structure for table `tblblooddonars`
--

CREATE TABLE `tblblooddonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `District` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblblooddonars`
--

INSERT INTO `tblblooddonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Gender`, `Age`, `BloodGroup`, `Message`, `PostingDate`, `status`, `State`, `District`) VALUES
(13, 'Rukhaiah', '8987687687', 'angel.rukhaiah@gmail.com', 'Female', 21, 'A+', ' I want to help the needy one!!!', '2024-02-21 16:21:49', 1, 'Telangana', ''),
(14, 'Sreya', '8786542344', 'sreyakrishnamurthy2143@gmail.com', 'Female', 23, 'O+', ' ', '2024-02-21 16:36:05', 1, 'Andhra Pradesh', ''),
(15, 'Sasi', '7657687264', 'sasikala@gmail.com', 'Female', 29, 'AB-', ' ', '2024-02-21 17:28:51', 1, 'Karnataka', ''),
(16, 'Rukhaiah', '9765435678', 'rukhaiah1@gmail.com', 'Female', 21, 'A-', ' ', '2024-03-01 14:12:46', 1, 'Delhi', ''),
(17, 'Mohammad Yusuf', '7032952807', 'vadapalliyusuf66@gmail.com', 'Male', 17, 'O+', ' ', '2024-04-06 11:02:27', 1, 'Andhra Pradesh', ''),
(18, 'Rukhaiah', '8555971137', 'sreya@gmail.com', 'Female', 23, 'O+', ' ', '2024-04-10 11:41:10', 1, 'Tamil Nadu', ''),
(19, 'Rukhaih', '8765873566', 'angel.rukhaiah@gmail.com', 'Female', 23, 'O+', ' ', '2024-04-10 12:41:41', 1, 'Andhra Pradesh', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(9, 'A+', '2024-02-21 17:30:35'),
(10, 'B+', '2024-02-21 17:30:39'),
(11, 'O+', '2024-02-21 17:30:45'),
(12, 'A-', '2024-02-21 17:30:50'),
(13, 'B-', '2024-02-21 17:30:55'),
(14, 'O-', '2024-02-21 17:31:00'),
(15, 'AB+', '2024-02-21 17:32:07'),
(16, 'AB-', '2024-02-21 17:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Tirupati																		', 'rukhaiah@gmail.com', '8555971137');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(7, 'Rukhaiah', 'rukhaiah01@gmail.com', '9878676565', 'I want A+ blood urgent.', '2024-03-01 14:13:57', 1),
(8, 'Rukhaiah', 'syedrukhaiah@gmail.com', '8555971137', 'I want A+ blood group. ', '2024-04-10 11:47:08', NULL),
(9, 'Rukhaiah', 'angel.rukhaiah@gmail.com', '7657865786', 'I want A+ Blood Group URGENT', '2024-04-10 12:43:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<div style=\"text-align: center;\"><span style=\"font-weight: bold; font-size: x-large;\">Reasons you should donate</span></div><div style=\"text-align: left;\"><div style=\"\"><span style=\"font-size: large;\"><br></span></div><div style=\"\"><span style=\"font-size: large;\">1. Save Lives: Donating blood can directly contribute to saving someone\'s life, especially in emergency situations, surgeries, or for patients with chronic illnesses.</span></div><div style=\"\"><span style=\"font-size: large;\"><br></span></div><div style=\"\"><span style=\"font-size: large;\">2. Sense of Purpose: Knowing that your donation can positively impact someone\'s health and well-being can provide a profound sense of purpose and fulfillment.</span></div><div style=\"\"><span style=\"font-size: large;\"><br></span></div><div style=\"\"><span style=\"font-size: large;\">3. Community Support: Blood donations are essential for supporting your local community and ensuring an adequate blood supply for those in need, including friends, family, and neighbors.</span></div><div style=\"\"><span style=\"font-size: large;\"><br></span></div><div style=\"\"><span style=\"font-size: large;\">4. Health Benefits: Regular blood donation has been associated with health benefits such as reduced risk of cardiovascular disease and lower iron levels, which can be beneficial for overall health.</span></div><div style=\"\"><span style=\"font-size: large;\"><br></span></div><div style=\"\"><span style=\"font-size: large;\">5. Free Health Check-up: Blood donation centers often provide a free health check-up before each donation, which can include tests for blood pressure, hemoglobin levels, and infectious diseases, offering valuable insights into your health status.</span></div><div style=\"\"><span style=\"font-size: large;\"><br></span></div><div style=\"\"><span style=\"font-size: large;\">6. Easy and Safe Process: Donating blood is a simple, safe, and relatively quick process. The screening procedures ensure that blood donation is safe for both the donor and the recipient.</span></div><div style=\"\"><span style=\"font-size: large;\"><br></span></div><div style=\"\"><span style=\"font-size: large;\">7. Contribution to Research: Blood donations also contribute to medical research, helping scientists develop new treatments, medications, and technologies for various health conditions.</span></div><div style=\"\"><span style=\"font-size: large;\"><br></span></div><div style=\"\"><span style=\"font-size: large;\">8. Personal Connection: Many donors have a personal connection to blood donation, either through knowing someone who needed blood or through their own experiences as recipients, driving them to give back to others in need.</span></div><div style=\"\"><span style=\"font-size: large;\"><br></span></div><div style=\"\"><span style=\"font-size: large;\">9. Emergency Preparedness: By becoming a blood donor, you can play a crucial role in maintaining a stable blood supply, which is essential for responding to emergencies such as natural disasters or mass casualty events.</span></div><div style=\"\"><span style=\"font-size: large;\"><br></span></div><div style=\"\"><span style=\"font-size: large;\">10. Philanthropic Act: Donating blood is a simple yet impactful way to give back to society and help those who are facing health challenges beyond their control.</span></div><div style=\"\"><br></div></div>'),
(3, 'About Us ', 'aboutus', '																														<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large;\">The \"About Us\" section of our online blood bank and donor management system conveys our mission to save lives by connecting donors with those in need of life-saving blood transfusions. We uphold values of integrity, compassion, and innovation, and are committed to transparency and accountability. Our team, comprised of dedicated individuals, works tirelessly to make a tangible impact in our community through partnerships and collaborations. We\'re grateful for the support of donors, volunteers, and partners who share our vision of improving healthcare outcomes. Join us in making a difference today.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large;\"><br></span></div><div style=\"text-align: justify;\"><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large;\">An online blood bank management system facilitates donor registration, appointment scheduling, and inventory management. It manages blood requests, matches donors, and ensures safety through testing and processing. The system notifies donors of appointments and drives, offers educational resources, and provides customer support. Overall, it streamlines operations, ensuring a steady supply of safe blood for patients.</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large;\"><br></span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large;\"><span style=\"font-weight: bold;\">Core Values:</span>&nbsp;We are driven by a deep sense of empathy and care for every patient and donor we serve. Integrity: We uphold the highest standards of ethical conduct. transparency, and accountability in all our operations. Excellence: We continuously strive for excellence in every aspect of our work, from blood collection to customer service. Community Service: We are committed to giving back to our community and making a positive impact on the lives of those we serve.</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large;\"><br></span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large;\"><span style=\"font-weight: bold;\">Mission Statement:</span> At LifeLine Blood Bank, our mission is simple yet profound; to be the beacon of hope for those in need by ensuring a constant and reliable blood supply, saving lives one donation at a time. Vision: Our vision at LifeLine is to create a world where no one dies due to a shortage of blood. We strive to expand our reach, enhance our services,&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large;\">and innovate our practices to meet the evolving needs of our community.</span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large;\"><br></span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large;\"><br></span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large;\"><br></span></div><div style=\"\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: large;\"><br></span></div></div>\r\n										\r\n										\r\n										');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_banks`
--
ALTER TABLE `blood_banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blood_banks`
--
ALTER TABLE `blood_banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblblooddonars`
--
ALTER TABLE `tblblooddonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
