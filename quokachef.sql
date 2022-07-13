-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2022 a las 05:10:17
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
('https://imgur.com/joJxOdN.png', 1, 1, 1),
('https://img-global.cpcdn.com/steps/58271269b8859540/590x315cq70/foto-del-paso-1-de-la-receta-malteada-de-helado-de-vainilla-y-platano-%F0%9F%98%80.jpg', 1, 1, 5),
('https://images.absolutdrinks.com/drink-images/415x570/947fedf9-ceda-47ca-b066-8fe96b04fc87.jpg?imwidth=500', 1, 1, 6),
('https://t1.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_paso_0_600.webp', 1, 1, 7),
('https://www.cocinavital.mx/wp-content/uploads/2019/05/tiramisu-clasico-pasos-01.jpg', 1, 1, 10),
('https://t2.uc.ltmcdn.com/es/posts/4/1/6/como_hacer_cheesecake_de_oreo_50614_paso_0_600.webp.png', 2, 2, 5),
('https://www.saq.com/media/catalog/product/c/a/canneberge-passion-ec-1_1610403369.png?quality=80&fit=bounds&height=&width=', 2, 2, 6),
('https://t1.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_paso_1_600.webp', 2, 2, 7),
('https://www.cocinavital.mx/wp-content/uploads/2019/05/tiramisu-clasico-pasos-02.jpg', 2, 2, 10),
('https://www.cocinavital.mx/wp-content/uploads/2019/05/tiramisu-clasico-pasos-03.jpg', 3, 2, 10),
('https://www.wikihow.com/images_en/thumb/a/aa/Make-Ice-Cream-in-a-Blender-with-Milk-Step-12.jpg/v4-460px-Make-Ice-Cream-in-a-Blender-with-Milk-Step-12.jpg.webp', 3, 3, 5),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQPjkOWdEDWVldXS2MA22YjYc-pDfqeSBePbKHxGLRCfqJHEAklqqejMn1W8MEZh3GnYA&usqp=CAU', 3, 3, 6),
('https://t2.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_paso_2_600.webp', 3, 3, 7),
('https://www.cocinavital.mx/wp-content/uploads/2019/05/tiramisu-clasico-pasos-05.jpg', 4, 3, 10),
('https://imgur.com/l2DHW75.png', 2, 4, 1),
('https://imgur.com/zIkzMKs.png', 3, 4, 1),
('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwvhFNgCNvr6jy7o_GzH1w0zu81Ytk5LK8We5Sxe6Sa4qj0lZTTvHBr1sHY1P6_ATMCaA&usqp=CAU.png', 4, 4, 5),
('https://t1.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_paso_3_orig.jpg', 4, 4, 7),
('https://www.tragosdelmundo.cl/wp-content/uploads/2019/10/blue-bayou-coctel.png', 1, 4, 8),
('https://imgur.com/gSsvWpR.png', 4, 5, 1),
('https://t2.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_paso_4_orig.jpg', 5, 5, 7),
('https://www.cocinavital.mx/wp-content/uploads/2019/05/tiramisu-clasico-pasos-06.jpg', 5, 5, 10),
('https://imgur.com/BvFpZdX.png', 5, 6, 1),
('https://imgur.com/Yq6B5z0.png', 6, 6, 1),
('https://t2.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_paso_5_orig.jpg', 6, 6, 7),
('https://www.cocinavital.mx/wp-content/uploads/2019/05/tiramisu-clasico-pasos-08.jpg', 6, 6, 10),
('https://t1.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_paso_6_orig.jpg', 7, 7, 7),
('https://www.cocinavital.mx/wp-content/uploads/2019/05/tiramisu-clasico-pasos-09.jpg', 7, 7, 10),
('https://t1.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_paso_7_orig.jpg', 8, 8, 7),
('https://www.cocinavital.mx/wp-content/uploads/2019/05/tiramisu-clasico-pasos-10.jpg', 8, 8, 10),
('https://t2.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_paso_8_orig.jpg', 9, 9, 7),
('https://www.cocinavital.mx/wp-content/uploads/2019/05/tiramisu-clasico-pasos-11.jpg', 9, 9, 10),
('https://t2.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_paso_9_orig.jpg', 10, 10, 7),
('https://www.cocinavital.mx/wp-content/uploads/2019/05/tiramisu-clasico-pasos-12.jpg', 10, 10, 10),
('https://t1.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_paso_10_orig.jpg', 11, 11, 7),
('https://t1.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_paso_11_orig.jpg', 12, 12, 7),
('https://www.cocinavital.mx/wp-content/uploads/2019/05/tiramisu-clasico-pasos.jpg', 11, 12, 10),
('https://t2.rg.ltmcdn.com/es/posts/8/6/2/causa_limena_31268_paso_12_orig.jpg', 13, 13, 7);

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
('Sal de Mar Gourmet a gusto', 2),
('½ libra de carne de cangrejo cocida reserve algunos trozos para agregar en la parte superior', 4),
('¼ de cebolla roja finamente picada', 4),
('¼ pimiento rojo finamente picado', 4),
('½ pimiento verde finamente picado', 4),
('¼ pepino finamente picado', 4),
('2-3 rábanos finamente picados', 4),
('1-2 cucharadas de cilantro finamente picado', 4),
('Jugo de 2 limones pequeños o 1 limón grande', 4),
('2 cucharadas de aceite de oliva', 4),
('Sal y pimienta al gusto', 4),
('2 paltas maduros grandes', 4),
('1-2 cucharadas de jugo de limón', 4),
('700ml de helado de vainilla', 5),
('360ml de leche entera', 5),
('8-10 galletas Oreo', 5),
('30ml de vodka', 6),
('105ml de jugo de arandano rojo', 6),
('1 rodaja de lima o limon para decorar', 6),
('Cubos de hielo a gusto', 6),
(' 3 ajíes amarillos', 7),
(' 1 kilogramo de papas amarillas', 7),
(' 3 limones', 7),
(' 60 mililitros de aceite vegetal', 7),
(' Sal y pimienta al gusto', 7),
('250 gramos de pollo', 7),
(' 2 cebollas', 7),
(' 1 pimentón verde', 7),
(' 5 ajíes', 7),
(' 100 gramos de mayonesa', 7),
(' 1 aguacate mediano picado en rebanadas', 7),
(' 1 zanahoria mediana', 7),
('60ml Vodka', 8),
('45ml Blue Curacao', 8),
('75ml Jugo de pomelo', 8),
('6 cubos de hielo picado', 8),
('Una rodaja de limon  o una flor  para decorar', 8),
('500 ml de agua', 10),
('4 cucharadas colmadas de café granulado', 10),
('5 cucharadas de amaretto', 10),
('1 cucharada de azúcar', 10),
('4 yemas de huevo', 10),
('250g de azucar flor', 10),
('1 queso crema', 10),
('100g de crema de leche', 10),
('500ml de crema para batir muy fria', 10),
('500g de galletas de champaña', 10),
('Chocolate en polvo para espolvorear', 10);

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
('En un tazón o bol grande, combine la carne de cangrejo cocida con las cebollas picadas, los pimientos picados, los pepinos cortados en cubitos, el rábano picado y el cilantro picado. Mezclar bien.', 1, 4),
('Pon el helado y la leche en la batidora y bate a velocidad lento por 1 minuto\r\n', 1, 5),
('En un vaso, poner los cubos de hielo, el vodka y el jugo de arandano rojo', 1, 6),
('Para hacer la receta de la causa limeña primero debes tener en cuenta que la base de la masa de la causa limeña son las papas. Para hacerla, retira la cáscara y llévalas a hervir con un poquito de sal hasta que ablanden.', 1, 7),
(' En una batidora agrega todos los ingredientes : vodka, jugo, piña, blue curacao y hielo ', 1, 8),
(' Hervir los 500ml de agua, verter sobre un bol, agregar café. Revolver bien y añadir el amaretto y azucar, revolver.', 1, 10),
('Sacar el helado del congelador para que sea fácil de servir.', 2, 1),
('Calentar el aceite de oliva en un sartén a fuego medio. Agregar los dientes de ajo cortados en láminas muy finas, evitando que se doren. Añadir los camarones y revolver constantemente.  Condimentar con el Mix de pimientas Gourmet y Sal de Mar Gourmet a gusto.  Agregar la Pimienta Cayena Gourmet y revolver.', 2, 2),
('Agregue el jugo de limón, el aceite de oliva y la sal / pimienta al gusto.', 2, 4),
('Rompe las galletas Oreo y añádelas a la batidorar\n', 2, 5),
('Mezclar todos los ingrdientes con la ayuda de una cuchara', 2, 6),
('Mientras tanto, prepara la salsa de ají amarillo que servirá para dar sabor y color a la masa. Solo tienes que picar los ajíes, eliminar las semillas y las venas y cortarlos en cuartos. Llévalos a hervir hasta que ablanden.', 2, 7),
('Licúa hasta que toda la pulpa se quede suave ', 2, 8),
(' En un bol, batir las yemas con 125g de azucar flor, hasta que la mezcla quede uniforme y de un color amarillo claro. Reservar.', 2, 10),
('Batir la crema a mano o con batidora, cuando se empiecen a hacer onditas, unos 2 minutos, agregar la cucharada de azúcar granulada y seguir batiendo hasta que la crema esta Chantilly y de picos suaves. Acuérdense que la crema les queda mejor si todo: el bol, paletas de la batidora y la misma crema están bien fríos.', 3, 1),
('Añadir el vino blanco y esperar a que se evapore casi por completo. Retirar del fuego.', 3, 2),
('La ensalada puede prepararse con anticipación y mantenerse refrigerada hasta que esté lista para servir y montar las capas de palta y cangrejo.', 3, 4),
('Bate a velocidad lento por unos 10 segundos\r\n', 3, 5),
('Agregar la lima o limon para decorar ', 3, 6),
('Cuando estén suaves, retira la piel y licúa la carne.', 3, 7),
(' Vierte en una copa fria tipo martini ', 3, 8),
('En otro bol, batir el queso crema previamente molido con la crema de leche, hasta que quede una mezcla suave. Reservar ', 3, 10),
('En vasos largos o copas servir 1/4 taza de helado de vainilla, agregar la leche con café fría hasta casi el borde del vaso, dejar 1 cm. libre.', 4, 1),
('Agregar la mantequilla en cubos pequeños de 1cm x 1cm y revolver bien.', 4, 2),
('Para la capa de ensalada de palta,\r\npelar y picar las paltas en cuadritos. Rociar con jugo de limón, aceite de oliva y sal al gusto. La palta se puede cortar en dados, en rebanadas finas o se puede triturar y hacer puré para una textura más cremosa.', 4, 4),
('Añade trozos más grandes de las galletas si te gusta\r\n', 4, 5),
('Obtendrás una salsa de consistencia un poco espesa y de un bonito color amarillo. Resérvala.', 4, 7),
(' Decora con una rodaja de piña o una flor amarilla ', 4, 8),
(' En otro bol, batir la crema para batir (recién sacada del refrigerador) e ir agregando de a poco 125g de azúcar flor, sin parar de batir. La crema tiene que quedar firme, cuidando que no se corte.', 4, 10),
('Agregar la crema chantilly.', 5, 1),
('Condimentar con Estragón Gourmet.  Al momento de servir, espolvorear sobre los camarones.', 5, 2),
('Para armar y server las capas de ensalada de cangrejo y palta,\r\ncoloque un molde redondo ligeramente engrasado con un poquito de aceite en el centro de cada plato, agregue primero la capa de palta picado o triturado, presione suavemente hacia abajo (con una cuchara) para hacerlo lo más compacto posible.', 5, 4),
('Disfruta de tu milkshake de oreo con amigos!\r\n', 5, 5),
('Ahora es el momento de preparar el pollo de la causa peruana. Cocínalo en agua junto con una de las cebollas, el pimentón verde y los ajíes. Por supuesto, no olvides la sal. Con una cucharada rasa está bien, aunque es a tu gusto.', 5, 7),
(' Juntar la mezcla de las yemas con la mezcla del queso crema con movimientos envolventes, hasta que quede una mezcla homogénea. Agregar esta mezcla de a poco a la crema batida, con movimientos envolventes y cuidando que quede todo bien mezclado.', 5, 10),
('Servir de inmediato. Decorar con mostacillas y un marrasquino si se desea.', 6, 1),
('A continuación, agregue una generosa capa de la ensalada de cangrejo. Presione hacia abajo y luego retire suavemente el molde.', 6, 4),
('En la misma agua del pollo puedes poner a hervir las judías y las zanahorias. Eso sí, es importante que nada se cocine más de lo debido. Cuando estén listas, retíralas del agua y desmecha el pollo completamente.', 6, 7),
(' Usar una fuente grande de 35x25cm. Mojar una a una las galletas de champaña en el café (cuidando de que no queden con exceso de líquido y se rompan) e ir poniéndolas en la base de la fuente. ', 6, 10),
('Si guardó algunos trozos de cangrejo, agréguelos en la parte superior. También se puede decorar la ensalada con hojas de cilantro y cebollas rojas encurtidas.', 7, 4),
('Cuando las papas estén listas, aprovecha que están calientes para elaborar la masa. Solo hazlas puré y procura que te quede lo más fino posible.', 7, 7),
(' Agregar la mitad de la mezcla.  en café.  ', 7, 10),
('Ahora agrega al puré todos los demás ingredientes: la salsa amarilla, el aceite, el jugo de los limones, sal y pimienta. Mezcla muy bien amasando con las manos.', 8, 7),
(' Agregar otra capa de galletas de champaña mojadas. ', 8, 10),
('Une el pollo ya desmechado junto con la otra cebolla bien picadita, la mayonesa y un poco de sal y pimienta.', 9, 7),
('Poner la otra mitad de la mezcla. ', 9, 10),
('Llegó el momento de armar la causa limeña. Primero, toma una porción de la masa y cubre el fondo de un molde. Luego, coloca las rebanadas de aguacate por encima del puré.', 10, 7),
(' Poner la otra mitad de la mezcla. ', 10, 10),
('Cubre el aguacate con la mezcla del pollo.', 11, 7),
(' Poner en el freezer por 2 horas para que obtenga consistencia', 11, 10),
('Toma otra pequeña porción de masa y tapa todo el pollo. Encima, coloca la capa de zanahorias y judías verdes.', 12, 7),
('Cortar y Servir .', 12, 10),
('Con la masa que quede, cubre bien la causa limeña. Para el adorno, corta los huevos de forma longitudinal y colócalos encima de la causa junto a las aceitunas. Déjala reposar un poco en la nevera. Este es un plato que se sirve frío.', 13, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `receta`
--

CREATE TABLE `receta` (
  `Descripcion` text NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `ID_Receta` int(11) NOT NULL,
  `Tipo` varchar(20) NOT NULL,
  `Puntaje` float NOT NULL DEFAULT 0,
  `cont_puntaje` int(11) NOT NULL DEFAULT 0,
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
  MODIFY `ID_Receta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
