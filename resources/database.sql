-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2016 at 07:32 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lookuptable`
--

-- --------------------------------------------------------

--
-- Table structure for table `hindi`
--

CREATE TABLE `hindi` (
  `HINDI` varchar(255) NOT NULL,
  `KANNADA` varchar(255) NOT NULL,
  `TELUGU` varchar(255) NOT NULL,
  `MALAYALAM` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hindi`
--

INSERT INTO `hindi` (`HINDI`, `KANNADA`, `TELUGU`, `MALAYALAM`) VALUES
('', '', '', ''),
('901', 'c81', 'c00', 'd01'),
('902', 'c82', 'c02', 'd02'),
('903', 'c83', 'c03', 'd03'),
('905', 'c85', 'c05', 'd05'),
('906', 'c86', 'c06', 'd06'),
('907', 'c87', 'c07', 'd07'),
('908', 'c88', 'c08', 'd08'),
('909', 'c89', 'c09', 'd09'),
('90a', 'c8a', 'c0a', 'd0a'),
('90b', 'c8b', 'c0b', 'd0b'),
('90c', 'c8c', 'c0c', 'd0c'),
('90f', 'c8e', 'c0e', 'd0e'),
('910', 'c90', 'c10', 'd10'),
('913', 'c92', 'c12', 'd12'),
('914', 'c94', 'c14', 'd14'),
('915', 'c95', 'c15', 'd15'),
('916', 'c96', 'c16', 'd16'),
('917', 'c97', 'c17', 'd17'),
('918', 'c98', 'c18', 'd18'),
('919', 'c99', 'c19', 'd19'),
('91a', 'c9a', 'c1a', 'd1a'),
('91b', 'c9b', 'c1b', 'd1b'),
('91c', 'c9c', 'c1c', 'd1c'),
('91d', 'c9d', 'c1d', 'd1d'),
('91e', 'c9e', 'c1e', 'd1e'),
('91f', 'c9f', 'c1f', 'd1f'),
('920', 'ca0', 'c20', 'd20'),
('921', 'ca1', 'c21', 'd21'),
('922', 'ca2', 'c22', 'd22'),
('923', 'ca3', 'c23', 'd23'),
('924', 'ca4', 'c24', 'd24'),
('925', 'ca5', 'c25', 'd25'),
('926', 'ca6', 'c26', 'd26'),
('927', 'ca7', 'c27', 'd27'),
('928', 'ca8', 'c28', 'd28'),
('929', '', '', 'd29'),
('92a', 'caa', 'c2a', 'd2a'),
('92b', 'cab', 'c2b', 'd2b'),
('92c', 'cac', 'c2c', 'd2c'),
('92d', 'cad', 'c2d', 'd2d'),
('92e', 'cae', 'c2e', 'd2e'),
('92f', 'caf', 'c2f', 'd2f'),
('930', 'cb0', 'c30', 'd30'),
('931', 'cb1', 'c31', 'd31'),
('932', 'cb2', 'c32', 'd32'),
('933', 'cb3', 'c33', 'd33'),
('934', '', 'c34', 'd34'),
('935', 'cb5', 'c35', 'd35'),
('936', 'cb6', 'c36', 'd36'),
('937', 'cb7', 'c37', 'd37'),
('938', 'cb8', 'c38', 'd38'),
('939', 'cb9', 'c39', 'd39'),
('93a', '', '', 'd3a'),
('93c', 'cbc', '', ''),
('93d', 'cbd', 'c3d', 'd3d'),
('93e', 'cbe', 'c3e', 'd3e'),
('93f', 'cbf', 'c3f', 'd3f'),
('940', 'cc0', 'c40', 'd40'),
('941', 'cc1', 'c41', 'd41'),
('942', 'cc2', 'c42', 'd42'),
('943', 'cc3', 'c43', 'd43'),
('944', 'cc4', 'c44', 'd44'),
('947', 'cc6', 'c46', 'd46'),
('948', 'cc8', 'c48', 'd48'),
('94b', 'cca', 'c4a', 'd4a'),
('94c', 'ccc', 'c4c', 'd4c'),
('94d', 'ccd', 'c4d', 'd4d');

-- --------------------------------------------------------

--
-- Table structure for table `kannada`
--

CREATE TABLE `kannada` (
  `KANNADA` varchar(11) NOT NULL,
  `HINDI` varchar(30) NOT NULL,
  `TELUGU` varchar(11) NOT NULL,
  `MALAYALAM` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kannada`
--

INSERT INTO `kannada` (`KANNADA`, `HINDI`, `TELUGU`, `MALAYALAM`) VALUES
('c82', '902', 'c02', 'd02'),
('c83', '903', 'c03', 'd03'),
('c85', '905', 'c05', 'd05'),
('c86', '906', 'c06', 'd06'),
('c87', '907', 'c07', 'd07'),
('c88', '908', 'c08', 'd08'),
('c89', '909', 'c09', 'd09'),
('c8a', '90a', 'c0a', 'd0a'),
('c8b', '90b', 'c0b', 'd0b'),
('c8c', '90c', 'c0c', 'doc'),
('c8d', '90d', 'c0d', 'd0d'),
('c8e', '90f', 'c0e', 'doe'),
('c8f', '90f', 'c0f', 'd0f'),
('c90', '910', 'c10', 'd10'),
('c92', '913', 'c12', 'd12'),
('c93', '913', 'c13', 'd13'),
('c94', '914', 'c14', 'd14'),
('c95', '915', 'c15', 'd15'),
('c96', '916', 'c16', 'd16'),
('c97', '917', 'c17', 'd17'),
('c98', '918', 'c18', 'd18'),
('c99', '919', 'c19', 'd19'),
('c9a', '91a', 'c1a', 'd1a'),
('c9b', '91b', 'c1b', 'd1b'),
('c9c', '91c', 'c1c', 'd1c'),
('c9d', '91d', 'c1d', 'd1d'),
('c9e', '91e', 'c1e', 'd1e'),
('c9f', '91f', 'c1f', 'd1f'),
('ca0', '920', 'c20', 'd20'),
('ca1', '921', 'c21', 'd21'),
('ca2', '922', 'c22', 'd22'),
('ca3', '923', 'c23', 'd23'),
('ca4', '924', 'c24', 'd24'),
('ca5', '925', 'c25', 'd25'),
('ca6', '926', 'c26', 'd26'),
('ca7', '927', 'c27', 'd27'),
('ca8', '928', 'c28', 'd28'),
('caa', '92a', 'c2a', 'd2a'),
('cab', '92b', 'c2b', 'd2b'),
('cac', '92c', 'c2c', 'd2c'),
('cad', '92d', 'c2d', 'd2d'),
('cae', '92e', 'c2e', 'd2e'),
('caf', '92f', 'c2f', 'd2f'),
('cb0', '930', 'c30', 'd30'),
('cb2', '932', 'c32', 'd32'),
('cb3', '932', 'c33', 'd33'),
('cb5', '935', 'c35', 'd35'),
('cb6', '936', 'c36', 'd36'),
('cb7', '937', 'c37', 'd37'),
('cb8', '938', 'c38', 'd38'),
('cb9', '939', 'c39', 'd39'),
('cbe', '93e', 'c3e', 'd3e'),
('cbf', '93f', 'c3f', 'd3f'),
('cc0', '940', 'c40', 'd40'),
('cc1', '941', 'c41', 'd41'),
('cc2', '942', 'c42', 'd42'),
('cc3', '943', 'c43', 'd43'),
('cc6', '947', 'c46', 'd46'),
('cc7', '947', 'c47', 'd47'),
('cc8', '948', 'c48', 'd48'),
('cca', '94b', 'c4a', 'd4a'),
('ccb', '94b', 'c4b', 'd4b'),
('ccc', '94c', 'c4c', 'd4c'),
('ccd', '94d', 'c4d', 'd4d');

-- --------------------------------------------------------

--
-- Table structure for table `malayalam`
--

CREATE TABLE `malayalam` (
  `MALAYALAM` varchar(255) NOT NULL,
  `KANNADA` varchar(255) NOT NULL,
  `TELUGU` varchar(255) NOT NULL,
  `HINDI` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `telugu`
--

CREATE TABLE `telugu` (
  `TELUGU` varchar(11) NOT NULL,
  `KANNADA` varchar(30) NOT NULL,
  `MALAYALAM` varchar(255) NOT NULL,
  `HINDI` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `telugu`
--

INSERT INTO `telugu` (`TELUGU`, `KANNADA`, `MALAYALAM`, `HINDI`) VALUES
('c01', 'c82', 'd01', '901'),
('c02', 'c82', 'd02', '902'),
('c03', 'c83', 'd03', '903'),
('c05', 'c85', 'd05', '905'),
('c06', 'c86', 'd06', '906'),
('c07', 'c87', 'd07', '907'),
('c08', 'c88', 'd08', '908'),
('c09', 'c89', 'd09', '909'),
('c0a', 'c8a', 'd0a', '90a'),
('c0b', 'c8b', 'd0b', '90b'),
('c0c', 'c8c', 'd0c', '90c'),
('c0d', 'c8d', 'd0d', ''),
('c0e', 'c8e', 'd0e', '90f'),
('c0f', 'c8f', 'd0f', ''),
('c10', 'c90', 'd10', '910'),
('c12', 'c92', 'd12', '913'),
('c13', 'c93', 'd13', ''),
('c14', 'c94', 'd14', '914'),
('c15', 'c95', 'd15', '915'),
('c16', 'c96', 'd16', '916'),
('c17', 'c97', 'd17', '917'),
('c18', 'c98', 'd18', '918'),
('c19', 'c99', 'd19', '919'),
('c1a', 'c9a', 'd1a', '91a'),
('c1b', 'c9b', 'd1b', '91b'),
('c1c', 'c9c', 'd1c', '91c'),
('c1d', 'c9d', 'd1d', '91d'),
('c1e', 'c9e', 'd1e', '91e'),
('c1f', 'c9f', 'd1f', '91f'),
('c20', 'ca0', 'd20', '920'),
('c21', 'ca1', 'd21', '921'),
('c22', 'ca2', 'd22', '922'),
('c23', 'ca3', 'd23', '923'),
('c24', 'ca4', 'd24', '924'),
('c25', 'ca5', 'd25', '925'),
('c26', 'ca6', 'd26', '926'),
('c27', 'ca7', 'd27', '927'),
('c28', 'ca8', 'd28', '928'),
('c2a', 'caa', 'd2a', '92a'),
('c2b', 'cab', 'd2b', '92b'),
('c2c', 'cac', 'd2c', '92c'),
('c2d', 'cad', 'd2d', '92d'),
('c2e', 'cae', 'd3e', '92e'),
('c2f', 'caf', 'd2f', '92f'),
('c30', 'cb0', 'd30', '930'),
('c31', 'cb1', 'd31', '931'),
('c32', 'cb2', 'd32', '932'),
('c33', 'cb3', 'd33', '933'),
('c35', 'cb5', 'd35', '935'),
('c36', 'cb6', 'd36', '936'),
('c37', 'cb7', 'd37', '937'),
('c38', 'cb8', 'd38', '938'),
('c39', 'cb9', 'd39', '939'),
('c3e', 'cbe', 'd3e', '93e'),
('c3f', 'cbf', 'd3f', '93f'),
('c40', 'cc0', 'd40', '940'),
('c41', 'cc1', 'd41', '941'),
('c42', 'cc2', 'd42', '942'),
('c43', 'cc3', 'd43', '943'),
('c46', 'cc6', 'd46', '947'),
('c47', 'cc7', 'd47', ''),
('c48', 'cc8', 'd48', '948'),
('c4a', 'cca', 'd4a', '94b'),
('c4b', 'ccb', 'd4b', ''),
('c4c', 'ccc', 'd4c', '94c'),
('c4d', 'ccd', 'd4d', '94d'),
('c58', 'ca4ccdcb8', '', '934938'),
('c59', 'ca6ccdc9c', '', '');

INSERT INTO `malayalam` (`MALAYALAM`, `KANNADA`, `TELUGU`, `HINDI`) VALUES
('d01', '', 'c01', '901'),
('d02', 'c82', 'c02', '902'),
('d03', 'c83', 'c03', '903'),
('d05', 'c85', 'c05', '905'),
('d06', 'c86', 'c06', '906'),
('d07', 'c87', 'c07', '907'),
('d08', 'c88', 'c08', '908'),
('d09', 'c89', 'c09', '909'),
('d0a', 'c8a', 'c0a', '90a'),
('d0b', 'c8b', 'c0b', '90b'),
('d0c', 'c8c', 'c0c', '90c'),
('d0e', 'c8e', 'c0e', '90f'),
('d0f', 'c8f', 'c0f', ''),
('d10', 'c90', 'c10', '910'),
('d12', 'c92', 'c12', '913'),
('d13', 'c93', 'c13', ''),
('d14', 'c94', 'c14', '914'),
('d15', 'c95', 'c15', '915'),
('d16', 'c96', 'c16', '916'),
('d17', 'c97', 'c17', '917'),
('d18', 'c98', 'c18', '918'),
('d19', 'c99', 'c19', '919'),
('d1a', 'c9a', 'c1a', '91a'),
('d1b', 'c9b', 'c1b', '91b'),
('d1c', 'c9c', 'c1c', '91c'),
('d1d', 'c9d', 'c1d', '91d'),
('d1e', 'c9e', 'c1e', '91e'),
('d1f', 'c9f', 'c1f', '91f'),
('d20', 'ca0', 'c20', '920'),
('d21', 'ca1', 'c21', '921'),
('d22', 'ca2', 'c22', '922'),
('d23', 'ca3', 'c23', '923'),
('d24', 'ca4', 'c24', '924'),
('d25', 'ca5', 'c25', '925'),
('d26', 'ca6', 'c26', '926'),
('d27', 'ca7', 'c27', '927'),
('d28', 'ca8', 'c28', '928'),
('d29', 'ca8', '', '928'),
('d2a', 'caa', 'c2a', '92a'),
('d2b', 'cab', 'c2b', '92b'),
('d2c', 'cac', 'c2c', '92c'),
('d2d', 'cad', 'c2d', '92d'),
('d2e', 'cae', 'c2e', '92e'),
('d2f', 'caf', 'c2f', '92f'),
('d30', 'cb0', 'c30', '930'),
('d31', 'cb1', 'c31', '931'),
('d32', 'cb2', 'c32', '932'),
('d33', 'cb3', 'c33', '933'),
('d35', 'cb5', 'c35', '935'),
('d36', 'cb6', 'c36', '936'),
('d37', 'cb7', 'c37', '937'),
('d38', 'cb8', 'c38', '938'),
('d39', 'cb9', 'c39', '939'),
('d3a', 'c9f', 'c3a', '93e'),
('d3d', 'cbd', 'c3d', '93f'),
('d3e', 'cbe', 'c3e', '940'),
('d3f', 'cbf', 'c3f', '941'),
('d41', 'cc1', 'c41', '942'),
('d42', 'cc2', 'c42', '943'),
('d43', 'cc3', 'c43', '943'),
('d44', 'cbf', 'c44', '943'),
('d46', 'ccc', 'c46', '947'),
('d47', '', 'c47', ''),
('d48', 'cd6', 'c48', '948'),
('d4a', '', 'c4a', '94b'),
('d4b', 'cca', 'c4b', ''),
('d4c', 'ccc', 'c4c', '94c'),
('d4d', '', 'c4d', '94d'),
('d4e', 'ca4ccdcb8', 'c24c4dc38', '934938');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `hindi`
--
ALTER TABLE `hindi`
  ADD PRIMARY KEY (`HINDI`);

--
-- Indexes for table `kannada`
--
ALTER TABLE `kannada`
  ADD PRIMARY KEY (`KANNADA`);

--
-- Indexes for table `malayalam`
--
ALTER TABLE `malayalam`
  ADD PRIMARY KEY (`MALAYALAM`);

--
-- Indexes for table `telugu`
--
ALTER TABLE `telugu`
  ADD PRIMARY KEY (`TELUGU`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
