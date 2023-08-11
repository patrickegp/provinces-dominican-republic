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
-- Dumping data for table `tbl_provinces`
--

INSERT INTO `tbl_provinces` (`province_id`, `province_name`, `id_region`) VALUES
(1, 'Distrito Nacional', 8),
(2, 'Santo Domingo', 8),
(3, 'San Pedro de Macorís', 9),
(4, 'La Romana', 10),
(5, 'La Altagracia', 10),
(6, 'El Seibo', 10),
(7, 'Hato Mayor', 9),
(8, 'Duarte', 1),
(9, 'Samaná', 1),
(10, 'Maria Trinidad Sánchez', 1),
(11, 'Salcedo', 1),
(12, 'La Vega', 4),
(13, 'Monseñor Nouel', 4),
(14, 'Sánchez Ramirez', 4),
(15, 'Santiago', 3),
(16, 'Espaillat', 3),
(17, 'Puerto Plata', 3),
(18, 'Valverde', 2),
(19, 'Monte Cristi', 2),
(20, 'Dajabónn', 2),
(21, 'Santiago Rodríguez', 2),
(22, 'Azua', 5),
(23, 'San Juan', 6),
(24, 'Elías Piña', 6),
(25, 'Barahona', 7),
(26, 'Bahoruco', 7),
(27, 'Independencia', 7),
(28, 'Perdenales', 7),
(29, 'San Cristóbal', 5),
(30, 'Monte Plata', 9),
(31, 'San José de Ocoa', 5),
(32, 'Peravia', 5);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
