-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2022 a las 16:59:36
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `quokka_chef`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intrucciones`
--

CREATE TABLE `intrucciones` (
  `intruccion` text NOT NULL,
  `orden` int(11) NOT NULL,
  `ID_Receta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `intrucciones`
--

INSERT INTO `intrucciones` (`intruccion`, `orden`, `ID_Receta`) VALUES
('Lo primero es hacer los espressos y mezclarlos con la leche fría y el azúcar, probar, si les gusta mas dulce agregar mas azúcar, refrigerar, pero consideren que el helado es siempre dulce.', 1, 1),
('Sacar el helado del congelador para que sea fácil de servir.', 2, 1),
('Batir la crema a mano o con batidora, cuando se empiecen a hacer onditas, unos 2 minutos, agregar la cucharada de azúcar granulada y seguir batiendo hasta que la crema esta Chantilly y de picos suaves. Acuérdense que la crema les queda mejor si todo: el bol, paletas de la batidora y la misma crema están  bien fríos.', 3, 1),
('En vasos largos o copas servir 1/4 taza de helado de vainilla, agregar la leche con café fría hasta casi el borde del vaso, dejar 1 cm. libre.', 4, 1),
('Agregar la crema chantilly.', 5, 1),
('Servir de inmediato. Decorar con mostacillas y un marrasquino si se desea.', 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE `receta` (
  `Descripcion` text NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `ID_Receta` int(11) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Puntaje` int(11) NOT NULL,
  `Autor` varchar(50) NOT NULL,
  `Tiempo` float NOT NULL,
  `Med_tiempo` varchar(15) NOT NULL,
  `Porciones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `receta`
--

INSERT INTO `receta` (`Descripcion`, `Nombre`, `ID_Receta`, `Tipo`, `Puntaje`, `Autor`, `Tiempo`, `Med_tiempo`, `Porciones`) VALUES
('Es un exquisito Cafe con Helado', 'Cafe Helado', 1, 'Bebida fria', 3, 'Pilar Hernandez', 20, 'minutos', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `intrucciones`
--
ALTER TABLE `intrucciones`
  ADD PRIMARY KEY (`orden`,`ID_Receta`),
  ADD KEY `ID_Receta` (`ID_Receta`);

--
-- Indices de la tabla `receta`
--
ALTER TABLE `receta`
  ADD PRIMARY KEY (`ID_Receta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `receta`
--
ALTER TABLE `receta`
  MODIFY `ID_Receta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `intrucciones`
--
ALTER TABLE `intrucciones`
  ADD CONSTRAINT `intrucciones_ibfk_1` FOREIGN KEY (`ID_Receta`) REFERENCES `receta` (`ID_Receta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
