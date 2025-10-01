-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2025 a las 06:01:16
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemadebanco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Docidcli` int(10) NOT NULL,
  `NumCli` int(15) NOT NULL,
  `ApeCli` varchar(50) NOT NULL,
  `CiuCli` varchar(50) NOT NULL,
  `CeluCli` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Docidcli`, `NumCli`, `ApeCli`, `CiuCli`, `CeluCli`) VALUES
(1238, 1236, 'Simona', 'Juarez', 656554667),
(11222, 3432, 'Simon', 'Juarez', 656554477);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `NumCta` int(10) NOT NULL,
  `SaldoCta` int(15) NOT NULL,
  `Docidcli01` int(15) NOT NULL,
  `Dircli` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`NumCta`, `SaldoCta`, `Docidcli01`, `Dircli`) VALUES
(657, 56, 11222, 'Calle Cero'),
(890, 898, 1238, 'Juarez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Docidcli`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`NumCta`),
  ADD KEY `Docidcli01` (`Docidcli01`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD CONSTRAINT `cuentas_ibfk_1` FOREIGN KEY (`Docidcli01`) REFERENCES `clientes` (`Docidcli`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
