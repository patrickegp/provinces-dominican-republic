-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 11, 2023 at 03:57 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slp_db`
--

--
-- Dumping data for table `tbl_regions`
--

INSERT INTO `tbl_regions` (`region_id`, `region_name`) VALUES
(1, 'Cibao Noreste'),
(2, 'Cibao Noroeste'),
(3, 'Cibao Norte'),
(4, 'Cibao Sur'),
(5, 'Valdesia'),
(6, 'El Valle'),
(7, 'Enriquillo'),
(8, 'Ozama'),
(9, 'Higüamo'),
(10, 'Yuma');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
