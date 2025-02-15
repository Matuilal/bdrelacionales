-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2025 a las 01:15:29
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
-- Estructura de tabla para la tabla `carga_academica`
--

CREATE TABLE `carga_academica` (
  `id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carga_academica`
--

INSERT INTO `carga_academica` (`id`, `clase_id`, `alumno_id`, `calificacion`) VALUES
(1, 1, 6, 10),
(2, 3, 6, 10),
(3, 4, 6, 10),
(4, 5, 6, 10),
(5, 6, 6, 10),
(6, 7, 6, 10),
(7, 8, 6, 10),
(8, 9, 6, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `maestro_id` int(11) NOT NULL,
  `hora` time NOT NULL,
  `Aula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `materia_id`, `maestro_id`, `hora`, `Aula`) VALUES
(1, 1, 1, '13:20:00', 'CC2'),
(3, 2, 8, '14:00:00', 'Aula 12'),
(4, 5, 6, '13:20:00', 'Aula 12'),
(5, 7, 4, '16:40:00', 'Aula 12'),
(6, 4, 2, '17:20:00', 'Aula 12'),
(7, 6, 6, '16:00:00', 'Aula 12'),
(8, 8, 2, '18:00:00', 'Aula 12'),
(9, 3, 3, '16:00:00', 'CC1');

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
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `Fecha de Nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `correo`, `genero`, `Fecha de Nacimiento`) VALUES
(1, 'Ibarra', 'ibarra23@gmail.com', 1, '1969-01-11'),
(2, 'Teresa', 'Teresa23@gmail.com', 0, '1998-03-14'),
(3, 'Luis Carlos', 'Luiscarlos23@gmail.com', 1, '1987-06-21'),
(4, 'Pedro', 'Pedro23@gmail.com', 1, '1969-09-11'),
(5, 'Rochin', 'Rochin1975@gmail.com', 1, '1975-12-14'),
(6, 'Liliana', 'Liliana23@cetis107.edu.mx', 0, '1980-10-12'),
(7, 'Ricardo', 'Ricardo1984@gmail.com', 1, '1984-11-22'),
(8, 'Ivan', 'Ivan22@gmail.com', 1, '1984-08-22'),
(9, 'Alfonso', 'Alfonso.aispuro23@gmail.com', 1, '1984-09-10'),
(10, 'Guadalupe', 'MariaGuadalupe23@gmail.com', 0, '1982-12-30');

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
(7, 'Reacciones Quimicas', 1),
(8, 'Ciencias Sociales 3', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clase_id` (`clase_id`),
  ADD KEY `alumno_id` (`alumno_id`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`,`materia_id`,`maestro_id`),
  ADD KEY `materia_id` (`materia_id`),
  ADD KEY `maestro_id` (`maestro_id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
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
-- AUTO_INCREMENT de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD CONSTRAINT `carga_academica_ibfk_1` FOREIGN KEY (`clase_id`) REFERENCES `clases` (`id`),
  ADD CONSTRAINT `carga_academica_ibfk_2` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`);

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`maestro_id`) REFERENCES `maestros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
