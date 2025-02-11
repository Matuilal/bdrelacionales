-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2025 a las 02:15:01
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
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(2, 'Oscar Ivan', 'Torres Burgos', '23325061070510', '2008-08-22', 1, 'oscar.torres23@cetis107.edu.mx', '6671385682'),
(3, 'Hugo Alejandro', 'Rubio Maldonado', '23325061070557', '2008-08-22', 1, 'metaspike2019@gmail.com', '6674598915'),
(4, 'Jose Daniel', 'Arreola Soto', '23325061070466', '2008-02-06', 1, 'jose.arreola23@cetis107.edu.mx', '6674119654'),
(5, 'Jorge luis', 'Garcia Figueroa', '23325061070531', '2008-08-13', 1, 'jorge.garcia23@cetis107.edu.mx', '6676210221'),
(6, 'Mateo', 'Ibarra Gastelum', '23325061070484', '2008-01-11', 1, 'mateo.ibarra23@cetis107.edu.mx', '6678619006'),
(7, 'Isaac', 'Moreno Higuera', '23325061070700', '2008-08-30', 1, 'isaac.moreno23@cetis107.edu.mx', '6674096666'),
(8, 'Jesus Angel', 'Valenzuela Contreras', '23325061070511', '0000-00-00', 1, 'jesusangelv347@gmail.com', '6672094090'),
(9, 'Emiliano', 'Ojeda Quintero', '23325061070702', '0000-00-00', 1, 'emiliano@gmail.com', '6673583222'),
(10, 'Juan Pablo', 'Ochoa Hermosillo', '23325061070484', '2008-07-23', 1, 'Juan.Ochoa23@cetis107.edu.mx', '6674299646');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Programacion', 'Especialidad enfocada en el desarrollo de software'),
(2, 'Diseño Grafico', 'Especialidad enfocada en el diseño de figuras, dibujos y modelados en 3d'),
(3, 'Electronica', 'se enfoca en el diseño de circuitos electronicos para cualquier electrodomestico o dispositivo electronico'),
(4, 'Ofimatica', 'Se enfoca en el uso de aplicaciones como exel, word, powerpoint, etc.'),
(5, 'Construccion', 'Se enfoca en el diseño y contruccion de estructuras '),
(6, 'Contabilidad', 'Enfocaba en el manejo de ingresos sobre la administraion de los  negocios y cualquier uso del dinero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'Base de Datos no Relacionales', 1),
(2, 'Ingles', 1),
(3, 'Base de Datos Relacionales', 1),
(4, 'Historia', 1),
(5, 'Temas Mate ', 1),
(6, 'Tutoria', 1),
(7, 'Reacciones Quimicas', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
