-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3307
-- Tiempo de generación: 12-12-2018 a las 04:34:30
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `groceries`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `box`
--

CREATE TABLE `box` (
  `id` int(11) NOT NULL,
  `box_code` varchar(32) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(128) NOT NULL,
  `postal_code` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `city`
--

INSERT INTO `city` (`id`, `city_name`, `postal_code`) VALUES
(101, 'Alameda', '29530'),
(153, 'Alcaucín', '29711'),
(155, 'Alcaucín', '29713'),
(34, 'Alfarnate', '29194'),
(35, 'Alfarnatejo', '29194'),
(177, 'Algarrobo', '29750'),
(92, 'Algatocín', '29491'),
(25, 'Alhaurín de la Torre', '29130'),
(24, 'Alhaurín el Grande', '29120'),
(160, 'Almáchar', '29718'),
(62, 'Almargen', '29330'),
(27, 'Almogía', '29150'),
(98, 'Álora', '29500'),
(99, 'Álora', '29510'),
(108, 'Álora', '29552'),
(121, 'Álora', '29593'),
(112, 'Alozaina', '29567'),
(83, 'Alpandeire', '29460'),
(40, 'Antequera', '29200'),
(43, 'Antequera', '29230'),
(46, 'Antequera', '29250'),
(47, 'Antequera', '29260'),
(54, 'Antequera', '29314'),
(105, 'Antequera', '29540'),
(181, 'Árchez', '29753'),
(48, 'Archidona', '29300'),
(49, 'Archidona', '29309'),
(55, 'Archidona', '29314'),
(56, 'Archidona', '29315'),
(106, 'Ardales', '29550'),
(109, 'Ardales', '29552'),
(182, 'Arenas', '29753'),
(64, 'Arriate', '29350'),
(97, 'Atajate', '29494'),
(96, 'Benadalid', '29493'),
(140, 'Benahavís', '29679'),
(93, 'Benalauría', '29491'),
(131, 'Benalmádena', '29630'),
(132, 'Benalmádena', '29631'),
(133, 'Benalmádena', '29639'),
(161, 'Benamargosa', '29718'),
(165, 'Benamocarra', '29719'),
(66, 'Benaoján', '29370'),
(90, 'Benarrabá', '29490'),
(162, 'Borge', '29718'),
(76, 'Burgo', '29420'),
(58, 'Campillos', '29320'),
(63, 'Cañete la Real', '29340'),
(159, 'Canillas de Aceituno', '29716'),
(166, 'Canillas de Aceituno', '29719'),
(185, 'Canillas de Albaida', '29755'),
(107, 'Carratraca', '29551'),
(82, 'Cartajima', '29452'),
(10, 'Cártama', '29010'),
(114, 'Cártama', '29569'),
(116, 'Cártama', '29570'),
(117, 'Cártama', '29580'),
(120, 'Cártama', '29592'),
(28, 'Casabermeja', '29160'),
(111, 'Casarabonela', '29566'),
(145, 'Casares', '29690'),
(147, 'Casares', '29692'),
(20, 'Coín', '29100'),
(29, 'Colmenar', '29170'),
(36, 'Comares', '29195'),
(184, 'Cómpeta', '29754'),
(67, 'Cortes de la Frontera', '29380'),
(68, 'Cortes de la Frontera', '29391'),
(91, 'Cortes de la Frontera', '29490'),
(42, 'Cuevas Bajas', '29220'),
(41, 'Cuevas de San Marcos', '29210'),
(86, 'Cuevas del Becerro', '29470'),
(163, 'Cútar', '29718'),
(142, 'Estepona', '29680'),
(143, 'Estepona', '29688'),
(144, 'Estepona', '29689'),
(149, 'Estepona', '29693'),
(150, 'Estepona', '29698'),
(84, 'Faraján', '29461'),
(190, 'Frigiliana', '29788'),
(191, 'Frigiliana', '29789'),
(134, 'Fuengirola', '29640'),
(100, 'Fuente de Piedra', '29520'),
(71, 'Gaucín', '29400'),
(89, 'Gaucín', '29480'),
(94, 'Genalguacil', '29492'),
(21, 'Guaro', '29108'),
(102, 'Humilladero', '29531'),
(104, 'Humilladero', '29533'),
(79, 'Igualeja', '29440'),
(127, 'Istán', '29611'),
(194, 'Iznate', '29792'),
(69, 'Jimera de Líbar', '29392'),
(95, 'Jubrique', '29492'),
(85, 'Júzcar', '29462'),
(193, 'Macharaviaya', '29791'),
(2, 'Málaga', '29002'),
(3, 'Málaga', '29003'),
(4, 'Málaga', '29004'),
(5, 'Málaga', '29005'),
(6, 'Málaga', '29006'),
(7, 'Málaga', '29007'),
(8, 'Málaga', '29008'),
(9, 'Málaga', '29009'),
(11, 'Málaga', '29010'),
(12, 'Málaga', '29011'),
(13, 'Málaga', '29012'),
(14, 'Málaga', '29013'),
(15, 'Málaga', '29014'),
(16, 'Málaga', '29015'),
(17, 'Málaga', '29016'),
(18, 'Málaga', '29017'),
(19, 'Málaga', '29018'),
(26, 'Málaga', '29140'),
(31, 'Málaga', '29190'),
(32, 'Málaga', '29191'),
(33, 'Málaga', '29193'),
(37, 'Málaga', '29196'),
(38, 'Málaga', '29197'),
(87, 'Málaga', '29470'),
(118, 'Málaga', '29590'),
(119, 'Málaga', '29591'),
(129, 'Málaga', '29620'),
(170, 'Málaga', '29720'),
(146, 'Manilva', '29691'),
(148, 'Manilva', '29692'),
(122, 'Marbella', '29601'),
(123, 'Marbella', '29602'),
(124, 'Marbella', '29603'),
(125, 'Marbella', '29604'),
(138, 'Marbella', '29660'),
(139, 'Marbella', '29670'),
(141, 'Marbella', '29679'),
(135, 'Mijas', '29649'),
(136, 'Mijas', '29650'),
(137, 'Mijas', '29651'),
(173, 'Moclinejo', '29738'),
(103, 'Mollina', '29532'),
(23, 'Monda', '29110'),
(73, 'Montecorto', '29400'),
(78, 'Montecorto', '29430'),
(65, 'Montejaque', '29360'),
(188, 'Nerja', '29780'),
(189, 'Nerja', '29787'),
(126, 'Ojén', '29610'),
(128, 'Ojén', '29612'),
(81, 'Parauta', '29451'),
(152, 'Periana', '29710'),
(110, 'Pizarra', '29560'),
(113, 'Pizarra', '29568'),
(115, 'Pizarra', '29569'),
(80, 'Pujerra', '29450'),
(171, 'Rincón de la Victoria', '29720'),
(172, 'Rincón de la Victoria', '29730'),
(174, 'Rincón de la Victoria', '29738'),
(30, 'Riogordo', '29180'),
(70, 'Ronda', '29394'),
(72, 'Ronda', '29400'),
(77, 'Ronda', '29430'),
(157, 'Salares', '29714'),
(180, 'Sayalonga', '29752'),
(183, 'Sayalonga', '29753'),
(158, 'Sedella', '29715'),
(167, 'Sedella', '29719'),
(74, 'Serrato', '29400'),
(88, 'Serrato', '29471'),
(60, 'Sierra de Yeguas', '29328'),
(61, 'Sierra de Yeguas', '29329'),
(59, 'Teba', '29327'),
(22, 'Tolox', '29109'),
(130, 'Torremolinos', '29620'),
(187, 'Torrox', '29770'),
(196, 'Torrox', '29793'),
(197, 'Torrox', '29796'),
(39, 'Totalán', '29197'),
(45, 'Valle de Abdalajís', '29240'),
(151, 'Vélez-Málaga', '29700'),
(164, 'Vélez-Málaga', '29718'),
(168, 'Vélez-Málaga', '29719'),
(175, 'Vélez-Málaga', '29740'),
(176, 'Vélez-Málaga', '29749'),
(178, 'Vélez-Málaga', '29750'),
(179, 'Vélez-Málaga', '29751'),
(186, 'Vélez-Málaga', '29760'),
(192, 'Vélez-Málaga', '29790'),
(195, 'Vélez-Málaga', '29792'),
(50, 'Villanueva de Algaidas', '29310'),
(51, 'Villanueva de Algaidas', '29311'),
(44, 'Villanueva de la Concepción', '29230'),
(57, 'Villanueva de Tapia', '29315'),
(52, 'Villanueva del Rosario', '29312'),
(53, 'Villanueva del Trabuco', '29313'),
(154, 'Viñuela', '29712'),
(156, 'Viñuela', '29713'),
(169, 'Viñuela', '29719'),
(75, 'Yunquera', '29410');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `time_inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `confirmation_code` varchar(255) NOT NULL,
  `time_confirmed` timestamp NULL DEFAULT NULL,
  `contact_email` varchar(128) NOT NULL,
  `contact_phone` varchar(128) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `delivery_city_id` int(11) DEFAULT NULL,
  `delivery_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `delivery_time_planned` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delivery_time_actual` timestamp NULL DEFAULT NULL,
  `notes` text,
  `placed_order_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `delivery_status`
--

CREATE TABLE `delivery_status` (
  `id` int(11) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `status_catalog_id` int(11) NOT NULL,
  `status_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `details` text CHARACTER SET latin1 COLLATE latin1_spanish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `employee_code` varchar(32) NOT NULL,
  `employe_password` varchar(255) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `item_photo` text,
  `description` text,
  `unit_id` int(11) NOT NULL,
  `tags` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item_in_box`
--

CREATE TABLE `item_in_box` (
  `id` int(11) NOT NULL,
  `box_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qunatity` decimal(10,3) NOT NULL,
  `is_replacement` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `placed_order_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `note_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `note_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `placed_order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` decimal(10,3) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `placed_order_id` int(11) NOT NULL,
  `status_catalog_id` int(11) NOT NULL,
  `status_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `details` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `placed_order`
--

CREATE TABLE `placed_order` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `time_placed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `details` text,
  `delivery_city_id` int(11) NOT NULL,
  `delivery_address` varchar(255) NOT NULL,
  `grade_customer` int(11) DEFAULT NULL,
  `grade_employee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_catalog`
--

CREATE TABLE `status_catalog` (
  `id` int(11) NOT NULL,
  `status_name` varchar(128) NOT NULL,
  `type` enum('order','delivery') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unit`
--

CREATE TABLE `unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(64) NOT NULL,
  `unit_short` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unit`
--

INSERT INTO `unit` (`id`, `unit_name`, `unit_short`) VALUES
(1, 'Kilogramo', 'kg'),
(2, 'Unidad', 'U'),
(3, 'Caja', 'Cj'),
(4, 'Tarro', 'Tr');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `box`
--
ALTER TABLE `box`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `box_ak_1` (`box_code`),
  ADD KEY `box_delivery` (`delivery_id`),
  ADD KEY `box_employee` (`employee_id`);

--
-- Indices de la tabla `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `city_ak_1` (`city_name`,`postal_code`);

--
-- Indices de la tabla `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_ak_1` (`user_name`),
  ADD KEY `customer_city_1` (`city_id`),
  ADD KEY `customer_city_2` (`delivery_city_id`);

--
-- Indices de la tabla `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_employee` (`employee_id`),
  ADD KEY `delivery_placed_order` (`placed_order_id`);

--
-- Indices de la tabla `delivery_status`
--
ALTER TABLE `delivery_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_delivery_status_status_catalog` (`status_catalog_id`),
  ADD KEY `fk_delivery_status_delivery` (`delivery_id`);

--
-- Indices de la tabla `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_ak_1` (`employee_code`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_ak_1` (`item_name`),
  ADD KEY `item_unit` (`unit_id`);

--
-- Indices de la tabla `item_in_box`
--
ALTER TABLE `item_in_box`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_in_box_box` (`box_id`),
  ADD KEY `item_in_box_item` (`item_id`);

--
-- Indices de la tabla `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_customer` (`customer_id`),
  ADD KEY `notes_employee` (`employee_id`),
  ADD KEY `notes_placed_order` (`placed_order_id`);

--
-- Indices de la tabla `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_item_item` (`item_id`),
  ADD KEY `order_item_placed_order` (`placed_order_id`);

--
-- Indices de la tabla `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_status_placed_order` (`placed_order_id`),
  ADD KEY `order_status_status_catalog` (`status_catalog_id`);

--
-- Indices de la tabla `placed_order`
--
ALTER TABLE `placed_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `placed_order_city` (`delivery_city_id`),
  ADD KEY `placed_order_customer` (`customer_id`);

--
-- Indices de la tabla `status_catalog`
--
ALTER TABLE `status_catalog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_catalog_ak_1` (`status_name`);

--
-- Indices de la tabla `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unit_ak_1` (`unit_name`),
  ADD UNIQUE KEY `unit_ak_2` (`unit_short`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `box`
--
ALTER TABLE `box`
  ADD CONSTRAINT `box_delivery` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`id`),
  ADD CONSTRAINT `box_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`);

--
-- Filtros para la tabla `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_city_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `customer_city_2` FOREIGN KEY (`delivery_city_id`) REFERENCES `city` (`id`);

--
-- Filtros para la tabla `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `delivery_placed_order` FOREIGN KEY (`placed_order_id`) REFERENCES `placed_order` (`id`);

--
-- Filtros para la tabla `delivery_status`
--
ALTER TABLE `delivery_status`
  ADD CONSTRAINT `fk_delivery_status_delivery` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`id`),
  ADD CONSTRAINT `fk_delivery_status_status_catalog` FOREIGN KEY (`status_catalog_id`) REFERENCES `status_catalog` (`id`);

--
-- Filtros para la tabla `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_unit` FOREIGN KEY (`unit_id`) REFERENCES `unit` (`id`);

--
-- Filtros para la tabla `item_in_box`
--
ALTER TABLE `item_in_box`
  ADD CONSTRAINT `item_in_box_box` FOREIGN KEY (`box_id`) REFERENCES `box` (`id`),
  ADD CONSTRAINT `item_in_box_item` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`);

--
-- Filtros para la tabla `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `notes_employee` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `notes_placed_order` FOREIGN KEY (`placed_order_id`) REFERENCES `placed_order` (`id`);

--
-- Filtros para la tabla `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `order_item_item` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `order_item_placed_order` FOREIGN KEY (`placed_order_id`) REFERENCES `placed_order` (`id`);

--
-- Filtros para la tabla `order_status`
--
ALTER TABLE `order_status`
  ADD CONSTRAINT `order_status_placed_order` FOREIGN KEY (`placed_order_id`) REFERENCES `placed_order` (`id`),
  ADD CONSTRAINT `order_status_status_catalog` FOREIGN KEY (`status_catalog_id`) REFERENCES `status_catalog` (`id`);

--
-- Filtros para la tabla `placed_order`
--
ALTER TABLE `placed_order`
  ADD CONSTRAINT `placed_order_city` FOREIGN KEY (`delivery_city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `placed_order_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
