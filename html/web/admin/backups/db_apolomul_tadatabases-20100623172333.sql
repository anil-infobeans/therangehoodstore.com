# osCommerce, Open Source E-Commerce Solutions
# http://www.oscommerce.com
#
# Database Backup For STORE - ta package
# Copyright (c) 2010 STORE
#
# Database: apolomul_tadatabases
# Database Server: localhost
#
# Backup Date: 06/23/2010 17:23:33

drop table if exists address_book;
create table address_book (
  address_book_id int(11) not null auto_increment,
  customers_id int(11) default '0' not null ,
  entry_gender char(1) not null ,
  entry_company varchar(32) ,
  entry_company_tax_id varchar(32) ,
  entry_firstname varchar(32) not null ,
  entry_lastname varchar(32) not null ,
  entry_street_address varchar(64) not null ,
  entry_suburb varchar(32) ,
  entry_postcode varchar(10) not null ,
  entry_city varchar(32) not null ,
  entry_state varchar(32) ,
  entry_country_id int(11) default '0' not null ,
  entry_zone_id int(11) default '0' not null ,
  PRIMARY KEY (address_book_id),
  KEY idx_address_book_customers_id (customers_id)
);

insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('40', '30', 'm', 'asa', '', 'adsad', 'asdsadasd', 'jasas', NULL, 'sasa', 'sasa', '', '195', '139');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('42', '32', 'm', '', '', 'toloo', 'lololo', 'weewopopo', NULL, 'ewesdsd', 'wewesdsd', 'wewesdsd', '10', '0');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('43', '33', 'm', '', '', 'toto', 'lalalall', 'sasasaa', NULL, 'sasassas', 'asasasas', 'sasa', '37', '0');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('246', '234', 'm', '', NULL, 'asd', 'asd', 'asdas 4545', NULL, 'asdasd', 'adasd', '', '195', '130');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('244', '234', 'm', 'apolo', '56587969875', 'Taylor', 'Smith', 'jr. los castanos 1174', NULL, 'lima 39', 'lima', 'lima', '167', '0');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('247', '234', 'm', '', NULL, 'Taylor', 'Smith', '13450 Farmcrest Ct', NULL, '20171', 'Herndon', '', '223', '61');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('248', '234', 'f', '', NULL, 'Amber', 'Smith', '308 Mozart Ave E', NULL, '56001', 'Mankato', '', '223', '34');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('249', '234', 'm', '', NULL, 'totilo', 'bito', '308 Mozart Ave E', NULL, '56001', 'Mankato', '', '223', '34');
drop table if exists address_format;
create table address_format (
  address_format_id int(11) not null auto_increment,
  address_format varchar(128) not null ,
  address_summary varchar(48) not null ,
  PRIMARY KEY (address_format_id)
);

insert into address_format (address_format_id, address_format, address_summary) values ('1', '$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country', '$city / $country');
insert into address_format (address_format_id, address_format, address_summary) values ('2', '$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country', '$city, $state / $country');
insert into address_format (address_format_id, address_format, address_summary) values ('3', '$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country', '$state / $country');
insert into address_format (address_format_id, address_format, address_summary) values ('4', '$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country', '$postcode / $country');
insert into address_format (address_format_id, address_format, address_summary) values ('5', '$firstname $lastname$cr$streets$cr$postcode $city$cr$country', '$city / $country');
drop table if exists banners;
create table banners (
  banners_id int(11) not null auto_increment,
  banners_title varchar(64) not null ,
  banners_url varchar(255) not null ,
  banners_image varchar(64) not null ,
  banners_group varchar(10) not null ,
  banners_html_text text ,
  expires_impressions int(7) default '0' ,
  expires_date datetime ,
  date_scheduled datetime ,
  date_added datetime default '0000-00-00 00:00:00' not null ,
  date_status_change datetime ,
  status int(1) default '1' not null ,
  PRIMARY KEY (banners_id)
);

drop table if exists banners_history;
create table banners_history (
  banners_history_id int(11) not null auto_increment,
  banners_id int(11) default '0' not null ,
  banners_shown int(5) default '0' not null ,
  banners_clicked int(5) default '0' not null ,
  banners_history_date datetime default '0000-00-00 00:00:00' not null ,
  PRIMARY KEY (banners_history_id),
  KEY banners_id (banners_id)
);

drop table if exists categories;
create table categories (
  categories_id int(11) not null auto_increment,
  categories_image varchar(64) ,
  parent_id int(11) default '0' not null ,
  sort_order int(3) ,
  date_added datetime ,
  last_modified datetime ,
  PRIMARY KEY (categories_id),
  KEY idx_categories_parent_id (parent_id)
);

insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('453', '', '0', '0', '2009-09-16 20:25:49', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('454', '', '0', '0', '2009-09-16 20:26:13', '2009-09-16 13:26:58');
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('390', NULL, '278', '0', '2008-10-13 08:07:15', NULL);
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('455', '', '0', '0', '2009-09-16 20:26:35', NULL);
drop table if exists categories_description;
create table categories_description (
  categories_id int(11) default '0' not null ,
  language_id int(11) default '1' not null ,
  categories_name varchar(32) not null ,
  PRIMARY KEY (categories_id, language_id),
  KEY idx_categories_name (categories_name)
);

insert into categories_description (categories_id, language_id, categories_name) values ('454', '2', 'Categoría 2');
insert into categories_description (categories_id, language_id, categories_name) values ('454', '1', 'Category 2');
insert into categories_description (categories_id, language_id, categories_name) values ('453', '1', 'Category 1');
insert into categories_description (categories_id, language_id, categories_name) values ('453', '2', 'Categoría 1');
insert into categories_description (categories_id, language_id, categories_name) values ('455', '1', 'Category 3');
insert into categories_description (categories_id, language_id, categories_name) values ('455', '2', 'Categoría 3');
drop table if exists configuration;
create table configuration (
  configuration_id int(11) not null auto_increment,
  configuration_title varchar(64) not null ,
  configuration_key varchar(64) not null ,
  configuration_value text not null ,
  configuration_description varchar(255) not null ,
  configuration_group_id int(11) default '0' not null ,
  sort_order int(5) ,
  last_modified datetime ,
  date_added datetime default '0000-00-00 00:00:00' not null ,
  use_function varchar(255) ,
  set_function varchar(255) ,
  PRIMARY KEY (configuration_id)
);

insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('1', 'Nombre de la Tienda', 'STORE_NAME', 'STORE - ta package', 'Nombre de la Tienda', '1', '1', '2009-09-16 10:11:51', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('2', 'Nombre del propietario de la Tienda', 'STORE_OWNER', 'STORE', 'Nombre del propietario de la Tienda', '1', '2', '2009-09-16 10:12:00', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('3', 'Email del propietario', 'STORE_OWNER_EMAIL_ADDRESS', 'contact@apolomultimedia.com', 'Email del propietario', '1', '3', '2009-09-16 10:12:12', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('4', 'E-Mail de', 'EMAIL_FROM', '\"STORE\" <contact@apolomultimedia.com>', 'El email usado en envios de email', '1', '4', '2009-09-16 10:12:28', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('5', 'Pais', 'STORE_COUNTRY', '223', 'La tienda esta localizada en<br><br><b>Nota: Por favor, recuerde actualizar la Zona de la Tienda</b>', '1', '6', '2010-01-04 05:02:15', '2005-07-07 10:38:22', 'tep_get_country_name', 'tep_cfg_pull_down_country_list(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('6', 'Zona', 'STORE_ZONE', '16', 'La zona de mi Tienda esta localizada en', '1', '7', '2010-01-04 05:02:31', '2005-07-07 10:38:22', 'tep_cfg_get_zone_name', 'tep_cfg_pull_down_zone_list(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('7', 'Orden de los listados de productos', 'EXPECTED_PRODUCTS_SORT', 'desc', 'Este es el orden mostrado en los listados de productos', '1', '8', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'asc\', \'desc\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('8', 'Orden de los listados de productos - adicional', 'EXPECTED_PRODUCTS_FIELD', 'date_expected', 'ordena por fecha de introduccion o por nombre de producto', '1', '9', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'products_name\', \'date_expected\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('9', 'Cargar la Moneda por lenguaje', 'USE_DEFAULT_LANGUAGE_CURRENCY', 'false', 'Cargar la Moneda por lenguaje', '1', '10', '2008-03-11 19:10:07', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('10', 'Enviar emails extras', 'SEND_EXTRA_ORDER_EMAILS_TO', 'contact@apolomultimedia.com', 'Enviar emails extras a las siguientos e-mails, en el siguiente formato: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', '1', '11', '2009-09-16 10:12:52', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('11', 'Usar URLS seguras (aun en DESARROLLO)', 'SEARCH_ENGINE_FRIENDLY_URLS', 'false', 'Usar URLS seguras (aun en DESARROLLO)', '1', '12', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('12', 'Mostrar cesta despues de agregar producto en cesta', 'DISPLAY_CART', 'true', 'Mostrar cesta despues de agregar producto en cesta', '1', '14', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('13', 'Permitir a un invitado usar el modulo de \"Cuentale a un Amigo\"', 'ALLOW_GUEST_TO_TELL_A_FRIEND', 'true', 'Permitir a un invitado usar el modulo de \"Cuentale a un Amigo\"', '1', '15', '2008-03-31 18:45:40', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('14', 'Operador de Busqueda', 'ADVANCED_SEARCH_DEFAULT_OPERATOR', 'and', 'Operador de Busqueda', '1', '17', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'and\', \'or\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('15', 'Direccion y Telefono de la Tienda', 'STORE_NAME_ADDRESS', 'STORE
Apolomultimedia s.a.c.', 'Direccion y Telefono de la Tienda', '1', '18', '2009-09-16 10:13:05', '2005-07-07 10:38:22', NULL, 'tep_cfg_textarea(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('16', 'Mostrar la cantidad de productos por categoria', 'SHOW_COUNTS', 'true', 'Mostrar la cantidad de productos por categoria', '1', '19', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('17', 'Impuestos decimales', 'TAX_DECIMAL_PLACES', '0', 'Impuestos decimales', '1', '20', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('18', 'Mostrar Precios con Impuestos', 'DISPLAY_PRICE_WITH_TAX', 'true', 'Mostrar Precios con Impuestos', '1', '21', '2010-05-06 10:44:07', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('19', 'Nombres', 'ENTRY_FIRST_NAME_MIN_LENGTH', '2', 'Cantidad mínima de caracteres', '2', '1', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('20', 'Apellidos', 'ENTRY_LAST_NAME_MIN_LENGTH', '2', 'Cantidad mínima de caracteres', '2', '2', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('21', 'Fecha de Nacimiento', 'ENTRY_DOB_MIN_LENGTH', '10', 'Cantidad mínima de caracteres', '2', '3', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('22', 'E-Mail', 'ENTRY_EMAIL_ADDRESS_MIN_LENGTH', '6', 'Cantidad mínima de caracteres', '2', '4', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('23', 'Dirección', 'ENTRY_STREET_ADDRESS_MIN_LENGTH', '5', 'Cantidad mínima de caracteres', '2', '5', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('24', 'Empresa', 'ENTRY_COMPANY_MIN_LENGTH', '2', 'Cantidad mínima de caracteres', '2', '6', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('25', 'Código Postal', 'ENTRY_POSTCODE_MIN_LENGTH', '4', 'Cantidad mínima de caracteres', '2', '7', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('26', 'Ciudad', 'ENTRY_CITY_MIN_LENGTH', '3', 'Cantidad mínima de caracteres', '2', '8', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('27', 'Estado', 'ENTRY_STATE_MIN_LENGTH', '2', 'Cantidad mínima de caracteres', '2', '9', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('28', 'Teléfono', 'ENTRY_TELEPHONE_MIN_LENGTH', '3', 'Cantidad mínima de caracteres', '2', '10', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('29', 'Clave', 'ENTRY_PASSWORD_MIN_LENGTH', '5', 'Cantidad mínima de caracteres', '2', '11', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('30', 'Nombre del Propietario de la Tarjeta de Crédito', 'CC_OWNER_MIN_LENGTH', '3', 'Cantidad mínima de caracteres', '2', '12', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('31', 'Número de la Tarjeta de Crédito', 'CC_NUMBER_MIN_LENGTH', '10', 'Cantidad mínima de caracteres', '2', '13', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('32', 'Texto de Comentarios', 'REVIEW_TEXT_MIN_LENGTH', '50', 'Cantidad mínima de caracteres', '2', '14', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('33', 'Más Vendidos', 'MIN_DISPLAY_BESTSELLERS', '1', 'Cantidad mínima de \"Más Vendidos\"', '2', '15', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('34', 'Tambien Compraron', 'MIN_DISPLAY_ALSO_PURCHASED', '1', 'Cantidad mínima de \"Tambien Compraron\"', '2', '16', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('35', 'Libro de Direcciones por Cliente', 'MAX_ADDRESS_BOOK_ENTRIES', '5', 'Maximo número de direcciones que un cliente puede tener', '3', '1', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('36', 'Resultados de Busqueda', 'MAX_DISPLAY_SEARCH_RESULTS', '6', 'Cantidad de productos a mostrarse', '3', '2', '2006-08-10 12:01:24', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('37', 'Links', 'MAX_DISPLAY_PAGE_LINKS', '5', 'Hasta que número de link se mostrará?', '3', '3', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('38', 'Productos en Oferta', 'MAX_DISPLAY_SPECIAL_PRODUCTS', '6', 'Máximo número de \"Productos en Oferta\" a mostrarse', '3', '4', '2006-08-10 12:01:28', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('39', 'Nuevos Productos', 'MAX_DISPLAY_NEW_PRODUCTS', '6', 'Máximo número de \"Nuevos Productos\" a mostrarse', '3', '5', '2008-05-05 12:29:04', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('40', 'Productos Por Venir', 'MAX_DISPLAY_UPCOMING_PRODUCTS', '10', 'Máximo número de \"Productos Por Venir\" a mostrarse', '3', '6', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('41', 'Lista de Fabricantes', 'MAX_DISPLAY_MANUFACTURERS_IN_A_LIST', '0', 'Cuando el número de fabricantes exceda este número, un combo box será mostrado en su lugar', '3', '7', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('42', 'Columnas de la Lista de Fabricantes', 'MAX_MANUFACTURERS_LIST', '1', 'Cuando el valor sea \"1\" sera una sola columna, si \"2\" serán 2 columnas', '3', '7', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('43', 'Tamaño de caracteres de la Lista de Fabricantes', 'MAX_DISPLAY_MANUFACTURER_NAME_LEN', '15', 'Cantidad máxima de caracteres de la Lista de Fabricantes', '3', '8', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('44', 'Nuevos Comentarios', 'MAX_DISPLAY_NEW_REVIEWS', '6', 'Máximo número de comentarios a mostrarse', '3', '9', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('45', 'Selección al azar de \"Comentarios\"', 'MAX_RANDOM_SELECT_REVIEWS', '6', 'Número de registros de \"Comentarios\" a mostrarse al azar', '3', '10', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('46', 'Selección al azar de \"Nuevos Productos\"', 'MAX_RANDOM_SELECT_NEW', '6', 'Número de registros de \"Nuevos Productos\" a mostrarse al azar', '3', '11', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('47', 'Selección al azar de \"Productos en Oferta\"', 'MAX_RANDOM_SELECT_SPECIALS', '6', 'Número de registros de \"Productos en Oferta\" a mostrarse al azar', '3', '12', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('48', 'Listado de sub-categorias por columna', 'MAX_DISPLAY_CATEGORIES_PER_ROW', '3', 'Número de columnas', '3', '13', '2008-04-21 20:27:33', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('49', 'Listado de \"Nuevos Productos\"', 'MAX_DISPLAY_PRODUCTS_NEW', '6', 'Número de productos a mostrarse en la página de Nuevos Productos', '3', '14', '2006-08-10 12:01:38', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('50', 'Más Vendidos', 'MAX_DISPLAY_BESTSELLERS', '6', 'Cantidad máxima de \"Más Vendidos\"', '3', '15', '2005-07-11 18:48:14', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('51', 'Tambien Compraron', 'MAX_DISPLAY_ALSO_PURCHASED', '6', 'Cantidad máxima de \"Tambien Compraron\"', '3', '16', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('52', 'Caja de historia de pedidos del cliente', 'MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX', '6', 'Máximo número de pedidos a mostrarse en la Caja de historia de pedidos del cliente', '3', '17', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('53', 'Historia de Pedidos', 'MAX_DISPLAY_ORDER_HISTORY', '6', 'Cantidad máxima del historial de pedidos por pàgina', '3', '18', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('54', 'Imagen Pequeña - Ancho', 'SMALL_IMAGE_WIDTH', '164', 'medida en pixeles', '4', '1', '2009-09-16 13:33:55', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('55', 'Imagen Pequeña - Alto', 'SMALL_IMAGE_HEIGHT', '164', 'medida en pixeles', '4', '2', '2009-09-16 13:34:00', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('56', 'Imagen Encabezado - Ancho', 'HEADING_IMAGE_WIDTH', '0', 'medida en pixeles', '4', '3', '2005-07-07 11:40:02', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('57', 'Imagen Encabezado - Alto', 'HEADING_IMAGE_HEIGHT', '1', 'medida en pixeles', '4', '4', '2005-07-07 11:40:07', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('58', 'Imagen Subcategoria - Ancho', 'SUBCATEGORY_IMAGE_WIDTH', '0', 'medida en pixeles', '4', '5', '2005-07-07 16:11:36', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('59', 'Imagen Subcategoria - Alto', 'SUBCATEGORY_IMAGE_HEIGHT', '1', 'medida en pixeles', '4', '6', '2005-07-07 16:11:42', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('60', 'Calcular tamaño de imagen cargada', 'CONFIG_CALCULATE_IMAGE_SIZE', 'true', 'Calcular tamaño de imagen cargada?', '4', '7', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('61', 'Imagen Requerida', 'IMAGE_REQUIRED', 'true', 'Imagen Requerida?', '4', '8', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('62', 'Sexo', 'ACCOUNT_GENDER', 'true', 'Muestra el sexo en la cuenta del cliente', '5', '1', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('63', 'Fecha de Nacimiento', 'ACCOUNT_DOB', 'true', 'Muestra la fecha de nacimiento en la cuenta del cliente', '5', '2', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('64', 'Empresa', 'ACCOUNT_COMPANY', 'true', 'Muestra la Empresa en la cuenta del cliente', '5', '3', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('65', 'Suburbio', 'ACCOUNT_SUBURB', 'false', 'Muestra Suburbio en la cuenta del cliente', '5', '4', '2008-03-11 03:02:01', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('66', 'Estado', 'ACCOUNT_STATE', 'true', 'Muestra el Estado en la cuenta del cliente', '5', '5', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('67', 'Modulos de Pago instalados', 'MODULE_PAYMENT_INSTALLED', 'paypal.php;moneyorder.php;cod.php', 'Listado de los modulos de pago instalados separados por punto y coma - no necesita editarse - (Ejemplo: cc.php;cod.php;paypal.php)', '6', '0', '2010-01-05 13:29:56', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('68', 'Modulos de Costos instalados', 'MODULE_ORDER_TOTAL_INSTALLED', 'ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php', 'Listado de los modulos de costos instalados separados por punto y coma - no necesita editarse -  (Ejemplo: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)', '6', '0', '2008-03-11 19:29:25', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('69', 'Modulos de Envio instalados', 'MODULE_SHIPPING_INSTALLED', 'fedexrate.php5', 'Listado de los modulos de envio instalados separados por punto y coma - no necesita editarse -  (Ejemplo: ups.php;flat.php;item.php)', '6', '0', '2010-01-28 17:24:44', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('499', 'Enable FedEx Shipping', 'MODULE_SHIPPING_FEDEX_STATUS', 'True', 'Dou you want to offer FedEx shipping?', '6', '0', NULL, '2010-01-28 17:24:44', NULL, 'tep_cfg_select_option(array(\'True\',\'False\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('344', 'Set Order Status', 'MODULE_PAYMENT_COD_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', '6', '0', NULL, '2008-05-13 18:43:28', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('342', 'Payment Zone', 'MODULE_PAYMENT_COD_ZONE', '1', 'If a zone is selected, only enable this payment method for that zone.', '6', '2', NULL, '2008-05-13 18:43:28', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('343', 'Sort order of display.', 'MODULE_PAYMENT_COD_SORT_ORDER', '3', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2008-05-13 18:43:28', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('158', 'Descripción de producto - Básico / Avanzado?', 'HTML_AREA_WYSIWYG_BASIC_PD', 'Basic', 'Funciones Básicas - carga rápida<br>Funciones Avanzadas - carga lenta', '112', '10', '2008-04-21 15:39:12', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(\'Basic\', \'Advanced\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('159', 'Ancho - Caja de texto - Descripción de Producto', 'HTML_AREA_WYSIWYG_WIDTH', '505', 'medida en pixeles (valor por defecto: 505)', '112', '15', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('160', 'Alto - Caja de texto - Descripción de Producto', 'HTML_AREA_WYSIWYG_HEIGHT', '240', 'medida en pixeles (valor por defecto: 240)', '112', '19', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('161', 'WYSIWYG Area en los emails de los clientes', 'HTML_AREA_WYSIWYG_DISABLE_EMAIL', 'Enable', 'Use WYSIWYG Area en los emails de los clientes', '112', '20', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(\'Enable\', \'Disable\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('156', 'Mostrar nombre de producto o modelo en la barra de navegación', '_CFG_SHOW_PRODUCTS_NAME_INNAV', '1', 'true-muestra nombre / false-muestra modelo', '1', '110', '2006-12-28 14:21:13', '2006-01-03 01:42:29', NULL, 'tep_cfg_select_option(array(true, false),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('84', 'Moneda por defecto', 'DEFAULT_CURRENCY', 'USD', 'Moneda por defecto', '6', '0', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('85', 'Lenguaje por defecto', 'DEFAULT_LANGUAGE', 'en', 'Lenguaje por defecto', '6', '0', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('86', 'Orden por defecto para nuevas ordenes', 'DEFAULT_ORDERS_STATUS_ID', '1', 'Cuando una nueva orden es creada, este valor sera asignado', '6', '0', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('87', 'mostrar Envio', 'MODULE_ORDER_TOTAL_SHIPPING_STATUS', 'true', 'Desea mostrar el costo de envio en las ordenes?', '6', '1', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('88', 'Orden', 'MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER', '3', 'Orden a mostrarse', '6', '2', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('89', 'Permitir Envio Gratis', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING', 'false', 'Ofreces este servicio?', '6', '3', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('90', 'Envio Gratis para ordenes sobre una cantidad', 'MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER', '50000000', 'Envio Gratis para ordenes sobre esta cantidad?', '6', '4', NULL, '2005-07-07 10:38:22', 'currencies->format', NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('91', 'Envio gratis para determinadas zonas', 'MODULE_ORDER_TOTAL_SHIPPING_DESTINATION', 'national', 'Envio gratis para esta zona?', '6', '5', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'national\', \'international\', \'both\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('92', 'Mostrar Sub-Total', 'MODULE_ORDER_TOTAL_SUBTOTAL_STATUS', 'true', 'Desea mostrar el sub-total en las ordenes?', '6', '1', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('93', 'Orden', 'MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER', '1', 'orden a mostrarse', '6', '2', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('94', 'Mostrar impuestos', 'MODULE_ORDER_TOTAL_TAX_STATUS', 'true', 'Desea mostrar el costo de los impuestos en las ordenes?', '6', '1', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('95', 'Orden', 'MODULE_ORDER_TOTAL_TAX_SORT_ORDER', '2', 'orden a mostrarse', '6', '2', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('96', 'Mostrar Total', 'MODULE_ORDER_TOTAL_TOTAL_STATUS', 'true', 'Desea mostrar el costo total en las ordenes?', '6', '1', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('97', 'orden', 'MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER', '4', 'orden a mostrarse', '6', '2', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('98', 'País de Origen', 'SHIPPING_ORIGIN_COUNTRY', '223', 'Seleccionar el país de origen desde el cual se harán los envios', '7', '1', '2009-09-24 08:39:52', '2005-07-07 10:38:22', 'tep_get_country_name', 'tep_cfg_pull_down_country_list(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('99', 'Código Postal', 'SHIPPING_ORIGIN_ZIP', 'NONE', 'Ingresa el código postal de la tienda', '7', '2', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('100', 'Ingresar el máximo peso que podrás enviar', 'SHIPPING_MAX_WEIGHT', '50', 'Los cargadores tienen un límite de peso por cada envio', '7', '3', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('101', 'Tara', 'SHIPPING_BOX_WEIGHT', '3', 'Cual es el peso promedio de envio?', '7', '4', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('102', 'Paquetes grandes - porcentaje de incremento', 'SHIPPING_BOX_PADDING', '10', 'Para 10% ingresar 10', '7', '5', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('103', 'Mostrar la imagen del producto', 'PRODUCT_LIST_IMAGE', '1', 'Deseas mostrar la imagen del producto?', '8', '1', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('104', 'Mostrar el fabricante del producto', 'PRODUCT_LIST_MANUFACTURER', '0', 'Deseas mostrar el fabricante del producto?', '8', '2', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('105', 'Mostrar el modelo del producto', 'PRODUCT_LIST_MODEL', '0', 'Deseas mostrar el modelo del producto?', '8', '3', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('106', 'Mostrar el nombre del producto', 'PRODUCT_LIST_NAME', '2', 'Deseas mostrar el nombre del producto?', '8', '4', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('107', 'Mostrar el precio del producto', 'PRODUCT_LIST_PRICE', '3', 'Deseas mostrar el nombre del producto?', '8', '5', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('108', 'Mostrar la cantidad por producto', 'PRODUCT_LIST_QUANTITY', '0', 'Deseas mostrar la cantidad por producto?', '8', '6', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('109', 'Mostrar peso del producto', 'PRODUCT_LIST_WEIGHT', '0', 'Deseas mostrar el peso del producto?', '8', '7', '2006-12-29 11:38:12', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('110', 'mostrar columna de COMPRA', 'PRODUCT_LIST_BUY_NOW', '4', 'Deseas mostrar la columna de COMPRA?', '8', '8', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('111', 'Mostrar filtrado por categoria/fabricante (0=disable; 1=enable)', 'PRODUCT_LIST_FILTER', '1', 'Deseas mostrar los productos por filtrado por categoria/fabricante?', '8', '9', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('112', 'Ubicación de la barra de navegacion (1-arriba, 2-abajo, 3-ambos)', 'PREV_NEXT_BAR_LOCATION', '3', 'cambiar la ubicación a (1-arriba, 2-abajo, 3-ambos)', '8', '10', '2006-12-28 19:27:16', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('113', 'Comprobar stock', 'STOCK_CHECK', 'true', 'Comprobar si hay disponibilidad de stock', '9', '1', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('114', 'Restar Stock', 'STOCK_LIMITED', 'true', 'Restar a stock los productos ordenados', '9', '2', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('115', 'Permitir comprar si no hay stock', 'STOCK_ALLOW_CHECKOUT', 'true', 'Permitir comprar al cliente aun si no existe stock', '9', '3', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('116', 'Marcar producto si no hay stock', 'STOCK_MARK_PRODUCT_OUT_OF_STOCK', '***', 'Mostrar un aviso si un producto no tiene suficiente stock', '9', '4', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('117', 'Stock Re-order level', 'STOCK_REORDER_LEVEL', '5', 'Define when stock needs to be re-ordered', '9', '5', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('118', 'Store Page Parse Time', 'STORE_PAGE_PARSE_TIME', 'false', 'Store the time it takes to parse a page', '10', '1', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('119', 'Log Destination', 'STORE_PAGE_PARSE_TIME_LOG', '/var/log/www/tep/page_parse_time.log', 'Directory and filename of the page parse time log', '10', '2', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('120', 'Log Date Format', 'STORE_PARSE_DATE_TIME_FORMAT', '%d/%m/%Y %H:%M:%S', 'The date format', '10', '3', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('121', 'Display The Page Parse Time', 'DISPLAY_PAGE_PARSE_TIME', 'true', 'Display the page parse time (store page parse time must be enabled)', '10', '4', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('122', 'Store Database Queries', 'STORE_DB_TRANSACTIONS', 'false', 'Store the database queries in the page parse time log (PHP4 only)', '10', '5', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('123', 'Use Cache', 'USE_CACHE', 'false', 'Use caching features', '11', '1', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('124', 'Cache Directory', 'DIR_FS_CACHE', '/tmp/', 'The directory where the cached files are saved', '11', '2', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('125', 'E-Mail Transport Method', 'EMAIL_TRANSPORT', 'sendmail', 'Defines if this server uses a local connection to sendmail or uses an SMTP connection via TCP/IP. Servers running on Windows and MacOS should change this setting to SMTP.', '12', '1', '2008-03-18 22:04:07', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'sendmail\', \'smtp\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('126', 'E-Mail Linefeeds', 'EMAIL_LINEFEED', 'LF', 'Defines the character sequence used to separate mail headers.', '12', '2', '2008-03-18 22:04:12', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'LF\', \'CRLF\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('127', 'Use MIME HTML When Sending Emails', 'EMAIL_USE_HTML', 'false', 'Send e-mails in HTML format', '12', '3', '2007-05-08 21:48:12', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('128', 'Verify E-Mail Addresses Through DNS', 'ENTRY_EMAIL_ADDRESS_CHECK', 'false', 'Verify e-mail address through a DNS server', '12', '4', '2007-04-19 02:33:37', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('129', 'Send E-Mails', 'SEND_EMAILS', 'true', 'Send out e-mails', '12', '5', '2007-05-08 21:31:16', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('130', 'Enable download', 'DOWNLOAD_ENABLED', 'false', 'Enable the products download functions.', '13', '1', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('131', 'Download by redirect', 'DOWNLOAD_BY_REDIRECT', 'false', 'Use browser redirection for download. Disable on non-Unix systems.', '13', '2', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('132', 'Expiry delay (days)', 'DOWNLOAD_MAX_DAYS', '7', 'Set number of days before the download link expires. 0 means no limit.', '13', '3', NULL, '2005-07-07 10:38:22', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('133', 'Maximum number of downloads', 'DOWNLOAD_MAX_COUNT', '5', 'Set the maximum number of downloads. 0 means no download authorized.', '13', '4', NULL, '2005-07-07 10:38:22', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('134', 'Enable GZip Compression', 'GZIP_COMPRESSION', 'false', 'Enable HTTP GZip compression.', '14', '1', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('135', 'Compression Level', 'GZIP_LEVEL', '5', 'Use this compression level 0-9 (0 = minimum, 9 = maximum).', '14', '2', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('136', 'Session Directory', 'SESSION_WRITE_DIRECTORY', '/tmp', 'If sessions are file based, store them in this directory.', '15', '1', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('137', 'Force Cookie Use', 'SESSION_FORCE_COOKIE_USE', 'True', 'Force the use of sessions when cookies are only enabled.', '15', '2', '2005-07-11 12:48:14', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('138', 'Check SSL Session ID', 'SESSION_CHECK_SSL_SESSION_ID', 'False', 'Validate the SSL_SESSION_ID on every secure HTTPS page request.', '15', '3', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('139', 'Check User Agent', 'SESSION_CHECK_USER_AGENT', 'False', 'Validate the clients browser user agent on every page request.', '15', '4', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('140', 'Check IP Address', 'SESSION_CHECK_IP_ADDRESS', 'False', 'Validate the clients IP address on every page request.', '15', '5', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('141', 'Prevent Spider Sessions', 'SESSION_BLOCK_SPIDERS', 'False', 'Prevent known spiders from starting a session.', '15', '6', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('142', 'Recreate Session', 'SESSION_RECREATE', 'False', 'Recreate the session to generate a new session ID when the customer logs on or creates an account (PHP >=4.1 needed).', '15', '7', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('143', 'Imagen Producto - Ancho', 'PRODUCT_IMAGE_WIDTH', '370', 'medida en pixeles', '4', NULL, '2006-12-01 12:52:09', '2006-12-01 12:48:06', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('144', 'Imagen Producto - Alto', 'PRODUCT_IMAGE_HEIGHT', '370', 'medida en pixeles', '4', NULL, '2009-09-16 13:33:08', '2006-12-01 12:48:35', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('157', 'PRODUCT DESCRIPTIONS use WYSIWYG HTMLAREA?', 'HTML_AREA_WYSIWYG_DISABLE', 'Disable', 'Enable/Disable WYSIWYG box', '112', '0', '2009-09-22 16:06:08', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(\'Enable\', \'Disable\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('162', 'Customer Email Basic/Advanced Version?', 'HTML_AREA_WYSIWYG_BASIC_EMAIL', 'Advanced', 'Basic Features FASTER<br>Advanced Features SLOWER', '112', '21', '2007-05-08 21:48:39', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(\'Basic\', \'Advanced\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('163', 'Customer Email Layout Width', 'EMAIL_AREA_WYSIWYG_WIDTH', '505', 'How WIDE should the HTMLAREA be in pixels (default: 505)', '112', '25', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('164', 'Customer Email Layout Height', 'EMAIL_AREA_WYSIWYG_HEIGHT', '140', 'How HIGH should the HTMLAREA be in pixels (default: 140)', '112', '29', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('165', 'NEWSLETTER EMAILS use WYSIWYG HTMLAREA?', 'HTML_AREA_WYSIWYG_DISABLE_NEWSLETTER', 'Enable', 'Use WYSIWYG Area in Email Newsletter', '112', '30', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(\'Enable\', \'Disable\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('166', 'Newsletter Email Basic/Advanced Version?', 'HTML_AREA_WYSIWYG_BASIC_NEWSLETTER', 'Basic', 'Basic Features FASTER<br>Advanced Features SLOWER', '112', '32', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(\'Basic\', \'Advanced\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('167', 'Newsletter Email Layout Width', 'NEWSLETTER_EMAIL_WYSIWYG_WIDTH', '505', 'How WIDE should the HTMLAREA be in pixels (default: 505)', '112', '35', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('168', 'Newsletter Email Layout Height', 'NEWSLETTER_EMAIL_WYSIWYG_HEIGHT', '140', 'How HIGH should the HTMLAREA be in pixels (default: 140)', '112', '39', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('169', 'DEFINE MAINPAGE use WYSIWYG HTMLAREA?', 'HTML_AREA_WYSIWYG_DISABLE_DEFINE', 'Enable', 'Use WYSIWYG Area in Define Mainpage', '112', '40', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(\'Enable\', \'Disable\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('170', 'Define Mainpage Basic/Advanced Version?', 'HTML_AREA_WYSIWYG_BASIC_DEFINE', 'Basic', 'Basic Features FASTER<br>Advanced Features SLOWER', '112', '41', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(\'Basic\', \'Advanced\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('171', 'Define Mainpage Layout Width', 'DEFINE_MAINPAGE_WYSIWYG_WIDTH', '605', 'How WIDE should the HTMLAREA be in pixels (default: 505)', '112', '42', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('172', 'Define Mainpage Layout Height', 'DEFINE_MAINPAGE_WYSIWYG_HEIGHT', '300', 'How HIGH should the HTMLAREA be in pixels (default: 140)', '112', '43', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('173', 'GLOBAL - User Interface Font Type', 'HTML_AREA_WYSIWYG_FONT_TYPE', 'Times New Roman', 'User Interface Font Type<br>(not saved to product description)', '112', '45', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(\'Arial\', \'Courier New\', \'Georgia\', \'Impact\', \'Tahoma\', \'Times New Roman\', \'Verdana\', \'Wingdings\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('174', 'GLOBAL - User Interface Font Size', 'HTML_AREA_WYSIWYG_FONT_SIZE', '12', 'User Interface Font Size (not saved to product description)<p><b>10 Equals 10 pt', '112', '50', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(\\\'8\\\', \\\'10\\\', \\\'12\\\', \\\'14\\\', \\\'18\\\', \\\'24\\\', \\\'36\\\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('175', 'GLOBAL - User Interface Font Colour', 'HTML_AREA_WYSIWYG_FONT_COLOUR', 'Black', 'White, Black, C0C0C0, Red, FFFFFF, Yellow, Pink, Blue, Gray, 000000, ect..<br>basically any colour or HTML colour code!<br>(not saved to product description)', '112', '55', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('176', 'GLOBAL - User Interface Background Colour', 'HTML_AREA_WYSIWYG_BG_COLOUR', 'White', 'White, Black, C0C0C0, Red, FFFFFF, Yellow, Pink, Blue, Gray, 000000, ect..<br>basically any colour or html colour code!<br>(not saved to product description)', '112', '60', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('177', 'GLOBAL - ALLOW DEBUG MODE?', 'HTML_AREA_WYSIWYG_DEBUG', '0', 'Moniter Live-html, It updates as you type in a 2nd field above it.<p>Disable Debug = 0<br>Enable Debug = 1<br>Default = 0 OFF', '112', '65', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(\'0\', \'1\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('178', 'PRODUCT DESCRIPTIONS use WYSIWYG HTMLAREA?', 'HTML_AREA_WYSIWYG_DISABLE', 'Disable', 'Enable/Disable WYSIWYG box', '112', '0', '2009-09-22 16:06:14', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(\'Enable\', \'Disable\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('179', 'Product Description Basic/Advanced Version?', 'HTML_AREA_WYSIWYG_BASIC_PD', 'Basic', 'Basic Features FASTER<br>Advanced Features SLOWER', '112', '10', '2008-04-21 15:39:17', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(\'Basic\', \'Advanced\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('180', 'Product Description Layout Width', 'HTML_AREA_WYSIWYG_WIDTH', '505', 'How WIDE should the HTMLAREA be in pixels (default: 505)', '112', '15', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('181', 'Product Description Layout Height', 'HTML_AREA_WYSIWYG_HEIGHT', '240', 'How HIGH should the HTMLAREA be in pixels (default: 240)', '112', '19', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('182', 'CUSTOMER EMAILS use WYSIWYG HTMLAREA?', 'HTML_AREA_WYSIWYG_DISABLE_EMAIL', 'Enable', 'Use WYSIWYG Area in Email Customers', '112', '20', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(\'Enable\', \'Disable\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('183', 'Customer Email Basic/Advanced Version?', 'HTML_AREA_WYSIWYG_BASIC_EMAIL', 'Advanced', 'Basic Features FASTER<br>Advanced Features SLOWER', '112', '21', '2007-05-08 21:39:02', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(\'Basic\', \'Advanced\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('184', 'Customer Email Layout Width', 'EMAIL_AREA_WYSIWYG_WIDTH', '505', 'How WIDE should the HTMLAREA be in pixels (default: 505)', '112', '25', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('185', 'Customer Email Layout Height', 'EMAIL_AREA_WYSIWYG_HEIGHT', '140', 'How HIGH should the HTMLAREA be in pixels (default: 140)', '112', '29', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('186', 'NEWSLETTER EMAILS use WYSIWYG HTMLAREA?', 'HTML_AREA_WYSIWYG_DISABLE_NEWSLETTER', 'Enable', 'Use WYSIWYG Area in Email Newsletter', '112', '30', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(\'Enable\', \'Disable\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('187', 'Newsletter Email Basic/Advanced Version?', 'HTML_AREA_WYSIWYG_BASIC_NEWSLETTER', 'Basic', 'Basic Features FASTER<br>Advanced Features SLOWER', '112', '32', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(\'Basic\', \'Advanced\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('188', 'Newsletter Email Layout Width', 'NEWSLETTER_EMAIL_WYSIWYG_WIDTH', '505', 'How WIDE should the HTMLAREA be in pixels (default: 505)', '112', '35', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('189', 'Newsletter Email Layout Height', 'NEWSLETTER_EMAIL_WYSIWYG_HEIGHT', '140', 'How HIGH should the HTMLAREA be in pixels (default: 140)', '112', '39', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('190', 'DEFINE MAINPAGE use WYSIWYG HTMLAREA?', 'HTML_AREA_WYSIWYG_DISABLE_DEFINE', 'Enable', 'Use WYSIWYG Area in Define Mainpage', '112', '40', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(\'Enable\', \'Disable\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('191', 'Define Mainpage Basic/Advanced Version?', 'HTML_AREA_WYSIWYG_BASIC_DEFINE', 'Basic', 'Basic Features FASTER<br>Advanced Features SLOWER', '112', '41', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(\'Basic\', \'Advanced\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('192', 'Define Mainpage Layout Width', 'DEFINE_MAINPAGE_WYSIWYG_WIDTH', '605', 'How WIDE should the HTMLAREA be in pixels (default: 505)', '112', '42', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('193', 'Define Mainpage Layout Height', 'DEFINE_MAINPAGE_WYSIWYG_HEIGHT', '300', 'How HIGH should the HTMLAREA be in pixels (default: 140)', '112', '43', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('194', 'GLOBAL - User Interface Font Type', 'HTML_AREA_WYSIWYG_FONT_TYPE', 'Times New Roman', 'User Interface Font Type<br>(not saved to product description)', '112', '45', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(\'Arial\', \'Courier New\', \'Georgia\', \'Impact\', \'Tahoma\', \'Times New Roman\', \'Verdana\', \'Wingdings\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('195', 'GLOBAL - User Interface Font Size', 'HTML_AREA_WYSIWYG_FONT_SIZE', '12', 'User Interface Font Size (not saved to product description)<p><b>10 Equals 10 pt', '112', '50', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(\\\'8\\\', \\\'10\\\', \\\'12\\\', \\\'14\\\', \\\'18\\\', \\\'24\\\', \\\'36\\\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('196', 'GLOBAL - User Interface Font Colour', 'HTML_AREA_WYSIWYG_FONT_COLOUR', 'Black', 'White, Black, C0C0C0, Red, FFFFFF, Yellow, Pink, Blue, Gray, 000000, ect..<br>basically any colour or HTML colour code!<br>(not saved to product description)', '112', '55', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('197', 'GLOBAL - User Interface Background Colour', 'HTML_AREA_WYSIWYG_BG_COLOUR', 'White', 'White, Black, C0C0C0, Red, FFFFFF, Yellow, Pink, Blue, Gray, 000000, ect..<br>basically any colour or html colour code!<br>(not saved to product description)', '112', '60', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('198', 'GLOBAL - ALLOW DEBUG MODE?', 'HTML_AREA_WYSIWYG_DEBUG', '0', 'Moniter Live-html, It updates as you type in a 2nd field above it.<p>Disable Debug = 0<br>Enable Debug = 1<br>Default = 0 OFF', '112', '65', '2007-01-03 10:54:22', '2007-01-03 10:54:22', NULL, 'tep_cfg_select_option(array(\'0\', \'1\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('222', 'Enable PayPal Module', 'MODULE_PAYMENT_PAYPAL_STATUS', 'True', 'Do you want to accept PayPal payments?', '6', '3', NULL, '2008-02-06 19:00:52', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('223', 'E-Mail Address', 'MODULE_PAYMENT_PAYPAL_ID', 'order@apolomultimedia.com', 'The e-mail address to use for the PayPal service', '6', '4', NULL, '2008-02-06 19:00:52', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('224', 'Transaction Currency', 'MODULE_PAYMENT_PAYPAL_CURRENCY', 'Selected Currency', 'The currency to use for credit card transactions', '6', '6', NULL, '2008-02-06 19:00:52', NULL, 'tep_cfg_select_option(array(\'Selected Currency\',\'Only USD\',\'Only CAD\',\'Only EUR\',\'Only GBP\',\'Only JPY\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('225', 'Sort order of display.', 'MODULE_PAYMENT_PAYPAL_SORT_ORDER', '1', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2008-02-06 19:00:52', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('226', 'Payment Zone', 'MODULE_PAYMENT_PAYPAL_ZONE', '4', 'If a zone is selected, only enable this payment method for that zone.', '6', '2', NULL, '2008-02-06 19:00:52', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('227', 'Set Order Status', 'MODULE_PAYMENT_PAYPAL_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', '6', '0', NULL, '2008-02-06 19:00:52', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('228', 'Mostrar imagenes adicionales en product info', 'DISPLAY_EXTRA_IMAGES', 'true', 'mostrar imagenes adicionales', '1', '87', '2005-11-17 17:20:36', '2005-10-20 17:40:05', '', 'tep_cfg_select_option(array(\'false\', \'true\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('382', 'Last Database Restore', 'DB_LAST_RESTORE', 'db_casahoy_database-20081015084704.sql', 'Last database restore file', '6', '0', '0000-00-00 00:00:00', '2009-01-07 11:11:31', '', '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('504', 'Sort Order', 'MODULE_SHIPPING_FEDEX_SORT_ORDER', '0', 'Sort order of display.', '6', '0', NULL, '2010-01-28 17:24:44', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('503', 'FedEx Meter Number', 'MODULE_SHIPPING_FEDEX_METER_NUM', '118506029', 'Enter FedEx Meter Number', '6', '0', NULL, '2010-01-28 17:24:44', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('502', 'FedEx Account Number', 'MODULE_SHIPPING_FEDEX_ACT_NUM', '510087941', 'Enter FedEx Account Number', '6', '0', NULL, '2010-01-28 17:24:44', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('501', 'FedEx Password', 'MODULE_SHIPPING_FEDEX_PWD', 'gOsLKlkAZsw2XW01yrqZi1GXR', 'Enter FedEx Password', '6', '0', NULL, '2010-01-28 17:24:44', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('500', 'FedEx Key', 'MODULE_SHIPPING_FEDEX_KEY', 'LC1ex9QP6w07deS8', 'Enter FedEx Key', '6', '0', NULL, '2010-01-28 17:24:44', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('327', 'Enable Check/Money Order Module', 'MODULE_PAYMENT_MONEYORDER_STATUS', 'True', 'Do you want to accept Check/Money Order payments?', '6', '1', NULL, '2008-05-12 20:54:40', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('328', 'Make Payable to:', 'MODULE_PAYMENT_MONEYORDER_PAYTO', 'APOLOMULTIMEDIA S.A.C.<br><br>Wells Fargo<br>checking account :9397618936<br>', 'Who should payments be made payable to?', '6', '1', NULL, '2008-05-12 20:54:40', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('329', 'Sort order of display.', 'MODULE_PAYMENT_MONEYORDER_SORT_ORDER', '2', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2008-05-12 20:54:40', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('330', 'Payment Zone', 'MODULE_PAYMENT_MONEYORDER_ZONE', '4', 'If a zone is selected, only enable this payment method for that zone.', '6', '2', NULL, '2008-05-12 20:54:40', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('331', 'Set Order Status', 'MODULE_PAYMENT_MONEYORDER_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', '6', '0', NULL, '2008-05-12 20:54:40', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('341', 'Enable Cash On Delivery Module', 'MODULE_PAYMENT_COD_STATUS', 'True', 'Do you want to accept Cash On Delevery payments?', '6', '1', NULL, '2008-05-13 18:43:28', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('383', 'Time Zone Offset', 'TIME_ZONE_OFFSET', '+7', 'The time zone difference between your store and the server. Enter +h, 0 or -h where \'h\' is the number of hours. If your store time zone is ahead of the server time zone, use +', '1', '7', '2009-01-07 14:44:00', '0001-01-01 00:00:00', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('384', 'Display Product Dimensions', 'PRODUCT_LIST_DIMENSIONS', '1', 'Do you want to display the Product Dimensions ?(0-No, 1-Yes)', '8', '11', '2009-09-23 18:02:51', '2009-09-23 17:48:19', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('505', 'Installed Modules', '', '', 'This is automatically updated. No need to edit.', '6', '0', NULL, '2010-03-26 19:21:30', NULL, NULL);
drop table if exists configuration_group;
create table configuration_group (
  configuration_group_id int(11) not null auto_increment,
  configuration_group_title varchar(64) not null ,
  configuration_group_description varchar(255) not null ,
  sort_order int(5) ,
  visible int(1) default '1' ,
  PRIMARY KEY (configuration_group_id)
);

insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('1', 'Tienda', 'Información General de la Tienda', '1', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('2', 'Valores Mínimos', 'Valores mínimos por funciones', '2', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('3', 'Valores Máximos', 'Valores máximos por funciones', '3', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('4', 'Imágenes', 'Parametros de Imagen', '4', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('5', 'Detalles del Cliente', 'Configuración de la cuenta del cliente', '5', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('6', 'Optiones de Módulo', 'Hidden from configuration', '6', '0');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('7', 'Envio / Empaque', 'Opciones Disponibles de Envio', '7', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('8', 'Listado de Productos', 'Configuración de las opciones del listado de productos', '8', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('9', 'Stock', 'Opcions de configuración de stock', '9', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('10', 'Logging', 'Opcions de configuración de Logging', '10', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('11', 'Cache', 'Opcions de configuración de Cache', '11', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('12', 'Opciones de E-Mail', 'Configuración de E-mail', '12', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('13', 'Descarga', 'Opciones de los productos descargables', '13', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('14', 'Compresión GZip', 'Opciones de la compresión GZip', '14', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('15', 'Sesiones', 'Opciones de Sesión', '15', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('112', 'WYSIWYG Editor 1.6', 'Opciones de HTMLArea 1.6', '15', '1');
drop table if exists counter;
create table counter (
  startdate char(8) ,
  counter int(12) 
);

insert into counter (startdate, counter) values ('20050707', '656793');
drop table if exists counter_history;
create table counter_history (
  month char(8) ,
  counter int(12) 
);

drop table if exists countries;
create table countries (
  countries_id int(11) not null auto_increment,
  countries_name varchar(64) not null ,
  countries_iso_code_2 varchar(2) not null ,
  countries_iso_code_3 varchar(3) not null ,
  address_format_id int(11) default '0' not null ,
  PRIMARY KEY (countries_id),
  KEY IDX_COUNTRIES_NAME (countries_name)
);

insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('1', 'Afghanistan', 'AF', 'AFG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('2', 'Albania', 'AL', 'ALB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('3', 'Algeria', 'DZ', 'DZA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('4', 'American Samoa', 'AS', 'ASM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('5', 'Andorra', 'AD', 'AND', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('6', 'Angola', 'AO', 'AGO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('7', 'Anguilla', 'AI', 'AIA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('8', 'Antarctica', 'AQ', 'ATA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('9', 'Antigua and Barbuda', 'AG', 'ATG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('10', 'Argentina', 'AR', 'ARG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('11', 'Armenia', 'AM', 'ARM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('12', 'Aruba', 'AW', 'ABW', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('13', 'Australia', 'AU', 'AUS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('14', 'Austria', 'AT', 'AUT', '5');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('15', 'Azerbaijan', 'AZ', 'AZE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('16', 'Bahamas', 'BS', 'BHS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('17', 'Bahrain', 'BH', 'BHR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('18', 'Bangladesh', 'BD', 'BGD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('19', 'Barbados', 'BB', 'BRB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('20', 'Belarus', 'BY', 'BLR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('21', 'Belgium', 'BE', 'BEL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('22', 'Belize', 'BZ', 'BLZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('23', 'Benin', 'BJ', 'BEN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('24', 'Bermuda', 'BM', 'BMU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('25', 'Bhutan', 'BT', 'BTN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('26', 'Bolivia', 'BO', 'BOL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('27', 'Bosnia and Herzegowina', 'BA', 'BIH', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('28', 'Botswana', 'BW', 'BWA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('29', 'Bouvet Island', 'BV', 'BVT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('30', 'Brazil', 'BR', 'BRA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('31', 'British Indian Ocean Territory', 'IO', 'IOT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('32', 'Brunei Darussalam', 'BN', 'BRN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('33', 'Bulgaria', 'BG', 'BGR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('34', 'Burkina Faso', 'BF', 'BFA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('35', 'Burundi', 'BI', 'BDI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('36', 'Cambodia', 'KH', 'KHM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('37', 'Cameroon', 'CM', 'CMR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('38', 'Canada', 'CA', 'CAN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('39', 'Cape Verde', 'CV', 'CPV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('40', 'Cayman Islands', 'KY', 'CYM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('41', 'Central African Republic', 'CF', 'CAF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('42', 'Chad', 'TD', 'TCD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('43', 'Chile', 'CL', 'CHL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('44', 'China', 'CN', 'CHN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('45', 'Christmas Island', 'CX', 'CXR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('46', 'Cocos (Keeling) Islands', 'CC', 'CCK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('47', 'Colombia', 'CO', 'COL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('48', 'Comoros', 'KM', 'COM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('49', 'Congo', 'CG', 'COG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('50', 'Cook Islands', 'CK', 'COK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('51', 'Costa Rica', 'CR', 'CRI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('52', 'Cote D\'Ivoire', 'CI', 'CIV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('53', 'Croatia', 'HR', 'HRV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('54', 'Cuba', 'CU', 'CUB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('55', 'Cyprus', 'CY', 'CYP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('56', 'Czech Republic', 'CZ', 'CZE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('57', 'Denmark', 'DK', 'DNK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('58', 'Djibouti', 'DJ', 'DJI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('59', 'Dominica', 'DM', 'DMA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('60', 'Dominican Republic', 'DO', 'DOM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('61', 'East Timor', 'TP', 'TMP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('62', 'Ecuador', 'EC', 'ECU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('63', 'Egypt', 'EG', 'EGY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('64', 'El Salvador', 'SV', 'SLV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('65', 'Equatorial Guinea', 'GQ', 'GNQ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('66', 'Eritrea', 'ER', 'ERI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('67', 'Estonia', 'EE', 'EST', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('68', 'Ethiopia', 'ET', 'ETH', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('69', 'Falkland Islands (Malvinas)', 'FK', 'FLK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('70', 'Faroe Islands', 'FO', 'FRO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('71', 'Fiji', 'FJ', 'FJI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('72', 'Finland', 'FI', 'FIN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('73', 'France', 'FR', 'FRA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('74', 'France, Metropolitan', 'FX', 'FXX', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('75', 'French Guiana', 'GF', 'GUF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('76', 'French Polynesia', 'PF', 'PYF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('77', 'French Southern Territories', 'TF', 'ATF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('78', 'Gabon', 'GA', 'GAB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('79', 'Gambia', 'GM', 'GMB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('80', 'Georgia', 'GE', 'GEO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('81', 'Germany', 'DE', 'DEU', '5');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('82', 'Ghana', 'GH', 'GHA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('83', 'Gibraltar', 'GI', 'GIB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('84', 'Greece', 'GR', 'GRC', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('85', 'Greenland', 'GL', 'GRL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('86', 'Grenada', 'GD', 'GRD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('87', 'Guadeloupe', 'GP', 'GLP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('88', 'Guam', 'GU', 'GUM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('89', 'Guatemala', 'GT', 'GTM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('90', 'Guinea', 'GN', 'GIN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('91', 'Guinea-bissau', 'GW', 'GNB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('92', 'Guyana', 'GY', 'GUY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('93', 'Haiti', 'HT', 'HTI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('94', 'Heard and Mc Donald Islands', 'HM', 'HMD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('95', 'Honduras', 'HN', 'HND', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('96', 'Hong Kong', 'HK', 'HKG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('97', 'Hungary', 'HU', 'HUN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('98', 'Iceland', 'IS', 'ISL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('99', 'India', 'IN', 'IND', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('100', 'Indonesia', 'ID', 'IDN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('101', 'Iran (Islamic Republic of)', 'IR', 'IRN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('102', 'Iraq', 'IQ', 'IRQ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('103', 'Ireland', 'IE', 'IRL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('104', 'Israel', 'IL', 'ISR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('105', 'Italy', 'IT', 'ITA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('106', 'Jamaica', 'JM', 'JAM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('107', 'Japan', 'JP', 'JPN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('108', 'Jordan', 'JO', 'JOR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('109', 'Kazakhstan', 'KZ', 'KAZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('110', 'Kenya', 'KE', 'KEN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('111', 'Kiribati', 'KI', 'KIR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('112', 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('113', 'Korea, Republic of', 'KR', 'KOR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('114', 'Kuwait', 'KW', 'KWT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('115', 'Kyrgyzstan', 'KG', 'KGZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('116', 'Lao People\'s Democratic Republic', 'LA', 'LAO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('117', 'Latvia', 'LV', 'LVA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('118', 'Lebanon', 'LB', 'LBN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('119', 'Lesotho', 'LS', 'LSO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('120', 'Liberia', 'LR', 'LBR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('121', 'Libyan Arab Jamahiriya', 'LY', 'LBY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('122', 'Liechtenstein', 'LI', 'LIE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('123', 'Lithuania', 'LT', 'LTU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('124', 'Luxembourg', 'LU', 'LUX', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('125', 'Macau', 'MO', 'MAC', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('126', 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('127', 'Madagascar', 'MG', 'MDG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('128', 'Malawi', 'MW', 'MWI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('129', 'Malaysia', 'MY', 'MYS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('130', 'Maldives', 'MV', 'MDV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('131', 'Mali', 'ML', 'MLI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('132', 'Malta', 'MT', 'MLT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('133', 'Marshall Islands', 'MH', 'MHL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('134', 'Martinique', 'MQ', 'MTQ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('135', 'Mauritania', 'MR', 'MRT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('136', 'Mauritius', 'MU', 'MUS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('137', 'Mayotte', 'YT', 'MYT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('138', 'Mexico', 'MX', 'MEX', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('139', 'Micronesia, Federated States of', 'FM', 'FSM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('140', 'Moldova, Republic of', 'MD', 'MDA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('141', 'Monaco', 'MC', 'MCO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('142', 'Mongolia', 'MN', 'MNG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('143', 'Montserrat', 'MS', 'MSR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('144', 'Morocco', 'MA', 'MAR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('145', 'Mozambique', 'MZ', 'MOZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('146', 'Myanmar', 'MM', 'MMR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('147', 'Namibia', 'NA', 'NAM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('148', 'Nauru', 'NR', 'NRU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('149', 'Nepal', 'NP', 'NPL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('150', 'Netherlands', 'NL', 'NLD', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('151', 'Netherlands Antilles', 'AN', 'ANT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('152', 'New Caledonia', 'NC', 'NCL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('153', 'New Zealand', 'NZ', 'NZL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('154', 'Nicaragua', 'NI', 'NIC', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('155', 'Niger', 'NE', 'NER', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('156', 'Nigeria', 'NG', 'NGA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('157', 'Niue', 'NU', 'NIU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('158', 'Norfolk Island', 'NF', 'NFK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('159', 'Northern Mariana Islands', 'MP', 'MNP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('160', 'Norway', 'NO', 'NOR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('161', 'Oman', 'OM', 'OMN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('162', 'Pakistan', 'PK', 'PAK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('163', 'Palau', 'PW', 'PLW', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('164', 'Panama', 'PA', 'PAN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('165', 'Papua New Guinea', 'PG', 'PNG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('166', 'Paraguay', 'PY', 'PRY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('167', 'Peru', 'PE', 'PER', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('168', 'Philippines', 'PH', 'PHL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('169', 'Pitcairn', 'PN', 'PCN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('170', 'Poland', 'PL', 'POL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('171', 'Portugal', 'PT', 'PRT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('172', 'Puerto Rico', 'PR', 'PRI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('173', 'Qatar', 'QA', 'QAT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('174', 'Reunion', 'RE', 'REU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('175', 'Romania', 'RO', 'ROM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('176', 'Russian Federation', 'RU', 'RUS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('177', 'Rwanda', 'RW', 'RWA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('178', 'Saint Kitts and Nevis', 'KN', 'KNA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('179', 'Saint Lucia', 'LC', 'LCA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('180', 'Saint Vincent and the Grenadines', 'VC', 'VCT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('181', 'Samoa', 'WS', 'WSM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('182', 'San Marino', 'SM', 'SMR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('183', 'Sao Tome and Principe', 'ST', 'STP', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('184', 'Saudi Arabia', 'SA', 'SAU', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('185', 'Senegal', 'SN', 'SEN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('186', 'Seychelles', 'SC', 'SYC', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('187', 'Sierra Leone', 'SL', 'SLE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('188', 'Singapore', 'SG', 'SGP', '4');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('189', 'Slovakia (Slovak Republic)', 'SK', 'SVK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('190', 'Slovenia', 'SI', 'SVN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('191', 'Solomon Islands', 'SB', 'SLB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('192', 'Somalia', 'SO', 'SOM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('193', 'South Africa', 'ZA', 'ZAF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('194', 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('195', 'Spain', 'ES', 'ESP', '3');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('196', 'Sri Lanka', 'LK', 'LKA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('197', 'St. Helena', 'SH', 'SHN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('198', 'St. Pierre and Miquelon', 'PM', 'SPM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('199', 'Sudan', 'SD', 'SDN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('200', 'Suriname', 'SR', 'SUR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('201', 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('202', 'Swaziland', 'SZ', 'SWZ', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('203', 'Sweden', 'SE', 'SWE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('204', 'Switzerland', 'CH', 'CHE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('205', 'Syrian Arab Republic', 'SY', 'SYR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('206', 'Taiwan', 'TW', 'TWN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('207', 'Tajikistan', 'TJ', 'TJK', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('208', 'Tanzania, United Republic of', 'TZ', 'TZA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('209', 'Thailand', 'TH', 'THA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('210', 'Togo', 'TG', 'TGO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('211', 'Tokelau', 'TK', 'TKL', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('212', 'Tonga', 'TO', 'TON', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('213', 'Trinidad and Tobago', 'TT', 'TTO', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('214', 'Tunisia', 'TN', 'TUN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('215', 'Turkey', 'TR', 'TUR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('216', 'Turkmenistan', 'TM', 'TKM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('217', 'Turks and Caicos Islands', 'TC', 'TCA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('218', 'Tuvalu', 'TV', 'TUV', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('219', 'Uganda', 'UG', 'UGA', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('220', 'Ukraine', 'UA', 'UKR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('221', 'United Arab Emirates', 'AE', 'ARE', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('222', 'United Kingdom', 'GB', 'GBR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('223', 'United States', 'US', 'USA', '2');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('224', 'United States Minor Outlying Islands', 'UM', 'UMI', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('225', 'Uruguay', 'UY', 'URY', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('226', 'Uzbekistan', 'UZ', 'UZB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('227', 'Vanuatu', 'VU', 'VUT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('228', 'Vatican City State (Holy See)', 'VA', 'VAT', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('229', 'Venezuela', 'VE', 'VEN', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('230', 'Viet Nam', 'VN', 'VNM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('231', 'Virgin Islands (British)', 'VG', 'VGB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('232', 'Virgin Islands (U.S.)', 'VI', 'VIR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('233', 'Wallis and Futuna Islands', 'WF', 'WLF', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('234', 'Western Sahara', 'EH', 'ESH', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('235', 'Yemen', 'YE', 'YEM', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('236', 'Yugoslavia', 'YU', 'YUG', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('237', 'Zaire', 'ZR', 'ZAR', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('238', 'Zambia', 'ZM', 'ZMB', '1');
insert into countries (countries_id, countries_name, countries_iso_code_2, countries_iso_code_3, address_format_id) values ('239', 'Zimbabwe', 'ZW', 'ZWE', '1');
drop table if exists currencies;
create table currencies (
  currencies_id int(11) not null auto_increment,
  title varchar(32) not null ,
  code varchar(3) not null ,
  symbol_left varchar(12) ,
  symbol_right varchar(12) ,
  decimal_point char(1) ,
  thousands_point char(1) ,
  decimal_places char(1) ,
  value float(13,8) ,
  last_updated datetime ,
  PRIMARY KEY (currencies_id)
);

insert into currencies (currencies_id, title, code, symbol_left, symbol_right, decimal_point, thousands_point, decimal_places, value, last_updated) values ('2', 'Euro', 'EUR', '', 'EUR', '.', ',', '2', '1.00000000', '2005-07-07 10:38:23');
insert into currencies (currencies_id, title, code, symbol_left, symbol_right, decimal_point, thousands_point, decimal_places, value, last_updated) values ('1', 'US Dollar', 'USD', '$', '', '.', '', '2', '1.00000000', '2005-07-07 10:38:23');
drop table if exists customers;
create table customers (
  customers_id int(11) not null auto_increment,
  customers_gender char(1) not null ,
  customers_firstname varchar(32) not null ,
  customers_lastname varchar(32) not null ,
  customers_dob datetime default '0000-00-00 00:00:00' not null ,
  customers_email_address varchar(96) not null ,
  customers_default_address_id int(11) default '0' not null ,
  customers_telephone varchar(32) not null ,
  customers_fax varchar(32) ,
  customers_password varchar(40) not null ,
  customers_newsletter char(1) ,
  customers_group_id smallint(5) unsigned default '0' not null ,
  customers_group_ra enum('0','1') default '0' not null ,
  customers_payment_allowed varchar(255) not null ,
  customers_shipment_allowed varchar(255) not null ,
  PRIMARY KEY (customers_id)
);

insert into customers (customers_id, customers_gender, customers_firstname, customers_lastname, customers_dob, customers_email_address, customers_default_address_id, customers_telephone, customers_fax, customers_password, customers_newsletter, customers_group_id, customers_group_ra, customers_payment_allowed, customers_shipment_allowed) values ('234', 'm', 'Taylor', 'Smith', '1975-12-12 00:00:00', 'gastoncarozi@hotmail.com', '247', '999999999', '', 'b40e1b7c991316a0f6015201de372271:39', '1', '1', '0', '', '');
drop table if exists customers_basket;
create table customers_basket (
  customers_basket_id int(11) not null auto_increment,
  customers_id int(11) default '0' not null ,
  products_id tinytext not null ,
  customers_basket_quantity int(2) default '0' not null ,
  final_price decimal(15,4) default '0.0000' not null ,
  customers_basket_date_added varchar(8) ,
  PRIMARY KEY (customers_basket_id)
);

drop table if exists customers_basket_attributes;
create table customers_basket_attributes (
  customers_basket_attributes_id int(11) not null auto_increment,
  customers_id int(11) default '0' not null ,
  products_id tinytext not null ,
  products_options_id int(11) default '0' not null ,
  products_options_value_id int(11) default '0' not null ,
  products_options_value_text text ,
  PRIMARY KEY (customers_basket_attributes_id)
);

drop table if exists customers_groups;
create table customers_groups (
  customers_group_id smallint(5) unsigned default '0' not null ,
  customers_group_name varchar(32) not null ,
  customers_group_show_tax enum('1','0') default '1' not null ,
  customers_group_tax_exempt enum('0','1') default '0' not null ,
  group_payment_allowed varchar(255) not null ,
  group_shipment_allowed varchar(255) not null ,
  PRIMARY KEY (customers_group_id)
);

insert into customers_groups (customers_group_id, customers_group_name, customers_group_show_tax, customers_group_tax_exempt, group_payment_allowed, group_shipment_allowed) values ('3', 'Empresa', '0', '1', 'moneyorder.php;paypal.php', 'flat.php;flat2.php');
insert into customers_groups (customers_group_id, customers_group_name, customers_group_show_tax, customers_group_tax_exempt, group_payment_allowed, group_shipment_allowed) values ('1', 'Particular', '1', '1', '', '');
insert into customers_groups (customers_group_id, customers_group_name, customers_group_show_tax, customers_group_tax_exempt, group_payment_allowed, group_shipment_allowed) values ('2', 'Tienda', '0', '1', 'moneyorder.php;paypal.php', 'flat.php;flat2.php');
drop table if exists customers_groups_tax_rates_exempt;
create table customers_groups_tax_rates_exempt (
  customers_group_id int(11) default '0' not null ,
  tax_rates_id int(11) default '0' not null ,
  PRIMARY KEY (customers_group_id, tax_rates_id)
);

insert into customers_groups_tax_rates_exempt (customers_group_id, tax_rates_id) values ('1', '8');
insert into customers_groups_tax_rates_exempt (customers_group_id, tax_rates_id) values ('2', '5');
insert into customers_groups_tax_rates_exempt (customers_group_id, tax_rates_id) values ('3', '8');
drop table if exists customers_info;
create table customers_info (
  customers_info_id int(11) default '0' not null ,
  customers_info_date_of_last_logon datetime ,
  customers_info_number_of_logons int(5) ,
  customers_info_date_account_created datetime ,
  customers_info_date_account_last_modified datetime ,
  global_product_notifications int(1) default '0' ,
  PRIMARY KEY (customers_info_id)
);

insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications) values ('30', NULL, '0', '2008-05-06 11:59:27', '2008-05-06 12:37:07', '0');
insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications) values ('32', NULL, '0', '2008-05-06 12:13:33', '2008-05-06 13:51:42', '0');
insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications) values ('33', '2008-05-06 14:35:47', '1', '2008-05-06 12:38:17', '2008-05-06 13:37:50', '0');
insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications) values ('234', '2010-05-06 10:44:31', '38', '2009-01-07 14:25:49', '2009-09-22 13:24:53', '0');
drop table if exists customers_newsletters;
create table customers_newsletters (
  id_customers_newsletters int(11) not null auto_increment,
  email_customers_newsletters varchar(255) not null ,
  name_customers_newsletters varchar(255) not null ,
  PRIMARY KEY (id_customers_newsletters)
);

drop table if exists geo_zones;
create table geo_zones (
  geo_zone_id int(11) not null auto_increment,
  geo_zone_name varchar(32) not null ,
  geo_zone_description varchar(255) not null ,
  last_modified datetime ,
  date_added datetime default '0000-00-00 00:00:00' not null ,
  PRIMARY KEY (geo_zone_id)
);

insert into geo_zones (geo_zone_id, geo_zone_name, geo_zone_description, last_modified, date_added) values ('1', 'España', '', '2008-03-11 01:11:23', '2005-07-07 10:38:23');
insert into geo_zones (geo_zone_id, geo_zone_name, geo_zone_description, last_modified, date_added) values ('2', 'Internacional', '', '2008-03-11 06:26:13', '2008-03-11 01:08:25');
insert into geo_zones (geo_zone_id, geo_zone_name, geo_zone_description, last_modified, date_added) values ('3', 'España lejana', '', NULL, '2008-03-11 06:26:58');
insert into geo_zones (geo_zone_id, geo_zone_name, geo_zone_description, last_modified, date_added) values ('4', 'todo el mundo', 'todo el mundo', NULL, '2008-03-11 21:37:41');
drop table if exists google_checkout;
create table google_checkout (
  customers_id int(11) ,
  buyer_id bigint(20) 
);

drop table if exists google_orders;
create table google_orders (
  orders_id int(11) ,
  google_order_number bigint(20) ,
  order_amount decimal(15,4) 
);

drop table if exists languages;
create table languages (
  languages_id int(11) not null auto_increment,
  name varchar(32) not null ,
  code varchar(2) not null ,
  image varchar(64) ,
  directory varchar(32) ,
  sort_order int(3) ,
  PRIMARY KEY (languages_id),
  KEY IDX_LANGUAGES_NAME (name)
);

insert into languages (languages_id, name, code, image, directory, sort_order) values ('2', 'Español', 'es', 'icon.gif', 'espanol', '2');
insert into languages (languages_id, name, code, image, directory, sort_order) values ('1', 'English', 'en', 'icon.gif', 'english', '1');
drop table if exists manufacturers;
create table manufacturers (
  manufacturers_id int(11) not null auto_increment,
  manufacturers_name varchar(32) not null ,
  manufacturers_image varchar(64) ,
  date_added datetime ,
  last_modified datetime ,
  PRIMARY KEY (manufacturers_id),
  KEY IDX_MANUFACTURERS_NAME (manufacturers_name)
);

drop table if exists manufacturers_info;
create table manufacturers_info (
  manufacturers_id int(11) default '0' not null ,
  languages_id int(11) default '0' not null ,
  manufacturers_url varchar(255) not null ,
  url_clicked int(5) default '0' not null ,
  date_last_click datetime ,
  PRIMARY KEY (manufacturers_id, languages_id)
);

drop table if exists newsletters;
create table newsletters (
  newsletters_id int(11) not null auto_increment,
  title varchar(255) not null ,
  image varchar(200) ,
  content text not null ,
  module varchar(255) not null ,
  date_added datetime default '0000-00-00 00:00:00' not null ,
  date_sent datetime ,
  status int(1) ,
  locked int(1) default '0' ,
  PRIMARY KEY (newsletters_id)
);

insert into newsletters (newsletters_id, title, image, content, module, date_added, date_sent, status, locked) values ('2', 'testing', 'celphone pantalla.png', '<p>testing..88</p>', 'newsletter', '2009-09-16 18:46:55', '2009-09-16 13:00:20', '1', '1');
drop table if exists orders;
create table orders (
  orders_id int(11) not null auto_increment,
  customers_id int(11) default '0' not null ,
  customers_name varchar(64) not null ,
  customers_company varchar(32) ,
  customers_street_address varchar(64) not null ,
  customers_suburb varchar(32) ,
  customers_city varchar(32) not null ,
  customers_postcode varchar(10) not null ,
  customers_state varchar(32) ,
  customers_country varchar(32) not null ,
  customers_telephone varchar(32) not null ,
  customers_email_address varchar(96) not null ,
  customers_address_format_id int(5) default '0' not null ,
  delivery_name varchar(64) not null ,
  delivery_company varchar(32) ,
  delivery_street_address varchar(64) not null ,
  delivery_suburb varchar(32) ,
  delivery_city varchar(32) not null ,
  delivery_postcode varchar(10) not null ,
  delivery_state varchar(32) ,
  delivery_country varchar(32) not null ,
  delivery_address_format_id int(5) default '0' not null ,
  billing_name varchar(64) not null ,
  billing_company varchar(32) ,
  billing_street_address varchar(64) not null ,
  billing_suburb varchar(32) ,
  billing_city varchar(32) not null ,
  billing_postcode varchar(10) not null ,
  billing_state varchar(32) ,
  billing_country varchar(32) not null ,
  billing_address_format_id int(5) default '0' not null ,
  payment_method varchar(32) not null ,
  cc_type varchar(20) ,
  cc_owner varchar(64) ,
  cc_number varchar(32) ,
  cc_expires varchar(4) ,
  last_modified datetime ,
  date_purchased datetime ,
  orders_status int(5) default '0' not null ,
  orders_date_finished datetime ,
  currency varchar(3) ,
  currency_value decimal(14,6) ,
  PRIMARY KEY (orders_id)
);

insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('8', '234', 'Taylor Smith', 'apolo', 'jr. los castaños 1174', '', 'lima', 'lima 39', 'lima', 'Peru', '999999999', 'gastoncarozi@hotmail.com', '1', 'Amber Smith', '', '308 Mozart Ave E', '', 'Mankato', '56001', 'Minnesota', 'United States', '2', 'Amber Smith', '', '308 Mozart Ave E', '', 'Mankato', '56001', 'Minnesota', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2009-09-22 20:56:53', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('7', '234', 'lobo lovote', 'apolo', 'jr. los castaños 1174', '', 'lima', 'lima 39', 'lima', 'Peru', '5213675', 'gastoncarozi@hotmail.com', '1', 'asd asd', '', 'asdas 4545', '', 'adasd', 'asdasd', 'A Coruna', 'Spain', '3', 'asd asd', '', 'asdas 4545', '', 'adasd', 'asdasd', 'A Coruna', 'Spain', '3', 'Check/Money Order', '', '', '', '', NULL, '2009-09-17 17:35:03', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('9', '234', 'Taylor Smith', '', '13450 Farmcrest Ct', '', 'Herndon', '20171', 'Virginia', 'United States', '999999999', 'gastoncarozi@hotmail.com', '2', 'Taylor Smith', '', '13450 Farmcrest Ct', '', 'Herndon', '20171', 'Virginia', 'United States', '2', 'Taylor Smith', '', '13450 Farmcrest Ct', '', 'Herndon', '20171', 'Virginia', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2010-01-29 01:03:30', '1', NULL, 'USD', '1.000000');
drop table if exists orders_products;
create table orders_products (
  orders_products_id int(11) not null auto_increment,
  orders_id int(11) default '0' not null ,
  products_id int(11) default '0' not null ,
  products_model varchar(12) ,
  products_name varchar(64) not null ,
  products_price decimal(15,4) default '0.0000' not null ,
  final_price decimal(15,4) default '0.0000' not null ,
  products_tax decimal(7,4) default '0.0000' not null ,
  products_quantity int(2) default '0' not null ,
  PRIMARY KEY (orders_products_id),
  KEY orders_id (orders_id),
  KEY products_id (products_id)
);

insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('9', '8', '2578', '', 'Product 1', '14.0000', '14.5000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('8', '7', '2578', '', 'Product 1', '13.0000', '13.5000', '0.0000', '10');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('10', '9', '2578', '', 'Product 1', '14.0000', '14.5000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('11', '9', '2579', '', 'Product 2', '12.0000', '12.0000', '0.0000', '5');
drop table if exists orders_products_attributes;
create table orders_products_attributes (
  orders_products_attributes_id int(11) not null auto_increment,
  orders_id int(11) default '0' not null ,
  orders_products_id int(11) default '0' not null ,
  products_options varchar(32) not null ,
  products_options_values varchar(32) not null ,
  options_values_price decimal(15,4) default '0.0000' not null ,
  price_prefix char(1) not null ,
  PRIMARY KEY (orders_products_attributes_id),
  KEY orders_products_id (orders_products_id)
);

insert into orders_products_attributes (orders_products_attributes_id, orders_id, orders_products_id, products_options, products_options_values, options_values_price, price_prefix) values ('4', '7', '8', 'Colors', 'red', '0.5000', '+');
insert into orders_products_attributes (orders_products_attributes_id, orders_id, orders_products_id, products_options, products_options_values, options_values_price, price_prefix) values ('5', '8', '9', 'Colors', 'red', '0.5000', '+');
insert into orders_products_attributes (orders_products_attributes_id, orders_id, orders_products_id, products_options, products_options_values, options_values_price, price_prefix) values ('6', '9', '10', 'Colors', 'red', '0.5000', '+');
drop table if exists orders_products_download;
create table orders_products_download (
  orders_products_download_id int(11) not null auto_increment,
  orders_id int(11) default '0' not null ,
  orders_products_id int(11) default '0' not null ,
  orders_products_filename varchar(255) not null ,
  download_maxdays int(2) default '0' not null ,
  download_count int(2) default '0' not null ,
  PRIMARY KEY (orders_products_download_id)
);

drop table if exists orders_status;
create table orders_status (
  orders_status_id int(11) default '0' not null ,
  language_id int(11) default '1' not null ,
  orders_status_name varchar(32) not null ,
  PRIMARY KEY (orders_status_id, language_id),
  KEY idx_orders_status_name (orders_status_name)
);

insert into orders_status (orders_status_id, language_id, orders_status_name) values ('1', '2', 'Pendiente');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('2', '2', 'Procesando');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('3', '2', 'Entregado');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('100', '2', 'Google New');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('101', '2', 'Google Processing');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('102', '2', 'Google Shipped');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('103', '2', 'Google Refunded');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('104', '2', 'Google Shipped and Refunded');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('105', '2', 'Google Canceled');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('1', '1', 'Pending');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('2', '1', 'Processing');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('3', '1', 'Shipped');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('100', '1', 'Google Noticias');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('101', '1', 'Google Procesando');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('102', '1', 'Google Enviado');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('103', '1', 'Google Devolución');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('104', '1', 'Google Enviado y Devolución');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('105', '1', 'Google Cancelado');
drop table if exists orders_status_history;
create table orders_status_history (
  orders_status_history_id int(11) not null auto_increment,
  orders_id int(11) default '0' not null ,
  orders_status_id int(5) default '0' not null ,
  date_added datetime default '0000-00-00 00:00:00' not null ,
  customer_notified int(1) default '0' ,
  comments text ,
  PRIMARY KEY (orders_status_history_id)
);

insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('8', '8', '1', '2009-09-22 20:56:53', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('7', '7', '1', '2009-09-17 17:35:05', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('9', '9', '1', '2010-01-29 01:03:30', '1', '');
drop table if exists orders_total;
create table orders_total (
  orders_total_id int(10) unsigned not null auto_increment,
  orders_id int(11) default '0' not null ,
  title varchar(255) not null ,
  text varchar(255) not null ,
  value decimal(15,4) default '0.0000' not null ,
  class varchar(32) not null ,
  sort_order int(11) default '0' not null ,
  PRIMARY KEY (orders_total_id),
  KEY idx_orders_total_orders_id (orders_id)
);

insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('31', '8', 'Total:', '<b>$19.45</b>', '19.4500', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('30', '8', 'Shipping Rate 2 ():', '$4.95', '4.9500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('29', '8', 'Sub-Total:', '$14.50', '14.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('25', '7', 'Sub-Total:', '$135.00', '135.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('26', '7', 'R.E. 4%:', '$5.40', '5.4000', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('27', '7', 'Flat Rate (Best Way):', '$18.00', '18.0000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('28', '7', 'Total:', '<b>$158.40</b>', '158.4000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('32', '9', 'Sub-Total:', '$74.50', '74.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('33', '9', 'Ground:', '$48.16', '48.1600', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('34', '9', 'Total:', '<b>$122.66</b>', '122.6600', 'ot_total', '4');
drop table if exists pages;
create table pages (
  pages_id int(11) not null auto_increment,
  pages_name varchar(32) not null ,
  pages_image varchar(64) not null ,
  sort_order int(3) default '0' not null ,
  pages_status tinyint(1) default '0' not null ,
  PRIMARY KEY (pages_id)
);

insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('13', 'about_us', '', '0', '0');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('2', 'contact_us', '', '-100', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('11', 'faq', '', '0', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('12', 'shipping', '', '0', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('14', 'conditions', '', '0', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('15', 'privacy', '', '0', '1');
drop table if exists pages_description;
create table pages_description (
  pages_id int(11) default '0' not null ,
  language_id int(11) default '0' not null ,
  pages_title varchar(255) not null ,
  pages_body text not null ,
  PRIMARY KEY (pages_id, language_id)
);

insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('1', '1', 'Home Page', 'Place your home page text here...');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('2', '1', 'Contact Us', 'Place your contact us text here...');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('1', '2', 'Nosotros', 'Texto aqui');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('2', '2', 'Contactenos', '<P><FONT face=\"Verdana, Arial, Helvetica, sans-serif\" size=2>Utiliza este formulario para hacernos llegar tus consultas</FONT></P>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('1', '4', 'Home Page', 'Vul hier uw eigen tekst in');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('2', '4', 'Neem contact op', 'Vul hier uw eigen tekst in');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('11', '1', 'Faq', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>
<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>
<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>
<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.<BR></P>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('11', '2', 'Preguntas Frecuentes', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>
<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>
<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>
<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.<BR></P>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('12', '1', 'Shipping', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>
<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>
<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>
<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</P>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('12', '2', 'Envios / Devoluciones', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>
<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>
<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>
<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</P>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('13', '1', 'About us', '<p>pepito</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('13', '2', 'Nosotros', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('14', '1', 'Conditions', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>
<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>
<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>
<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</P>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('14', '2', 'Condiciones', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>
<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>
<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>
<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</P>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('15', '1', 'Privacy', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>
<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>
<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>
<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.<BR></P>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('15', '2', 'Confidencialidad', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>
<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>
<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>
<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.<BR></P>');
drop table if exists products;
create table products (
  products_id int(11) not null auto_increment,
  products_quantity int(4) default '0' not null ,
  products_model varchar(12) ,
  products_image varchar(64) ,
  products_price decimal(15,4) default '0.0000' not null ,
  products_date_added datetime default '0000-00-00 00:00:00' not null ,
  products_last_modified datetime ,
  products_date_available datetime ,
  products_weight decimal(5,2) default '0.00' not null ,
  products_status tinyint(1) default '0' not null ,
  products_tax_class_id int(11) default '0' not null ,
  manufacturers_id int(11) ,
  products_ordered int(11) default '0' not null ,
  products_length int(11) ,
  products_width int(11) ,
  products_depth int(11) ,
  products_ship_sep tinyint(1) default '0' not null ,
  PRIMARY KEY (products_id),
  KEY idx_products_date_added (products_date_added)
);

insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep) values ('2579', '9994', '', '1789-A.jpg', '12.0000', '2009-09-17 23:02:42', '2010-01-28 17:42:43', NULL, '0.50', '1', '2', '0', '5', '25', '26', '27', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep) values ('2578', '999987', '', '1787.jpg', '15.0000', '2009-09-16 20:30:45', '2010-01-28 17:43:12', NULL, '0.60', '1', '2', '0', '12', '10', '15', '25', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep) values ('2580', '9999999', '', '1790.jpg', '18.0000', '2009-09-17 23:09:25', '2010-01-12 18:40:49', NULL, '0.00', '1', '3', '0', '0', '0', '0', '0', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep) values ('2581', '9999', '', '1791.jpg', '20.0000', '2009-09-22 15:53:10', '2010-01-12 18:41:06', NULL, '0.00', '1', '0', '0', '0', '0', '0', '0', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep) values ('2582', '999999', '', '1803a.jpg', '85.0000', '2009-09-22 15:54:03', '2010-01-12 18:41:26', NULL, '0.00', '1', '0', '0', '0', '0', '0', '0', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep) values ('2583', '999999', '', '1788.jpg', '13.0000', '2009-09-22 15:56:27', '2010-01-12 18:41:46', NULL, '0.00', '1', '0', '0', '0', '0', '0', '0', '0');
drop table if exists products_attributes;
create table products_attributes (
  products_attributes_id int(11) not null auto_increment,
  products_id int(11) default '0' not null ,
  options_id int(11) default '0' not null ,
  options_values_id int(11) default '0' not null ,
  options_values_price decimal(15,4) default '0.0000' not null ,
  price_prefix char(1) not null ,
  PRIMARY KEY (products_attributes_id),
  KEY products_id (products_id, options_id)
);

insert into products_attributes (products_attributes_id, products_id, options_id, options_values_id, options_values_price, price_prefix) values ('292', '2578', '4', '2', '0.5000', '+');
insert into products_attributes (products_attributes_id, products_id, options_id, options_values_id, options_values_price, price_prefix) values ('291', '2578', '4', '1', '0.8000', '+');
insert into products_attributes (products_attributes_id, products_id, options_id, options_values_id, options_values_price, price_prefix) values ('290', '2578', '4', '3', '1.0000', '+');
drop table if exists products_attributes_download;
create table products_attributes_download (
  products_attributes_id int(11) default '0' not null ,
  products_attributes_filename varchar(255) not null ,
  products_attributes_maxdays int(2) default '0' ,
  products_attributes_maxcount int(2) default '0' ,
  PRIMARY KEY (products_attributes_id)
);

insert into products_attributes_download (products_attributes_id, products_attributes_filename, products_attributes_maxdays, products_attributes_maxcount) values ('26', 'unreal.zip', '7', '3');
drop table if exists products_description;
create table products_description (
  products_id int(11) not null auto_increment,
  language_id int(11) default '1' not null ,
  products_name varchar(64) not null ,
  products_description text ,
  products_url varchar(255) ,
  products_viewed int(5) default '0' ,
  PRIMARY KEY (products_id, language_id),
  KEY products_name (products_name)
);

insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('2578', '1', 'Product 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien, rutrum a egestas a, tempor a ligula. Quisque scelerisque erat at mauris congue id elementum justo rutrum. Vestibulum a dui neque. Suspendisse potenti. Quisque lacinia malesuada sem, eget scelerisque neque sagittis eget. Morbi auctor interdum eleifend. Sed rutrum fringilla tortor, ut volutpat purus sollicitudin eu. Ut magna lacus, laoreet sit amet aliquam in, tempus at lacus. Vestibulum eget sapien quam</p>
<object width=\\\"425\\\" height=\\\"344\\\"><param name=\\\"movie\\\" value=\\\"http://www.youtube.com/v/LZxJCVT6i6w&hl=en&fs=1&rel=0&color1=0x234900&color2=0x4e9e00\\\"></param><param name=\\\"allowFullScreen\\\" value=\\\"true\\\"></param><param name=\\\"allowscriptaccess\\\" value=\\\"always\\\"></param><embed src=\\\"http://www.youtube.com/v/LZxJCVT6i6w&hl=en&fs=1&rel=0&color1=0x234900&color2=0x4e9e00\\\" type=\\\"application/x-shockwave-flash\\\" allowscriptaccess=\\\"always\\\" allowfullscreen=\\\"true\\\" width=\\\"425\\\" height=\\\"344\\\"></embed></object>
<p><br />
<br />
&nbsp;</p>', '', '285');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('2578', '2', 'Producto 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien, rutrum a egestas a, tempor a ligula. Quisque scelerisque erat at mauris congue id elementum justo rutrum. Vestibulum a dui neque. Suspendisse potenti. Quisque lacinia malesuada sem, eget scelerisque neque sagittis eget. Morbi auctor interdum eleifend. Sed rutrum fringilla tortor, ut volutpat purus sollicitudin eu. Ut magna lacus, laoreet sit amet aliquam in, tempus at lacus. Vestibulum eget sapien quam</p>
<p>&nbsp;</p>', '', '119');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('2579', '1', 'Product 2', '<p>Test</p>', '', '115');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('2579', '2', 'Producto 2', '<p>Test</p>', '', '45');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('2580', '1', 'Product 3', '<p>test</p>', '', '123');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('2580', '2', 'Producto 3', '<p>test</p>', '', '46');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('2581', '1', 'Product 4', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien, rutrum a egestas a, tempor a ligula. Quisque scelerisque erat at mauris congue id elementum justo rutrum. Vestibulum a dui neque. Suspendisse potenti. Quisque lacinia malesuada sem, eget scelerisque neque sagittis eget. Morbi auctor interdum eleifend. Sed rutrum fringilla tortor, ut volutpat purus sollicitudin eu. Ut magna lacus, laoreet sit amet aliquam in, tempus at lacus. Vestibulum eget sapien quam</p>', '', '161');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('2581', '2', 'Producto 4', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien, rutrum a egestas a, tempor a ligula. Quisque scelerisque erat at mauris congue id elementum justo rutrum. Vestibulum a dui neque. Suspendisse potenti. Quisque lacinia malesuada sem, eget scelerisque neque sagittis eget. Morbi auctor interdum eleifend. Sed rutrum fringilla tortor, ut volutpat purus sollicitudin eu. Ut magna lacus, laoreet sit amet aliquam in, tempus at lacus. Vestibulum eget sapien quam</p>', '', '62');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('2582', '1', 'Product 5', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien, rutrum a egestas a, tempor a ligula. Quisque scelerisque erat at mauris congue id elementum justo rutrum. Vestibulum a dui neque. Suspendisse potenti. Quisque lacinia malesuada sem, eget scelerisque neque sagittis eget. Morbi auctor interdum eleifend. Sed rutrum fringilla tortor, ut volutpat purus sollicitudin eu. Ut magna lacus, laoreet sit amet aliquam in, tempus at lacus. Vestibulum eget sapien quam</p>', '', '166');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('2582', '2', 'Producto 5', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien, rutrum a egestas a, tempor a ligula. Quisque scelerisque erat at mauris congue id elementum justo rutrum. Vestibulum a dui neque. Suspendisse potenti. Quisque lacinia malesuada sem, eget scelerisque neque sagittis eget. Morbi auctor interdum eleifend. Sed rutrum fringilla tortor, ut volutpat purus sollicitudin eu. Ut magna lacus, laoreet sit amet aliquam in, tempus at lacus. Vestibulum eget sapien quam</p>', '', '57');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('2583', '1', 'Product 6', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien, rutrum a egestas a, tempor a ligula. Quisque scelerisque erat at mauris congue id elementum justo rutrum. Vestibulum a dui neque. Suspendisse potenti. Quisque lacinia malesuada sem, eget scelerisque neque sagittis eget. Morbi auctor interdum eleifend. Sed rutrum fringilla tortor, ut volutpat purus sollicitudin eu. Ut magna lacus, laoreet sit amet aliquam in, tempus at lacus. Vestibulum eget sapien quam</p>', '', '198');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed) values ('2583', '2', 'Producto 6', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac varius lacus. Etiam consectetur pulvinar massa, sit amet mollis lorem iaculis eu. Nam elementum convallis dolor at auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed faucibus commodo dignissim. Sed ullamcorper elit et mauris pulvinar lobortis. Nullam porttitor elit vel libero tristique dictum. Mauris tempor metus eget arcu dignissim fringilla. Fusce libero sapien, rutrum a egestas a, tempor a ligula. Quisque scelerisque erat at mauris congue id elementum justo rutrum. Vestibulum a dui neque. Suspendisse potenti. Quisque lacinia malesuada sem, eget scelerisque neque sagittis eget. Morbi auctor interdum eleifend. Sed rutrum fringilla tortor, ut volutpat purus sollicitudin eu. Ut magna lacus, laoreet sit amet aliquam in, tempus at lacus. Vestibulum eget sapien quam</p>', '', '70');
drop table if exists products_extra_images;
create table products_extra_images (
  products_extra_images_id int(11) not null auto_increment,
  products_id int(11) ,
  products_extra_image varchar(64) ,
  KEY products_extra_images_id (products_extra_images_id)
);

insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('20', '2578', 'ttt.png');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('21', '2578', 'fotolia_2159841.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('22', '2580', 'fotolia_1177304.jpg');
drop table if exists products_group_prices_cg_3;
create table products_group_prices_cg_3 (
  products_id int(11) default '0' not null ,
  products_price decimal(15,4) default '0.0000' not null ,
  specials_new_products_price decimal(15,4) ,
  status tinyint(4) ,
  PRIMARY KEY (products_id)
);

insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1230', '4.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1231', '4.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1232', '3.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1233', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1234', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1235', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1236', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1237', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1238', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1239', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1240', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1241', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1242', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1243', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1244', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1245', '3.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1246', '4.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1247', '4.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1248', '3.8000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1249', '4.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1250', '1.1200', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1251', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1252', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1253', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1254', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1255', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1256', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1257', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1258', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1259', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1260', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1261', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1262', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1263', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1264', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1265', '4.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1266', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1267', '4.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1268', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1269', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1270', '3.2500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1271', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1272', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1273', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1274', '2.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1275', '1.1200', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1276', '1.3000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1277', '4.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1278', '1.2500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1279', '1.2500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1280', '1.6900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1281', '0.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1282', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1283', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1284', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1285', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1286', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1287', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1288', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1289', '3.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1290', '2.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1291', '2.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1292', '2.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1293', '2.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1294', '4.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1295', '2.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1296', '3.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1297', '3.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1298', '3.8000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1299', '3.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1226', '2.9000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1227', '4.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1228', '4.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1229', '4.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1201', '6.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1202', '7.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1203', '7.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1204', '2.9000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1205', '2.9000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1206', '2.9000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1207', '3.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1208', '2.9000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1209', '3.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1210', '5.9000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1211', '2.9000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1212', '7.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1213', '7.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1214', '7.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1215', '7.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1216', '7.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1217', '7.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1218', '7.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1219', '6.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1220', '7.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1221', '3.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1222', '2.9000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1223', '2.9000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1224', '2.9000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1225', '3.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1200', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1199', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1196', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1197', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1198', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1179', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1180', '2.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1181', '2.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1182', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1183', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1184', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1185', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1186', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1187', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1188', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1189', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1190', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1191', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1192', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1193', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1194', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1195', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1178', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1161', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1162', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1163', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1164', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1165', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1166', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1167', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1168', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1169', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1170', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1171', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1172', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1173', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1174', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1175', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1176', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1177', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1142', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1143', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1144', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1145', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1146', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1147', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1148', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1149', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1150', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1151', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1152', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1153', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1154', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1155', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1156', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1157', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1158', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1159', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1160', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1090', '3.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1091', '5.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1092', '1.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1093', '3.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1094', '5.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1095', '5.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1096', '3.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1097', '3.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1098', '5.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1099', '5.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1100', '5.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1101', '5.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1102', '2.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1103', '2.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1104', '2.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1105', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1106', '6.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1107', '6.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1108', '8.6000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1109', '8.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1110', '2.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1111', '4.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1112', '4.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1113', '2.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1114', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1115', '4.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1116', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1117', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1118', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1119', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1120', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1121', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1122', '2.6000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1123', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1124', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1125', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1126', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1127', '1.1000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1128', '1.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1129', '1.4900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1130', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1131', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1132', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1133', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1134', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1135', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1136', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1137', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1138', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1139', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1140', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1141', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1089', '3.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1034', '9.9000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1038', '3.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1039', '9.9000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1040', '9.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1041', '5.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1042', '5.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1043', '3.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1044', '14.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1045', '5.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1046', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1047', '0.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1048', '1.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1049', '2.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1050', '1.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1051', '1.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1052', '2.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1053', '1.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1054', '1.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1055', '1.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1056', '1.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1057', '3.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1058', '7.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1059', '5.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1060', '2.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1061', '5.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1062', '8.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1063', '12.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1064', '5.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1065', '5.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1066', '5.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1067', '19.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1068', '12.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1069', '19.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1070', '9.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1071', '19.5000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1072', '9.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1073', '11.2000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1074', '7.9800', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1075', '9.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1076', '2.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1077', '4.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1078', '3.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1079', '9.9500', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1080', '5.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1081', '5.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1082', '5.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1083', '5.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1084', '1.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1085', '5.9900', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1086', '4.6000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1087', '4.6000', NULL, NULL);
insert into products_group_prices_cg_3 (products_id, products_price, specials_new_products_price, status) values ('1088', '3.9900', NULL, NULL);
drop table if exists products_groups;
create table products_groups (
  customers_group_id smallint(5) unsigned default '0' not null ,
  customers_group_price decimal(15,4) default '0.0000' not null ,
  products_id int(11) default '0' not null ,
  minorder int(4) default '1' not null ,
  PRIMARY KEY (customers_group_id, products_id)
);

insert into products_groups (customers_group_id, customers_group_price, products_id, minorder) values ('1', '12.0000', '2579', '1');
insert into products_groups (customers_group_id, customers_group_price, products_id, minorder) values ('2', '10.0000', '2579', '10');
insert into products_groups (customers_group_id, customers_group_price, products_id, minorder) values ('2', '13.0000', '2578', '10');
insert into products_groups (customers_group_id, customers_group_price, products_id, minorder) values ('3', '10.0000', '2578', '20');
insert into products_groups (customers_group_id, customers_group_price, products_id, minorder) values ('3', '11.0000', '2579', '15');
insert into products_groups (customers_group_id, customers_group_price, products_id, minorder) values ('2', '14.0000', '2580', '5');
insert into products_groups (customers_group_id, customers_group_price, products_id, minorder) values ('3', '10.0000', '2580', '10');
insert into products_groups (customers_group_id, customers_group_price, products_id, minorder) values ('2', '15.0000', '2581', '20');
insert into products_groups (customers_group_id, customers_group_price, products_id, minorder) values ('3', '10.0000', '2581', '40');
insert into products_groups (customers_group_id, customers_group_price, products_id, minorder) values ('2', '70.0000', '2582', '15');
insert into products_groups (customers_group_id, customers_group_price, products_id, minorder) values ('3', '60.0000', '2582', '25');
insert into products_groups (customers_group_id, customers_group_price, products_id, minorder) values ('2', '12.0000', '2583', '5');
insert into products_groups (customers_group_id, customers_group_price, products_id, minorder) values ('3', '10.0000', '2583', '10');
drop table if exists products_notifications;
create table products_notifications (
  products_id int(11) default '0' not null ,
  customers_id int(11) default '0' not null ,
  date_added datetime default '0000-00-00 00:00:00' not null ,
  PRIMARY KEY (products_id, customers_id)
);

drop table if exists products_options;
create table products_options (
  products_options_id int(11) default '0' not null ,
  language_id int(11) default '1' not null ,
  products_options_name varchar(50) not null ,
  products_options_type int(5) default '0' not null ,
  products_options_length smallint(2) default '32' not null ,
  products_options_comment varchar(50) ,
  PRIMARY KEY (products_options_id, language_id)
);

insert into products_options (products_options_id, language_id, products_options_name, products_options_type, products_options_length, products_options_comment) values ('1', '1', 'Gift envoltory', '3', '20', 'Click here for include');
insert into products_options (products_options_id, language_id, products_options_name, products_options_type, products_options_length, products_options_comment) values ('1', '2', 'Envoltorio de Regalo', '3', '20', 'Click aqui para incluir el envoltorio de regalo');
insert into products_options (products_options_id, language_id, products_options_name, products_options_type, products_options_length, products_options_comment) values ('2', '1', 'Write dedicatory', '4', '100', '100 charactheres');
insert into products_options (products_options_id, language_id, products_options_name, products_options_type, products_options_length, products_options_comment) values ('2', '2', 'Escribir dedicatoria', '4', '100', '100 caracteres permitidos');
insert into products_options (products_options_id, language_id, products_options_name, products_options_type, products_options_length, products_options_comment) values ('3', '1', 'Include dedicatory', '3', '20', 'Click here for including');
insert into products_options (products_options_id, language_id, products_options_name, products_options_type, products_options_length, products_options_comment) values ('3', '2', 'Incluir dedicatoria', '3', '20', 'Click aqui para incluir la dedictoria');
insert into products_options (products_options_id, language_id, products_options_name, products_options_type, products_options_length, products_options_comment) values ('4', '1', 'Colors', '0', '20', 'Choose color');
insert into products_options (products_options_id, language_id, products_options_name, products_options_type, products_options_length, products_options_comment) values ('4', '2', 'Colores', '0', '20', 'Escoger color');
insert into products_options (products_options_id, language_id, products_options_name, products_options_type, products_options_length, products_options_comment) values ('5', '1', 'Size', '0', '0', 'Choose size');
insert into products_options (products_options_id, language_id, products_options_name, products_options_type, products_options_length, products_options_comment) values ('5', '2', 'Talla', '0', '0', 'Escoger talla');
drop table if exists products_options_values;
create table products_options_values (
  products_options_values_id int(11) default '0' not null ,
  language_id int(11) default '1' not null ,
  products_options_values_name varchar(64) not null ,
  PRIMARY KEY (products_options_values_id, language_id)
);

insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('6', '2', 'Larga');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('6', '1', 'Large');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('5', '2', 'Media');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('5', '1', 'Medium');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('4', '2', 'Pequeña');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('4', '1', 'Small');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('3', '2', 'amarillo');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('3', '1', 'yellow');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('2', '2', 'rojo');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('2', '1', 'red');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('1', '2', 'azul');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('1', '1', 'blue');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('7', '1', 'yes');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('7', '2', 'si');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('8', '1', 'no');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('8', '2', 'no');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('9', '1', 'yes');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('9', '2', 'si');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('10', '1', 'no');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('10', '2', 'no');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('11', '1', 'text');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('11', '2', 'text');
drop table if exists products_options_values_to_products_options;
create table products_options_values_to_products_options (
  products_options_values_to_products_options_id int(11) not null auto_increment,
  products_options_id int(11) default '0' not null ,
  products_options_values_id int(11) default '0' not null ,
  PRIMARY KEY (products_options_values_to_products_options_id)
);

insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('185', '3', '9');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('187', '2', '11');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('186', '3', '10');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('184', '1', '8');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('183', '1', '7');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('181', '5', '5');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('70', '4', '21');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('69', '4', '20');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('175', '3', '0');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('173', '2', '0');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('134', '5', '85');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('72', '5', '23');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('73', '5', '24');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('74', '5', '25');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('75', '5', '26');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('76', '5', '27');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('77', '6', '28');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('78', '6', '29');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('79', '6', '30');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('80', '6', '31');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('81', '5', '32');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('82', '5', '33');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('83', '5', '34');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('84', '5', '35');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('85', '5', '36');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('86', '5', '37');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('87', '5', '38');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('88', '6', '39');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('89', '6', '40');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('90', '6', '41');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('91', '6', '42');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('92', '6', '43');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('93', '4', '44');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('94', '4', '45');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('95', '4', '46');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('96', '5', '47');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('97', '5', '48');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('98', '5', '49');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('99', '5', '50');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('100', '5', '51');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('101', '5', '52');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('102', '5', '53');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('103', '5', '54');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('104', '5', '55');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('105', '5', '56');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('106', '4', '57');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('107', '4', '58');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('108', '4', '59');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('109', '6', '60');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('110', '4', '61');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('111', '5', '62');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('112', '5', '63');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('113', '4', '64');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('114', '5', '65');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('115', '5', '66');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('116', '4', '67');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('117', '5', '68');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('118', '5', '69');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('119', '5', '70');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('120', '5', '71');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('121', '5', '72');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('122', '5', '73');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('123', '5', '74');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('124', '5', '75');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('125', '5', '76');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('126', '5', '77');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('127', '5', '78');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('128', '5', '79');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('129', '5', '80');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('130', '4', '81');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('131', '5', '82');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('132', '6', '83');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('133', '4', '84');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('135', '5', '86');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('136', '4', '87');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('137', '5', '88');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('138', '5', '89');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('139', '5', '90');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('140', '5', '91');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('141', '5', '92');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('142', '5', '93');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('143', '5', '94');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('144', '5', '95');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('145', '5', '96');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('146', '6', '97');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('147', '6', '98');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('148', '6', '99');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('149', '6', '100');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('150', '6', '101');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('151', '6', '102');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('152', '6', '103');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('153', '6', '104');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('182', '5', '6');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('180', '5', '4');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('179', '4', '3');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('178', '4', '2');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('177', '4', '1');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('176', '3', '0');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('174', '2', '0');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('172', '1', '0');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('171', '1', '0');
drop table if exists products_to_categories;
create table products_to_categories (
  products_id int(11) default '0' not null ,
  categories_id int(11) default '0' not null ,
  PRIMARY KEY (products_id, categories_id)
);

insert into products_to_categories (products_id, categories_id) values ('2578', '453');
insert into products_to_categories (products_id, categories_id) values ('2579', '453');
insert into products_to_categories (products_id, categories_id) values ('2580', '453');
insert into products_to_categories (products_id, categories_id) values ('2581', '453');
insert into products_to_categories (products_id, categories_id) values ('2582', '453');
insert into products_to_categories (products_id, categories_id) values ('2583', '453');
drop table if exists reviews;
create table reviews (
  reviews_id int(11) not null auto_increment,
  products_id int(11) default '0' not null ,
  customers_id int(11) ,
  customers_name varchar(64) not null ,
  reviews_rating int(1) ,
  date_added datetime ,
  last_modified datetime ,
  reviews_read int(5) default '0' not null ,
  PRIMARY KEY (reviews_id)
);

drop table if exists reviews_description;
create table reviews_description (
  reviews_id int(11) default '0' not null ,
  languages_id int(11) default '0' not null ,
  reviews_text text not null ,
  PRIMARY KEY (reviews_id, languages_id)
);

drop table if exists sessions;
create table sessions (
  sesskey varchar(32) not null ,
  expiry int(11) unsigned default '0' not null ,
  value text not null ,
  PRIMARY KEY (sesskey)
);

insert into sessions (sesskey, expiry, value) values ('ac5841abe360e21758ad6f28d4cb79c2', '1277118291', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('6e3558379dab07e3537dbcbae57d946a', '1277193908', 'cart|O:12:\"shoppingcart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('dc911a3b8d82501712b811a4b459d250', '1277232283', 'language|s:7:\"english\";languages_id|s:1:\"1\";selected_box|s:13:\"configuration\";');
insert into sessions (sesskey, expiry, value) values ('fe9117ae9e9e0a90f02c5ccb7726e722', '1277232215', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('054185ef192bd776187d4c8289b86b9d', '1277235374', 'cart|O:12:\"shoppingcart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('e389eb2c69c6cdc641575e982095a39f', '1277233522', 'language|s:7:\"english\";languages_id|s:1:\"1\";selected_box|s:5:\"pages\";');
insert into sessions (sesskey, expiry, value) values ('0899bc38c0f94b64fbfa37ffc4dc9f3d', '1277303799', 'language|s:7:\"espanol\";languages_id|s:1:\"2\";selected_box|s:7:\"catalog\";');
insert into sessions (sesskey, expiry, value) values ('724ad3fc0a0a233fbb7d18aa94d85426', '1277305974', 'language|s:7:\"espanol\";languages_id|s:1:\"2\";selected_box|s:13:\"configuration\";');
insert into sessions (sesskey, expiry, value) values ('fcebea0b89e120ddaa6a911145e7ce00', '1277306006', 'cart|O:12:\"shoppingcart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:3:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}i:2;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2578\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('1e0b1d42e61bdfab547ca429150c5eb2', '1277315252', 'language|s:7:\"english\";languages_id|s:1:\"1\";selected_box|s:5:\"tools\";');
insert into sessions (sesskey, expiry, value) values ('b6c9bd92e5f4052c335764831bca9bdd', '1277315249', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
drop table if exists specials;
create table specials (
  specials_id int(11) not null auto_increment,
  products_id int(11) default '0' not null ,
  specials_new_products_price decimal(15,4) default '0.0000' not null ,
  specials_date_added datetime ,
  specials_last_modified datetime ,
  expires_date datetime ,
  date_status_change datetime ,
  status int(1) default '1' not null ,
  customers_group_id smallint(5) unsigned default '0' not null ,
  PRIMARY KEY (specials_id),
  KEY products_id (products_id)
);

insert into specials (specials_id, products_id, specials_new_products_price, specials_date_added, specials_last_modified, expires_date, date_status_change, status, customers_group_id) values ('12', '2580', '16.0000', '2009-09-17 16:10:31', NULL, '0000-00-00 00:00:00', NULL, '1', '1');
insert into specials (specials_id, products_id, specials_new_products_price, specials_date_added, specials_last_modified, expires_date, date_status_change, status, customers_group_id) values ('13', '2578', '14.0000', '2009-09-17 16:20:15', NULL, '0000-00-00 00:00:00', NULL, '1', '1');
drop table if exists specials_retail_prices;
create table specials_retail_prices (
  products_id int(11) default '0' not null ,
  specials_new_products_price decimal(15,4) default '0.0000' not null ,
  status tinyint(4) ,
  customers_group_id smallint(6) ,
  PRIMARY KEY (products_id)
);

drop table if exists tax_class;
create table tax_class (
  tax_class_id int(11) not null auto_increment,
  tax_class_title varchar(32) not null ,
  tax_class_description varchar(255) not null ,
  last_modified datetime ,
  date_added datetime default '0000-00-00 00:00:00' not null ,
  PRIMARY KEY (tax_class_id)
);

insert into tax_class (tax_class_id, tax_class_title, tax_class_description, last_modified, date_added) values ('2', 'IVA 4%', 'IVA 4%', '2008-03-12 01:15:59', '2008-03-11 00:48:50');
insert into tax_class (tax_class_id, tax_class_title, tax_class_description, last_modified, date_added) values ('3', 'IVA 7%', 'IVA 7%', '2008-03-12 01:16:15', '2008-03-11 00:48:58');
insert into tax_class (tax_class_id, tax_class_title, tax_class_description, last_modified, date_added) values ('4', 'IVA 16%', 'IVA 16%', '2008-03-12 01:16:36', '2008-03-11 00:49:04');
insert into tax_class (tax_class_id, tax_class_title, tax_class_description, last_modified, date_added) values ('5', 'R.E. 0,5%', 'R.E. 0,5%', '2008-05-06 13:59:38', '2008-05-05 16:03:03');
insert into tax_class (tax_class_id, tax_class_title, tax_class_description, last_modified, date_added) values ('6', 'R.E. 1,5%', 'R.E. 1,5%', '2008-05-06 13:59:12', '2008-05-05 16:03:18');
insert into tax_class (tax_class_id, tax_class_title, tax_class_description, last_modified, date_added) values ('7', 'R.E. 4%', 'R.E. 4%', '2008-05-06 13:58:52', '2008-05-05 16:03:31');
insert into tax_class (tax_class_id, tax_class_title, tax_class_description, last_modified, date_added) values ('9', 'R.E. 0%', 'R.E. 0%', NULL, '2008-05-13 18:45:09');
drop table if exists tax_rates;
create table tax_rates (
  tax_rates_id int(11) not null auto_increment,
  tax_zone_id int(11) default '0' not null ,
  tax_class_id int(11) default '0' not null ,
  tax_priority int(5) default '1' ,
  tax_rate decimal(7,4) default '0.0000' not null ,
  tax_description varchar(255) not null ,
  last_modified datetime ,
  date_added datetime default '0000-00-00 00:00:00' not null ,
  PRIMARY KEY (tax_rates_id),
  KEY tax_zone_id (tax_zone_id),
  KEY tax_class_id (tax_class_id)
);

insert into tax_rates (tax_rates_id, tax_zone_id, tax_class_id, tax_priority, tax_rate, tax_description, last_modified, date_added) values ('8', '1', '9', '7', '0.0000', 'R.E. 0%', NULL, '2008-05-13 18:45:58');
insert into tax_rates (tax_rates_id, tax_zone_id, tax_class_id, tax_priority, tax_rate, tax_description, last_modified, date_added) values ('2', '1', '2', '1', '4.0000', 'IVA 4%', '2008-05-10 09:33:15', '2008-03-11 00:49:39');
insert into tax_rates (tax_rates_id, tax_zone_id, tax_class_id, tax_priority, tax_rate, tax_description, last_modified, date_added) values ('3', '1', '3', '2', '7.0000', 'IVA 7%', '2008-05-10 09:33:10', '2008-03-11 00:49:49');
insert into tax_rates (tax_rates_id, tax_zone_id, tax_class_id, tax_priority, tax_rate, tax_description, last_modified, date_added) values ('4', '1', '4', '3', '16.0000', 'IVA 16%', '2008-05-10 09:33:05', '2008-03-11 00:50:07');
insert into tax_rates (tax_rates_id, tax_zone_id, tax_class_id, tax_priority, tax_rate, tax_description, last_modified, date_added) values ('5', '1', '7', '4', '4.0000', 'R.E. 4%', '2008-05-10 09:32:47', '2008-05-05 16:04:32');
insert into tax_rates (tax_rates_id, tax_zone_id, tax_class_id, tax_priority, tax_rate, tax_description, last_modified, date_added) values ('6', '1', '6', '5', '1.5000', 'R.E. 1,5%', '2008-05-10 09:32:53', '2008-05-05 16:04:53');
insert into tax_rates (tax_rates_id, tax_zone_id, tax_class_id, tax_priority, tax_rate, tax_description, last_modified, date_added) values ('7', '1', '5', '6', '0.5000', 'R.E. 0,5%', '2008-05-10 09:32:59', '2008-05-05 16:05:13');
drop table if exists whos_online;
create table whos_online (
  customer_id int(11) ,
  full_name varchar(64) not null ,
  session_id varchar(128) not null ,
  ip_address varchar(15) not null ,
  time_entry varchar(14) not null ,
  time_last_click varchar(14) not null ,
  last_page_url varchar(64) not null ,
  KEY session_id (session_id),
  KEY ip_address (ip_address),
  KEY time_last_click (time_last_click)
);

insert into whos_online (customer_id, full_name, session_id, ip_address, time_entry, time_last_click, last_page_url) values ('0', 'Guest', '', '190.222.160.35', '1277313807', '1277313807', '/TA_package/tienda/');
insert into whos_online (customer_id, full_name, session_id, ip_address, time_entry, time_last_click, last_page_url) values ('0', 'Guest', 'b6c9bd92e5f4052c335764831bca9bdd', '190.222.160.35', '1277313809', '1277313809', '/TA_package/tienda/products_new.php');
drop table if exists zones;
create table zones (
  zone_id int(11) not null auto_increment,
  zone_country_id int(11) default '0' not null ,
  zone_code varchar(32) not null ,
  zone_name varchar(32) not null ,
  PRIMARY KEY (zone_id)
);

insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('1', '223', 'AL', 'Alabama');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('2', '223', 'AK', 'Alaska');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('3', '223', 'AS', 'American Samoa');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('4', '223', 'AZ', 'Arizona');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('5', '223', 'AR', 'Arkansas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('6', '223', 'AF', 'Armed Forces Africa');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('7', '223', 'AA', 'Armed Forces Americas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('8', '223', 'AC', 'Armed Forces Canada');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('9', '223', 'AE', 'Armed Forces Europe');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('10', '223', 'AM', 'Armed Forces Middle East');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('11', '223', 'AP', 'Armed Forces Pacific');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('12', '223', 'CA', 'California');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('13', '223', 'CO', 'Colorado');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('14', '223', 'CT', 'Connecticut');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('15', '223', 'DE', 'Delaware');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('16', '223', 'DC', 'District of Columbia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('17', '223', 'FM', 'Federated States Of Micronesia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('18', '223', 'FL', 'Florida');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('19', '223', 'GA', 'Georgia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('20', '223', 'GU', 'Guam');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('21', '223', 'HI', 'Hawaii');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('22', '223', 'ID', 'Idaho');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('23', '223', 'IL', 'Illinois');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('24', '223', 'IN', 'Indiana');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('25', '223', 'IA', 'Iowa');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('26', '223', 'KS', 'Kansas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('27', '223', 'KY', 'Kentucky');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('28', '223', 'LA', 'Louisiana');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('29', '223', 'ME', 'Maine');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('30', '223', 'MH', 'Marshall Islands');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('31', '223', 'MD', 'Maryland');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('32', '223', 'MA', 'Massachusetts');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('33', '223', 'MI', 'Michigan');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('34', '223', 'MN', 'Minnesota');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('35', '223', 'MS', 'Mississippi');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('36', '223', 'MO', 'Missouri');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('37', '223', 'MT', 'Montana');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('38', '223', 'NE', 'Nebraska');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('39', '223', 'NV', 'Nevada');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('40', '223', 'NH', 'New Hampshire');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('41', '223', 'NJ', 'New Jersey');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('42', '223', 'NM', 'New Mexico');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('43', '223', 'NY', 'New York');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('44', '223', 'NC', 'North Carolina');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('45', '223', 'ND', 'North Dakota');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('46', '223', 'MP', 'Northern Mariana Islands');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('47', '223', 'OH', 'Ohio');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('48', '223', 'OK', 'Oklahoma');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('49', '223', 'OR', 'Oregon');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('50', '223', 'PW', 'Palau');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('51', '223', 'PA', 'Pennsylvania');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('52', '223', 'PR', 'Puerto Rico');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('53', '223', 'RI', 'Rhode Island');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('54', '223', 'SC', 'South Carolina');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('55', '223', 'SD', 'South Dakota');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('56', '223', 'TN', 'Tennessee');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('57', '223', 'TX', 'Texas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('58', '223', 'UT', 'Utah');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('59', '223', 'VT', 'Vermont');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('60', '223', 'VI', 'Virgin Islands');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('61', '223', 'VA', 'Virginia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('62', '223', 'WA', 'Washington');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('63', '223', 'WV', 'West Virginia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('64', '223', 'WI', 'Wisconsin');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('65', '223', 'WY', 'Wyoming');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('66', '38', 'AB', 'Alberta');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('67', '38', 'BC', 'British Columbia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('68', '38', 'MB', 'Manitoba');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('69', '38', 'NF', 'Newfoundland');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('70', '38', 'NB', 'New Brunswick');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('71', '38', 'NS', 'Nova Scotia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('72', '38', 'NT', 'Northwest Territories');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('73', '38', 'NU', 'Nunavut');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('74', '38', 'ON', 'Ontario');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('75', '38', 'PE', 'Prince Edward Island');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('76', '38', 'QC', 'Quebec');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('77', '38', 'SK', 'Saskatchewan');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('78', '38', 'YT', 'Yukon Territory');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('79', '81', 'NDS', 'Niedersachsen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('80', '81', 'BAW', 'Baden-W?rttemberg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('81', '81', 'BAY', 'Bayern');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('82', '81', 'BER', 'Berlin');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('83', '81', 'BRG', 'Brandenburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('84', '81', 'BRE', 'Bremen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('85', '81', 'HAM', 'Hamburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('86', '81', 'HES', 'Hessen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('87', '81', 'MEC', 'Mecklenburg-Vorpommern');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('88', '81', 'NRW', 'Nordrhein-Westfalen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('89', '81', 'RHE', 'Rheinland-Pfalz');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('90', '81', 'SAR', 'Saarland');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('91', '81', 'SAS', 'Sachsen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('92', '81', 'SAC', 'Sachsen-Anhalt');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('93', '81', 'SCN', 'Schleswig-Holstein');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('94', '81', 'THE', 'Th?ringen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('95', '14', 'WI', 'Wien');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('96', '14', 'NO', 'Nieder?sterreich');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('97', '14', 'OO', 'Ober?sterreich');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('98', '14', 'SB', 'Salzburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('99', '14', 'KN', 'K?rnten');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('100', '14', 'ST', 'Steiermark');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('101', '14', 'TI', 'Tirol');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('102', '14', 'BL', 'Burgenland');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('103', '14', 'VB', 'Voralberg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('104', '204', 'AG', 'Aargau');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('105', '204', 'AI', 'Appenzell Innerrhoden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('106', '204', 'AR', 'Appenzell Ausserrhoden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('107', '204', 'BE', 'Bern');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('108', '204', 'BL', 'Basel-Landschaft');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('109', '204', 'BS', 'Basel-Stadt');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('110', '204', 'FR', 'Freiburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('111', '204', 'GE', 'Genf');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('112', '204', 'GL', 'Glarus');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('113', '204', 'JU', 'Graub?nden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('114', '204', 'JU', 'Jura');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('115', '204', 'LU', 'Luzern');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('116', '204', 'NE', 'Neuenburg');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('117', '204', 'NW', 'Nidwalden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('118', '204', 'OW', 'Obwalden');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('119', '204', 'SG', 'St. Gallen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('120', '204', 'SH', 'Schaffhausen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('121', '204', 'SO', 'Solothurn');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('122', '204', 'SZ', 'Schwyz');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('123', '204', 'TG', 'Thurgau');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('124', '204', 'TI', 'Tessin');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('125', '204', 'UR', 'Uri');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('126', '204', 'VD', 'Waadt');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('127', '204', 'VS', 'Wallis');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('128', '204', 'ZG', 'Zug');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('129', '204', 'ZH', 'Z?rich');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('130', '195', 'A Coruna', 'A Coruna');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('131', '195', 'Alava', 'Alava');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('132', '195', 'Albacete', 'Albacete');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('133', '195', 'Alicante', 'Alicante');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('134', '195', 'Almeria', 'Almeria');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('135', '195', 'Asturias', 'Asturias');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('136', '195', 'Avila', 'Avila');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('137', '195', 'Badajoz', 'Badajoz');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('138', '195', 'Baleares', 'Baleares');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('139', '195', 'Barcelona', 'Barcelona');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('140', '195', 'Burgos', 'Burgos');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('141', '195', 'Caceres', 'Caceres');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('142', '195', 'Cadiz', 'Cadiz');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('143', '195', 'Cantabria', 'Cantabria');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('144', '195', 'Castellon', 'Castellon');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('145', '195', 'Ceuta', 'Ceuta');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('146', '195', 'Ciudad Real', 'Ciudad Real');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('147', '195', 'Cordoba', 'Cordoba');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('148', '195', 'Cuenca', 'Cuenca');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('149', '195', 'Girona', 'Girona');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('150', '195', 'Granada', 'Granada');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('151', '195', 'Guadalajara', 'Guadalajara');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('152', '195', 'Guipuzcoa', 'Guipuzcoa');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('153', '195', 'Huelva', 'Huelva');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('154', '195', 'Huesca', 'Huesca');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('155', '195', 'Jaen', 'Jaen');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('156', '195', 'La Rioja', 'La Rioja');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('157', '195', 'Las Palmas', 'Las Palmas');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('158', '195', 'Leon', 'Leon');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('159', '195', 'Lleida', 'Lleida');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('160', '195', 'Lugo', 'Lugo');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('161', '195', 'Madrid', 'Madrid');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('162', '195', 'Malaga', 'Malaga');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('163', '195', 'Melilla', 'Melilla');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('164', '195', 'Murcia', 'Murcia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('165', '195', 'Navarra', 'Navarra');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('166', '195', 'Ourense', 'Ourense');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('167', '195', 'Palencia', 'Palencia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('168', '195', 'Pontevedra', 'Pontevedra');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('169', '195', 'Salamanca', 'Salamanca');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('170', '195', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('171', '195', 'Segovia', 'Segovia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('172', '195', 'Sevilla', 'Sevilla');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('173', '195', 'Soria', 'Soria');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('174', '195', 'Tarragona', 'Tarragona');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('175', '195', 'Teruel', 'Teruel');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('176', '195', 'Toledo', 'Toledo');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('177', '195', 'Valencia', 'Valencia');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('178', '195', 'Valladolid', 'Valladolid');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('179', '195', 'Vizcaya', 'Vizcaya');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('180', '195', 'Zamora', 'Zamora');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('181', '195', 'Zaragoza', 'Zaragoza');
insert into zones (zone_id, zone_country_id, zone_code, zone_name) values ('182', '195', 'canarias', 'Islas Canarias');
drop table if exists zones_to_geo_zones;
create table zones_to_geo_zones (
  association_id int(11) not null auto_increment,
  zone_country_id int(11) default '0' not null ,
  zone_id int(11) ,
  geo_zone_id int(11) ,
  last_modified datetime ,
  date_added datetime default '0000-00-00 00:00:00' not null ,
  PRIMARY KEY (association_id),
  KEY geo_zone_id (geo_zone_id)
);

insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('1', '195', '133', '1', '2008-03-11 21:43:09', '2005-07-07 10:38:23');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('2', '1', NULL, '2', '2008-03-11 01:15:30', '2008-03-11 01:08:46');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('3', '2', '0', '2', NULL, '2008-03-11 01:15:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('4', '3', '0', '2', NULL, '2008-03-11 01:15:43');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('5', '4', '0', '2', NULL, '2008-03-11 01:15:52');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('6', '5', '0', '2', NULL, '2008-03-11 01:16:04');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('7', '6', '0', '2', NULL, '2008-03-11 01:16:23');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('8', '7', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('9', '8', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('10', '9', '0', '2', NULL, '2008-03-11 01:16:47');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('11', '10', '0', '2', NULL, '2008-03-11 01:18:11');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('12', '11', '0', '2', NULL, '2008-03-11 01:19:55');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('13', '12', '0', '2', NULL, '2008-03-11 01:20:04');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('14', '13', '0', '2', NULL, '2008-03-11 01:20:14');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('15', '14', '0', '2', NULL, '2008-03-11 01:20:22');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('16', '15', '0', '2', NULL, '2008-03-11 01:20:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('17', '16', '0', '2', NULL, '2008-03-11 01:20:44');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('18', '17', '0', '2', NULL, '2008-03-11 01:21:10');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('19', '18', '0', '2', NULL, '2008-03-11 01:21:18');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('20', '19', '0', '2', NULL, '2008-03-11 01:21:25');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('21', '20', '0', '2', NULL, '2008-03-11 01:21:52');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('22', '21', '0', '2', NULL, '2008-03-11 01:22:11');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('23', '22', '0', '2', NULL, '2008-03-11 01:22:22');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('24', '23', '0', '2', NULL, '2008-03-11 01:22:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('27', '25', '0', '2', NULL, '2008-03-11 01:23:10');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('26', '24', '0', '2', NULL, '2008-03-11 01:22:46');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('28', '26', '0', '2', NULL, '2008-03-11 01:23:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('29', '27', '0', '2', NULL, '2008-03-11 01:23:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('30', '28', '0', '2', NULL, '2008-03-11 01:23:43');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('31', '29', '0', '2', NULL, '2008-03-11 01:24:04');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('32', '167', '0', '2', NULL, '2008-03-11 01:43:08');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('535', '195', '170', '3', NULL, '2008-10-10 05:18:45');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('34', '195', '145', '3', NULL, '2008-03-11 06:28:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('35', '195', '163', '3', NULL, '2008-03-11 06:29:10');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('36', '195', '182', '3', NULL, '2008-03-11 06:31:00');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('38', '195', '131', '1', NULL, '2008-03-11 21:42:00');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('39', '195', '132', '1', NULL, '2008-03-11 21:42:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('40', '195', '130', '1', NULL, '2008-03-11 21:43:47');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('41', '195', '134', '1', NULL, '2008-03-11 21:44:15');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('42', '195', '135', '1', NULL, '2008-03-11 21:44:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('43', '195', '136', '1', NULL, '2008-03-11 21:45:01');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('44', '195', '137', '1', NULL, '2008-03-11 21:45:23');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('45', '195', '139', '1', NULL, '2008-03-11 21:46:04');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('46', '195', '140', '1', NULL, '2008-03-11 21:46:19');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('47', '195', '141', '1', NULL, '2008-03-11 21:46:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('48', '195', '142', '1', NULL, '2008-03-11 21:46:53');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('49', '195', '143', '1', NULL, '2008-03-11 21:47:10');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('50', '195', '144', '1', NULL, '2008-03-11 21:47:54');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('51', '195', '146', '1', NULL, '2008-03-11 21:48:13');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('52', '195', '147', '1', NULL, '2008-03-11 21:49:39');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('53', '195', '148', '1', NULL, '2008-03-11 21:54:05');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('54', '195', '149', '1', NULL, '2008-03-11 21:54:28');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('55', '195', '150', '1', NULL, '2008-03-11 21:55:14');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('56', '195', '151', '1', NULL, '2008-03-11 21:55:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('57', '195', '152', '1', NULL, '2008-03-11 21:56:00');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('58', '195', '153', '1', NULL, '2008-03-11 21:56:20');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('59', '195', '154', '1', NULL, '2008-03-11 21:56:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('60', '195', '155', '1', NULL, '2008-03-11 21:56:56');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('61', '195', '156', '1', NULL, '2008-03-11 21:57:16');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('63', '195', '158', '1', NULL, '2008-03-11 21:57:48');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('64', '195', '159', '1', NULL, '2008-03-11 21:58:02');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('65', '195', '160', '1', NULL, '2008-03-11 21:58:16');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('66', '195', '161', '1', NULL, '2008-03-11 21:58:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('67', '195', '162', '1', NULL, '2008-03-11 21:58:48');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('68', '195', '164', '1', NULL, '2008-03-11 21:59:12');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('69', '195', '165', '1', NULL, '2008-03-11 21:59:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('70', '195', '166', '1', NULL, '2008-03-11 21:59:52');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('71', '195', '167', '1', NULL, '2008-03-11 22:00:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('72', '195', '168', '1', NULL, '2008-03-11 22:00:54');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('73', '195', '169', '1', NULL, '2008-03-11 22:01:45');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('75', '195', '171', '1', NULL, '2008-03-11 22:01:45');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('76', '195', '172', '1', NULL, '2008-03-11 22:01:45');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('77', '195', '173', '1', NULL, '2008-03-11 22:01:46');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('78', '195', '174', '1', NULL, '2008-03-11 22:01:47');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('79', '195', '175', '1', NULL, '2008-03-11 22:01:48');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('80', '195', '176', '1', NULL, '2008-03-11 22:01:49');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('81', '195', '177', '1', NULL, '2008-03-11 22:01:50');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('82', '195', '178', '1', NULL, '2008-03-11 22:01:51');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('83', '195', '179', '1', NULL, '2008-03-11 22:01:52');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('84', '195', '180', '1', NULL, '2008-03-11 22:07:41');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('85', '195', '181', '1', NULL, '2008-03-11 22:07:57');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('86', '223', '0', '2', NULL, '2008-03-11 22:11:55');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('87', '30', '0', '2', NULL, '2008-03-11 22:14:10');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('88', '31', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('89', '32', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('90', '33', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('91', '34', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('92', '35', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('93', '36', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('94', '37', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('95', '38', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('96', '39', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('97', '40', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('98', '41', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('99', '42', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('100', '43', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('101', '44', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('102', '45', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('103', '46', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('104', '47', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('105', '48', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('106', '49', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('107', '50', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('108', '51', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('109', '52', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('110', '53', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('111', '54', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('112', '55', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('113', '56', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('114', '57', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('115', '58', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('116', '59', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('117', '60', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('118', '61', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('119', '62', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('120', '63', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('121', '64', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('122', '65', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('123', '66', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('124', '67', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('125', '68', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('126', '69', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('127', '70', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('128', '71', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('129', '72', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('130', '73', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('131', '74', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('132', '75', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('133', '76', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('134', '77', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('135', '78', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('136', '79', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('137', '80', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('138', '81', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('139', '82', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('140', '83', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('141', '84', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('142', '85', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('143', '86', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('144', '87', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('145', '88', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('146', '89', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('147', '90', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('148', '91', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('149', '92', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('150', '93', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('151', '94', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('152', '95', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('153', '96', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('154', '97', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('155', '98', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('156', '99', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('157', '100', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('158', '101', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('159', '102', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('160', '103', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('161', '104', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('162', '105', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('163', '106', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('164', '107', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('165', '108', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('166', '109', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('167', '110', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('168', '111', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('169', '112', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('170', '113', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('171', '114', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('172', '115', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('173', '116', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('174', '117', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('175', '118', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('176', '119', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('177', '120', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('178', '121', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('179', '122', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('180', '123', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('181', '124', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('182', '125', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('183', '126', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('184', '127', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('185', '128', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('186', '129', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('187', '130', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('188', '131', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('189', '132', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('190', '133', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('191', '134', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('192', '135', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('193', '136', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('194', '137', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('195', '138', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('196', '139', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('197', '140', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('198', '141', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('199', '142', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('200', '143', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('201', '144', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('202', '145', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('203', '146', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('204', '147', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('205', '148', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('206', '149', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('207', '150', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('208', '151', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('209', '152', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('210', '153', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('211', '154', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('212', '155', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('213', '156', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('214', '157', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('215', '158', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('216', '159', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('217', '160', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('218', '161', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('219', '162', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('220', '163', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('221', '164', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('222', '165', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('223', '166', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('224', '168', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('225', '169', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('226', '170', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('227', '171', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('228', '172', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('229', '173', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('230', '174', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('231', '175', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('232', '176', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('233', '177', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('234', '178', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('235', '179', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('236', '180', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('237', '181', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('238', '182', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('239', '183', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('240', '184', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('241', '185', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('242', '186', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('243', '187', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('244', '188', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('245', '189', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('246', '190', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('247', '191', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('248', '192', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('249', '193', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('250', '194', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('252', '196', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('253', '197', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('254', '198', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('255', '199', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('256', '200', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('257', '201', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('258', '202', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('259', '203', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('260', '204', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('261', '205', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('262', '206', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('263', '207', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('264', '208', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('265', '209', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('266', '210', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('267', '211', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('268', '212', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('269', '213', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('270', '214', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('271', '215', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('272', '216', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('273', '217', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('274', '218', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('275', '219', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('276', '220', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('277', '221', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('278', '222', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('279', '224', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('280', '225', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('281', '226', '0', '2', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('282', '227', '0', '2', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('283', '228', '0', '2', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('284', '229', '0', '2', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('285', '230', '0', '2', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('286', '231', '0', '2', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('287', '232', '0', '2', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('288', '233', '0', '2', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('289', '234', '0', '2', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('290', '235', '0', '2', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('291', '236', '0', '2', NULL, '2008-03-11 22:29:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('292', '237', '0', '2', NULL, '2008-03-11 22:29:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('293', '238', '0', '2', NULL, '2008-03-11 22:29:45');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('294', '239', '0', '2', NULL, '2008-03-11 22:29:52');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('297', '1', '0', '4', NULL, '2008-03-12 02:04:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('298', '2', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('299', '3', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('300', '4', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('301', '5', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('302', '6', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('303', '7', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('304', '8', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('305', '9', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('306', '10', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('307', '11', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('308', '12', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('309', '13', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('310', '14', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('311', '15', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('312', '16', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('313', '17', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('314', '18', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('315', '19', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('316', '20', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('317', '21', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('318', '22', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('319', '23', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('320', '24', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('321', '25', '0', '4', NULL, '2008-03-11 22:14:10');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('322', '26', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('323', '27', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('324', '28', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('325', '29', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('326', '30', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('327', '31', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('328', '32', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('329', '33', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('330', '34', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('331', '35', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('332', '36', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('333', '37', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('334', '38', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('335', '39', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('336', '40', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('337', '41', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('338', '42', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('339', '43', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('340', '44', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('341', '45', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('342', '46', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('343', '47', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('344', '48', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('345', '49', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('346', '50', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('347', '51', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('348', '52', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('349', '53', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('350', '54', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('351', '55', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('352', '56', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('353', '57', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('354', '58', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('355', '59', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('356', '60', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('357', '61', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('358', '62', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('359', '63', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('360', '64', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('361', '65', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('362', '66', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('363', '67', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('364', '68', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('365', '69', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('366', '70', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('367', '71', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('368', '72', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('369', '73', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('370', '74', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('371', '75', '0', '4', NULL, '2008-03-11 22:14:10');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('372', '76', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('373', '77', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('374', '78', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('375', '79', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('376', '80', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('377', '81', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('378', '82', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('379', '83', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('380', '84', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('381', '85', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('382', '86', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('383', '87', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('384', '88', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('385', '89', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('386', '90', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('387', '91', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('388', '92', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('389', '93', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('390', '94', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('391', '95', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('392', '96', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('393', '97', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('394', '98', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('395', '99', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('396', '100', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('397', '101', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('398', '102', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('399', '103', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('400', '104', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('401', '105', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('402', '106', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('403', '107', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('404', '108', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('405', '109', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('406', '110', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('407', '111', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('408', '112', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('409', '113', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('410', '114', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('411', '115', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('412', '116', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('413', '117', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('414', '118', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('415', '119', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('416', '120', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('417', '121', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('418', '122', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('419', '123', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('420', '124', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('421', '125', '0', '4', NULL, '2008-03-11 22:14:10');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('422', '126', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('423', '127', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('424', '128', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('425', '129', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('426', '130', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('427', '131', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('428', '132', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('429', '133', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('430', '134', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('431', '135', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('432', '136', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('433', '137', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('434', '138', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('435', '139', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('436', '140', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('437', '141', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('438', '142', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('439', '143', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('440', '144', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('441', '145', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('442', '146', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('443', '147', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('444', '148', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('445', '149', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('446', '150', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('447', '151', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('448', '152', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('449', '153', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('450', '154', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('451', '155', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('452', '156', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('453', '157', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('454', '158', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('455', '159', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('456', '160', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('457', '161', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('458', '162', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('459', '163', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('460', '164', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('461', '165', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('462', '166', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('463', '167', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('464', '168', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('465', '169', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('466', '170', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('467', '171', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('468', '172', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('469', '173', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('470', '174', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('471', '175', '0', '4', NULL, '2008-03-11 22:14:10');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('472', '176', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('473', '177', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('474', '178', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('475', '179', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('476', '180', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('477', '181', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('478', '182', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('479', '183', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('480', '184', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('481', '185', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('482', '186', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('483', '187', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('484', '188', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('485', '189', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('486', '190', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('487', '191', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('488', '192', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('489', '193', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('490', '194', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('491', '195', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('492', '196', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('493', '197', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('494', '198', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('495', '199', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('496', '200', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('497', '201', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('498', '202', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('499', '203', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('500', '204', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('501', '205', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('502', '206', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('503', '207', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('504', '208', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('505', '209', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('506', '210', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('507', '211', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('508', '212', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('509', '213', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('510', '214', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('511', '215', '0', '4', NULL, '2008-03-11 22:14:10');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('512', '216', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('513', '217', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('514', '218', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('515', '219', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('516', '220', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('517', '221', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('518', '222', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('519', '223', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('520', '224', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('521', '225', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('522', '226', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('523', '227', '0', '4', NULL, '2008-03-11 01:16:29');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('524', '228', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('525', '229', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('526', '230', '0', '4', NULL, '2008-03-11 01:16:30');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('527', '231', '0', '4', NULL, '2008-03-11 01:16:31');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('528', '232', '0', '4', NULL, '2008-03-11 01:16:32');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('529', '233', '0', '4', NULL, '2008-03-11 01:16:33');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('530', '234', '0', '4', NULL, '2008-03-11 01:16:34');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('531', '235', '0', '4', NULL, '2008-03-11 01:16:35');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('532', '236', '0', '4', NULL, '2008-03-11 01:16:36');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('533', '237', '0', '4', NULL, '2008-03-11 01:16:37');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('534', '238', '0', '4', NULL, '2008-03-11 01:16:38');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('536', '195', '157', '3', NULL, '2008-10-10 05:19:05');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('537', '195', '138', '1', NULL, '2008-10-10 05:20:15');
