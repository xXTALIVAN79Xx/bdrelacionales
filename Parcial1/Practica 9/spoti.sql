-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-02-2025 a las 01:11:46
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
-- Base de datos: `spoti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artisacanciones`
--

CREATE TABLE `artisacanciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artisacanciones`
--

INSERT INTO `artisacanciones` (`id`, `artista_id`, `canciones_id`) VALUES
(1, 7, 2),
(2, 4, 10),
(3, 7, 2),
(4, 7, 11),
(5, 2, 9),
(6, 1, 3),
(7, 2, 6),
(8, 1, 3),
(9, 6, 5),
(10, 1, 4),
(11, 1, 4),
(12, 8, 7),
(13, 8, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Peso Pluma', 'Corridos tumnbados'),
(2, 'Junior H', 'Corridos Tumbados'),
(3, 'Luis R Corniquez', 'Corridos '),
(4, 'Edicion Especial', 'corridos'),
(5, 'Cartel de Santa', ' Callejeros'),
(6, 'Michael Jackson', 'Pop'),
(7, 'Chalino Sanchez', 'Corridos'),
(8, 'Eminem', 'Rap'),
(10, 'Grupo Laberinto', 'Corridos'),
(11, 'Cadetes de Linares', 'Corridos'),
(12, 'Fuerza regida', 'corridos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Nieves de enero', 1, '00:03:00', '0000-00-00', 0, ''),
(2, 'Baraja De Oro', 1, '00:03:00', '0000-00-00', 0, ''),
(3, 'La Durango', 11, '00:03:00', '0000-00-00', 1, ''),
(4, 'Bruce Wayne', 11, '00:03:00', '0000-00-00', 1, ''),
(5, 'Billie ', 6, '00:03:00', '0000-00-00', 0, ''),
(6, 'Y lloro', 11, '00:03:00', '0000-00-00', 1, ''),
(7, 'Rap God', 8, '00:03:00', '0000-00-00', 1, ''),
(8, 'Slim Shady', 8, '00:03:00', '0000-00-00', 1, ''),
(9, 'Piensalo', 11, '00:03:00', '0000-00-00', 1, ''),
(10, 'El Ice', 1, '00:03:00', '0000-00-00', 1, ''),
(11, 'Hermanos Mata', 1, '00:03:00', '0000-00-00', 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `canciones_id`) VALUES
(1, 8, 7),
(2, 11, 2),
(3, 1, 3),
(4, 9, 4),
(5, 3, 10),
(6, 4, 5),
(7, 2, 8),
(8, 6, 4),
(17, 7, 2),
(18, 5, 5),
(19, 6, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'Corridos'),
(2, 'Reggeton'),
(3, 'Musica Clasica'),
(4, 'Electronica'),
(5, 'Cumbias '),
(6, 'Pop'),
(7, 'K-pop '),
(8, 'Rap'),
(9, 'Trap'),
(10, 'Callejero'),
(11, 'Corridos Tumbados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'Mensual', 199),
(2, 'Anual', 999),
(3, 'Trio\r\nTres Usuarios', 289),
(4, 'Familiar Mensual\r\n4 Personas ', 399),
(5, 'Estudiante ', 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `usuario_id`, `duracion`, `totalcanciones`, `descripcion`, `publico`) VALUES
(1, 'Corridos', 1, '01:00:00', 20, 'sadasdw', 0),
(2, 'Corridos Tumbados', 7, '00:49:00', 15, 'dads', 1),
(3, 'Kpop', 11, '01:00:00', 30, 'asdaws', 0),
(4, 'Gym', 1, '04:10:00', 138, 'pesadas', 0),
(5, 'caminar', 5, '01:00:00', 19, 'chill', 1),
(6, 'Jugar', 2, '02:10:00', 56, 'Fornite', 0),
(7, 'Gym', 9, '03:00:00', 89, 'pa llorar', 0),
(8, 'Prepa', 4, '04:10:00', 160, 'Corridos alterados', 1),
(9, 'Casa', 3, '01:00:00', 44, 'Tranqui', 1),
(10, 'Trabajo', 11, '00:03:00', 1, 'Michael jackson', 1),
(11, 'Tareas', 8, '01:55:00', 44, 'easdas', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `playlistcanciones`
--

INSERT INTO `playlistcanciones` (`id`, `playlist_id`, `canciones_id`, `usuario_id`) VALUES
(1, 5, 6, 5),
(2, 8, 1, 1),
(3, 1, 7, 9),
(4, 2, 2, 7),
(5, 6, 8, 2),
(6, 11, 4, 3),
(7, 4, 6, 1),
(8, 7, 12, 6),
(9, 3, 6, 5),
(10, 10, 11, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Oscar Ivan', 'oscar.torres23@gmail.com', 5),
(2, 'Mateo Ibarra ', 'Mateolambebarras@gmail.com', 2),
(3, 'Isaac moreno', 'MorenoIsaac@gmail.com', 1),
(4, 'Jesus Angel', 'AngelJesusC@gmail.com', 4),
(5, 'Osma', 'osmaquinones@gmail.com', 5),
(6, 'Pepe Castro', 'Castropepe12@gmail.com', 3),
(7, 'Ricardo Martinez', 'MartinezXXX332@gmail.com', 5),
(8, 'Alejandro M', 'Alejandro7677@gmail.com', 4),
(9, 'Hugo Rubio', 'RubiuoHugo.23@gmail.com', 1),
(10, 'Luis C', 'Luiscarlos23.@gmail.com', 1),
(11, 'Carlos Torres', 'Torrescarlos25@gmail.com', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`),
  ADD KEY `activo` (`activo`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `precio` (`precio`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `totalcanciones` (`totalcanciones`),
  ADD KEY `publico` (`publico`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artisacanciones`
--
ALTER TABLE `artisacanciones`
  ADD CONSTRAINT `artisacanciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artisacanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `generos` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`canciones_id`) REFERENCES `artistas` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
