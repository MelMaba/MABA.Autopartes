-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2020 a las 02:12:47
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idcategoria` int(11) NOT NULL,
  `descripción` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idcliente` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fechaalta` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mensaje` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `id` int(12) NOT NULL,
  `ClaveTransaccion` varchar(255) NOT NULL,
  `PaypalDatos` text NOT NULL,
  `Fecha` datetime NOT NULL,
  `recibe` varchar(200) NOT NULL,
  `calle` varchar(100) NOT NULL,
  `colonia` varchar(100) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `municipio` varchar(50) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `telefono` int(20) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Total` decimal(12,2) NOT NULL,
  `Status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `recibe`, `calle`, `colonia`, `estado`, `municipio`, `cp`, `telefono`, `Correo`, `Total`, `Status`) VALUES
(1, '12345678910', '', '2020-11-17 14:56:43', '', '', '', '', '', '', 0, 'micorreo@gamil.com', '700.00', 'Pendiente'),
(2, '12345678910', '', '2020-11-17 14:56:43', '', '', '', '', '', '', 0, 'micorreo@gamil.com', '700.00', 'Pendiente'),
(3, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 15:20:24', '', '', '', '', '', '', 0, 'micorreo@gmail.com', '1734.35', 'Pendiente'),
(4, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 15:27:20', '', '', '', '', '', '', 0, 'lola@gtmail.com', '1305.35', 'Pendiente'),
(5, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:30:45', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '300.00', 'Pendiente'),
(6, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:31:27', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '300.00', 'Pendiente'),
(7, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:35:16', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '300.00', 'Pendiente'),
(8, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:35:28', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '300.00', 'Pendiente'),
(9, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:36:13', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '300.00', 'Pendiente'),
(10, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:37:12', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '300.00', 'Pendiente'),
(11, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:37:43', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '729.00', 'Pendiente'),
(12, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:39:01', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '729.00', 'Pendiente'),
(13, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:40:18', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '729.00', 'Pendiente'),
(14, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:40:34', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '729.00', 'Pendiente'),
(15, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:40:39', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '729.00', 'Pendiente'),
(16, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:44:37', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '729.00', 'Pendiente'),
(17, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:46:04', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '729.00', 'Pendiente'),
(18, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:46:55', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '729.00', 'Pendiente'),
(19, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:48:18', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '1434.35', 'Pendiente'),
(20, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:52:37', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '1734.35', 'Pendiente'),
(21, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:55:01', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '1734.35', 'Pendiente'),
(22, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:56:43', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '1734.35', 'Pendiente'),
(23, 'js6nkbrs34pcejt175mhceefk5', '', '2020-11-28 17:57:41', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '1734.35', 'Pendiente'),
(24, '5vfjrpn0dbcidm1os5052mdesj', '', '2020-11-28 17:58:54', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '1734.35', 'Pendiente'),
(25, '5vfjrpn0dbcidm1os5052mdesj', '', '2020-11-28 18:00:11', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '1734.35', 'Pendiente'),
(26, '5vfjrpn0dbcidm1os5052mdesj', '', '2020-11-28 18:17:29', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '1734.35', 'Pendiente'),
(27, '5vfjrpn0dbcidm1os5052mdesj', '', '2020-11-28 18:18:08', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '1734.35', 'Pendiente'),
(28, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 18:19:43', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '1734.35', 'Pendiente'),
(29, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 18:34:19', '', '', '', '', '', '', 0, 'lola@gtmail.com', '1734.35', 'Pendiente'),
(30, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 18:35:29', '', '', '', '', '', '', 0, 'lola@gtmail.com', '1734.35', 'Pendiente'),
(31, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 18:35:49', '', '', '', '', '', '', 0, 'lola@gtmail.com', '1734.35', 'Pendiente'),
(32, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 18:39:01', '', '', '', '', '', '', 0, 'lola@gtmail.com', '1734.35', 'Pendiente'),
(33, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 18:39:12', '', '', '', '', '', '', 0, 'lola@gtmail.com', '1734.35', 'Pendiente'),
(34, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 18:39:40', '', '', '', '', '', '', 0, 'lola@gtmail.com', '1734.35', 'Pendiente'),
(35, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 18:45:29', '', '', '', '', '', '', 0, 'lola@gtmail.com', '1734.35', 'Pendiente'),
(36, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 19:31:36', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '1734.35', 'Pendiente'),
(37, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 22:12:41', '', '', '', '', '', '', 0, 'simatulancingo@outlook.com', '1734.35', 'Pendiente'),
(38, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 22:14:52', '', '', '', '', '', '', 0, 'simatulancingo@outlook.com', '1734.35', 'Pendiente'),
(39, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 22:23:40', '', '', '', '', '', '', 0, 'lola@gtmail.com', '1734.35', 'Pendiente'),
(40, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 22:31:03', '', '', '', '', '', '', 0, 'lola@gtmail.com', '1734.35', 'Pendiente'),
(41, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 22:31:37', '', '', '', '', '', '', 0, 'lola@gtmail.com', '1734.35', 'Pendiente'),
(42, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 22:32:03', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '1734.35', 'Pendiente'),
(43, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 22:44:11', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '1734.35', 'Pendiente'),
(44, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 22:44:43', '', '', '', '', '', '', 0, 'simatulan@gmail.com', '1734.35', 'Pendiente'),
(45, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 22:46:38', '', '', '', '', '', '', 0, 'lola@gtmail.com', '1305.35', 'Pendiente'),
(46, 'oc0et85vb0kiusnqv38ohrlsgq', '', '2020-11-28 22:57:27', '', '', '', '', '', '', 0, 'lola@gtmail.com', '300.00', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidodetalle`
--

CREATE TABLE `pedidodetalle` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIOUNITARIO` decimal(12,2) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `DESCARGADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidodetalle`
--

INSERT INTO `pedidodetalle` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) VALUES
(1, 27, 1, '300.00', 1, 0),
(2, 1, 2, '429.00', 1, 0),
(3, 2, 3, '1005.35', 1, 0),
(4, 28, 1, '300.00', 1, 0),
(5, 4, 2, '429.00', 1, 0),
(6, 5, 3, '1005.35', 1, 0),
(7, 29, 1, '300.00', 1, 0),
(8, 7, 2, '429.00', 1, 0),
(9, 8, 3, '1005.35', 1, 0),
(10, 30, 1, '300.00', 1, 0),
(11, 10, 2, '429.00', 1, 0),
(12, 11, 3, '1005.35', 1, 0),
(13, 31, 1, '300.00', 1, 0),
(14, 13, 2, '429.00', 1, 0),
(15, 14, 3, '1005.35', 1, 0),
(16, 32, 1, '300.00', 1, 0),
(17, 16, 2, '429.00', 1, 0),
(18, 17, 3, '1005.35', 1, 0),
(19, 33, 1, '300.00', 1, 0),
(20, 19, 2, '429.00', 1, 0),
(21, 20, 3, '1005.35', 1, 0),
(22, 34, 1, '300.00', 1, 0),
(23, 22, 2, '429.00', 1, 0),
(24, 23, 3, '1005.35', 1, 0),
(25, 35, 1, '300.00', 1, 0),
(26, 25, 2, '429.00', 1, 0),
(27, 26, 3, '1005.35', 1, 0),
(28, 36, 1, '300.00', 1, 0),
(29, 28, 2, '429.00', 1, 0),
(30, 29, 3, '1005.35', 1, 0),
(31, 37, 1, '300.00', 1, 0),
(32, 31, 2, '429.00', 1, 0),
(33, 32, 3, '1005.35', 1, 0),
(34, 38, 1, '300.00', 1, 0),
(35, 34, 2, '429.00', 1, 0),
(36, 35, 3, '1005.35', 1, 0),
(37, 39, 1, '300.00', 1, 0),
(38, 37, 2, '429.00', 1, 0),
(39, 38, 3, '1005.35', 1, 0),
(46, 40, 1, '300.00', 1, 0),
(49, 41, 1, '300.00', 1, 0),
(52, 42, 1, '300.00', 1, 0),
(55, 43, 1, '300.00', 1, 0),
(58, 44, 1, '300.00', 1, 0),
(61, 45, 1, '300.00', 1, 0),
(63, 46, 1, '300.00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `idproducto` int(11) NOT NULL,
  `descripción` varchar(255) NOT NULL,
  `precio` float NOT NULL,
  `urlimagen` varchar(100) NOT NULL,
  `idcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`idproducto`, `descripción`, `precio`, `urlimagen`, `idcategoria`) VALUES
(1, 'Llanta todo terreno', 1230, 'Imagenes/Llanta.1.jpg', 3),
(2, 'Llanta deportiva', 1200, 'Imagen/LlantaDeportiva.jpg', 3),
(3, 'Llanta todo terreno', 1230, 'Imagenes/Llanta.1.jpg', 3),
(4, 'Llanta deportiva', 1200, 'Imagen/LlantaDeportiva.jpg', 3),
(5, 'Llanta Heavy Duty', 1500, 'Imagen/LlantaHeavy.jpg', 3),
(6, 'Llanta para invierno', 1330, 'Imagen/LlantaInvierno.jpg', 3),
(7, 'Llanta para carretera', 1450, 'Imagen/LlantaRoad.jpg', 3),
(8, 'Llanta Reforzada', 1650, 'Imagen/Llanta.png', 0),
(9, 'Llanta para carretera', 1450, 'Imagen/LlantaRoad.jpg', 3),
(10, 'Llanta Reforzada', 1650, 'Imagen/Llanta.png', 3),
(11, 'Motor nuevo', 16300, 'Motor.jpg', 1),
(12, 'Luces para niebla', 584, 'Imagen/Lucesparaniebla.jpg', 2),
(13, 'Lubricantes', 125, 'Imagenes/Lubricantes.jpg', 6),
(14, 'Frenos deportivos', 950, 'Imagenes/FrenosDeportivos.jpg', 4),
(15, 'Limpiadores', 582, 'Imagenes/Limpiadores.jpg', 6),
(16, 'Limpiadores 22´', 648, 'Imagenes/Limpiadores2.jpg', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl`
--

CREATE TABLE `tbl` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl`
--

INSERT INTO `tbl` (`id`, `Nombre`, `Precio`, `Descripcion`, `Imagen`) VALUES
(1, 'Llanta todo terreno', '1300.00', 'Marca:\r\nModelo:\r\nTamaño:\r\n', 'Imagenes/Llanta.1.jpg\r\n'),
(2, 'Llanta Deportiva', '2429.00', 'Marca:\r\nModelo:\r\nTamaño:\r\n', 'Imagenes/Llanta.png\r\n'),
(3, 'Llanta Heavy Duty', '1205.35', 'Marca:\r\nModelo:\r\nTamaño:\r\n', '\r\nImagenes/LlantaDeportiva.jpg'),
(4, 'Llanta para invierno', '2266.00', 'Marca:\r\nModelo:\r\nTamaño:\r\n', 'Imagenes/LlantaInvierno.jpg'),
(5, 'Llanta para carretera', '1450.00', 'Marca:\r\nModelo:\r\nTamaño:\r\n', 'Imagenes/LlantaRoad.jpg'),
(6, 'Llanta Reforzada', '1650.00', 'Marca:\r\nModelo:\r\nTamaño:\r\n', 'Imagenes/Llanta.png'),
(7, 'Motor nuevo', '16320.00', 'Marca:\r\nModelo:\r\nTamaño:\r\n', 'Imagenes/Motor.jpg'),
(8, 'Luces para niebla', '429.00', 'Marca:\r\nModelo:\r\nTamaño:\r\n', 'Imagenes/Lucesparaniebla.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidodetalle`
--
ALTER TABLE `pedidodetalle`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDVENTA` (`IDVENTA`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `tbl`
--
ALTER TABLE `tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `pedidodetalle`
--
ALTER TABLE `pedidodetalle`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tbl`
--
ALTER TABLE `tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidodetalle`
--
ALTER TABLE `pedidodetalle`
  ADD CONSTRAINT `pedidodetalle_ibfk_1` FOREIGN KEY (`IDVENTA`) REFERENCES `pedido` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedidodetalle_ibfk_2` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `tbl` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
