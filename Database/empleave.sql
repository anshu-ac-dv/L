-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 09:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empleave`
--

-- --------------------------------------------------------

--
-- Table structure for table `leavetable`
--

CREATE TABLE `leavetable` (
  `emp_id` varchar(50) NOT NULL,
  `casual` varchar(50) NOT NULL,
  `emergency` varchar(50) NOT NULL,
  `capplied` varchar(50) NOT NULL,
  `sapplied` varchar(50) NOT NULL,
  `requests` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `leavetable`
--

INSERT INTO `leavetable` (`emp_id`, `casual`, `emergency`, `capplied`, `sapplied`, `requests`) VALUES
('18010', '0', '0', '0', '0', '0'),
('18011', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wit_lv_config`
--

CREATE TABLE `wit_lv_config` (
  `mnthly_csl_lv` int(11) NOT NULL,
  `mnthly_sk_lv` int(11) NOT NULL,
  `fin_mth` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wit_lv_config`
--

INSERT INTO `wit_lv_config` (`mnthly_csl_lv`, `mnthly_sk_lv`, `fin_mth`) VALUES
(2, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wit_lv_emp_mast`
--

CREATE TABLE `wit_lv_emp_mast` (
  `emp_id` int(200) NOT NULL,
  `emp_name` varchar(200) NOT NULL,
  `emp_eml` varchar(200) NOT NULL,
  `login_pwd` varchar(50) NOT NULL,
  `is_admin` char(1) NOT NULL DEFAULT 'N',
  `emp_desgn` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wit_lv_emp_mast`
--

INSERT INTO `wit_lv_emp_mast` (`emp_id`, `emp_name`, `emp_eml`, `login_pwd`, `is_admin`, `emp_desgn`) VALUES
(18010, 'Anshu Kumar', 'anshu.ac.dv@gmail.com', 'Anshu@@123', 'N', 'EMP'),
(18011, 'Ankita Kumari', 'ankita.ac.dv@gmail.com', 'Ankita@@123', 'Y', 'HR');

-- --------------------------------------------------------

--
-- Table structure for table `wit_lv_trn_dtls`
--

CREATE TABLE `wit_lv_trn_dtls` (
  `emp_id` int(11) NOT NULL,
  `lv_frm` datetime NOT NULL,
  `lv_to` datetime NOT NULL,
  `no_dys` int(11) NOT NULL,
  `rsn` varchar(200) DEFAULT NULL,
  `lv_stat` char(1) NOT NULL DEFAULT 'P',
  `apprd_by_emp_id` int(11) DEFAULT NULL,
  `apprd_dttm` datetime DEFAULT NULL,
  `crtd_dttm` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leavetable`
--
ALTER TABLE `leavetable`
  ADD UNIQUE KEY `emp_id` (`emp_id`);

--
-- Indexes for table `wit_lv_emp_mast`
--
ALTER TABLE `wit_lv_emp_mast`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `emp_eml` (`emp_eml`),
  ADD UNIQUE KEY `emp_eml_2` (`emp_eml`);

--
-- Indexes for table `wit_lv_trn_dtls`
--
ALTER TABLE `wit_lv_trn_dtls`
  ADD PRIMARY KEY (`emp_id`,`lv_frm`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wit_lv_emp_mast`
--
ALTER TABLE `wit_lv_emp_mast`
  MODIFY `emp_id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18012;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
