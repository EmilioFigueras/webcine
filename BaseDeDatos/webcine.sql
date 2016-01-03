-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 03-01-2016 a las 02:18:30
-- Versión del servidor: 5.5.46-0+deb8u1
-- Versión de PHP: 5.6.14-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `webcine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Peliculas`
--

CREATE TABLE IF NOT EXISTS `Peliculas` (
`id` int(11) NOT NULL,
  `titulo` varchar(55) NOT NULL,
  `imagen` varchar(155) NOT NULL,
  `director` varchar(75) NOT NULL,
  `sinopsis` longtext NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Peliculas`
--

INSERT INTO `Peliculas` (`id`, `titulo`, `imagen`, `director`, `sinopsis`, `tipo`) VALUES
(1, 'The Evil Dead', 'http://www.thementalshed.com/wp-content/uploads/2013/04/evil-dead-original-poster.jpg', 'Sam Raimi', 'Cinco chicos van a pasar el fin de semana a una cabaña perdida en un espeso bosque en las montañas de Tennessee. Una vez instalados, y cuando se encuentran cenando, la trampilla que da acceso al sótano se abre de golpe. Extrañados, deciden bajar a investigar. Allí encuentran un magnetófono, un extraño cuchillo ritual y un libro antiquísimo.', 1),
(2, 'Tucker and Dale', 'https://oddreaddotcom.files.wordpress.com/2012/06/tucker-and-dale-vs-evil-poster-31.jpg', 'Eli Craig', 'Una pareja de amigos decide pasar las vacaciones en una cabaña perdida en el bosque con el plan de beber cerveza y matar el tiempo pescando. Tucker puede considerarse el líder de los dos, pues su colega Dale posee una incapacidad innata para acercarse al sexo opuesto. Cuando se encuentran casualmente con unos estudiantes en viaje de acampada, Dale intenta acercarse a la bella Alison, una de las chicas del grupo, pero sólo consigue asustarla. Poco después, la joven sufre un accidente y es socorrida por los protagonistas, que la llevan a su cabaña. A partir de entonces, una serie de casualidades e infortunios provocarán que los compañeros de Alison concluyan por pensar que Tucker y Dale la han secuestrado y que, en realidad, son perturbados asesinos en serie que planean acabar con las vidas de todos ellos.', 1),
(3, 'Balada triste de trompeta', 'http://www.cinefilo.es/wp-content/uploads/balada_triste_trompeta_cartel_03092010.jpg', 'Álex de la Iglesia', 'En 1937, en plena guerra civil, tropas republicanas irrumpen en un circo, durante el espectáculo, para reclutar a sus empleados para luchar contra las tropas nacionales. Mucho tiempo después, en los últimos años del franquismo, dos payasos (Carlos Areces y Antonio de la Torre) luchan por el amor de una atractiva trapecista (Carolina Bang). ', 1),
(4, 'El descuartizador de Nueva York', 'http://pictures2.todocoleccion.net/tc/2010/05/24/19525472.jpg', 'Lucio Fulci', 'Un asesino que habla como un pato, ronda por Nueva York asesinando mujeres en forma grotesca. El detective Jack Headly se empleará a fondo para intentar cazarlo.', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE IF NOT EXISTS `Usuarios` (
`id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`id`, `username`, `email`, `password`) VALUES
(1, 'prueba', 'j869582@trbvm.com', '74b87337454200d4d33f80c4663dc5e5'),
(2, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Votaciones`
--

CREATE TABLE IF NOT EXISTS `Votaciones` (
`id` int(11) NOT NULL,
  `id_Peliculas` int(11) NOT NULL,
  `id_Usuarios` int(11) NOT NULL,
  `puntuacion` int(11) NOT NULL,
  `opinion` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Votaciones`
--

INSERT INTO `Votaciones` (`id`, `id_Peliculas`, `id_Usuarios`, `puntuacion`, `opinion`) VALUES
(3, 1, 2, 10, 'Histórico.'),
(4, 2, 2, 8, 'Muy divertida.'),
(5, 1, 1, 9, 'Es muy buena.'),
(6, 2, 1, 5, 'Regular.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Peliculas`
--
ALTER TABLE `Peliculas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Votaciones`
--
ALTER TABLE `Votaciones`
 ADD PRIMARY KEY (`id`), ADD KEY `id_Peliculas` (`id_Peliculas`), ADD KEY `id_Usuarios` (`id_Usuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Peliculas`
--
ALTER TABLE `Peliculas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `Votaciones`
--
ALTER TABLE `Votaciones`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Votaciones`
--
ALTER TABLE `Votaciones`
ADD CONSTRAINT `Votaciones_ibfk_1` FOREIGN KEY (`id_Peliculas`) REFERENCES `Peliculas` (`id`),
ADD CONSTRAINT `Votaciones_ibfk_2` FOREIGN KEY (`id_Usuarios`) REFERENCES `Usuarios` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
