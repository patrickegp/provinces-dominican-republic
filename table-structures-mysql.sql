-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 11, 2023 at 03:54 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_municipalities`
--

CREATE TABLE `tbl_municipalities` (
  `municipality_id` int(10) UNSIGNED NOT NULL,
  `municipality_name` varchar(150) NOT NULL,
  `id_province` int(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinces`
--

CREATE TABLE `tbl_provinces` (
  `province_id` int(3) UNSIGNED NOT NULL,
  `province_name` varchar(50) NOT NULL,
  `id_region` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_regions`
--

CREATE TABLE `tbl_regions` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sectors`
--

CREATE TABLE `tbl_sectors` (
  `sector_id` bigint(20) UNSIGNED NOT NULL,
  `sector_name` varchar(150) NOT NULL,
  `id_ municipality` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_municipalities`
--
ALTER TABLE `tbl_municipalities`
  ADD PRIMARY KEY (`municipality_id`),
  ADD KEY `id_province` (`id_province`);

--
-- Indexes for table `tbl_provinces`
--
ALTER TABLE `tbl_provinces`
  ADD PRIMARY KEY (`province_id`),
  ADD KEY `id_region` (`id_region`);

--
-- Indexes for table `tbl_regions`
--
ALTER TABLE `tbl_regions`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `tbl_sectors`
--
ALTER TABLE `tbl_sectors`
  ADD PRIMARY KEY (`sector_id`),
  ADD KEY `ciudad_ir_idx` (`id_ municipality`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_municipalities`
--
ALTER TABLE `tbl_municipalities`
  MODIFY `municipality_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_provinces`
--
ALTER TABLE `tbl_provinces`
  MODIFY `province_id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_regions`
--
ALTER TABLE `tbl_regions`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_municipalities`
--
ALTER TABLE `tbl_municipalities`
  ADD CONSTRAINT `tbl_municipalities_ibfk_1` FOREIGN KEY (`id_province`) REFERENCES `tbl_provinces` (`province_id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_provinces`
--
ALTER TABLE `tbl_provinces`
  ADD CONSTRAINT `tbl_provinces_ibfk_1` FOREIGN KEY (`id_region`) REFERENCES `tbl_regions` (`region_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_sectors`
--
ALTER TABLE `tbl_sectors`
  ADD CONSTRAINT `tbl_sectors_ibfk_1` FOREIGN KEY (`id_ municipality`) REFERENCES `tbl_municipalities` (`municipality_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
