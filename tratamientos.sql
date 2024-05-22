-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 22-05-2024 a las 15:58:33
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `veterinaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamientos`
--

DROP TABLE IF EXISTS `tratamientos`;
CREATE TABLE IF NOT EXISTS `tratamientos` (
  `id_tratamiento` int NOT NULL,
  `id_paciente_fk` int NOT NULL,
  `tipo_tratamiento` varchar(20) COLLATE utf8mb3_spanish_ci NOT NULL,
  `fecha_tratamiento` date NOT NULL,
  PRIMARY KEY (`id_tratamiento`),
  KEY `id_paciente_fk` (`id_paciente_fk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `tratamientos`
--

INSERT INTO `tratamientos` (`id_tratamiento`, `id_paciente_fk`, `tipo_tratamiento`, `fecha_tratamiento`) VALUES
(1, 2, 'Vacunación', '2022-03-01'),
(2, 2, 'Desparasitación', '2022-03-15'),
(3, 2, 'Chequeo general', '2022-04-02'),
(4, 1, 'Vacunación', '2022-03-01'),
(5, 1, 'Desparasitación', '2022-03-15'),
(6, 1, 'Chequeo general', '2022-04-02'),
(7, 1, 'Tratamiento dental', '2022-05-10'),
(8, 4, 'Vacunación', '2022-04-01'),
(9, 4, 'Desparasitación', '2022-04-15'),
(10, 4, 'Chequeo general', '2022-05-02'),
(11, 4, 'Tratamiento de herid', '2022-06-10'),
(12, 7, 'Vacunación', '2022-04-05'),
(13, 7, 'Desparasitación', '2022-04-20'),
(14, 7, 'Chequeo general', '2022-05-03'),
(15, 7, 'Tratamiento para ale', '2022-06-12'),
(16, 9, 'Vacunación', '2022-05-01'),
(17, 9, 'Desparasitación', '2022-05-15'),
(18, 9, 'Chequeo general', '2022-06-02'),
(19, 9, 'Tratamiento para inf', '2022-07-10'),
(20, 10, 'Vacunación', '2022-05-05'),
(21, 10, 'Desparasitación', '2022-05-20'),
(22, 10, 'Chequeo general', '2022-06-03'),
(23, 10, 'Tratamiento para pro', '2022-07-15'),
(24, 3, 'Vacunación', '2022-03-10'),
(25, 3, 'Desparasitación', '2022-03-25'),
(26, 3, 'Chequeo general', '2022-04-12'),
(27, 3, 'Tratamiento para pul', '2022-05-20'),
(28, 4, 'Limpieza dental', '2022-01-01'),
(29, 4, 'Desparasitación', '2022-02-03'),
(30, 4, 'Vacunación', '2022-03-05'),
(31, 4, 'Extracción de diente', '2022-04-07'),
(32, 4, 'Tratamiento de la pi', '2022-05-09'),
(33, 4, 'Radiografía', '2022-06-11'),
(34, 4, 'Cirugía', '2022-07-13');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  ADD CONSTRAINT `id_paciente_fk` FOREIGN KEY (`id_paciente_fk`) REFERENCES `pacientes` (`id_paciente`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
