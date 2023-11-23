-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: database:3306
-- Generation Time: Nov 23, 2023 at 08:12 AM
-- Server version: 8.2.0
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kebabIKSN`
--

-- --------------------------------------------------------

--
-- Table structure for table `establecimiento`
--

CREATE TABLE `establecimiento` (
  `id` bigint NOT NULL,
  `repartidor` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `establecimiento`
--

INSERT INTO `establecimiento` (`id`, `repartidor`) VALUES
(1, 'Julius'),
(3, 'Julen'),
(4, 'Elvias');

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `id` bigint NOT NULL,
  `id_user` bigint NOT NULL,
  `fecha` date DEFAULT NULL,
  `observaciones` varchar(512) NOT NULL,
  `id_establecimiento` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`id`, `id_user`, `fecha`, `observaciones`, `id_establecimiento`) VALUES
(4, 11, '2023-11-16', 'Supadupah', 4),
(5, 8, '2023-11-22', 'Quiero super 4 grandes kebabs de chinchetas', 1),
(6, 10, '2023-11-15', 'AAAAAAAAAAAA', 1),
(7, 42, '2009-07-28', 'That one birds shines brightly a sandwich sleeps and the book ate. ', 1),
(8, 94, '2022-07-22', 'The car is. ', 4),
(9, 63, '2010-08-18', 'The birds fly quickly. ', 4),
(10, 122, '2007-09-06', 'A dog is quickly. ', 4),
(11, 75, '2004-06-03', 'Since one house fly slowly the sun fly softly. ', 1),
(12, 95, '2011-01-17', 'Where one house ate slowly one sun run. ', 3),
(13, 44, '2006-10-24', 'The book shines but one house barks. ', 1),
(14, 101, '2005-10-14', 'When the birds barks brightly the house barks brightly and one friend ate. ', 4),
(15, 84, '2012-06-17', 'A sandwich reads loudly and one house sleeps. ', 1),
(16, 53, '2004-04-28', 'Whether the house ate softly one sandwich ate. ', 1),
(17, 9, '2010-08-20', 'The sandwich run slowly or one sandwich shines. ', 4),
(18, 17, '2001-07-20', 'A sandwich ate brightly but the sun is quickly. ', 3),
(19, 90, '2002-09-08', 'Since one friend run brightly the house sleeps. ', 1),
(20, 74, '2018-09-16', 'The sandwich is. ', 3),
(21, 32, '2005-12-21', 'The friend ate loudly. ', 3),
(22, 91, '2016-10-16', 'While the sandwich is a sandwich reads brightly and a cat ate brightly. ', 4),
(23, 57, '2020-03-05', 'One cat run brightly but one book shines quickly. ', 1),
(24, 11, '2009-01-05', 'The friend reads and the sandwich is. ', 3),
(25, 89, '2021-11-18', 'A birds shines but the dog shines. ', 4),
(26, 45, '2003-06-01', 'Until one sandwich is softly one house run and a dog ate. ', 1),
(27, 111, '2017-03-31', 'A friend sleeps and a friend shines. ', 4),
(28, 70, '2012-09-15', 'The dog is but a book run brightly. ', 1),
(29, 50, '2021-06-02', 'A sandwich is and one dog sleeps. ', 1),
(30, 18, '2016-08-18', 'A dog ate loudly. ', 1),
(31, 29, '2018-11-05', 'A sandwich is but a book fly quickly. ', 4),
(32, 99, '2014-10-11', 'A sun ate loudly or one sun ate. ', 1),
(33, 1, '2013-06-24', 'A car barks but one cat fly. ', 1),
(34, 10, '2020-07-29', 'The birds reads or one car fly quickly. ', 1),
(35, 81, '2016-06-29', 'While the sandwich shines brightly a book shines softly. ', 4),
(36, 76, '2017-10-28', 'One house reads. ', 1),
(37, 84, '2022-03-12', 'A book run slowly. ', 3),
(38, 16, '2005-02-03', 'A friend shines. ', 4),
(39, 43, '2009-12-21', 'A book is slowly and a sun fly. ', 4),
(40, 52, '2008-04-24', 'A car run and a book is quickly. ', 1),
(41, 121, '2010-10-12', 'The sun reads. ', 4),
(42, 107, '2012-01-05', 'A house run quickly. ', 4),
(43, 84, '2022-04-11', 'One car reads slowly or a sandwich barks brightly. ', 3),
(44, 81, '2016-12-25', 'If one friend ate one birds reads and the friend barks brightly. ', 3),
(45, 53, '2005-07-14', 'Whether the sun is one book is brightly. ', 4),
(46, 45, '2008-01-26', 'Because a birds is one birds sleeps and the sandwich shines loudly. ', 1),
(47, 10, '2011-01-14', 'A car reads loudly and one cat sleeps. ', 3),
(48, 14, '2016-07-05', 'One house sleeps softly. ', 3),
(49, 9, '2002-10-01', 'Whether the dog fly the birds run softly. ', 3),
(50, 45, '2015-03-15', 'The car sleeps slowly or one cat reads brightly. ', 4),
(51, 120, '2019-04-15', 'The book barks slowly. ', 1),
(52, 121, '2021-09-22', 'The dog run loudly. ', 4),
(53, 75, '2022-05-11', 'Because the book reads slowly a friend barks loudly and the dog is. ', 1),
(54, 22, '2020-07-14', 'The house is brightly but a cat ate. ', 1),
(55, 94, '2003-04-05', 'One dog run slowly or a cat shines. ', 1),
(56, 52, '2022-08-02', 'So that one book shines a cat barks loudly. ', 3),
(57, 23, '2017-01-11', 'A friend reads loudly but one birds run brightly. ', 1),
(58, 34, '2018-11-02', 'The dog sleeps slowly. ', 4),
(59, 8, '2019-11-30', 'When the birds shines a car is. ', 1),
(60, 110, '2017-03-06', 'One friend barks and the birds barks. ', 4),
(61, 58, '2013-02-24', 'A book is and the book sleeps loudly. ', 3),
(62, 82, '2004-03-13', 'A sun fly. ', 4),
(63, 82, '2004-03-20', 'One book is. ', 1),
(64, 120, '2002-11-24', 'Even if one cat fly a sun run or a sandwich sleeps. ', 4),
(65, 93, '2003-08-27', 'One cat ate quickly. ', 3),
(66, 6, '2003-11-06', 'While the house run loudly a sandwich run and one friend sleeps slowly. ', 1),
(67, 111, '2003-11-05', 'One cat fly quickly and a cat fly softly. ', 4),
(68, 26, '2015-07-26', 'Wherever a book run brightly one car is brightly. ', 4),
(69, 51, '2000-02-23', 'A house is brightly but a house fly. ', 1),
(70, 120, '2001-06-30', 'A birds shines or one friend shines slowly. ', 1),
(71, 5, '2006-04-02', 'A sun sleeps slowly and a cat reads softly. ', 4),
(72, 34, '2009-02-21', 'Until the friend is a house is brightly but the dog reads. ', 4),
(73, 84, '2020-03-06', 'The book fly and the friend sleeps quickly. ', 3),
(74, 71, '2016-01-06', 'One sandwich is loudly and one dog is. ', 4),
(75, 7, '2001-12-08', 'Before a book shines the sandwich fly softly. ', 3),
(76, 125, '2009-12-27', 'The cat run. ', 1),
(77, 45, '2022-04-25', 'If one book fly one cat fly softly. ', 3),
(78, 82, '2011-05-19', 'One car sleeps. ', 1),
(79, 22, '2017-06-03', 'The cat is quickly or the birds sleeps. ', 3),
(80, 18, '2013-01-08', 'One dog ate or the book run. ', 4),
(81, 128, '2018-12-14', 'A cat ate slowly and one house is. ', 3),
(82, 83, '2006-01-31', 'While one birds fly the friend ate quickly and the birds reads brightly. ', 3),
(83, 44, '2021-12-02', 'So that one book reads quickly a house is. ', 4),
(84, 114, '2003-05-10', 'Provided that a friend reads a sun run or the book sleeps. ', 3),
(85, 27, '2017-06-27', 'One sun run and a sun sleeps. ', 1),
(86, 52, '2019-03-14', 'A house shines. ', 4),
(87, 127, '2008-03-27', 'The sun is loudly. ', 3),
(88, 101, '2001-09-29', 'The car shines. ', 3),
(89, 108, '2021-02-07', 'A sandwich reads. ', 1),
(90, 75, '2013-07-20', 'One car barks softly but one house run. ', 3),
(91, 57, '2005-11-30', 'Even if one sandwich barks the dog barks brightly and a car is quickly. ', 4),
(92, 11, '2009-10-16', 'The car ate. ', 4),
(93, 121, '2008-02-16', 'If the sandwich shines softly the sandwich fly but one sandwich fly. ', 1),
(94, 73, '2022-04-17', 'Unless one birds sleeps slowly one car sleeps but the friend is. ', 3),
(95, 22, '2021-02-18', 'Until a friend sleeps slowly one sun ate. ', 4),
(96, 101, '2021-12-07', 'Though a sandwich reads quickly one cat reads but one friend fly loudly. ', 3),
(97, 11, '2002-03-20', 'A sandwich reads slowly but the sandwich shines brightly. ', 3),
(98, 56, '2012-09-06', 'Because the friend reads the book shines. ', 3),
(99, 84, '2005-08-02', 'Provided that one sun ate brightly the house sleeps quickly or a book fly. ', 1),
(100, 83, '2018-08-16', 'The cat is and one cat shines slowly. ', 3),
(101, 90, '2018-08-02', 'Because one dog reads one sandwich is loudly. ', 1),
(102, 19, '2018-03-20', 'Although a sandwich reads a sandwich barks slowly. ', 3),
(103, 92, '2015-05-25', 'One sun shines. ', 1),
(104, 111, '2007-05-15', 'Though one book barks the cat is slowly. ', 1),
(105, 75, '2004-10-16', 'One car shines softly and the sandwich is brightly. ', 4),
(106, 32, '2013-04-14', 'After one sandwich is quickly the sandwich ate but the cat is brightly. ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(256) NOT NULL,
  `identificador_empresarial` varchar(255) NOT NULL,
  `nombre_empresa` varchar(255) NOT NULL,
  `role` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `identificador_empresarial`, `nombre_empresa`, `role`) VALUES
(1, 'Lauop0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Navas0', 'Laura', NULL),
(2, 'Monom1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'González1', 'Mónica', NULL),
(3, 'Rafia2', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Suárez2', 'Rafael', NULL),
(4, 'Niela0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Romero0', 'Nievesla0', NULL),
(5, 'Ferer1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Roselló1', 'Fernandoer12', NULL),
(6, 'Raqya2', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'García2', 'Raquelya24', NULL),
(7, 'Pabol3', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Lara3', 'Pablool36', NULL),
(8, 'Rafav4', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Aznar4', 'Rafaelav48', NULL),
(9, 'RafcL5', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Farell5', 'RafaelcL60', NULL),
(10, 'Evaar6', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Ortega6', 'Evaar72', NULL),
(11, 'Kisser4k', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'ax00224124', 'GPSClientes', NULL),
(12, 'Seran0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Suárez0', 'Sergioan0', NULL),
(13, 'Josrt1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Aguilar1', 'José Antoniort12', NULL),
(14, 'Rafav2', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'González2', 'Rafaelav24', NULL),
(16, 'Jaiav4', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 'Maldonado4', 'Jaimeav48', NULL),
(17, 'BAB', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'mEPsTktm', 'khéBAB', b'1'),
(18, 'SucedaniosStore', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'eEC921ll', 'ooSeePPA', b'0'),
(19, 'Lauui0', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'McLure0', 'Lauraui0', b'1'),
(20, 'Ferom1', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Roselló1', 'Fernandoom12', b'1'),
(21, 'Serua2', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Navas2', 'Sergiouá24', b'1'),
(22, 'Elela3', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Ferrer3', 'Elenala36', b'1'),
(23, 'Seral4', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Roselló4', 'Sergioal48', b'1'),
(24, 'Jaiui5', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Molero5', 'Jaimeui60', b'1'),
(25, 'Nieun6', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Quilez6', 'Nievesuñ72', b'1'),
(26, 'Ferab7', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Roselló7', 'Fernandoab84', b'1'),
(27, 'Lauun8', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Rozalén8', 'Laurauñ96', b'1'),
(28, 'Eloar9', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Puig9', 'Eloyar108', b'1'),
(29, 'Pabrt0', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Velarte0', 'Pablort0', b'1'),
(30, 'Serar1', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Cano1', 'Sergioar12', b'1'),
(31, 'Eleom2', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Romero2', 'Elenaóm24', b'1'),
(32, 'Evaar3', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Díaz3', 'Evaar36', b'1'),
(33, 'Raqel4', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Briones4', 'Raquelel48', b'1'),
(34, 'Lucri5', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Navarro5', 'Lucasri60', b'1'),
(35, 'Laupa6', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Latorre6', 'Laurapa72', b'1'),
(36, 'Alaav7', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Muñoz7', 'Alanav84', b'1'),
(37, 'Elelc8', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Maldonado8', 'Elenalc96', b'1'),
(38, 'Pauar9', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Briones9', 'Paulaar108', b'1'),
(39, 'Raflc10', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Rozalén10', 'Rafaellc120', b'1'),
(40, 'Evaom11', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'García11', 'Evaóm132', b'1'),
(41, 'Eleoz12', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Molero12', 'Elenaoz144', b'1'),
(42, 'Lucar13', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Alcañiz13', 'Lucasar156', b'1'),
(43, 'Lauav14', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Marín14', 'Lauraav168', b'1'),
(44, 'Rafar15', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Puig15', 'Rafaelar180', b'1'),
(45, 'Jesun16', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Navas16', 'Jesúsuñ192', b'1'),
(46, 'Alaui17', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Muñoz17', 'Alanui204', b'1'),
(47, 'Jesua18', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'López18', 'Jesúsuá216', b'1'),
(48, 'Monav19', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Esteve19', 'Mónicaav228', b'1'),
(49, 'Lucat20', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Marín20', 'Lucasat240', b'1'),
(50, 'Monar21', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Roselló21', 'Mónicaar252', b'1'),
(51, 'Nieal22', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Roselló22', 'Nievesal264', b'1'),
(52, 'Josia23', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Maldonado23', 'José Antonioía276', b'1'),
(53, 'Feran24', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Ferrer24', 'Fernandoan288', b'1'),
(54, 'Ferst25', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Rozalén25', 'Fernandost300', b'1'),
(55, 'Josar26', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Velarte26', 'José Antonioar312', b'1'),
(56, 'Rafrt27', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Suárez27', 'Rafaelrt324', b'1'),
(57, 'Eleer28', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Lara28', 'Elenaer336', b'1'),
(58, 'ElecL29', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Serrano29', 'ElenacL348', b'1'),
(59, 'Alaos30', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Serrano30', 'Alanos360', b'1'),
(60, 'Rafon31', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Rozalén31', 'Rafaelon372', b'1'),
(61, 'Ferav32', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Ortega32', 'Fernandoav384', b'1'),
(62, 'Nieya33', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'González33', 'Nievesya396', b'1'),
(63, 'Ferri34', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Gómez34', 'Fernandori408', b'1'),
(64, 'Evaav35', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Gómez35', 'Evaav420', b'1'),
(65, 'Elost36', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Quilez36', 'Eloyst432', b'1'),
(66, 'Luclc37', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Latorre37', 'Lucaslc444', b'1'),
(67, 'Rafav38', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Ortega38', 'Rafaelav456', b'1'),
(68, 'Monui39', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Aznar39', 'Mónicaui468', b'1'),
(69, 'Ferzn40', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Romero40', 'Fernandozn480', b'1'),
(70, 'Ferol41', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Molero41', 'Fernandool492', b'1'),
(71, 'Lucgu42', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Roselló42', 'Lucasgu504', b'1'),
(72, 'Ferat43', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'García43', 'Fernandoat516', b'1'),
(73, 'Eloar44', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Lara44', 'Eloyar528', b'1'),
(74, 'Ferom45', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Velarte45', 'Fernandoóm540', b'1'),
(75, 'Monar46', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Ferrer46', 'Mónicaar552', b'1'),
(76, 'Eleol47', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Cano47', 'Elenaol564', b'1'),
(77, 'Niear48', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Quilez48', 'Nievesar576', b'1'),
(78, 'Laugu49', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Alarcón49', 'Lauragu588', b'1'),
(79, 'Ferar50', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Farell50', 'Fernandoar600', b'1'),
(80, 'Feria51', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Puig51', 'Fernandoía612', b'1'),
(81, 'Niegu52', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Ferrer52', 'Nievesgu624', b'1'),
(82, 'Raqel53', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'López53', 'Raquelel636', b'1'),
(83, 'Jeslc54', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Alcañiz54', 'Jesúslc648', b'1'),
(84, 'Monom55', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Ortega55', 'Mónicaóm660', b'1'),
(85, 'Serlc56', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Aznar56', 'Sergiolc672', b'1'),
(86, 'Pauon57', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Ferrer57', 'Paulaon684', b'1'),
(87, 'Feros58', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Quilez58', 'Fernandoos696', b'1'),
(88, 'Raqol59', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Cano59', 'Raquelol708', b'1'),
(89, 'Elopa60', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Rozalén60', 'Eloypa720', b'1'),
(90, 'Lauya61', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Fabra61', 'Lauraya732', b'1'),
(91, 'Lauom62', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Ortega62', 'Lauraóm744', b'1'),
(92, 'Jaian63', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Cano63', 'Jaimean756', b'1'),
(93, 'Lauar64', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Aguilar64', 'Lauraar768', b'1'),
(94, 'Evaer65', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Esteve65', 'Evaer780', b'1'),
(95, 'Niean66', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'McLure66', 'Nievesan792', b'1'),
(96, 'ElecL67', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Rozalén67', 'ElenacL804', b'1'),
(97, 'Lauop68', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Puig68', 'Lauraóp816', b'1'),
(98, 'Rafom69', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Farell69', 'Rafaelom828', b'1'),
(99, 'Monav70', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Rozalén70', 'Mónicaav840', b'1'),
(100, 'Evael71', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Gómez71', 'Evael852', b'1'),
(101, 'Nieav72', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Maldonado72', 'Nievesav864', b'1'),
(102, 'Elear73', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Aznar73', 'Elenaar876', b'1'),
(103, 'Nieui74', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Puig74', 'Nievesui888', b'1'),
(104, 'Raqpa75', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Marín75', 'Raquelpa900', b'1'),
(105, 'Lauua76', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Quilez76', 'Laurauá912', b'1'),
(106, 'Eloua77', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Ferrer77', 'Eloyuá924', b'1'),
(107, 'Ferom78', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Ayala78', 'Fernandoom936', b'1'),
(108, 'Ferer79', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Esteve79', 'Fernandoer948', b'1'),
(109, 'Jaiar80', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Lara80', 'Jaimear960', b'1'),
(110, 'Eleri81', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Rozalén81', 'Elenari972', b'1'),
(111, 'Eloab82', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'López82', 'Eloyab984', b'1'),
(112, 'Rafer83', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'García83', 'Rafaeler996', b'1'),
(113, 'Pauar84', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'McLure84', 'Paulaar1008', b'1'),
(114, 'Paurt85', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Cano85', 'Paulart1020', b'1'),
(115, 'Raqol86', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Briones86', 'Raquelol1032', b'1'),
(116, 'Lucri87', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Ayala87', 'Lucasri1044', b'1'),
(117, 'Ferui88', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Fabra88', 'Fernandoui1056', b'1'),
(118, 'Alael89', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Alarcón89', 'Alanel1068', b'1'),
(119, 'Pauer90', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Ayala90', 'Paulaer1080', b'1'),
(120, 'Eloom91', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Latorre91', 'Eloyóm1092', b'1'),
(121, 'Eleab92', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Aparici92', 'Elenaab1104', b'1'),
(122, 'Josoz93', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Rozalén93', 'José Antoniooz1116', b'1'),
(123, 'Eloav94', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Aguilar94', 'Eloyav1128', b'1'),
(124, 'Eloab95', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Cano95', 'Eloyab1140', b'1'),
(125, 'Raqon96', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Muñoz96', 'Raquelon1152', b'1'),
(126, 'Lucoz97', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Serrano97', 'Lucasoz1164', b'1'),
(127, 'RaqcL98', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Esteve98', 'RaquelcL1176', b'1'),
(128, 'Lauat99', '72b37a5cce60840d1392a19392165d1e8531e4e0b6bbeb122588e73a20024ebd', 'Lara99', 'Lauraat1188', b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `establecimiento`
--
ALTER TABLE `establecimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_establecimiento` (`id_establecimiento`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `establecimiento`
--
ALTER TABLE `establecimiento`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_establecimiento`) REFERENCES `establecimiento` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;