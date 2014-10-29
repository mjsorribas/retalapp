-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-10-2014 a las 01:07:53
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `menteswe_kilombo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `backstage_items`
--

CREATE TABLE IF NOT EXISTS `backstage_items` (
`id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL COMMENT 'type:img',
  `orden_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `backstage_items`
--

INSERT INTO `backstage_items` (`id`, `image`, `orden_id`) VALUES
(1, '1414506200.png', 1),
(2, '1414506207.png', 2),
(3, '1414506218.png', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact_messages`
--

CREATE TABLE IF NOT EXISTS `contact_messages` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL COMMENT 'type:email',
  `message` text NOT NULL,
  `read` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `phone`, `email`, `message`, `read`, `created_at`) VALUES
(1, 'TEst', '123123123123', 'gsalgadotoledo@gmail.com', 'This is a test', 0, '2014-10-28 20:52:52'),
(2, 'TEst', '123123123123', 'gsalgadotoledo@gmail.com', 'This is a test', 0, '2014-10-28 20:54:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers_items`
--

CREATE TABLE IF NOT EXISTS `customers_items` (
`id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL COMMENT 'type:img',
  `orden_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `customers_items`
--

INSERT INTO `customers_items` (`id`, `image`, `orden_id`) VALUES
(1, '1414515749.png', 1),
(2, '1414515757.png', 2),
(3, '1414515765.png', 3),
(4, '1414515774.png', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gii_cruds`
--

CREATE TABLE IF NOT EXISTS `gii_cruds` (
`id` int(11) NOT NULL,
  `moduleName` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `controller` varchar(100) NOT NULL,
  `labelName` varchar(100) NOT NULL,
  `fontIcon` varchar(100) DEFAULT NULL,
  `template` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=95 ;

--
-- Volcado de datos para la tabla `gii_cruds`
--

INSERT INTO `gii_cruds` (`id`, `moduleName`, `model`, `controller`, `labelName`, `fontIcon`, `template`, `created_at`) VALUES
(15, 'base_users', 'Users', 'users', 'Users', 'fa-users', 'cms-manny-grid', '2014-10-22 19:39:35'),
(16, 'base_users', 'Users', 'users', 'Users', 'fa-users', 'cms-manny-grid', '2014-10-22 19:39:52'),
(17, 'rusers', 'UsersUsers', 'users', 'Users', 'fa-users', 'cms-manny-grid', '2014-10-22 20:56:53'),
(18, 'rusers', 'UsersUsers', 'users', 'Users', 'fa-users', 'cms-manny-grid', '2014-10-22 20:57:01'),
(19, 'rusers', 'UsersUsers', 'users', 'Users', 'fa-users', 'cms-manny-grid', '2014-10-22 21:01:18'),
(20, 'rusers', 'UsersUsers', 'users', 'Users', 'fa-users', 'cms-manny-grid', '2014-10-22 21:01:25'),
(21, 'users', 'UsersUsers', 'users', 'Users', 'fa-users', 'cms-manny-grid', '2014-10-22 21:54:58'),
(22, 'users', 'UsersUsers', 'users', 'Users', 'fa-users', 'cms-manny-grid', '2014-10-22 21:55:01'),
(23, 'users', 'Users', 'api_users', 'Users', 'fa-users', 'cms-api', '2014-10-22 22:48:34'),
(24, 'users', 'Users', 'api_users', 'Users', 'fa-users', 'cms-api', '2014-10-22 22:48:38'),
(25, 'users', 'Users', 'api_users', 'Users', 'fa-users', 'cms-api', '2014-10-22 22:49:37'),
(26, 'users', 'Users', 'api_users', 'Users', 'fa-users', 'cms-api', '2014-10-22 22:49:39'),
(27, 'landing', 'LandingElements', 'elements', 'Elements for page', 'fa-list', 'cms-manny-grid', '2014-10-25 01:38:01'),
(28, 'landing', 'LandingElements', 'elements', 'Elements for page', 'fa-list', 'cms-manny-grid', '2014-10-25 01:38:04'),
(29, 'landing', 'LandingElements', 'elements', 'Landing Elements', 'fa-list', 'cms-manny-grid', '2014-10-25 01:46:24'),
(30, 'landing', 'LandingElements', 'elements', 'Landing Elements', 'fa-list', 'cms-manny-grid', '2014-10-25 01:46:28'),
(31, 'landing', 'LandingElements', 'elements', 'Landing Elements', 'fa-list', 'cms-manny-grid', '2014-10-25 01:46:32'),
(32, 'landing', 'LandingElements', 'elements', 'Landing Elements', 'fa-list', 'cms-manny-grid', '2014-10-25 01:46:43'),
(33, 'landing', 'LandingElements', 'elements', 'Landing Elements', 'fa-list', 'cms-manny-grid', '2014-10-27 20:45:51'),
(34, 'landing', 'LandingElements', 'elements', 'Landing Elements', 'fa-list', 'cms-manny-grid', '2014-10-27 20:45:53'),
(35, 'landing', 'LandingElements', 'elements', 'Landing Elements', 'fa-list', 'cms-manny-grid', '2014-10-27 20:46:03'),
(36, 'landing', 'LandingElementsSlider', 'slider', 'Slider', 'fa-magic', 'cms-manny-grid', '2014-10-27 23:35:47'),
(37, 'landing', 'LandingElementsSlider', 'slider', 'Slider', 'fa-magic', 'cms-manny-grid', '2014-10-27 23:35:49'),
(38, 'portfolio', 'PortfolioCategories', 'categories', 'Categories', 'fa-list-ol', 'cms-manny-grid', '2014-10-28 00:13:53'),
(39, 'portfolio', 'PortfolioCategories', 'categories', 'Categories', 'fa-list-ol', 'cms-manny-grid', '2014-10-28 00:13:57'),
(40, 'portfolio', 'PortfolioItems', 'items', 'Portfolio Items', 'fa-suitcase', 'cms-manny-grid', '2014-10-28 00:15:21'),
(41, 'portfolio', 'PortfolioItems', 'items', 'Portfolio Items', 'fa-suitcase', 'cms-manny-grid', '2014-10-28 00:15:23'),
(42, 'portfolio', 'PortfolioItems', 'items', 'Portfolio Items', 'fa-suitcase', 'cms-manny-grid', '2014-10-28 00:30:31'),
(43, 'portfolio', 'PortfolioItems', 'items', 'Portfolio Items', 'fa-suitcase', 'cms-manny-grid', '2014-10-28 00:30:36'),
(44, 'team', 'TeamItems', 'items', 'Team', 'fa-users', 'cms-manny-grid', '2014-10-28 14:11:50'),
(45, 'team', 'TeamItems', 'items', 'Team', 'fa-users', 'cms-manny-grid', '2014-10-28 14:11:51'),
(46, 'location', 'LocationItems', 'items', 'Locations', 'fa-home', 'cms-manny-grid', '2014-10-28 15:15:40'),
(47, 'location', 'LocationItems', 'items', 'Locations', 'fa-home', 'cms-manny-grid', '2014-10-28 15:15:43'),
(48, 'location', 'LocationGps', 'gps', 'Location', 'fa-map-marker', 'cms-one', '2014-10-28 15:53:55'),
(49, 'location', 'LocationGps', 'gps', 'Location', 'fa-map-marker', 'cms-one', '2014-10-28 15:53:59'),
(50, 'location', 'LocationGps', 'gps', 'Location', 'fa-map-marker', 'cms-one', '2014-10-28 15:54:06'),
(51, 'portfolio', 'PortfolioCategories', 'categories', 'Categories', 'fa-list-ol', 'cms-manny-grid', '2014-10-28 16:44:57'),
(52, 'portfolio', 'PortfolioCategories', 'categories', 'Categories', 'fa-list-ol', 'cms-manny-grid', '2014-10-28 16:45:00'),
(53, 'portfolio', 'PortfolioCategories', 'categories', 'Categories', 'fa-list-ol', 'cms-manny-grid', '2014-10-28 16:45:11'),
(54, 'portfolio', 'PortfolioText', 'intro', 'Intro text', 'fa-pencil-square-o', 'cms-one', '2014-10-28 16:45:54'),
(55, 'portfolio', 'PortfolioText', 'intro', 'Intro text', 'fa-pencil-square-o', 'cms-one', '2014-10-28 16:45:56'),
(56, 'portfolio', 'PortfolioText', 'intro', 'Intro text', 'fa-pencil-square-o', 'cms-one', '2014-10-28 17:43:48'),
(57, 'portfolio', 'PortfolioText', 'intro', 'Intro text', 'fa-pencil-square-o', 'cms-one', '2014-10-28 17:43:51'),
(58, 'portfolio', 'PortfolioText', 'intro', 'Intro text', 'fa-pencil-square-o', 'cms-one', '2014-10-28 17:43:53'),
(59, 'portfolio', 'PortfolioText', 'intro', 'Intro text', 'fa-pencil-square-o', 'cms-one', '2014-10-28 17:44:01'),
(60, 'customers', 'CustomersItems', 'items', 'Customers', 'fa-credit-card', 'cms-manny-grid', '2014-10-28 18:01:40'),
(61, 'customers', 'CustomersItems', 'items', 'Customers', 'fa-credit-card', 'cms-manny-grid', '2014-10-28 18:01:42'),
(62, 'contact', 'ContactMessages', 'messages', 'Messages', 'fa-envelope', 'cms-manny-grid', '2014-10-28 19:43:55'),
(63, 'contact', 'ContactMessages', 'messages', 'Messages', 'fa-envelope', 'cms-manny-grid', '2014-10-28 19:43:57'),
(64, 'contact', 'ContactMessages', 'messages', 'Messages', 'fa-envelope', 'cms-manny-grid', '2014-10-28 19:52:25'),
(65, 'contact', 'ContactMessages', 'messages', 'Messages', 'fa-envelope', 'cms-manny-grid', '2014-10-28 19:52:32'),
(66, 'job', 'JobMessages', 'messages', 'Job Messages', 'fa-line-chart', 'cms-manny-grid', '2014-10-28 19:55:20'),
(67, 'job', 'JobMessages', 'messages', 'Job Messages', 'fa-line-chart', 'cms-manny-grid', '2014-10-28 19:55:21'),
(68, 'job', 'JobMessages', 'messages', 'Job Messages', 'fa-line-chart', 'cms-manny-grid', '2014-10-28 20:17:18'),
(69, 'job', 'JobMessages', 'messages', 'Job Messages', 'fa-rocket', 'cms-manny-grid', '2014-10-28 20:17:25'),
(70, 'job', 'JobMessages', 'messages', 'Job Messages', 'fa-rocket', 'cms-manny-grid', '2014-10-28 20:17:29'),
(71, 'portfolio', 'PortfolioCategories', 'categories', 'El kilombo', 'fa-list-ol', 'cms-manny-grid', '2014-10-28 21:32:15'),
(72, 'portfolio', 'PortfolioCategories', 'categories', 'El kilombo', 'fa-list-ol', 'cms-manny-grid', '2014-10-28 21:32:17'),
(73, 'portfolio', 'PortfolioCategories', 'categories', 'El kilombo', 'fa-list-ol', 'cms-manny-grid', '2014-10-28 21:32:23'),
(74, 'portfolio', 'PortfolioCategories', 'categories', 'El kilombo', 'fa-list-ol', 'cms-manny-grid', '2014-10-28 21:32:27'),
(75, 'portfolio', 'PortfolioCategories', 'categories', 'El kilombo', 'fa-list-ol', 'cms-manny-grid', '2014-10-28 21:32:31'),
(76, 'portfolio', 'PortfolioCategories', 'categories', 'El kilombo', 'fa-list-ol', 'cms-manny-grid', '2014-10-28 21:32:33'),
(77, 'portfolio', 'PortfolioCategories', 'categories', 'El kilombo', 'fa-list-ol', 'cms-manny-grid', '2014-10-28 21:32:40'),
(78, 'portfolio', 'PortfolioItems', 'items', 'Grandes éxitos', 'fa-suitcase', 'cms-manny-grid', '2014-10-28 21:33:00'),
(79, 'portfolio', 'PortfolioItems', 'items', 'Grandes éxitos', 'fa-suitcase', 'cms-manny-grid', '2014-10-28 21:33:07'),
(80, 'team', 'TeamItems', 'items', 'La banda', 'fa-users', 'cms-manny-grid', '2014-10-28 21:33:20'),
(81, 'team', 'TeamItems', 'items', 'La banda', 'fa-users', 'cms-manny-grid', '2014-10-28 21:33:26'),
(82, 'location', 'LocationGps', 'gps', 'Location', 'fa-map-marker', 'cms-one', '2014-10-28 21:33:37'),
(83, 'location', 'LocationGps', 'gps', 'Location', 'fa-map-marker', 'cms-one', '2014-10-28 21:33:45'),
(84, 'location', 'LocationGps', 'gps', 'GPS', 'fa-map-marker', 'cms-one', '2014-10-28 21:33:57'),
(85, 'location', 'LocationGps', 'gps', 'GPS', 'fa-map-marker', 'cms-one', '2014-10-28 21:33:59'),
(86, 'portfolio', 'PortfolioText', 'intro', 'Texto de la sección', 'fa-pencil-square-o', 'cms-one', '2014-10-28 21:34:38'),
(87, 'portfolio', 'PortfolioText', 'intro', 'Texto de la sección', 'fa-pencil-square-o', 'cms-one', '2014-10-28 21:34:40'),
(88, 'portfolio', 'PortfolioText', 'intro', 'Texto de la sección', 'fa-pencil-square-o', 'cms-one', '2014-10-28 21:34:45'),
(89, 'customers', 'CustomersItems', 'items', 'Club de fans', 'fa-credit-card', 'cms-manny-grid', '2014-10-28 21:35:04'),
(90, 'customers', 'CustomersItems', 'items', 'Club de fans', 'fa-credit-card', 'cms-manny-grid', '2014-10-28 21:35:09'),
(91, 'contact', 'ContactMessages', 'messages', 'Escríbenos', 'fa-envelope', 'cms-manny-grid', '2014-10-28 21:35:30'),
(92, 'contact', 'ContactMessages', 'messages', 'Escríbenos', 'fa-envelope', 'cms-manny-grid', '2014-10-28 21:35:35'),
(93, 'job', 'JobMessages', 'messages', 'Audiciones', 'fa-line-chart', 'cms-manny-grid', '2014-10-28 21:36:00'),
(94, 'job', 'JobMessages', 'messages', 'Audiciones', 'fa-line-chart', 'cms-manny-grid', '2014-10-28 21:36:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gii_models`
--

CREATE TABLE IF NOT EXISTS `gii_models` (
`id` int(11) NOT NULL,
  `tableName` varchar(100) NOT NULL,
  `modelClass` varchar(100) NOT NULL,
  `moduleName` varchar(100) NOT NULL,
  `template` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Volcado de datos para la tabla `gii_models`
--

INSERT INTO `gii_models` (`id`, `tableName`, `modelClass`, `moduleName`, `template`, `created_at`) VALUES
(6, 'users_users', 'UsersUsers', 'base_users', 'default', '2014-10-22 19:35:22'),
(7, 'users_users', 'UsersUsers', 'base_users', 'default', '2014-10-22 19:35:25'),
(8, 'users_users', 'UsersUsers', 'base_users', 'default', '2014-10-22 19:37:04'),
(9, 'users_users', 'UsersUsers', 'base_users', 'default', '2014-10-22 19:39:01'),
(10, 'users_users', 'RUsersUsers', 'rusers', 'default', '2014-10-22 20:49:55'),
(11, 'users_users', 'UsersUsers', 'rusers', 'default', '2014-10-22 20:53:44'),
(12, 'users_users', 'UsersUsers', 'rusers', 'default', '2014-10-22 20:55:56'),
(13, 'users_users', 'UsersUsers', 'rusers', 'default', '2014-10-22 20:56:08'),
(14, 'users_users', 'UsersUsers', 'rusers', 'default', '2014-10-22 21:00:37'),
(15, 'users_users', 'UsersUsers', 'rusers', 'default', '2014-10-22 21:00:39'),
(16, 'users_users', 'UsersUsers', 'rusers', 'default', '2014-10-22 21:00:48'),
(17, 'landing_elements', 'LandingElements', 'landing', 'default', '2014-10-25 01:36:57'),
(18, 'landing_elements', 'LandingElements', 'landing', 'default', '2014-10-25 01:36:59'),
(19, 'landing_elements', 'LandingElements', 'landing', 'default', '2014-10-27 20:45:30'),
(20, 'landing_elements', 'LandingElements', 'landing', 'default', '2014-10-27 20:45:33'),
(21, 'landing_elements', 'LandingElements', 'landing', 'default', '2014-10-27 20:45:39'),
(22, 'landing_elements_positions', 'LandingElementsPositions', 'landing', 'default', '2014-10-27 21:26:22'),
(23, 'landing_elements_positions', 'LandingElementsPositions', 'landing', 'default', '2014-10-27 21:26:25'),
(24, 'landing_elements_slider', 'LandingElementsSlider', 'landing', 'default', '2014-10-27 23:34:41'),
(25, 'landing_elements_slider', 'LandingElementsSlider', 'landing', 'default', '2014-10-27 23:34:44'),
(26, 'porfolio_categories', 'PorfolioCategories', 'portfolio', 'default', '2014-10-28 00:09:08'),
(27, 'porfolio_categories', 'PorfolioCategories', 'portfolio', 'default', '2014-10-28 00:09:10'),
(28, 'portfolio_items', 'PortfolioItems', 'portfolio', 'default', '2014-10-28 00:09:15'),
(29, 'portfolio_items', 'PortfolioItems', 'portfolio', 'default', '2014-10-28 00:09:16'),
(30, 'portfolio_categories', 'PortfolioCategories', 'portfolio', 'default', '2014-10-28 00:11:03'),
(31, 'portfolio_categories', 'PortfolioCategories', 'portfolio', 'default', '2014-10-28 00:11:04'),
(32, 'portfolio_items', 'PortfolioItems', 'portfolio', 'default', '2014-10-28 00:11:10'),
(33, 'portfolio_categories', 'PortfolioCategories', 'portfolio', 'default', '2014-10-28 00:12:53'),
(34, 'portfolio_categories', 'PortfolioCategories', 'portfolio', 'default', '2014-10-28 00:12:54'),
(35, 'portfolio_items', 'PortfolioItems', 'portfolio', 'default', '2014-10-28 00:12:58'),
(36, 'portfolio_items', 'PortfolioItems', 'portfolio', 'default', '2014-10-28 00:13:00'),
(37, 'portfolio_items', 'PortfolioItems', 'portfolio', 'default', '2014-10-28 00:30:12'),
(38, 'portfolio_items', 'PortfolioItems', 'portfolio', 'default', '2014-10-28 00:30:16'),
(39, 'portfolio_items', 'PortfolioItems', 'portfolio', 'default', '2014-10-28 00:30:20'),
(40, 'team_items', 'TeamItems', 'team', 'default', '2014-10-28 14:10:59'),
(41, 'team_items', 'TeamItems', 'team', 'default', '2014-10-28 14:11:12'),
(42, 'location_items', 'LocationItems', 'location', 'default', '2014-10-28 15:14:22'),
(43, 'location_items', 'LocationItems', 'location', 'default', '2014-10-28 15:14:24'),
(44, 'location_gps', 'LocationGps', 'location', 'default', '2014-10-28 15:52:27'),
(45, 'location_gps', 'LocationGps', 'location', 'default', '2014-10-28 15:52:30'),
(46, 'portfolio_categories', 'PortfolioCategories', 'portfolio', 'default', '2014-10-28 16:44:13'),
(47, 'portfolio_categories', 'PortfolioCategories', 'portfolio', 'default', '2014-10-28 16:44:16'),
(48, 'portfolio_categories', 'PortfolioCategories', 'portfolio', 'default', '2014-10-28 16:44:24'),
(49, 'portfolio_text', 'PortfolioText', 'portfolio', 'default', '2014-10-28 16:44:37'),
(50, 'portfolio_text', 'PortfolioText', 'portfolio', 'default', '2014-10-28 16:44:39'),
(51, 'customers_items', 'CustomersItems', 'customers', 'default', '2014-10-28 17:59:43'),
(52, 'customers_items', 'CustomersItems', 'customers', 'default', '2014-10-28 17:59:45'),
(53, 'contact_messages', 'ContactMessages', 'contact', 'default', '2014-10-28 19:43:16'),
(54, 'contact_messages', 'ContactMessages', 'contact', 'default', '2014-10-28 19:43:18'),
(55, 'job_messages', 'JobMessages', 'job', 'default', '2014-10-28 19:53:08'),
(56, 'job_messages', 'JobMessages', 'job', 'default', '2014-10-28 19:53:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_messages`
--

CREATE TABLE IF NOT EXISTS `job_messages` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL COMMENT 'type:email',
  `message` text NOT NULL,
  `file` varchar(100) NOT NULL COMMENT 'type:file',
  `read` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `job_messages`
--

INSERT INTO `job_messages` (`id`, `name`, `phone`, `email`, `message`, `file`, `read`, `created_at`) VALUES
(1, 'Test name', '123123123123', 'gsalgadotoledo@gmail.com', 'This is a test', 'APP.rar...', 0, '2014-10-28 21:10:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `landing_elements`
--

CREATE TABLE IF NOT EXISTS `landing_elements` (
`id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL COMMENT 'type:img',
  `name` varchar(100) NOT NULL,
  `module` varchar(255) NOT NULL COMMENT 'type:select',
  `type` varchar(100) NOT NULL COMMENT 'type:select',
  `landing_elements_positions_id` int(10) NOT NULL COMMENT 'type:select;table:landing_elements_positions',
  `orden_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `landing_elements`
--

INSERT INTO `landing_elements` (`id`, `image`, `name`, `module`, `type`, `landing_elements_positions_id`, `orden_id`) VALUES
(1, '1414194118.png', 'Header', 'landing', 'menu-1', 1, 1),
(2, '1414194163.png', 'Slider', 'landing', 'header-slider-1', 2, 2),
(3, '1414194163.png', 'Footer', 'landing', 'footer-2', 3, 11),
(4, '1414194163.png', 'Footer Copirigts', 'landing', 'footer-small-1', 3, 12),
(5, '1414194163.png', 'Portfolio list', 'portfolio', 'list-1', 2, 3),
(6, '1414194163.png', 'Team', 'team', 'team-1', 2, 4),
(7, '1414194163.png', 'Backstage', 'backstage', 'backstage-1', 2, 5),
(8, '1414194163.png', 'MAP', 'location', 'location-1', 2, 7),
(9, '1414194163.png', 'Services', 'portfolio', 'categories-1', 2, 6),
(10, '1414194163.png', 'Customers', 'customers', 'customers-1', 2, 10),
(11, '1414194163.png', 'Contact', 'contact', 'contact-1', 2, 8),
(12, '1414194163.png', 'Job with us', 'job', 'job-1', 2, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `landing_elements_positions`
--

CREATE TABLE IF NOT EXISTS `landing_elements_positions` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `landing_elements_positions`
--

INSERT INTO `landing_elements_positions` (`id`, `name`) VALUES
(1, 'Header'),
(2, 'Content'),
(3, 'Footer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `landing_elements_slider`
--

CREATE TABLE IF NOT EXISTS `landing_elements_slider` (
`id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL COMMENT 'type:img',
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `orden_id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL COMMENT 'type:select'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `landing_elements_slider`
--

INSERT INTO `landing_elements_slider` (`id`, `image`, `title`, `text`, `orden_id`, `link`) VALUES
(1, '1414500727.jpg', 'Productos especiales', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `location_gps`
--

CREATE TABLE IF NOT EXISTS `location_gps` (
`id` int(11) NOT NULL,
  `map_address` varchar(255) NOT NULL,
  `map_address_lat` float NOT NULL,
  `map_address_lng` float NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `location_gps`
--

INSERT INTO `location_gps` (`id`, `map_address`, `map_address_lat`, `map_address_lng`) VALUES
(1, 'Carrera 27 # 30-2 a 30-100, Palmira, Valle Del Cauca, Colombia', 3.52717, -76.2977);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portfolio_categories`
--

CREATE TABLE IF NOT EXISTS `portfolio_categories` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL COMMENT 'type:img',
  `description` text NOT NULL,
  `orden_id` int(11) NOT NULL,
  `color` varchar(8) NOT NULL COMMENT 'type:color'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `portfolio_categories`
--

INSERT INTO `portfolio_categories` (`id`, `name`, `image`, `description`, `orden_id`, `color`) VALUES
(1, 'Publicidad', '1414511210.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 'ff7f7f'),
(2, 'Cine y Tv', '1414511231.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2, '61e8e8'),
(3, 'Entretenimiento', '1414511246.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 3, 'f5ee62'),
(4, 'En Vivo', '1414511259.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4, '87faa6');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portfolio_items`
--

CREATE TABLE IF NOT EXISTS `portfolio_items` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `preview` varchar(100) NOT NULL COMMENT 'type:img',
  `image` varchar(100) DEFAULT NULL COMMENT 'type:img',
  `video` varchar(255) DEFAULT NULL COMMENT 'type:link',
  `audio` varchar(255) DEFAULT NULL COMMENT 'type:link',
  `prominent` tinyint(1) NOT NULL,
  `created_at` double NOT NULL,
  `orden_id` int(11) NOT NULL,
  `portfolio_categories_id` int(11) NOT NULL COMMENT 'type:select;table:portfolio_categories'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `portfolio_items`
--

INSERT INTO `portfolio_items` (`id`, `title`, `date`, `preview`, `image`, `video`, `audio`, `prominent`, `created_at`, `orden_id`, `portfolio_categories_id`) VALUES
(1, 'Portfolio1', '2014-10-30', '1414453224.png', '1414453229.png', '', '', 1, 2014, 1, 1),
(2, 'Portfolio2', '2014-10-23', '1414453255.png', '1414453258.png', '', '', 1, 2014, 2, 1),
(3, 'Portfolio3', '2014-10-13', '1414453290.png', '1414453295.png', '', '', 1, 2014, 3, 2),
(4, 'Portfolio4', '2014-10-25', '1414453321.png', '1414453325.png', '', '', 0, 2014, 4, 3),
(5, 'Portfolio5', '2014-12-12', '1414453347.png', '1414453352.png', '', '', 1, 2014, 5, 4),
(6, 'Portfolio6', '2014-12-20', '1414453378.png', '1414453382.png', '', '', 1, 2014, 6, 4),
(7, 'Portfolio7', '2014-12-19', '1414453406.png', '1414453410.png', '', '', 1, 2014, 7, 3),
(8, 'Portfolio8', '2014-10-07', '1414453434.png', '1414453440.png', '', '', 1, 2014, 8, 4),
(9, 'Portfolio9', '2014-10-21', '1414453472.png', '1414453476.png', '', '', 0, 2014, 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portfolio_text`
--

CREATE TABLE IF NOT EXISTS `portfolio_text` (
`id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `portfolio_text`
--

INSERT INTO `portfolio_text` (`id`, `text`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings_settings`
--

CREATE TABLE IF NOT EXISTS `settings_settings` (
`id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `offline` tinyint(1) DEFAULT '0',
  `editor_offline_message` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `settings_settings`
--

INSERT INTO `settings_settings` (`id`, `title`, `keywords`, `description`, `admin_email`, `offline`, `editor_offline_message`) VALUES
(1, 'MY APP', 'Site, Blog, webapp', 'Site, Blog, webapp', 'gustavo.salgado@imagina.co', 0, '{"data":[{"type":"heading","data":{"text":"Coming Soon"}},{"type":"text","data":{"text":"Please be patient\\n"}}]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `smpt_config`
--

CREATE TABLE IF NOT EXISTS `smpt_config` (
`id` int(11) NOT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `host_email_server` varchar(150) DEFAULT NULL,
  `port_email_server` int(4) DEFAULT NULL,
  `username_email_server` varchar(150) DEFAULT NULL,
  `password_email_server` varchar(150) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `smpt_config`
--

INSERT INTO `smpt_config` (`id`, `enabled`, `host_email_server`, `port_email_server`, `username_email_server`, `password_email_server`) VALUES
(1, 1, 'smtp.mandrillapp.com', 587, 'gsalgadotoledo@gmail.com', '3OLOYhCnJHz7tRYak0d-WQ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team_items`
--

CREATE TABLE IF NOT EXISTS `team_items` (
`id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL COMMENT 'type:img',
  `description` text NOT NULL,
  `orden_id` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `team_items`
--

INSERT INTO `team_items` (`id`, `name`, `position`, `image`, `description`, `orden_id`) VALUES
(1, 'Juan Gonzalez', 'Diseñador', '1414502017.png', 'This is a test description', 1),
(2, 'Pedro Perez', 'SEO', '1414502082.png', 'This is a test description', 2),
(3, 'Luis Perez', 'Founder', '1414502114.png', 'This is a test description', 3),
(4, 'Harol Suarez', 'Vendedor', '1414502152.png', 'This is a test description', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translation_message`
--

CREATE TABLE IF NOT EXISTS `translation_message` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(16) NOT NULL DEFAULT '',
  `translation` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translation_source_message`
--

CREATE TABLE IF NOT EXISTS `translation_source_message` (
  `id` int(11) NOT NULL,
  `category` varchar(32) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_access_tokens`
--

CREATE TABLE IF NOT EXISTS `users_access_tokens` (
`id` int(11) NOT NULL,
  `acces_token` varchar(255) NOT NULL,
  `apps_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `acces_token_refresh` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Volcado de datos para la tabla `users_access_tokens`
--

INSERT INTO `users_access_tokens` (`id`, `acces_token`, `apps_id`, `users_id`, `acces_token_refresh`, `code`) VALUES
(39, 'S2BbgpCDa3ec7OQ84KQy7g6zNnZmbcjP6GMERpes', 5, 3, 'iamUeOUsYIwchxxkwsfuySwX3ncTm7Jq8RBDbwRw3jye5RkuEQjYa3s3fuMN', NULL),
(40, 'ThuqnMhYk6pPVPduyw8htUCshCirnYAc5rog6rAI', 5, 3, 'q2WNJ3GKsd4CzS2kdUO5GrFdzdGsuK2fHpOshVYZUwyPkUwjgFdIWIHNnpA5', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_apps`
--

CREATE TABLE IF NOT EXISTS `users_apps` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `client_secret` varchar(255) NOT NULL,
  `redirect_uri` varchar(255) DEFAULT NULL,
  `users_id` int(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `users_apps`
--

INSERT INTO `users_apps` (`id`, `name`, `client_id`, `client_secret`, `redirect_uri`, `users_id`) VALUES
(5, 'first-app', 'first-app', 'kQpj7I5Y4D4zVMpej7u8mh0ZH6BsVw24', '', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_apps_scopes`
--

CREATE TABLE IF NOT EXISTS `users_apps_scopes` (
`id` int(11) NOT NULL,
  `apps_id` int(11) NOT NULL,
  `scopes_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_authassignment`
--

CREATE TABLE IF NOT EXISTS `users_authassignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users_authassignment`
--

INSERT INTO `users_authassignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES
('admin', '1', NULL, 'N;'),
('root', '3', NULL, 'N;'),
('subscriber', '2', NULL, 'N;');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_authitem`
--

CREATE TABLE IF NOT EXISTS `users_authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users_authitem`
--

INSERT INTO `users_authitem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES
('admin', 2, 'Manager with broad domain system', '', 'N;'),
('root', 2, 'Powerful user =) for the developer and PM', '', 'N;'),
('subscriber', 2, 'Registered user and primarily focused on front (Client)', '', 'N;');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_authitemchild`
--

CREATE TABLE IF NOT EXISTS `users_authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_code_auth`
--

CREATE TABLE IF NOT EXISTS `users_code_auth` (
`id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `users_code_auth`
--

INSERT INTO `users_code_auth` (`id`, `users_id`, `code`, `created_at`) VALUES
(1, 1, 'H3NKm0z7TP36fmTbX2U6ko8S7C7eoQ8RIiyQETPu', '2014-10-23 03:59:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_code_auth_apps_scopes`
--

CREATE TABLE IF NOT EXISTS `users_code_auth_apps_scopes` (
`id` int(11) NOT NULL,
  `apps_id` int(11) NOT NULL,
  `scopes_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_config`
--

CREATE TABLE IF NOT EXISTS `users_config` (
`id` int(11) NOT NULL,
  `labelMenu` varchar(100) DEFAULT NULL,
  `showMenuFromAdmin` tinyint(1) NOT NULL DEFAULT '1',
  `loginInRegister` tinyint(1) NOT NULL DEFAULT '0',
  `sendPassword` tinyint(1) NOT NULL DEFAULT '0',
  `enableOAuth` tinyint(1) NOT NULL DEFAULT '1',
  `allowBasicOAuth` tinyint(1) NOT NULL DEFAULT '0',
  `facebookLoginRegister` tinyint(1) NOT NULL DEFAULT '0',
  `facebookAppId` varchar(30) DEFAULT NULL,
  `facebookSecret` varchar(100) DEFAULT NULL,
  `twitterLoginRegister` tinyint(1) NOT NULL DEFAULT '0',
  `twitterAppId` varchar(30) DEFAULT NULL,
  `twitterSecret` varchar(100) DEFAULT NULL,
  `copyWelcomeEmail` text NOT NULL,
  `copyForgotEmail` text NOT NULL,
  `copySendPassword` text NOT NULL,
  `copySendPasswordForgot` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `users_config`
--

INSERT INTO `users_config` (`id`, `labelMenu`, `showMenuFromAdmin`, `loginInRegister`, `sendPassword`, `enableOAuth`, `allowBasicOAuth`, `facebookLoginRegister`, `facebookAppId`, `facebookSecret`, `twitterLoginRegister`, `twitterAppId`, `twitterSecret`, `copyWelcomeEmail`, `copyForgotEmail`, `copySendPassword`, `copySendPasswordForgot`) VALUES
(1, 'Usuarios', 1, 0, 0, 1, 0, 0, '', '', 0, '', '', '<p>\r\n	     Hi {{name}}<span style="background-color: initial;">! </span>\r\n</p>\r\n<p>\r\n	We''re almost through the registration process just need to confirm your email\r\n</p>', '<p>\r\n	     Hi {{name}}! <br>\r\n</p>\r\n<p>\r\n	Almost you recover your password, please follow this link:\r\n</p>', '<p>\r\n     Hola {{name}}! <br>\r\n     <br>\r\n     Esta es tu nueva contraseña:<br>\r\n  <strong>Usuario:</strong><em>{{email}}</em><br>\r\n <strong>Password:</strong><em>{{password}}</em>\r\n</p>', '<p>\r\n   Hola {{name}}! <br>\r\n     <br>\r\n     Bienvenido a {{appname}} tus datos de ingreso son:<br>\r\n    <strong>Usuario:</strong><em>{{email}}</em><br>\r\n <strong>Password:</strong><em>{{password}}</em>\r\n</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_users`
--

CREATE TABLE IF NOT EXISTS `users_users` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `state_email` tinyint(1) NOT NULL DEFAULT '0',
  `img` varchar(255) DEFAULT NULL COMMENT 'type:img;label:Image',
  `registered` datetime NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `users_users`
--

INSERT INTO `users_users` (`id`, `password`, `email`, `name`, `lastname`, `username`, `state`, `state_email`, `img`, `registered`, `trash`) VALUES
(1, 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin@email.com', 'Admin', 'Admin', 'admin', 1, 1, NULL, '2013-10-30 02:39:34', 0),
(2, '12dea96fec20593566ab75692c9949596833adc9', 'user@email.com', 'User', 'Site', 'user', 1, 1, NULL, '2014-05-30 15:04:47', 0),
(3, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'root@email.com', 'Root', 'Root', 'root', 1, 1, NULL, '2014-05-30 15:04:47', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `backstage_items`
--
ALTER TABLE `backstage_items`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contact_messages`
--
ALTER TABLE `contact_messages`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `customers_items`
--
ALTER TABLE `customers_items`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gii_cruds`
--
ALTER TABLE `gii_cruds`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gii_models`
--
ALTER TABLE `gii_models`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `job_messages`
--
ALTER TABLE `job_messages`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `landing_elements`
--
ALTER TABLE `landing_elements`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `landing_elements_positions`
--
ALTER TABLE `landing_elements_positions`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `landing_elements_slider`
--
ALTER TABLE `landing_elements_slider`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `location_gps`
--
ALTER TABLE `location_gps`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `portfolio_items`
--
ALTER TABLE `portfolio_items`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `portfolio_text`
--
ALTER TABLE `portfolio_text`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `settings_settings`
--
ALTER TABLE `settings_settings`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `smpt_config`
--
ALTER TABLE `smpt_config`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `team_items`
--
ALTER TABLE `team_items`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `translation_message`
--
ALTER TABLE `translation_message`
 ADD PRIMARY KEY (`id`,`language`);

--
-- Indices de la tabla `translation_source_message`
--
ALTER TABLE `translation_source_message`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_access_tokens`
--
ALTER TABLE `users_access_tokens`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_apps`
--
ALTER TABLE `users_apps`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_apps_scopes`
--
ALTER TABLE `users_apps_scopes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_authassignment`
--
ALTER TABLE `users_authassignment`
 ADD PRIMARY KEY (`itemname`,`userid`);

--
-- Indices de la tabla `users_authitem`
--
ALTER TABLE `users_authitem`
 ADD PRIMARY KEY (`name`);

--
-- Indices de la tabla `users_authitemchild`
--
ALTER TABLE `users_authitemchild`
 ADD PRIMARY KEY (`parent`,`child`), ADD KEY `child` (`child`);

--
-- Indices de la tabla `users_code_auth`
--
ALTER TABLE `users_code_auth`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_code_auth_apps_scopes`
--
ALTER TABLE `users_code_auth_apps_scopes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_config`
--
ALTER TABLE `users_config`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_users`
--
ALTER TABLE `users_users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `backstage_items`
--
ALTER TABLE `backstage_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `contact_messages`
--
ALTER TABLE `contact_messages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `customers_items`
--
ALTER TABLE `customers_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `gii_cruds`
--
ALTER TABLE `gii_cruds`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT de la tabla `gii_models`
--
ALTER TABLE `gii_models`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT de la tabla `job_messages`
--
ALTER TABLE `job_messages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `landing_elements`
--
ALTER TABLE `landing_elements`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `landing_elements_positions`
--
ALTER TABLE `landing_elements_positions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `landing_elements_slider`
--
ALTER TABLE `landing_elements_slider`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `location_gps`
--
ALTER TABLE `location_gps`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `portfolio_categories`
--
ALTER TABLE `portfolio_categories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `portfolio_items`
--
ALTER TABLE `portfolio_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `portfolio_text`
--
ALTER TABLE `portfolio_text`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `settings_settings`
--
ALTER TABLE `settings_settings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `smpt_config`
--
ALTER TABLE `smpt_config`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `team_items`
--
ALTER TABLE `team_items`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `users_access_tokens`
--
ALTER TABLE `users_access_tokens`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT de la tabla `users_apps`
--
ALTER TABLE `users_apps`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `users_apps_scopes`
--
ALTER TABLE `users_apps_scopes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users_code_auth`
--
ALTER TABLE `users_code_auth`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `users_code_auth_apps_scopes`
--
ALTER TABLE `users_code_auth_apps_scopes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users_config`
--
ALTER TABLE `users_config`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `users_users`
--
ALTER TABLE `users_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
