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
-- Estructura de tabla para la tabla guia`
--

CREATE TABLE `guia` (
  `rut_guia` varchar(9) NOT NULL,
  `nombre_guia` varchar(20) NOT NULL,
  `edad_guia` tinyint(2) NOT NULL,
  `fono_guia` int(9) NOT NULL,
  `anno_exp` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
--
-- Volcado de datos para la tabla `guia`
--

INSERT INTO `guia` (`rut_guia`, `nombre_guia`, `edad_guia`, `fono_guia`,`anno_exp`) VALUES
('123456789', 'guia', 99, 565656565, 3);
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `cod_servicio` tinyint(1) NOT NULL,
--  `cod_arriendo` tinyint(2) NOT NULL,
  `estado_zona` tinyint(1) NOT NULL,
  `capacidad_zona` smallint(3) NOT NULL,
  `precio_zona` int(11) NOT NULL,
--  `cod_caminata` varchar(6) NOT NULL,
  `nombre_destino` varchar(20) NOT NULL,
  `descripcion_destino` varchar(255) NOT NULL,
  `valoracion_destino` tinyint(2) NOT NULL,
  `precio_caminata` int(7) NOT NULL,
  `fecha_caminata` date NOT NULL
--  `rut_guia` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
--
-- Volcado de datos para la tabla `servicio`
--

INSERT INTO `servicio` (`cod_servicio`, `estado_zona`, `capacidad_zona`, `precio_zona`,`nombre_destino`,`descripcion_destino`,`valoracion_destino`,`precio_caminata`,`fecha_caminata`) VALUES
(1, 1,13, 9999,'destino','descripcion destino',5,8888,'12/12/2017');

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` varchar(15) NOT NULL,
  `nombre_cliente` varchar(20) NOT NULL,
  `fono_cliente` int(9) NOT NULL,
  `dir_cliente` varchar(30) NOT NULL,
  `mail_cliente` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre_cliente`, `fono_cliente`, `dir_cliente`,`mail_cliente`) VALUES
('clienteid', '1', 1, '1','@');
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `cod_solicitud` smallint(4) NOT NULL,
  `id_cliente` varchar(15) NOT NULL,
  `fecha_solicitud` date NOT NULL,
  `tipo_solicitud` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`cod_solicitud`, `id_cliente`, `fecha_solicitud`, `tipo_solicitud`) VALUES
(1, 'clienteid', '12/12/2017', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_solicitud`
--

CREATE TABLE `detalle_solicitud` (
  `cod_detalle_s` varchar(6) NOT NULL,
  `cod_solicitud` smallint(4) NOT NULL,
  `cod_servicio` tinyint(1) NOT NULL,
  `rut_guia` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
--
-- Volcado de datos para la tabla `detalle_solicitud`
--

INSERT INTO `detalle_solicitud` (`cod_detalle_s`, `cod_solicitud`, `cod_servicio`,`rut_guia`) VALUES
('coddet', 1, 1,'123456789');


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `cod_pago` varchar(10) NOT NULL,
  `cod_detalle_s` varchar(6) NOT NULL,
  `id_cliente` varchar(15) NOT NULL,
  `total_Pago` int(11) NOT NULL,
  `fecha_cobro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`cod_pago`, `cod_detalle_s`, `id_cliente`, `total_Pago`,`fecha_cobro`) VALUES
('codpago', 'coddet', 'clienteid', 105000,'12/12/2017');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico`
--

CREATE TABLE `historico` (
  `cod_historico` int(4) NOT NULL,
  `cod_pago` varchar(10) NOT NULL,
  `id_cliente_h` varchar(15) NOT NULL,
  `nombre_cliente_h` varchar(20) NOT NULL,
  `total_Pago_h` int(11) NOT NULL,
  `fecha_entrada` date NOT NULL,
  `fecha_salida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci; -- ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
--
-- Volcado de datos para la tabla `historico`
--

INSERT INTO `historico` (`cod_historico`, `cod_pago`, `id_cliente_h`, `nombre_cliente_h`,`total_Pago_h`,`fecha_entrada`,`fecha_salida`) VALUES
(0001, 'codpago', '1234567989', 'clienteid',9999,'12/12/2017','12/12/2018');
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` varchar(15) NOT NULL,
  `password` varchar(8) NOT NULL,
  `tipo_usuario` tinyint(1) NOT NULL,
  `nombre_usuario` varchar(15) NOT NULL,
  `fono_usuario` int(9) NOT NULL,
  `mail_usuario` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `password`, `tipo_usuario`, `nombre_usuario`, `fono_usuario`, `mail_usuario`) VALUES
('test', 'test123', 1, 'test2', 9999999, 'test2@test2.tipo_usuario');

-- ----------------------------------------------------

-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_solicitud`
--
ALTER TABLE `detalle_solicitud`
  ADD PRIMARY KEY (`cod_detalle_s`);

--
-- Indices de la tabla `guia`
--
ALTER TABLE `guia`
  ADD PRIMARY KEY (`rut_guia`);

--
-- Indices de la tabla `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`cod_historico`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`cod_pago`);


-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`cod_servicio`);

--
-- Indices de la tabla `tsolicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`cod_solicitud`);

--
-- Indices de la tabla `tusuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `fk_pago_detalle` FOREIGN KEY (`cod_detalle_s`) REFERENCES `detalle_solicitud` (`cod_detalle_s`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pago_id_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- ----------------------------------
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `fk_solicitud_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- ----------------------------------
-- Filtros para la tabla `detalle_solicitud`
--
ALTER TABLE `detalle_solicitud`
  ADD CONSTRAINT `fk_detalle_solicitud_solicitud` FOREIGN KEY (`cod_solicitud`) REFERENCES `solicitud` (`cod_solicitud`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detalle_solicitud_servicio` FOREIGN KEY (`cod_servicio`) REFERENCES `servicio` (`cod_servicio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detalle_solicitud_guia` FOREIGN KEY (`rut_guia`) REFERENCES `guia` (`rut_guia`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- ----------------------------------
-- Filtros para la tabla `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `fk_historico_pago` FOREIGN KEY (`cod_pago`) REFERENCES `pago` (`cod_pago`) ON DELETE CASCADE ON UPDATE CASCADE;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
