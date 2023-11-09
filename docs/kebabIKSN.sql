-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: database:3306
-- Tiempo de generación: 09-11-2023 a las 12:18:39
-- Versión del servidor: 8.1.0
-- Versión de PHP: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `kebabIKSN`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `establecimiento`
--

CREATE TABLE `establecimiento` (
  `id` bigint NOT NULL,
  `repartidor` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `establecimiento`
--

INSERT INTO `establecimiento` (`id`, `repartidor`) VALUES
(2, 'Suncatrucxa TH'),
(3, 'Picatrica NPL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` bigint NOT NULL,
  `id_user` bigint NOT NULL,
  `fecha` date DEFAULT NULL,
  `observaciones` varchar(512) NOT NULL,
  `id_establecimiento` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `id_user`, `fecha`, `observaciones`, `id_establecimiento`) VALUES
(2, 1, '2023-10-18', 'Queso sin gluten', 3),
(6, 6, '2012-10-19', 'The book barks. ', 2),
(8, 9, '2019-12-14', 'The book barks. ', 3),
(9, 6, '2022-03-28', 'When the dog shines a car is slowly. ', 3),
(11, 11, '2012-05-17', 'Whether the cat run a book barks softly or the birds barks. ', 3),
(12, 16, '2014-12-21', 'One dog run loudly but one cat is. ', 3),
(16, 13, '2021-07-17', 'Provided that a birds sleeps one friend sleeps. ', 3),
(17, 4, '2001-10-13', 'A cat reads softly and a dog run. ', 2),
(22, 4, '2002-09-11', 'One sandwich fly but one car shines. ', 3),
(23, 8, '2020-05-08', 'A book sleeps and the book ate. ', 2),
(24, 11, '2013-06-19', 'A cat run or a car reads softly. ', 2),
(30, 18, '2023-10-12', 'Quiero tres de pollo con arroz vegetariano', 2),
(33, 19, '2023-10-12', 'Quiero tres de pollo con arroz vegetariano', 2),
(34, 19, '2023-10-12', 'Quiero tres de pollo con arroz vegetariano', 2),
(35, 19, '2023-10-17', 'Quiero tres de pollo con arroz vegetariano', 2),
(36, 19, '2023-10-17', 'Quiero tres de pollo con arroz vegetariano', 2),
(37, 19, '2023-10-17', 'Quiero tres de pollo con arroz vegetariano', 2),
(38, 19, '2023-10-17', 'Quiero tres de pollo con arroz vegetariano', 2),
(39, 19, '2023-10-17', 'Quiero tres de pollo con arroz vegetariano', 2),
(40, 19, '2023-10-17', 'Quiero tres de pollo con arroz vegetariano', 2),
(42, 19, '2023-10-17', 'Quiero tres de pollo con arroz vegetariano', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(256) NOT NULL,
  `identificador_empresarial` varchar(255) NOT NULL,
  `nombre_empresa` varchar(255) NOT NULL,
  `rol` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `identificador_empresarial`, `nombre_empresa`, `rol`) VALUES
(1, 'Lauop0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Navas0', 'Laura', 0),
(2, 'Monom1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'González1', 'Mónica', 0),
(3, 'Rafia2', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Suárez2', 'Rafael', 0),
(4, 'Niela0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Romero0', 'Nievesla0', 0),
(5, 'Ferer1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Roselló1', 'Fernandoer12', 0),
(6, 'Raqya2', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'García2', 'Raquelya24', 0),
(7, 'Pabol3', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Lara3', 'Pablool36', 0),
(8, 'Rafav4', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Aznar4', 'Rafaelav48', 0),
(9, 'RafcL5', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Farell5', 'RafaelcL60', 0),
(10, 'Evaar6', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Ortega6', 'Evaar72', 0),
(11, 'PaucL0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Navarro0', 'PaulacL0', 0),
(12, 'Nogutalomalo', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'ax00224124', 'GPSClientes', 0),
(13, 'Monri0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Gómez0', 'Mónicari0', 0),
(14, 'Elear1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'McLure1', 'Elenaar12', 0),
(16, 'Pauos3', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Puig3', 'Paulaos36', 0),
(17, 'Pauol4', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Alcañiz4', 'Paulaol48', 0),
(18, 'Sergisser8k', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'oolaaaa', 'GPSClients', 1),
(19, 'LeoVieHer', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'oolaaaa', 'GPSClients', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_establecimiento` (`id_establecimiento`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `establecimiento`
--
ALTER TABLE `establecimiento`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_establecimiento`) REFERENCES `establecimiento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
