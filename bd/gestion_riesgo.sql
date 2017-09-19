-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-09-2017 a las 05:38:48
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestion_riesgo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id_proyecto` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `gerente` varchar(255) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id_proyecto`, `nombre`, `gerente`, `fecha_registro`) VALUES
(7, '989', '898989', '2017-09-14 22:18:51'),
(8, 'i898', '98989', '2017-09-14 22:18:56'),
(15, 'vectores', 'ender', '2017-09-16 22:43:50'),
(17, 'base de datos', 'omar', '2017-09-17 07:18:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `riesgo`
--

CREATE TABLE `riesgo` (
  `id_proyecto` int(11) NOT NULL,
  `id_riesgo` int(11) NOT NULL,
  `riesgo` text NOT NULL,
  `causas` text NOT NULL,
  `efectos` text NOT NULL,
  `como_impacta` text NOT NULL,
  `impacto` int(11) NOT NULL,
  `probabilidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `riesgo`
--

INSERT INTO `riesgo` (`id_proyecto`, `id_riesgo`, `riesgo`, `causas`, `efectos`, `como_impacta`, `impacto`, `probabilidad`) VALUES
(7, 7, 'No saber programar', '1. ser idiota<br />\r\n2. salir del sena', '1. No tener trabajo<br />\r\n2. No se sabe quien es mas estupido entre todos los involucrados', 'Muy negativo ya que por medio de este no se puede medir absolutamente nada', 2, 5),
(7, 8, 'Riesgo2', '1 causa<br />\r\n2 causa', '1<br />\r\n2', 'como impacta', 2, 3),
(7, 9, 'esto es un riesgo', '909', '09090', '0909', 2, 2),
(7, 10, 'iuiu', 'iuiu', 'iuiui', 'uiuiui', 3, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `username` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`username`, `password`) VALUES
('omar', '7c4a8d09ca3762af61e59520943dc26494f8941b');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id_proyecto`);

--
-- Indices de la tabla `riesgo`
--
ALTER TABLE `riesgo`
  ADD PRIMARY KEY (`id_riesgo`,`id_proyecto`),
  ADD KEY `cascada proyecto` (`id_proyecto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `riesgo`
--
ALTER TABLE `riesgo`
  MODIFY `id_riesgo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `riesgo`
--
ALTER TABLE `riesgo`
  ADD CONSTRAINT `cascada proyecto` FOREIGN KEY (`id_proyecto`) REFERENCES `proyecto` (`id_proyecto`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
