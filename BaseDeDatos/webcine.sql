-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 30-12-2015 a las 14:17:36
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
-- Estructura de tabla para la tabla `pelis`
--

CREATE TABLE IF NOT EXISTS `pelis` (
`id` int(11) NOT NULL,
  `Titulo` varchar(55) NOT NULL,
  `Imagen` varchar(155) NOT NULL,
  `Director` varchar(75) NOT NULL,
  `Sinopsis` longtext NOT NULL,
  `Tipo` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pelis`
--

INSERT INTO `pelis` (`id`, `Titulo`, `Imagen`, `Director`, `Sinopsis`, `Tipo`) VALUES
(1, 'The Evil Dead', 'http://www.thementalshed.com/wp-content/uploads/2013/04/evil-dead-original-poster.jpg', 'Sam Raimi', 'Cinco chicos van a pasar el fin de semana a una cabaña perdida en un espeso bosque en las montañas de Tennessee. Una vez instalados, y cuando se encuentran cenando, la trampilla que da acceso al sótano se abre de golpe. Extrañados, deciden bajar a investigar. Allí encuentran un magnetófono, un extraño cuchillo ritual y un libro antiquísimo.', 1),
(2, 'Tucker and Dale', 'https://oddreaddotcom.files.wordpress.com/2012/06/tucker-and-dale-vs-evil-poster-31.jpg', 'Eli Craig', 'Una pareja de amigos decide pasar las vacaciones en una cabaña perdida en el bosque con el plan de beber cerveza y matar el tiempo pescando. Tucker puede considerarse el líder de los dos, pues su colega Dale posee una incapacidad innata para acercarse al sexo opuesto. Cuando se encuentran casualmente con unos estudiantes en viaje de acampada, Dale intenta acercarse a la bella Alison, una de las chicas del grupo, pero sólo consigue asustarla. Poco después, la joven sufre un accidente y es socorrida por los protagonistas, que la llevan a su cabaña. A partir de entonces, una serie de casualidades e infortunios provocarán que los compañeros de Alison concluyan por pensar que Tucker y Dale la han secuestrado y que, en realidad, son perturbados asesinos en serie que planean acabar con las vidas de todos ellos.', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(1, 'prueba', 'j869582@trbvm.com', '74b87337454200d4d33f80c4663dc5e5'),
(2, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(4, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(5, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(6, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(7, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(8, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(9, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(10, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(11, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(12, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(13, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(14, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(15, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(16, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(17, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(18, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(19, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(20, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(21, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(22, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(23, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(24, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(25, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pelis`
--
ALTER TABLE `pelis`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pelis`
--
ALTER TABLE `pelis`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
