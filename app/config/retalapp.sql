-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-11-2014 a las 20:07:03
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `gii_models`
--

INSERT INTO `gii_models` (`id`, `tableName`, `modelClass`, `moduleName`, `template`, `created_at`) VALUES
(1, 'users_users', 'UsersUsers', 'users', 'default', '2014-11-11 16:54:57');

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
  `id` int(11) NOT NULL,
  `language` varchar(6) NOT NULL,
  `translation` text NOT NULL,
`id_key` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=834 ;

--
-- Volcado de datos para la tabla `translation_message`
--

INSERT INTO `translation_message` (`id`, `language`, `translation`, `id_key`) VALUES
(2, 'en_us', 'Hello', 4),
(2, 'es', 'Hola', 5),
(3, 'es', 'Error al enviar el correo!!', 8),
(3, 'en_us', 'Error sending email!!', 9),
(4, 'es', 'Hemos enviado una nueva contraseña a su correo electrónico', 10),
(4, 'en_us', 'We have sent a new password to your email', 11),
(5, 'es', 'Hemos enviado las instrucciones a su correo electrónico', 12),
(5, 'en_us', 'We have sent the instructions to your email', 13),
(6, 'es', 'Perfil actualizado correctamente', 14),
(6, 'en_us', 'Profile updated successfully', 15),
(7, 'es', 'Inicio de sesión es necesario.', 16),
(7, 'en_us', 'Login is required', 17),
(8, 'es', 'Petición inválida', 18),
(8, 'en_us', 'Invalid request', 19),
(9, 'es', 'Contraseña actualizada correctamente.', 20),
(9, 'en_us', 'Correctly updated password.', 21),
(10, 'es', 'Se ha presentado un inconveniente y no se pudo verificar su correo.', 22),
(10, 'en_us', 'There has been an inconvenience and could not verify your email.', 23),
(11, 'es', 'Hola {name}!! Bienvenido a {appName}', 24),
(11, 'en_us', 'Hi {name}!! Welcome a to {appName}', 25),
(12, 'es', 'Teléfono', 26),
(12, 'en_us', 'Phone', 27),
(13, 'es', 'Por favor confirme su contraseña', 28),
(13, 'en_us', 'Please confirm your password', 29),
(14, 'es', 'Confirmar Contraseña', 30),
(14, 'en_us', 'Confirm Password', 31),
(15, 'es', 'Nueva clave', 32),
(15, 'en_us', 'New Password', 33),
(16, 'es', 'Desafortunadamente el archivo seleccionado no es el que esperabamos. Solo son permitidos archivos de extención <strong>{extensions}</strong>.', 34),
(16, 'en_us', 'Unfortunately the file(s) you selected weren''t the type we were expecting. Only {extensions} files are allowed.', 35),
(17, 'es', '{file} es muy grande, el máximo permitido es {sizeLimit}.', 36),
(17, 'en_us', '{file} is too large, maximum file size is {sizeLimit}.', 37),
(18, 'es', '{file} es muy pequeño, el tamaño mínimo debería ser {minSizeLimit}.', 38),
(18, 'en_us', '{file} is too small, minimum file size is {minSizeLimit}.', 39),
(19, 'es', '{file} esta vacío, por favor seleccione un archivo diferente.', 40),
(19, 'en_us', '{file} is empty, please select files again without it.', 41),
(20, 'es', 'El archivo comenzo a subir, si cierras ahora la carga sera cancelada.', 42),
(20, 'en_us', 'The files are being uploaded, if you leave now the upload will be cancelled.', 43),
(21, 'es', 'Tu email <strong>{attribute}</strong> ha sido deshabilitado', 44),
(21, 'en_us', 'Your email <strong>{attribute}</strong> has been desabled', 45),
(22, 'es', 'Tu email no ha sido verificado aún, porfavor da click {here} para reenviar el correo de verificación.', 46),
(22, 'en_us', 'Your email dosen''t has been verified yet, please click {here} for resend email.', 47),
(23, 'es', 'El correo <strong>{value}</strong> no está registrado en nuestra base de datos', 48),
(23, 'en_us', 'Your email <strong>{value}</ strong> is not registered in our database', 49),
(24, 'es', 'Texto correo bienvenida', 50),
(24, 'en_us', 'Welcome email copies', 51),
(25, 'es', 'Texto correo password', 52),
(25, 'en_us', 'Password email copies', 53),
(26, 'es', 'REENVIADO', 54),
(26, 'en_us', 'RESENDED', 55),
(27, 'es', 'Aquí', 56),
(27, 'en_us', 'Here', 57),
(28, 'es', 'Email no encontrado', 58),
(28, 'en_us', 'Email not found', 59),
(29, 'es', 'Hemos reenviado a tu correo <strong>{email}</strong> un enlace para confirmarlo, si no está en la bandeja de entrada por favor revisa tu bandeja de spam', 60),
(29, 'en_us', 'We have forwarded your mail <strong>{email}</strong> a link to confirm, if it is not in your inbox please check your spam folder', 61),
(30, 'es', 'Tu email <strong>{email}</strong> no fue encontrado en nuestra base de datos', 62),
(30, 'en_us', 'Your email <strong>{email}</strong> not found on owr database', 63),
(31, 'es', 'Texto de correo de bienvenida', 64),
(31, 'en_us', 'Copy Welcome Email', 65),
(32, 'es', 'Texto de correo olvidé contraseña', 66),
(32, 'en_us', 'Copy Forgot Email', 67),
(33, 'es', 'Texto de correo registro con password', 68),
(33, 'en_us', 'Copy Send Password', 69),
(34, 'es', 'Texto de correo [Olvidé password] envío de password', 70),
(34, 'en_us', 'Copy Send Password Forgot', 71),
(35, 'es', 'Confirmar correo', 72),
(35, 'en_us', 'Confirm email', 73),
(36, 'es', 'Ir a cambiar contraseña', 74),
(36, 'en_us', 'Go to change password', 75),
(37, 'es', 'Tus datos de ingreso en', 76),
(37, 'en_us', 'Your credentials', 77),
(38, 'es', 'Confirmar Registro en', 78),
(38, 'en_us', 'Confirm register on', 79),
(39, 'es', 'Recuperar contraseña', 80),
(39, 'en_us', 'Recover password', 81),
(40, 'es', 'Texto de correos', 82),
(40, 'en_us', 'Email Copies', 83),
(41, 'es', 'La contraseña es demasiado débil debe tener al menos 6 caracteres', 84),
(41, 'en_us', 'Your password is too weak! must have at least 6 characters', 85),
(42, 'es', 'Título', 86),
(42, 'en_us', 'Title', 87),
(43, 'es', 'Palabras clave', 88),
(43, 'en_us', 'Keywords', 89),
(44, 'es', 'Descripción', 90),
(44, 'en_us', 'Description', 91),
(45, 'es', 'Email administrador', 92),
(45, 'en_us', 'Admin Email', 93),
(46, 'es', 'Poner la página fuera de línea', 94),
(46, 'en_us', 'Offline', 95),
(47, 'es', 'Mensaje Fuera de línea', 96),
(47, 'en_us', 'Editor Offline Message', 97),
(48, 'es', 'ha sido borrado con éxito', 98),
(48, 'en_us', 'has been deleted successfully', 99),
(49, 'es', 'ha sido actualizado con éxito', 100),
(49, 'en_us', 'has been updated successfully', 101),
(50, 'es', 'ha sido creado con éxito', 102),
(50, 'en_us', 'has been created successfully', 103),
(51, 'es', 'Error al conectarse co los datos. Por favor intente mas tarde', 104),
(51, 'en_us', 'Error to database connection. Please try later', 105),
(52, 'es', '404 El recurso solicitado {id} no existe o fué eliminado', 106),
(52, 'en_us', 'The resourse requested {id} does not exist or was deleted', 107),
(53, 'es', '404 El recurso solicitado no existe', 108),
(53, 'en_us', 'The resourse requested does not exist', 109),
(54, 'es', '404 Usted no tiene acceso para realizar esta acción', 110),
(54, 'en_us', 'You do not have access to take this action', 111),
(55, 'es', 'Errores de validación', 112),
(55, 'en_us', 'Form validation errors', 113),
(56, 'es', '100 Continue', 114),
(56, 'en_us', '100 Continue', 115),
(57, 'es', '101 Switching Protocols', 116),
(57, 'en_us', '101 Switching Protocols', 117),
(58, 'es', '200 OK', 118),
(58, 'en_us', '200 OK', 119),
(59, 'es', '201 Created', 120),
(59, 'en_us', '201 Created', 121),
(60, 'es', '202 Accepted', 122),
(60, 'en_us', '202 Accepted', 123),
(61, 'es', '203 Non-Authoritative Information', 124),
(61, 'en_us', '203 Non-Authoritative Information', 125),
(62, 'es', '204 No Content', 126),
(62, 'en_us', '204 No Content', 127),
(63, 'es', '205 Reset Content', 128),
(63, 'en_us', '205 Reset Content', 129),
(64, 'es', '206 Partial Content', 130),
(64, 'en_us', '206 Partial Content', 131),
(65, 'es', '300 Multiple Choices', 132),
(65, 'en_us', '300 Multiple Choices', 133),
(66, 'es', '301 Moved Permanently', 134),
(66, 'en_us', '301 Moved Permanently', 135),
(67, 'es', '302 Found', 136),
(67, 'en_us', '302 Found', 137),
(68, 'es', '303 See Other', 138),
(68, 'en_us', '303 See Other', 139),
(69, 'es', '304 Not Modified', 140),
(69, 'en_us', '304 Not Modified', 141),
(70, 'es', '305 Use Proxy', 142),
(70, 'en_us', '305 Use Proxy', 143),
(71, 'es', '306 (Unused)', 144),
(71, 'en_us', '306 (Unused)', 145),
(72, 'es', '307 Temporary Redirect', 146),
(72, 'en_us', '307 Temporary Redirect', 147),
(73, 'es', '400 Bad Request', 148),
(73, 'en_us', '400 Bad Request', 149),
(74, 'es', '401 Unauthorized', 150),
(74, 'en_us', '401 Unauthorized', 151),
(75, 'es', '402 Payment Required', 152),
(75, 'en_us', '402 Payment Required', 153),
(76, 'es', '403 Forbidden', 154),
(76, 'en_us', '403 Forbidden', 155),
(77, 'es', '404 Not Found', 156),
(77, 'en_us', '404 Not Found', 157),
(78, 'es', '405 Method Not Allowed', 158),
(78, 'en_us', '405 Method Not Allowed', 159),
(79, 'es', '406 Not Acceptable', 160),
(79, 'en_us', '406 Not Acceptable', 161),
(80, 'es', '407 Proxy Authentication Required', 162),
(80, 'en_us', '407 Proxy Authentication Required', 163),
(81, 'es', '408 Request Timeout', 164),
(81, 'en_us', '408 Request Timeout', 165),
(82, 'es', '409 Conflict', 166),
(82, 'en_us', '409 Conflict', 167),
(83, 'es', '410 Gone', 168),
(83, 'en_us', '410 Gone', 169),
(84, 'es', '411 Length Required', 170),
(84, 'en_us', '411 Length Required', 171),
(85, 'es', '412 Precondition Failed', 172),
(85, 'en_us', '412 Precondition Failed', 173),
(86, 'es', '413 Request Entity Too Large', 174),
(86, 'en_us', '413 Request Entity Too Large', 175),
(87, 'es', '414 Request-URI Too Long', 176),
(87, 'en_us', '414 Request-URI Too Long', 177),
(88, 'es', '415 Unsupported Media Type', 178),
(88, 'en_us', '415 Unsupported Media Type', 179),
(89, 'es', '416 Requested Range Not Satisfiable', 180),
(89, 'en_us', '416 Requested Range Not Satisfiable', 181),
(90, 'es', '417 Expectation Failed', 182),
(90, 'en_us', '417 Expectation Failed', 183),
(91, 'es', '418 I''m a teapot', 184),
(91, 'en_us', '418 I''m a teapot', 185),
(92, 'es', '422 Unprocessable Entity', 186),
(92, 'en_us', '422 Unprocessable Entity', 187),
(93, 'es', '423 Locked', 188),
(93, 'en_us', '423 Locked', 189),
(94, 'es', '500 Internal Server Error', 190),
(94, 'en_us', '500 Internal Server Error', 191),
(95, 'es', '501 Not Implemented', 192),
(95, 'en_us', '501 Not Implemented', 193),
(96, 'es', '502 Bad Gateway', 194),
(96, 'en_us', '502 Bad Gateway', 195),
(97, 'es', '503 Service Unavailable', 196),
(97, 'en_us', '503 Service Unavailable', 197),
(98, 'es', '504 Gateway Timeout', 198),
(98, 'en_us', '504 Gateway Timeout', 199),
(99, 'es', '505 HTTP Version Not Supported', 200),
(99, 'en_us', '505 HTTP Version Not Supported', 201),
(100, 'es', '¿Este registro no se puede borrar?', 202),
(100, 'en_us', 'You cannot delete this record', 203),
(101, 'es', '¿Está seguro que desea <strong>BORRAR</strong> el registro seleccionado?', 204),
(101, 'en_us', 'Are you sure you want to delete this record?', 205),
(102, 'es', 'Ver todas', 206),
(102, 'en_us', 'View all', 207),
(103, 'es', 'Usuarios', 208),
(103, 'en_us', 'Users system', 209),
(104, 'es', 'Generales', 210),
(104, 'en_us', 'Generals', 211),
(105, 'es', 'Aplicaciones', 212),
(105, 'en_us', 'Applications', 213),
(106, 'es', 'Configuraciones generales', 214),
(106, 'en_us', 'Generals settings', 215),
(107, 'es', 'Perfiles del sistema', 216),
(107, 'en_us', 'Profiles system', 217),
(108, 'es', 'Texto de bienvenida', 218),
(108, 'en_us', 'Welcome text', 219),
(109, 'es', 'Configuraciones', 220),
(109, 'en_us', 'Settings', 221),
(110, 'es', 'Configuraciones generales', 222),
(110, 'en_us', 'General Settings', 223),
(111, 'es', 'Datos guardados correctamente', 224),
(111, 'en_us', 'The record was saved successfully', 225),
(112, 'es', 'Tipo', 226),
(112, 'en_us', 'Type', 227),
(113, 'es', 'Conectar con', 228),
(113, 'en_us', 'Connect With', 229),
(114, 'es', 'Ingreso y/o Registro', 230),
(114, 'en_us', 'Login/Register', 231),
(115, 'es', 'Opciones del menú', 232),
(115, 'en_us', 'Menu Options', 233),
(116, 'es', 'Mostrar menu usuarios a perfil admin', 234),
(116, 'en_us', 'Show Menu From Admin', 235),
(117, 'es', 'Nombre del menu usuarios', 236),
(117, 'en_us', 'Label Menu', 237),
(118, 'es', 'Loguear al usuario una vez se registra', 238),
(118, 'en_us', 'Login In Register', 239),
(119, 'es', 'Enviar password', 240),
(119, 'en_us', 'Send Password', 241),
(120, 'es', 'Habilitar OAuth', 242),
(120, 'en_us', 'Enable Oauth', 243),
(121, 'es', 'Permitir basic OAuth', 244),
(121, 'en_us', 'Allow Basic Oauth', 245),
(122, 'es', 'Habilitar Login/Registro con Facebook', 246),
(122, 'en_us', 'Facebook Login Register', 247),
(123, 'es', 'Habilitar Login/Registro con Twitter', 248),
(123, 'en_us', 'Twitter Login Register', 249),
(124, 'es', 'Borrar', 250),
(124, 'en_us', 'Delete', 251),
(125, 'es', 'Sin definir', 252),
(125, 'en_us', 'Empty', 253),
(126, 'es', 'Más info', 254),
(126, 'en_us', 'More info', 255),
(127, 'es', 'Notificación desde', 256),
(127, 'en_us', 'Notification from', 257),
(128, 'es', 'Acepto Términos y condiciones.', 258),
(128, 'en_us', 'I accept terms and conditions.', 259),
(129, 'es', 'Usuario o email', 260),
(129, 'en_us', 'Username or email', 261),
(130, 'es', 'Contraseña', 262),
(130, 'en_us', 'Password', 263),
(131, 'es', 'Clave actual', 264),
(131, 'en_us', 'Old Password', 265),
(132, 'es', 'Confirmar nueva clave', 266),
(132, 'en_us', 'Confirm your new password', 267),
(133, 'es', 'Ingresar', 268),
(133, 'en_us', 'Login', 269),
(134, 'es', 'Inicio', 270),
(134, 'en_us', 'Home', 271),
(135, 'es', 'Apps', 272),
(135, 'en_us', 'Apps', 273),
(136, 'es', '¿Que es una retalapp?', 274),
(136, 'en_us', 'What''s a retalapp?', 275),
(137, 'es', 'Encuentra la <em>Retalapps</em> de tu proyecto', 276),
(137, 'en_us', 'Find <em> Retalapps </em> of your project', 277),
(138, 'es', 'Recibes un proyecto base con código limpio y mantenible', 278),
(138, 'en_us', 'You get a project basis with clean code and maintainable', 279),
(139, 'es', 'Descarga tu <em>Retalapps</em> de inmediato con su respectiva documentación', 280),
(139, 'en_us', 'Get <em> Retalapps </em> immediately with their documentation', 281),
(140, 'es', 'Te encargas de desarrollar lo que realmente importa de tu proyecto', 282),
(140, 'en_us', 'You take care of what really matters to develop in your project', 283),
(141, 'es', 'Es una aplicación con funcionalidades básicas, con esto no arrancas tu timeline desde cero.', 284),
(141, 'en_us', 'It''s an application with basic functionality, you don''t need boot your timeline from scratch.', 285),
(142, 'es', 'Buscar ahora', 286),
(142, 'en_us', 'Search now', 287),
(143, 'es', 'Menú padre', 288),
(143, 'en_us', 'Parent menu', 289),
(144, 'es', 'Cerrar', 290),
(144, 'en_us', 'Close', 291),
(145, 'es', 'Ver', 292),
(145, 'en_us', 'View', 293),
(146, 'es', 'Crear', 294),
(146, 'en_us', 'Create', 295),
(147, 'es', 'Guardando', 296),
(147, 'en_us', 'Saving', 297),
(148, 'es', 'Actualizar', 298),
(148, 'en_us', 'Update', 299),
(149, 'es', 'Atras', 300),
(149, 'en_us', 'Back', 301),
(150, 'es', 'Por ejemplo:', 302),
(150, 'en_us', 'e.g.', 303),
(151, 'es', 'Usuarios', 304),
(151, 'en_us', 'Users', 305),
(152, 'es', 'Nombre de usuario', 306),
(152, 'en_us', 'Username', 307),
(153, 'es', 'Apellido', 308),
(153, 'en_us', 'Lastname', 309),
(154, 'es', 'Estado', 310),
(154, 'en_us', 'State', 311),
(155, 'es', 'Imágen', 312),
(155, 'en_us', 'Img', 313),
(156, 'es', 'Registrado', 314),
(156, 'en_us', 'Registered', 315),
(157, 'es', 'Estado de Correo', 316),
(157, 'en_us', 'State Email', 317),
(158, 'es', 'Imágen', 318),
(158, 'en_us', 'Picture', 319),
(159, 'es', 'Crear Usuario', 320),
(159, 'en_us', 'Create Users', 321),
(160, 'es', 'El perfil fue actualizado correctamente', 322),
(160, 'en_us', 'The profile was successfully updated', 323),
(161, 'es', 'Mensaje', 324),
(161, 'en_us', 'Message', 325),
(162, 'es', 'Asunto', 326),
(162, 'en_us', 'Subject', 327),
(163, 'es', 'Correo', 328),
(163, 'en_us', 'Email', 329),
(164, 'es', 'Nombre', 330),
(164, 'en_us', 'Name', 331),
(165, 'es', 'Mantenerme logueado', 332),
(165, 'en_us', 'Remember me next time', 333),
(166, 'es', 'Código de verificación', 334),
(166, 'en_us', 'Verification Code', 335),
(167, 'es', 'Usuario o contraseña incorrecto.', 336),
(167, 'en_us', 'Incorrect username or password.', 337),
(168, 'es', 'Por favor ingrese su usuario o email y contraseña.', 338),
(168, 'en_us', 'Please fill out the following form with your login credentials:', 339),
(169, 'es', 'Tu correo no fue verificado aun, por favor revisa entre tus corres recibidos y en el spam el correo de verificacion que hemos enviado, o intenta registrarte nuevamente', 340),
(169, 'en_us', 'Your email was not verified yet, please check between your run and spam received the verification email we''ve sent, or try signing up again', 341),
(170, 'es', 'Contátenos', 342),
(170, 'en_us', 'Contact Us', 343),
(171, 'es', 'Enviar mensaje', 344),
(171, 'en_us', 'Send message', 345),
(172, 'es', 'Déjanos un mensaje y nos pondremos en contacto lo antes posible', 346),
(172, 'en_us', 'Drop us a line and we will contact you as soon as possible', 347),
(173, 'es', 'Por favor, introduzca las letras que se muestran en la imagen de arriba. <br/> Las letras no distinguen entre mayúsculas y minúsculas.', 348),
(173, 'en_us', 'Please enter the letters shown in the picture above. <br/> Letters are not case sensitive.', 349),
(174, 'es', 'Inactivo', 350),
(174, 'en_us', 'Disabled', 351),
(175, 'es', 'Activo', 352),
(175, 'en_us', 'Enabled', 353),
(176, 'es', 'Operaciones', 354),
(176, 'en_us', 'Operations', 355),
(177, 'es', 'Listado', 356),
(177, 'en_us', 'List', 357),
(178, 'es', 'Administrar', 358),
(178, 'en_us', 'Manage', 359),
(179, 'es', 'Guardar', 360),
(179, 'en_us', 'Save', 361),
(180, 'es', 'Guardar el numero {nro}', 362),
(180, 'en_us', 'Save # {nro}', 363),
(181, 'es', 'La clase de registro activo "{class}" no tiene un ámbito llamado "{scope}".', 364),
(181, 'en_us', 'Active record class "{class}" does not have a scope named "{scope}".', 365),
(182, 'es', 'La ruta base "{path}" no es un directorio válido', 366),
(182, 'en_us', 'Base path "{path}" is not a valid directory.', 367),
(183, 'es', 'CEAcceleratorCache requiere la extensión eAccelerator de PHP para ser cargada, activada o cargada con la opción "--with-eaccelerator-shared-memory".', 368),
(183, 'en_us', 'CEAcceleratorCache requires PHP eAccelerator extension to be loaded, enabled or compiled with the "--with-eaccelerator-shared-memory" option.', 369),
(184, 'es', 'CZendDataCache requiere la extensión PHP Zend Data Cache para poder ser cargada.', 370),
(184, 'en_us', 'CZendDataCache requires PHP Zend Data Cache extension to be loaded.', 371),
(185, 'es', 'La columna "{column}" no existe en la tabla "{table}".', 372),
(185, 'en_us', 'Column "{column} does not exist in table "{table}".', 373),
(186, 'es', 'El nombre de la columna debe ser una cadena o un array.', 374),
(186, 'en_us', 'Column name must be either a string or an array.', 375),
(187, 'es', 'La tabla "{table}" no existe.', 376),
(187, 'en_us', 'Table "{table}" does not exist.', 377),
(188, 'es', 'La relación STAT "{name}" no puede tener relaciones hijas.', 378),
(188, 'en_us', 'The STAT relation "{name}" cannot have child relations.', 379),
(189, 'es', 'La ruta del módulo "{path}" no es un directorio válido.', 380),
(189, 'en_us', 'The module path "{path}" is not a valid directory.', 381),
(190, 'es', 'La relación "{relation}" en la clase de registro activo "{class}" está especificada correctamente. La tabla de unión o join "{joinTable}" dada en la llave foránea no se encuentra en la base de datos.', 382),
(190, 'en_us', 'The relation "{relation}" in active record class "{class}" is not specified correctly. The join table "{joinTable}" given in the foreign key cannot be found in the database.', 383),
(191, 'es', 'La relación "{relation}" en la clase de registro activo "{class}" es especificada con una llave foránea "{key}" que no apunta a la tabla padre "{table}".', 384),
(191, 'en_us', 'The relation "{relation}" in active record class "{class}" is specified with a foreign key "{key}" that does not point to the parent table "{table}".', 385),
(192, 'es', 'La relación "{relation}" en la clase de registro activo "{class}" es especificada con una llave foránea inválida "{key}". No hay tal columna en la tabla "{table}".', 386),
(192, 'en_us', 'The relation "{relation}" in active record class "{class}" is specified with an invalid foreign key "{key}". There is no such column in the table "{table}".', 387),
(193, 'es', 'La relación "{relation}" en la clase de registro activo "{class}" es especificada con una llave foránea inválida. Las columnas en la llave deben coincidir con las llaves primarias de la tabla "{table}".', 388),
(193, 'en_us', 'The relation "{relation}" in active record class "{class}" is specified with an invalid foreign key. The columns in the key must match the primary keys of the table "{table}".', 389),
(194, 'es', 'El valor para la columna "{column}" no es suministrado cuando se consulta la tabla "{table}".', 390),
(194, 'en_us', 'The value for the column "{column}" is not supplied when querying the table "{table}".', 391),
(195, 'es', 'No es posible resolver la solicitud "{route}"', 392),
(195, 'en_us', 'Unable to resolve the request "{route}".', 393),
(196, 'es', '{attribute} "{value}" es inválido.', 394),
(196, 'en_us', '{attribute} "{value}" is invalid.', 395),
(197, 'es', '{class} no tiene un método llamado "{name}".', 396),
(197, 'en_us', '{class} does not have a method named "{name}".', 397),
(198, 'es', '{class} no tiene el atributo "{attribute}', 398),
(198, 'en_us', '{class} does not have attribute "{attribute}".', 399),
(199, 'es', '{class} no tiene la relación "{name}".', 400),
(199, 'en_us', '{class} does not have relation "{name}".', 401),
(200, 'es', '{class} no soporta traer todos los nombres de las tablas.', 402),
(200, 'en_us', '{class} does not support fetching all table names.', 403),
(201, 'es', 'CDbLogRoute requiere la tabla "{table}" de la base de datos para guardar los mensajes de log.', 404),
(201, 'en_us', 'CDbLogRoute requires database table "{table}" to store log messages.', 405),
(202, 'es', 'CMemCache requiere que la extensión memcache de PHP se encuentre cargada.', 406),
(202, 'en_us', 'CMemCache requires PHP memcache extension to be loaded.', 407),
(203, 'es', 'Tabla "{table}" no contiene definida una columna primaria.', 408),
(203, 'en_us', 'Table "{table}" does not have a primary key defined.', 409),
(204, 'es', 'La propiedad "view" es requerida.', 410),
(204, 'en_us', 'The "view" property is required.', 411),
(205, 'es', 'El asset "{asset} a ser publicado no existe.', 412),
(205, 'en_us', 'The asset "{asset}" to be pulished does not exist.', 413),
(206, 'es', 'La columna "{column}" no es una llave foránea en la tabla "{table}"', 414),
(206, 'en_us', 'The column "{column}" is not a foreign key in table "{table}".', 415),
(207, 'es', 'El controlador "{controller}" solicitado es inexistente.', 416),
(207, 'en_us', 'The requested controller "{controller}" does not exist.', 417),
(208, 'es', 'El valor de la clave primaria "{key}" no ha sido otorgado cuando se consulto la tabla "{table}".', 418),
(208, 'en_us', 'The value for the primary key "{key}" is not supplied when querying the table "{table}".', 419),
(209, 'es', 'No se ha podido encontrar la vista del decorador "{view}".', 420),
(209, 'en_us', 'Unable to find the decorator view "{view}".', 421),
(210, 'es', 'No se puede encotrar el item de la lista.', 422),
(210, 'en_us', 'Unable to find the list item.', 423),
(211, 'es', '{class} no contiene el atributo "{name}".', 424),
(211, 'en_us', '{class} does not have attribute "{name}".', 425),
(212, 'es', '"{path}" no es un directorio válido.', 426),
(212, 'en_us', '"{path}" is not a valid directory.', 427),
(213, 'es', '&lt; Anterior', 428),
(213, 'en_us', '&lt; Previous', 429),
(214, 'es', '&lt;&lt; Primero', 430),
(214, 'en_us', '&lt;&lt; First', 431),
(215, 'es', 'Active Record requiere un componente de aplicación "db" del tipo CDbConnection.', 432),
(215, 'en_us', 'Active Record requires a "db" CDbConnection application component.', 433),
(216, 'es', 'Active record "{class}" contiene una configuración de relación inválida "{relation}". La misma debe especificar el tipo de relación, la clase active record relacionada y la clave foranea.', 434),
(216, 'en_us', 'Active record "{class}" has an invalid configuration for relation "{relation}". It must specify the relation type, the related active record class and the foreign key.', 435),
(217, 'es', 'Active record "{class}" esta intentando de seleccionar una columna inválida "{column}". Nota: La columna puede existir en la base o ser una expresion con alias.', 436),
(217, 'en_us', 'Active record "{class}" is trying to select an invalid column "{column}". Note, the column must exist in the table or be an expression with alias.', 437),
(218, 'es', 'Alias "{alias}" es inválido. Verifique que el mismo apunta a un directorio o archivo exisitente.', 438),
(218, 'en_us', 'Alias "{alias}" is invalid. Make sure it points to an existing directory or file.', 439),
(219, 'es', 'Ruta base de la aplicación "{path}" no es un directorio válido.', 440),
(219, 'en_us', 'Application base path "{path}" is not a valid directory.', 441),
(220, 'es', 'Ruta de runtime de aplicación "{path}" es inválida. Verifique que sea un directorio con permisos de escritura por el proceso que corre el servidor Web.', 442),
(220, 'en_us', 'Application runtime path "{path}" is not valid. Please make sure it is a directory writable by the Web server process.', 443),
(221, 'es', 'Elemento de autorización "{item}" ha sido asignado al usuario "{user}".', 444),
(221, 'en_us', 'Authorization item "{item}" has already been assigned to user "{user}".', 445),
(222, 'es', 'CApcCache requiere que la extensión apc de PHP se encuentre cargada.', 446),
(222, 'en_us', 'CApcCache requires PHP apc extension to be loaded.', 447),
(223, 'es', 'CAssetManager.basePath "{path}" es inválido. Verifique que el directorio exista y tenga permisos de escritura por el proceso que corre el servidor Web.', 448),
(223, 'en_us', 'CAssetManager.basePath "{path}" is invalid. Please make sure the directory exists and is writable by the Web server process.', 449),
(224, 'es', 'CCacheHttpSession.cacheID es inválido. Asegurese que "{id}" refiere a un componente de aplicación de cache válido.', 450),
(224, 'en_us', 'CCacheHttpSession.cacheID is invalid. Please make sure "{id}" refers to a valid cache application component.', 451),
(225, 'es', 'CCaptchaValidator.action "{id}" es inválido. No se há podido encontrar dicha acción en el controlador actual.', 452),
(225, 'en_us', 'CCaptchaValidator.action "{id}" is invalid. Unable to find such an action in the current controller.', 453),
(226, 'es', 'CDbAuthManager.connectionID "{id}" es inválido. Asegurese que se refiere a un ID de un componente de aplicación CDbConnection.', 454),
(226, 'en_us', 'CDbAuthManager.connectionID "{id}" is invalid. Please make sure it refers to the ID of a CDbConnection application component.', 455),
(227, 'es', 'CDbCache.connectionID "{id}" es inválido. Asegurese que refiera a un ID de un componente de aplicación CDbConnection.', 456),
(227, 'en_us', 'CDbCache.connectionID "{id}" is invalid. Please make sure it refers to the ID of a CDbConnection application component.', 457),
(228, 'es', 'CDbCacheDependency.sql no puede ser vacío.', 458),
(228, 'en_us', 'CDbCacheDependency.sql cannot be empty.', 459),
(229, 'es', 'CDbCommand falló al ejecutar la sentencia SQL: {error}', 460),
(229, 'en_us', 'CDbCommand failed to execute the SQL statement: {error}', 461),
(230, 'es', 'CDbCommand falló al preparar la sentencia SQL: {error}', 462),
(230, 'en_us', 'CDbCommand failed to prepare the SQL statement: {error}', 463),
(231, 'es', 'CDbConnection no soporta la lectura del esquema para la base de datos {driver}.', 464),
(231, 'en_us', 'CDbConnection does not support reading schema for {driver} database.', 465),
(232, 'es', 'CDbConnection falló al abrir la conexion a la base de datos: {error}', 466),
(232, 'en_us', 'CDbConnection failed to open the DB connection: {error}', 467),
(233, 'es', 'CDbConnection se encuentra inactiva y no puede realizar operaciones de BD.', 468),
(233, 'en_us', 'CDbConnection is inactive and cannot perform any DB operations.', 469),
(234, 'es', 'CDbConnection.connectionString no puede ser vacío', 470),
(234, 'en_us', 'CDbConnection.connectionString cannot be empty.', 471),
(235, 'es', 'CDbDataReader no puede volver atras ya que es un lector de un avance únicamente.', 472),
(235, 'en_us', 'CDbDataReader cannot rewind. It is a forward-only reader.', 473),
(236, 'es', 'CDbHttpSession.connectionID "{id}" es inválido. Asegurese que refiera a un ID de un componente de aplicación CDbConnection', 474),
(236, 'en_us', 'CDbHttpSession.connectionID "{id}" is invalid. Please make sure it refers to the ID of a CDbConnection application component.', 475),
(237, 'es', 'CDbLogRoute.connectionID "{id}" no refiere a un componente de aplicación CDbConnection válido.', 476),
(237, 'en_us', 'CDbLogRoute.connectionID "{id}" does not point to a valid CDbConnection application component.', 477),
(238, 'es', 'CDbMessageSource.connectionID es inválido. Asegurese que "{id}" refiera a un componente de aplicación de base de datos válido.', 478),
(238, 'en_us', 'CDbMessageSource.connectionID is invalid. Please make sure "{id}" refers to a valid database application component.', 479),
(239, 'es', 'CDbTransaction se encuentra inactiva y no puede realizar la operación commit ni roll back.', 480),
(239, 'en_us', 'CDbTransaction is inactive and cannot perform commit or roll back operations.', 481),
(240, 'es', 'CDirectoryCacheDependency.directory no puede ser vacío.', 482),
(240, 'en_us', 'CDirectoryCacheDependency.directory cannot be empty.', 483),
(241, 'es', 'CFileCacheDependency.fileName no puede ser vacío.', 484),
(241, 'en_us', 'CFileCacheDependency.fileName cannot be empty.', 485),
(242, 'es', 'CFileLogRoute.logPath "{path}" no apunta a un directorio válido. Verifique que el directorio exista y tenga permisos de escritura por el proceso que corre el servidor Web.', 486),
(242, 'en_us', 'CFileLogRoute.logPath "{path}" does not point to a valid directory. Make sure the directory exists and is writable by the Web server process.', 487),
(243, 'es', 'CFilterChain solamente puede tomar objetos que implementen la interface IFilter.', 488),
(243, 'en_us', 'CFilterChain can only take objects implementing the IFilter interface.', 489),
(244, 'es', 'CFlexWidget.baseUrl no puede ser vacío.', 490),
(244, 'en_us', 'CFlexWidget.baseUrl cannot be empty.', 491),
(245, 'es', 'CFlexWidget.name no puede ser vacío.', 492),
(245, 'en_us', 'CFlexWidget.name cannot be empty.', 493),
(246, 'es', 'CGlobalStateCacheDependency.stateName no puede ser vacío.', 494),
(246, 'en_us', 'CGlobalStateCacheDependency.stateName cannot be empty.', 495),
(247, 'es', 'CHttpCookieCollection solo puede contener objetos CHttpCookie.', 496),
(247, 'en_us', 'CHttpCookieCollection can only hold CHttpCookie objects.', 497),
(248, 'es', 'CHttpRequest no puede determinar la URL de su script de entrada.', 498),
(248, 'en_us', 'CHttpRequest is unable to determine the entry script URL.', 499),
(249, 'es', 'CHttpRequest no puede determinar la información de la ruta de la solicitud.', 500),
(249, 'en_us', 'CHttpRequest is unable to determine the path info of the request.', 501),
(250, 'es', 'CHttpRequest no puede derminar la URI solicitada', 502),
(250, 'en_us', 'CHttpRequest is unable to determine the request URI.', 503),
(251, 'es', 'CHttpSession.cookieMode solo puede ser "none", "allow" ó "only".', 504),
(251, 'en_us', 'CHttpSession.cookieMode can only be "none", "allow" or "only".', 505),
(252, 'es', 'CHttpSession.gcProbability "{value}" es inválido. Debe ser un entero entre 0 y 100.', 506),
(252, 'en_us', 'CHttpSession.gcProbability "{value}" is invalid. It must be an integer between 0 and 100.', 507),
(253, 'es', 'CHttpSession.savePath "{path}" no es un directorio válido.', 508),
(253, 'en_us', 'CHttpSession.savePath "{path}" is not a valid directory.', 509),
(254, 'es', 'La configuración del servidor CMemCache debe ser un array.', 510),
(254, 'en_us', 'CMemCache server configuration must be an array.', 511),
(255, 'es', 'La configuración del servidor CMemCache debe contener un "host".', 512),
(255, 'en_us', 'CMemCache server configuration must have "host" value.', 513),
(256, 'es', 'CMultiFileUpload.name es requerido', 514),
(256, 'en_us', 'CMultiFileUpload.name is required.', 515),
(257, 'es', 'CProfileLogRoute ha encontrado un bloque de código "{token}" desalineado. Asegurese que las llamadas a Yii::beginProfile() y a Yii::endProfile() esten correctamente anidadas.', 516),
(257, 'en_us', 'CProfileLogRoute found a mismatching code block "{token}". Make sure the calls to Yii::beginProfile() and Yii::endProfile() be properly nested.', 517),
(258, 'es', 'CProfileLogRoute.report "{report}" es inválido. Los valores validos son "summary" y "callstack".', 518),
(258, 'en_us', 'CProfileLogRoute.report "{report}" is invalid. Valid values include "summary" and "callstack".', 519),
(259, 'es', 'CSecurityManager requiere que la extensión mcrypt de PHP sea cargada para utilizar la opción de encriptación de datos.', 520),
(259, 'en_us', 'CSecurityManager requires PHP mcrypt extension to be loaded in order to use data encryption feature.', 521),
(260, 'es', 'CSecurityManager.encryptionKey no puede ser vacío.', 522),
(260, 'en_us', 'CSecurityManager.encryptionKey cannot be empty.', 523),
(261, 'es', 'CSecurityManager.validation debe ser "MD5" ó "SHA1".', 524),
(261, 'en_us', 'CSecurityManager.validation must be either "MD5" or "SHA1".', 525),
(262, 'es', 'CSecurityManager.validationKey no puede ser vacío.', 526),
(262, 'en_us', 'CSecurityManager.validationKey cannot be empty.', 527),
(263, 'es', 'CTypedList<{type}> solo puede contener objetos de la clase {type}.', 528),
(263, 'en_us', 'CTypedList<{type}> can only hold objects of {type} class.', 529),
(264, 'es', 'CUrlManager.UrlFormat debe ser "path" o "get".', 530),
(264, 'en_us', 'CUrlManager.UrlFormat must be either "path" or "get".', 531),
(265, 'es', 'CXCache requiere la extensión XCache de PHP para ser cargado', 532),
(265, 'en_us', 'CXCache requires PHP XCache extension to be loaded.', 533),
(266, 'es', 'Tabla de cache "{tableName}" inexistente.', 534),
(266, 'en_us', 'Cache table "{tableName}" does not exist.', 535),
(267, 'es', 'No se puede agregar "{child}" como hijo de "{name}". Un ciclo infinito se há detectado.', 536),
(267, 'en_us', 'Cannot add "{child}" as a child of "{name}". A loop has been detected.', 537),
(268, 'es', 'No se puede agregar "{child}" como hijo de "{parent}". Un ciclo infinito se há detectado.', 538),
(268, 'en_us', 'Cannot add "{child}" as a child of "{parent}". A loop has been detected.', 539),
(269, 'es', 'No se puede agregar "{name}" como hijo de sí mismo.', 540),
(269, 'en_us', 'Cannot add "{name}" as a child of itself.', 541),
(270, 'es', 'No se le puede agregar un elemento del tipo "{child}" a otro del tipo "{parent}".', 542),
(270, 'en_us', 'Cannot add an item of type "{child}" to an item of type "{parent}".', 543),
(271, 'es', '"{parent}" o "{child}" es inexistente', 544),
(271, 'en_us', 'Either "{parent}" or "{child}" does not exist.', 545),
(272, 'es', 'Error: Tabla "{table}" no tiene una clave primaria.', 546),
(272, 'en_us', 'Error: Table "{table}" does not have a primary key.', 547),
(273, 'es', 'Error: Tabla "{table}" tiene una clave primaria compuesta que no es soportada por el comando crud.', 548),
(273, 'en_us', 'Error: Table "{table}" has a composite primary key which is not supported by crud command.', 549),
(274, 'es', 'Evento "{class}"."{event}" tiene asociado un manejador "{handler}" inválido.', 550),
(274, 'en_us', 'Event "{class}.{event}" is attached with an invalid handler "{handler}".', 551),
(275, 'es', 'Evento "{class}"."{event}" no se encuentra definido.', 552),
(275, 'en_us', 'Event "{class}.{event}" is not defined.', 553),
(276, 'es', 'Error al escribir el archivo subido "{file}" al disco.', 554),
(276, 'en_us', 'Failed to write the uploaded file "{file}" to disk.', 555),
(277, 'es', 'El upload de archivo fue terminado debido a su extensión.', 556),
(277, 'en_us', 'File upload was stopped by extension.', 557),
(278, 'es', 'El filtro "{filter} es inválido. El controlador "{class}" no contiene el método de filtro "filter{filter}".', 558),
(278, 'en_us', 'Filter "{filter}" is invalid. Controller "{class}" does have the filter method "filter{filter}".', 559),
(279, 'es', 'Obtenga un nuevo código', 560),
(279, 'en_us', 'Get a new code', 561),
(280, 'es', 'Ir a página: ', 562),
(280, 'en_us', 'Go to page: ', 563),
(281, 'es', 'Revisión de archivo MO inválido: {revision}.', 564),
(281, 'en_us', 'Invalid MO file revision: {revision}.', 565),
(282, 'es', 'Archivo MO inválido: {file} (magic: {magic}).', 566),
(282, 'en_us', 'Invalid MO file: {file} (magic: {magic}).', 567),
(283, 'es', 'Valor de enumerador inválido "{value}". Asegurese que este entre ({enum}).', 568),
(283, 'en_us', 'Invalid enumerable value "{value}". Please make sure it is among ({enum}).', 569),
(284, 'es', 'Último &gt;&gt;', 570),
(284, 'en_us', 'Last &gt;&gt;', 571),
(285, 'es', 'Los datos de la lista deben ser un array o un objeto que implemento Traversable.', 572),
(285, 'en_us', 'List data must be an array or an object implementing Traversable.', 573),
(286, 'es', 'Indice de la lista "{index}" esta fuera del limite.', 574),
(286, 'en_us', 'List index "{index}" is out of bound.', 575),
(287, 'es', 'Iniciar sesión requerido.', 576),
(287, 'en_us', 'Login Required', 577),
(288, 'es', 'Los datos del mapa deben ser un array o un objeto que implemento Traversable', 578),
(288, 'en_us', 'Map data must be an array or an object implementing Traversable.', 579),
(289, 'es', 'La carpeta temoporaria para guardar el archivo subido "{file}" no se encuentra.', 580),
(289, 'en_us', 'Missing the temporary folder to store the uploaded file "{file}".', 581),
(290, 'es', 'Siguiente &gt;', 582),
(290, 'en_us', 'Next &gt;', 583),
(291, 'es', 'No se actualizó ninguna columna para la tabla "{table}".', 584),
(291, 'en_us', 'No columns are being updated for table "{table}".', 585),
(292, 'es', 'Ningun contador de columnas ha sido actualizado para la tabla "{table}".', 586),
(292, 'en_us', 'No counter columns are being updated for table "{table}".', 587),
(293, 'es', 'La configuración del objeto debe ser un array conteniendo un elemento "class".', 588),
(293, 'en_us', 'Object configuration must be an array containing a "class" element.', 589),
(294, 'es', 'Por favor corrija los siguientes errores de ingreso:', 590),
(294, 'en_us', 'Please fix the following input errors:', 591),
(295, 'es', 'Propiedad "{class}"."{property}" no se encuentra definida.', 592),
(295, 'en_us', 'Property "{class}.{property}" is not defined.', 593),
(296, 'es', 'Propiedad "{class}"."{property}" es de solo lectura..', 594),
(296, 'en_us', 'Property "{class}.{property}" is read only.', 595),
(297, 'es', 'Los datos de la cola deben ser un array o un objeto que implemento Traversable', 596),
(297, 'en_us', 'Queue data must be an array or an object implementing Traversable.', 597),
(298, 'es', 'La relación "{name}" no se encuentra definida en la clase active record "{class}".', 598),
(298, 'en_us', 'Relation "{name}" is not defined in active record class "{class}".', 599),
(299, 'es', 'Los datos de la pila deben ser un array o un objeto que implemento Traversable', 600),
(299, 'en_us', 'Stack data must be an array or an object implementing Traversable.', 601),
(300, 'es', 'Tabla "{table}" no contiene la columna "{column}".', 602),
(300, 'en_us', 'Table "{table}" does not have a column named "{column}".', 603),
(301, 'es', 'La propiedad "filter" debe ser especificada con un callback válido.', 604),
(301, 'en_us', 'The "filter" property must be specified with a valid callback.', 605),
(302, 'es', 'La propiedad "pattern" debe ser especificada con una expresión regular válida.', 606),
(302, 'en_us', 'The "pattern" property must be specified with a valid regular expression.', 607),
(303, 'es', 'Su token CSRF no puede ser verificado.', 608),
(303, 'en_us', 'The CSRF token could not be verified.', 609),
(304, 'es', 'El patrón de URL "{pattern}" para la ruta "{route}" no es una expresión regular válida.', 610),
(304, 'en_us', 'The URL pattern "{pattern}" for route "{route}" is not a valid regular expression.', 611),
(305, 'es', 'El active record no puede ser eliminado porque es nuevo.', 612),
(305, 'en_us', 'The active record cannot be deleted because it is new.', 613),
(306, 'es', 'El active record no puede ser insertado a la base de datos porque no es nuevo.', 614),
(306, 'en_us', 'The active record cannot be inserted to database because it is not new.', 615),
(307, 'es', 'El active record no puede ser actualizado porque es nuevo.', 616),
(307, 'en_us', 'The active record cannot be updated because it is new.', 617),
(308, 'es', 'El asset "{asset} a ser publicado no existe.', 618),
(308, 'en_us', 'The asset "{asset}" to be published does not exist.', 619),
(309, 'es', 'La ruta de comando "{path}" no es un directorio válido.', 620),
(309, 'en_us', 'The command path "{path}" is not a valid directory.', 621),
(310, 'es', 'La ruta del controlador "{path}" no es un directorio válido.', 622),
(310, 'en_us', 'The controller path "{path}" is not a valid directory.', 623),
(311, 'es', 'El archivo "{file}" no puede ser subido. Solo los archivos con estas extensiones son permitidos: {extensions}.', 624),
(311, 'en_us', 'The file "{file}" cannot be uploaded. Only files with these extensions are allowed: {extensions}.', 625),
(312, 'es', 'El archivo "{file}" es muy grande. Su tamaño no puede exceder {limit} bytes.', 626),
(312, 'en_us', 'The file "{file}" is too large. Its size cannot exceed {limit} bytes.', 627),
(313, 'es', 'El archivo "{file}" es muy chico. Su tamaño no puede ser menor que {limit} bytes.', 628),
(313, 'en_us', 'The file "{file}" is too small. Its size cannot be smaller than {limit} bytes.', 629),
(314, 'es', 'El archivo "{file}" ha sido subido parcialmente.', 630),
(314, 'en_us', 'The file "{file}" was only partially uploaded.', 631),
(315, 'es', 'El primer elemento en la configuración de un filtro debe ser la clase del filtro.', 632),
(315, 'en_us', 'The first element in a filter configuration must be the filter class.', 633),
(316, 'es', 'El elemento "{name}" es inexistente.', 634),
(316, 'en_us', 'The item "{name}" does not exist.', 635),
(317, 'es', 'El elemento "{parent}" ya contiene un hijo "{child}".', 636),
(317, 'en_us', 'The item "{parent}" already has a child "{child}".', 637),
(318, 'es', 'La ruta de esquema "{path}" no es un directorio válido.', 638),
(318, 'en_us', 'The layout path "{path}" is not a valid directory.', 639),
(319, 'es', 'La lista es de solo lectura', 640),
(319, 'en_us', 'The list is read only.', 641),
(320, 'es', 'El mapa es de solo lectura', 642),
(320, 'en_us', 'The map is read only.', 643),
(321, 'es', 'El patrón para hora en formato 12 debe ser "h" ó "hh".', 644),
(321, 'en_us', 'The pattern for 12 hour format must be "h" or "hh".', 645),
(322, 'es', 'El patrón para hora en formato 24 debe ser "H" ó "HH".', 646),
(322, 'en_us', 'The pattern for 24 hour format must be "H" or "HH".', 647),
(323, 'es', 'El patrón para el marcador AM/PM debe ser "a".', 648),
(323, 'en_us', 'The pattern for AM/PM marker must be "a".', 649),
(324, 'es', 'El patrón para día del mes debe ser "F".', 650),
(324, 'en_us', 'The pattern for day in month must be "F".', 651),
(325, 'es', 'El patrón para día del año debe ser "D", "DD", "DDD".', 652),
(325, 'en_us', 'The pattern for day in year must be "D", "DD" or "DDD".', 653),
(326, 'es', 'El patrón para día debe ser "d" ó "dd".', 654),
(326, 'en_us', 'The pattern for day of the month must be "d" or "dd".', 655),
(327, 'es', 'El patrón para día de la semana debe ser "E", "EE", "EEE", "EEEE" ó "EEEEE".', 656),
(327, 'en_us', 'The pattern for day of the week must be "E", "EE", "EEE", "EEEE" or "EEEEE".', 657),
(328, 'es', 'El patrón para era debe ser "G", "GG", "GGG", "GGGG" ó "GGGGG".', 658),
(328, 'en_us', 'The pattern for era must be "G", "GG", "GGG", "GGGG" or "GGGGG".', 659),
(329, 'es', 'El patrón para hora en AM/PM debe ser "K" ó "KK".', 660),
(329, 'en_us', 'The pattern for hour in AM/PM must be "K" or "KK".', 661),
(330, 'es', 'El patrón para hora del día debe ser "k" ó "kk".', 662),
(330, 'en_us', 'The pattern for hour in day must be "k" or "kk".', 663),
(331, 'es', 'El patrón para minutos debe ser "m" ó "mm".', 664),
(331, 'en_us', 'The pattern for minutes must be "m" or "mm".', 665),
(332, 'es', 'El patrón para mes debe ser "M", "MM", "MMM" ó "MMMM".', 666),
(332, 'en_us', 'The pattern for month must be "M", "MM", "MMM", or "MMMM".', 667),
(333, 'es', 'El patrón para segundos debe ser "s" ó "ss".', 668),
(333, 'en_us', 'The pattern for seconds must be "s" or "ss".', 669),
(334, 'es', 'El patrón para zona horaria debe ser "z" ó "v".', 670),
(334, 'en_us', 'The pattern for time zone must be "z" or "v".', 671),
(335, 'es', 'El patron para semana del mes debe ser "W".', 672),
(335, 'en_us', 'The pattern for week in month must be "W".', 673),
(336, 'es', 'El patrón para semana del año debe ser "w".', 674),
(336, 'en_us', 'The pattern for week in year must be "w".', 675),
(337, 'es', 'La cola está vacía', 676),
(337, 'en_us', 'The queue is empty.', 677),
(338, 'es', 'La relación "{relation}" en la clase active record "{class}" no se encuentra especificada correctamente: La tabla de junta (join table) "{join table}" dada no se encontro en la base de datos.', 678),
(338, 'en_us', 'The relation "{relation}" in active record class "{class}" is not specified correctly: the join table "{joinTable}" given in the foreign key cannot be found in the database.', 679),
(339, 'es', 'La relación "{relation}" en la clase active record "{class}" se encuentra especificada con una clave foranea incompleta. La clave foranea debe consistir de las columnas que referencian la junta de tablas.', 680),
(339, 'en_us', 'The relation "{relation}" in active record class "{class}" is specified with an incomplete foreign key. The foreign key must consist of columns referencing both joining tables.', 681),
(340, 'es', 'La relación "{relation}" en la clase active record "{class}" se encuentra especificada con una clave foranea inválida "{key}". La clave foranea no apunta a la tabla de junta (joining table).', 682),
(340, 'en_us', 'The relation "{relation}" in active record class "{class}" is specified with an invalid foreign key "{key}". The foreign key does not point to either joining table.', 683),
(341, 'es', 'La relación "{relation}" en la clase active record "{class}" se encuentra especificada con una clave foranea inválida. El formato de la clave foranea debe ser "joinTable(fk1,fk2,...)".', 684),
(341, 'en_us', 'The relation "{relation}" in active record class "{class}" is specified with an invalid foreign key. The format of the foreign key must be "joinTable(fk1,fk2,...)".', 685),
(342, 'es', 'La vista "{name}" solicitad no se ha encontrado.', 686),
(342, 'en_us', 'The requested view "{name}" is not found.', 687),
(343, 'es', 'La pila está vacía', 688),
(343, 'en_us', 'The stack is empty.', 689),
(344, 'es', 'El sistema no ha podido encontrar la acción "{action}" solicitada.', 690),
(344, 'en_us', 'The system is unable to find the requested action "{action}".', 691),
(345, 'es', 'La ruta de vistas de sistema "{path}" no es un directorio válido.', 692),
(345, 'en_us', 'The system view path "{path}" is not a valid directory.', 693),
(346, 'es', 'La tabla "{table}" definida en la clase active record "{class}" no se ha podido encontrar en la base de datos.', 694),
(346, 'en_us', 'The table "{table}" for active record class "{class}" cannot be found in the database.', 695),
(347, 'es', 'El código de verificación es incorrecto.', 696),
(347, 'en_us', 'The verification code is incorrect.', 697),
(348, 'es', 'La ruta de la vista "{path}" no es un directorio válido.', 698),
(348, 'en_us', 'The view path "{path}" is not a valid directory.', 699),
(349, 'es', 'El directorio de tema "{directory}" no existe.', 700),
(349, 'en_us', 'Theme directory "{directory}" does not exist.', 701),
(350, 'es', 'Este contenido requiere el <a href="http://www.adobe.com/go/getflash/">Adobe Flash Player</a>.', 702),
(350, 'en_us', 'This content requires the <a href="http://www.adobe.com/go/getflash/">Adobe Flash Player</a>.', 703),
(351, 'es', 'No se puede agregar un elemento cuyo nombre es el mismo que el de un elemento existente.', 704),
(351, 'en_us', 'Unable to add an item whose name is the same as an existing item.', 705),
(352, 'es', 'No se puede modificar el nombre del elemento. El nombre "{name}" ya se encuentra utilizado por otro elemento.', 706),
(352, 'en_us', 'Unable to change the item name. The name "{name}" is already used by another item.', 707),
(353, 'es', 'No se ha podido crear el archivo de estado de aplicación "{file}". Asegurese que el directorio que contiene el archivo exista y sea un directorio con permisos de escritura por el proceso que corre el servidor Web.', 708),
(353, 'en_us', 'Unable to create application state file "{file}". Make sure the directory containing the file exists and is writable by the Web server process.', 709),
(354, 'es', 'No se há podido bloquear el archivo "{file}" para lectura.', 710),
(354, 'en_us', 'Unable to lock file "{file}" for reading.', 711),
(355, 'es', 'No se ha podido bloquear el archivo "{file}" para escritura.', 712),
(355, 'en_us', 'Unable to lock file "{file}" for writing.', 713),
(356, 'es', 'No se ha podido leer el archivo "{file}".', 714),
(356, 'en_us', 'Unable to read file "{file}".', 715),
(357, 'es', 'Imposible de replicar la acción "{object}.{method}". El metodo es inexistente.', 716),
(357, 'en_us', 'Unable to replay the action "{object}.{method}". The method does not exist.', 717),
(358, 'es', 'No se ha podido escribir el archivo "{file}".', 718),
(358, 'en_us', 'Unable to write file "{file}".', 719),
(359, 'es', 'Elemento de autorización "{name}" desconocido.', 720),
(359, 'en_us', 'Unknown authorization item "{name}".', 721),
(360, 'es', 'Localizacion no reconocida "{locale}".', 722),
(360, 'en_us', 'Unrecognized locale "{locale}".', 723),
(361, 'es', 'El archivo de vista "{view}" no existe.', 724),
(361, 'en_us', 'View file "{file}" does not exist.', 725),
(362, 'es', 'Solo se puede crear una aplicación Yii.', 726),
(362, 'en_us', 'Yii application can only be created once.', 727),
(363, 'es', 'Usted no se encuentra autorizado a realizar esta acción.', 728),
(363, 'en_us', 'You are not authorized to perform this action.', 729),
(364, 'es', 'Su solicitud es inválida.', 730),
(364, 'en_us', 'Your request is not valid.', 731),
(365, 'es', '{attribute} "{value}" ya ha sido tomado.', 732),
(365, 'en_us', '{attribute} "{value}" has already been taken.', 733),
(366, 'es', '{attribute} no puede ser nulo.', 734),
(366, 'en_us', '{attribute} cannot be blank.', 735),
(367, 'es', '{attribute} es inválido.', 736),
(367, 'en_us', '{attribute} is invalid.', 737),
(368, 'es', '{attribute} no es una URL válida.', 738),
(368, 'en_us', '{attribute} is not a valid URL.', 739),
(369, 'es', '{attribute} no es un email válido.', 740),
(369, 'en_us', '{attribute} is not a valid email address.', 741),
(370, 'es', '{attribute} no se encuentra en la lista.', 742),
(370, 'en_us', '{attribute} is not in the list.', 743),
(371, 'es', '{attribute} tiene un largo incorrecto (debe ser de {length} caracteres)', 744),
(371, 'en_us', '{attribute} is of the wrong length (should be {length} characters).', 745);
INSERT INTO `translation_message` (`id`, `language`, `translation`, `id_key`) VALUES
(372, 'es', '{attribute} es muy grande (el máximo es {max}).', 746),
(372, 'en_us', '{attribute} is too big (maximum is {max}).', 747),
(373, 'es', '{attribute} es muy largo (el máximo es de {max} caracteres)', 748),
(373, 'en_us', '{attribute} is too long (maximum is {max} characters).', 749),
(374, 'es', '{attribute} es muy corto (el mínimo es de {min} caracteres)', 750),
(374, 'en_us', '{attribute} is too short (minimum is {min} characters).', 751),
(375, 'es', '{attribute} es muy chico (el mínimo es {min}).', 752),
(375, 'en_us', '{attribute} is too small (minimum is {min}).', 753),
(376, 'es', '{attribute} debe ser un número.', 754),
(376, 'en_us', '{attribute} must be a number.', 755),
(377, 'es', '{attribute} debe ser entero.', 756),
(377, 'en_us', '{attribute} must be an integer.', 757),
(378, 'es', '{attribute} debe ser {true} o {false}.', 758),
(378, 'en_us', '{attribute} must be either {true} or {false}.', 759),
(379, 'es', '{attribute} debe ser mayor que "{compareValue}".', 760),
(379, 'en_us', '{attribute} must be greater than "{compareValue}".', 761),
(380, 'es', '{attribute} debe ser mayor o igual que "{compareValue}".', 762),
(380, 'en_us', '{attribute} must be greater than or equal to "{compareValue}".', 763),
(381, 'es', '{attribute} debe ser menor que "{compareValue}".', 764),
(381, 'en_us', '{attribute} must be less than "{compareValue}".', 765),
(382, 'es', '{attribute} debe ser menor o igual que "{compareValue}".', 766),
(382, 'en_us', '{attribute} must be less than or equal to "{compareValue}".', 767),
(383, 'es', '{attribute} debe ser repetido exactamente.', 768),
(383, 'en_us', '{attribute} must be repeated exactly.', 769),
(384, 'es', '{attribute} debe ser {type}.', 770),
(384, 'en_us', '{attribute} must be {type}.', 771),
(385, 'es', '{className} no soporta la funcionalidad add().', 772),
(385, 'en_us', '{className} does not support add() functionality.', 773),
(386, 'es', '{className} no soporta la funcionalidad delete().', 774),
(386, 'en_us', '{className} does not support delete() functionality.', 775),
(387, 'es', '{className} no soporta la funcionalidad flush().', 776),
(387, 'en_us', '{className} does not support flush() functionality.', 777),
(388, 'es', '{className} no soporta la funcionalidad get().', 778),
(388, 'en_us', '{className} does not support get() functionality.', 779),
(389, 'es', '{className} no soporta la funcionalidad set().', 780),
(389, 'en_us', '{className} does not support set() functionality.', 781),
(390, 'es', '{class} tiene una regla de validación inválida. La regla se debe especificar attributos para ser validados y el nombre de su validador.', 782),
(390, 'en_us', '{class} has an invalid validation rule. The rule must specify attributes to be validated and the validator name.', 783),
(391, 'es', '{class} debe especificar los valores de propiedad "model" y "attribute" o "name".', 784),
(391, 'en_us', '{class} must specify "model" and "attribute" or "name" property values.', 785),
(392, 'es', '{class}.allowAutoLogin debe ser asignado verdadero para poder utilizar la autenticación basada en cookies.', 786),
(392, 'en_us', '{class}.allowAutoLogin must be set true in order to use cookie-based authentication.', 787),
(393, 'es', '{class}::authenticate() debe ser implementad.', 788),
(393, 'en_us', '{class}::authenticate() must be implemented.', 789),
(394, 'es', '{controller} no ha podido encontrar la vista "{view}" solicitada.', 790),
(394, 'en_us', '{controller} cannot find the requested view "{view}".', 791),
(395, 'es', '{controller} contiene etiquetas de widget en la vista "{view}" anidados incorrectamente. {widget} widget no contiene la llamada a endWidget().', 792),
(395, 'en_us', '{controller} contains improperly nested widget tags in its view "{view}". A {widget} widget does not have an endWidget() call.', 793),
(396, 'es', '{controller} tiene una llamada extra a endWidget({id}) en su vista.', 794),
(396, 'en_us', '{controller} has an extra endWidget({id}) call in its view.', 795),
(397, 'es', '{widget} no ha podido encontrar la vista "{view}".', 796),
(397, 'en_us', '{widget} cannot find the view "{view}".', 797),
(398, 'es', 'son requeridos', 798),
(398, 'en_us', 'are required', 799),
(399, 'es', 'Seguro que desea borrar este elemento?', 800),
(399, 'en_us', 'Are you sure you want to delete this item?', 801),
(400, 'es', 'Borrar', 802),
(400, 'en_us', 'Delete', 803),
(401, 'es', 'Desplegando {start}-{end} de {count} resultado(s).', 804),
(401, 'en_us', 'Displaying {start}-{end} of {count} result(s).', 805),
(402, 'es', '"name" o "value" deben especificarse para CDataColumn.', 806),
(402, 'en_us', 'Either "name" or "value" must be specified for CDataColumn.', 807),
(403, 'es', 'No se encontraron resultados.', 808),
(403, 'en_us', 'No results found.', 809),
(404, 'es', 'No asignado', 810),
(404, 'en_us', 'Not set', 811),
(405, 'es', 'Favor de especificar la propiedad "attributes".', 812),
(405, 'en_us', 'Please specify the "attributes" property.', 813),
(406, 'es', 'Favor de especificar la propiedad "data".', 814),
(406, 'en_us', 'Please specify the "data" property.', 815),
(407, 'es', 'Ordenar por: ', 816),
(407, 'en_us', 'Sort by: ', 817),
(408, 'es', 'La propiedad "dataProvider" no puede estar vacia.', 818),
(408, 'en_us', 'The "dataProvider" property cannot be empty.', 819),
(409, 'es', 'El atributo debe especificarse en el formato "Nombre:Tipo:Etiqueta", donde "Tipo" y "Etiqueta" son opcionales.', 820),
(409, 'en_us', 'The attribute must be specified in the format of "Name:Type:Label", where "Type" and "Label" are optional.', 821),
(410, 'es', 'La columna debe especificarse en el formato "Nombre:Tipo:Etiqueta", donde "Tipo" y "Etiqueta" son opcionales.', 822),
(410, 'en_us', 'The column must be specified in the format of "Name:Type:Label", where "Type" and "Label" are optional.', 823),
(411, 'es', 'La propiedad "itemView" no puede estar vacia.', 824),
(411, 'en_us', 'The property "itemView" cannot be empty.', 825),
(412, 'es', 'Total de {count} resultado(s).', 826),
(412, 'en_us', 'Total {count} result(s).', 827),
(413, 'es', 'Actualiza', 828),
(413, 'en_us', 'Update', 829),
(414, 'es', 'Mostrar', 830),
(414, 'en_us', 'View', 831),
(415, 'es', '{class} debe especificar valor/es para "model" y "atributte" o para "name".', 832),
(415, 'en_us', '{class} must specify "model" and "attribute" or "name" property values.', 833);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translation_source_message`
--

CREATE TABLE IF NOT EXISTS `translation_source_message` (
`id` int(11) NOT NULL,
  `category` varchar(32) DEFAULT NULL,
  `message` text
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=416 ;

--
-- Volcado de datos para la tabla `translation_source_message`
--

INSERT INTO `translation_source_message` (`id`, `category`, `message`) VALUES
(2, 'app', 'Hello'),
(3, 'app', 'Error sending email!!'),
(4, 'app', 'We have sent a new password to your email'),
(5, 'app', 'We have sent the instructions to your email'),
(6, 'app', 'Profile updated successfully'),
(7, 'app', 'Login is required'),
(8, 'app', 'Invalid request'),
(9, 'app', 'Correctly updated password.'),
(10, 'app', 'There has been an inconvenience and could not verify your email.'),
(11, 'app', 'Hi {name}!! Welcome a to {appName}'),
(12, 'app', 'Phone'),
(13, 'app', 'Please confirm your password'),
(14, 'app', 'Confirm Password'),
(15, 'app', 'New password'),
(16, 'app', 'Unfortunately the file(s) you selected weren''t the type we were expecting. Only {extensions} files are allowed.'),
(17, 'app', '{file} is too large, maximum file size is {sizeLimit}.'),
(18, 'app', '{file} is too small, minimum file size is {minSizeLimit}.'),
(19, 'app', '{file} is empty, please select files again without it.'),
(20, 'app', 'The files are being uploaded, if you leave now the upload will be cancelled.'),
(21, 'app', 'Your email <strong>{attribute}</strong> has been desabled'),
(22, 'app', 'Your email dosen''t has been verified yet, please click {here} for resend email.'),
(23, 'app', 'Your email <strong>{value}</ strong> is not registered in our database'),
(24, 'app', 'Welcome email copies'),
(25, 'app', 'Password email copies'),
(26, 'app', 'RESENDED'),
(27, 'app', 'Here'),
(28, 'app', 'Email not found'),
(29, 'app', 'We have forwarded your mail <strong>{email}</strong> a link to confirm, if it is not in your inbox please check your spam folder'),
(30, 'app', 'Your email <strong>{email}</strong> not found on owr database'),
(31, 'app', 'Copy Welcome Email'),
(32, 'app', 'Copy Forgot Email'),
(33, 'app', 'Copy Send Password'),
(34, 'app', 'Copy Send Password Forgot'),
(35, 'app', 'Confirm email'),
(36, 'app', 'Go to change password'),
(37, 'app', 'Your credentials'),
(38, 'app', 'Confirm register on'),
(39, 'app', 'Recover password'),
(40, 'app', 'Email Copies'),
(41, 'app', 'Your password is too weak! must have at least 6 characters'),
(42, 'app', 'Title'),
(43, 'app', 'Keywords'),
(44, 'app', 'Description'),
(45, 'app', 'Admin Email'),
(46, 'app', 'Offline'),
(47, 'app', 'Editor Offline Message'),
(48, 'app', 'has been deleted successfully'),
(49, 'app', 'has been updated successfully'),
(50, 'app', 'has been created successfully'),
(51, 'app', 'Error to database connection. Please try later'),
(52, 'app', 'The resourse requested {id} does not exist or was deleted'),
(53, 'app', 'The resourse requested does not exist'),
(54, 'app', 'You do not have access to take this action'),
(55, 'app', 'Form validation errors'),
(56, 'app', '100 Continue'),
(57, 'app', '101 Switching Protocols'),
(58, 'app', '200 OK'),
(59, 'app', '201 Created'),
(60, 'app', '202 Accepted'),
(61, 'app', '203 Non-Authoritative Information'),
(62, 'app', '204 No Content'),
(63, 'app', '205 Reset Content'),
(64, 'app', '206 Partial Content'),
(65, 'app', '300 Multiple Choices'),
(66, 'app', '301 Moved Permanently'),
(67, 'app', '302 Found'),
(68, 'app', '303 See Other'),
(69, 'app', '304 Not Modified'),
(70, 'app', '305 Use Proxy'),
(71, 'app', '306 (Unused)'),
(72, 'app', '307 Temporary Redirect'),
(73, 'app', '400 Bad Request'),
(74, 'app', '401 Unauthorized'),
(75, 'app', '402 Payment Required'),
(76, 'app', '403 Forbidden'),
(77, 'app', '404 Not Found'),
(78, 'app', '405 Method Not Allowed'),
(79, 'app', '406 Not Acceptable'),
(80, 'app', '407 Proxy Authentication Required'),
(81, 'app', '408 Request Timeout'),
(82, 'app', '409 Conflict'),
(83, 'app', '410 Gone'),
(84, 'app', '411 Length Required'),
(85, 'app', '412 Precondition Failed'),
(86, 'app', '413 Request Entity Too Large'),
(87, 'app', '414 Request-URI Too Long'),
(88, 'app', '415 Unsupported Media Type'),
(89, 'app', '416 Requested Range Not Satisfiable'),
(90, 'app', '417 Expectation Failed'),
(91, 'app', '418 I''m a teapot'),
(92, 'app', '422 Unprocessable Entity'),
(93, 'app', '423 Locked'),
(94, 'app', '500 Internal Server Error'),
(95, 'app', '501 Not Implemented'),
(96, 'app', '502 Bad Gateway'),
(97, 'app', '503 Service Unavailable'),
(98, 'app', '504 Gateway Timeout'),
(99, 'app', '505 HTTP Version Not Supported'),
(100, 'app', 'You cannot delete this record'),
(101, 'app', 'Are you sure you want to delete this record?'),
(102, 'app', 'View all'),
(103, 'app', 'Users system'),
(104, 'app', 'Generals'),
(105, 'app', 'Applications'),
(106, 'app', 'Generals settings'),
(107, 'app', 'Profiles system'),
(108, 'app', 'Welcome text'),
(109, 'app', 'Settings'),
(110, 'app', 'General Settings'),
(111, 'app', 'The record was saved successfully'),
(112, 'app', 'Type'),
(113, 'app', 'Connect With'),
(114, 'app', 'Login/Register'),
(115, 'app', 'Menu Options'),
(116, 'app', 'Show Menu From Admin'),
(117, 'app', 'Label Menu'),
(118, 'app', 'Login In Register'),
(119, 'app', 'Send Password'),
(120, 'app', 'Enable Oauth'),
(121, 'app', 'Allow Basic Oauth'),
(122, 'app', 'Facebook Login Register'),
(123, 'app', 'Twitter Login Register'),
(124, 'app', 'Delete'),
(125, 'app', 'Empty'),
(126, 'app', 'More info'),
(127, 'app', 'Notification from'),
(128, 'app', 'I accept terms and conditions.'),
(129, 'app', 'Username or email'),
(130, 'app', 'Password'),
(131, 'app', 'Old Password'),
(132, 'app', 'Confirm your new password'),
(133, 'app', 'Login'),
(134, 'app', 'Home'),
(135, 'app', 'Apps'),
(136, 'app', 'What''s a retalapp?'),
(137, 'app', 'Find <em> Retalapps </em> of your project'),
(138, 'app', 'You get a project basis with clean code and maintainable'),
(139, 'app', 'Get <em> Retalapps </em> immediately with their documentation'),
(140, 'app', 'You take care of what really matters to develop in your project'),
(141, 'app', 'It''s an application with basic functionality, you don''t need boot your timeline from scratch.'),
(142, 'app', 'Search now'),
(143, 'app', 'Parent menu'),
(144, 'app', 'Close'),
(145, 'app', 'View'),
(146, 'app', 'Create'),
(147, 'app', 'Saving'),
(148, 'app', 'Update'),
(149, 'app', 'Back'),
(150, 'app', 'e.g.'),
(151, 'app', 'Users'),
(152, 'app', 'Username'),
(153, 'app', 'Lastname'),
(154, 'app', 'State'),
(155, 'app', 'Img'),
(156, 'app', 'Registered'),
(157, 'app', 'State Email'),
(158, 'app', 'Picture'),
(159, 'app', 'Create Users'),
(160, 'app', 'The profile was successfully updated'),
(161, 'app', 'Message'),
(162, 'app', 'Subject'),
(163, 'app', 'Email'),
(164, 'app', 'Name'),
(165, 'app', 'Remember me next time'),
(166, 'app', 'Verification Code'),
(167, 'app', 'Incorrect username or password.'),
(168, 'app', 'Please fill out the following form with your login credentials:'),
(169, 'app', 'Your email was not verified yet, please check between your run and spam received the verification email we''ve sent, or try signing up again'),
(170, 'app', 'Contact Us'),
(171, 'app', 'Send message'),
(172, 'app', 'Drop us a line and we will contact you as soon as possible'),
(173, 'app', 'Please enter the letters shown in the picture above. <br/> Letters are not case sensitive.'),
(174, 'app', 'Disabled'),
(175, 'app', 'Enabled'),
(176, 'app', 'Operations'),
(177, 'app', 'List'),
(178, 'app', 'Manage'),
(179, 'app', 'Save'),
(180, 'app', 'Save # {nro}'),
(181, 'yii', 'Active record class "{class}" does not have a scope named "{scope}".'),
(182, 'yii', 'Base path "{path}" is not a valid directory.'),
(183, 'yii', 'CEAcceleratorCache requires PHP eAccelerator extension to be loaded, enabled or compiled with the "--with-eaccelerator-shared-memory" option.'),
(184, 'yii', 'CZendDataCache requires PHP Zend Data Cache extension to be loaded.'),
(185, 'yii', 'Column "{column} does not exist in table "{table}".'),
(186, 'yii', 'Column name must be either a string or an array.'),
(187, 'yii', 'Table "{table}" does not exist.'),
(188, 'yii', 'The STAT relation "{name}" cannot have child relations.'),
(189, 'yii', 'The module path "{path}" is not a valid directory.'),
(190, 'yii', 'The relation "{relation}" in active record class "{class}" is not specified correctly. The join table "{joinTable}" given in the foreign key cannot be found in the database.'),
(191, 'yii', 'The relation "{relation}" in active record class "{class}" is specified with a foreign key "{key}" that does not point to the parent table "{table}".'),
(192, 'yii', 'The relation "{relation}" in active record class "{class}" is specified with an invalid foreign key "{key}". There is no such column in the table "{table}".'),
(193, 'yii', 'The relation "{relation}" in active record class "{class}" is specified with an invalid foreign key. The columns in the key must match the primary keys of the table "{table}".'),
(194, 'yii', 'The value for the column "{column}" is not supplied when querying the table "{table}".'),
(195, 'yii', 'Unable to resolve the request "{route}".'),
(196, 'yii', '{attribute} "{value}" is invalid.'),
(197, 'yii', '{class} does not have a method named "{name}".'),
(198, 'yii', '{class} does not have attribute "{attribute}".'),
(199, 'yii', '{class} does not have relation "{name}".'),
(200, 'yii', '{class} does not support fetching all table names.'),
(201, 'yii', 'CDbLogRoute requires database table "{table}" to store log messages.'),
(202, 'yii', 'CMemCache requires PHP memcache extension to be loaded.'),
(203, 'yii', 'Table "{table}" does not have a primary key defined.'),
(204, 'yii', 'The "view" property is required.'),
(205, 'yii', 'The asset "{asset}" to be pulished does not exist.'),
(206, 'yii', 'The column "{column}" is not a foreign key in table "{table}".'),
(207, 'yii', 'The requested controller "{controller}" does not exist.'),
(208, 'yii', 'The value for the primary key "{key}" is not supplied when querying the table "{table}".'),
(209, 'yii', 'Unable to find the decorator view "{view}".'),
(210, 'yii', 'Unable to find the list item.'),
(211, 'yii', '{class} does not have attribute "{name}".'),
(212, 'yii', '"{path}" is not a valid directory.'),
(213, 'yii', '&lt; Previous'),
(214, 'yii', '&lt;&lt; First'),
(215, 'yii', 'Active Record requires a "db" CDbConnection application component.'),
(216, 'yii', 'Active record "{class}" has an invalid configuration for relation "{relation}". It must specify the relation type, the related active record class and the foreign key.'),
(217, 'yii', 'Active record "{class}" is trying to select an invalid column "{column}". Note, the column must exist in the table or be an expression with alias.'),
(218, 'yii', 'Alias "{alias}" is invalid. Make sure it points to an existing directory or file.'),
(219, 'yii', 'Application base path "{path}" is not a valid directory.'),
(220, 'yii', 'Application runtime path "{path}" is not valid. Please make sure it is a directory writable by the Web server process.'),
(221, 'yii', 'Authorization item "{item}" has already been assigned to user "{user}".'),
(222, 'yii', 'CApcCache requires PHP apc extension to be loaded.'),
(223, 'yii', 'CAssetManager.basePath "{path}" is invalid. Please make sure the directory exists and is writable by the Web server process.'),
(224, 'yii', 'CCacheHttpSession.cacheID is invalid. Please make sure "{id}" refers to a valid cache application component.'),
(225, 'yii', 'CCaptchaValidator.action "{id}" is invalid. Unable to find such an action in the current controller.'),
(226, 'yii', 'CDbAuthManager.connectionID "{id}" is invalid. Please make sure it refers to the ID of a CDbConnection application component.'),
(227, 'yii', 'CDbCache.connectionID "{id}" is invalid. Please make sure it refers to the ID of a CDbConnection application component.'),
(228, 'yii', 'CDbCacheDependency.sql cannot be empty.'),
(229, 'yii', 'CDbCommand failed to execute the SQL statement: {error}'),
(230, 'yii', 'CDbCommand failed to prepare the SQL statement: {error}'),
(231, 'yii', 'CDbConnection does not support reading schema for {driver} database.'),
(232, 'yii', 'CDbConnection failed to open the DB connection: {error}'),
(233, 'yii', 'CDbConnection is inactive and cannot perform any DB operations.'),
(234, 'yii', 'CDbConnection.connectionString cannot be empty.'),
(235, 'yii', 'CDbDataReader cannot rewind. It is a forward-only reader.'),
(236, 'yii', 'CDbHttpSession.connectionID "{id}" is invalid. Please make sure it refers to the ID of a CDbConnection application component.'),
(237, 'yii', 'CDbLogRoute.connectionID "{id}" does not point to a valid CDbConnection application component.'),
(238, 'yii', 'CDbMessageSource.connectionID is invalid. Please make sure "{id}" refers to a valid database application component.'),
(239, 'yii', 'CDbTransaction is inactive and cannot perform commit or roll back operations.'),
(240, 'yii', 'CDirectoryCacheDependency.directory cannot be empty.'),
(241, 'yii', 'CFileCacheDependency.fileName cannot be empty.'),
(242, 'yii', 'CFileLogRoute.logPath "{path}" does not point to a valid directory. Make sure the directory exists and is writable by the Web server process.'),
(243, 'yii', 'CFilterChain can only take objects implementing the IFilter interface.'),
(244, 'yii', 'CFlexWidget.baseUrl cannot be empty.'),
(245, 'yii', 'CFlexWidget.name cannot be empty.'),
(246, 'yii', 'CGlobalStateCacheDependency.stateName cannot be empty.'),
(247, 'yii', 'CHttpCookieCollection can only hold CHttpCookie objects.'),
(248, 'yii', 'CHttpRequest is unable to determine the entry script URL.'),
(249, 'yii', 'CHttpRequest is unable to determine the path info of the request.'),
(250, 'yii', 'CHttpRequest is unable to determine the request URI.'),
(251, 'yii', 'CHttpSession.cookieMode can only be "none", "allow" or "only".'),
(252, 'yii', 'CHttpSession.gcProbability "{value}" is invalid. It must be an integer between 0 and 100.'),
(253, 'yii', 'CHttpSession.savePath "{path}" is not a valid directory.'),
(254, 'yii', 'CMemCache server configuration must be an array.'),
(255, 'yii', 'CMemCache server configuration must have "host" value.'),
(256, 'yii', 'CMultiFileUpload.name is required.'),
(257, 'yii', 'CProfileLogRoute found a mismatching code block "{token}". Make sure the calls to Yii::beginProfile() and Yii::endProfile() be properly nested.'),
(258, 'yii', 'CProfileLogRoute.report "{report}" is invalid. Valid values include "summary" and "callstack".'),
(259, 'yii', 'CSecurityManager requires PHP mcrypt extension to be loaded in order to use data encryption feature.'),
(260, 'yii', 'CSecurityManager.encryptionKey cannot be empty.'),
(261, 'yii', 'CSecurityManager.validation must be either "MD5" or "SHA1".'),
(262, 'yii', 'CSecurityManager.validationKey cannot be empty.'),
(263, 'yii', 'CTypedList<{type}> can only hold objects of {type} class.'),
(264, 'yii', 'CUrlManager.UrlFormat must be either "path" or "get".'),
(265, 'yii', 'CXCache requires PHP XCache extension to be loaded.'),
(266, 'yii', 'Cache table "{tableName}" does not exist.'),
(267, 'yii', 'Cannot add "{child}" as a child of "{name}". A loop has been detected.'),
(268, 'yii', 'Cannot add "{child}" as a child of "{parent}". A loop has been detected.'),
(269, 'yii', 'Cannot add "{name}" as a child of itself.'),
(270, 'yii', 'Cannot add an item of type "{child}" to an item of type "{parent}".'),
(271, 'yii', 'Either "{parent}" or "{child}" does not exist.'),
(272, 'yii', 'Error: Table "{table}" does not have a primary key.'),
(273, 'yii', 'Error: Table "{table}" has a composite primary key which is not supported by crud command.'),
(274, 'yii', 'Event "{class}.{event}" is attached with an invalid handler "{handler}".'),
(275, 'yii', 'Event "{class}.{event}" is not defined.'),
(276, 'yii', 'Failed to write the uploaded file "{file}" to disk.'),
(277, 'yii', 'File upload was stopped by extension.'),
(278, 'yii', 'Filter "{filter}" is invalid. Controller "{class}" does have the filter method "filter{filter}".'),
(279, 'yii', 'Get a new code'),
(280, 'yii', 'Go to page: '),
(281, 'yii', 'Invalid MO file revision: {revision}.'),
(282, 'yii', 'Invalid MO file: {file} (magic: {magic}).'),
(283, 'yii', 'Invalid enumerable value "{value}". Please make sure it is among ({enum}).'),
(284, 'yii', 'Last &gt;&gt;'),
(285, 'yii', 'List data must be an array or an object implementing Traversable.'),
(286, 'yii', 'List index "{index}" is out of bound.'),
(287, 'yii', 'Login Required'),
(288, 'yii', 'Map data must be an array or an object implementing Traversable.'),
(289, 'yii', 'Missing the temporary folder to store the uploaded file "{file}".'),
(290, 'yii', 'Next &gt;'),
(291, 'yii', 'No columns are being updated for table "{table}".'),
(292, 'yii', 'No counter columns are being updated for table "{table}".'),
(293, 'yii', 'Object configuration must be an array containing a "class" element.'),
(294, 'yii', 'Please fix the following input errors:'),
(295, 'yii', 'Property "{class}.{property}" is not defined.'),
(296, 'yii', 'Property "{class}.{property}" is read only.'),
(297, 'yii', 'Queue data must be an array or an object implementing Traversable.'),
(298, 'yii', 'Relation "{name}" is not defined in active record class "{class}".'),
(299, 'yii', 'Stack data must be an array or an object implementing Traversable.'),
(300, 'yii', 'Table "{table}" does not have a column named "{column}".'),
(301, 'yii', 'The "filter" property must be specified with a valid callback.'),
(302, 'yii', 'The "pattern" property must be specified with a valid regular expression.'),
(303, 'yii', 'The CSRF token could not be verified.'),
(304, 'yii', 'The URL pattern "{pattern}" for route "{route}" is not a valid regular expression.'),
(305, 'yii', 'The active record cannot be deleted because it is new.'),
(306, 'yii', 'The active record cannot be inserted to database because it is not new.'),
(307, 'yii', 'The active record cannot be updated because it is new.'),
(308, 'yii', 'The asset "{asset}" to be published does not exist.'),
(309, 'yii', 'The command path "{path}" is not a valid directory.'),
(310, 'yii', 'The controller path "{path}" is not a valid directory.'),
(311, 'yii', 'The file "{file}" cannot be uploaded. Only files with these extensions are allowed: {extensions}.'),
(312, 'yii', 'The file "{file}" is too large. Its size cannot exceed {limit} bytes.'),
(313, 'yii', 'The file "{file}" is too small. Its size cannot be smaller than {limit} bytes.'),
(314, 'yii', 'The file "{file}" was only partially uploaded.'),
(315, 'yii', 'The first element in a filter configuration must be the filter class.'),
(316, 'yii', 'The item "{name}" does not exist.'),
(317, 'yii', 'The item "{parent}" already has a child "{child}".'),
(318, 'yii', 'The layout path "{path}" is not a valid directory.'),
(319, 'yii', 'The list is read only.'),
(320, 'yii', 'The map is read only.'),
(321, 'yii', 'The pattern for 12 hour format must be "h" or "hh".'),
(322, 'yii', 'The pattern for 24 hour format must be "H" or "HH".'),
(323, 'yii', 'The pattern for AM/PM marker must be "a".'),
(324, 'yii', 'The pattern for day in month must be "F".'),
(325, 'yii', 'The pattern for day in year must be "D", "DD" or "DDD".'),
(326, 'yii', 'The pattern for day of the month must be "d" or "dd".'),
(327, 'yii', 'The pattern for day of the week must be "E", "EE", "EEE", "EEEE" or "EEEEE".'),
(328, 'yii', 'The pattern for era must be "G", "GG", "GGG", "GGGG" or "GGGGG".'),
(329, 'yii', 'The pattern for hour in AM/PM must be "K" or "KK".'),
(330, 'yii', 'The pattern for hour in day must be "k" or "kk".'),
(331, 'yii', 'The pattern for minutes must be "m" or "mm".'),
(332, 'yii', 'The pattern for month must be "M", "MM", "MMM", or "MMMM".'),
(333, 'yii', 'The pattern for seconds must be "s" or "ss".'),
(334, 'yii', 'The pattern for time zone must be "z" or "v".'),
(335, 'yii', 'The pattern for week in month must be "W".'),
(336, 'yii', 'The pattern for week in year must be "w".'),
(337, 'yii', 'The queue is empty.'),
(338, 'yii', 'The relation "{relation}" in active record class "{class}" is not specified correctly: the join table "{joinTable}" given in the foreign key cannot be found in the database.'),
(339, 'yii', 'The relation "{relation}" in active record class "{class}" is specified with an incomplete foreign key. The foreign key must consist of columns referencing both joining tables.'),
(340, 'yii', 'The relation "{relation}" in active record class "{class}" is specified with an invalid foreign key "{key}". The foreign key does not point to either joining table.'),
(341, 'yii', 'The relation "{relation}" in active record class "{class}" is specified with an invalid foreign key. The format of the foreign key must be "joinTable(fk1,fk2,...)".'),
(342, 'yii', 'The requested view "{name}" is not found.'),
(343, 'yii', 'The stack is empty.'),
(344, 'yii', 'The system is unable to find the requested action "{action}".'),
(345, 'yii', 'The system view path "{path}" is not a valid directory.'),
(346, 'yii', 'The table "{table}" for active record class "{class}" cannot be found in the database.'),
(347, 'yii', 'The verification code is incorrect.'),
(348, 'yii', 'The view path "{path}" is not a valid directory.'),
(349, 'yii', 'Theme directory "{directory}" does not exist.'),
(350, 'yii', 'This content requires the <a href="http://www.adobe.com/go/getflash/">Adobe Flash Player</a>.'),
(351, 'yii', 'Unable to add an item whose name is the same as an existing item.'),
(352, 'yii', 'Unable to change the item name. The name "{name}" is already used by another item.'),
(353, 'yii', 'Unable to create application state file "{file}". Make sure the directory containing the file exists and is writable by the Web server process.'),
(354, 'yii', 'Unable to lock file "{file}" for reading.'),
(355, 'yii', 'Unable to lock file "{file}" for writing.'),
(356, 'yii', 'Unable to read file "{file}".'),
(357, 'yii', 'Unable to replay the action "{object}.{method}". The method does not exist.'),
(358, 'yii', 'Unable to write file "{file}".'),
(359, 'yii', 'Unknown authorization item "{name}".'),
(360, 'yii', 'Unrecognized locale "{locale}".'),
(361, 'yii', 'View file "{file}" does not exist.'),
(362, 'yii', 'Yii application can only be created once.'),
(363, 'yii', 'You are not authorized to perform this action.'),
(364, 'yii', 'Your request is not valid.'),
(365, 'yii', '{attribute} "{value}" has already been taken.'),
(366, 'yii', '{attribute} cannot be blank.'),
(367, 'yii', '{attribute} is invalid.'),
(368, 'yii', '{attribute} is not a valid URL.'),
(369, 'yii', '{attribute} is not a valid email address.'),
(370, 'yii', '{attribute} is not in the list.'),
(371, 'yii', '{attribute} is of the wrong length (should be {length} characters).'),
(372, 'yii', '{attribute} is too big (maximum is {max}).'),
(373, 'yii', '{attribute} is too long (maximum is {max} characters).'),
(374, 'yii', '{attribute} is too short (minimum is {min} characters).'),
(375, 'yii', '{attribute} is too small (minimum is {min}).'),
(376, 'yii', '{attribute} must be a number.'),
(377, 'yii', '{attribute} must be an integer.'),
(378, 'yii', '{attribute} must be either {true} or {false}.'),
(379, 'yii', '{attribute} must be greater than "{compareValue}".'),
(380, 'yii', '{attribute} must be greater than or equal to "{compareValue}".'),
(381, 'yii', '{attribute} must be less than "{compareValue}".'),
(382, 'yii', '{attribute} must be less than or equal to "{compareValue}".'),
(383, 'yii', '{attribute} must be repeated exactly.'),
(384, 'yii', '{attribute} must be {type}.'),
(385, 'yii', '{className} does not support add() functionality.'),
(386, 'yii', '{className} does not support delete() functionality.'),
(387, 'yii', '{className} does not support flush() functionality.'),
(388, 'yii', '{className} does not support get() functionality.'),
(389, 'yii', '{className} does not support set() functionality.'),
(390, 'yii', '{class} has an invalid validation rule. The rule must specify attributes to be validated and the validator name.'),
(391, 'yii', '{class} must specify "model" and "attribute" or "name" property values.'),
(392, 'yii', '{class}.allowAutoLogin must be set true in order to use cookie-based authentication.'),
(393, 'yii', '{class}::authenticate() must be implemented.'),
(394, 'yii', '{controller} cannot find the requested view "{view}".'),
(395, 'yii', '{controller} contains improperly nested widget tags in its view "{view}". A {widget} widget does not have an endWidget() call.'),
(396, 'yii', '{controller} has an extra endWidget({id}) call in its view.'),
(397, 'yii', '{widget} cannot find the view "{view}".'),
(398, 'zii', 'are required'),
(399, 'zii', 'Are you sure you want to delete this item?'),
(400, 'zii', 'Delete'),
(401, 'zii', 'Displaying {start}-{end} of {count} result(s).'),
(402, 'zii', 'Either "name" or "value" must be specified for CDataColumn.'),
(403, 'zii', 'No results found.'),
(404, 'zii', 'Not set'),
(405, 'zii', 'Please specify the "attributes" property.'),
(406, 'zii', 'Please specify the "data" property.'),
(407, 'zii', 'Sort by: '),
(408, 'zii', 'The "dataProvider" property cannot be empty.'),
(409, 'zii', 'The attribute must be specified in the format of "Name:Type:Label", where "Type" and "Label" are optional.'),
(410, 'zii', 'The column must be specified in the format of "Name:Type:Label", where "Type" and "Label" are optional.'),
(411, 'zii', 'The property "itemView" cannot be empty.'),
(412, 'zii', 'Total {count} result(s).'),
(413, 'zii', 'Update'),
(414, 'zii', 'View'),
(415, 'zii', '{class} must specify "model" and "attribute" or "name" property values.');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
(1, 'Usuarios', 1, 0, 0, 1, 0, 0, '', '', 0, '', '', '<p>\r\n      Hi {{name}}<span style="background-color: initial;">! </span>\r\n</p>\r\n<p>\r\n We''re almost through the registration process just need to confirm your email\r\n</p>', '<p>\r\n      Hi {{name}}! <br>\r\n</p>\r\n<p>\r\n Almost you recover your password, please follow this link:\r\n</p>', '<p>\r\n     Hola {{name}}! <br>\r\n     <br>\r\n     Esta es tu nueva contraseña:<br>\r\n  <strong>Usuario:</strong><em>{{email}}</em><br>\r\n <strong>Password:</strong><em>{{password}}</em>\r\n</p>', '<p>\r\n   Hola {{name}}! <br>\r\n     <br>\r\n     Bienvenido a {{appname}} tus datos de ingreso son:<br>\r\n    <strong>Usuario:</strong><em>{{email}}</em><br>\r\n <strong>Password:</strong><em>{{password}}</em>\r\n</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_users`
--

CREATE TABLE IF NOT EXISTS `users_users` (
`id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
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
 ADD PRIMARY KEY (`id_key`), ADD KEY `id` (`id`);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `gii_models`
--
ALTER TABLE `gii_models`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
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
-- AUTO_INCREMENT de la tabla `translation_message`
--
ALTER TABLE `translation_message`
MODIFY `id_key` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=834;
--
-- AUTO_INCREMENT de la tabla `translation_source_message`
--
ALTER TABLE `translation_source_message`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=416;
--
-- AUTO_INCREMENT de la tabla `users_access_tokens`
--
ALTER TABLE `users_access_tokens`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users_apps`
--
ALTER TABLE `users_apps`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users_apps_scopes`
--
ALTER TABLE `users_apps_scopes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users_code_auth`
--
ALTER TABLE `users_code_auth`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `translation_message`
--
ALTER TABLE `translation_message`
ADD CONSTRAINT `translation_message_ibfk_1` FOREIGN KEY (`id`) REFERENCES `translation_source_message` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;