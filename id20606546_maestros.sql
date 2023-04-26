-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-04-2023 a las 17:51:12
-- Versión del servidor: 10.5.16-MariaDB
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id20606546_maestros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `codigo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `apeliido` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `edad` int(2) NOT NULL,
  `estado` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `foto` varchar(99) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`codigo`, `nombre`, `apeliido`, `edad`, `estado`, `foto`) VALUES
('12345', 'dange', 'galvis', 22, 'true', 'https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_1280.jpg'),
('54321', 'yesid', 'quintero', 19, 'false', 'https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166_1280.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pets`
--

CREATE TABLE `pets` (
  `id` int(11) NOT NULL,
  `foto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `raza` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `iduser` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pets`
--

INSERT INTO `pets` (`id`, `foto`, `nombre`, `raza`, `estado`, `iduser`) VALUES
(2, 'https://cdn.e-konomista.pt/uploads/2018/10/gato-persa-deitado-425x318.jpg', 'Luna blanca', 'Persa', 1, 2),
(4, 'https://th.bing.com/th/id/OIP.H_3eYXVcrGaHtGDz12oFqgAAAA?pid=ImgDet&rs=1', 'Simba', 'Siamés', 1, 3),
(5, 'https://th.bing.com/th/id/OIP.RE39CF_7VZSPIaqUYeRLbwAAAA?pid=ImgDet&rs=1', 'Bella', 'Chihuahua', 1, 4),
(6, 'https://th.bing.com/th/id/R.fb3a973e12f1414fbfd80a903aae9f38?rik=qkaWHpjhWxiOHA&pid=ImgRaw&r=0', 'Gatito', 'Angora', 1, 2),
(8, 'https://www.dogbreedinfo.com/images11/SiDDisFirewalkerRedTabby.jpg', 'Garfield', 'Persa', 1, 5),
(9, 'https://th.bing.com/th/id/OIP.fJvvwXI7-7b0j__OHPa94AAAAA?pid=ImgDet&rs=1', 'Buddy', 'Golden Retriever', 1, 3),
(10, 'https://th.bing.com/th/id/R.e29f7e1ad7f6cf64241309d3726059a9?rik=nou0dujkgNy57A&riu=http%3a%2f%2fwikigato.com%2fwp-content%2fuploads%2f2014%2f09%2fBambino.jpg&ehk=pebsQ39EDdrDxIMDOcF0eDnmxUkXr%2beVWYqW%2fIOFkIU%3d&risl=&pid=ImgRaw&r=0', 'sr gato', 'egipcio', 0, 4),
(11, 'https://th.bing.com/th/id/OIP.0URD-fs1pzajm52NL0P21wAAAA?pid=ImgDet&rs=1', 'mini', 'caniche', 1, 2),
(13, 'https://th.bing.com/th/id/R.fdaf171a55d43e011235cc89717e1d78?rik=39NzLtKenwfkaA&pid=ImgRaw&r=0', 'goofy', 'dalmata', 1, 10),
(14, 'https://th.bing.com/th/id/R.99187bdcbcb2c3a2ecd6e1546830e03b?rik=GMHsmwidG9FOdg&riu=http%3a%2f%2fimages.evisos.com.co%2f2009%2f05%2f22%2ffrespuder-busca-novia_fda6e93_3.jpg&ehk=9Ue8OkM7UuH5VPxZG06m4lEFLh66H1ojinJHR5Teb7Y%3d&risl=&pid=ImgRaw&r=0', 'copito', 'frespuder', 1, 10),
(15, 'https://th.bing.com/th/id/R.03e90bf90b6410a59cf498d2aa0b53a6?rik=RrAj3ker2smmiQ&riu=http%3a%2f%2fwww.lifewithcatman.com%2fwp-content%2fuploads%2f2019%2f06%2fcaracal-cat-pet-6.jpg&ehk=lGvJJMCXSPr8ck%2fU0XGLHWZM3Sm%2bvjbDZH14OMdALt0%3d&risl=&pid=ImgRaw&r=0', 'chacal', 'caracal', 1, 7),
(18, 'no tiene', 'curz', 'masi', 1, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_notes`
--

CREATE TABLE `user_notes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user_notes`
--

INSERT INTO `user_notes` (`id`, `nombre`, `email`, `pass`) VALUES
(1, 'Juan Pérez', 'juan@example.com', 'contraseña1'),
(2, 'María Rodríguez', 'maria@example.com', 'contraseña2'),
(3, 'Carlos García', 'carlos@example.com', 'contraseña3'),
(4, 'Ana Martínez', 'ana@example.com', 'contraseña4'),
(5, 'Pedro Gómez', 'pedro@example.com', 'contraseña5'),
(6, 'Laura Torres', 'laura@example.com', 'contraseña6'),
(7, 'Andrés Sánchez', 'andres@example.com', 'contraseña7'),
(8, 'Patricia López', 'patricia@example.com', 'contraseña8'),
(9, 'Raúl Ramírez', 'raul@example.com', 'contraseña9'),
(10, 'Isabel Castro', 'isabel@example.com', 'contraseña10'),
(26, 'dangello', 'guajiro3013@gmail.com', '12345'),
(27, 'andres', 'dagalvis@gmail.com', '54321');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`codigo`);

--
-- Indices de la tabla `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser` (`iduser`);

--
-- Indices de la tabla `user_notes`
--
ALTER TABLE `user_notes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `user_notes`
--
ALTER TABLE `user_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pets`
--
ALTER TABLE `pets`
  ADD CONSTRAINT `pets_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `user_notes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
