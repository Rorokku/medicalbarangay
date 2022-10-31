-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2022 at 04:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medicaldatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `activitylog`
--

CREATE TABLE `activitylog` (
  `al_id` int(5) NOT NULL,
  `bp_id` int(5) NOT NULL,
  `timejoin` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `datejoin` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activitylog`
--

INSERT INTO `activitylog` (`al_id`, `bp_id`, `timejoin`, `datejoin`) VALUES
(1, 1, '2022-10-06 06:37:53', '2022-10-06'),
(2, 1, '2022-10-13 04:04:15', '2022-10-13'),
(3, 1, '2022-10-13 04:09:22', '2022-10-13'),
(4, 1, '2022-10-13 04:17:09', '2022-10-13'),
(5, 1, '2022-10-13 04:22:07', '2022-10-13'),
(6, 1, '2022-10-13 04:23:00', '2022-10-13'),
(7, 1, '2022-10-13 04:29:06', '2022-10-13'),
(8, 1, '2022-10-13 13:53:13', '2022-10-13'),
(9, 1, '2022-10-15 07:59:44', '2022-10-15'),
(10, 1, '2022-10-15 09:01:40', '2022-10-15'),
(11, 1, '2022-10-15 13:35:25', '2022-10-15'),
(12, 1, '2022-10-17 01:45:19', '2022-10-17'),
(13, 1, '2022-10-17 01:47:25', '2022-10-17'),
(14, 1, '2022-10-17 01:47:37', '2022-10-17'),
(15, 1, '2022-10-17 02:00:56', '2022-10-17'),
(16, 1, '2022-10-24 01:27:35', '2022-10-24'),
(17, 1, '2022-10-27 11:11:34', '2022-10-27');

-- --------------------------------------------------------

--
-- Table structure for table `baranagaypostitiontype`
--

CREATE TABLE `baranagaypostitiontype` (
  `bpt_id` int(5) NOT NULL,
  `bptname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `baranagaypostitiontype`
--

INSERT INTO `baranagaypostitiontype` (`bpt_id`, `bptname`) VALUES
(1, 'Barangay Nurse');

-- --------------------------------------------------------

--
-- Table structure for table `barangaypersonel`
--

CREATE TABLE `barangaypersonel` (
  `bp_id` int(5) NOT NULL,
  `bpt_id` int(5) NOT NULL,
  `bpname` varchar(50) NOT NULL,
  `bppass` varchar(50) NOT NULL,
  `workername` varchar(50) NOT NULL,
  `bpstatus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barangaypersonel`
--

INSERT INTO `barangaypersonel` (`bp_id`, `bpt_id`, `bpname`, `bppass`, `workername`, `bpstatus`) VALUES
(1, 1, 'admin', 'admin', 'Raymart Tumanda', 0);

-- --------------------------------------------------------

--
-- Table structure for table `barangayresident`
--

CREATE TABLE `barangayresident` (
  `brgy_resident_id` int(5) NOT NULL,
  `gpid` int(5) NOT NULL,
  `residentname` varchar(50) NOT NULL,
  `pin` varchar(10) DEFAULT NULL,
  `civilstatus` varchar(10) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `sex` varchar(7) NOT NULL,
  `birthdate` date NOT NULL,
  `familyserial` varchar(10) NOT NULL,
  `sitio` varchar(10) NOT NULL,
  `residenttype` varchar(10) NOT NULL,
  `educationalattainment` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barangayresident`
--

INSERT INTO `barangayresident` (`brgy_resident_id`, `gpid`, `residentname`, `pin`, `civilstatus`, `religion`, `sex`, `birthdate`, `familyserial`, `sitio`, `residenttype`, `educationalattainment`) VALUES
(1, 2, 'LOKI', '12321312', 'Single', 'ROMAN CATHOLIC', 'Male', '2006-06-06', '1', '1', '1', 'Elementary'),
(2, 3, 'gwapo', '12321312', 'Single', 'ROMAN CATHOLIC', 'Male', '2001-01-01', '1', '1', '1', 'Elementary'),
(4, 5, 'lolok', '12321312', 'Single', 'ROMAN CATHOLIC', 'Male', '2001-01-01', '', '1', '', 'Vocational'),
(5, 6, 'LOKIZ', '12321312', 'Single', 'ROMAN CATHOLIC', 'Male', '2002-02-02', '1', '1', '1', 'Vocational'),
(7, 7, 'gwapo', '12321312', 'Single', 'ROMAN CATHOLIC', 'Male', '2002-02-02', '1', '1', '1', 'Elementary'),
(8, 8, 'lolok', '12321312', 'Single', 'ROMAN CATHOLIC', 'Male', '2001-01-01', '1', '1', '1', 'College Degree, Post Graduate'),
(9, 9, 'Test', '1234567890', 'Widowed', 'ROMAN CATHOLIC', 'Male', '2009-09-09', '2', '2', '2', 'College Degree, Post Graduate'),
(10, 10, 'LOKIZ', '12321312', 'Single', 'ROMAN CATHOLIC', 'Male', '2005-05-05', '1', '1', '1', 'Elementary'),
(11, 11, 'gwapo', '20123547', 'Married', 'ROMAN CATHOLIC', 'Male', '2003-03-03', '1', '1', '1', 'Elementary'),
(12, 12, 'LOKIZ', '12321312', 'Married', 'Muslim', 'Male', '2006-05-05', '', '4', '', 'College Degree, Post Graduate'),
(13, 13, 'malacat', '123121321', 'Married', 'Muslim', 'Male', '2012-12-12', '1', '1', '0', 'High School');

-- --------------------------------------------------------

--
-- Table structure for table `governmentprogram`
--

CREATE TABLE `governmentprogram` (
  `gpid` int(5) NOT NULL,
  `gpdesc` varchar(20) NOT NULL,
  `gpstatus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `governmentprogram`
--

INSERT INTO `governmentprogram` (`gpid`, `gpdesc`, `gpstatus`) VALUES
(1, '', 0),
(2, 'None', 0),
(3, 'Privated', 0),
(4, '', 0),
(5, '', 0),
(6, 'None', 0),
(7, 'Privated', 0),
(8, 'None', 0),
(9, 'Private', 0),
(10, 'Privated', 0),
(11, 'Privated', 0),
(12, '', 0),
(13, 'Private', 0);

-- --------------------------------------------------------

--
-- Table structure for table `immunization`
--

CREATE TABLE `immunization` (
  `immu_id` int(5) NOT NULL,
  `brgy_resident_id` int(5) NOT NULL,
  `immucat` int(2) NOT NULL,
  `immustatus` int(1) NOT NULL,
  `immudesc` varchar(50) NOT NULL,
  `immuremarks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `immunization`
--

INSERT INTO `immunization` (`immu_id`, `brgy_resident_id`, `immucat`, `immustatus`, `immudesc`, `immuremarks`) VALUES
(1, 9, 18, 0, 'Hello', 'hello'),
(2, 10, 7, 0, 'hi', 'hi');

-- --------------------------------------------------------

--
-- Table structure for table `labor`
--

CREATE TABLE `labor` (
  `brgy_resident_id` int(5) NOT NULL,
  `bp_id` int(5) NOT NULL,
  `laborbp` varchar(15) NOT NULL,
  `labortemp` varchar(15) NOT NULL,
  `laborhr` varchar(15) NOT NULL,
  `laborrr` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `labor`
--

INSERT INTO `labor` (`brgy_resident_id`, `bp_id`, `laborbp`, `labortemp`, `laborhr`, `laborrr`, `remarks`) VALUES
(11, 1, '80', '80', '75', '75', 'Permitted'),
(12, 1, '90', '90', '65', '65', 'Not Permitted');

-- --------------------------------------------------------

--
-- Table structure for table `medicalcheckup`
--

CREATE TABLE `medicalcheckup` (
  `mdc_id` int(5) NOT NULL,
  `brgy_resident_id` int(5) NOT NULL,
  `mdcdesc` varchar(50) NOT NULL,
  `mdcdate` date DEFAULT NULL,
  `mdcstatus` int(1) DEFAULT NULL,
  `mdcremarks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicalcheckup`
--

INSERT INTO `medicalcheckup` (`mdc_id`, `brgy_resident_id`, `mdcdesc`, `mdcdate`, `mdcstatus`, `mdcremarks`) VALUES
(1, 4, 'Hello', NULL, NULL, NULL),
(2, 5, 'DOMO', '2001-01-01', 0, 'HELLOHELLOHELLOHELLOHELLOHELLOHELLOHELLOHELLOHELLO');

-- --------------------------------------------------------

--
-- Table structure for table `prenatal`
--

CREATE TABLE `prenatal` (
  `brgy_resident_id` int(5) NOT NULL,
  `bp_id` int(5) NOT NULL,
  `prenataldx` varchar(50) DEFAULT NULL,
  `prenatalplan` varchar(50) DEFAULT NULL,
  `prenataldate` date DEFAULT NULL,
  `bpstatus` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prenatal`
--

INSERT INTO `prenatal` (`brgy_resident_id`, `bp_id`, `prenataldx`, `prenatalplan`, `prenataldate`, `bpstatus`) VALUES
(7, 1, 'HELLO', 'HELLO', '2003-03-03', 0),
(8, 1, 'adada', 'adasdasd', '2001-01-01', 0),
(13, 1, 'HELLO', 'HI', '2022-10-15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ref`
--

CREATE TABLE `ref` (
  `ref_id` int(5) NOT NULL,
  `brgy_resident_id` int(5) NOT NULL,
  `examinationdate` date NOT NULL,
  `bloodpressure` varchar(15) DEFAULT NULL,
  `heartrate` varchar(15) DEFAULT NULL,
  `restrate` varchar(15) DEFAULT NULL,
  `height` varchar(15) DEFAULT NULL,
  `weight` varchar(15) DEFAULT NULL,
  `skin` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ref`
--

INSERT INTO `ref` (`ref_id`, `brgy_resident_id`, `examinationdate`, `bloodpressure`, `heartrate`, `restrate`, `height`, `weight`, `skin`) VALUES
(1, 1, '2001-01-01', '89', '78', '75', '169', '96', 2),
(2, 2, '2002-02-02', '89', '90', '79', '169', '140', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activitylog`
--
ALTER TABLE `activitylog`
  ADD PRIMARY KEY (`al_id`),
  ADD KEY `brgyresidentfk` (`bp_id`);

--
-- Indexes for table `baranagaypostitiontype`
--
ALTER TABLE `baranagaypostitiontype`
  ADD PRIMARY KEY (`bpt_id`);

--
-- Indexes for table `barangaypersonel`
--
ALTER TABLE `barangaypersonel`
  ADD PRIMARY KEY (`bp_id`),
  ADD KEY `fkbptid` (`bpt_id`);

--
-- Indexes for table `barangayresident`
--
ALTER TABLE `barangayresident`
  ADD PRIMARY KEY (`brgy_resident_id`),
  ADD KEY `fkgpid` (`gpid`);

--
-- Indexes for table `governmentprogram`
--
ALTER TABLE `governmentprogram`
  ADD PRIMARY KEY (`gpid`);

--
-- Indexes for table `immunization`
--
ALTER TABLE `immunization`
  ADD PRIMARY KEY (`immu_id`),
  ADD KEY `fkbrgyresident` (`brgy_resident_id`);

--
-- Indexes for table `labor`
--
ALTER TABLE `labor`
  ADD KEY `fkbrgyresdient` (`brgy_resident_id`),
  ADD KEY `fkbpid` (`bp_id`);

--
-- Indexes for table `medicalcheckup`
--
ALTER TABLE `medicalcheckup`
  ADD PRIMARY KEY (`mdc_id`),
  ADD KEY `FK_brgyresident` (`brgy_resident_id`);

--
-- Indexes for table `prenatal`
--
ALTER TABLE `prenatal`
  ADD KEY `test` (`brgy_resident_id`),
  ADD KEY `test1` (`bp_id`);

--
-- Indexes for table `ref`
--
ALTER TABLE `ref`
  ADD PRIMARY KEY (`ref_id`),
  ADD KEY `brgy_resident_id` (`brgy_resident_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activitylog`
--
ALTER TABLE `activitylog`
  MODIFY `al_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `baranagaypostitiontype`
--
ALTER TABLE `baranagaypostitiontype`
  MODIFY `bpt_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barangaypersonel`
--
ALTER TABLE `barangaypersonel`
  MODIFY `bp_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `barangayresident`
--
ALTER TABLE `barangayresident`
  MODIFY `brgy_resident_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `governmentprogram`
--
ALTER TABLE `governmentprogram`
  MODIFY `gpid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `immunization`
--
ALTER TABLE `immunization`
  MODIFY `immu_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medicalcheckup`
--
ALTER TABLE `medicalcheckup`
  MODIFY `mdc_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ref`
--
ALTER TABLE `ref`
  MODIFY `ref_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activitylog`
--
ALTER TABLE `activitylog`
  ADD CONSTRAINT `brgyresidentfk` FOREIGN KEY (`bp_id`) REFERENCES `barangaypersonel` (`bp_id`) ON DELETE CASCADE;

--
-- Constraints for table `barangaypersonel`
--
ALTER TABLE `barangaypersonel`
  ADD CONSTRAINT `fkbptid` FOREIGN KEY (`bpt_id`) REFERENCES `baranagaypostitiontype` (`bpt_id`) ON DELETE CASCADE;

--
-- Constraints for table `barangayresident`
--
ALTER TABLE `barangayresident`
  ADD CONSTRAINT `fkgpid` FOREIGN KEY (`gpid`) REFERENCES `governmentprogram` (`gpid`) ON DELETE CASCADE;

--
-- Constraints for table `immunization`
--
ALTER TABLE `immunization`
  ADD CONSTRAINT `fkbrgyresident` FOREIGN KEY (`brgy_resident_id`) REFERENCES `barangayresident` (`brgy_resident_id`) ON DELETE CASCADE;

--
-- Constraints for table `labor`
--
ALTER TABLE `labor`
  ADD CONSTRAINT `fkbpid` FOREIGN KEY (`bp_id`) REFERENCES `barangaypersonel` (`bp_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fkbrgyresdient` FOREIGN KEY (`brgy_resident_id`) REFERENCES `barangayresident` (`brgy_resident_id`) ON DELETE CASCADE;

--
-- Constraints for table `medicalcheckup`
--
ALTER TABLE `medicalcheckup`
  ADD CONSTRAINT `FK_brgyresident` FOREIGN KEY (`brgy_resident_id`) REFERENCES `barangayresident` (`brgy_resident_id`) ON DELETE CASCADE;

--
-- Constraints for table `prenatal`
--
ALTER TABLE `prenatal`
  ADD CONSTRAINT `test` FOREIGN KEY (`brgy_resident_id`) REFERENCES `barangayresident` (`brgy_resident_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `test1` FOREIGN KEY (`bp_id`) REFERENCES `barangaypersonel` (`bp_id`) ON DELETE CASCADE;

--
-- Constraints for table `ref`
--
ALTER TABLE `ref`
  ADD CONSTRAINT `ref_ibfk_1` FOREIGN KEY (`brgy_resident_id`) REFERENCES `barangayresident` (`brgy_resident_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
