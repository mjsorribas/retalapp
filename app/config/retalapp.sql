-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 30-10-2014 a las 20:59:39
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `retalapp`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `landing_contact_info`
--

CREATE TABLE IF NOT EXISTS `landing_contact_info` (
`id` int(11) NOT NULL,
  `call_to_action` text,
  `email` varchar(255) DEFAULT NULL COMMENT 'type:email',
  `phone` varchar(100) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL COMMENT 'type:link',
  `google_plus` varchar(255) DEFAULT NULL COMMENT 'type:link',
  `twitter` varchar(255) DEFAULT NULL COMMENT 'type:link',
  `linkedin` varchar(255) DEFAULT NULL COMMENT 'type:link',
  `dribbble` varchar(255) DEFAULT NULL COMMENT 'type:link',
  `youtube` varchar(255) DEFAULT NULL COMMENT 'type:link',
  `pinterest` varchar(255) DEFAULT NULL COMMENT 'type:link',
  `skype` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL COMMENT 'type:link',
  `github` varchar(255) DEFAULT NULL COMMENT 'type:link'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `landing_contact_info`
--

INSERT INTO `landing_contact_info` (`id`, `call_to_action`, `email`, `phone`, `facebook`, `google_plus`, `twitter`, `linkedin`, `dribbble`, `youtube`, `pinterest`, `skype`, `instagram`, `github`) VALUES
(1, 'LET''S GET STARTED', 'info@yourcompani.com', '(571) 999-999-999', 'https://www.facebook.com/', 'https://plus.google.com/', 'https://twitter.com/', 'https://www.linkedin.com/', '', 'https://www.youtube.com', '', '', '', '');

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
(1, '1414695925.png', 'Header', 'landing', 'menu-1', 1, 1),
(2, '1414695945.png', 'Slider', 'landing', 'header-slider-1', 2, 2),
(3, '1414695958.png', 'Footer', 'landing', 'footer-1', 3, 1),
(4, '1414695972.png', 'Footer Copirigts', 'landing', 'footer-small-1', 3, 2);

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
  `image` varchar(100) DEFAULT NULL COMMENT 'type:img',
  `title` varchar(100) NOT NULL,
  `text` text NOT NULL,
  `orden_id` int(11) NOT NULL,
  `link` varchar(100) NOT NULL COMMENT 'type:link'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `landing_elements_slider`
--

INSERT INTO `landing_elements_slider` (`id`, `image`, `title`, `text`, `orden_id`, `link`) VALUES
(1, '', 'This is a theme made for Start Bootstrap', 'Free Bootstrap Themes & Templates', 1, 'http://startbootstrap.com/');

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
(1, 'MY APP', 'Site, Blog, webapp', 'Site, Blog, webapp', 'admin@email.com', 0, '{"data":[{"type":"heading","data":{"text":"Coming Soon"}},{"type":"text","data":{"text":"Please be patient\\n"}}]}');

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
(1, 0, '', NULL, '', '');

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
-- Indices de la tabla `landing_contact_info`
--
ALTER TABLE `landing_contact_info`
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
-- AUTO_INCREMENT de la tabla `gii_cruds`
--
ALTER TABLE `gii_cruds`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `gii_models`
--
ALTER TABLE `gii_models`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `landing_contact_info`
--
ALTER TABLE `landing_contact_info`
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
