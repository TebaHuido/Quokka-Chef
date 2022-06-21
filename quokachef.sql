-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2022 a las 05:36:42
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
-- Base de datos: `quokachef`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `direccion` varchar(200) NOT NULL,
  `orden_interno` int(11) NOT NULL,
  `orden` int(11) NOT NULL,
  `ID_Receta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`direccion`, `orden_interno`, `orden`, `ID_Receta`) VALUES
('https://imgur.com/joJxOdN', 1, 1, 1),
('https://imgur.com/l2DHW75', 2, 4, 1),
('https://imgur.com/zIkzMKs', 3, 4, 1),
('https://imgur.com/gSsvWpR', 4, 5, 1),
('https://imgur.com/BvFpZdX', 5, 6, 1),
('https://imgur.com/Yq6B5z0', 6, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingredientes`
--

CREATE TABLE `ingredientes` (
  `ingredientes` varchar(200) NOT NULL,
  `ID_Receta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ingredientes`
--

INSERT INTO `ingredientes` (`ingredientes`, `ID_Receta`) VALUES
('2 espressos', 1),
('2 tazas de leche entera, fría', 1),
('2 cucharaditas de azúcar granulada (para la leche)', 1),
('1 taza de helado de vainilla', 1),
('1 taza de crema liquida para batir', 1),
('1 cucharada de azucar granulada(para la crema chantilly)', 1),
('mostacilla, marrasquino, opcional', 1),
('1kg de camarones 36-40', 2),
('30ml de aceite de oliva', 2),
('5 dientes de ajo', 2),
('1 cda de Pimienta Cayena Gourmet', 2),
('100ml de vino blanco', 2),
('100gr de mantequilla\r\n', 2),
('Estragón Gourmet a gusto', 2),
('Mix de pimientas Gourmet a gusto', 2),
('Sal de Mar Gourmet a gusto', 2);

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
('Pelar los camarones sin sacar la cola y retirar la tripa con la ayuda de un palo de brocheta.  Reservar.', 1, 2),
('Sacar el helado del congelador para que sea fácil de servir.', 2, 1),
('Calentar el aceite de oliva en un sartén a fuego medio. Agregar los dientes de ajo cortados en láminas muy finas, evitando que se doren. Añadir los camarones y revolver constantemente.  Condimentar con el Mix de pimientas Gourmet y Sal de Mar Gourmet a gusto.  Agregar la Pimienta Cayena Gourmet y revolver.', 2, 2),
('Batir la crema a mano o con batidora, cuando se empiecen a hacer onditas, unos 2 minutos, agregar la cucharada de azúcar granulada y seguir batiendo hasta que la crema esta Chantilly y de picos suaves. Acuérdense que la crema les queda mejor si todo: el bol, paletas de la batidora y la misma crema están bien fríos.', 3, 1),
('Añadir el vino blanco y esperar a que se evapore casi por completo. Retirar del fuego.', 3, 2),
('En vasos largos o copas servir 1/4 taza de helado de vainilla, agregar la leche con café fría hasta casi el borde del vaso, dejar 1 cm. libre.', 4, 1),
('Agregar la mantequilla en cubos pequeños de 1cm x 1cm y revolver bien.', 4, 2),
('Agregar la crema chantilly.', 5, 1),
('Condimentar con Estragón Gourmet.  Al momento de servir, espolvorear sobre los camarones.', 5, 2),
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
  `Porciones` int(11) NOT NULL,
  `Foto` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `receta`
--

INSERT INTO `receta` (`Descripcion`, `Nombre`, `ID_Receta`, `Tipo`, `Puntaje`, `Autor`, `Tiempo`, `Med_tiempo`, `Porciones`, `Foto`) VALUES
('Es un exquisito Cafe con Helado', 'Cafe Helado', 1, 'Bebida fria', 3, 'Pilar Hernandez', 20, 'minutos', 4, 'https://imgur.com/Yq6B5z0'),
('La receta de gambas al pil pil es un básico para los cocineros amantes de este tipo de salsa, o de preparación.\r\n\r\nSe trata de una salsa emulsionada, muy típica de la cocina española, que se obtiene a partir de la gelatina del pescado. Usualmente también lleva aceite de oliva, ajo y guindillas, y tiene el aspecto de una salsa verde.', 'Camarones al pil pil', 2, 'plato de fondo', 4, 'gourmet.cl', 20, 'minutos', 4, 'https://imgur.com/lZIBnLa');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`orden`,`ID_Receta`,`orden_interno`);

--
-- Indices de la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD KEY `ID_Receta` (`ID_Receta`);

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
  MODIFY `ID_Receta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `imagenes_ibfk_1` FOREIGN KEY (`orden`,`ID_Receta`) REFERENCES `intrucciones` (`orden`, `ID_Receta`);

--
-- Filtros para la tabla `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD CONSTRAINT `ingredientes_ibfk_1` FOREIGN KEY (`ID_Receta`) REFERENCES `receta` (`ID_Receta`);

--
-- Filtros para la tabla `intrucciones`
--
ALTER TABLE `intrucciones`
  ADD CONSTRAINT `intrucciones_ibfk_1` FOREIGN KEY (`ID_Receta`) REFERENCES `receta` (`ID_Receta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
