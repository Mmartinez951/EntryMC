-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2022 a las 04:50:07
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `entry_mc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_usuarios`
--

CREATE TABLE `estados_usuarios` (
  `Id_Estado_Usuario` int(11) NOT NULL,
  `Nombre_Estado` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estados_usuarios`
--

INSERT INTO `estados_usuarios` (`Id_Estado_Usuario`, `Nombre_Estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_vehiculo`
--

CREATE TABLE `estados_vehiculo` (
  `Id_Estado_Vehiculo` int(11) NOT NULL,
  `Nombre_Estado` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estados_vehiculo`
--

INSERT INTO `estados_vehiculo` (`Id_Estado_Vehiculo`, `Nombre_Estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo'),
(3, 'Circulación'),
(4, 'Patios'),
(5, 'Mantenimiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_roles`
--

CREATE TABLE `estado_roles` (
  `Id_Estado_Rol` int(11) NOT NULL,
  `Nombre_Estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estado_roles`
--

INSERT INTO `estado_roles` (`Id_Estado_Rol`, `Nombre_Estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_trabajo`
--

CREATE TABLE `orden_trabajo` (
  `Id_Orden_Trabajo` int(11) NOT NULL,
  `Id_Vehiculo` int(11) NOT NULL,
  `Codigo_Vehiculo` varchar(10) NOT NULL,
  `Placa` varchar(6) NOT NULL,
  `Marca` varchar(10) DEFAULT NULL,
  `Modelo` int(4) DEFAULT NULL,
  `LLantas` varchar(25) DEFAULT NULL,
  `Ventanas` varchar(25) DEFAULT NULL,
  `Asignar` int(11) NOT NULL,
  `Luces` varchar(25) DEFAULT NULL,
  `Retrovisores` varchar(25) DEFAULT NULL,
  `Rayones` varchar(25) DEFAULT NULL,
  `Estado_Vehiculo` int(11) NOT NULL,
  `Observaciones` varchar(250) NOT NULL,
  `Fecha_Orden_Trabajo` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `Id_Permiso` int(11) NOT NULL,
  `Nombre_Permiso` varchar(50) NOT NULL,
  `Rol_Permiso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`Id_Permiso`, `Nombre_Permiso`, `Rol_Permiso`) VALUES
(1, 'FULL', 1),
(2, 'GENERAL', 2),
(3, 'RESTRINGIDO', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_entrada`
--

CREATE TABLE `registro_entrada` (
  `Id_Registro_Entrada` int(11) NOT NULL,
  `Id_Vehiculo` int(11) NOT NULL,
  `Codigo` varchar(10) NOT NULL,
  `Placa` varchar(6) NOT NULL,
  `Marca` varchar(10) DEFAULT NULL,
  `Modelo` int(4) DEFAULT NULL,
  `Estado_Vehiculo` int(11) NOT NULL,
  `Observaciones` varchar(350) NOT NULL,
  `Fecha_Registro_Entrada` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro_entrada`
--

INSERT INTO `registro_entrada` (`Id_Registro_Entrada`, `Id_Vehiculo`, `Codigo`, `Placa`, `Marca`, `Modelo`, `Estado_Vehiculo`, `Observaciones`, `Fecha_Registro_Entrada`) VALUES
(1, 1, 'MC001', 'KUM011', 'CHEVROLET', 2021, 3, 'OK', '2022-05-27'),
(2, 2, 'MC002', 'KUM012', 'CHEVROLET', 2021, 5, 'Problemas Técnicos', '2022-05-27'),
(3, 3, 'MC003', 'KUM013', 'CHEVROLET', 2020, 2, 'OK', '2022-05-27'),
(4, 4, 'MC004', 'KUM014', 'CHEVROLET', 2022, 2, 'OK', '2022-05-27'),
(5, 5, 'MC005', 'KUM015', 'CHEVROLET', 2020, 5, 'OK', '2022-05-27'),
(6, 6, 'MC006', 'KUM016', 'CHEVROLET', 2020, 5, 'Problemas de Carroceria', '2022-05-27'),
(7, 7, 'MC007', 'KUM017', 'MERCEDES', 2020, 5, 'Retrovisor Roto', '2022-05-05'),
(8, 8, 'MC008', 'KUM018', 'MERCEDES', 2022, 3, 'OK', '2022-05-06'),
(9, 9, 'MC009', 'KUM019', 'MERCEDES', 2021, 1, 'OK', '2022-05-07'),
(10, 10, 'MC010', 'KUM020', 'MERCEDES', 2020, 3, 'OK', '2022-05-08'),
(11, 11, 'MC011', 'KUM021', 'MERCEDES', 2022, 5, 'Problemas de Luces', '2022-05-09'),
(12, 12, 'MC012', 'KUM022', 'MERCEDES', 2021, 3, 'OK', '2022-05-10'),
(13, 13, 'MC013', 'KUM023', 'MERCEDES', 2021, 1, 'OK', '2022-05-11'),
(14, 14, 'MC014', 'KUM024', 'MERCEDES', 2020, 1, 'OK', '2022-05-12'),
(15, 15, 'MC015', 'KUM025', 'MERCEDES', 2021, 3, 'OK', '2022-05-13'),
(16, 16, 'MC016', 'KUM026', 'MERCEDES', 2022, 1, 'OK', '2022-05-14'),
(17, 17, 'MC017', 'KUM027', 'SUZUKI', 2020, 2, 'OK', '2022-05-15'),
(18, 18, 'MC018', 'KUM028', 'SUZUKI', 2020, 5, 'Problemas de Direcionales', '2022-05-16'),
(19, 19, 'MC019', 'KUM029', 'SUZUKI', 2020, 1, 'OK', '2022-05-17'),
(20, 20, 'MC020', 'KUM030', 'SUZUKI', 2021, 4, 'OK', '2022-05-18'),
(21, 21, 'MC021', 'KUM031', 'SUZUKI', 2022, 4, 'OK', '2022-05-19'),
(22, 22, 'MC022', 'KUM032', 'SUZUKI', 2022, 1, 'OK', '2022-05-20'),
(23, 23, 'MC023', 'KUM033', 'SUZUKI', 2020, 2, 'OK', '2022-05-21'),
(24, 24, 'MC024', 'KUM034', 'SUZUKI', 2021, 4, 'OK', '2022-05-22'),
(25, 25, 'MC025', 'KUM035', 'SUZUKI', 2021, 4, 'OK', '2022-05-23'),
(26, 26, 'MC026', 'KUM036', 'MERCEDES', 2022, 4, 'OK', '2022-05-24'),
(27, 27, 'MC027', 'KUM037', 'MERCEDES', 2020, 1, 'OK', '2022-05-25'),
(28, 28, 'MC028', 'KUM038', 'MERCEDES', 2020, 4, 'OK', '2022-05-26'),
(29, 29, 'MC029', 'KUM039', 'CHEVROLET', 2020, 5, 'Fallas Técnicas', '2022-05-27'),
(30, 30, 'MC030', 'KUM040', 'CHEVROLET', 2020, 4, 'ok', '2022-05-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_salida`
--

CREATE TABLE `registro_salida` (
  `Id_Registro_Salida` int(11) NOT NULL,
  `Id_Vehiculo` int(11) NOT NULL,
  `Codigo` varchar(10) NOT NULL,
  `Placa` varchar(6) NOT NULL,
  `Marca` varchar(10) DEFAULT NULL,
  `Modelo` int(4) DEFAULT NULL,
  `Estado_Vehiculo` int(11) NOT NULL,
  `Observaciones` varchar(350) NOT NULL,
  `Fecha_Registro_Salida` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registro_salida`
--

INSERT INTO `registro_salida` (`Id_Registro_Salida`, `Id_Vehiculo`, `Codigo`, `Placa`, `Marca`, `Modelo`, `Estado_Vehiculo`, `Observaciones`, `Fecha_Registro_Salida`) VALUES
(1, 1, 'MC001', 'KUM011', 'CHEVROLET', 2021, 1, 'OK', '2022-05-28'),
(2, 2, 'MC002', 'KUM012', 'CHEVROLET', 2021, 1, 'OK', '2022-05-29'),
(3, 3, 'MC003', 'KUM013', 'CHEVROLET', 2020, 1, 'OK', '2022-05-30'),
(4, 4, 'MC004', 'KUM014', 'CHEVROLET', 2022, 1, 'OK', '2022-05-31'),
(5, 5, 'MC005', 'KUM015', 'CHEVROLET', 2020, 1, 'OK', '2022-06-01'),
(6, 6, 'MC006', 'KUM016', 'CHEVROLET', 2020, 1, 'OK', '2022-06-02'),
(7, 7, 'MC007', 'KUM017', 'MERCEDES', 2020, 1, 'OK', '2022-06-03'),
(8, 8, 'MC008', 'KUM018', 'MERCEDES', 2022, 1, 'OK', '2022-06-04'),
(9, 9, 'MC009', 'KUM019', 'MERCEDES', 2021, 1, 'OK', '2022-06-05'),
(10, 10, 'MC010', 'KUM020', 'MERCEDES', 2020, 1, 'OK', '2022-06-06'),
(11, 11, 'MC011', 'KUM021', 'MERCEDES', 2022, 1, 'OK', '2022-06-07'),
(12, 12, 'MC012', 'KUM022', 'MERCEDES', 2021, 1, 'OK', '2022-06-08'),
(13, 13, 'MC013', 'KUM023', 'MERCEDES', 2021, 1, 'OK', '2022-06-09'),
(14, 14, 'MC014', 'KUM024', 'MERCEDES', 2020, 1, 'OK', '2022-06-10'),
(15, 15, 'MC015', 'KUM025', 'MERCEDES', 2021, 1, 'OK', '2022-06-11'),
(16, 16, 'MC016', 'KUM026', 'MERCEDES', 2022, 1, 'OK', '2022-06-12'),
(17, 17, 'MC017', 'KUM027', 'SUZUKI', 2020, 1, 'OK', '2022-06-13'),
(18, 18, 'MC018', 'KUM028', 'SUZUKI', 2020, 1, 'OK', '2022-06-14'),
(19, 19, 'MC019', 'KUM029', 'SUZUKI', 2020, 1, 'OK', '2022-06-15'),
(20, 20, 'MC020', 'KUM030', 'SUZUKI', 2021, 1, 'OK', '2022-06-16'),
(21, 21, 'MC021', 'KUM031', 'SUZUKI', 2022, 1, 'OK', '2022-06-17'),
(22, 22, 'MC022', 'KUM032', 'SUZUKI', 2022, 1, 'OK', '2022-06-18'),
(23, 23, 'MC023', 'KUM033', 'SUZUKI', 2020, 1, 'OK', '2022-06-19'),
(24, 24, 'MC024', 'KUM034', 'SUZUKI', 2021, 1, 'OK', '2022-06-20'),
(25, 25, 'MC025', 'KUM035', 'SUZUKI', 2021, 1, 'OK', '2022-06-21'),
(26, 26, 'MC026', 'KUM036', 'MERCEDES', 2022, 1, 'OK', '2022-06-22'),
(27, 27, 'MC027', 'KUM037', 'MERCEDES', 2020, 1, 'OK', '2022-06-23'),
(28, 28, 'MC028', 'KUM038', 'MERCEDES', 2020, 1, 'OK', '2022-06-24'),
(29, 29, 'MC029', 'KUM039', 'CHEVROLET', 2020, 1, 'OK', '2022-06-25'),
(30, 30, 'MC030', 'KUM040', 'CHEVROLET', 2020, 1, 'OK', '2022-06-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `Id_Rol` int(11) NOT NULL,
  `Nombre_Rol` varchar(20) NOT NULL,
  `Descripcion_Rol` varchar(250) DEFAULT NULL,
  `Estado_Rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`Id_Rol`, `Nombre_Rol`, `Descripcion_Rol`, `Estado_Rol`) VALUES
(1, 'Coordinador', 'Encargado del manejo total del software', 1),
(2, 'Mecanico', 'Encargado del arreglo de vehiculos de errores mecanicos', 1),
(3, 'Tecnico', 'Encargado del arreglos de vehiculos con fallas tecnicas', 1),
(4, 'Supervisor', 'Encargado de supervisar el trabajo del area de mantenimiento', 1),
(5, 'Inspector', 'Encargo del registro de entrada y salida de los vehiculos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_vehiculo`
--

CREATE TABLE `tipos_vehiculo` (
  `Id_Tipo_Vehiculo` int(11) NOT NULL,
  `Nombre_Tipo_Vehiculo` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos_vehiculo`
--

INSERT INTO `tipos_vehiculo` (`Id_Tipo_Vehiculo`, `Nombre_Tipo_Vehiculo`) VALUES
(1, 'BUS'),
(2, 'BUSETA'),
(3, 'ARTICULADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documentos`
--

CREATE TABLE `tipo_documentos` (
  `Id_Tipo_Documento` int(11) NOT NULL,
  `Nombre_Documento` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_documentos`
--

INSERT INTO `tipo_documentos` (`Id_Tipo_Documento`, `Nombre_Documento`) VALUES
(1, 'Cedula de Ciudadania'),
(2, 'Tarjeta de Identidada'),
(3, 'Pasaporte'),
(4, 'Cedula de Extranjeria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre_Usuario` varchar(25) NOT NULL,
  `Apellido_Usuario` varchar(25) NOT NULL,
  `Tipo_Documento` int(11) NOT NULL,
  `Numero_Documento` int(11) UNSIGNED NOT NULL,
  `Direccion` varchar(65) DEFAULT NULL,
  `Correo_Electronico` varchar(25) NOT NULL,
  `Celular` int(11) DEFAULT NULL,
  `Nombre_Rol` int(11) NOT NULL,
  `Estado_Usuario` int(11) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `Id_Vehiculo` int(11) NOT NULL,
  `Codigo` varchar(10) NOT NULL,
  `Placa` varchar(6) NOT NULL,
  `Marca` varchar(10) DEFAULT NULL,
  `Modelo` int(4) DEFAULT NULL,
  `Color` varchar(25) DEFAULT NULL,
  `Tipo_Vehiculo` int(11) NOT NULL,
  `Velocidad_MAX` varchar(20) DEFAULT NULL,
  `Estado_Vehiculo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`Id_Vehiculo`, `Codigo`, `Placa`, `Marca`, `Modelo`, `Color`, `Tipo_Vehiculo`, `Velocidad_MAX`, `Estado_Vehiculo`) VALUES
(1, 'MC001', 'KUM011', 'CHEVROLET', 2021, NULL, 3, NULL, 3),
(2, 'MC002', 'KUM012', 'CHEVROLET', 2021, NULL, 2, NULL, 5),
(3, 'MC003', 'KUM013', 'CHEVROLET', 2020, NULL, 3, NULL, 2),
(4, 'MC004', 'KUM014', 'CHEVROLET', 2022, NULL, 2, NULL, 2),
(5, 'MC005', 'KUM015', 'CHEVROLET', 2020, NULL, 1, NULL, 5),
(6, 'MC006', 'KUM016', 'CHEVROLET', 2020, NULL, 1, NULL, 5),
(7, 'MC007', 'KUM017', 'MERCEDES', 2020, NULL, 3, NULL, 5),
(8, 'MC008', 'KUM018', 'MERCEDES', 2022, NULL, 1, NULL, 3),
(9, 'MC009', 'KUM019', 'MERCEDES', 2021, NULL, 1, NULL, 1),
(10, 'MC010', 'KUM020', 'MERCEDES', 2020, NULL, 2, NULL, 3),
(11, 'MC011', 'KUM021', 'MERCEDES', 2022, NULL, 1, NULL, 5),
(12, 'MC012', 'KUM022', 'MERCEDES', 2021, NULL, 3, NULL, 3),
(13, 'MC013', 'KUM023', 'MERCEDES', 2021, NULL, 1, NULL, 1),
(14, 'MC014', 'KUM024', 'MERCEDES', 2020, NULL, 3, NULL, 1),
(15, 'MC015', 'KUM025', 'MERCEDES', 2021, NULL, 2, NULL, 3),
(16, 'MC016', 'KUM026', 'MERCEDES', 2022, NULL, 1, NULL, 1),
(17, 'MC017', 'KUM027', 'SUZUKI', 2020, NULL, 3, NULL, 2),
(18, 'MC018', 'KUM028', 'SUZUKI', 2020, NULL, 1, NULL, 5),
(19, 'MC019', 'KUM029', 'SUZUKI', 2020, NULL, 2, NULL, 1),
(20, 'MC020', 'KUM030', 'SUZUKI', 2021, NULL, 2, NULL, 4),
(21, 'MC021', 'KUM031', 'SUZUKI', 2022, NULL, 3, NULL, 4),
(22, 'MC022', 'KUM032', 'SUZUKI', 2022, NULL, 2, NULL, 1),
(23, 'MC023', 'KUM033', 'SUZUKI', 2020, NULL, 2, NULL, 2),
(24, 'MC024', 'KUM034', 'SUZUKI', 2021, NULL, 1, NULL, 4),
(25, 'MC025', 'KUM035', 'SUZUKI', 2021, NULL, 1, NULL, 4),
(26, 'MC026', 'KUM036', 'MERCEDES', 2022, NULL, 3, NULL, 4),
(27, 'MC027', 'KUM037', 'MERCEDES', 2020, NULL, 3, NULL, 1),
(28, 'MC028', 'KUM038', 'MERCEDES', 2020, NULL, 3, NULL, 4),
(29, 'MC029', 'KUM039', 'CHEVROLET', 2020, NULL, 1, NULL, 5),
(30, 'MC030', 'KUM040', 'CHEVROLET', 2020, NULL, 1, NULL, 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estados_usuarios`
--
ALTER TABLE `estados_usuarios`
  ADD PRIMARY KEY (`Id_Estado_Usuario`);

--
-- Indices de la tabla `estados_vehiculo`
--
ALTER TABLE `estados_vehiculo`
  ADD PRIMARY KEY (`Id_Estado_Vehiculo`);

--
-- Indices de la tabla `estado_roles`
--
ALTER TABLE `estado_roles`
  ADD PRIMARY KEY (`Id_Estado_Rol`);

--
-- Indices de la tabla `orden_trabajo`
--
ALTER TABLE `orden_trabajo`
  ADD PRIMARY KEY (`Id_Orden_Trabajo`),
  ADD KEY `Estado_Vehiculo` (`Estado_Vehiculo`),
  ADD KEY `Id_Vehiculo` (`Id_Vehiculo`),
  ADD KEY `Asignar` (`Asignar`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`Id_Permiso`),
  ADD KEY `Rol_Permiso` (`Rol_Permiso`);

--
-- Indices de la tabla `registro_entrada`
--
ALTER TABLE `registro_entrada`
  ADD PRIMARY KEY (`Id_Registro_Entrada`),
  ADD KEY `Id_Vehiculo` (`Id_Vehiculo`);

--
-- Indices de la tabla `registro_salida`
--
ALTER TABLE `registro_salida`
  ADD PRIMARY KEY (`Id_Registro_Salida`),
  ADD KEY `Id_Vehiculo` (`Id_Vehiculo`),
  ADD KEY `Estado_Vehiculo` (`Estado_Vehiculo`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Id_Rol`),
  ADD KEY `Estado_Rol` (`Estado_Rol`);

--
-- Indices de la tabla `tipos_vehiculo`
--
ALTER TABLE `tipos_vehiculo`
  ADD PRIMARY KEY (`Id_Tipo_Vehiculo`);

--
-- Indices de la tabla `tipo_documentos`
--
ALTER TABLE `tipo_documentos`
  ADD PRIMARY KEY (`Id_Tipo_Documento`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Tipo_Documento` (`Tipo_Documento`),
  ADD KEY `Nombre_Rol` (`Nombre_Rol`),
  ADD KEY `Estado_Usuario` (`Estado_Usuario`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`Id_Vehiculo`),
  ADD KEY `Tipo_Vehiculo` (`Tipo_Vehiculo`),
  ADD KEY `Estado_Vehiculo` (`Estado_Vehiculo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estados_usuarios`
--
ALTER TABLE `estados_usuarios`
  MODIFY `Id_Estado_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estados_vehiculo`
--
ALTER TABLE `estados_vehiculo`
  MODIFY `Id_Estado_Vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estado_roles`
--
ALTER TABLE `estado_roles`
  MODIFY `Id_Estado_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `orden_trabajo`
--
ALTER TABLE `orden_trabajo`
  MODIFY `Id_Orden_Trabajo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `Id_Permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `registro_entrada`
--
ALTER TABLE `registro_entrada`
  MODIFY `Id_Registro_Entrada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `registro_salida`
--
ALTER TABLE `registro_salida`
  MODIFY `Id_Registro_Salida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `Id_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipos_vehiculo`
--
ALTER TABLE `tipos_vehiculo`
  MODIFY `Id_Tipo_Vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_documentos`
--
ALTER TABLE `tipo_documentos`
  MODIFY `Id_Tipo_Documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `Id_Vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orden_trabajo`
--
ALTER TABLE `orden_trabajo`
  ADD CONSTRAINT `orden_trabajo_ibfk_1` FOREIGN KEY (`Estado_Vehiculo`) REFERENCES `vehiculos` (`Estado_Vehiculo`),
  ADD CONSTRAINT `orden_trabajo_ibfk_2` FOREIGN KEY (`Id_Vehiculo`) REFERENCES `vehiculos` (`Id_Vehiculo`),
  ADD CONSTRAINT `orden_trabajo_ibfk_3` FOREIGN KEY (`Asignar`) REFERENCES `usuarios` (`Id_Usuario`);

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`Rol_Permiso`) REFERENCES `roles` (`Id_Rol`);

--
-- Filtros para la tabla `registro_entrada`
--
ALTER TABLE `registro_entrada`
  ADD CONSTRAINT `registro_entrada_ibfk_1` FOREIGN KEY (`Id_Vehiculo`) REFERENCES `vehiculos` (`Id_Vehiculo`);

--
-- Filtros para la tabla `registro_salida`
--
ALTER TABLE `registro_salida`
  ADD CONSTRAINT `registro_salida_ibfk_1` FOREIGN KEY (`Id_Vehiculo`) REFERENCES `vehiculos` (`Id_Vehiculo`),
  ADD CONSTRAINT `registro_salida_ibfk_2` FOREIGN KEY (`Estado_Vehiculo`) REFERENCES `vehiculos` (`Estado_Vehiculo`);

--
-- Filtros para la tabla `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_ibfk_1` FOREIGN KEY (`Estado_Rol`) REFERENCES `estado_roles` (`Id_Estado_Rol`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Tipo_Documento`) REFERENCES `tipo_documentos` (`Id_Tipo_Documento`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`Nombre_Rol`) REFERENCES `roles` (`Id_Rol`),
  ADD CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`Estado_Usuario`) REFERENCES `estados_usuarios` (`Id_Estado_Usuario`);

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`Tipo_Vehiculo`) REFERENCES `tipos_vehiculo` (`Id_Tipo_Vehiculo`),
  ADD CONSTRAINT `vehiculos_ibfk_2` FOREIGN KEY (`Estado_Vehiculo`) REFERENCES `estados_vehiculo` (`Id_Estado_Vehiculo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
