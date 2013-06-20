-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 08-10-2010 a las 19:50:42
-- Versión del servidor: 5.0.91
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `comtedoe_datta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address_book`
--

CREATE TABLE IF NOT EXISTS `address_book` (
  `address_book_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `entry_gender` char(1) NOT NULL,
  `entry_company` varchar(32) default NULL,
  `entry_company_tax_id` varchar(32) default NULL,
  `entry_firstname` varchar(32) NOT NULL,
  `entry_lastname` varchar(32) NOT NULL,
  `entry_street_address` varchar(64) NOT NULL,
  `entry_suburb` varchar(32) default NULL,
  `entry_postcode` varchar(10) NOT NULL,
  `entry_city` varchar(32) NOT NULL,
  `entry_state` varchar(32) default NULL,
  `entry_country_id` int(11) NOT NULL default '0',
  `entry_zone_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`address_book_id`),
  KEY `idx_address_book_customers_id` (`customers_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=250 ;

--
-- Volcar la base de datos para la tabla `address_book`
--

INSERT INTO `address_book` (`address_book_id`, `customers_id`, `entry_gender`, `entry_company`, `entry_company_tax_id`, `entry_firstname`, `entry_lastname`, `entry_street_address`, `entry_suburb`, `entry_postcode`, `entry_city`, `entry_state`, `entry_country_id`, `entry_zone_id`) VALUES
(40, 30, 'm', 'asa', '', 'adsad', 'asdsadasd', 'jasas', NULL, 'sasa', 'sasa', '', 195, 139),
(42, 32, 'm', '', '', 'toloo', 'lololo', 'weewopopo', NULL, 'ewesdsd', 'wewesdsd', 'wewesdsd', 10, 0),
(43, 33, 'm', '', '', 'toto', 'lalalall', 'sasasaa', NULL, 'sasassas', 'asasasas', 'sasa', 37, 0),
(246, 234, 'm', '', NULL, 'asd', 'asd', 'asdas 4545', NULL, 'asdasd', 'adasd', '', 195, 130),
(244, 234, 'm', 'apolo', '56587969875', 'Taylor', 'Smith', 'jr. los castanos 1174', NULL, 'lima 39', 'lima', 'lima', 167, 0),
(247, 234, 'm', '', NULL, 'Taylor', 'Smith', '13450 Farmcrest Ct', NULL, '20171', 'Herndon', '', 223, 61),
(248, 234, 'f', '', NULL, 'Amber', 'Smith', '308 Mozart Ave E', NULL, '56001', 'Mankato', '', 223, 34),
(249, 234, 'm', '', NULL, 'totilo', 'bito', '308 Mozart Ave E', NULL, '56001', 'Mankato', '', 223, 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address_format`
--

CREATE TABLE IF NOT EXISTS `address_format` (
  `address_format_id` int(11) NOT NULL auto_increment,
  `address_format` varchar(128) NOT NULL,
  `address_summary` varchar(48) NOT NULL,
  PRIMARY KEY  (`address_format_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcar la base de datos para la tabla `address_format`
--

INSERT INTO `address_format` (`address_format_id`, `address_format`, `address_summary`) VALUES
(1, '$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country', '$city / $country'),
(2, '$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country', '$city, $state / $country'),
(3, '$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country', '$state / $country'),
(4, '$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country', '$postcode / $country'),
(5, '$firstname $lastname$cr$streets$cr$postcode $city$cr$country', '$city / $country');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `banners_id` int(11) NOT NULL auto_increment,
  `banners_title` varchar(64) NOT NULL,
  `banners_url` varchar(255) NOT NULL,
  `banners_image` varchar(64) NOT NULL,
  `banners_group` varchar(10) NOT NULL,
  `banners_html_text` text,
  `expires_impressions` int(7) default '0',
  `expires_date` datetime default NULL,
  `date_scheduled` datetime default NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  PRIMARY KEY  (`banners_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `banners`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners_history`
--

CREATE TABLE IF NOT EXISTS `banners_history` (
  `banners_history_id` int(11) NOT NULL auto_increment,
  `banners_id` int(11) NOT NULL default '0',
  `banners_shown` int(5) NOT NULL default '0',
  `banners_clicked` int(5) NOT NULL default '0',
  `banners_history_date` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`banners_history_id`),
  KEY `banners_id` (`banners_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `banners_history`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `categories_id` int(11) NOT NULL auto_increment,
  `categories_image` varchar(64) default NULL,
  `parent_id` int(11) NOT NULL default '0',
  `sort_order` int(3) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`categories_id`),
  KEY `idx_categories_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=456 ;

--
-- Volcar la base de datos para la tabla `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `parent_id`, `sort_order`, `date_added`, `last_modified`) VALUES
(453, '', 0, 0, '2009-09-16 20:25:49', NULL),
(454, '', 0, 0, '2009-09-16 20:26:13', '2009-09-16 13:26:58'),
(390, NULL, 278, 0, '2008-10-13 08:07:15', NULL),
(455, '', 0, 0, '2009-09-16 20:26:35', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories_description`
--

CREATE TABLE IF NOT EXISTS `categories_description` (
  `categories_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `categories_name` varchar(32) NOT NULL,
  PRIMARY KEY  (`categories_id`,`language_id`),
  KEY `idx_categories_name` (`categories_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `categories_description`
--

INSERT INTO `categories_description` (`categories_id`, `language_id`, `categories_name`) VALUES
(454, 2, 'Categoría 2'),
(454, 1, 'Category 2'),
(453, 1, 'Category 1'),
(453, 2, 'Categoría 1'),
(455, 1, 'Category 3'),
(455, 2, 'Categoría 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration`
--

CREATE TABLE IF NOT EXISTS `configuration` (
  `configuration_id` int(11) NOT NULL auto_increment,
  `configuration_title` varchar(64) NOT NULL,
  `configuration_key` varchar(64) NOT NULL,
  `configuration_value` text NOT NULL,
  `configuration_description` varchar(255) NOT NULL,
  `configuration_group_id` int(11) NOT NULL default '0',
  `sort_order` int(5) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `use_function` varchar(255) default NULL,
  `set_function` varchar(255) default NULL,
  PRIMARY KEY  (`configuration_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=507 ;

--
-- Volcar la base de datos para la tabla `configuration`
--

INSERT INTO `configuration` (`configuration_id`, `configuration_title`, `configuration_key`, `configuration_value`, `configuration_description`, `configuration_group_id`, `sort_order`, `last_modified`, `date_added`, `use_function`, `set_function`) VALUES
(1, 'Nombre de la Tienda', 'STORE_NAME', 'STORE - ta package', 'Nombre de la Tienda', 1, 1, '2009-09-16 10:11:51', '2005-07-07 10:38:22', NULL, NULL),
(2, 'Nombre del propietario de la Tienda', 'STORE_OWNER', 'STORE', 'Nombre del propietario de la Tienda', 1, 2, '2009-09-16 10:12:00', '2005-07-07 10:38:22', NULL, NULL),
(3, 'Email del propietario', 'STORE_OWNER_EMAIL_ADDRESS', 'contact@apolomultimedia.com', 'Email del propietario', 1, 3, '2009-09-16 10:12:12', '2005-07-07 10:38:22', NULL, NULL),
(4, 'E-Mail de', 'EMAIL_FROM', '"STORE" <contact@apolomultimedia.com>', 'El email usado en envios de email', 1, 4, '2009-09-16 10:12:28', '2005-07-07 10:38:22', NULL, NULL),
(5, 'Pais', 'STORE_COUNTRY', '223', 'La tienda esta localizada en<br><br><b>Nota: Por favor, recuerde actualizar la Zona de la Tienda</b>', 1, 6, '2010-01-04 05:02:15', '2005-07-07 10:38:22', 'tep_get_country_name', 'tep_cfg_pull_down_country_list('),
(6, 'Zona', 'STORE_ZONE', '16', 'La zona de mi Tienda esta localizada en', 1, 7, '2010-01-04 05:02:31', '2005-07-07 10:38:22', 'tep_cfg_get_zone_name', 'tep_cfg_pull_down_zone_list('),
(7, 'Orden de los listados de productos', 'EXPECTED_PRODUCTS_SORT', 'desc', 'Este es el orden mostrado en los listados de productos', 1, 8, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''asc'', ''desc''),'),
(8, 'Orden de los listados de productos - adicional', 'EXPECTED_PRODUCTS_FIELD', 'date_expected', 'ordena por fecha de introduccion o por nombre de producto', 1, 9, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''products_name'', ''date_expected''),'),
(9, 'Cargar la Moneda por lenguaje', 'USE_DEFAULT_LANGUAGE_CURRENCY', 'false', 'Cargar la Moneda por lenguaje', 1, 10, '2008-03-11 19:10:07', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(10, 'Enviar emails extras', 'SEND_EXTRA_ORDER_EMAILS_TO', 'contact@apolomultimedia.com', 'Enviar emails extras a las siguientos e-mails, en el siguiente formato: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', 1, 11, '2009-09-16 10:12:52', '2005-07-07 10:38:22', NULL, NULL),
(11, 'Usar URLS seguras (aun en DESARROLLO)', 'SEARCH_ENGINE_FRIENDLY_URLS', 'false', 'Usar URLS seguras (aun en DESARROLLO)', 1, 12, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(12, 'Mostrar cesta despues de agregar producto en cesta', 'DISPLAY_CART', 'true', 'Mostrar cesta despues de agregar producto en cesta', 1, 14, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(13, 'Permitir a un invitado usar el modulo de "Cuentale a un Amigo"', 'ALLOW_GUEST_TO_TELL_A_FRIEND', 'true', 'Permitir a un invitado usar el modulo de "Cuentale a un Amigo"', 1, 15, '2008-03-31 18:45:40', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(14, 'Operador de Busqueda', 'ADVANCED_SEARCH_DEFAULT_OPERATOR', 'and', 'Operador de Busqueda', 1, 17, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''and'', ''or''),'),
(15, 'Direccion y Telefono de la Tienda', 'STORE_NAME_ADDRESS', 'STORE\r\nApolomultimedia s.a.c.', 'Direccion y Telefono de la Tienda', 1, 18, '2009-09-16 10:13:05', '2005-07-07 10:38:22', NULL, 'tep_cfg_textarea('),
(16, 'Mostrar la cantidad de productos por categoria', 'SHOW_COUNTS', 'true', 'Mostrar la cantidad de productos por categoria', 1, 19, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(17, 'Impuestos decimales', 'TAX_DECIMAL_PLACES', '0', 'Impuestos decimales', 1, 20, NULL, '2005-07-07 10:38:22', NULL, NULL),
(18, 'Mostrar Precios con Impuestos', 'DISPLAY_PRICE_WITH_TAX', 'true', 'Mostrar Precios con Impuestos', 1, 21, '2010-05-06 10:44:07', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(19, 'Nombres', 'ENTRY_FIRST_NAME_MIN_LENGTH', '2', 'Cantidad mínima de caracteres', 2, 1, NULL, '2005-07-07 10:38:22', NULL, NULL),
(20, 'Apellidos', 'ENTRY_LAST_NAME_MIN_LENGTH', '2', 'Cantidad mínima de caracteres', 2, 2, NULL, '2005-07-07 10:38:22', NULL, NULL),
(21, 'Fecha de Nacimiento', 'ENTRY_DOB_MIN_LENGTH', '10', 'Cantidad mínima de caracteres', 2, 3, NULL, '2005-07-07 10:38:22', NULL, NULL),
(22, 'E-Mail', 'ENTRY_EMAIL_ADDRESS_MIN_LENGTH', '6', 'Cantidad mínima de caracteres', 2, 4, NULL, '2005-07-07 10:38:22', NULL, NULL),
(23, 'Dirección', 'ENTRY_STREET_ADDRESS_MIN_LENGTH', '5', 'Cantidad mínima de caracteres', 2, 5, NULL, '2005-07-07 10:38:22', NULL, NULL),
(24, 'Empresa', 'ENTRY_COMPANY_MIN_LENGTH', '2', 'Cantidad mínima de caracteres', 2, 6, NULL, '2005-07-07 10:38:22', NULL, NULL),
(25, 'Código Postal', 'ENTRY_POSTCODE_MIN_LENGTH', '4', 'Cantidad mínima de caracteres', 2, 7, NULL, '2005-07-07 10:38:22', NULL, NULL),
(26, 'Ciudad', 'ENTRY_CITY_MIN_LENGTH', '3', 'Cantidad mínima de caracteres', 2, 8, NULL, '2005-07-07 10:38:22', NULL, NULL),
(27, 'Estado', 'ENTRY_STATE_MIN_LENGTH', '2', 'Cantidad mínima de caracteres', 2, 9, NULL, '2005-07-07 10:38:22', NULL, NULL),
(28, 'Teléfono', 'ENTRY_TELEPHONE_MIN_LENGTH', '3', 'Cantidad mínima de caracteres', 2, 10, NULL, '2005-07-07 10:38:22', NULL, NULL),
(29, 'Clave', 'ENTRY_PASSWORD_MIN_LENGTH', '5', 'Cantidad mínima de caracteres', 2, 11, NULL, '2005-07-07 10:38:22', NULL, NULL),
(30, 'Nombre del Propietario de la Tarjeta de Crédito', 'CC_OWNER_MIN_LENGTH', '3', 'Cantidad mínima de caracteres', 2, 12, NULL, '2005-07-07 10:38:22', NULL, NULL),
(31, 'Número de la Tarjeta de Crédito', 'CC_NUMBER_MIN_LENGTH', '10', 'Cantidad mínima de caracteres', 2, 13, NULL, '2005-07-07 10:38:22', NULL, NULL),
(32, 'Texto de Comentarios', 'REVIEW_TEXT_MIN_LENGTH', '50', 'Cantidad mínima de caracteres', 2, 14, NULL, '2005-07-07 10:38:22', NULL, NULL),
(33, 'Más Vendidos', 'MIN_DISPLAY_BESTSELLERS', '1', 'Cantidad mínima de "Más Vendidos"', 2, 15, NULL, '2005-07-07 10:38:22', NULL, NULL),
(34, 'Tambien Compraron', 'MIN_DISPLAY_ALSO_PURCHASED', '1', 'Cantidad mínima de "Tambien Compraron"', 2, 16, NULL, '2005-07-07 10:38:22', NULL, NULL),
(35, 'Libro de Direcciones por Cliente', 'MAX_ADDRESS_BOOK_ENTRIES', '5', 'Maximo número de direcciones que un cliente puede tener', 3, 1, NULL, '2005-07-07 10:38:22', NULL, NULL),
(36, 'Resultados de Busqueda', 'MAX_DISPLAY_SEARCH_RESULTS', '6', 'Cantidad de productos a mostrarse', 3, 2, '2006-08-10 12:01:24', '2005-07-07 10:38:22', NULL, NULL),
(37, 'Links', 'MAX_DISPLAY_PAGE_LINKS', '5', 'Hasta que número de link se mostrará?', 3, 3, NULL, '2005-07-07 10:38:22', NULL, NULL),
(38, 'Productos en Oferta', 'MAX_DISPLAY_SPECIAL_PRODUCTS', '6', 'Máximo número de "Productos en Oferta" a mostrarse', 3, 4, '2006-08-10 12:01:28', '2005-07-07 10:38:22', NULL, NULL),
(39, 'Nuevos Productos', 'MAX_DISPLAY_NEW_PRODUCTS', '6', 'Máximo número de "Nuevos Productos" a mostrarse', 3, 5, '2008-05-05 12:29:04', '2005-07-07 10:38:22', NULL, NULL),
(40, 'Productos Por Venir', 'MAX_DISPLAY_UPCOMING_PRODUCTS', '10', 'Máximo número de "Productos Por Venir" a mostrarse', 3, 6, NULL, '2005-07-07 10:38:22', NULL, NULL),
(41, 'Lista de Fabricantes', 'MAX_DISPLAY_MANUFACTURERS_IN_A_LIST', '0', 'Cuando el número de fabricantes exceda este número, un combo box será mostrado en su lugar', 3, 7, NULL, '2005-07-07 10:38:22', NULL, NULL),
(42, 'Columnas de la Lista de Fabricantes', 'MAX_MANUFACTURERS_LIST', '1', 'Cuando el valor sea "1" sera una sola columna, si "2" serán 2 columnas', 3, 7, NULL, '2005-07-07 10:38:22', NULL, NULL),
(43, 'Tamaño de caracteres de la Lista de Fabricantes', 'MAX_DISPLAY_MANUFACTURER_NAME_LEN', '15', 'Cantidad máxima de caracteres de la Lista de Fabricantes', 3, 8, NULL, '2005-07-07 10:38:22', NULL, NULL),
(44, 'Nuevos Comentarios', 'MAX_DISPLAY_NEW_REVIEWS', '6', 'Máximo número de comentarios a mostrarse', 3, 9, NULL, '2005-07-07 10:38:22', NULL, NULL),
(45, 'Selección al azar de "Comentarios"', 'MAX_RANDOM_SELECT_REVIEWS', '6', 'Número de registros de "Comentarios" a mostrarse al azar', 3, 10, NULL, '2005-07-07 10:38:22', NULL, NULL),
(46, 'Selección al azar de "Nuevos Productos"', 'MAX_RANDOM_SELECT_NEW', '6', 'Número de registros de "Nuevos Productos" a mostrarse al azar', 3, 11, NULL, '2005-07-07 10:38:22', NULL, NULL),
(47, 'Selección al azar de "Productos en Oferta"', 'MAX_RANDOM_SELECT_SPECIALS', '6', 'Número de registros de "Productos en Oferta" a mostrarse al azar', 3, 12, NULL, '2005-07-07 10:38:22', NULL, NULL),
(48, 'Listado de sub-categorias por columna', 'MAX_DISPLAY_CATEGORIES_PER_ROW', '3', 'Número de columnas', 3, 13, '2008-04-21 20:27:33', '2005-07-07 10:38:22', NULL, NULL),
(49, 'Listado de "Nuevos Productos"', 'MAX_DISPLAY_PRODUCTS_NEW', '6', 'Número de productos a mostrarse en la página de Nuevos Productos', 3, 14, '2006-08-10 12:01:38', '2005-07-07 10:38:22', NULL, NULL),
(50, 'Más Vendidos', 'MAX_DISPLAY_BESTSELLERS', '6', 'Cantidad máxima de "Más Vendidos"', 3, 15, '2005-07-11 18:48:14', '2005-07-07 10:38:22', NULL, NULL),
(51, 'Tambien Compraron', 'MAX_DISPLAY_ALSO_PURCHASED', '6', 'Cantidad máxima de "Tambien Compraron"', 3, 16, NULL, '2005-07-07 10:38:22', NULL, NULL),
(52, 'Caja de historia de pedidos del cliente', 'MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX', '6', 'Máximo número de pedidos a mostrarse en la Caja de historia de pedidos del cliente', 3, 17, NULL, '2005-07-07 10:38:22', NULL, NULL),
(53, 'Historia de Pedidos', 'MAX_DISPLAY_ORDER_HISTORY', '6', 'Cantidad máxima del historial de pedidos por pàgina', 3, 18, NULL, '2005-07-07 10:38:22', NULL, NULL),
(54, 'Imagen Pequeña - Ancho', 'SMALL_IMAGE_WIDTH', '220', 'medida en pixeles', 4, 1, '2010-10-05 18:19:47', '2005-07-07 10:38:22', NULL, NULL),
(55, 'Imagen Pequeña - Alto', 'SMALL_IMAGE_HEIGHT', '220', 'medida en pixeles', 4, 2, '2010-10-05 18:19:51', '2005-07-07 10:38:22', NULL, NULL),
(56, 'Imagen Encabezado - Ancho', 'HEADING_IMAGE_WIDTH', '0', 'medida en pixeles', 4, 3, '2005-07-07 11:40:02', '2005-07-07 10:38:22', NULL, NULL),
(57, 'Imagen Encabezado - Alto', 'HEADING_IMAGE_HEIGHT', '1', 'medida en pixeles', 4, 4, '2005-07-07 11:40:07', '2005-07-07 10:38:22', NULL, NULL),
(58, 'Imagen Subcategoria - Ancho', 'SUBCATEGORY_IMAGE_WIDTH', '0', 'medida en pixeles', 4, 5, '2005-07-07 16:11:36', '2005-07-07 10:38:22', NULL, NULL),
(59, 'Imagen Subcategoria - Alto', 'SUBCATEGORY_IMAGE_HEIGHT', '1', 'medida en pixeles', 4, 6, '2005-07-07 16:11:42', '2005-07-07 10:38:22', NULL, NULL),
(60, 'Calcular tamaño de imagen cargada', 'CONFIG_CALCULATE_IMAGE_SIZE', 'true', 'Calcular tamaño de imagen cargada?', 4, 7, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(61, 'Imagen Requerida', 'IMAGE_REQUIRED', 'true', 'Imagen Requerida?', 4, 8, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(62, 'Sexo', 'ACCOUNT_GENDER', 'true', 'Muestra el sexo en la cuenta del cliente', 5, 1, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(63, 'Fecha de Nacimiento', 'ACCOUNT_DOB', 'true', 'Muestra la fecha de nacimiento en la cuenta del cliente', 5, 2, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(64, 'Empresa', 'ACCOUNT_COMPANY', 'true', 'Muestra la Empresa en la cuenta del cliente', 5, 3, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(65, 'Suburbio', 'ACCOUNT_SUBURB', 'false', 'Muestra Suburbio en la cuenta del cliente', 5, 4, '2008-03-11 03:02:01', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(66, 'Estado', 'ACCOUNT_STATE', 'true', 'Muestra el Estado en la cuenta del cliente', 5, 5, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(67, 'Modulos de Pago instalados', 'MODULE_PAYMENT_INSTALLED', 'paypal.php;moneyorder.php;cod.php', 'Listado de los modulos de pago instalados separados por punto y coma - no necesita editarse - (Ejemplo: cc.php;cod.php;paypal.php)', 6, 0, '2010-01-05 13:29:56', '2005-07-07 10:38:22', NULL, NULL),
(68, 'Modulos de Costos instalados', 'MODULE_ORDER_TOTAL_INSTALLED', 'ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php', 'Listado de los modulos de costos instalados separados por punto y coma - no necesita editarse -  (Ejemplo: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)', 6, 0, '2008-03-11 19:29:25', '2005-07-07 10:38:22', NULL, NULL),
(69, 'Modulos de Envio instalados', 'MODULE_SHIPPING_INSTALLED', 'fedexrate.php5', 'Listado de los modulos de envio instalados separados por punto y coma - no necesita editarse -  (Ejemplo: ups.php;flat.php;item.php)', 6, 0, '2010-01-28 17:24:44', '2005-07-07 10:38:22', NULL, NULL),
(499, 'Enable FedEx Shipping', 'MODULE_SHIPPING_FEDEX_STATUS', 'True', 'Dou you want to offer FedEx shipping?', 6, 0, NULL, '2010-01-28 17:24:44', NULL, 'tep_cfg_select_option(array(''True'',''False''),'),
(344, 'Set Order Status', 'MODULE_PAYMENT_COD_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2008-05-13 18:43:28', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(342, 'Payment Zone', 'MODULE_PAYMENT_COD_ZONE', '1', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2008-05-13 18:43:28', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(343, 'Sort order of display.', 'MODULE_PAYMENT_COD_SORT_ORDER', '3', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2008-05-13 18:43:28', NULL, NULL),
(158, 'Descripción de producto - Básico / Avanzado?', 'HTML_AREA_WYSIWYG_BASIC_PD', 'Basic', 'Funciones Básicas - carga rápida<br>Funciones Avanzadas - carga lenta', 112, 10, '2008-04-21 15:39:12', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(''Basic'', ''Advanced''),'),
(159, 'Ancho - Caja de texto - Descripción de Producto', 'HTML_AREA_WYSIWYG_WIDTH', '505', 'medida en pixeles (valor por defecto: 505)', 112, 15, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, ''),
(160, 'Alto - Caja de texto - Descripción de Producto', 'HTML_AREA_WYSIWYG_HEIGHT', '240', 'medida en pixeles (valor por defecto: 240)', 112, 19, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, ''),
(161, 'WYSIWYG Area en los emails de los clientes', 'HTML_AREA_WYSIWYG_DISABLE_EMAIL', 'Enable', 'Use WYSIWYG Area en los emails de los clientes', 112, 20, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(''Enable'', ''Disable''),'),
(156, 'Mostrar nombre de producto o modelo en la barra de navegación', '_CFG_SHOW_PRODUCTS_NAME_INNAV', '1', 'true-muestra nombre / false-muestra modelo', 1, 110, '2006-12-28 14:21:13', '2006-01-03 01:42:29', NULL, 'tep_cfg_select_option(array(true, false),'),
(84, 'Moneda por defecto', 'DEFAULT_CURRENCY', 'USD', 'Moneda por defecto', 6, 0, NULL, '2005-07-07 10:38:22', NULL, NULL),
(85, 'Lenguaje por defecto', 'DEFAULT_LANGUAGE', 'en', 'Lenguaje por defecto', 6, 0, NULL, '2005-07-07 10:38:22', NULL, NULL),
(86, 'Orden por defecto para nuevas ordenes', 'DEFAULT_ORDERS_STATUS_ID', '1', 'Cuando una nueva orden es creada, este valor sera asignado', 6, 0, NULL, '2005-07-07 10:38:22', NULL, NULL),
(87, 'mostrar Envio', 'MODULE_ORDER_TOTAL_SHIPPING_STATUS', 'true', 'Desea mostrar el costo de envio en las ordenes?', 6, 1, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(88, 'Orden', 'MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER', '3', 'Orden a mostrarse', 6, 2, NULL, '2005-07-07 10:38:22', NULL, NULL),
(89, 'Permitir Envio Gratis', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING', 'false', 'Ofreces este servicio?', 6, 3, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(90, 'Envio Gratis para ordenes sobre una cantidad', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER', '50000000', 'Envio Gratis para ordenes sobre esta cantidad?', 6, 4, NULL, '2005-07-07 10:38:22', 'currencies->format', NULL),
(91, 'Envio gratis para determinadas zonas', 'MODULE_ORDER_TOTAL_SHIPPING_DESTINATION', 'national', 'Envio gratis para esta zona?', 6, 5, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''national'', ''international'', ''both''),'),
(92, 'Mostrar Sub-Total', 'MODULE_ORDER_TOTAL_SUBTOTAL_STATUS', 'true', 'Desea mostrar el sub-total en las ordenes?', 6, 1, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(93, 'Orden', 'MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER', '1', 'orden a mostrarse', 6, 2, NULL, '2005-07-07 10:38:22', NULL, NULL),
(94, 'Mostrar impuestos', 'MODULE_ORDER_TOTAL_TAX_STATUS', 'true', 'Desea mostrar el costo de los impuestos en las ordenes?', 6, 1, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(95, 'Orden', 'MODULE_ORDER_TOTAL_TAX_SORT_ORDER', '2', 'orden a mostrarse', 6, 2, NULL, '2005-07-07 10:38:22', NULL, NULL),
(96, 'Mostrar Total', 'MODULE_ORDER_TOTAL_TOTAL_STATUS', 'true', 'Desea mostrar el costo total en las ordenes?', 6, 1, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(97, 'orden', 'MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER', '4', 'orden a mostrarse', 6, 2, NULL, '2005-07-07 10:38:22', NULL, NULL),
(98, 'País de Origen', 'SHIPPING_ORIGIN_COUNTRY', '223', 'Seleccionar el país de origen desde el cual se harán los envios', 7, 1, '2009-09-24 08:39:52', '2005-07-07 10:38:22', 'tep_get_country_name', 'tep_cfg_pull_down_country_list('),
(99, 'Código Postal', 'SHIPPING_ORIGIN_ZIP', 'NONE', 'Ingresa el código postal de la tienda', 7, 2, NULL, '2005-07-07 10:38:22', NULL, NULL),
(100, 'Ingresar el máximo peso que podrás enviar', 'SHIPPING_MAX_WEIGHT', '50', 'Los cargadores tienen un límite de peso por cada envio', 7, 3, NULL, '2005-07-07 10:38:22', NULL, NULL),
(101, 'Tara', 'SHIPPING_BOX_WEIGHT', '3', 'Cual es el peso promedio de envio?', 7, 4, NULL, '2005-07-07 10:38:22', NULL, NULL),
(102, 'Paquetes grandes - porcentaje de incremento', 'SHIPPING_BOX_PADDING', '10', 'Para 10% ingresar 10', 7, 5, NULL, '2005-07-07 10:38:22', NULL, NULL),
(103, 'Mostrar la imagen del producto', 'PRODUCT_LIST_IMAGE', '1', 'Deseas mostrar la imagen del producto?', 8, 1, NULL, '2005-07-07 10:38:22', NULL, NULL),
(104, 'Mostrar el fabricante del producto', 'PRODUCT_LIST_MANUFACTURER', '0', 'Deseas mostrar el fabricante del producto?', 8, 2, NULL, '2005-07-07 10:38:22', NULL, NULL),
(105, 'Mostrar el modelo del producto', 'PRODUCT_LIST_MODEL', '0', 'Deseas mostrar el modelo del producto?', 8, 3, NULL, '2005-07-07 10:38:22', NULL, NULL),
(106, 'Mostrar el nombre del producto', 'PRODUCT_LIST_NAME', '2', 'Deseas mostrar el nombre del producto?', 8, 4, NULL, '2005-07-07 10:38:22', NULL, NULL),
(107, 'Mostrar el precio del producto', 'PRODUCT_LIST_PRICE', '3', 'Deseas mostrar el nombre del producto?', 8, 5, NULL, '2005-07-07 10:38:22', NULL, NULL),
(108, 'Mostrar la cantidad por producto', 'PRODUCT_LIST_QUANTITY', '0', 'Deseas mostrar la cantidad por producto?', 8, 6, NULL, '2005-07-07 10:38:22', NULL, NULL),
(109, 'Mostrar peso del producto', 'PRODUCT_LIST_WEIGHT', '0', 'Deseas mostrar el peso del producto?', 8, 7, '2006-12-29 11:38:12', '2005-07-07 10:38:22', NULL, NULL),
(110, 'mostrar columna de COMPRA', 'PRODUCT_LIST_BUY_NOW', '4', 'Deseas mostrar la columna de COMPRA?', 8, 8, NULL, '2005-07-07 10:38:22', NULL, NULL),
(111, 'Mostrar filtrado por categoria/fabricante (0=disable; 1=enable)', 'PRODUCT_LIST_FILTER', '1', 'Deseas mostrar los productos por filtrado por categoria/fabricante?', 8, 9, NULL, '2005-07-07 10:38:22', NULL, NULL),
(112, 'Ubicación de la barra de navegacion (1-arriba, 2-abajo, 3-ambos)', 'PREV_NEXT_BAR_LOCATION', '3', 'cambiar la ubicación a (1-arriba, 2-abajo, 3-ambos)', 8, 10, '2006-12-28 19:27:16', '2005-07-07 10:38:22', NULL, NULL),
(113, 'Comprobar stock', 'STOCK_CHECK', 'true', 'Comprobar si hay disponibilidad de stock', 9, 1, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(114, 'Restar Stock', 'STOCK_LIMITED', 'true', 'Restar a stock los productos ordenados', 9, 2, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(115, 'Permitir comprar si no hay stock', 'STOCK_ALLOW_CHECKOUT', 'true', 'Permitir comprar al cliente aun si no existe stock', 9, 3, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(116, 'Marcar producto si no hay stock', 'STOCK_MARK_PRODUCT_OUT_OF_STOCK', '***', 'Mostrar un aviso si un producto no tiene suficiente stock', 9, 4, NULL, '2005-07-07 10:38:22', NULL, NULL),
(117, 'Stock Re-order level', 'STOCK_REORDER_LEVEL', '5', 'Define when stock needs to be re-ordered', 9, 5, NULL, '2005-07-07 10:38:22', NULL, NULL),
(118, 'Store Page Parse Time', 'STORE_PAGE_PARSE_TIME', 'false', 'Store the time it takes to parse a page', 10, 1, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(119, 'Log Destination', 'STORE_PAGE_PARSE_TIME_LOG', '/var/log/www/tep/page_parse_time.log', 'Directory and filename of the page parse time log', 10, 2, NULL, '2005-07-07 10:38:22', NULL, NULL),
(120, 'Log Date Format', 'STORE_PARSE_DATE_TIME_FORMAT', '%d/%m/%Y %H:%M:%S', 'The date format', 10, 3, NULL, '2005-07-07 10:38:22', NULL, NULL),
(121, 'Display The Page Parse Time', 'DISPLAY_PAGE_PARSE_TIME', 'true', 'Display the page parse time (store page parse time must be enabled)', 10, 4, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(122, 'Store Database Queries', 'STORE_DB_TRANSACTIONS', 'false', 'Store the database queries in the page parse time log (PHP4 only)', 10, 5, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(123, 'Use Cache', 'USE_CACHE', 'false', 'Use caching features', 11, 1, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(124, 'Cache Directory', 'DIR_FS_CACHE', '/tmp/', 'The directory where the cached files are saved', 11, 2, NULL, '2005-07-07 10:38:22', NULL, NULL),
(125, 'E-Mail Transport Method', 'EMAIL_TRANSPORT', 'sendmail', 'Defines if this server uses a local connection to sendmail or uses an SMTP connection via TCP/IP. Servers running on Windows and MacOS should change this setting to SMTP.', 12, 1, '2008-03-18 22:04:07', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''sendmail'', ''smtp''),'),
(126, 'E-Mail Linefeeds', 'EMAIL_LINEFEED', 'LF', 'Defines the character sequence used to separate mail headers.', 12, 2, '2008-03-18 22:04:12', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''LF'', ''CRLF''),'),
(127, 'Use MIME HTML When Sending Emails', 'EMAIL_USE_HTML', 'false', 'Send e-mails in HTML format', 12, 3, '2007-05-08 21:48:12', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(128, 'Verify E-Mail Addresses Through DNS', 'ENTRY_EMAIL_ADDRESS_CHECK', 'false', 'Verify e-mail address through a DNS server', 12, 4, '2007-04-19 02:33:37', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(129, 'Send E-Mails', 'SEND_EMAILS', 'true', 'Send out e-mails', 12, 5, '2007-05-08 21:31:16', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(130, 'Enable download', 'DOWNLOAD_ENABLED', 'false', 'Enable the products download functions.', 13, 1, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(131, 'Download by redirect', 'DOWNLOAD_BY_REDIRECT', 'false', 'Use browser redirection for download. Disable on non-Unix systems.', 13, 2, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(132, 'Expiry delay (days)', 'DOWNLOAD_MAX_DAYS', '7', 'Set number of days before the download link expires. 0 means no limit.', 13, 3, NULL, '2005-07-07 10:38:22', NULL, ''),
(133, 'Maximum number of downloads', 'DOWNLOAD_MAX_COUNT', '5', 'Set the maximum number of downloads. 0 means no download authorized.', 13, 4, NULL, '2005-07-07 10:38:22', NULL, ''),
(134, 'Enable GZip Compression', 'GZIP_COMPRESSION', 'false', 'Enable HTTP GZip compression.', 14, 1, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''true'', ''false''),'),
(135, 'Compression Level', 'GZIP_LEVEL', '5', 'Use this compression level 0-9 (0 = minimum, 9 = maximum).', 14, 2, NULL, '2005-07-07 10:38:22', NULL, NULL),
(136, 'Session Directory', 'SESSION_WRITE_DIRECTORY', '/tmp', 'If sessions are file based, store them in this directory.', 15, 1, NULL, '2005-07-07 10:38:22', NULL, NULL),
(137, 'Force Cookie Use', 'SESSION_FORCE_COOKIE_USE', 'True', 'Force the use of sessions when cookies are only enabled.', 15, 2, '2005-07-11 12:48:14', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''True'', ''False''),'),
(138, 'Check SSL Session ID', 'SESSION_CHECK_SSL_SESSION_ID', 'False', 'Validate the SSL_SESSION_ID on every secure HTTPS page request.', 15, 3, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''True'', ''False''),'),
(139, 'Check User Agent', 'SESSION_CHECK_USER_AGENT', 'False', 'Validate the clients browser user agent on every page request.', 15, 4, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''True'', ''False''),'),
(140, 'Check IP Address', 'SESSION_CHECK_IP_ADDRESS', 'False', 'Validate the clients IP address on every page request.', 15, 5, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''True'', ''False''),'),
(141, 'Prevent Spider Sessions', 'SESSION_BLOCK_SPIDERS', 'False', 'Prevent known spiders from starting a session.', 15, 6, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''True'', ''False''),'),
(142, 'Recreate Session', 'SESSION_RECREATE', 'False', 'Recreate the session to generate a new session ID when the customer logs on or creates an account (PHP >=4.1 needed).', 15, 7, NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(''True'', ''False''),'),
(143, 'Imagen Producto - Ancho', 'PRODUCT_IMAGE_WIDTH', '458', 'medida en pixeles', 4, NULL, '2010-10-05 18:19:36', '2006-12-01 12:48:06', NULL, NULL),
(144, 'Imagen Producto - Alto', 'PRODUCT_IMAGE_HEIGHT', '458', 'medida en pixeles', 4, NULL, '2010-10-05 18:19:42', '2006-12-01 12:48:35', NULL, NULL),
(157, 'PRODUCT DESCRIPTIONS use WYSIWYG HTMLAREA?', 'HTML_AREA_WYSIWYG_DISABLE', 'Disable', 'Enable/Disable WYSIWYG box', 112, 0, '2009-09-22 16:06:08', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(''Enable'', ''Disable''),'),
(162, 'Customer Email Basic/Advanced Version?', 'HTML_AREA_WYSIWYG_BASIC_EMAIL', 'Advanced', 'Basic Features FASTER<br>Advanced Features SLOWER', 112, 21, '2007-05-08 21:48:39', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(''Basic'', ''Advanced''),'),
(163, 'Customer Email Layout Width', 'EMAIL_AREA_WYSIWYG_WIDTH', '505', 'How WIDE should the HTMLAREA be in pixels (default: 505)', 112, 25, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, ''),
(164, 'Customer Email Layout Height', 'EMAIL_AREA_WYSIWYG_HEIGHT', '140', 'How HIGH should the HTMLAREA be in pixels (default: 140)', 112, 29, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, ''),
(165, 'NEWSLETTER EMAILS use WYSIWYG HTMLAREA?', 'HTML_AREA_WYSIWYG_DISABLE_NEWSLETTER', 'Enable', 'Use WYSIWYG Area in Email Newsletter', 112, 30, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(''Enable'', ''Disable''),'),
(166, 'Newsletter Email Basic/Advanced Version?', 'HTML_AREA_WYSIWYG_BASIC_NEWSLETTER', 'Basic', 'Basic Features FASTER<br>Advanced Features SLOWER', 112, 32, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(''Basic'', ''Advanced''),'),
(167, 'Newsletter Email Layout Width', 'NEWSLETTER_EMAIL_WYSIWYG_WIDTH', '505', 'How WIDE should the HTMLAREA be in pixels (default: 505)', 112, 35, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, ''),
(168, 'Newsletter Email Layout Height', 'NEWSLETTER_EMAIL_WYSIWYG_HEIGHT', '140', 'How HIGH should the HTMLAREA be in pixels (default: 140)', 112, 39, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, ''),
(169, 'DEFINE MAINPAGE use WYSIWYG HTMLAREA?', 'HTML_AREA_WYSIWYG_DISABLE_DEFINE', 'Enable', 'Use WYSIWYG Area in Define Mainpage', 112, 40, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(''Enable'', ''Disable''),'),
(170, 'Define Mainpage Basic/Advanced Version?', 'HTML_AREA_WYSIWYG_BASIC_DEFINE', 'Basic', 'Basic Features FASTER<br>Advanced Features SLOWER', 112, 41, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(''Basic'', ''Advanced''),'),
(171, 'Define Mainpage Layout Width', 'DEFINE_MAINPAGE_WYSIWYG_WIDTH', '605', 'How WIDE should the HTMLAREA be in pixels (default: 505)', 112, 42, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, ''),
(172, 'Define Mainpage Layout Height', 'DEFINE_MAINPAGE_WYSIWYG_HEIGHT', '300', 'How HIGH should the HTMLAREA be in pixels (default: 140)', 112, 43, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, ''),
(173, 'GLOBAL - User Interface Font Type', 'HTML_AREA_WYSIWYG_FONT_TYPE', 'Times New Roman', 'User Interface Font Type<br>(not saved to product description)', 112, 45, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(''Arial'', ''Courier New'', ''Georgia'', ''Impact'', ''Tahoma'', ''Times New Roman'', ''Verdana'', ''Wingdings''),'),
(174, 'GLOBAL - User Interface Font Size', 'HTML_AREA_WYSIWYG_FONT_SIZE', '12', 'User Interface Font Size (not saved to product description)<p><b>10 Equals 10 pt', 112, 50, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(\\''8\\'', \\''10\\'', \\''12\\'', \\''14\\'', \\''18\\'', \\''24\\'', \\''36\\''),'),
(175, 'GLOBAL - User Interface Font Colour', 'HTML_AREA_WYSIWYG_FONT_COLOUR', 'Black', 'White, Black, C0C0C0, Red, FFFFFF, Yellow, Pink, Blue, Gray, 000000, ect..<br>basically any colour or HTML colour code!<br>(not saved to product description)', 112, 55, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, ''),
(176, 'GLOBAL - User Interface Background Colour', 'HTML_AREA_WYSIWYG_BG_COLOUR', 'White', 'White, Black, C0C0C0, Red, FFFFFF, Yellow, Pink, Blue, Gray, 000000, ect..<br>basically any colour or html colour code!<br>(not saved to product description)', 112, 60, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, ''),
(177, 'GLOBAL - ALLOW DEBUG MODE?', 'HTML_AREA_WYSIWYG_DEBUG', '0', 'Moniter Live-html, It updates as you type in a 2nd field above it.<p>Disable Debug = 0<br>Enable Debug = 1<br>Default = 0 OFF', 112, 65, '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(''0'', ''1''),'),
(178, 'PRODUCT DESCRIPTIONS use WYSIWYG HTMLAREA?', 'HTML_AREA_WYSIWYG_DISABLE', 'Disable', 'Enable/Disable WYSIWYG box', 112, 0, '2009-09-22 16:06:14', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(''Enable'', ''Disable''),'),
(179, 'Product Description Basic/Advanced Version?', 'HTML_AREA_WYSIWYG_BASIC_PD', 'Basic', 'Basic Features FASTER<br>Advanced Features SLOWER', 112, 10, '2008-04-21 15:39:17', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(''Basic'', ''Advanced''),'),
(180, 'Product Description Layout Width', 'HTML_AREA_WYSIWYG_WIDTH', '505', 'How WIDE should the HTMLAREA be in pixels (default: 505)', 112, 15, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, ''),
(181, 'Product Description Layout Height', 'HTML_AREA_WYSIWYG_HEIGHT', '240', 'How HIGH should the HTMLAREA be in pixels (default: 240)', 112, 19, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, ''),
(182, 'CUSTOMER EMAILS use WYSIWYG HTMLAREA?', 'HTML_AREA_WYSIWYG_DISABLE_EMAIL', 'Enable', 'Use WYSIWYG Area in Email Customers', 112, 20, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(''Enable'', ''Disable''),'),
(183, 'Customer Email Basic/Advanced Version?', 'HTML_AREA_WYSIWYG_BASIC_EMAIL', 'Advanced', 'Basic Features FASTER<br>Advanced Features SLOWER', 112, 21, '2007-05-08 21:39:02', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(''Basic'', ''Advanced''),'),
(184, 'Customer Email Layout Width', 'EMAIL_AREA_WYSIWYG_WIDTH', '505', 'How WIDE should the HTMLAREA be in pixels (default: 505)', 112, 25, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, ''),
(185, 'Customer Email Layout Height', 'EMAIL_AREA_WYSIWYG_HEIGHT', '140', 'How HIGH should the HTMLAREA be in pixels (default: 140)', 112, 29, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, ''),
(186, 'NEWSLETTER EMAILS use WYSIWYG HTMLAREA?', 'HTML_AREA_WYSIWYG_DISABLE_NEWSLETTER', 'Enable', 'Use WYSIWYG Area in Email Newsletter', 112, 30, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(''Enable'', ''Disable''),'),
(187, 'Newsletter Email Basic/Advanced Version?', 'HTML_AREA_WYSIWYG_BASIC_NEWSLETTER', 'Basic', 'Basic Features FASTER<br>Advanced Features SLOWER', 112, 32, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(''Basic'', ''Advanced''),'),
(188, 'Newsletter Email Layout Width', 'NEWSLETTER_EMAIL_WYSIWYG_WIDTH', '505', 'How WIDE should the HTMLAREA be in pixels (default: 505)', 112, 35, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, ''),
(189, 'Newsletter Email Layout Height', 'NEWSLETTER_EMAIL_WYSIWYG_HEIGHT', '140', 'How HIGH should the HTMLAREA be in pixels (default: 140)', 112, 39, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, ''),
(190, 'DEFINE MAINPAGE use WYSIWYG HTMLAREA?', 'HTML_AREA_WYSIWYG_DISABLE_DEFINE', 'Enable', 'Use WYSIWYG Area in Define Mainpage', 112, 40, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(''Enable'', ''Disable''),'),
(191, 'Define Mainpage Basic/Advanced Version?', 'HTML_AREA_WYSIWYG_BASIC_DEFINE', 'Basic', 'Basic Features FASTER<br>Advanced Features SLOWER', 112, 41, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(''Basic'', ''Advanced''),'),
(192, 'Define Mainpage Layout Width', 'DEFINE_MAINPAGE_WYSIWYG_WIDTH', '605', 'How WIDE should the HTMLAREA be in pixels (default: 505)', 112, 42, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, ''),
(193, 'Define Mainpage Layout Height', 'DEFINE_MAINPAGE_WYSIWYG_HEIGHT', '300', 'How HIGH should the HTMLAREA be in pixels (default: 140)', 112, 43, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, ''),
(194, 'GLOBAL - User Interface Font Type', 'HTML_AREA_WYSIWYG_FONT_TYPE', 'Times New Roman', 'User Interface Font Type<br>(not saved to product description)', 112, 45, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(''Arial'', ''Courier New'', ''Georgia'', ''Impact'', ''Tahoma'', ''Times New Roman'', ''Verdana'', ''Wingdings''),'),
(195, 'GLOBAL - User Interface Font Size', 'HTML_AREA_WYSIWYG_FONT_SIZE', '12', 'User Interface Font Size (not saved to product description)<p><b>10 Equals 10 pt', 112, 50, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(\\''8\\'', \\''10\\'', \\''12\\'', \\''14\\'', \\''18\\'', \\''24\\'', \\''36\\''),'),
(196, 'GLOBAL - User Interface Font Colour', 'HTML_AREA_WYSIWYG_FONT_COLOUR', 'Black', 'White, Black, C0C0C0, Red, FFFFFF, Yellow, Pink, Blue, Gray, 000000, ect..<br>basically any colour or HTML colour code!<br>(not saved to product description)', 112, 55, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, ''),
(197, 'GLOBAL - User Interface Background Colour', 'HTML_AREA_WYSIWYG_BG_COLOUR', 'White', 'White, Black, C0C0C0, Red, FFFFFF, Yellow, Pink, Blue, Gray, 000000, ect..<br>basically any colour or html colour code!<br>(not saved to product description)', 112, 60, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, ''),
(198, 'GLOBAL - ALLOW DEBUG MODE?', 'HTML_AREA_WYSIWYG_DEBUG', '0', 'Moniter Live-html, It updates as you type in a 2nd field above it.<p>Disable Debug = 0<br>Enable Debug = 1<br>Default = 0 OFF', 112, 65, '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(''0'', ''1''),'),
(222, 'Enable PayPal Module', 'MODULE_PAYMENT_PAYPAL_STATUS', 'True', 'Do you want to accept PayPal payments?', 6, 3, NULL, '2008-02-06 19:00:52', NULL, 'tep_cfg_select_option(array(''True'', ''False''),'),
(223, 'E-Mail Address', 'MODULE_PAYMENT_PAYPAL_ID', 'order@apolomultimedia.com', 'The e-mail address to use for the PayPal service', 6, 4, NULL, '2008-02-06 19:00:52', NULL, NULL),
(224, 'Transaction Currency', 'MODULE_PAYMENT_PAYPAL_CURRENCY', 'Selected Currency', 'The currency to use for credit card transactions', 6, 6, NULL, '2008-02-06 19:00:52', NULL, 'tep_cfg_select_option(array(''Selected Currency'',''Only USD'',''Only CAD'',''Only EUR'',''Only GBP'',''Only JPY''),'),
(225, 'Sort order of display.', 'MODULE_PAYMENT_PAYPAL_SORT_ORDER', '1', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2008-02-06 19:00:52', NULL, NULL),
(226, 'Payment Zone', 'MODULE_PAYMENT_PAYPAL_ZONE', '4', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2008-02-06 19:00:52', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(227, 'Set Order Status', 'MODULE_PAYMENT_PAYPAL_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2008-02-06 19:00:52', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(228, 'Mostrar imagenes adicionales en product info', 'DISPLAY_EXTRA_IMAGES', 'true', 'mostrar imagenes adicionales', 1, 87, '2005-11-17 17:20:36', '2005-10-20 17:40:05', '', 'tep_cfg_select_option(array(''false'', ''true''),'),
(506, 'Last Database Restore', 'DB_LAST_RESTORE', 'db_apolomul_tadatabases-20100623172333.sql', 'Last database restore file', 6, 0, '0000-00-00 00:00:00', '2010-10-05 18:19:20', '', ''),
(504, 'Sort Order', 'MODULE_SHIPPING_FEDEX_SORT_ORDER', '0', 'Sort order of display.', 6, 0, NULL, '2010-01-28 17:24:44', NULL, NULL),
(503, 'FedEx Meter Number', 'MODULE_SHIPPING_FEDEX_METER_NUM', '118506029', 'Enter FedEx Meter Number', 6, 0, NULL, '2010-01-28 17:24:44', NULL, NULL),
(502, 'FedEx Account Number', 'MODULE_SHIPPING_FEDEX_ACT_NUM', '510087941', 'Enter FedEx Account Number', 6, 0, NULL, '2010-01-28 17:24:44', NULL, NULL),
(501, 'FedEx Password', 'MODULE_SHIPPING_FEDEX_PWD', 'gOsLKlkAZsw2XW01yrqZi1GXR', 'Enter FedEx Password', 6, 0, NULL, '2010-01-28 17:24:44', NULL, NULL),
(500, 'FedEx Key', 'MODULE_SHIPPING_FEDEX_KEY', 'LC1ex9QP6w07deS8', 'Enter FedEx Key', 6, 0, NULL, '2010-01-28 17:24:44', NULL, NULL),
(327, 'Enable Check/Money Order Module', 'MODULE_PAYMENT_MONEYORDER_STATUS', 'True', 'Do you want to accept Check/Money Order payments?', 6, 1, NULL, '2008-05-12 20:54:40', NULL, 'tep_cfg_select_option(array(''True'', ''False''),'),
(328, 'Make Payable to:', 'MODULE_PAYMENT_MONEYORDER_PAYTO', 'APOLOMULTIMEDIA S.A.C.<br><br>Wells Fargo<br>checking account :9397618936<br>', 'Who should payments be made payable to?', 6, 1, NULL, '2008-05-12 20:54:40', NULL, NULL),
(329, 'Sort order of display.', 'MODULE_PAYMENT_MONEYORDER_SORT_ORDER', '2', 'Sort order of display. Lowest is displayed first.', 6, 0, NULL, '2008-05-12 20:54:40', NULL, NULL),
(330, 'Payment Zone', 'MODULE_PAYMENT_MONEYORDER_ZONE', '4', 'If a zone is selected, only enable this payment method for that zone.', 6, 2, NULL, '2008-05-12 20:54:40', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes('),
(331, 'Set Order Status', 'MODULE_PAYMENT_MONEYORDER_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', 6, 0, NULL, '2008-05-12 20:54:40', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses('),
(341, 'Enable Cash On Delivery Module', 'MODULE_PAYMENT_COD_STATUS', 'True', 'Do you want to accept Cash On Delevery payments?', 6, 1, NULL, '2008-05-13 18:43:28', NULL, 'tep_cfg_select_option(array(''True'', ''False''),'),
(383, 'Time Zone Offset', 'TIME_ZONE_OFFSET', '+7', 'The time zone difference between your store and the server. Enter +h, 0 or -h where ''h'' is the number of hours. If your store time zone is ahead of the server time zone, use +', 1, 7, '2009-01-07 14:44:00', '0001-01-01 00:00:00', NULL, NULL),
(384, 'Display Product Dimensions', 'PRODUCT_LIST_DIMENSIONS', '1', 'Do you want to display the Product Dimensions ?(0-No, 1-Yes)', 8, 11, '2009-09-23 18:02:51', '2009-09-23 17:48:19', NULL, NULL),
(505, 'Installed Modules', '', '', 'This is automatically updated. No need to edit.', 6, 0, NULL, '2010-03-26 19:21:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuration_group`
--

CREATE TABLE IF NOT EXISTS `configuration_group` (
  `configuration_group_id` int(11) NOT NULL auto_increment,
  `configuration_group_title` varchar(64) NOT NULL,
  `configuration_group_description` varchar(255) NOT NULL,
  `sort_order` int(5) default NULL,
  `visible` int(1) default '1',
  PRIMARY KEY  (`configuration_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

--
-- Volcar la base de datos para la tabla `configuration_group`
--

INSERT INTO `configuration_group` (`configuration_group_id`, `configuration_group_title`, `configuration_group_description`, `sort_order`, `visible`) VALUES
(1, 'Tienda', 'Información General de la Tienda', 1, 1),
(2, 'Valores Mínimos', 'Valores mínimos por funciones', 2, 1),
(3, 'Valores Máximos', 'Valores máximos por funciones', 3, 1),
(4, 'Imágenes', 'Parametros de Imagen', 4, 1),
(5, 'Detalles del Cliente', 'Configuración de la cuenta del cliente', 5, 1),
(6, 'Optiones de Módulo', 'Hidden from configuration', 6, 0),
(7, 'Envio / Empaque', 'Opciones Disponibles de Envio', 7, 1),
(8, 'Listado de Productos', 'Configuración de las opciones del listado de productos', 8, 1),
(9, 'Stock', 'Opcions de configuración de stock', 9, 1),
(10, 'Logging', 'Opcions de configuración de Logging', 10, 1),
(11, 'Cache', 'Opcions de configuración de Cache', 11, 1),
(12, 'Opciones de E-Mail', 'Configuración de E-mail', 12, 1),
(13, 'Descarga', 'Opciones de los productos descargables', 13, 1),
(14, 'Compresión GZip', 'Opciones de la compresión GZip', 14, 1),
(15, 'Sesiones', 'Opciones de Sesión', 15, 1),
(112, 'WYSIWYG Editor 1.6', 'Opciones de HTMLArea 1.6', 15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `counter`
--

CREATE TABLE IF NOT EXISTS `counter` (
  `startdate` char(8) default NULL,
  `counter` int(12) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `counter`
--

INSERT INTO `counter` (`startdate`, `counter`) VALUES
('20050707', 657003);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `counter_history`
--

CREATE TABLE IF NOT EXISTS `counter_history` (
  `month` char(8) default NULL,
  `counter` int(12) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `counter_history`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `countries_id` int(11) NOT NULL auto_increment,
  `countries_name` varchar(64) NOT NULL,
  `countries_iso_code_2` varchar(2) NOT NULL,
  `countries_iso_code_3` varchar(3) NOT NULL,
  `address_format_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`countries_id`),
  KEY `IDX_COUNTRIES_NAME` (`countries_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=240 ;

--
-- Volcar la base de datos para la tabla `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1),
(2, 'Albania', 'AL', 'ALB', 1),
(3, 'Algeria', 'DZ', 'DZA', 1),
(4, 'American Samoa', 'AS', 'ASM', 1),
(5, 'Andorra', 'AD', 'AND', 1),
(6, 'Angola', 'AO', 'AGO', 1),
(7, 'Anguilla', 'AI', 'AIA', 1),
(8, 'Antarctica', 'AQ', 'ATA', 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1),
(10, 'Argentina', 'AR', 'ARG', 1),
(11, 'Armenia', 'AM', 'ARM', 1),
(12, 'Aruba', 'AW', 'ABW', 1),
(13, 'Australia', 'AU', 'AUS', 1),
(14, 'Austria', 'AT', 'AUT', 5),
(15, 'Azerbaijan', 'AZ', 'AZE', 1),
(16, 'Bahamas', 'BS', 'BHS', 1),
(17, 'Bahrain', 'BH', 'BHR', 1),
(18, 'Bangladesh', 'BD', 'BGD', 1),
(19, 'Barbados', 'BB', 'BRB', 1),
(20, 'Belarus', 'BY', 'BLR', 1),
(21, 'Belgium', 'BE', 'BEL', 1),
(22, 'Belize', 'BZ', 'BLZ', 1),
(23, 'Benin', 'BJ', 'BEN', 1),
(24, 'Bermuda', 'BM', 'BMU', 1),
(25, 'Bhutan', 'BT', 'BTN', 1),
(26, 'Bolivia', 'BO', 'BOL', 1),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1),
(28, 'Botswana', 'BW', 'BWA', 1),
(29, 'Bouvet Island', 'BV', 'BVT', 1),
(30, 'Brazil', 'BR', 'BRA', 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1),
(33, 'Bulgaria', 'BG', 'BGR', 1),
(34, 'Burkina Faso', 'BF', 'BFA', 1),
(35, 'Burundi', 'BI', 'BDI', 1),
(36, 'Cambodia', 'KH', 'KHM', 1),
(37, 'Cameroon', 'CM', 'CMR', 1),
(38, 'Canada', 'CA', 'CAN', 1),
(39, 'Cape Verde', 'CV', 'CPV', 1),
(40, 'Cayman Islands', 'KY', 'CYM', 1),
(41, 'Central African Republic', 'CF', 'CAF', 1),
(42, 'Chad', 'TD', 'TCD', 1),
(43, 'Chile', 'CL', 'CHL', 1),
(44, 'China', 'CN', 'CHN', 1),
(45, 'Christmas Island', 'CX', 'CXR', 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1),
(47, 'Colombia', 'CO', 'COL', 1),
(48, 'Comoros', 'KM', 'COM', 1),
(49, 'Congo', 'CG', 'COG', 1),
(50, 'Cook Islands', 'CK', 'COK', 1),
(51, 'Costa Rica', 'CR', 'CRI', 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', 1),
(53, 'Croatia', 'HR', 'HRV', 1),
(54, 'Cuba', 'CU', 'CUB', 1),
(55, 'Cyprus', 'CY', 'CYP', 1),
(56, 'Czech Republic', 'CZ', 'CZE', 1),
(57, 'Denmark', 'DK', 'DNK', 1),
(58, 'Djibouti', 'DJ', 'DJI', 1),
(59, 'Dominica', 'DM', 'DMA', 1),
(60, 'Dominican Republic', 'DO', 'DOM', 1),
(61, 'East Timor', 'TP', 'TMP', 1),
(62, 'Ecuador', 'EC', 'ECU', 1),
(63, 'Egypt', 'EG', 'EGY', 1),
(64, 'El Salvador', 'SV', 'SLV', 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1),
(66, 'Eritrea', 'ER', 'ERI', 1),
(67, 'Estonia', 'EE', 'EST', 1),
(68, 'Ethiopia', 'ET', 'ETH', 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1),
(70, 'Faroe Islands', 'FO', 'FRO', 1),
(71, 'Fiji', 'FJ', 'FJI', 1),
(72, 'Finland', 'FI', 'FIN', 1),
(73, 'France', 'FR', 'FRA', 1),
(74, 'France, Metropolitan', 'FX', 'FXX', 1),
(75, 'French Guiana', 'GF', 'GUF', 1),
(76, 'French Polynesia', 'PF', 'PYF', 1),
(77, 'French Southern Territories', 'TF', 'ATF', 1),
(78, 'Gabon', 'GA', 'GAB', 1),
(79, 'Gambia', 'GM', 'GMB', 1),
(80, 'Georgia', 'GE', 'GEO', 1),
(81, 'Germany', 'DE', 'DEU', 5),
(82, 'Ghana', 'GH', 'GHA', 1),
(83, 'Gibraltar', 'GI', 'GIB', 1),
(84, 'Greece', 'GR', 'GRC', 1),
(85, 'Greenland', 'GL', 'GRL', 1),
(86, 'Grenada', 'GD', 'GRD', 1),
(87, 'Guadeloupe', 'GP', 'GLP', 1),
(88, 'Guam', 'GU', 'GUM', 1),
(89, 'Guatemala', 'GT', 'GTM', 1),
(90, 'Guinea', 'GN', 'GIN', 1),
(91, 'Guinea-bissau', 'GW', 'GNB', 1),
(92, 'Guyana', 'GY', 'GUY', 1),
(93, 'Haiti', 'HT', 'HTI', 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1),
(95, 'Honduras', 'HN', 'HND', 1),
(96, 'Hong Kong', 'HK', 'HKG', 1),
(97, 'Hungary', 'HU', 'HUN', 1),
(98, 'Iceland', 'IS', 'ISL', 1),
(99, 'India', 'IN', 'IND', 1),
(100, 'Indonesia', 'ID', 'IDN', 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1),
(102, 'Iraq', 'IQ', 'IRQ', 1),
(103, 'Ireland', 'IE', 'IRL', 1),
(104, 'Israel', 'IL', 'ISR', 1),
(105, 'Italy', 'IT', 'ITA', 1),
(106, 'Jamaica', 'JM', 'JAM', 1),
(107, 'Japan', 'JP', 'JPN', 1),
(108, 'Jordan', 'JO', 'JOR', 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1),
(110, 'Kenya', 'KE', 'KEN', 1),
(111, 'Kiribati', 'KI', 'KIR', 1),
(112, 'Korea, Democratic People''s Republic of', 'KP', 'PRK', 1),
(113, 'Korea, Republic of', 'KR', 'KOR', 1),
(114, 'Kuwait', 'KW', 'KWT', 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', 1),
(117, 'Latvia', 'LV', 'LVA', 1),
(118, 'Lebanon', 'LB', 'LBN', 1),
(119, 'Lesotho', 'LS', 'LSO', 1),
(120, 'Liberia', 'LR', 'LBR', 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1),
(122, 'Liechtenstein', 'LI', 'LIE', 1),
(123, 'Lithuania', 'LT', 'LTU', 1),
(124, 'Luxembourg', 'LU', 'LUX', 1),
(125, 'Macau', 'MO', 'MAC', 1),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1),
(127, 'Madagascar', 'MG', 'MDG', 1),
(128, 'Malawi', 'MW', 'MWI', 1),
(129, 'Malaysia', 'MY', 'MYS', 1),
(130, 'Maldives', 'MV', 'MDV', 1),
(131, 'Mali', 'ML', 'MLI', 1),
(132, 'Malta', 'MT', 'MLT', 1),
(133, 'Marshall Islands', 'MH', 'MHL', 1),
(134, 'Martinique', 'MQ', 'MTQ', 1),
(135, 'Mauritania', 'MR', 'MRT', 1),
(136, 'Mauritius', 'MU', 'MUS', 1),
(137, 'Mayotte', 'YT', 'MYT', 1),
(138, 'Mexico', 'MX', 'MEX', 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1),
(141, 'Monaco', 'MC', 'MCO', 1),
(142, 'Mongolia', 'MN', 'MNG', 1),
(143, 'Montserrat', 'MS', 'MSR', 1),
(144, 'Morocco', 'MA', 'MAR', 1),
(145, 'Mozambique', 'MZ', 'MOZ', 1),
(146, 'Myanmar', 'MM', 'MMR', 1),
(147, 'Namibia', 'NA', 'NAM', 1),
(148, 'Nauru', 'NR', 'NRU', 1),
(149, 'Nepal', 'NP', 'NPL', 1),
(150, 'Netherlands', 'NL', 'NLD', 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1),
(152, 'New Caledonia', 'NC', 'NCL', 1),
(153, 'New Zealand', 'NZ', 'NZL', 1),
(154, 'Nicaragua', 'NI', 'NIC', 1),
(155, 'Niger', 'NE', 'NER', 1),
(156, 'Nigeria', 'NG', 'NGA', 1),
(157, 'Niue', 'NU', 'NIU', 1),
(158, 'Norfolk Island', 'NF', 'NFK', 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1),
(160, 'Norway', 'NO', 'NOR', 1),
(161, 'Oman', 'OM', 'OMN', 1),
(162, 'Pakistan', 'PK', 'PAK', 1),
(163, 'Palau', 'PW', 'PLW', 1),
(164, 'Panama', 'PA', 'PAN', 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 1),
(166, 'Paraguay', 'PY', 'PRY', 1),
(167, 'Peru', 'PE', 'PER', 1),
(168, 'Philippines', 'PH', 'PHL', 1),
(169, 'Pitcairn', 'PN', 'PCN', 1),
(170, 'Poland', 'PL', 'POL', 1),
(171, 'Portugal', 'PT', 'PRT', 1),
(172, 'Puerto Rico', 'PR', 'PRI', 1),
(173, 'Qatar', 'QA', 'QAT', 1),
(174, 'Reunion', 'RE', 'REU', 1),
(175, 'Romania', 'RO', 'ROM', 1),
(176, 'Russian Federation', 'RU', 'RUS', 1),
(177, 'Rwanda', 'RW', 'RWA', 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1),
(179, 'Saint Lucia', 'LC', 'LCA', 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1),
(181, 'Samoa', 'WS', 'WSM', 1),
(182, 'San Marino', 'SM', 'SMR', 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 1),
(185, 'Senegal', 'SN', 'SEN', 1),
(186, 'Seychelles', 'SC', 'SYC', 1),
(187, 'Sierra Leone', 'SL', 'SLE', 1),
(188, 'Singapore', 'SG', 'SGP', 4),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1),
(190, 'Slovenia', 'SI', 'SVN', 1),
(191, 'Solomon Islands', 'SB', 'SLB', 1),
(192, 'Somalia', 'SO', 'SOM', 1),
(193, 'South Africa', 'ZA', 'ZAF', 1),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1),
(195, 'Spain', 'ES', 'ESP', 3),
(196, 'Sri Lanka', 'LK', 'LKA', 1),
(197, 'St. Helena', 'SH', 'SHN', 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1),
(199, 'Sudan', 'SD', 'SDN', 1),
(200, 'Suriname', 'SR', 'SUR', 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1),
(202, 'Swaziland', 'SZ', 'SWZ', 1),
(203, 'Sweden', 'SE', 'SWE', 1),
(204, 'Switzerland', 'CH', 'CHE', 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1),
(206, 'Taiwan', 'TW', 'TWN', 1),
(207, 'Tajikistan', 'TJ', 'TJK', 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1),
(209, 'Thailand', 'TH', 'THA', 1),
(210, 'Togo', 'TG', 'TGO', 1),
(211, 'Tokelau', 'TK', 'TKL', 1),
(212, 'Tonga', 'TO', 'TON', 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1),
(214, 'Tunisia', 'TN', 'TUN', 1),
(215, 'Turkey', 'TR', 'TUR', 1),
(216, 'Turkmenistan', 'TM', 'TKM', 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1),
(218, 'Tuvalu', 'TV', 'TUV', 1),
(219, 'Uganda', 'UG', 'UGA', 1),
(220, 'Ukraine', 'UA', 'UKR', 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 1),
(222, 'United Kingdom', 'GB', 'GBR', 1),
(223, 'United States', 'US', 'USA', 2),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1),
(225, 'Uruguay', 'UY', 'URY', 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 1),
(227, 'Vanuatu', 'VU', 'VUT', 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1),
(229, 'Venezuela', 'VE', 'VEN', 1),
(230, 'Viet Nam', 'VN', 'VNM', 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1),
(234, 'Western Sahara', 'EH', 'ESH', 1),
(235, 'Yemen', 'YE', 'YEM', 1),
(236, 'Yugoslavia', 'YU', 'YUG', 1),
(237, 'Zaire', 'ZR', 'ZAR', 1),
(238, 'Zambia', 'ZM', 'ZMB', 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE IF NOT EXISTS `currencies` (
  `currencies_id` int(11) NOT NULL auto_increment,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) default NULL,
  `symbol_right` varchar(12) default NULL,
  `decimal_point` char(1) default NULL,
  `thousands_point` char(1) default NULL,
  `decimal_places` char(1) default NULL,
  `value` float(13,8) default NULL,
  `last_updated` datetime default NULL,
  PRIMARY KEY  (`currencies_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `currencies`
--

INSERT INTO `currencies` (`currencies_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `value`, `last_updated`) VALUES
(2, 'Euro', 'EUR', '', 'EUR', '.', ',', '2', 1.00000000, '2005-07-07 10:38:23'),
(1, 'US Dollar', 'USD', '$', '', '.', '', '2', 1.00000000, '2005-07-07 10:38:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customers_id` int(11) NOT NULL auto_increment,
  `customers_gender` char(1) NOT NULL,
  `customers_firstname` varchar(32) NOT NULL,
  `customers_lastname` varchar(32) NOT NULL,
  `customers_dob` datetime NOT NULL default '0000-00-00 00:00:00',
  `customers_email_address` varchar(96) NOT NULL,
  `customers_default_address_id` int(11) NOT NULL default '0',
  `customers_telephone` varchar(32) NOT NULL,
  `customers_fax` varchar(32) default NULL,
  `customers_password` varchar(40) NOT NULL,
  `customers_newsletter` char(1) default NULL,
  `customers_group_id` smallint(5) unsigned NOT NULL default '0',
  `customers_group_ra` enum('0','1') NOT NULL default '0',
  `customers_payment_allowed` varchar(255) NOT NULL,
  `customers_shipment_allowed` varchar(255) NOT NULL,
  PRIMARY KEY  (`customers_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=235 ;

--
-- Volcar la base de datos para la tabla `customers`
--

INSERT INTO `customers` (`customers_id`, `customers_gender`, `customers_firstname`, `customers_lastname`, `customers_dob`, `customers_email_address`, `customers_default_address_id`, `customers_telephone`, `customers_fax`, `customers_password`, `customers_newsletter`, `customers_group_id`, `customers_group_ra`, `customers_payment_allowed`, `customers_shipment_allowed`) VALUES
(234, 'm', 'Taylor', 'Smith', '1975-12-12 00:00:00', 'gastoncarozi@hotmail.com', 247, '999999999', '', 'b40e1b7c991316a0f6015201de372271:39', '1', 1, '0', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers_basket`
--

CREATE TABLE IF NOT EXISTS `customers_basket` (
  `customers_basket_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `products_id` tinytext NOT NULL,
  `customers_basket_quantity` int(2) NOT NULL default '0',
  `final_price` decimal(15,4) NOT NULL default '0.0000',
  `customers_basket_date_added` varchar(8) default NULL,
  PRIMARY KEY  (`customers_basket_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `customers_basket`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers_basket_attributes`
--

CREATE TABLE IF NOT EXISTS `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `products_id` tinytext NOT NULL,
  `products_options_id` int(11) NOT NULL default '0',
  `products_options_value_id` int(11) NOT NULL default '0',
  `products_options_value_text` text,
  PRIMARY KEY  (`customers_basket_attributes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `customers_basket_attributes`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers_groups`
--

CREATE TABLE IF NOT EXISTS `customers_groups` (
  `customers_group_id` smallint(5) unsigned NOT NULL default '0',
  `customers_group_name` varchar(32) NOT NULL,
  `customers_group_show_tax` enum('1','0') NOT NULL default '1',
  `customers_group_tax_exempt` enum('0','1') NOT NULL default '0',
  `group_payment_allowed` varchar(255) NOT NULL,
  `group_shipment_allowed` varchar(255) NOT NULL,
  PRIMARY KEY  (`customers_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `customers_groups`
--

INSERT INTO `customers_groups` (`customers_group_id`, `customers_group_name`, `customers_group_show_tax`, `customers_group_tax_exempt`, `group_payment_allowed`, `group_shipment_allowed`) VALUES
(3, 'Empresa', '0', '1', 'moneyorder.php;paypal.php', 'flat.php;flat2.php'),
(1, 'Particular', '1', '1', '', ''),
(2, 'Tienda', '0', '1', 'moneyorder.php;paypal.php', 'flat.php;flat2.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers_groups_tax_rates_exempt`
--

CREATE TABLE IF NOT EXISTS `customers_groups_tax_rates_exempt` (
  `customers_group_id` int(11) NOT NULL default '0',
  `tax_rates_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`customers_group_id`,`tax_rates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `customers_groups_tax_rates_exempt`
--

INSERT INTO `customers_groups_tax_rates_exempt` (`customers_group_id`, `tax_rates_id`) VALUES
(1, 8),
(2, 5),
(3, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers_info`
--

CREATE TABLE IF NOT EXISTS `customers_info` (
  `customers_info_id` int(11) NOT NULL default '0',
  `customers_info_date_of_last_logon` datetime default NULL,
  `customers_info_number_of_logons` int(5) default NULL,
  `customers_info_date_account_created` datetime default NULL,
  `customers_info_date_account_last_modified` datetime default NULL,
  `global_product_notifications` int(1) default '0',
  PRIMARY KEY  (`customers_info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `customers_info`
--

INSERT INTO `customers_info` (`customers_info_id`, `customers_info_date_of_last_logon`, `customers_info_number_of_logons`, `customers_info_date_account_created`, `customers_info_date_account_last_modified`, `global_product_notifications`) VALUES
(30, NULL, 0, '2008-05-06 11:59:27', '2008-05-06 12:37:07', 0),
(32, NULL, 0, '2008-05-06 12:13:33', '2008-05-06 13:51:42', 0),
(33, '2008-05-06 14:35:47', 1, '2008-05-06 12:38:17', '2008-05-06 13:37:50', 0),
(234, '2010-05-06 10:44:31', 38, '2009-01-07 14:25:49', '2009-09-22 13:24:53', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers_newsletters`
--

CREATE TABLE IF NOT EXISTS `customers_newsletters` (
  `id_customers_newsletters` int(11) NOT NULL auto_increment,
  `email_customers_newsletters` varchar(255) NOT NULL,
  `name_customers_newsletters` varchar(255) NOT NULL,
  PRIMARY KEY  (`id_customers_newsletters`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `customers_newsletters`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `geo_zones`
--

CREATE TABLE IF NOT EXISTS `geo_zones` (
  `geo_zone_id` int(11) NOT NULL auto_increment,
  `geo_zone_name` varchar(32) NOT NULL,
  `geo_zone_description` varchar(255) NOT NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `geo_zones`
--

INSERT INTO `geo_zones` (`geo_zone_id`, `geo_zone_name`, `geo_zone_description`, `last_modified`, `date_added`) VALUES
(1, 'España', '', '2008-03-11 01:11:23', '2005-07-07 10:38:23'),
(2, 'Internacional', '', '2008-03-11 06:26:13', '2008-03-11 01:08:25'),
(3, 'España lejana', '', NULL, '2008-03-11 06:26:58'),
(4, 'todo el mundo', 'todo el mundo', NULL, '2008-03-11 21:37:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `google_checkout`
--

CREATE TABLE IF NOT EXISTS `google_checkout` (
  `customers_id` int(11) default NULL,
  `buyer_id` bigint(20) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `google_checkout`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `google_orders`
--

CREATE TABLE IF NOT EXISTS `google_orders` (
  `orders_id` int(11) default NULL,
  `google_order_number` bigint(20) default NULL,
  `order_amount` decimal(15,4) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `google_orders`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imgs`
--

CREATE TABLE IF NOT EXISTS `imgs` (
  `id_imgs` int(11) NOT NULL auto_increment,
  `file_imgs` varchar(200) NOT NULL,
  PRIMARY KEY  (`id_imgs`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcar la base de datos para la tabla `imgs`
--

INSERT INTO `imgs` (`id_imgs`, `file_imgs`) VALUES
(1, 'm1.jpg'),
(2, 'm1.jpg'),
(3, 'm1.jpg'),
(4, 'm1.jpg'),
(5, 'm1.jpg'),
(6, 'm1.jpg'),
(7, 'm1.jpg'),
(8, 'm1.jpg'),
(9, 'm1.jpg'),
(10, 'm1.jpg'),
(11, 'm1.jpg'),
(12, 'm1.jpg'),
(13, 'm1.jpg'),
(14, 'm1.jpg'),
(15, 'm1.jpg'),
(16, 'm1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `languages_id` int(11) NOT NULL auto_increment,
  `name` varchar(32) NOT NULL,
  `code` varchar(2) NOT NULL,
  `image` varchar(64) default NULL,
  `directory` varchar(32) default NULL,
  `sort_order` int(3) default NULL,
  PRIMARY KEY  (`languages_id`),
  KEY `IDX_LANGUAGES_NAME` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`) VALUES
(2, 'Español', 'es', 'icon.gif', 'espanol', 2),
(1, 'English', 'en', 'icon.gif', 'english', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manufacturers`
--

CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturers_id` int(11) NOT NULL auto_increment,
  `manufacturers_name` varchar(32) NOT NULL,
  `manufacturers_image` varchar(64) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  PRIMARY KEY  (`manufacturers_id`),
  KEY `IDX_MANUFACTURERS_NAME` (`manufacturers_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `manufacturers`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manufacturers_info`
--

CREATE TABLE IF NOT EXISTS `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `manufacturers_url` varchar(255) NOT NULL,
  `url_clicked` int(5) NOT NULL default '0',
  `date_last_click` datetime default NULL,
  PRIMARY KEY  (`manufacturers_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `manufacturers_info`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `music`
--

CREATE TABLE IF NOT EXISTS `music` (
  `id_music` int(11) NOT NULL auto_increment,
  `name_music` varchar(200) NOT NULL,
  `band_music` varchar(200) NOT NULL,
  `file_music` varchar(200) NOT NULL,
  PRIMARY KEY  (`id_music`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `music`
--

INSERT INTO `music` (`id_music`, `name_music`, `band_music`, `file_music`) VALUES
(1, 'Never let me down', 'Depeche Mode', '(05) depeche mode - never let me down again363.mp3'),
(2, 'If you leave', 'OMD', '(80''s) omd- if you leave (pretty in pink soundtrack).mp3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletters`
--

CREATE TABLE IF NOT EXISTS `newsletters` (
  `newsletters_id` int(11) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL,
  `image` varchar(200) default NULL,
  `content` text NOT NULL,
  `module` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `date_sent` datetime default NULL,
  `status` int(1) default NULL,
  `locked` int(1) default '0',
  PRIMARY KEY  (`newsletters_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcar la base de datos para la tabla `newsletters`
--

INSERT INTO `newsletters` (`newsletters_id`, `title`, `image`, `content`, `module`, `date_added`, `date_sent`, `status`, `locked`) VALUES
(2, 'testing', 'celphone pantalla.png', '<p>testing..88</p>', 'newsletter', '2009-09-16 18:46:55', '2009-09-16 13:00:20', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orders_id` int(11) NOT NULL auto_increment,
  `customers_id` int(11) NOT NULL default '0',
  `customers_name` varchar(64) NOT NULL,
  `customers_company` varchar(32) default NULL,
  `customers_street_address` varchar(64) NOT NULL,
  `customers_suburb` varchar(32) default NULL,
  `customers_city` varchar(32) NOT NULL,
  `customers_postcode` varchar(10) NOT NULL,
  `customers_state` varchar(32) default NULL,
  `customers_country` varchar(32) NOT NULL,
  `customers_telephone` varchar(32) NOT NULL,
  `customers_email_address` varchar(96) NOT NULL,
  `customers_address_format_id` int(5) NOT NULL default '0',
  `delivery_name` varchar(64) NOT NULL,
  `delivery_company` varchar(32) default NULL,
  `delivery_street_address` varchar(64) NOT NULL,
  `delivery_suburb` varchar(32) default NULL,
  `delivery_city` varchar(32) NOT NULL,
  `delivery_postcode` varchar(10) NOT NULL,
  `delivery_state` varchar(32) default NULL,
  `delivery_country` varchar(32) NOT NULL,
  `delivery_address_format_id` int(5) NOT NULL default '0',
  `billing_name` varchar(64) NOT NULL,
  `billing_company` varchar(32) default NULL,
  `billing_street_address` varchar(64) NOT NULL,
  `billing_suburb` varchar(32) default NULL,
  `billing_city` varchar(32) NOT NULL,
  `billing_postcode` varchar(10) NOT NULL,
  `billing_state` varchar(32) default NULL,
  `billing_country` varchar(32) NOT NULL,
  `billing_address_format_id` int(5) NOT NULL default '0',
  `payment_method` varchar(32) NOT NULL,
  `cc_type` varchar(20) default NULL,
  `cc_owner` varchar(64) default NULL,
  `cc_number` varchar(32) default NULL,
  `cc_expires` varchar(4) default NULL,
  `last_modified` datetime default NULL,
  `date_purchased` datetime default NULL,
  `orders_status` int(5) NOT NULL default '0',
  `orders_date_finished` datetime default NULL,
  `currency` varchar(3) default NULL,
  `currency_value` decimal(14,6) default NULL,
  PRIMARY KEY  (`orders_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcar la base de datos para la tabla `orders`
--

INSERT INTO `orders` (`orders_id`, `customers_id`, `customers_name`, `customers_company`, `customers_street_address`, `customers_suburb`, `customers_city`, `customers_postcode`, `customers_state`, `customers_country`, `customers_telephone`, `customers_email_address`, `customers_address_format_id`, `delivery_name`, `delivery_company`, `delivery_street_address`, `delivery_suburb`, `delivery_city`, `delivery_postcode`, `delivery_state`, `delivery_country`, `delivery_address_format_id`, `billing_name`, `billing_company`, `billing_street_address`, `billing_suburb`, `billing_city`, `billing_postcode`, `billing_state`, `billing_country`, `billing_address_format_id`, `payment_method`, `cc_type`, `cc_owner`, `cc_number`, `cc_expires`, `last_modified`, `date_purchased`, `orders_status`, `orders_date_finished`, `currency`, `currency_value`) VALUES
(8, 234, 'Taylor Smith', 'apolo', 'jr. los castaños 1174', '', 'lima', 'lima 39', 'lima', 'Peru', '999999999', 'gastoncarozi@hotmail.com', 1, 'Amber Smith', '', '308 Mozart Ave E', '', 'Mankato', '56001', 'Minnesota', 'United States', 2, 'Amber Smith', '', '308 Mozart Ave E', '', 'Mankato', '56001', 'Minnesota', 'United States', 2, 'Check/Money Order', '', '', '', '', NULL, '2009-09-22 20:56:53', 1, NULL, 'USD', '1.000000'),
(7, 234, 'lobo lovote', 'apolo', 'jr. los castaños 1174', '', 'lima', 'lima 39', 'lima', 'Peru', '5213675', 'gastoncarozi@hotmail.com', 1, 'asd asd', '', 'asdas 4545', '', 'adasd', 'asdasd', 'A Coruna', 'Spain', 3, 'asd asd', '', 'asdas 4545', '', 'adasd', 'asdasd', 'A Coruna', 'Spain', 3, 'Check/Money Order', '', '', '', '', NULL, '2009-09-17 17:35:03', 1, NULL, 'USD', '1.000000'),
(9, 234, 'Taylor Smith', '', '13450 Farmcrest Ct', '', 'Herndon', '20171', 'Virginia', 'United States', '999999999', 'gastoncarozi@hotmail.com', 2, 'Taylor Smith', '', '13450 Farmcrest Ct', '', 'Herndon', '20171', 'Virginia', 'United States', 2, 'Taylor Smith', '', '13450 Farmcrest Ct', '', 'Herndon', '20171', 'Virginia', 'United States', 2, 'Check/Money Order', '', '', '', '', NULL, '2010-01-29 01:03:30', 1, NULL, 'USD', '1.000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_products`
--

CREATE TABLE IF NOT EXISTS `orders_products` (
  `orders_products_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `products_id` int(11) NOT NULL default '0',
  `products_model` varchar(12) default NULL,
  `products_name` varchar(64) NOT NULL,
  `products_price` decimal(15,4) NOT NULL default '0.0000',
  `final_price` decimal(15,4) NOT NULL default '0.0000',
  `products_tax` decimal(7,4) NOT NULL default '0.0000',
  `products_quantity` int(2) NOT NULL default '0',
  PRIMARY KEY  (`orders_products_id`),
  KEY `orders_id` (`orders_id`),
  KEY `products_id` (`products_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Volcar la base de datos para la tabla `orders_products`
--

INSERT INTO `orders_products` (`orders_products_id`, `orders_id`, `products_id`, `products_model`, `products_name`, `products_price`, `final_price`, `products_tax`, `products_quantity`) VALUES
(9, 8, 2578, '', 'Product 1', '14.0000', '14.5000', '0.0000', 1),
(8, 7, 2578, '', 'Product 1', '13.0000', '13.5000', '0.0000', 10),
(10, 9, 2578, '', 'Product 1', '14.0000', '14.5000', '0.0000', 1),
(11, 9, 2579, '', 'Product 2', '12.0000', '12.0000', '0.0000', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_products_attributes`
--

CREATE TABLE IF NOT EXISTS `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_products_id` int(11) NOT NULL default '0',
  `products_options` varchar(32) NOT NULL,
  `products_options_values` varchar(32) NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL default '0.0000',
  `price_prefix` char(1) NOT NULL,
  PRIMARY KEY  (`orders_products_attributes_id`),
  KEY `orders_products_id` (`orders_products_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `orders_products_attributes`
--

INSERT INTO `orders_products_attributes` (`orders_products_attributes_id`, `orders_id`, `orders_products_id`, `products_options`, `products_options_values`, `options_values_price`, `price_prefix`) VALUES
(4, 7, 8, 'Colors', 'red', '0.5000', '+'),
(5, 8, 9, 'Colors', 'red', '0.5000', '+'),
(6, 9, 10, 'Colors', 'red', '0.5000', '+');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_products_download`
--

CREATE TABLE IF NOT EXISTS `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_products_id` int(11) NOT NULL default '0',
  `orders_products_filename` varchar(255) NOT NULL,
  `download_maxdays` int(2) NOT NULL default '0',
  `download_count` int(2) NOT NULL default '0',
  PRIMARY KEY  (`orders_products_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `orders_products_download`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_status`
--

CREATE TABLE IF NOT EXISTS `orders_status` (
  `orders_status_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `orders_status_name` varchar(32) NOT NULL,
  PRIMARY KEY  (`orders_status_id`,`language_id`),
  KEY `idx_orders_status_name` (`orders_status_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `language_id`, `orders_status_name`) VALUES
(1, 2, 'Pendiente'),
(2, 2, 'Procesando'),
(3, 2, 'Entregado'),
(100, 2, 'Google New'),
(101, 2, 'Google Processing'),
(102, 2, 'Google Shipped'),
(103, 2, 'Google Refunded'),
(104, 2, 'Google Shipped and Refunded'),
(105, 2, 'Google Canceled'),
(1, 1, 'Pending'),
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(100, 1, 'Google Noticias'),
(101, 1, 'Google Procesando'),
(102, 1, 'Google Enviado'),
(103, 1, 'Google Devolución'),
(104, 1, 'Google Enviado y Devolución'),
(105, 1, 'Google Cancelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_status_history`
--

CREATE TABLE IF NOT EXISTS `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `orders_status_id` int(5) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `customer_notified` int(1) default '0',
  `comments` text,
  PRIMARY KEY  (`orders_status_history_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcar la base de datos para la tabla `orders_status_history`
--

INSERT INTO `orders_status_history` (`orders_status_history_id`, `orders_id`, `orders_status_id`, `date_added`, `customer_notified`, `comments`) VALUES
(8, 8, 1, '2009-09-22 20:56:53', 1, ''),
(7, 7, 1, '2009-09-17 17:35:05', 1, ''),
(9, 9, 1, '2010-01-29 01:03:30', 1, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders_total`
--

CREATE TABLE IF NOT EXISTS `orders_total` (
  `orders_total_id` int(10) unsigned NOT NULL auto_increment,
  `orders_id` int(11) NOT NULL default '0',
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL default '0.0000',
  `class` varchar(32) NOT NULL,
  `sort_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`orders_total_id`),
  KEY `idx_orders_total_orders_id` (`orders_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Volcar la base de datos para la tabla `orders_total`
--

INSERT INTO `orders_total` (`orders_total_id`, `orders_id`, `title`, `text`, `value`, `class`, `sort_order`) VALUES
(31, 8, 'Total:', '<b>$19.45</b>', '19.4500', 'ot_total', 4),
(30, 8, 'Shipping Rate 2 ():', '$4.95', '4.9500', 'ot_shipping', 3),
(29, 8, 'Sub-Total:', '$14.50', '14.5000', 'ot_subtotal', 1),
(25, 7, 'Sub-Total:', '$135.00', '135.0000', 'ot_subtotal', 1),
(26, 7, 'R.E. 4%:', '$5.40', '5.4000', 'ot_tax', 2),
(27, 7, 'Flat Rate (Best Way):', '$18.00', '18.0000', 'ot_shipping', 3),
(28, 7, 'Total:', '<b>$158.40</b>', '158.4000', 'ot_total', 4),
(32, 9, 'Sub-Total:', '$74.50', '74.5000', 'ot_subtotal', 1),
(33, 9, 'Ground:', '$48.16', '48.1600', 'ot_shipping', 3),
(34, 9, 'Total:', '<b>$122.66</b>', '122.6600', 'ot_total', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `pages_id` int(11) NOT NULL auto_increment,
  `pages_name` varchar(32) NOT NULL,
  `pages_image` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL default '0',
  `pages_status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`pages_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcar la base de datos para la tabla `pages`
--

INSERT INTO `pages` (`pages_id`, `pages_name`, `pages_image`, `sort_order`, `pages_status`) VALUES
(13, 'about_us', '', 0, 0),
(2, 'contact_us', '', -100, 1),
(11, 'faq', '', 0, 1),
(12, 'shipping', '', 0, 1),
(14, 'conditions', '', 0, 1),
(15, 'privacy', '', 0, 1),
(16, 'wellcome', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages_description`
--

CREATE TABLE IF NOT EXISTS `pages_description` (
  `pages_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '0',
  `pages_title` varchar(255) NOT NULL,
  `pages_body` text NOT NULL,
  PRIMARY KEY  (`pages_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `pages_description`
--

INSERT INTO `pages_description` (`pages_id`, `language_id`, `pages_title`, `pages_body`) VALUES
(1, 1, 'Home Page', 'Place your home page text here...'),
(2, 1, 'Contact Us', 'Place your contact us text here...'),
(1, 2, 'Nosotros', 'Texto aqui'),
(2, 2, 'Contactenos', '<P><FONT face="Verdana, Arial, Helvetica, sans-serif" size=2>Utiliza este formulario para hacernos llegar tus consultas</FONT></P>'),
(1, 4, 'Home Page', 'Vul hier uw eigen tekst in'),
(2, 4, 'Neem contact op', 'Vul hier uw eigen tekst in'),
(11, 1, 'Faq', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>\r\n<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>\r\n<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>\r\n<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.<BR></P>'),
(11, 2, 'Preguntas Frecuentes', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>\r\n<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>\r\n<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>\r\n<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.<BR></P>'),
(12, 1, 'Shipping', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>\r\n<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>\r\n<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>\r\n<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</P>'),
(12, 2, 'Envios / Devoluciones', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>\r\n<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>\r\n<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>\r\n<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</P>'),
(13, 1, 'About us', '<p>pepito</p>'),
(13, 2, 'Nosotros', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>\r\n<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>\r\n<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>\r\n<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>'),
(14, 1, 'Conditions', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>\r\n<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>\r\n<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>\r\n<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</P>'),
(14, 2, 'Condiciones', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>\r\n<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>\r\n<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>\r\n<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</P>'),
(15, 1, 'Privacy', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>\r\n<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>\r\n<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>\r\n<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.<BR></P>'),
(15, 2, 'Confidencialidad', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>\r\n<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>\r\n<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>\r\n<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.<BR></P>'),
(16, 1, 'Wellcome', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc nisi enim, vestibulum non hendrerit et, porttitor eget quam. Phasellus vel feugiat metus. Phasellus sed malesuada nisl. Quisque vel dolor mauris, quis viverra sem. Phasellus dignissim facilisis aliquam. Donec luctus, odio non porta dignissim, turpis elit malesuada est, sed vehicula nisl magna nec purus. Aenean vel tortor erat, ac egestas est</p>'),
(16, 2, 'Bienvenidos', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc nisi enim, vestibulum non hendrerit et, porttitor eget quam. Phasellus vel feugiat metus. Phasellus sed malesuada nisl. Quisque vel dolor mauris, quis viverra sem. Phasellus dignissim facilisis aliquam. Donec luctus, odio non porta dignissim, turpis elit malesuada est, sed vehicula nisl magna nec purus. Aenean vel tortor erat, ac egestas est</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `products_id` int(11) NOT NULL auto_increment,
  `products_quantity` int(4) NOT NULL default '0',
  `products_model` varchar(12) default NULL,
  `products_image` varchar(64) default NULL,
  `products_price` decimal(15,4) NOT NULL default '0.0000',
  `products_date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  `products_last_modified` datetime default NULL,
  `products_date_available` datetime default NULL,
  `products_weight` decimal(5,2) NOT NULL default '0.00',
  `products_status` tinyint(1) NOT NULL default '0',
  `products_tax_class_id` int(11) NOT NULL default '0',
  `manufacturers_id` int(11) default NULL,
  `products_ordered` int(11) NOT NULL default '0',
  `products_length` int(11) default NULL,
  `products_width` int(11) default NULL,
  `products_depth` int(11) default NULL,
  `products_ship_sep` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`products_id`),
  KEY `idx_products_date_added` (`products_date_added`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2584 ;

--
-- Volcar la base de datos para la tabla `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_status`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_length`, `products_width`, `products_depth`, `products_ship_sep`) VALUES
(2579, 9994, '', 'modelogrande.jpg', '12.0000', '2009-09-17 23:02:42', '2010-10-07 17:22:58', NULL, '0.50', 1, 2, 0, 5, 25, 26, 27, 0),
(2578, 999987, '', 'modelogrande.jpg', '15.0000', '2009-09-16 20:30:45', '2010-10-07 17:20:29', NULL, '0.60', 1, 2, 0, 12, 10, 15, 25, 0),
(2580, 9999999, '', 'modelogrande.jpg', '18.0000', '2009-09-17 23:09:25', '2010-10-07 17:23:11', NULL, '0.00', 1, 3, 0, 0, 0, 0, 0, 0),
(2581, 9999, '', 'modelogrande.jpg', '20.0000', '2009-09-22 15:53:10', '2010-10-07 17:23:24', NULL, '0.00', 1, 0, 0, 0, 0, 0, 0, 0),
(2582, 999999, '', 'modelogrande.jpg', '85.0000', '2009-09-22 15:54:03', '2010-10-07 17:23:38', NULL, '0.00', 1, 0, 0, 0, 0, 0, 0, 0),
(2583, 999999, '', 'modelogrande.jpg', '13.0000', '2009-09-22 15:56:27', '2010-10-07 17:25:15', NULL, '0.00', 1, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_attributes`
--

CREATE TABLE IF NOT EXISTS `products_attributes` (
  `products_attributes_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `options_id` int(11) NOT NULL default '0',
  `options_values_id` int(11) NOT NULL default '0',
  `options_values_price` decimal(15,4) NOT NULL default '0.0000',
  `price_prefix` char(1) NOT NULL,
  PRIMARY KEY  (`products_attributes_id`),
  KEY `products_id` (`products_id`,`options_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=293 ;

--
-- Volcar la base de datos para la tabla `products_attributes`
--

INSERT INTO `products_attributes` (`products_attributes_id`, `products_id`, `options_id`, `options_values_id`, `options_values_price`, `price_prefix`) VALUES
(292, 2578, 4, 2, '0.5000', '+'),
(291, 2578, 4, 1, '0.8000', '+'),
(290, 2578, 4, 3, '1.0000', '+');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_attributes_download`
--

CREATE TABLE IF NOT EXISTS `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL default '0',
  `products_attributes_filename` varchar(255) NOT NULL,
  `products_attributes_maxdays` int(2) default '0',
  `products_attributes_maxcount` int(2) default '0',
  PRIMARY KEY  (`products_attributes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `products_attributes_download`
--

INSERT INTO `products_attributes_download` (`products_attributes_id`, `products_attributes_filename`, `products_attributes_maxdays`, `products_attributes_maxcount`) VALUES
(26, 'unreal.zip', 7, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_description`
--

CREATE TABLE IF NOT EXISTS `products_description` (
  `products_id` int(11) NOT NULL auto_increment,
  `language_id` int(11) NOT NULL default '1',
  `products_name` varchar(64) NOT NULL,
  `products_description` text,
  `products_url` varchar(255) default NULL,
  `products_viewed` int(5) default '0',
  PRIMARY KEY  (`products_id`,`language_id`),
  KEY `products_name` (`products_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2584 ;

--
-- Volcar la base de datos para la tabla `products_description`
--

INSERT INTO `products_description` (`products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`) VALUES
(2578, 1, 'Product 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien,</p>', '', 315),
(2578, 2, 'Producto 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien,</p>\r\n<p>&nbsp;</p>', '', 119),
(2579, 1, 'Product 2', '<p>Test</p>', '', 116),
(2579, 2, 'Producto 2', '<p>Test</p>', '', 45),
(2580, 1, 'Product 3', '<p>test</p>', '', 123),
(2580, 2, 'Producto 3', '<p>test</p>', '', 46),
(2581, 1, 'Product 4', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien, rutrum a egestas a, tempor a ligula. Quisque scelerisque erat at mauris congue id elementum justo rutrum. Vestibulum a dui neque. Suspendisse potenti. Quisque lacinia malesuada sem, eget scelerisque neque sagittis eget. Morbi auctor interdum eleifend. Sed rutrum fringilla tortor, ut volutpat purus sollicitudin eu. Ut magna lacus, laoreet sit amet aliquam in, tempus at lacus. Vestibulum eget sapien quam</p>', '', 161),
(2581, 2, 'Producto 4', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien, rutrum a egestas a, tempor a ligula. Quisque scelerisque erat at mauris congue id elementum justo rutrum. Vestibulum a dui neque. Suspendisse potenti. Quisque lacinia malesuada sem, eget scelerisque neque sagittis eget. Morbi auctor interdum eleifend. Sed rutrum fringilla tortor, ut volutpat purus sollicitudin eu. Ut magna lacus, laoreet sit amet aliquam in, tempus at lacus. Vestibulum eget sapien quam</p>', '', 62),
(2582, 1, 'Product 5', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien, rutrum a egestas a, tempor a ligula. Quisque scelerisque erat at mauris congue id elementum justo rutrum. Vestibulum a dui neque. Suspendisse potenti. Quisque lacinia malesuada sem, eget scelerisque neque sagittis eget. Morbi auctor interdum eleifend. Sed rutrum fringilla tortor, ut volutpat purus sollicitudin eu. Ut magna lacus, laoreet sit amet aliquam in, tempus at lacus. Vestibulum eget sapien quam</p>', '', 167),
(2582, 2, 'Producto 5', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien, rutrum a egestas a, tempor a ligula. Quisque scelerisque erat at mauris congue id elementum justo rutrum. Vestibulum a dui neque. Suspendisse potenti. Quisque lacinia malesuada sem, eget scelerisque neque sagittis eget. Morbi auctor interdum eleifend. Sed rutrum fringilla tortor, ut volutpat purus sollicitudin eu. Ut magna lacus, laoreet sit amet aliquam in, tempus at lacus. Vestibulum eget sapien quam</p>', '', 57),
(2583, 1, 'Product 6', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien, rutrum a egestas a, tempor a ligula. Quisque scelerisque erat at mauris congue id elementum justo rutrum. Vestibulum a dui neque. Suspendisse potenti. Quisque lacinia malesuada sem, eget scelerisque neque sagittis eget. Morbi auctor interdum eleifend. Sed rutrum fringilla tortor, ut volutpat purus sollicitudin eu. Ut magna lacus, laoreet sit amet aliquam in, tempus at lacus. Vestibulum eget sapien quam</p>', '', 212),
(2583, 2, 'Producto 6', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien, rutrum a egestas a, tempor a ligula. Quisque scelerisque erat at mauris congue id elementum justo rutrum. Vestibulum a dui neque. Suspendisse potenti. Quisque lacinia malesuada sem, eget scelerisque neque sagittis eget. Morbi auctor interdum eleifend. Sed rutrum fringilla tortor, ut volutpat purus sollicitudin eu. Ut magna lacus, laoreet sit amet aliquam in, tempus at lacus. Vestibulum eget sapien quam</p>', '', 70);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_extra_images`
--

CREATE TABLE IF NOT EXISTS `products_extra_images` (
  `products_extra_images_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) default NULL,
  `products_extra_image` varchar(64) default NULL,
  KEY `products_extra_images_id` (`products_extra_images_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Volcar la base de datos para la tabla `products_extra_images`
--

INSERT INTO `products_extra_images` (`products_extra_images_id`, `products_id`, `products_extra_image`) VALUES
(20, 2578, 'modelogrande.jpg'),
(21, 2578, 'modelogrande.jpg'),
(22, 2580, 'modelogrande.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_groups`
--

CREATE TABLE IF NOT EXISTS `products_groups` (
  `customers_group_id` smallint(5) unsigned NOT NULL default '0',
  `customers_group_price` decimal(15,4) NOT NULL default '0.0000',
  `products_id` int(11) NOT NULL default '0',
  `minorder` int(4) NOT NULL default '1',
  PRIMARY KEY  (`customers_group_id`,`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `products_groups`
--

INSERT INTO `products_groups` (`customers_group_id`, `customers_group_price`, `products_id`, `minorder`) VALUES
(1, '12.0000', 2579, 1),
(2, '10.0000', 2579, 10),
(2, '13.0000', 2578, 10),
(3, '10.0000', 2578, 20),
(3, '11.0000', 2579, 15),
(2, '14.0000', 2580, 5),
(3, '10.0000', 2580, 10),
(2, '15.0000', 2581, 20),
(3, '10.0000', 2581, 40),
(2, '70.0000', 2582, 15),
(3, '60.0000', 2582, 25),
(2, '12.0000', 2583, 5),
(3, '10.0000', 2583, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_group_prices_cg_3`
--

CREATE TABLE IF NOT EXISTS `products_group_prices_cg_3` (
  `products_id` int(11) NOT NULL default '0',
  `products_price` decimal(15,4) NOT NULL default '0.0000',
  `specials_new_products_price` decimal(15,4) default NULL,
  `status` tinyint(4) default NULL,
  PRIMARY KEY  (`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `products_group_prices_cg_3`
--

INSERT INTO `products_group_prices_cg_3` (`products_id`, `products_price`, `specials_new_products_price`, `status`) VALUES
(1230, '4.9900', NULL, NULL),
(1231, '4.9900', NULL, NULL),
(1232, '3.5000', NULL, NULL),
(1233, '0.9900', NULL, NULL),
(1234, '0.9900', NULL, NULL),
(1235, '0.9900', NULL, NULL),
(1236, '0.9900', NULL, NULL),
(1237, '0.9900', NULL, NULL),
(1238, '0.9900', NULL, NULL),
(1239, '0.9900', NULL, NULL),
(1240, '0.9900', NULL, NULL),
(1241, '0.9900', NULL, NULL),
(1242, '1.4900', NULL, NULL),
(1243, '0.9900', NULL, NULL),
(1244, '0.9900', NULL, NULL),
(1245, '3.5000', NULL, NULL),
(1246, '4.9500', NULL, NULL),
(1247, '4.5000', NULL, NULL),
(1248, '3.8000', NULL, NULL),
(1249, '4.5000', NULL, NULL),
(1250, '1.1200', NULL, NULL),
(1251, '0.9900', NULL, NULL),
(1252, '0.9900', NULL, NULL),
(1253, '0.9900', NULL, NULL),
(1254, '0.9900', NULL, NULL),
(1255, '0.9900', NULL, NULL),
(1256, '0.9900', NULL, NULL),
(1257, '0.9900', NULL, NULL),
(1258, '0.9900', NULL, NULL),
(1259, '0.9900', NULL, NULL),
(1260, '0.9900', NULL, NULL),
(1261, '0.9900', NULL, NULL),
(1262, '1.4900', NULL, NULL),
(1263, '0.9900', NULL, NULL),
(1264, '0.9900', NULL, NULL),
(1265, '4.9500', NULL, NULL),
(1266, '0.9900', NULL, NULL),
(1267, '4.9500', NULL, NULL),
(1268, '0.9900', NULL, NULL),
(1269, '0.9900', NULL, NULL),
(1270, '3.2500', NULL, NULL),
(1271, '0.9900', NULL, NULL),
(1272, '0.9900', NULL, NULL),
(1273, '0.9900', NULL, NULL),
(1274, '2.5000', NULL, NULL),
(1275, '1.1200', NULL, NULL),
(1276, '1.3000', NULL, NULL),
(1277, '4.9500', NULL, NULL),
(1278, '1.2500', NULL, NULL),
(1279, '1.2500', NULL, NULL),
(1280, '1.6900', NULL, NULL),
(1281, '0.4900', NULL, NULL),
(1282, '0.9900', NULL, NULL),
(1283, '0.9900', NULL, NULL),
(1284, '0.9900', NULL, NULL),
(1285, '0.9900', NULL, NULL),
(1286, '0.9900', NULL, NULL),
(1287, '0.9900', NULL, NULL),
(1288, '0.9900', NULL, NULL),
(1289, '3.9900', NULL, NULL),
(1290, '2.9500', NULL, NULL),
(1291, '2.9500', NULL, NULL),
(1292, '2.9500', NULL, NULL),
(1293, '2.5000', NULL, NULL),
(1294, '4.9900', NULL, NULL),
(1295, '2.5000', NULL, NULL),
(1296, '3.5000', NULL, NULL),
(1297, '3.5000', NULL, NULL),
(1298, '3.8000', NULL, NULL),
(1299, '3.5000', NULL, NULL),
(1226, '2.9000', NULL, NULL),
(1227, '4.9900', NULL, NULL),
(1228, '4.9900', NULL, NULL),
(1229, '4.9900', NULL, NULL),
(1201, '6.9500', NULL, NULL),
(1202, '7.5000', NULL, NULL),
(1203, '7.5000', NULL, NULL),
(1204, '2.9000', NULL, NULL),
(1205, '2.9000', NULL, NULL),
(1206, '2.9000', NULL, NULL),
(1207, '3.5000', NULL, NULL),
(1208, '2.9000', NULL, NULL),
(1209, '3.5000', NULL, NULL),
(1210, '5.9000', NULL, NULL),
(1211, '2.9000', NULL, NULL),
(1212, '7.5000', NULL, NULL),
(1213, '7.5000', NULL, NULL),
(1214, '7.5000', NULL, NULL),
(1215, '7.5000', NULL, NULL),
(1216, '7.5000', NULL, NULL),
(1217, '7.5000', NULL, NULL),
(1218, '7.5000', NULL, NULL),
(1219, '6.9500', NULL, NULL),
(1220, '7.5000', NULL, NULL),
(1221, '3.5000', NULL, NULL),
(1222, '2.9000', NULL, NULL),
(1223, '2.9000', NULL, NULL),
(1224, '2.9000', NULL, NULL),
(1225, '3.5000', NULL, NULL),
(1200, '0.9900', NULL, NULL),
(1199, '0.9900', NULL, NULL),
(1196, '1.4900', NULL, NULL),
(1197, '0.9900', NULL, NULL),
(1198, '0.9900', NULL, NULL),
(1179, '1.4900', NULL, NULL),
(1180, '2.5000', NULL, NULL),
(1181, '2.5000', NULL, NULL),
(1182, '0.9900', NULL, NULL),
(1183, '1.4900', NULL, NULL),
(1184, '1.4900', NULL, NULL),
(1185, '1.4900', NULL, NULL),
(1186, '1.4900', NULL, NULL),
(1187, '0.9900', NULL, NULL),
(1188, '1.4900', NULL, NULL),
(1189, '0.9900', NULL, NULL),
(1190, '1.4900', NULL, NULL),
(1191, '1.4900', NULL, NULL),
(1192, '1.4900', NULL, NULL),
(1193, '1.4900', NULL, NULL),
(1194, '1.4900', NULL, NULL),
(1195, '1.4900', NULL, NULL),
(1178, '1.4900', NULL, NULL),
(1161, '0.9900', NULL, NULL),
(1162, '0.9900', NULL, NULL),
(1163, '1.4900', NULL, NULL),
(1164, '0.9900', NULL, NULL),
(1165, '0.9900', NULL, NULL),
(1166, '0.9900', NULL, NULL),
(1167, '1.4900', NULL, NULL),
(1168, '0.9900', NULL, NULL),
(1169, '0.9900', NULL, NULL),
(1170, '0.9900', NULL, NULL),
(1171, '1.4900', NULL, NULL),
(1172, '1.4900', NULL, NULL),
(1173, '1.4900', NULL, NULL),
(1174, '0.9900', NULL, NULL),
(1175, '1.4900', NULL, NULL),
(1176, '1.4900', NULL, NULL),
(1177, '1.4900', NULL, NULL),
(1142, '0.9900', NULL, NULL),
(1143, '1.4900', NULL, NULL),
(1144, '0.9900', NULL, NULL),
(1145, '1.4900', NULL, NULL),
(1146, '0.9900', NULL, NULL),
(1147, '0.9900', NULL, NULL),
(1148, '0.9900', NULL, NULL),
(1149, '0.9900', NULL, NULL),
(1150, '0.9900', NULL, NULL),
(1151, '1.4900', NULL, NULL),
(1152, '1.4900', NULL, NULL),
(1153, '1.4900', NULL, NULL),
(1154, '0.9900', NULL, NULL),
(1155, '0.9900', NULL, NULL),
(1156, '0.9900', NULL, NULL),
(1157, '0.9900', NULL, NULL),
(1158, '0.9900', NULL, NULL),
(1159, '0.9900', NULL, NULL),
(1160, '0.9900', NULL, NULL),
(1090, '3.5000', NULL, NULL),
(1091, '5.9900', NULL, NULL),
(1092, '1.9900', NULL, NULL),
(1093, '3.9900', NULL, NULL),
(1094, '5.9900', NULL, NULL),
(1095, '5.9500', NULL, NULL),
(1096, '3.9900', NULL, NULL),
(1097, '3.9500', NULL, NULL),
(1098, '5.9900', NULL, NULL),
(1099, '5.9900', NULL, NULL),
(1100, '5.9500', NULL, NULL),
(1101, '5.9500', NULL, NULL),
(1102, '2.9500', NULL, NULL),
(1103, '2.9500', NULL, NULL),
(1104, '2.4900', NULL, NULL),
(1105, '1.4900', NULL, NULL),
(1106, '6.9500', NULL, NULL),
(1107, '6.9500', NULL, NULL),
(1108, '8.6000', NULL, NULL),
(1109, '8.5000', NULL, NULL),
(1110, '2.9900', NULL, NULL),
(1111, '4.9500', NULL, NULL),
(1112, '4.9500', NULL, NULL),
(1113, '2.9900', NULL, NULL),
(1114, '0.9900', NULL, NULL),
(1115, '4.9500', NULL, NULL),
(1116, '0.9900', NULL, NULL),
(1117, '0.9900', NULL, NULL),
(1118, '1.4900', NULL, NULL),
(1119, '0.9900', NULL, NULL),
(1120, '0.9900', NULL, NULL),
(1121, '0.9900', NULL, NULL),
(1122, '2.6000', NULL, NULL),
(1123, '0.9900', NULL, NULL),
(1124, '0.9900', NULL, NULL),
(1125, '0.9900', NULL, NULL),
(1126, '0.9900', NULL, NULL),
(1127, '1.1000', NULL, NULL),
(1128, '1.9900', NULL, NULL),
(1129, '1.4900', NULL, NULL),
(1130, '0.9900', NULL, NULL),
(1131, '0.9900', NULL, NULL),
(1132, '0.9900', NULL, NULL),
(1133, '0.9900', NULL, NULL),
(1134, '0.9900', NULL, NULL),
(1135, '0.9900', NULL, NULL),
(1136, '0.9900', NULL, NULL),
(1137, '0.9900', NULL, NULL),
(1138, '0.9900', NULL, NULL),
(1139, '0.9900', NULL, NULL),
(1140, '0.9900', NULL, NULL),
(1141, '0.9900', NULL, NULL),
(1089, '3.9900', NULL, NULL),
(1034, '9.9000', NULL, NULL),
(1038, '3.9500', NULL, NULL),
(1039, '9.9000', NULL, NULL),
(1040, '9.9900', NULL, NULL),
(1041, '5.9500', NULL, NULL),
(1042, '5.9900', NULL, NULL),
(1043, '3.9500', NULL, NULL),
(1044, '14.9500', NULL, NULL),
(1045, '5.9500', NULL, NULL),
(1046, '0.9900', NULL, NULL),
(1047, '0.9900', NULL, NULL),
(1048, '1.9900', NULL, NULL),
(1049, '2.9900', NULL, NULL),
(1050, '1.9900', NULL, NULL),
(1051, '1.9900', NULL, NULL),
(1052, '2.9900', NULL, NULL),
(1053, '1.9900', NULL, NULL),
(1054, '1.9900', NULL, NULL),
(1055, '1.9900', NULL, NULL),
(1056, '1.9900', NULL, NULL),
(1057, '3.9900', NULL, NULL),
(1058, '7.9900', NULL, NULL),
(1059, '5.9900', NULL, NULL),
(1060, '2.9900', NULL, NULL),
(1061, '5.9900', NULL, NULL),
(1062, '8.9500', NULL, NULL),
(1063, '12.9500', NULL, NULL),
(1064, '5.9500', NULL, NULL),
(1065, '5.9500', NULL, NULL),
(1066, '5.9500', NULL, NULL),
(1067, '19.9500', NULL, NULL),
(1068, '12.9500', NULL, NULL),
(1069, '19.5000', NULL, NULL),
(1070, '9.5000', NULL, NULL),
(1071, '19.5000', NULL, NULL),
(1072, '9.9500', NULL, NULL),
(1073, '11.2000', NULL, NULL),
(1074, '7.9800', NULL, NULL),
(1075, '9.9900', NULL, NULL),
(1076, '2.9900', NULL, NULL),
(1077, '4.9900', NULL, NULL),
(1078, '3.9500', NULL, NULL),
(1079, '9.9500', NULL, NULL),
(1080, '5.9900', NULL, NULL),
(1081, '5.9900', NULL, NULL),
(1082, '5.9900', NULL, NULL),
(1083, '5.9900', NULL, NULL),
(1084, '1.9900', NULL, NULL),
(1085, '5.9900', NULL, NULL),
(1086, '4.6000', NULL, NULL),
(1087, '4.6000', NULL, NULL),
(1088, '3.9900', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_notifications`
--

CREATE TABLE IF NOT EXISTS `products_notifications` (
  `products_id` int(11) NOT NULL default '0',
  `customers_id` int(11) NOT NULL default '0',
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`products_id`,`customers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `products_notifications`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_options`
--

CREATE TABLE IF NOT EXISTS `products_options` (
  `products_options_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `products_options_name` varchar(50) NOT NULL,
  `products_options_type` int(5) NOT NULL default '0',
  `products_options_length` smallint(2) NOT NULL default '32',
  `products_options_comment` varchar(50) default NULL,
  PRIMARY KEY  (`products_options_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `language_id`, `products_options_name`, `products_options_type`, `products_options_length`, `products_options_comment`) VALUES
(1, 1, 'Gift envoltory', 3, 20, 'Click here for include'),
(1, 2, 'Envoltorio de Regalo', 3, 20, 'Click aqui para incluir el envoltorio de regalo'),
(2, 1, 'Write dedicatory', 4, 100, '100 charactheres'),
(2, 2, 'Escribir dedicatoria', 4, 100, '100 caracteres permitidos'),
(3, 1, 'Include dedicatory', 3, 20, 'Click here for including'),
(3, 2, 'Incluir dedicatoria', 3, 20, 'Click aqui para incluir la dedictoria'),
(4, 1, 'Colors', 0, 20, 'Choose color'),
(4, 2, 'Colores', 0, 20, 'Escoger color'),
(5, 1, 'Size', 0, 0, 'Choose size'),
(5, 2, 'Talla', 0, 0, 'Escoger talla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_options_values`
--

CREATE TABLE IF NOT EXISTS `products_options_values` (
  `products_options_values_id` int(11) NOT NULL default '0',
  `language_id` int(11) NOT NULL default '1',
  `products_options_values_name` varchar(64) NOT NULL,
  PRIMARY KEY  (`products_options_values_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `language_id`, `products_options_values_name`) VALUES
(6, 2, 'Larga'),
(6, 1, 'Large'),
(5, 2, 'Media'),
(5, 1, 'Medium'),
(4, 2, 'Pequeña'),
(4, 1, 'Small'),
(3, 2, 'amarillo'),
(3, 1, 'yellow'),
(2, 2, 'rojo'),
(2, 1, 'red'),
(1, 2, 'azul'),
(1, 1, 'blue'),
(7, 1, 'yes'),
(7, 2, 'si'),
(8, 1, 'no'),
(8, 2, 'no'),
(9, 1, 'yes'),
(9, 2, 'si'),
(10, 1, 'no'),
(10, 2, 'no'),
(11, 1, 'text'),
(11, 2, 'text');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_options_values_to_products_options`
--

CREATE TABLE IF NOT EXISTS `products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL auto_increment,
  `products_options_id` int(11) NOT NULL default '0',
  `products_options_values_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_options_values_to_products_options_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=188 ;

--
-- Volcar la base de datos para la tabla `products_options_values_to_products_options`
--

INSERT INTO `products_options_values_to_products_options` (`products_options_values_to_products_options_id`, `products_options_id`, `products_options_values_id`) VALUES
(185, 3, 9),
(187, 2, 11),
(186, 3, 10),
(184, 1, 8),
(183, 1, 7),
(181, 5, 5),
(70, 4, 21),
(69, 4, 20),
(175, 3, 0),
(173, 2, 0),
(134, 5, 85),
(72, 5, 23),
(73, 5, 24),
(74, 5, 25),
(75, 5, 26),
(76, 5, 27),
(77, 6, 28),
(78, 6, 29),
(79, 6, 30),
(80, 6, 31),
(81, 5, 32),
(82, 5, 33),
(83, 5, 34),
(84, 5, 35),
(85, 5, 36),
(86, 5, 37),
(87, 5, 38),
(88, 6, 39),
(89, 6, 40),
(90, 6, 41),
(91, 6, 42),
(92, 6, 43),
(93, 4, 44),
(94, 4, 45),
(95, 4, 46),
(96, 5, 47),
(97, 5, 48),
(98, 5, 49),
(99, 5, 50),
(100, 5, 51),
(101, 5, 52),
(102, 5, 53),
(103, 5, 54),
(104, 5, 55),
(105, 5, 56),
(106, 4, 57),
(107, 4, 58),
(108, 4, 59),
(109, 6, 60),
(110, 4, 61),
(111, 5, 62),
(112, 5, 63),
(113, 4, 64),
(114, 5, 65),
(115, 5, 66),
(116, 4, 67),
(117, 5, 68),
(118, 5, 69),
(119, 5, 70),
(120, 5, 71),
(121, 5, 72),
(122, 5, 73),
(123, 5, 74),
(124, 5, 75),
(125, 5, 76),
(126, 5, 77),
(127, 5, 78),
(128, 5, 79),
(129, 5, 80),
(130, 4, 81),
(131, 5, 82),
(132, 6, 83),
(133, 4, 84),
(135, 5, 86),
(136, 4, 87),
(137, 5, 88),
(138, 5, 89),
(139, 5, 90),
(140, 5, 91),
(141, 5, 92),
(142, 5, 93),
(143, 5, 94),
(144, 5, 95),
(145, 5, 96),
(146, 6, 97),
(147, 6, 98),
(148, 6, 99),
(149, 6, 100),
(150, 6, 101),
(151, 6, 102),
(152, 6, 103),
(153, 6, 104),
(182, 5, 6),
(180, 5, 4),
(179, 4, 3),
(178, 4, 2),
(177, 4, 1),
(176, 3, 0),
(174, 2, 0),
(172, 1, 0),
(171, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products_to_categories`
--

CREATE TABLE IF NOT EXISTS `products_to_categories` (
  `products_id` int(11) NOT NULL default '0',
  `categories_id` int(11) NOT NULL default '0',
  PRIMARY KEY  (`products_id`,`categories_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_id`, `categories_id`) VALUES
(2578, 453),
(2579, 453),
(2580, 453),
(2581, 453),
(2582, 453),
(2583, 453);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `reviews_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `customers_id` int(11) default NULL,
  `customers_name` varchar(64) NOT NULL,
  `reviews_rating` int(1) default NULL,
  `date_added` datetime default NULL,
  `last_modified` datetime default NULL,
  `reviews_read` int(5) NOT NULL default '0',
  PRIMARY KEY  (`reviews_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `reviews`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews_description`
--

CREATE TABLE IF NOT EXISTS `reviews_description` (
  `reviews_id` int(11) NOT NULL default '0',
  `languages_id` int(11) NOT NULL default '0',
  `reviews_text` text NOT NULL,
  PRIMARY KEY  (`reviews_id`,`languages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `reviews_description`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `sesskey` varchar(32) NOT NULL,
  `expiry` int(11) unsigned NOT NULL default '0',
  `value` text NOT NULL,
  PRIMARY KEY  (`sesskey`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`sesskey`, `expiry`, `value`) VALUES
('ba4be24d13dc7bf7d9b7d9f439a3fad6', 1286577272, 'cart|O:12:"shoppingcart":4:{s:8:"contents";a:0:{}s:5:"total";i:0;s:6:"weight";i:0;s:12:"content_type";b:0;}language|s:7:"english";languages_id|s:1:"1";currency|s:3:"USD";navigation|O:17:"navigationhistory":2:{s:4:"path";a:1:{i:0;a:4:{s:4:"page";s:9:"intro.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}s:8:"snapshot";a:0:{}}'),
('9ab53e6153f455f9890045971a386c4e', 1286578970, 'cart|O:12:"shoppingcart":5:{s:8:"contents";a:0:{}s:5:"total";i:0;s:6:"weight";i:0;s:6:"cartID";N;s:12:"content_type";b:0;}language|s:7:"english";languages_id|s:1:"1";currency|s:3:"USD";navigation|O:17:"navigationhistory":2:{s:4:"path";a:2:{i:0;a:4:{s:4:"page";s:16:"products_new.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}i:1;a:4:{s:4:"page";s:12:"playlist.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}s:8:"snapshot";a:0:{}}'),
('1c1ee4522e882d85e2f3c3de67006b31', 1286579581, 'cart|O:12:"shoppingcart":4:{s:8:"contents";a:0:{}s:5:"total";i:0;s:6:"weight";i:0;s:12:"content_type";b:0;}language|s:7:"english";languages_id|s:1:"1";currency|s:3:"USD";navigation|O:17:"navigationhistory":2:{s:4:"path";a:1:{i:0;a:4:{s:4:"page";s:12:"playlist.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}s:8:"snapshot";a:0:{}}'),
('d31adab6b7f16e8c7183ef8d5751af7f', 1286583048, 'cart|O:12:"shoppingcart":5:{s:8:"contents";a:0:{}s:5:"total";i:0;s:6:"weight";i:0;s:6:"cartID";N;s:12:"content_type";b:0;}language|s:7:"english";languages_id|s:1:"1";currency|s:3:"USD";navigation|O:17:"navigationhistory":2:{s:4:"path";a:2:{i:0;a:4:{s:4:"page";s:16:"products_new.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}i:1;a:4:{s:4:"page";s:9:"intro.php";s:4:"mode";s:6:"NONSSL";s:3:"get";a:0:{}s:4:"post";a:0:{}}}s:8:"snapshot";a:0:{}}'),
('9d23a919825e6576936b56e47de1ca64', 1286582547, 'language|s:7:"english";languages_id|s:1:"1";selected_box|s:7:"catalog";');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specials`
--

CREATE TABLE IF NOT EXISTS `specials` (
  `specials_id` int(11) NOT NULL auto_increment,
  `products_id` int(11) NOT NULL default '0',
  `specials_new_products_price` decimal(15,4) NOT NULL default '0.0000',
  `specials_date_added` datetime default NULL,
  `specials_last_modified` datetime default NULL,
  `expires_date` datetime default NULL,
  `date_status_change` datetime default NULL,
  `status` int(1) NOT NULL default '1',
  `customers_group_id` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`specials_id`),
  KEY `products_id` (`products_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Volcar la base de datos para la tabla `specials`
--

INSERT INTO `specials` (`specials_id`, `products_id`, `specials_new_products_price`, `specials_date_added`, `specials_last_modified`, `expires_date`, `date_status_change`, `status`, `customers_group_id`) VALUES
(12, 2580, '16.0000', '2009-09-17 16:10:31', NULL, '0000-00-00 00:00:00', NULL, 1, 1),
(13, 2578, '14.0000', '2009-09-17 16:20:15', NULL, '0000-00-00 00:00:00', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specials_retail_prices`
--

CREATE TABLE IF NOT EXISTS `specials_retail_prices` (
  `products_id` int(11) NOT NULL default '0',
  `specials_new_products_price` decimal(15,4) NOT NULL default '0.0000',
  `status` tinyint(4) default NULL,
  `customers_group_id` smallint(6) default NULL,
  PRIMARY KEY  (`products_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `specials_retail_prices`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax_class`
--

CREATE TABLE IF NOT EXISTS `tax_class` (
  `tax_class_id` int(11) NOT NULL auto_increment,
  `tax_class_title` varchar(32) NOT NULL,
  `tax_class_description` varchar(255) NOT NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcar la base de datos para la tabla `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`) VALUES
(2, 'IVA 4%', 'IVA 4%', '2008-03-12 01:15:59', '2008-03-11 00:48:50'),
(3, 'IVA 7%', 'IVA 7%', '2008-03-12 01:16:15', '2008-03-11 00:48:58'),
(4, 'IVA 16%', 'IVA 16%', '2008-03-12 01:16:36', '2008-03-11 00:49:04'),
(5, 'R.E. 0,5%', 'R.E. 0,5%', '2008-05-06 13:59:38', '2008-05-05 16:03:03'),
(6, 'R.E. 1,5%', 'R.E. 1,5%', '2008-05-06 13:59:12', '2008-05-05 16:03:18'),
(7, 'R.E. 4%', 'R.E. 4%', '2008-05-06 13:58:52', '2008-05-05 16:03:31'),
(9, 'R.E. 0%', 'R.E. 0%', NULL, '2008-05-13 18:45:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tax_rates`
--

CREATE TABLE IF NOT EXISTS `tax_rates` (
  `tax_rates_id` int(11) NOT NULL auto_increment,
  `tax_zone_id` int(11) NOT NULL default '0',
  `tax_class_id` int(11) NOT NULL default '0',
  `tax_priority` int(5) default '1',
  `tax_rate` decimal(7,4) NOT NULL default '0.0000',
  `tax_description` varchar(255) NOT NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`tax_rates_id`),
  KEY `tax_zone_id` (`tax_zone_id`),
  KEY `tax_class_id` (`tax_class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Volcar la base de datos para la tabla `tax_rates`
--

INSERT INTO `tax_rates` (`tax_rates_id`, `tax_zone_id`, `tax_class_id`, `tax_priority`, `tax_rate`, `tax_description`, `last_modified`, `date_added`) VALUES
(8, 1, 9, 7, '0.0000', 'R.E. 0%', NULL, '2008-05-13 18:45:58'),
(2, 1, 2, 1, '4.0000', 'IVA 4%', '2008-05-10 09:33:15', '2008-03-11 00:49:39'),
(3, 1, 3, 2, '7.0000', 'IVA 7%', '2008-05-10 09:33:10', '2008-03-11 00:49:49'),
(4, 1, 4, 3, '16.0000', 'IVA 16%', '2008-05-10 09:33:05', '2008-03-11 00:50:07'),
(5, 1, 7, 4, '4.0000', 'R.E. 4%', '2008-05-10 09:32:47', '2008-05-05 16:04:32'),
(6, 1, 6, 5, '1.5000', 'R.E. 1,5%', '2008-05-10 09:32:53', '2008-05-05 16:04:53'),
(7, 1, 5, 6, '0.5000', 'R.E. 0,5%', '2008-05-10 09:32:59', '2008-05-05 16:05:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id_videos` int(11) NOT NULL auto_increment,
  `file_videos` varchar(200) NOT NULL,
  PRIMARY KEY  (`id_videos`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcar la base de datos para la tabla `videos`
--

INSERT INTO `videos` (`id_videos`, `file_videos`) VALUES
(1, 'http://www.youtube.com/watch?v=rpWkLoKuwK4'),
(2, 'http://www.youtube.com/watch?v=XrPfEvfKuLs&feature=related'),
(3, 'http://www.youtube.com/watch?v=rpWkLoKuwK4'),
(4, 'http://www.youtube.com/watch?v=XrPfEvfKuLs&feature=related'),
(5, 'http://www.youtube.com/watch?v=rpWkLoKuwK4'),
(6, 'http://www.youtube.com/watch?v=XrPfEvfKuLs&feature=related'),
(7, 'http://www.youtube.com/watch?v=rpWkLoKuwK4'),
(8, 'http://www.youtube.com/watch?v=XrPfEvfKuLs&feature=related'),
(9, 'http://www.youtube.com/watch?v=rpWkLoKuwK4'),
(10, 'http://www.youtube.com/watch?v=XrPfEvfKuLs&feature=related'),
(11, 'http://www.youtube.com/watch?v=rpWkLoKuwK4'),
(12, 'http://www.youtube.com/watch?v=XrPfEvfKuLs&feature=related'),
(13, 'http://www.youtube.com/watch?v=rpWkLoKuwK4'),
(14, 'http://www.youtube.com/watch?v=XrPfEvfKuLs&feature=related'),
(15, 'http://www.youtube.com/watch?v=rpWkLoKuwK4'),
(16, 'http://www.youtube.com/watch?v=XrPfEvfKuLs&feature=related');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `whos_online`
--

CREATE TABLE IF NOT EXISTS `whos_online` (
  `customer_id` int(11) default NULL,
  `full_name` varchar(64) NOT NULL,
  `session_id` varchar(128) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `time_entry` varchar(14) NOT NULL,
  `time_last_click` varchar(14) NOT NULL,
  `last_page_url` varchar(64) NOT NULL,
  KEY `session_id` (`session_id`),
  KEY `ip_address` (`ip_address`),
  KEY `time_last_click` (`time_last_click`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `whos_online`
--

INSERT INTO `whos_online` (`customer_id`, `full_name`, `session_id`, `ip_address`, `time_entry`, `time_last_click`, `last_page_url`) VALUES
(0, 'Guest', 'd31adab6b7f16e8c7183ef8d5751af7f', '190.222.252.140', '1286580334', '1286581608', '/intro.php');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zones`
--

CREATE TABLE IF NOT EXISTS `zones` (
  `zone_id` int(11) NOT NULL auto_increment,
  `zone_country_id` int(11) NOT NULL default '0',
  `zone_code` varchar(32) NOT NULL,
  `zone_name` varchar(32) NOT NULL,
  PRIMARY KEY  (`zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=183 ;

--
-- Volcar la base de datos para la tabla `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-W?rttemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Th?ringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Nieder?sterreich'),
(97, 14, 'OO', 'Ober?sterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'K?rnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'Graub?nden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'Z?rich'),
(130, 195, 'A Coruna', 'A Coruna'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza'),
(182, 195, 'canarias', 'Islas Canarias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zones_to_geo_zones`
--

CREATE TABLE IF NOT EXISTS `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL auto_increment,
  `zone_country_id` int(11) NOT NULL default '0',
  `zone_id` int(11) default NULL,
  `geo_zone_id` int(11) default NULL,
  `last_modified` datetime default NULL,
  `date_added` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`association_id`),
  KEY `geo_zone_id` (`geo_zone_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=538 ;

--
-- Volcar la base de datos para la tabla `zones_to_geo_zones`
--

INSERT INTO `zones_to_geo_zones` (`association_id`, `zone_country_id`, `zone_id`, `geo_zone_id`, `last_modified`, `date_added`) VALUES
(1, 195, 133, 1, '2008-03-11 21:43:09', '2005-07-07 10:38:23'),
(2, 1, NULL, 2, '2008-03-11 01:15:30', '2008-03-11 01:08:46'),
(3, 2, 0, 2, NULL, '2008-03-11 01:15:36'),
(4, 3, 0, 2, NULL, '2008-03-11 01:15:43'),
(5, 4, 0, 2, NULL, '2008-03-11 01:15:52'),
(6, 5, 0, 2, NULL, '2008-03-11 01:16:04'),
(7, 6, 0, 2, NULL, '2008-03-11 01:16:23'),
(8, 7, 0, 2, NULL, '2008-03-11 01:16:29'),
(9, 8, 0, 2, NULL, '2008-03-11 01:16:37'),
(10, 9, 0, 2, NULL, '2008-03-11 01:16:47'),
(11, 10, 0, 2, NULL, '2008-03-11 01:18:11'),
(12, 11, 0, 2, NULL, '2008-03-11 01:19:55'),
(13, 12, 0, 2, NULL, '2008-03-11 01:20:04'),
(14, 13, 0, 2, NULL, '2008-03-11 01:20:14'),
(15, 14, 0, 2, NULL, '2008-03-11 01:20:22'),
(16, 15, 0, 2, NULL, '2008-03-11 01:20:37'),
(17, 16, 0, 2, NULL, '2008-03-11 01:20:44'),
(18, 17, 0, 2, NULL, '2008-03-11 01:21:10'),
(19, 18, 0, 2, NULL, '2008-03-11 01:21:18'),
(20, 19, 0, 2, NULL, '2008-03-11 01:21:25'),
(21, 20, 0, 2, NULL, '2008-03-11 01:21:52'),
(22, 21, 0, 2, NULL, '2008-03-11 01:22:11'),
(23, 22, 0, 2, NULL, '2008-03-11 01:22:22'),
(24, 23, 0, 2, NULL, '2008-03-11 01:22:30'),
(27, 25, 0, 2, NULL, '2008-03-11 01:23:10'),
(26, 24, 0, 2, NULL, '2008-03-11 01:22:46'),
(28, 26, 0, 2, NULL, '2008-03-11 01:23:29'),
(29, 27, 0, 2, NULL, '2008-03-11 01:23:36'),
(30, 28, 0, 2, NULL, '2008-03-11 01:23:43'),
(31, 29, 0, 2, NULL, '2008-03-11 01:24:04'),
(32, 167, 0, 2, NULL, '2008-03-11 01:43:08'),
(535, 195, 170, 3, NULL, '2008-10-10 05:18:45'),
(34, 195, 145, 3, NULL, '2008-03-11 06:28:35'),
(35, 195, 163, 3, NULL, '2008-03-11 06:29:10'),
(36, 195, 182, 3, NULL, '2008-03-11 06:31:00'),
(38, 195, 131, 1, NULL, '2008-03-11 21:42:00'),
(39, 195, 132, 1, NULL, '2008-03-11 21:42:34'),
(40, 195, 130, 1, NULL, '2008-03-11 21:43:47'),
(41, 195, 134, 1, NULL, '2008-03-11 21:44:15'),
(42, 195, 135, 1, NULL, '2008-03-11 21:44:35'),
(43, 195, 136, 1, NULL, '2008-03-11 21:45:01'),
(44, 195, 137, 1, NULL, '2008-03-11 21:45:23'),
(45, 195, 139, 1, NULL, '2008-03-11 21:46:04'),
(46, 195, 140, 1, NULL, '2008-03-11 21:46:19'),
(47, 195, 141, 1, NULL, '2008-03-11 21:46:34'),
(48, 195, 142, 1, NULL, '2008-03-11 21:46:53'),
(49, 195, 143, 1, NULL, '2008-03-11 21:47:10'),
(50, 195, 144, 1, NULL, '2008-03-11 21:47:54'),
(51, 195, 146, 1, NULL, '2008-03-11 21:48:13'),
(52, 195, 147, 1, NULL, '2008-03-11 21:49:39'),
(53, 195, 148, 1, NULL, '2008-03-11 21:54:05'),
(54, 195, 149, 1, NULL, '2008-03-11 21:54:28'),
(55, 195, 150, 1, NULL, '2008-03-11 21:55:14'),
(56, 195, 151, 1, NULL, '2008-03-11 21:55:38'),
(57, 195, 152, 1, NULL, '2008-03-11 21:56:00'),
(58, 195, 153, 1, NULL, '2008-03-11 21:56:20'),
(59, 195, 154, 1, NULL, '2008-03-11 21:56:34'),
(60, 195, 155, 1, NULL, '2008-03-11 21:56:56'),
(61, 195, 156, 1, NULL, '2008-03-11 21:57:16'),
(63, 195, 158, 1, NULL, '2008-03-11 21:57:48'),
(64, 195, 159, 1, NULL, '2008-03-11 21:58:02'),
(65, 195, 160, 1, NULL, '2008-03-11 21:58:16'),
(66, 195, 161, 1, NULL, '2008-03-11 21:58:32'),
(67, 195, 162, 1, NULL, '2008-03-11 21:58:48'),
(68, 195, 164, 1, NULL, '2008-03-11 21:59:12'),
(69, 195, 165, 1, NULL, '2008-03-11 21:59:31'),
(70, 195, 166, 1, NULL, '2008-03-11 21:59:52'),
(71, 195, 167, 1, NULL, '2008-03-11 22:00:34'),
(72, 195, 168, 1, NULL, '2008-03-11 22:00:54'),
(73, 195, 169, 1, NULL, '2008-03-11 22:01:45'),
(75, 195, 171, 1, NULL, '2008-03-11 22:01:45'),
(76, 195, 172, 1, NULL, '2008-03-11 22:01:45'),
(77, 195, 173, 1, NULL, '2008-03-11 22:01:46'),
(78, 195, 174, 1, NULL, '2008-03-11 22:01:47'),
(79, 195, 175, 1, NULL, '2008-03-11 22:01:48'),
(80, 195, 176, 1, NULL, '2008-03-11 22:01:49'),
(81, 195, 177, 1, NULL, '2008-03-11 22:01:50'),
(82, 195, 178, 1, NULL, '2008-03-11 22:01:51'),
(83, 195, 179, 1, NULL, '2008-03-11 22:01:52'),
(84, 195, 180, 1, NULL, '2008-03-11 22:07:41'),
(85, 195, 181, 1, NULL, '2008-03-11 22:07:57'),
(86, 223, 0, 2, NULL, '2008-03-11 22:11:55'),
(87, 30, 0, 2, NULL, '2008-03-11 22:14:10'),
(88, 31, 0, 2, NULL, '2008-03-11 01:16:29'),
(89, 32, 0, 2, NULL, '2008-03-11 01:16:29'),
(90, 33, 0, 2, NULL, '2008-03-11 01:16:30'),
(91, 34, 0, 2, NULL, '2008-03-11 01:16:31'),
(92, 35, 0, 2, NULL, '2008-03-11 01:16:32'),
(93, 36, 0, 2, NULL, '2008-03-11 01:16:33'),
(94, 37, 0, 2, NULL, '2008-03-11 01:16:34'),
(95, 38, 0, 2, NULL, '2008-03-11 01:16:35'),
(96, 39, 0, 2, NULL, '2008-03-11 01:16:36'),
(97, 40, 0, 2, NULL, '2008-03-11 01:16:37'),
(98, 41, 0, 2, NULL, '2008-03-11 01:16:38'),
(99, 42, 0, 2, NULL, '2008-03-11 01:16:29'),
(100, 43, 0, 2, NULL, '2008-03-11 01:16:30'),
(101, 44, 0, 2, NULL, '2008-03-11 01:16:31'),
(102, 45, 0, 2, NULL, '2008-03-11 01:16:32'),
(103, 46, 0, 2, NULL, '2008-03-11 01:16:33'),
(104, 47, 0, 2, NULL, '2008-03-11 01:16:34'),
(105, 48, 0, 2, NULL, '2008-03-11 01:16:35'),
(106, 49, 0, 2, NULL, '2008-03-11 01:16:36'),
(107, 50, 0, 2, NULL, '2008-03-11 01:16:37'),
(108, 51, 0, 2, NULL, '2008-03-11 01:16:38'),
(109, 52, 0, 2, NULL, '2008-03-11 01:16:29'),
(110, 53, 0, 2, NULL, '2008-03-11 01:16:30'),
(111, 54, 0, 2, NULL, '2008-03-11 01:16:31'),
(112, 55, 0, 2, NULL, '2008-03-11 01:16:32'),
(113, 56, 0, 2, NULL, '2008-03-11 01:16:33'),
(114, 57, 0, 2, NULL, '2008-03-11 01:16:34'),
(115, 58, 0, 2, NULL, '2008-03-11 01:16:35'),
(116, 59, 0, 2, NULL, '2008-03-11 01:16:36'),
(117, 60, 0, 2, NULL, '2008-03-11 01:16:37'),
(118, 61, 0, 2, NULL, '2008-03-11 01:16:38'),
(119, 62, 0, 2, NULL, '2008-03-11 01:16:29'),
(120, 63, 0, 2, NULL, '2008-03-11 01:16:30'),
(121, 64, 0, 2, NULL, '2008-03-11 01:16:31'),
(122, 65, 0, 2, NULL, '2008-03-11 01:16:32'),
(123, 66, 0, 2, NULL, '2008-03-11 01:16:33'),
(124, 67, 0, 2, NULL, '2008-03-11 01:16:34'),
(125, 68, 0, 2, NULL, '2008-03-11 01:16:35'),
(126, 69, 0, 2, NULL, '2008-03-11 01:16:36'),
(127, 70, 0, 2, NULL, '2008-03-11 01:16:37'),
(128, 71, 0, 2, NULL, '2008-03-11 01:16:38'),
(129, 72, 0, 2, NULL, '2008-03-11 01:16:29'),
(130, 73, 0, 2, NULL, '2008-03-11 01:16:30'),
(131, 74, 0, 2, NULL, '2008-03-11 01:16:31'),
(132, 75, 0, 2, NULL, '2008-03-11 01:16:32'),
(133, 76, 0, 2, NULL, '2008-03-11 01:16:33'),
(134, 77, 0, 2, NULL, '2008-03-11 01:16:34'),
(135, 78, 0, 2, NULL, '2008-03-11 01:16:35'),
(136, 79, 0, 2, NULL, '2008-03-11 01:16:36'),
(137, 80, 0, 2, NULL, '2008-03-11 01:16:37'),
(138, 81, 0, 2, NULL, '2008-03-11 01:16:38'),
(139, 82, 0, 2, NULL, '2008-03-11 01:16:29'),
(140, 83, 0, 2, NULL, '2008-03-11 01:16:30'),
(141, 84, 0, 2, NULL, '2008-03-11 01:16:31'),
(142, 85, 0, 2, NULL, '2008-03-11 01:16:32'),
(143, 86, 0, 2, NULL, '2008-03-11 01:16:33'),
(144, 87, 0, 2, NULL, '2008-03-11 01:16:34'),
(145, 88, 0, 2, NULL, '2008-03-11 01:16:35'),
(146, 89, 0, 2, NULL, '2008-03-11 01:16:36'),
(147, 90, 0, 2, NULL, '2008-03-11 01:16:37'),
(148, 91, 0, 2, NULL, '2008-03-11 01:16:38'),
(149, 92, 0, 2, NULL, '2008-03-11 01:16:29'),
(150, 93, 0, 2, NULL, '2008-03-11 01:16:30'),
(151, 94, 0, 2, NULL, '2008-03-11 01:16:31'),
(152, 95, 0, 2, NULL, '2008-03-11 01:16:32'),
(153, 96, 0, 2, NULL, '2008-03-11 01:16:33'),
(154, 97, 0, 2, NULL, '2008-03-11 01:16:34'),
(155, 98, 0, 2, NULL, '2008-03-11 01:16:35'),
(156, 99, 0, 2, NULL, '2008-03-11 01:16:36'),
(157, 100, 0, 2, NULL, '2008-03-11 01:16:37'),
(158, 101, 0, 2, NULL, '2008-03-11 01:16:38'),
(159, 102, 0, 2, NULL, '2008-03-11 01:16:29'),
(160, 103, 0, 2, NULL, '2008-03-11 01:16:30'),
(161, 104, 0, 2, NULL, '2008-03-11 01:16:31'),
(162, 105, 0, 2, NULL, '2008-03-11 01:16:32'),
(163, 106, 0, 2, NULL, '2008-03-11 01:16:33'),
(164, 107, 0, 2, NULL, '2008-03-11 01:16:34'),
(165, 108, 0, 2, NULL, '2008-03-11 01:16:35'),
(166, 109, 0, 2, NULL, '2008-03-11 01:16:36'),
(167, 110, 0, 2, NULL, '2008-03-11 01:16:37'),
(168, 111, 0, 2, NULL, '2008-03-11 01:16:38'),
(169, 112, 0, 2, NULL, '2008-03-11 01:16:29'),
(170, 113, 0, 2, NULL, '2008-03-11 01:16:30'),
(171, 114, 0, 2, NULL, '2008-03-11 01:16:31'),
(172, 115, 0, 2, NULL, '2008-03-11 01:16:32'),
(173, 116, 0, 2, NULL, '2008-03-11 01:16:33'),
(174, 117, 0, 2, NULL, '2008-03-11 01:16:34'),
(175, 118, 0, 2, NULL, '2008-03-11 01:16:35'),
(176, 119, 0, 2, NULL, '2008-03-11 01:16:36'),
(177, 120, 0, 2, NULL, '2008-03-11 01:16:37'),
(178, 121, 0, 2, NULL, '2008-03-11 01:16:38'),
(179, 122, 0, 2, NULL, '2008-03-11 01:16:29'),
(180, 123, 0, 2, NULL, '2008-03-11 01:16:30'),
(181, 124, 0, 2, NULL, '2008-03-11 01:16:31'),
(182, 125, 0, 2, NULL, '2008-03-11 01:16:32'),
(183, 126, 0, 2, NULL, '2008-03-11 01:16:33'),
(184, 127, 0, 2, NULL, '2008-03-11 01:16:34'),
(185, 128, 0, 2, NULL, '2008-03-11 01:16:35'),
(186, 129, 0, 2, NULL, '2008-03-11 01:16:36'),
(187, 130, 0, 2, NULL, '2008-03-11 01:16:37'),
(188, 131, 0, 2, NULL, '2008-03-11 01:16:38'),
(189, 132, 0, 2, NULL, '2008-03-11 01:16:29'),
(190, 133, 0, 2, NULL, '2008-03-11 01:16:30'),
(191, 134, 0, 2, NULL, '2008-03-11 01:16:31'),
(192, 135, 0, 2, NULL, '2008-03-11 01:16:32'),
(193, 136, 0, 2, NULL, '2008-03-11 01:16:33'),
(194, 137, 0, 2, NULL, '2008-03-11 01:16:34'),
(195, 138, 0, 2, NULL, '2008-03-11 01:16:35'),
(196, 139, 0, 2, NULL, '2008-03-11 01:16:36'),
(197, 140, 0, 2, NULL, '2008-03-11 01:16:37'),
(198, 141, 0, 2, NULL, '2008-03-11 01:16:38'),
(199, 142, 0, 2, NULL, '2008-03-11 01:16:29'),
(200, 143, 0, 2, NULL, '2008-03-11 01:16:30'),
(201, 144, 0, 2, NULL, '2008-03-11 01:16:31'),
(202, 145, 0, 2, NULL, '2008-03-11 01:16:32'),
(203, 146, 0, 2, NULL, '2008-03-11 01:16:33'),
(204, 147, 0, 2, NULL, '2008-03-11 01:16:34'),
(205, 148, 0, 2, NULL, '2008-03-11 01:16:35'),
(206, 149, 0, 2, NULL, '2008-03-11 01:16:36'),
(207, 150, 0, 2, NULL, '2008-03-11 01:16:37'),
(208, 151, 0, 2, NULL, '2008-03-11 01:16:38'),
(209, 152, 0, 2, NULL, '2008-03-11 01:16:29'),
(210, 153, 0, 2, NULL, '2008-03-11 01:16:30'),
(211, 154, 0, 2, NULL, '2008-03-11 01:16:31'),
(212, 155, 0, 2, NULL, '2008-03-11 01:16:32'),
(213, 156, 0, 2, NULL, '2008-03-11 01:16:33'),
(214, 157, 0, 2, NULL, '2008-03-11 01:16:34'),
(215, 158, 0, 2, NULL, '2008-03-11 01:16:35'),
(216, 159, 0, 2, NULL, '2008-03-11 01:16:36'),
(217, 160, 0, 2, NULL, '2008-03-11 01:16:37'),
(218, 161, 0, 2, NULL, '2008-03-11 01:16:38'),
(219, 162, 0, 2, NULL, '2008-03-11 01:16:29'),
(220, 163, 0, 2, NULL, '2008-03-11 01:16:30'),
(221, 164, 0, 2, NULL, '2008-03-11 01:16:31'),
(222, 165, 0, 2, NULL, '2008-03-11 01:16:32'),
(223, 166, 0, 2, NULL, '2008-03-11 01:16:33'),
(224, 168, 0, 2, NULL, '2008-03-11 01:16:35'),
(225, 169, 0, 2, NULL, '2008-03-11 01:16:36'),
(226, 170, 0, 2, NULL, '2008-03-11 01:16:37'),
(227, 171, 0, 2, NULL, '2008-03-11 01:16:38'),
(228, 172, 0, 2, NULL, '2008-03-11 01:16:29'),
(229, 173, 0, 2, NULL, '2008-03-11 01:16:30'),
(230, 174, 0, 2, NULL, '2008-03-11 01:16:31'),
(231, 175, 0, 2, NULL, '2008-03-11 01:16:32'),
(232, 176, 0, 2, NULL, '2008-03-11 01:16:33'),
(233, 177, 0, 2, NULL, '2008-03-11 01:16:34'),
(234, 178, 0, 2, NULL, '2008-03-11 01:16:35'),
(235, 179, 0, 2, NULL, '2008-03-11 01:16:36'),
(236, 180, 0, 2, NULL, '2008-03-11 01:16:37'),
(237, 181, 0, 2, NULL, '2008-03-11 01:16:38'),
(238, 182, 0, 2, NULL, '2008-03-11 01:16:29'),
(239, 183, 0, 2, NULL, '2008-03-11 01:16:30'),
(240, 184, 0, 2, NULL, '2008-03-11 01:16:31'),
(241, 185, 0, 2, NULL, '2008-03-11 01:16:32'),
(242, 186, 0, 2, NULL, '2008-03-11 01:16:33'),
(243, 187, 0, 2, NULL, '2008-03-11 01:16:34'),
(244, 188, 0, 2, NULL, '2008-03-11 01:16:35'),
(245, 189, 0, 2, NULL, '2008-03-11 01:16:36'),
(246, 190, 0, 2, NULL, '2008-03-11 01:16:37'),
(247, 191, 0, 2, NULL, '2008-03-11 01:16:38'),
(248, 192, 0, 2, NULL, '2008-03-11 01:16:29'),
(249, 193, 0, 2, NULL, '2008-03-11 01:16:30'),
(250, 194, 0, 2, NULL, '2008-03-11 01:16:31'),
(252, 196, 0, 2, NULL, '2008-03-11 01:16:33'),
(253, 197, 0, 2, NULL, '2008-03-11 01:16:34'),
(254, 198, 0, 2, NULL, '2008-03-11 01:16:35'),
(255, 199, 0, 2, NULL, '2008-03-11 01:16:36'),
(256, 200, 0, 2, NULL, '2008-03-11 01:16:37'),
(257, 201, 0, 2, NULL, '2008-03-11 01:16:38'),
(258, 202, 0, 2, NULL, '2008-03-11 01:16:29'),
(259, 203, 0, 2, NULL, '2008-03-11 01:16:30'),
(260, 204, 0, 2, NULL, '2008-03-11 01:16:31'),
(261, 205, 0, 2, NULL, '2008-03-11 01:16:32'),
(262, 206, 0, 2, NULL, '2008-03-11 01:16:33'),
(263, 207, 0, 2, NULL, '2008-03-11 01:16:34'),
(264, 208, 0, 2, NULL, '2008-03-11 01:16:35'),
(265, 209, 0, 2, NULL, '2008-03-11 01:16:36'),
(266, 210, 0, 2, NULL, '2008-03-11 01:16:37'),
(267, 211, 0, 2, NULL, '2008-03-11 01:16:38'),
(268, 212, 0, 2, NULL, '2008-03-11 01:16:29'),
(269, 213, 0, 2, NULL, '2008-03-11 01:16:30'),
(270, 214, 0, 2, NULL, '2008-03-11 01:16:31'),
(271, 215, 0, 2, NULL, '2008-03-11 01:16:32'),
(272, 216, 0, 2, NULL, '2008-03-11 01:16:33'),
(273, 217, 0, 2, NULL, '2008-03-11 01:16:34'),
(274, 218, 0, 2, NULL, '2008-03-11 01:16:35'),
(275, 219, 0, 2, NULL, '2008-03-11 01:16:36'),
(276, 220, 0, 2, NULL, '2008-03-11 01:16:37'),
(277, 221, 0, 2, NULL, '2008-03-11 01:16:38'),
(278, 222, 0, 2, NULL, '2008-03-11 01:16:29'),
(279, 224, 0, 2, NULL, '2008-03-11 01:16:31'),
(280, 225, 0, 2, NULL, '2008-03-11 01:16:32'),
(281, 226, 0, 2, NULL, '2008-03-11 01:16:33'),
(282, 227, 0, 2, NULL, '2008-03-11 01:16:34'),
(283, 228, 0, 2, NULL, '2008-03-11 01:16:35'),
(284, 229, 0, 2, NULL, '2008-03-11 01:16:36'),
(285, 230, 0, 2, NULL, '2008-03-11 01:16:37'),
(286, 231, 0, 2, NULL, '2008-03-11 01:16:38'),
(287, 232, 0, 2, NULL, '2008-03-11 01:16:29'),
(288, 233, 0, 2, NULL, '2008-03-11 01:16:30'),
(289, 234, 0, 2, NULL, '2008-03-11 01:16:31'),
(290, 235, 0, 2, NULL, '2008-03-11 01:16:32'),
(291, 236, 0, 2, NULL, '2008-03-11 22:29:29'),
(292, 237, 0, 2, NULL, '2008-03-11 22:29:37'),
(293, 238, 0, 2, NULL, '2008-03-11 22:29:45'),
(294, 239, 0, 2, NULL, '2008-03-11 22:29:52'),
(297, 1, 0, 4, NULL, '2008-03-12 02:04:36'),
(298, 2, 0, 4, NULL, '2008-03-11 01:16:29'),
(299, 3, 0, 4, NULL, '2008-03-11 01:16:30'),
(300, 4, 0, 4, NULL, '2008-03-11 01:16:31'),
(301, 5, 0, 4, NULL, '2008-03-11 01:16:32'),
(302, 6, 0, 4, NULL, '2008-03-11 01:16:33'),
(303, 7, 0, 4, NULL, '2008-03-11 01:16:34'),
(304, 8, 0, 4, NULL, '2008-03-11 01:16:35'),
(305, 9, 0, 4, NULL, '2008-03-11 01:16:36'),
(306, 10, 0, 4, NULL, '2008-03-11 01:16:37'),
(307, 11, 0, 4, NULL, '2008-03-11 01:16:38'),
(308, 12, 0, 4, NULL, '2008-03-11 01:16:29'),
(309, 13, 0, 4, NULL, '2008-03-11 01:16:30'),
(310, 14, 0, 4, NULL, '2008-03-11 01:16:31'),
(311, 15, 0, 4, NULL, '2008-03-11 01:16:32'),
(312, 16, 0, 4, NULL, '2008-03-11 01:16:33'),
(313, 17, 0, 4, NULL, '2008-03-11 01:16:34'),
(314, 18, 0, 4, NULL, '2008-03-11 01:16:35'),
(315, 19, 0, 4, NULL, '2008-03-11 01:16:36'),
(316, 20, 0, 4, NULL, '2008-03-11 01:16:37'),
(317, 21, 0, 4, NULL, '2008-03-11 01:16:38'),
(318, 22, 0, 4, NULL, '2008-03-11 01:16:29'),
(319, 23, 0, 4, NULL, '2008-03-11 01:16:30'),
(320, 24, 0, 4, NULL, '2008-03-11 01:16:31'),
(321, 25, 0, 4, NULL, '2008-03-11 22:14:10'),
(322, 26, 0, 4, NULL, '2008-03-11 01:16:29'),
(323, 27, 0, 4, NULL, '2008-03-11 01:16:29'),
(324, 28, 0, 4, NULL, '2008-03-11 01:16:30'),
(325, 29, 0, 4, NULL, '2008-03-11 01:16:31'),
(326, 30, 0, 4, NULL, '2008-03-11 01:16:32'),
(327, 31, 0, 4, NULL, '2008-03-11 01:16:33'),
(328, 32, 0, 4, NULL, '2008-03-11 01:16:34'),
(329, 33, 0, 4, NULL, '2008-03-11 01:16:35'),
(330, 34, 0, 4, NULL, '2008-03-11 01:16:36'),
(331, 35, 0, 4, NULL, '2008-03-11 01:16:37'),
(332, 36, 0, 4, NULL, '2008-03-11 01:16:38'),
(333, 37, 0, 4, NULL, '2008-03-11 01:16:29'),
(334, 38, 0, 4, NULL, '2008-03-11 01:16:30'),
(335, 39, 0, 4, NULL, '2008-03-11 01:16:31'),
(336, 40, 0, 4, NULL, '2008-03-11 01:16:32'),
(337, 41, 0, 4, NULL, '2008-03-11 01:16:33'),
(338, 42, 0, 4, NULL, '2008-03-11 01:16:34'),
(339, 43, 0, 4, NULL, '2008-03-11 01:16:35'),
(340, 44, 0, 4, NULL, '2008-03-11 01:16:36'),
(341, 45, 0, 4, NULL, '2008-03-11 01:16:37'),
(342, 46, 0, 4, NULL, '2008-03-11 01:16:38'),
(343, 47, 0, 4, NULL, '2008-03-11 01:16:29'),
(344, 48, 0, 4, NULL, '2008-03-11 01:16:30'),
(345, 49, 0, 4, NULL, '2008-03-11 01:16:31'),
(346, 50, 0, 4, NULL, '2008-03-11 01:16:38'),
(347, 51, 0, 4, NULL, '2008-03-11 01:16:29'),
(348, 52, 0, 4, NULL, '2008-03-11 01:16:29'),
(349, 53, 0, 4, NULL, '2008-03-11 01:16:30'),
(350, 54, 0, 4, NULL, '2008-03-11 01:16:31'),
(351, 55, 0, 4, NULL, '2008-03-11 01:16:32'),
(352, 56, 0, 4, NULL, '2008-03-11 01:16:33'),
(353, 57, 0, 4, NULL, '2008-03-11 01:16:34'),
(354, 58, 0, 4, NULL, '2008-03-11 01:16:35'),
(355, 59, 0, 4, NULL, '2008-03-11 01:16:36'),
(356, 60, 0, 4, NULL, '2008-03-11 01:16:37'),
(357, 61, 0, 4, NULL, '2008-03-11 01:16:38'),
(358, 62, 0, 4, NULL, '2008-03-11 01:16:29'),
(359, 63, 0, 4, NULL, '2008-03-11 01:16:30'),
(360, 64, 0, 4, NULL, '2008-03-11 01:16:31'),
(361, 65, 0, 4, NULL, '2008-03-11 01:16:32'),
(362, 66, 0, 4, NULL, '2008-03-11 01:16:33'),
(363, 67, 0, 4, NULL, '2008-03-11 01:16:34'),
(364, 68, 0, 4, NULL, '2008-03-11 01:16:35'),
(365, 69, 0, 4, NULL, '2008-03-11 01:16:36'),
(366, 70, 0, 4, NULL, '2008-03-11 01:16:37'),
(367, 71, 0, 4, NULL, '2008-03-11 01:16:38'),
(368, 72, 0, 4, NULL, '2008-03-11 01:16:29'),
(369, 73, 0, 4, NULL, '2008-03-11 01:16:30'),
(370, 74, 0, 4, NULL, '2008-03-11 01:16:31'),
(371, 75, 0, 4, NULL, '2008-03-11 22:14:10'),
(372, 76, 0, 4, NULL, '2008-03-11 01:16:29'),
(373, 77, 0, 4, NULL, '2008-03-11 01:16:29'),
(374, 78, 0, 4, NULL, '2008-03-11 01:16:30'),
(375, 79, 0, 4, NULL, '2008-03-11 01:16:31'),
(376, 80, 0, 4, NULL, '2008-03-11 01:16:32'),
(377, 81, 0, 4, NULL, '2008-03-11 01:16:33'),
(378, 82, 0, 4, NULL, '2008-03-11 01:16:34'),
(379, 83, 0, 4, NULL, '2008-03-11 01:16:35'),
(380, 84, 0, 4, NULL, '2008-03-11 01:16:36'),
(381, 85, 0, 4, NULL, '2008-03-11 01:16:37'),
(382, 86, 0, 4, NULL, '2008-03-11 01:16:38'),
(383, 87, 0, 4, NULL, '2008-03-11 01:16:29'),
(384, 88, 0, 4, NULL, '2008-03-11 01:16:30'),
(385, 89, 0, 4, NULL, '2008-03-11 01:16:31'),
(386, 90, 0, 4, NULL, '2008-03-11 01:16:32'),
(387, 91, 0, 4, NULL, '2008-03-11 01:16:33'),
(388, 92, 0, 4, NULL, '2008-03-11 01:16:34'),
(389, 93, 0, 4, NULL, '2008-03-11 01:16:35'),
(390, 94, 0, 4, NULL, '2008-03-11 01:16:36'),
(391, 95, 0, 4, NULL, '2008-03-11 01:16:37'),
(392, 96, 0, 4, NULL, '2008-03-11 01:16:38'),
(393, 97, 0, 4, NULL, '2008-03-11 01:16:29'),
(394, 98, 0, 4, NULL, '2008-03-11 01:16:30'),
(395, 99, 0, 4, NULL, '2008-03-11 01:16:31'),
(396, 100, 0, 4, NULL, '2008-03-11 01:16:38'),
(397, 101, 0, 4, NULL, '2008-03-11 01:16:29'),
(398, 102, 0, 4, NULL, '2008-03-11 01:16:29'),
(399, 103, 0, 4, NULL, '2008-03-11 01:16:30'),
(400, 104, 0, 4, NULL, '2008-03-11 01:16:31'),
(401, 105, 0, 4, NULL, '2008-03-11 01:16:32'),
(402, 106, 0, 4, NULL, '2008-03-11 01:16:33'),
(403, 107, 0, 4, NULL, '2008-03-11 01:16:34'),
(404, 108, 0, 4, NULL, '2008-03-11 01:16:35'),
(405, 109, 0, 4, NULL, '2008-03-11 01:16:36'),
(406, 110, 0, 4, NULL, '2008-03-11 01:16:37'),
(407, 111, 0, 4, NULL, '2008-03-11 01:16:38'),
(408, 112, 0, 4, NULL, '2008-03-11 01:16:29'),
(409, 113, 0, 4, NULL, '2008-03-11 01:16:30'),
(410, 114, 0, 4, NULL, '2008-03-11 01:16:31'),
(411, 115, 0, 4, NULL, '2008-03-11 01:16:32'),
(412, 116, 0, 4, NULL, '2008-03-11 01:16:33'),
(413, 117, 0, 4, NULL, '2008-03-11 01:16:34'),
(414, 118, 0, 4, NULL, '2008-03-11 01:16:35'),
(415, 119, 0, 4, NULL, '2008-03-11 01:16:36'),
(416, 120, 0, 4, NULL, '2008-03-11 01:16:37'),
(417, 121, 0, 4, NULL, '2008-03-11 01:16:38'),
(418, 122, 0, 4, NULL, '2008-03-11 01:16:29'),
(419, 123, 0, 4, NULL, '2008-03-11 01:16:30'),
(420, 124, 0, 4, NULL, '2008-03-11 01:16:31'),
(421, 125, 0, 4, NULL, '2008-03-11 22:14:10'),
(422, 126, 0, 4, NULL, '2008-03-11 01:16:29'),
(423, 127, 0, 4, NULL, '2008-03-11 01:16:29'),
(424, 128, 0, 4, NULL, '2008-03-11 01:16:30'),
(425, 129, 0, 4, NULL, '2008-03-11 01:16:31'),
(426, 130, 0, 4, NULL, '2008-03-11 01:16:32'),
(427, 131, 0, 4, NULL, '2008-03-11 01:16:33'),
(428, 132, 0, 4, NULL, '2008-03-11 01:16:34'),
(429, 133, 0, 4, NULL, '2008-03-11 01:16:35'),
(430, 134, 0, 4, NULL, '2008-03-11 01:16:36'),
(431, 135, 0, 4, NULL, '2008-03-11 01:16:37'),
(432, 136, 0, 4, NULL, '2008-03-11 01:16:38'),
(433, 137, 0, 4, NULL, '2008-03-11 01:16:29'),
(434, 138, 0, 4, NULL, '2008-03-11 01:16:30'),
(435, 139, 0, 4, NULL, '2008-03-11 01:16:31'),
(436, 140, 0, 4, NULL, '2008-03-11 01:16:32'),
(437, 141, 0, 4, NULL, '2008-03-11 01:16:33'),
(438, 142, 0, 4, NULL, '2008-03-11 01:16:34'),
(439, 143, 0, 4, NULL, '2008-03-11 01:16:35'),
(440, 144, 0, 4, NULL, '2008-03-11 01:16:36'),
(441, 145, 0, 4, NULL, '2008-03-11 01:16:37'),
(442, 146, 0, 4, NULL, '2008-03-11 01:16:38'),
(443, 147, 0, 4, NULL, '2008-03-11 01:16:29'),
(444, 148, 0, 4, NULL, '2008-03-11 01:16:30'),
(445, 149, 0, 4, NULL, '2008-03-11 01:16:31'),
(446, 150, 0, 4, NULL, '2008-03-11 01:16:38'),
(447, 151, 0, 4, NULL, '2008-03-11 01:16:29'),
(448, 152, 0, 4, NULL, '2008-03-11 01:16:29'),
(449, 153, 0, 4, NULL, '2008-03-11 01:16:30'),
(450, 154, 0, 4, NULL, '2008-03-11 01:16:31'),
(451, 155, 0, 4, NULL, '2008-03-11 01:16:32'),
(452, 156, 0, 4, NULL, '2008-03-11 01:16:33'),
(453, 157, 0, 4, NULL, '2008-03-11 01:16:34'),
(454, 158, 0, 4, NULL, '2008-03-11 01:16:35'),
(455, 159, 0, 4, NULL, '2008-03-11 01:16:36'),
(456, 160, 0, 4, NULL, '2008-03-11 01:16:37'),
(457, 161, 0, 4, NULL, '2008-03-11 01:16:38'),
(458, 162, 0, 4, NULL, '2008-03-11 01:16:29'),
(459, 163, 0, 4, NULL, '2008-03-11 01:16:30'),
(460, 164, 0, 4, NULL, '2008-03-11 01:16:31'),
(461, 165, 0, 4, NULL, '2008-03-11 01:16:32'),
(462, 166, 0, 4, NULL, '2008-03-11 01:16:33'),
(463, 167, 0, 4, NULL, '2008-03-11 01:16:34'),
(464, 168, 0, 4, NULL, '2008-03-11 01:16:35'),
(465, 169, 0, 4, NULL, '2008-03-11 01:16:36'),
(466, 170, 0, 4, NULL, '2008-03-11 01:16:37'),
(467, 171, 0, 4, NULL, '2008-03-11 01:16:38'),
(468, 172, 0, 4, NULL, '2008-03-11 01:16:29'),
(469, 173, 0, 4, NULL, '2008-03-11 01:16:30'),
(470, 174, 0, 4, NULL, '2008-03-11 01:16:31'),
(471, 175, 0, 4, NULL, '2008-03-11 22:14:10'),
(472, 176, 0, 4, NULL, '2008-03-11 01:16:29'),
(473, 177, 0, 4, NULL, '2008-03-11 01:16:29'),
(474, 178, 0, 4, NULL, '2008-03-11 01:16:30'),
(475, 179, 0, 4, NULL, '2008-03-11 01:16:31'),
(476, 180, 0, 4, NULL, '2008-03-11 01:16:32'),
(477, 181, 0, 4, NULL, '2008-03-11 01:16:33'),
(478, 182, 0, 4, NULL, '2008-03-11 01:16:34'),
(479, 183, 0, 4, NULL, '2008-03-11 01:16:35'),
(480, 184, 0, 4, NULL, '2008-03-11 01:16:36'),
(481, 185, 0, 4, NULL, '2008-03-11 01:16:37'),
(482, 186, 0, 4, NULL, '2008-03-11 01:16:38'),
(483, 187, 0, 4, NULL, '2008-03-11 01:16:29'),
(484, 188, 0, 4, NULL, '2008-03-11 01:16:30'),
(485, 189, 0, 4, NULL, '2008-03-11 01:16:31'),
(486, 190, 0, 4, NULL, '2008-03-11 01:16:32'),
(487, 191, 0, 4, NULL, '2008-03-11 01:16:33'),
(488, 192, 0, 4, NULL, '2008-03-11 01:16:34'),
(489, 193, 0, 4, NULL, '2008-03-11 01:16:35'),
(490, 194, 0, 4, NULL, '2008-03-11 01:16:36'),
(491, 195, 0, 4, NULL, '2008-03-11 01:16:37'),
(492, 196, 0, 4, NULL, '2008-03-11 01:16:38'),
(493, 197, 0, 4, NULL, '2008-03-11 01:16:29'),
(494, 198, 0, 4, NULL, '2008-03-11 01:16:30'),
(495, 199, 0, 4, NULL, '2008-03-11 01:16:31'),
(496, 200, 0, 4, NULL, '2008-03-11 01:16:38'),
(497, 201, 0, 4, NULL, '2008-03-11 01:16:29'),
(498, 202, 0, 4, NULL, '2008-03-11 01:16:29'),
(499, 203, 0, 4, NULL, '2008-03-11 01:16:30'),
(500, 204, 0, 4, NULL, '2008-03-11 01:16:31'),
(501, 205, 0, 4, NULL, '2008-03-11 01:16:32'),
(502, 206, 0, 4, NULL, '2008-03-11 01:16:33'),
(503, 207, 0, 4, NULL, '2008-03-11 01:16:34'),
(504, 208, 0, 4, NULL, '2008-03-11 01:16:35'),
(505, 209, 0, 4, NULL, '2008-03-11 01:16:36'),
(506, 210, 0, 4, NULL, '2008-03-11 01:16:37'),
(507, 211, 0, 4, NULL, '2008-03-11 01:16:38'),
(508, 212, 0, 4, NULL, '2008-03-11 01:16:29'),
(509, 213, 0, 4, NULL, '2008-03-11 01:16:30'),
(510, 214, 0, 4, NULL, '2008-03-11 01:16:31'),
(511, 215, 0, 4, NULL, '2008-03-11 22:14:10'),
(512, 216, 0, 4, NULL, '2008-03-11 01:16:29'),
(513, 217, 0, 4, NULL, '2008-03-11 01:16:29'),
(514, 218, 0, 4, NULL, '2008-03-11 01:16:30'),
(515, 219, 0, 4, NULL, '2008-03-11 01:16:31'),
(516, 220, 0, 4, NULL, '2008-03-11 01:16:32'),
(517, 221, 0, 4, NULL, '2008-03-11 01:16:33'),
(518, 222, 0, 4, NULL, '2008-03-11 01:16:34'),
(519, 223, 0, 4, NULL, '2008-03-11 01:16:35'),
(520, 224, 0, 4, NULL, '2008-03-11 01:16:36'),
(521, 225, 0, 4, NULL, '2008-03-11 01:16:37'),
(522, 226, 0, 4, NULL, '2008-03-11 01:16:38'),
(523, 227, 0, 4, NULL, '2008-03-11 01:16:29'),
(524, 228, 0, 4, NULL, '2008-03-11 01:16:30'),
(525, 229, 0, 4, NULL, '2008-03-11 01:16:31'),
(526, 230, 0, 4, NULL, '2008-03-11 01:16:30'),
(527, 231, 0, 4, NULL, '2008-03-11 01:16:31'),
(528, 232, 0, 4, NULL, '2008-03-11 01:16:32'),
(529, 233, 0, 4, NULL, '2008-03-11 01:16:33'),
(530, 234, 0, 4, NULL, '2008-03-11 01:16:34'),
(531, 235, 0, 4, NULL, '2008-03-11 01:16:35'),
(532, 236, 0, 4, NULL, '2008-03-11 01:16:36'),
(533, 237, 0, 4, NULL, '2008-03-11 01:16:37'),
(534, 238, 0, 4, NULL, '2008-03-11 01:16:38'),
(536, 195, 157, 3, NULL, '2008-10-10 05:19:05'),
(537, 195, 138, 1, NULL, '2008-10-10 05:20:15');
