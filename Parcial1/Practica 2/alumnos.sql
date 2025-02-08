-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 02:08:40
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
-- Base de datos: `Cetis107`
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
(6, 'Mateo', 'Ibarra Gastelum', '23325061070484', '2008-01-13', 1, 'mateo.ibarra23@cetis107.edu.mx', '6678619006'),
(7, 'Isaac', 'Moreno Higuera', '23325061070700', '2008-08-30', 1, 'isaac.moreno23@cetis107.edu.mx', '6674096666'),
(8, 'Jesus Angel', 'Valenzuela Contreras', '23325061070511', '0000-00-00', 1, 'jesusangelv347@gmail.com', '6672094090'),
(9, 'Emiliano', 'Ojeda Quintero', '23325061070702', '0000-00-00', 1, 'emiliano@gmail.com', '6673583222');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
