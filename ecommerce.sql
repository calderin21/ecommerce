-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-09-2023 a las 09:53:04
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(5) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `clave` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `dni` varchar(9) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `email`, `clave`, `dni`, `direccion`) VALUES
(20, '123', 'Lantigua', 'lantigua21@gmail.com', '202cb962ac59075b964b07152d234b70', '43666275Q', 'La Gloria'),
(21, 'La Gloria', 'Lantigua Calderín', 'lantigua21@gmail.com', 'ef20c44fb65029e42b45891f1877bd78', '43666275', 'Avn. de La Gloria 9'),
(23, 'Constantino', 'Lantigua Calderín', 'lantigua21@gmail.c', '30cd2f99101cdd52cc5fda1e996ee137', '43666275Q', 'Lanzarote'),
(26, 'Migdala', 'García Vera', 'Migdi@gmail.com', '7363a0d0604902af7b70b271a0b96480', '43666275', 'AVn. LaGloria nº 9  ingenio -35250'),
(28, 'perico', 'García Vera', 'pepa@gmail.com', '202cb962ac59075b964b07152d234b70', '43666275Q', 'AVn. LaGloria nº 9  ingenio -35250');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `mensaje` varchar(1000) NOT NULL DEFAULT '0',
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `fecha`) VALUES
(2, 'Constantino Lantigua', 'lantigua21@gmail.com', 'Esto el cuerpo del  mensaje.\r\nEsto el cuerpo del  mensaje.\r\nEsto el cuerpo del  mensaje.\r\nEsto el cuerpo del  mensaje.\r\nEsto el cuerpo del  mensaje.\r\nEsto el cuerpo del  mensaje.\r\nEsto el cuerpo del  mensaje.', '2022-10-13'),
(4, 'Constantino Lantigua CalderÃ­n', 'lantigua21@gmail.com', 'modulo=crearcontacto', '2022-10-14'),
(9, 'René', 'rene@gmail.com', 'Cuerpo del mensaje', '2022-10-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleventas`
--

CREATE TABLE `detalleventas` (
  `id` int(5) NOT NULL,
  `idproducto` int(5) DEFAULT NULL,
  `idventa` int(5) DEFAULT NULL,
  `cantridad` int(5) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int(5) NOT NULL,
  `idProducto` int(5) NOT NULL,
  `nombre` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `idProducto`, `nombre`) VALUES
(57, 106, '3e3f92fb95.webp'),
(58, 107, '15fd860e69.jpg'),
(59, 108, '459dad9658.jpg'),
(60, 109, 'beef5c3be8.jpg'),
(118, 113, '501d5e7190.jpg'),
(119, 113, 'd16fa34ee2.jpg'),
(121, 108, 'b6bee140e2.jpg'),
(122, 108, '5700f094bc.jpg'),
(124, 105, 'b284818cea.jpeg'),
(125, 105, '29dfe4475c.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(5) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `existencias` int(5) DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `existencias`, `imagen`) VALUES
(105, 'PAPAS FRITAS  pq.', 'Bolsa de papas fritas de marca blanca', 1.33, 40, '29dfe4475c.jpeg'),
(106, 'Pepsi Cola', 'Lata 33 cc', 1, 50, '3e3f92fb95.webp'),
(107, 'Pañales Lala', '24 ud.', 30, 25, '15fd860e69.jpg'),
(108, 'TV Sansung', '75 pulgadas', 300, 3, '5700f094bc.jpg'),
(109, 'Pañales Lala', 'Caja Maxi', 75, 10, 'beef5c3be8.jpg'),
(113, 'Lavadora', '5 kg  carga superior', 300, 5, '501d5e7190.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(5) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'empleado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `clave`, `tipo`) VALUES
(3, 'Sara', 'lantiguasara@gmail.com', '7363a0d0604902af7b70b271a0b96480', 'administrador'),
(4, 'René', 'rene@gmail.com', '202cb962ac59075b964b07152d234b70', 'administrador'),
(5, 'lantigua21', 'lantigua21@gmail.com', '202cb962ac59075b964b07152d234b70', 'administrador'),
(11, '123', 'jose21@gmail.com', '2e99bf4e42962410038bc6fa4ce40d97', 'empleado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios3`
--

CREATE TABLE `usuarios3` (
  `id` int(5) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `tipo` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'empleado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios3`
--

INSERT INTO `usuarios3` (`id`, `nombre`, `email`, `clave`, `tipo`) VALUES
(4, 'Sara', 'Saralane@gmail.com', '7363a0d0604902af7b70b271a0b96480', 'empleado'),
(7, 'J . René', 'rene@gmail.com', '202cb962ac59075b964b07152d234b70', 'administrador'),
(17, 'Constantino Lantigua', 'lantigua21@gmail.com', '202cb962ac59075b964b07152d234b70', 'administrador'),
(19, 'lantigua21@gmail.com', 'A3-DOCENTE@gmail.com', '202cb962ac59075b964b07152d234b70', 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(5) NOT NULL,
  `idcliente` int(5) NOT NULL,
  `fecha` datetime NOT NULL,
  `codoperacion` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT 'Codigo_operacion',
  `total` float NOT NULL,
  `formadepago` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `idcliente`, `fecha`, `codoperacion`, `total`, `formadepago`) VALUES
(38, 20, '2022-11-01 09:47:49', '8132944', 2.66, 'transferencia'),
(39, 20, '2023-09-06 10:45:35', '2727441', 3.99, 'transferencia'),
(40, 20, '2023-09-06 10:46:43', '2727441', 3.99, 'transferencia'),
(41, 20, '2023-09-06 10:47:12', '7393186', 7.98, 'transferencia'),
(43, 20, '2023-09-07 17:35:26', '6659795', 910, 'tarjeta'),
(45, 20, '2023-09-17 09:49:12', '3398897', 90, 'tarjeta'),
(46, 20, '2023-09-17 09:51:07', '3420465', 1019.95, 'tarjeta');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_producto` (`idproducto`),
  ADD KEY `detalle1_ventas` (`idventa`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `limpieza` (`idProducto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `usuarios3`
--
ALTER TABLE `usuarios3`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_clientes` (`idcliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios3`
--
ALTER TABLE `usuarios3`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalleventas`
--
ALTER TABLE `detalleventas`
  ADD CONSTRAINT `detalle1_ventas` FOREIGN KEY (`idventa`) REFERENCES `ventas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_producto` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `limpieza` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_clientes` FOREIGN KEY (`idcliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
