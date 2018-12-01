-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-12-2018 a las 22:14:38
-- Versión del servidor: 5.7.24-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbsistemalaravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id` int(10) UNSIGNED NOT NULL,
  `idcategoria` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio_venta` decimal(11,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `descripcion` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id`, `idcategoria`, `codigo`, `nombre`, `precio_venta`, `stock`, `descripcion`, `condicion`, `created_at`, `updated_at`) VALUES
(1, 6, '014785239', 'Jabón de tocador', '10.50', 100, NULL, 1, NULL, NULL),
(2, 5, '36985214', 'Gaseosa Pepsi 1.5 LT', '2.00', 100, NULL, 1, '2018-02-23 23:18:00', '2018-02-23 23:18:00'),
(5, 8, '0123644', 'Carne de pollo', '5.00', 100, 'carnes de pollo y gallina', 1, '2018-02-23 23:18:57', '2018-02-24 01:57:22'),
(6, 5, '145236982', 'Gaseosa Inka Kola 2LT', '5.00', 100, 'Gaseosa inka kola 2 litros', 1, '2018-02-23 23:26:52', '2018-02-27 03:52:14'),
(7, 5, '11223344', 'Gaseosa Pepsi 600 ml', '3.00', 100, NULL, 1, '2018-02-24 11:09:45', '2018-02-27 03:54:04'),
(8, 5, '111222333', 'Gaseosa CocaCola 1LT', '5.00', 200, 'Gaseosa CocaCola', 1, '2018-02-24 11:22:05', '2018-02-24 11:33:16'),
(9, 3, '8717868005604', 'Leche evaporada gloria 400g', '4.00', 500, 'Leche evaporada gloria tarro azul', 1, '2018-02-27 04:00:37', '2018-02-27 04:01:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `condicion`, `created_at`, `updated_at`) VALUES
(1, 'Embutidos', 'Todo tipo de carnes rojas', 1, NULL, '2018-02-08 21:47:34'),
(2, 'Cereales', 'Todos los cereales', 0, NULL, '2018-02-08 21:37:55'),
(3, 'Lácteos', 'productos derivados de la leche', 1, '2018-02-08 06:45:53', '2018-02-08 06:45:53'),
(4, 'Menestras', 'todas las menestras', 1, '2018-02-08 06:53:41', '2018-02-08 06:53:41'),
(5, 'Bebidas', 'todas las bebidas', 1, '2018-02-08 06:54:04', '2018-02-08 06:54:04'),
(6, 'Artículos de Limpieza', 'Todos los artículos de limpieza', 1, '2018-02-08 07:36:55', '2018-02-08 20:04:48'),
(7, 'Carnes', 'Todas las carnes', 1, '2018-02-08 07:37:29', '2018-02-08 07:37:29'),
(8, 'Carnes blancas', 'todas las carnes blancas', 1, '2018-02-21 04:48:28', '2018-02-21 04:58:47'),
(9, 'Carnes cocidas', 'todas las carnes cocidas', 1, '2018-02-21 04:51:02', '2018-02-21 04:58:38'),
(10, 'Carnes procesadas', 'todas las carnes procesadas', 1, '2018-02-21 04:57:45', '2018-02-21 04:59:01'),
(11, 'Carnes de pescado', 'Todos los pescados', 1, '2018-02-21 05:00:05', '2018-02-21 05:00:05'),
(12, 'útiles escolares', 'Todos los artículos escolares', 0, '2018-02-21 10:22:46', '2018-02-21 10:22:57'),
(13, 'Muebles de oficina', 'todos los muebles de oficina pequeños', 1, '2018-02-21 22:07:00', '2018-02-21 22:08:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_01_171225_create_categorias_table', 1),
(4, '2018_02_21_151949_create_articulos_table', 2),
(5, '2018_02_22_235257_create_articulos_table', 3),
(6, '2018_02_27_143638_create_personas_table', 4),
(7, '2018_03_06_024616_create_proveedores_table', 5),
(8, '2018_03_13_133425_create_roles_table', 6),
(9, '2018_03_14_000000_create_users_table', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_documento` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `num_documento` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `nombre`, `tipo_documento`, `num_documento`, `direccion`, `telefono`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Luis Arcila', 'DNI', '96325417', 'Josée Gálvez 1368 - Chongoyape', '931742905', 'luis.pad7@gmail.com', NULL, NULL),
(2, 'Leo Perez Dávila', 'DNI', '63214589', 'Zarumilla 113 - Salaverry', '963123523', 'leoperez@gmail.com', '2018-03-06 07:39:33', '2018-03-06 07:40:06'),
(3, 'Inversiones Leon SAC', 'RUC', '20154878961', 'AV. Lambayeque 150', '963254123', 'inversionesleon@gmail.com', NULL, NULL),
(4, 'Transportes MICASA SAA', 'RUC', '20145236982', 'Av. Atahualpa 122', '074562582', 'transportesmicasa@gmail.com', '2018-03-06 09:44:44', '2018-03-06 09:45:18'),
(8, 'Juan Carlos Arcila Diaz', 'DNI', '47715777', 'Zarumilla 113 - Chiclayo', '931742904', 'jcarlos.ad7@gmail.com', '2018-03-13 21:39:10', '2018-03-13 21:39:10'),
(9, 'Pedro Montenegro', 'DNI', NULL, NULL, NULL, NULL, '2018-03-21 23:58:35', '2018-03-22 00:05:29'),
(10, 'Maria Chocano', 'DNI', NULL, NULL, NULL, NULL, '2018-03-22 00:05:48', '2018-03-22 00:05:48'),
(11, 'Juan Fermin', 'DNI', '52754768J', 'CARRER FALGUERA, 2', '966814113', 'it@reuma-sol.com', '2018-12-01 20:10:59', '2018-12-01 20:10:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(10) UNSIGNED NOT NULL,
  `contacto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono_contacto` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `contacto`, `telefono_contacto`) VALUES
(3, 'Roberto Leon ', '98745632'),
(4, 'Rodolfo Gutierrez', '965874152');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `descripcion`, `condicion`) VALUES
(1, 'Administrador', 'Administradores de área', 1),
(2, 'Vendedor', 'Vendedor área venta', 1),
(3, 'Almacenero', 'Almacenero área compras', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condicion` tinyint(1) NOT NULL DEFAULT '1',
  `idrol` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `password`, `condicion`, `idrol`, `remember_token`) VALUES
(10, 'almacenero', '$2y$10$5NNCAoL.sCa6Ml014bLgIusgT0rV92z3U7PZ7abhi68CGsxZ1/3j.', 1, 3, 'ilNJUCNDTiLVoGumuXGjPOY1r8efyiblO7szVkzzjwIfV1KPISbJAH3Z5Pgq'),
(8, 'jcarlosad7', '$2y$10$Yt1HHnF.zHONEx9ayMimCO0Tu9jUcielbsBFItHXTFL4kDSu4U.0i', 1, 1, '5DXsgoU82B5KiS4aa6g7vCfYNHMFQboR4xBu3StwevcCiC2OyfcGVDKPtz1w'),
(11, 'juanfob', '$2y$10$QS9RPIuuNA28SXEJB6pyk.UePFqlAjBtMEZpdac1GEoExcRINBj.2', 1, 1, NULL),
(1, 'luisad', '*123456*', 1, 1, NULL),
(9, 'vendedor', '$2y$10$mudKBM5FIbui57q7AGUY0ukRUPRhvnf3XI2Oym496BgyGKsal54mu', 1, 2, 'vlPmBuxJpVbJiNIQg4gpigErrVbCgfD0xLVETpQIzPOtLmUEkGQbQ7LkcQjj');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articulos_nombre_unique` (`nombre`),
  ADD KEY `articulos_idcategoria_foreign` (`idcategoria`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personas_nombre_unique` (`nombre`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD KEY `proveedores_id_foreign` (`id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_nombre_unique` (`nombre`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `users_usuario_unique` (`usuario`),
  ADD KEY `users_id_foreign` (`id`),
  ADD KEY `users_idrol_foreign` (`idrol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_idcategoria_foreign` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD CONSTRAINT `proveedores_id_foreign` FOREIGN KEY (`id`) REFERENCES `personas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_foreign` FOREIGN KEY (`id`) REFERENCES `personas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_idrol_foreign` FOREIGN KEY (`idrol`) REFERENCES `roles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
