-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-01-2016 a las 12:11:36
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webcine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Peliculas`
--

CREATE TABLE `Peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(55) NOT NULL,
  `imagen` varchar(155) NOT NULL,
  `director` varchar(75) NOT NULL,
  `sinopsis` longtext NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Peliculas`
--

INSERT INTO `Peliculas` (`id`, `titulo`, `imagen`, `director`, `sinopsis`, `tipo`) VALUES
(1, 'The Evil Dead', 'http://www.thementalshed.com/wp-content/uploads/2013/04/evil-dead-original-poster.jpg', 'Sam Raimi', 'Cinco chicos van a pasar el fin de semana a una cabaña perdida en un espeso bosque en las montañas de Tennessee. Una vez instalados, y cuando se encuentran cenando, la trampilla que da acceso al sótano se abre de golpe. Extrañados, deciden bajar a investigar. Allí encuentran un magnetófono, un extraño cuchillo ritual y un libro antiquísimo.', 1),
(2, 'Tucker and Dale', 'https://oddreaddotcom.files.wordpress.com/2012/06/tucker-and-dale-vs-evil-poster-31.jpg', 'Eli Craig', 'Una pareja de amigos decide pasar las vacaciones en una cabaña perdida en el bosque con el plan de beber cerveza y matar el tiempo pescando. Tucker puede considerarse el líder de los dos, pues su colega Dale posee una incapacidad innata para acercarse al sexo opuesto. Cuando se encuentran casualmente con unos estudiantes en viaje de acampada, Dale intenta acercarse a la bella Alison, una de las chicas del grupo, pero sólo consigue asustarla. Poco después, la joven sufre un accidente y es socorrida por los protagonistas, que la llevan a su cabaña. A partir de entonces, una serie de casualidades e infortunios provocarán que los compañeros de Alison concluyan por pensar que Tucker y Dale la han secuestrado y que, en realidad, son perturbados asesinos en serie que planean acabar con las vidas de todos ellos.', 1),
(3, 'Balada triste de trompeta', 'http://www.cinefilo.es/wp-content/uploads/balada_triste_trompeta_cartel_03092010.jpg', 'Álex de la Iglesia', 'En 1937, en plena guerra civil, tropas republicanas irrumpen en un circo, durante el espectáculo, para reclutar a sus empleados para luchar contra las tropas nacionales. Mucho tiempo después, en los últimos años del franquismo, dos payasos (Carlos Areces y Antonio de la Torre) luchan por el amor de una atractiva trapecista (Carolina Bang). ', 1),
(4, 'El descuartizador de Nueva York', 'http://pictures2.todocoleccion.net/tc/2010/05/24/19525472.jpg', 'Lucio Fulci', 'Un asesino que habla como un pato, ronda por Nueva York asesinando mujeres en forma grotesca. El detective Jack Headly se empleará a fondo para intentar cazarlo.', 4),
(5, 'La casa de los 1000 cadáveres ', 'http://www.planeta5000.com/lacasa1000/cartel.jpg', 'Rob Zombie', 'Dos parejas de jóvenes se pierden durante la noche y van a dar a una oscura casa habitada por una familia de psicópatas. Asesinatos, canibalismo y ritos satánicos son algunos de los mil horrores que allí les esperan. ', 2),
(6, 'Cementerio viviente', 'http://vignette3.wikia.nocookie.net/stephenking/images/8/89/PetSemaraty.jpg/revision/latest?cb=20081113100039&path-prefix=es', 'Mary Lambert', 'El doctor Louis Creed, su esposa y sus dos niños se instalan en una vivienda próxima a una carretera con mucho tráfico. Cerca de la casa hay un sendero que lleva a un cementerio de animales y también a un antiguo cementerio indio; según la leyenda, los que sean enterrados allí volverán a la vida. Louis comprobará que es cierto cuando el gato de su hija es atropellado por un camión y un extraño vecino llamado Jud resucita al pequeño animal.', 2),
(7, 'Martyrs (Mártires) ', 'http://gnula.nu/wp-content/uploads/2015/07/Martyrs_poster_italia.jpg', 'Pascal Laugier', 'En Francia, a comienzos de 1970, Lucie, una niña desaparecida un año antes, es vista mientras camina por una carretera. Se encuentra en estado catatónico y es incapaz de contar nada de lo que le ha sucedido. La policía no tardará en hallar el lugar donde ha estado prisionera: un antiguo matadero. Lo que pudo pasar en ese lugar y cómo la niña consiguió escapar es lo que se trata de averiguar.', 2),
(8, 'Alta tensión', 'https://static.filmin.es/img/resources/web/film/poster/poster-resized/alta-tension.jpg', 'Alexandre Aja', 'La joven Marie es invitada a pasar unos días en la casa de los padres de su mejor amiga, una granja aislada y rodeada de campos de maiz. Las dos chicas piensan que allí encontrarán la tranquilidad necesaria para estudiar. Pero sus esperanzas son vanas. De noche llega a la casa un implacable asesino que mata a todos los miembros de la familia. Empezará entonces un trepidante duelo entre Marie y el intruso.', 2),
(9, 'Rubber', 'http://www.ocio.net/wp-content/uploads/2011/03/Rubber-poster-de-la-pelicula1-318x450.jpg', 'Quentin Dupieux', 'Cuando Robert, un neumático inanimado, descubre sus destructivos poderes telepáticos, pronto pone su punto de mira en una ciudad, y, en particular, en una misteriosa mujer que se convierte en su obsesión.', 3),
(10, 'Otesánek (El pequeño Otik) ', 'http://www.culturamas.es/wp-content/uploads/2013/01/Otesanek_Pequeno_Otik-181158784-large.jpg', 'Jan Svankmajer', 'Cuando un matrimonio se entera de que no puede tener hijos, se sienten muy frustrados. Para paliar el dolor de su esposa, el marido recorta una raíz del jardín, dándole forma de niño. La mujer, en su desesperación, acepta la la raíz como si fuera realmente un bebé. Y, de repente, la raíz cobra vida.', 3),
(11, 'El ataque de los tomates asesinos ', 'http://www.leelibros.com/biblioteca/files/286.jpg', 'John De Bello', 'El delirio más delirante nunca visto. Los tomates, hartos de tantos años de acabar como sofrito o bloody mary, están cobrando vida y están asesinando a los humanos. Se sospecha que este hecho está provocado por un pesticida creado por un loco que quiere el control del mundo. Sólo un agente especial y su osado comando lucharán para detener la invasión de tomates que se avecina... y que amenaza a la humanidad con el exterminio. ', 3),
(12, 'Kynodontas (Dogtooth)', 'http://thecitylovesyou.com/wp-content/uploads/2010/06/dogtooth_ver4.jpg', 'Yorgos Lanthimos', 'Un matrimonio con tres hijos vive en una mansión en las afueras de una ciudad. Los chicos, que nunca han salido de casa, son educados según los métodos que sus padres juzgan más apropiados y sin recibir ninguna influencia del exterior. Creen que los aviones son juguetes o que el mar es un tipo de silla forrada de cuero. La única persona que puede entrar en la casa es Christine, guardia de seguridad en la fábrica del padre.', 3),
(13, 'Ichi the killer ', 'http://2.bp.blogspot.com/-hzlM1UnAOYw/Ttqr7r5HNfI/AAAAAAAABJQ/l9jZ6rIDZDI/s1600/Ichi+the+Killer+poster.jpg', 'Takashi Miike', 'Un conocido jefe de la Yakuza (la mafia japonesa) desaparece junto con un botín de 100 millones de yenes. Su mano derecha, el sanguinario y masoquista Kakihara, y el resto del clan, emprenden su búsqueda, ya que no creen que se haya fugado. Para encontrarlo utilizarán todos los métodos que consideren oportunos, ya sea torturando o matando. Así, Kakihara consigue averiguar que lo que pensaban que era una desaparición, es en realidad un asesinato, cometido por un hombre llamado Ichi, un esquizofrénico que cuando pierde el control puede hacer picadillo, literalmente, a cualquiera. Con esto, quiere resarcirse de los traumas de la infancia, aunque lo que consigue es lo contrario. Pero Ichi no esta sólo en esta lucha, le acompañan unos repudiados del clan, destacando a Jijii, que es la cabeza del grupo y quien incita al caos que se organiza.', 4),
(14, 'El ataque de la montaña de mierda', 'http://static.flickr.com/123/320702361_2087bcc7a8_o.jpg', 'Rick Popko, Dan West ', 'Cuando el asesino en serie fugado Jack Schmitt muere en extrañas circunstancias en la planta de tratamiento del sistema metropolitano de alcantarillas, un profundo y oscuro problema se cierne sobre la ciudad. Un horripilante accidente en un laboratorio de estudios genéticos cercano conduce a la resurrección del asesino sediento de sangre y pronto, usando el alcantarillado como su mazmorra subterránea, Schmitt aplica su odiosa venganza sobre los atemorizados ciudadanos.', 4),
(15, 'La tienda de los horrores ', 'http://www.retromemories.net/wp-content/uploads/2013/09/240zqc6.jpg', 'Roger Corman', 'Seymour Krelboin (Jonathan Haze), un joven dependiente de una floristería, está enamorado de su compañera Audrie (Jackie Joseph), pero ella sale con un sádico dentista. Un día, justo después de un extraño eclipse, compra una extraña planta, a la que bautiza como Audrie II. La planta crece rápidamente, gracias a que Seymour le proporciona el alimento que necesita, y se convierte en un ejemplar espectacular, una verdadera atracción para la ciudad.', 5),
(16, 'Están vivos', 'http://www.cineochentas.com/wp-content/uploads/2011/08/estan-vivos-pelicula-1988-john-carpenter.jpg', 'John Carpenter', 'Un trabajador encuentra casualmente unas gafas que permiten ver a las personas tal y como son. Gracias a ellas descubrirá que importantes personajes de la vida política y social son en realidad extraterrestres. Durante su particular cruzada podrá observar cómo estos alienígenas han ido sembrando el mundo de mensajes subliminales con los que pretenden convertir a los hombres en una raza de esclavos.', 5),
(17, 'El día de la bestia', 'http://rockmusic.org/bso/bestia/DiaBestiaCartel.jpg', 'Álex de la Iglesia', 'Un sacerdote cree haber descifrado el mensaje secreto del Apocalipsis según San Juan: el Anticristo nacerá el 25 de diciembre de 1995 en Madrid. Para impedir el nacimiento del hijo de Satanás, el cura se alía con José María, un joven aficionado al death metal. Ambos intentan averiguar en qué parte de Madrid tendrá lugar el apocalíptico acontecimiento. Con la ayuda del profesor Cavan, presentador de un programa de televisión de carácter esotérico y sobrenatural, el cura y José Mari invocan al diablo en una extraña ceremonia.', 5),
(18, 'Videodrome', 'http://www.elpelicultista.com/wp-content/uploads/2014/04/videodromeposter.jpg', 'David Cronenberg', 'Max Renn, un aburrido operador de televisión por cable, descubre un día una televisión "real" llamada Videodrome. Una palpitante pesadilla de ciencia-ficción que nos muestra un mundo en el que el vídeo puede controlar y alterar la vida humana. Considerada por Andy Warhol la "naranja mecánica" de los 80.', 5),
(19, 'Braindead', 'http://www.cinefantastico.com/images/braindect.jpg', 'Peter Jackson', 'Un científico descubre en Skull Island un ejemplar muy extraño de mono rata al que acompaña una terrible maldición, según los nativos. El ejemplar es trasladado a Nueva Zelanda para su estudio. Por otra parte, Lionel es un joven que vive con su insoportable madre, que no aprueba la relación que acaba de comenzar con Paquita, la hija del tendero. Cuando los dos enamorados realizan una visita al zoológico, ella les vigila en secreto, y será mordida por el animal encontrado en la isla. Poco a poco, la madre de Lionel se va convirtiendo en una especie de zombie, sedienta de carne, y que convierte en zombie a todo el que ataca. (', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuarios`
--

CREATE TABLE `Usuarios` (
  `id` int(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuarios`
--

INSERT INTO `Usuarios` (`id`, `username`, `email`, `password`) VALUES
(1, 'prueba', 'j869582@trbvm.com', '74b87337454200d4d33f80c4663dc5e5'),
(2, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3'),
(3, 'prueba2', 'prueba2@prueba2.com', '96080775c113b0e5c3e32bdd26214aec'),
(4, 'prueba3', 'prueba3@prueba3.com', '5afb9bcb73acf95a28aa35dbd9acdbda'),
(5, 'prueba4', 'prueba4@prueba4.com', 'aa466f29a42582d133bc36c9a227c118'),
(6, 'pruebaclase', 'pruebaclase@prueba.com', 'c893bad68927b457dbed39460e6afd62');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Votaciones`
--

CREATE TABLE `Votaciones` (
  `id` int(11) NOT NULL,
  `id_Peliculas` int(11) NOT NULL,
  `id_Usuarios` int(11) NOT NULL,
  `puntuacion` int(11) NOT NULL,
  `opinion` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Votaciones`
--

INSERT INTO `Votaciones` (`id`, `id_Peliculas`, `id_Usuarios`, `puntuacion`, `opinion`) VALUES
(3, 1, 2, 10, 'Histórico.'),
(4, 2, 2, 8, 'Muy divertida.'),
(5, 1, 1, 9, 'Es muy buena.'),
(6, 2, 1, 5, 'Regular.'),
(7, 1, 3, 8, 'Una película bastante entretenida.'),
(8, 2, 3, 6, 'Película para pasar el rato.'),
(9, 3, 3, 5, 'La esperaba diferente tras ver los trailers, no llego a mis expectativas.'),
(10, 5, 3, 7, 'Película bastante gore, además es gracioso conocer que el director se apellida Zombie.'),
(11, 6, 3, 4, 'Esperaba más de esta película.'),
(13, 7, 3, 9, 'Espectacular.'),
(14, 8, 3, 6, ' '),
(15, 9, 3, 1, 'Le pongo un dos por ponerle nota.'),
(17, 11, 3, 7, 'Increíble.'),
(18, 13, 3, 9, 'Me gusto bastante la temática de esta película.'),
(19, 14, 3, 7, 'Me pareció entretenida.'),
(20, 15, 3, 6, 'Pase un buen rato con los amigos viendola.'),
(21, 16, 3, 10, 'Totalmente recomendada.'),
(22, 17, 3, 8, 'Película que no puedes dejar de ver.'),
(23, 1, 4, 3, 'A mi personalmente no me gusto mucho.'),
(24, 3, 4, 8, 'Pese a lo que otros muchos puedan decir, me pareció una película bastante buena.'),
(25, 5, 4, 5, ' '),
(26, 6, 4, 8, 'Bastante entretenida.'),
(27, 7, 4, 6, 'Pase mucha angustia viéndola, pero la recomiendo.'),
(28, 8, 4, 5, 'El título lo dice todo.'),
(29, 9, 4, 7, 'Para pasar el rato.'),
(30, 10, 4, 3, 'No me gusto mucho el argumento.'),
(31, 11, 4, 2, '¿Tomates asesinos? ¿En serio?'),
(32, 12, 4, 9, 'Sin palabras.'),
(33, 4, 4, 7, 'Aun estoy en shock tras verla.'),
(34, 13, 4, 4, 'No me pareció gran cosa.'),
(35, 15, 4, 8, 'Si no la has visto, estas tardando.'),
(36, 16, 4, 10, 'Perfecta.'),
(37, 17, 4, 4, 'Sobre valorada completamente.'),
(38, 18, 4, 7, 'Entretenida.'),
(39, 2, 5, 3, 'No me gusto mucho.'),
(40, 3, 5, 5, 'Aceptable.'),
(41, 5, 5, 7, 'Fue bastante entretenida.'),
(42, 6, 5, 3, ' '),
(43, 7, 5, 4, 'A mi no me acabo de gustar.'),
(44, 9, 5, 6, 'Si ves esta película, sabiendo de antes que el argumento trata sobre una rueda asesina, no esperes mucho de ella.'),
(45, 10, 5, 5, 'Pudo ser peor.'),
(46, 11, 5, 3, ' '),
(47, 12, 5, 5, 'No me disgusto.'),
(48, 4, 5, 3, 'Esperaba más.'),
(49, 14, 5, 1, 'Sinceramente, no se porque la vi conociendo el título.'),
(50, 16, 5, 10, 'Obra de arte.'),
(51, 18, 5, 6, 'Cumplió mis expectativas.'),
(59, 1, 6, 1, 'No me gusto.');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Peliculas` (`id_Peliculas`),
  ADD KEY `id_Usuarios` (`id_Usuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Peliculas`
--
ALTER TABLE `Peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `Usuarios`
--
ALTER TABLE `Usuarios`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `Votaciones`
--
ALTER TABLE `Votaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
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
