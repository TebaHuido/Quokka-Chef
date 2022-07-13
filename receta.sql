-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2022 a las 03:54:51
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
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE `receta` (
  `Descripcion` text NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `ID_Receta` int(11) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Puntaje` float NOT NULL,
  `cont_puntaje` int(11) NOT NULL DEFAULT 1,
  `Autor` varchar(50) NOT NULL,
  `Tiempo` float NOT NULL,
  `Med_tiempo` varchar(15) NOT NULL,
  `Porciones` int(11) NOT NULL,
  `Foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `receta`
--

INSERT INTO `receta` (`Descripcion`, `Nombre`, `ID_Receta`, `Tipo`, `Puntaje`, `cont_puntaje`, `Autor`, `Tiempo`, `Med_tiempo`, `Porciones`, `Foto`) VALUES
('Es un exquisito Cafe con Helado', 'Cafe Helado', 1, 'Bebida', 3, 1, 'Pilar Hernandez', 20, 'minutos', 4, 'https://imgur.com/Yq6B5z0.png'),
('La receta de gambas al pil pil es un básico para los cocineros amantes de este tipo de salsa, o de preparación.\r\n\r\nSe trata de una salsa emulsionada, muy típica de la cocina española, que se obtiene a partir de la gelatina del pescado. Usualmente también lleva aceite de oliva, ajo y guindillas, y tiene el aspecto de una salsa verde.', 'Camarones al pil pil', 2, 'plato de fondo', 4, 1, 'gourmet.cl', 20, 'minutos', 4, 'https://imgur.com/lZIBnLa.png'),
('Palta reina, siempre tan majestuosa, tradicional y popular de nuestro Chile. Es una entrada muy contundente, así que pueden optar por utilizar un cuarto de la palta en vez de la mitad o simplemente pueden usar una palta más pequeña. A mi me fascina la mezcla de estos sabores, siempre me recuerda a mi Chile querido, y sobre todo de esas paltas (aguacates) tan ricas de mi Quinta Región.', 'palta reina', 3, 'entrada', 3, 1, 'Carolina', 40, 'minutos', 2, 'https://www.gourmet.cl/wp-content/uploads/2015/08/PALTA-REINA.jpg'),
('Esta ensalada de capas de cangrejo con aguacate es una receta muy sencilla que combina sabores deliciosos.  Esta refrescante ensalada en capas se hace con una primera capa de aguacate, rociado con jugo de limón, aceite de oliva, y sal.', 'Ensalada de capas de cangrejo con palta', 4, 'entrada', 4, 1, 'laylita.com', 15, 'minutos', 4, 'https://www.laylita.com/recetas/wp-content/uploads/2018/12/Ensalada-de-capas-de-cangrejo-con-aguacate.jpg'),
('Bebida fría de galleta oreo con hielo molido ', 'Milkshake de oreo', 5, 'Bebida', 4, 1, 'David Berkowitz', 30, 'Minutos', 2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwvhFNgCNvr6jy7o_GzH1w0zu81Ytk5LK8We5Sxe6Sa4qj0lZTTvHBr1sHY1P6_ATMCaA&usqp=CAU'),
('Coctel de vodka con jugo de arandano rojo ', 'Vodka Cranberry', 6, 'Bebidas', 4.2, 5, 'Fernand Petiot', 5, 'minutos', 1, 'https://www.tragosdelmundo.cl/wp-content/uploads/2019/10/vodka-cranberry.png%27'),
('La causa limeña es uno de los platos emblemáticos de la gastronomía de Perú, su ingrediente más característico es la papa amarilla. De hecho, fuera de las fronteras de este país se le conoce como causa peruana. Propia de la comida del verano, consiste en una especie de pastel de puré de papa relleno de ensalada de pollo o atún con mayonesa, además de otros vegetales. Generalmente, el adorno consiste en aceitunas negras y huevos cocidos.', 'Causa Limeña', 7, 'entrada', 5, 1, 'Luisa Panagua', 180, 'minutos', 6, 'https://t2.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_600.jpg'),
('Coctel refrescante de frutas tropicales', 'Blue Bayou', 8, 'Bebidas', 1, 1, 'Zasha Grey', 5, 'minutos', 1, 'https://www.tragosdelmundo.cl/wp-content/uploads/2019/10/blue-bayou-coctel.png '),
('El tiramisú es un pastel frío que se monta en capas. No existe una receta única de elaboración, sino variantes a partir de una serie de ingredientes base que pueden ser representados por distintos productos', 'Tiramisu', 10, 'Postres', 5, 1, 'Jorge Berna', 3, 'horas', 10, 'https://www.gourmet.cl/wp-content/uploads/2011/04/tiramisu1.jpg ');

--
-- Índices para tablas volcadas
--

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
  MODIFY `ID_Receta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
