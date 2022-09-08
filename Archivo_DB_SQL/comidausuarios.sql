-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 07-09-2022 a las 23:37:06
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `comidausuarios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(200) NOT NULL,
  `ingredientes` text NOT NULL,
  `detalles` text NOT NULL,
  `img_id` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `menu`, `ingredientes`, `detalles`, `img_id`) VALUES
(20, 'Bifes a la criolla con papas a la española!', 'Bifes de ternera corte premium, papas, morron, cebolla, ajo, aceite, pimienta y sal', 'Vino tinto Trumpeter es el que se recomienda para acompañar! ', 'crbrxzozwk1tswnnlwgj'),
(21, 'Hamburguesa super gigante con papas fritas!', 'No te comas el verso!, sale con todos los aderezos...', 'Hamburguesa para olvidarse del postre!', 'invr07hczceyttw0njmj'),
(22, 'Milanesa de ternera con guarnición de fritas', 'Milanesa de Nalga premium rebozada con pan rallado, ajo y perejil, papas fritas, sal.', 'Si bien se dice que los platos tradicionales argentinos son las empanadas, el asado y el locro, no hay quien coma locro una vez por semana, pero las milanesas nunca faltan en la mesa. La milanesa es tradición en nuestro país, es un plato muy popular tanto en niños como en adultos. Todos aman comer milanesas.', 'w7rqc1zfayyul5ar2k2d'),
(24, 'ARROZ CON POLLO', 'varios ingredientes', 'excelente comida por ahora hay stock', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Marcelo', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Martin', '81dc9bdb52d04dc20036dbd8313ed055');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
