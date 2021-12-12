-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2021 at 06:28 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `training_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `entrenadores`
--

CREATE TABLE `entrenadores` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `n_telefono` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `password` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entrenadores`
--

INSERT INTO `entrenadores` (`dni`, `nombre`, `n_telefono`, `email`, `usuario`, `password`) VALUES
('11111111A', 'DemoUser', 111111111, 'demo@trainingmanager.com', 'demo', 'demo'),
('33344422A', 'Ahinoa Dominguez', 698744777, 'adominguez@gmail.com', 'adominguez', '87654321'),
('55544422A', 'Ruben Gonzalez', 666444555, 'rgonzalez@gmail.com', 'rgonzalez', '12345678'),
('55577788R', 'Soledad Barba', 658585858, 'sbarba@gmail.com', 'sbarba', 'abcd123'),
('88877745X', 'Adolfo Garcia', 555888777, 'agarcia@gmail.com', 'agarcia', 'ABCDF12');

-- --------------------------------------------------------

--
-- Table structure for table `entrenadores_equipos`
--

CREATE TABLE `entrenadores_equipos` (
  `id` int(11) NOT NULL,
  `id_entrenador` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `entrenamientos`
--

CREATE TABLE `entrenamientos` (
  `id` int(11) NOT NULL,
  `tipo` varchar(22) NOT NULL,
  `contenido` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entrenamientos`
--

INSERT INTO `entrenamientos` (`id`, `tipo`, `contenido`) VALUES
(1, 'Fisico', 'press banca 12rep / press militar 10rep / cuerda 2 minutos / sentadilla con peso 10rep. 5 series.\n'),
(2, 'Cardio', '4 vueltas al pabellon para calentar / lanzamiento de puestos / juego de los 10 pases / contraataques / pentalies. Entreno completo.'),
(3, 'Fisico', 'press mancuerna 12rep / maquina gemelos 10rep / escalera step 10 vueltas / sentadilla con peso 10rep. 6 series.\r\n'),
(4, 'Posicional', '2 Vueltas al pabellon / Lanzamiento de puestos específico / Contraataques / Partido 3 vs 3 / Posicional area 6 vs 6 aplicando lo aprendido en el 3 vs 3 / Pentalies. Entrenamiento Completo'),
(5, 'Fisico', 'saltos con cuerda 10 min / \nsentadillas con peso 12 rep / \nsplit en banco con peso 12 rep / \nburpies 8 rep. \n5 series.\n'),
(6, 'Relajado', '10 minutos pachanga para calentar.\n10 minutos posicional libre 6vs6.\nLanzamiento de puestos especificos.\nContraataques 4 vueltas en ambos sentidos.\nPenalties.\nEntrenamiento completo.'),
(7, 'Fisico Intenso', 'press pierna 14rep / \nmaquina gemelos 10rep / \nbanco con peso 10 rep / \nsentadilla con peso 10rep. \n6 series.\n ');

-- --------------------------------------------------------

--
-- Table structure for table `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `categoria` varchar(30) NOT NULL,
  `n_jugadores` int(11) NOT NULL,
  `equipacion` varchar(30) NOT NULL,
  `id_entrenamiento` int(8) NOT NULL,
  `entrenador` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `equipos`
--

INSERT INTO `equipos` (`id`, `nombre`, `categoria`, `n_jugadores`, `equipacion`, `id_entrenamiento`, `entrenador`) VALUES
(1, 'Los Monos', 'INFANTIL MASC A', 14, 'Roja', 2, 'rgonzalez'),
(2, 'Las Hormigas', 'CADETE FEM B', 16, 'Azul', 3, 'agarcia'),
(3, 'Las arañas', 'CADETE MASC B', 20, 'Verde', 1, 'agarcia'),
(4, 'Las orugas', 'JUVENIL MASC A', 22, 'Granate', 2, 'adominguez'),
(5, 'Las momias', 'INFANTIL FEM C', 15, 'Blanco', 2, 'rgonzalez');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entrenadores`
--
ALTER TABLE `entrenadores`
  ADD PRIMARY KEY (`dni`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indexes for table `entrenadores_equipos`
--
ALTER TABLE `entrenadores_equipos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrenamientos`
--
ALTER TABLE `entrenamientos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entrenadores_equipos`
--
ALTER TABLE `entrenadores_equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entrenamientos`
--
ALTER TABLE `entrenamientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
