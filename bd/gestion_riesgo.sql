-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2018 a las 02:28:13
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.6.15

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
-- Estructura de tabla para la tabla `riesgo`
--

CREATE TABLE `riesgo` (
  `riesgo` text NOT NULL,
  `causas` text NOT NULL,
  `efectos` text NOT NULL,
  `como_impacta` text NOT NULL,
  `acciones` text NOT NULL,
  `responsable` text NOT NULL,
  `cronograma` text NOT NULL,
  `indicador` text NOT NULL,
  `id_riesgo` int(10) UNSIGNED NOT NULL,
  `impacto` int(11) NOT NULL,
  `probabilidad` int(11) NOT NULL,
  `id_proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `riesgo`
--

INSERT INTO `riesgo` (`riesgo`, `causas`, `efectos`, `como_impacta`, `acciones`, `responsable`, `cronograma`, `indicador`, `id_riesgo`, `impacto`, `probabilidad`, `id_proyecto`) VALUES
('No saber programar', '1. ser idiota<br />\r\n2. salir del sena', '1. No tener trabajo<br />\r\n2. No se sabe quien es mas estupido entre todos los involucrados', 'Muy negativo ya que por medio de este no se puede medir absolutamente nada', '', '', '', '', 1, 0, 0, 1),
('Riesgo2', '1 causa<br />\r\n2 causa', '1<br />\r\n2', 'como impacta', '', '', '', '', 2, 0, 0, 2),
('esto es un riesgo', '909', '09090', '0909', '', '', '', '', 3, 0, 0, 2),
('iuiu', 'iuiu', 'iuiui', 'uiuiui', '', '', '', '', 4, 0, 0, 3),
('Perdida de dinero', 'Gabriel', 'No realización', 'Suspende el proyecto', 'accion1', 'responsable1', 'cronograma1', 'indicador1', 5, 0, 0, 4),
('Daños irreparables', 'Humedad de la ciudad', 'Servidores quemados', 'Atrasa el desarrollo del producto', '', '', '', '', 6, 0, 0, 4),
('moijoi', 'oijoi', 'oinoji', 'oinoi', '', '', '', '', 10, 3, 3, 5),
('huih', 'iuhui', 'hiuhui', 'hiu', '', '', '', '', 11, 1, 1, 5),
('juij', 'uihiu', 'hiuhiu', 'hiuhiu', '', '', '', '', 12, 2, 2, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `riesgo`
--
ALTER TABLE `riesgo`
  ADD PRIMARY KEY (`id_riesgo`),
  ADD KEY `id_riesgo` (`id_riesgo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `riesgo`
--
ALTER TABLE `riesgo`
  MODIFY `id_riesgo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
