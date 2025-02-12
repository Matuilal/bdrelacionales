-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2025 a las 00:46:20
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Genero` tinyint(1) NOT NULL,
  `Fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`Id`, `Nombre`, `Correo`, `Genero`, `Fecha_nacimiento`) VALUES
(0, 'Luis Carlos', 'Luis.Carlos29@gmail.com', 1, '1978-02-19'),
(1, 'Ibarra', 'Ibarra.23@gmail.com', 1, '1968-10-11'),
(2, 'Liliana', 'liliana.c39@gmail.com', 0, '1978-02-17'),
(3, 'Iván Fernando', 'ivan.fernan@gmail.com', 1, '1968-02-19'),
(4, 'Pedro', 'Pedro.prieto@gmail.com', 1, '1978-12-05'),
(5, 'Teresa', 'teresa.03@gmail.com', 0, '1978-08-07'),
(6, 'Rochin Eduardo', 'Rochin.c28@gmail.com', 1, '1958-06-08'),
(7, 'Blanca flor', 'Blanca.86@gmail.com', 0, '1988-02-19'),
(8, 'Miguel Eduardo', 'Miguel.48@gmail.com', 0, '1978-06-08'),
(9, 'Dalia ', 'Dalia.58@gmail.com', 0, '1967-02-22'),
(10, 'Mario ', 'Mario.48@gmail.com', 1, '1968-10-11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
