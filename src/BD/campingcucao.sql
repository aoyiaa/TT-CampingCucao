-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-09-2017 a las 04:51:06
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `campingcucao`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarriendo`
--

CREATE TABLE `tarriendo` (
  `idZona` tinyint(2) NOT NULL,
  `eZona` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `capZona` smallint(3) NOT NULL,
  `precioZona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tarriendo`
--

INSERT INTO `tarriendo` (`idZona`, `eZona`, `capZona`, `precioZona`) VALUES
(12, 'Disponible', 500, 15000),
(23, 'NO Disponible', 12, 0),
(32, 'Disponible', 200, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcaminata`
--

CREATE TABLE `tcaminata` (
  `cod_caminata` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tcliente`
--

CREATE TABLE `tcliente` (
  `idCliente` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `nomCliente` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fonoCliente` int(9) NOT NULL,
  `mailCliente` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tcliente`
--

INSERT INTO `tcliente` (`idCliente`, `nomCliente`, `fonoCliente`, `mailCliente`) VALUES
('1', '1', 1, '1'),
('123', 'ccc123', 213, 'ccc'),
('22', 'qwe', 123, '123'),
('4444', 'qwe', 123, '123'),
('5', '5', 5, '5'),
('5558', 'ju88', 123123, 'juah@tutu.com'),
('Cliente', 'Cliente', 123, '123'),
('Cliente1', 'Cliente3', 666, '123'),
('Cliente2', 'Cliente2', 123, '123'),
('Cliente8', 'Cliente8', 123, '123'),
('qwe', 'qwe', 123, 'qwe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tdetalle_solicitud`
--

CREATE TABLE `tdetalle_solicitud` (
  `cod_detalle_s` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tguia`
--

CREATE TABLE `tguia` (
  `cod_guia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thistorico`
--

CREATE TABLE `thistorico` (
  `cod_historico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tpago`
--

CREATE TABLE `tpago` (
  `idPago` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `idCliente` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `idZona` tinyint(2) NOT NULL,
  `totalPago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tpago`
--

INSERT INTO `tpago` (`idPago`, `idCliente`, `idZona`, `totalPago`) VALUES
('Cliente812', 'Cliente8', 12, 105000),
('qwe12', 'qwe', 12, 45000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tservicio`
--

CREATE TABLE `tservicio` (
  `cod_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tsolicitud`
--

CREATE TABLE `tsolicitud` (
  `cod_solicitud` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuario`
--

CREATE TABLE `tusuario` (
  `idUsuario` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `tipoUsuario` tinyint(1) NOT NULL,
  `nomUsuario` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `fonoUsuario` int(9) NOT NULL,
  `mailUsuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tusuario`
--

INSERT INTO `tusuario` (`idUsuario`, `pass`, `tipoUsuario`, `nomUsuario`, `fonoUsuario`, `mailUsuario`) VALUES
('1', '1', 1, '1', 1, '1'),
('test2', 'test1123', 2, 'test2', 9999999, 'test2@test2.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tarriendo`
--
ALTER TABLE `tarriendo`
  ADD PRIMARY KEY (`idZona`);

--
-- Indices de la tabla `tcaminata`
--
ALTER TABLE `tcaminata`
  ADD PRIMARY KEY (`cod_caminata`);

--
-- Indices de la tabla `tcliente`
--
ALTER TABLE `tcliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `tdetalle_solicitud`
--
ALTER TABLE `tdetalle_solicitud`
  ADD PRIMARY KEY (`cod_detalle_s`);

--
-- Indices de la tabla `tguia`
--
ALTER TABLE `tguia`
  ADD PRIMARY KEY (`cod_guia`);

--
-- Indices de la tabla `thistorico`
--
ALTER TABLE `thistorico`
  ADD PRIMARY KEY (`cod_historico`);

--
-- Indices de la tabla `tpago`
--
ALTER TABLE `tpago`
  ADD PRIMARY KEY (`idPago`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `idZona` (`idZona`);

--
-- Indices de la tabla `tservicio`
--
ALTER TABLE `tservicio`
  ADD PRIMARY KEY (`cod_servicio`);

--
-- Indices de la tabla `tsolicitud`
--
ALTER TABLE `tsolicitud`
  ADD PRIMARY KEY (`cod_solicitud`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `tusuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tpago`
--
ALTER TABLE `tpago`
  ADD CONSTRAINT `tpago_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `tcliente` (`idCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tpago_ibfk_2` FOREIGN KEY (`idZona`) REFERENCES `tarriendo` (`idZona`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
