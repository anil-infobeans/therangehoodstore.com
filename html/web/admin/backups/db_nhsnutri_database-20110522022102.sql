# osCommerce, Open Source E-Commerce Solutions
# http://www.oscommerce.com
#
# Database Backup For Nutritional Health Science
# Copyright (c) 2011 Nutritional Health Science
#
# Database: nhsnutri_database
# Database Server: localhost
#
# Backup Date: 05/22/2011 02:21:02

drop table if exists activa_modulo;
create table activa_modulo (
  id_activa_mod int(10) not null auto_increment,
  name_activa_modulo varchar(200) not null ,
  check_activa_modulo tinyint(1) default '0' not null ,
  PRIMARY KEY (id_activa_mod)
);

insert into activa_modulo (id_activa_mod, name_activa_modulo, check_activa_modulo) values ('1', 'module_news', '1');
insert into activa_modulo (id_activa_mod, name_activa_modulo, check_activa_modulo) values ('2', 'module_events', '1');
insert into activa_modulo (id_activa_mod, name_activa_modulo, check_activa_modulo) values ('3', 'module_promotions', '1');
insert into activa_modulo (id_activa_mod, name_activa_modulo, check_activa_modulo) values ('4', 'module_gallery', '1');
insert into activa_modulo (id_activa_mod, name_activa_modulo, check_activa_modulo) values ('5', 'module_private', '1');
insert into activa_modulo (id_activa_mod, name_activa_modulo, check_activa_modulo) values ('6', 'module_page_destacadas', '1');
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
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('256', '241', 'm', 'apolomultimedia', '', 'Linda', 'Posch', '4611 Forest Place', NULL, '30041', 'Cumming', '', '223', '19');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('257', '242', 'f', '', '', 'Linda', 'Posch', '4611 Forest Place', NULL, '30041', 'Cumming', '', '223', '19');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id) values ('258', '241', '', NULL, NULL, 'guido', 'ramirez', '308 Mozart Ave E', NULL, '56001', 'Mankato', '', '223', '34');
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

drop table if exists cache;
create table cache (
  cache_id varchar(32) not null ,
  cache_language_id tinyint(1) default '0' not null ,
  cache_name varchar(255) not null ,
  cache_data mediumtext not null ,
  cache_global tinyint(1) default '1' not null ,
  cache_gzip tinyint(1) default '1' not null ,
  cache_method varchar(20) default 'RETURN' not null ,
  cache_date datetime not null ,
  cache_expires datetime not null ,
  PRIMARY KEY (cache_id, cache_language_id),
  KEY cache_id (cache_id),
  KEY cache_language_id (cache_language_id),
  KEY cache_global (cache_global)
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

insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('463', '', '0', '1', '2011-05-11 02:34:17', '2011-05-12 10:02:08');
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('472', '', '0', '0', '2011-05-11 14:00:26', NULL);
drop table if exists categories_description;
create table categories_description (
  categories_id int(11) default '0' not null ,
  language_id int(11) default '1' not null ,
  categories_name varchar(32) not null ,
  PRIMARY KEY (categories_id, language_id),
  KEY idx_categories_name (categories_name)
);

insert into categories_description (categories_id, language_id, categories_name) values ('463', '1', 'Product PACS');
insert into categories_description (categories_id, language_id, categories_name) values ('472', '1', 'Products');
drop table if exists comments;
create table comments (
  id_comments int(11) not null auto_increment,
  name_comments varchar(200) not null ,
  website_comment varchar(200) ,
  email_comments varchar(200) not null ,
  date_comments varchar(200) not null ,
  check_comments tinyint(1) default '0' not null ,
  id_news int(11) ,
  id_events int(11) ,
  id_promotion int(11) ,
  id bigint(20) ,
  PRIMARY KEY (id_comments)
);

insert into comments (id_comments, name_comments, website_comment, email_comments, date_comments, check_comments, id_news, id_events, id_promotion, id) values ('3', 'Sam Park', NULL, 'gilmarcito@test.com', 'February 16, 2011, 8:44 pm', '1', '5', NULL, NULL, NULL);
insert into comments (id_comments, name_comments, website_comment, email_comments, date_comments, check_comments, id_news, id_events, id_promotion, id) values ('4', 'frenky', 'http://magicfish.net', 'goodlucker85@hotmail.com', 'May 8, 2011, 4:47 am', '0', '4', NULL, NULL, NULL);
insert into comments (id_comments, name_comments, website_comment, email_comments, date_comments, check_comments, id_news, id_events, id_promotion, id) values ('5', 'ttt', NULL, 'ttt@asa.com', 'May 20, 2011, 1:25 am', '0', '5', NULL, NULL, NULL);
insert into comments (id_comments, name_comments, website_comment, email_comments, date_comments, check_comments, id_news, id_events, id_promotion, id) values ('1', 'Nahum Martell', '', 'testeando@testeo.com', 'December 7, 2009, 10:55 pm', '1', '3', '0', '0', '0');
insert into comments (id_comments, name_comments, website_comment, email_comments, date_comments, check_comments, id_news, id_events, id_promotion, id) values ('2', 'Javier rivadeneyra', 'http://www.apolomultimedia.com', 'testeooo@probando.com', 'December 7, 2009, 10:59 pm', '1', '0', '3', '0', '0');
drop table if exists comments_description;
create table comments_description (
  id_comments_description bigint(20) not null auto_increment,
  id_comments int(11) default '0' not null ,
  text_comments text not null ,
  id_language int(11) default '0' not null ,
  PRIMARY KEY (id_comments_description)
);

insert into comments_description (id_comments_description, id_comments, text_comments, id_language) values ('3', '3', 'placerat quis, scelerisque non lorem. Donec pretium dictum dui vitae consequat. Donec sed risus eu velit sagittis commodo. In scelerisque commodo enim vitae faucibus. Duis id sem risus. Integer id consectetur ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus dapibus nisl mi. Sed ipsum odio, mattis vitae rutrum sit amet, pretium at mauris. In mollis ornare viverra. Suspendisse ac tellus nibh, hendrerit consectetur dui.', '1');
insert into comments_description (id_comments_description, id_comments, text_comments, id_language) values ('4', '4', 'RksO09 http://gdjI3b7VaWpU1m0dGpvjRrcu9Fk.com', '1');
insert into comments_description (id_comments_description, id_comments, text_comments, id_language) values ('5', '5', 'adsad', '1');
insert into comments_description (id_comments_description, id_comments, text_comments, id_language) values ('1', '1', 'placerat quis, scelerisque non lorem. Donec pretium dictum dui vitae consequat. Donec sed risus eu velit sagittis commodo. In scelerisque commodo enim vitae faucibus. Duis id sem risus. Integer id consectetur ligula. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus dapibus nisl mi. Sed ipsum odio, mattis vitae rutrum sit amet, pretium at mauris. In mollis ornare viverra. Suspendisse ac tellus nibh, hendrerit consectetur dui.', '2');
insert into comments_description (id_comments_description, id_comments, text_comments, id_language) values ('2', '2', 'id libero congue ac viverra elit venenatis. Donec cursus blandit sagittis. Proin interdum sollicitudin arcu, eget faucibus nisl porttitor ultrices. Aliquam vulputate purus nec turpis aliquam tempor. Donec interdum enim ipsum, ut dictum eros. Aliquam erat lectus, malesuada eget feugiat aliquet, posuere et mi. Nunc pretium feugiat eros, et iaculis erat molestie sit amet. Suspendisse varius felis nec lacus feugiat lacinia nec quis lectus. Etiam urna nisi, commodo a rutrum vitae, interdum vitae magna', '1');
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

insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('1', 'Nombre de la Tienda', 'STORE_NAME', 'Nutritional Health Science', 'Nombre de la Tienda', '1', '1', '2011-05-11 11:58:05', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('2', 'Nombre del propietario de la Tienda', 'STORE_OWNER', 'Nutritional Health Science', 'Nombre del propietario de la Tienda', '1', '2', '2011-05-11 11:58:10', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('3', 'Email del propietario', 'STORE_OWNER_EMAIL_ADDRESS', 'contact@apolomultimedia.com', 'Email del propietario', '1', '3', '2011-05-12 00:11:01', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('4', 'E-Mail de', 'EMAIL_FROM', '\"Nutritional Health Science\" <contact@apolomultimedia.com>', 'El email usado en envios de email', '1', '4', '2011-05-12 00:11:12', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('5', 'Pais', 'STORE_COUNTRY', '223', 'La tienda esta localizada en<br><br><b>Nota: Por favor, recuerde actualizar la Zona de la Tienda</b>', '1', '6', '2011-05-11 22:50:27', '2005-07-07 10:38:22', 'tep_get_country_name', 'tep_cfg_pull_down_country_list(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('6', 'Zona', 'STORE_ZONE', '', 'La zona de mi Tienda esta localizada en', '1', '7', '2010-10-13 10:29:36', '2005-07-07 10:38:22', 'tep_cfg_get_zone_name', 'tep_cfg_pull_down_zone_list(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('7', 'Orden de los listados de productos', 'EXPECTED_PRODUCTS_SORT', 'desc', 'Este es el orden mostrado en los listados de productos', '1', '8', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'asc\', \'desc\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('8', 'Orden de los listados de productos - adicional', 'EXPECTED_PRODUCTS_FIELD', 'date_expected', 'ordena por fecha de introduccion o por nombre de producto', '1', '9', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'products_name\', \'date_expected\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('9', 'Cargar la Moneda por lenguaje', 'USE_DEFAULT_LANGUAGE_CURRENCY', 'false', 'Cargar la Moneda por lenguaje', '1', '10', '2008-03-11 19:10:07', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('10', 'Enviar emails extras', 'SEND_EXTRA_ORDER_EMAILS_TO', 'contact@apolomultimedia.com', 'Enviar emails extras a las siguientos e-mails, en el siguiente formato: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', '1', '11', '2011-05-12 00:11:17', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('11', 'Usar URLS seguras (aun en DESARROLLO)', 'SEARCH_ENGINE_FRIENDLY_URLS', 'false', 'Usar URLS seguras (aun en DESARROLLO)', '1', '12', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('12', 'Mostrar cesta despues de agregar producto en cesta', 'DISPLAY_CART', 'true', 'Mostrar cesta despues de agregar producto en cesta', '1', '14', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('13', 'Permitir a un invitado usar el modulo de \"Cuentale a un Amigo\"', 'ALLOW_GUEST_TO_TELL_A_FRIEND', 'true', 'Permitir a un invitado usar el modulo de \"Cuentale a un Amigo\"', '1', '15', '2008-03-31 18:45:40', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('14', 'Operador de Busqueda', 'ADVANCED_SEARCH_DEFAULT_OPERATOR', 'and', 'Operador de Busqueda', '1', '17', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'and\', \'or\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('15', 'Direccion y Telefono de la Tienda', 'STORE_NAME_ADDRESS', 'NUTRITIONAL HEALTH SCIENCE
4611 forest place
Cumming, GA 30041', 'Direccion y Telefono de la Tienda', '1', '18', '2011-05-11 22:51:36', '2005-07-07 10:38:22', NULL, 'tep_cfg_textarea(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('16', 'Mostrar la cantidad de productos por categoria', 'SHOW_COUNTS', 'true', 'Mostrar la cantidad de productos por categoria', '1', '19', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('17', 'Impuestos decimales', 'TAX_DECIMAL_PLACES', '0', 'Impuestos decimales', '1', '20', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('18', 'Mostrar Precios con Impuestos', 'DISPLAY_PRICE_WITH_TAX', 'true', 'Mostrar Precios con Impuestos', '1', '21', '2010-05-06 10:44:07', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('19', 'Nombres', 'ENTRY_FIRST_NAME_MIN_LENGTH', '2', 'Cantidad m?nima de caracteres', '2', '1', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('20', 'Apellidos', 'ENTRY_LAST_NAME_MIN_LENGTH', '2', 'Cantidad m?nima de caracteres', '2', '2', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('21', 'Fecha de Nacimiento', 'ENTRY_DOB_MIN_LENGTH', '10', 'Cantidad m?nima de caracteres', '2', '3', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('22', 'E-Mail', 'ENTRY_EMAIL_ADDRESS_MIN_LENGTH', '6', 'Cantidad m?nima de caracteres', '2', '4', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('23', 'Direcci?n', 'ENTRY_STREET_ADDRESS_MIN_LENGTH', '5', 'Cantidad m?nima de caracteres', '2', '5', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('24', 'Empresa', 'ENTRY_COMPANY_MIN_LENGTH', '2', 'Cantidad m?nima de caracteres', '2', '6', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('25', 'C?digo Postal', 'ENTRY_POSTCODE_MIN_LENGTH', '4', 'Cantidad m?nima de caracteres', '2', '7', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('26', 'Ciudad', 'ENTRY_CITY_MIN_LENGTH', '3', 'Cantidad m?nima de caracteres', '2', '8', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('27', 'Estado', 'ENTRY_STATE_MIN_LENGTH', '2', 'Cantidad m?nima de caracteres', '2', '9', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('28', 'Tel?fono', 'ENTRY_TELEPHONE_MIN_LENGTH', '3', 'Cantidad m?nima de caracteres', '2', '10', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('29', 'Clave', 'ENTRY_PASSWORD_MIN_LENGTH', '5', 'Cantidad m?nima de caracteres', '2', '11', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('30', 'Nombre del Propietario de la Tarjeta de Cr?dito', 'CC_OWNER_MIN_LENGTH', '3', 'Cantidad m?nima de caracteres', '2', '12', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('31', 'N?mero de la Tarjeta de Cr?dito', 'CC_NUMBER_MIN_LENGTH', '10', 'Cantidad m?nima de caracteres', '2', '13', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('32', 'Texto de Comentarios', 'REVIEW_TEXT_MIN_LENGTH', '50', 'Cantidad m?nima de caracteres', '2', '14', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('33', 'M?s Vendidos', 'MIN_DISPLAY_BESTSELLERS', '1', 'Cantidad m?nima de \"M?s Vendidos\"', '2', '15', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('34', 'Tambien Compraron', 'MIN_DISPLAY_ALSO_PURCHASED', '1', 'Cantidad m?nima de \"Tambien Compraron\"', '2', '16', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('35', 'Libro de Direcciones por Cliente', 'MAX_ADDRESS_BOOK_ENTRIES', '5', 'Maximo n?mero de direcciones que un cliente puede tener', '3', '1', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('36', 'Resultados de Busqueda', 'MAX_DISPLAY_SEARCH_RESULTS', '6', 'Cantidad de productos a mostrarse', '3', '2', '2006-08-10 12:01:24', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('37', 'Links', 'MAX_DISPLAY_PAGE_LINKS', '5', 'Hasta que n?mero de link se mostrar', '3', '3', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('38', 'Productos en Oferta', 'MAX_DISPLAY_SPECIAL_PRODUCTS', '6', 'M?ximo n?mero de \"Productos en Oferta\" a mostrarse', '3', '4', '2006-08-10 12:01:28', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('39', 'Nuevos Productos', 'MAX_DISPLAY_NEW_PRODUCTS', '6', 'M?ximo n?mero de \"Nuevos Productos\" a mostrarse', '3', '5', '2008-05-05 12:29:04', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('40', 'Productos Por Venir', 'MAX_DISPLAY_UPCOMING_PRODUCTS', '10', 'M?ximo n?mero de \"Productos Por Venir\" a mostrarse', '3', '6', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('41', 'Lista de Fabricantes', 'MAX_DISPLAY_MANUFACTURERS_IN_A_LIST', '0', 'Cuando el n?mero de fabricantes exceda este n?mero, un combo box ser? mostrado en su lugar', '3', '7', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('42', 'Columnas de la Lista de Fabricantes', 'MAX_MANUFACTURERS_LIST', '1', 'Cuando el valor sea \"1\" sera una sola columna, si \"2\" ser?n 2 columnas', '3', '7', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('43', 'Tama?o de caracteres de la Lista de Fabricantes', 'MAX_DISPLAY_MANUFACTURER_NAME_LEN', '15', 'Cantidad m?xima de caracteres de la Lista de Fabricantes', '3', '8', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('44', 'Nuevos Comentarios', 'MAX_DISPLAY_NEW_REVIEWS', '6', 'M?ximo n?mero de comentarios a mostrarse', '3', '9', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('45', 'Selecci?n al azar de \"Comentarios\"', 'MAX_RANDOM_SELECT_REVIEWS', '6', 'N?mero de registros de \"Comentarios\" a mostrarse al azar', '3', '10', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('46', 'Selecci?n al azar de \"Nuevos Productos\"', 'MAX_RANDOM_SELECT_NEW', '6', 'N?mero de registros de \"Nuevos Productos\" a mostrarse al azar', '3', '11', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('47', 'Selecci?n al azar de \"Productos en Oferta\"', 'MAX_RANDOM_SELECT_SPECIALS', '6', 'N?mero de registros de \"Productos en Oferta\" a mostrarse al azar', '3', '12', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('48', 'Listado de sub-categorias por columna', 'MAX_DISPLAY_CATEGORIES_PER_ROW', '3', 'N?mero de columnas', '3', '13', '2008-04-21 20:27:33', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('49', 'Listado de \"Nuevos Productos\"', 'MAX_DISPLAY_PRODUCTS_NEW', '6', 'N?mero de productos a mostrarse en la p?gina de Nuevos Productos', '3', '14', '2006-08-10 12:01:38', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('50', 'M?s Vendidos', 'MAX_DISPLAY_BESTSELLERS', '6', 'Cantidad m?xima de \"M?s Vendidos\"', '3', '15', '2005-07-11 18:48:14', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('51', 'Tambien Compraron', 'MAX_DISPLAY_ALSO_PURCHASED', '6', 'Cantidad m?xima de \"Tambien Compraron\"', '3', '16', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('52', 'Caja de historia de pedidos del cliente', 'MAX_DISPLAY_PRODUCTS_IN_ORDER_HISTORY_BOX', '6', 'M?ximo n?mero de pedidos a mostrarse en la Caja de historia de pedidos del cliente', '3', '17', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('53', 'Historia de Pedidos', 'MAX_DISPLAY_ORDER_HISTORY', '6', 'Cantidad m?xima del historial de pedidos por p?gina', '3', '18', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('54', 'Imagen Peque?a - Ancho', 'SMALL_IMAGE_WIDTH', '220', 'medida en pixeles', '4', '1', '2010-10-05 18:19:47', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('55', 'Imagen Peque?a - Alto', 'SMALL_IMAGE_HEIGHT', '223', 'medida en pixeles', '4', '2', '2011-05-11 12:10:54', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('56', 'Imagen Encabezado - Ancho', 'HEADING_IMAGE_WIDTH', '0', 'medida en pixeles', '4', '3', '2005-07-07 11:40:02', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('57', 'Imagen Encabezado - Alto', 'HEADING_IMAGE_HEIGHT', '1', 'medida en pixeles', '4', '4', '2005-07-07 11:40:07', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('58', 'Imagen Subcategoria - Ancho', 'SUBCATEGORY_IMAGE_WIDTH', '0', 'medida en pixeles', '4', '5', '2005-07-07 16:11:36', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('59', 'Imagen Subcategoria - Alto', 'SUBCATEGORY_IMAGE_HEIGHT', '1', 'medida en pixeles', '4', '6', '2005-07-07 16:11:42', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('60', 'Calcular tama?o de imagen cargada', 'CONFIG_CALCULATE_IMAGE_SIZE', 'true', 'Calcular tama?o de imagen cargada?', '4', '7', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('61', 'Imagen Requerida', 'IMAGE_REQUIRED', 'true', 'Imagen Requerida?', '4', '8', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('62', 'Sexo', 'ACCOUNT_GENDER', 'false', 'Muestra el sexo en la cuenta del cliente', '5', '1', '2011-05-19 23:08:52', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('63', 'Fecha de Nacimiento', 'ACCOUNT_DOB', 'false', 'Muestra la fecha de nacimiento en la cuenta del cliente', '5', '2', '2011-05-19 23:08:57', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('64', 'Empresa', 'ACCOUNT_COMPANY', 'false', 'Muestra la Empresa en la cuenta del cliente', '5', '3', '2011-05-19 23:09:01', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('65', 'Suburbio', 'ACCOUNT_SUBURB', 'false', 'Muestra Suburbio en la cuenta del cliente', '5', '4', '2008-03-11 03:02:01', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('66', 'Estado', 'ACCOUNT_STATE', 'true', 'Muestra el Estado en la cuenta del cliente', '5', '5', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('67', 'Modulos de Pago instalados', 'MODULE_PAYMENT_INSTALLED', 'linkpoint_api.php;moneyorder.php;paypal.php', 'Listado de los modulos de pago instalados separados por punto y coma - no necesita editarse - (Ejemplo: cc.php;cod.php;paypal.php)', '6', '0', '2011-05-20 20:44:30', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('68', 'Modulos de Costos instalados', 'MODULE_ORDER_TOTAL_INSTALLED', 'ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php', 'Listado de los modulos de costos instalados separados por punto y coma - no necesita editarse -  (Ejemplo: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)', '6', '0', '2008-03-11 19:29:25', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('69', 'Modulos de Envio instalados', 'MODULE_SHIPPING_INSTALLED', 'usps.php', 'Listado de los modulos de envio instalados separados por punto y coma - no necesita editarse -  (Ejemplo: ups.php;flat.php;item.php)', '6', '0', '2011-05-21 10:52:05', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('158', 'Descripci?n de producto - B?sico / Avanzado?', 'HTML_AREA_WYSIWYG_BASIC_PD', 'Basic', 'Funciones B?sicas - carga r?pida<br>Funciones Avanzadas - carga lenta', '112', '10', '2008-04-21 15:39:12', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(\'Basic\', \'Advanced\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('159', 'Ancho - Caja de texto - Descripci?n de Producto', 'HTML_AREA_WYSIWYG_WIDTH', '505', 'medida en pixeles (valor por defecto: 505)', '112', '15', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('160', 'Alto - Caja de texto - Descripci?n de Producto', 'HTML_AREA_WYSIWYG_HEIGHT', '240', 'medida en pixeles (valor por defecto: 240)', '112', '19', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('161', 'WYSIWYG Area en los emails de los clientes', 'HTML_AREA_WYSIWYG_DISABLE_EMAIL', 'Enable', 'Use WYSIWYG Area en los emails de los clientes', '112', '20', '2007-01-03 07:32:11', '2007-01-03 07:32:11', NULL, 'tep_cfg_select_option(array(\'Enable\', \'Disable\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('156', 'Mostrar nombre de producto o modelo en la barra de navegaci?n', '_CFG_SHOW_PRODUCTS_NAME_INNAV', '1', 'true-muestra nombre / false-muestra modelo', '1', '110', '2006-12-28 14:21:13', '2006-01-03 01:42:29', NULL, 'tep_cfg_select_option(array(true, false),');
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
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('98', 'Pa?s de Origen', 'SHIPPING_ORIGIN_COUNTRY', '223', 'Seleccionar el pa?s de origen desde el cual se har?n los envios', '7', '1', '2009-09-24 08:39:52', '2005-07-07 10:38:22', 'tep_get_country_name', 'tep_cfg_pull_down_country_list(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('99', 'C?digo Postal', 'SHIPPING_ORIGIN_ZIP', '30041', 'Ingresa el c?digo postal de la tienda', '7', '2', '2011-05-21 12:01:26', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('100', 'Ingresar el m?ximo peso que podr?s enviar', 'SHIPPING_MAX_WEIGHT', '50', 'Los cargadores tienen un l?mite de peso por cada envio', '7', '3', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('101', 'Tara', 'SHIPPING_BOX_WEIGHT', '0', 'Cual es el peso promedio de envio?', '7', '4', '2011-05-21 12:00:40', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('102', 'Paquetes grandes - porcentaje de incremento', 'SHIPPING_BOX_PADDING', '0', 'Para 10% ingresar 10', '7', '5', '2011-05-21 12:00:35', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('103', 'Mostrar la imagen del producto', 'PRODUCT_LIST_IMAGE', '1', 'Deseas mostrar la imagen del producto?', '8', '1', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('104', 'Mostrar el fabricante del producto', 'PRODUCT_LIST_MANUFACTURER', '0', 'Deseas mostrar el fabricante del producto?', '8', '2', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('105', 'Mostrar el modelo del producto', 'PRODUCT_LIST_MODEL', '0', 'Deseas mostrar el modelo del producto?', '8', '3', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('106', 'Mostrar el nombre del producto', 'PRODUCT_LIST_NAME', '2', 'Deseas mostrar el nombre del producto?', '8', '4', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('107', 'Mostrar el precio del producto', 'PRODUCT_LIST_PRICE', '3', 'Deseas mostrar el nombre del producto?', '8', '5', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('108', 'Mostrar la cantidad por producto', 'PRODUCT_LIST_QUANTITY', '0', 'Deseas mostrar la cantidad por producto?', '8', '6', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('109', 'Mostrar peso del producto', 'PRODUCT_LIST_WEIGHT', '0', 'Deseas mostrar el peso del producto?', '8', '7', '2006-12-29 11:38:12', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('110', 'mostrar columna de COMPRA', 'PRODUCT_LIST_BUY_NOW', '4', 'Deseas mostrar la columna de COMPRA?', '8', '8', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('111', 'Mostrar filtrado por categoria/fabricante (0=disable; 1=enable)', 'PRODUCT_LIST_FILTER', '1', 'Deseas mostrar los productos por filtrado por categoria/fabricante?', '8', '9', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('112', 'Ubicaci?n de la barra de navegacion (1-arriba, 2-abajo, 3-ambos)', 'PREV_NEXT_BAR_LOCATION', '3', 'cambiar la ubicaci?n a (1-arriba, 2-abajo, 3-ambos)', '8', '10', '2006-12-28 19:27:16', '2005-07-07 10:38:22', NULL, NULL);
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
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('127', 'Use MIME HTML When Sending Emails', 'EMAIL_USE_HTML', 'true', 'Send e-mails in HTML format', '12', '3', '2010-10-25 11:12:20', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
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
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('143', 'Imagen Producto - Ancho', 'PRODUCT_IMAGE_WIDTH', '358', 'medida en pixeles', '4', NULL, '2011-05-11 12:09:32', '2006-12-01 12:48:06', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('144', 'Imagen Producto - Alto', 'PRODUCT_IMAGE_HEIGHT', '365', 'medida en pixeles', '4', NULL, '2011-05-11 12:09:41', '2006-12-01 12:48:35', NULL, NULL);
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
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('223', 'E-Mail Address', 'MODULE_PAYMENT_PAYPAL_ID', 'info@microhealthsolutions.com', 'The e-mail address to use for the PayPal service', '6', '4', NULL, '2008-02-06 19:00:52', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('224', 'Transaction Currency', 'MODULE_PAYMENT_PAYPAL_CURRENCY', 'Selected Currency', 'The currency to use for credit card transactions', '6', '6', NULL, '2008-02-06 19:00:52', NULL, 'tep_cfg_select_option(array(\'Selected Currency\',\'Only USD\',\'Only CAD\',\'Only EUR\',\'Only GBP\',\'Only JPY\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('225', 'Sort order of display.', 'MODULE_PAYMENT_PAYPAL_SORT_ORDER', '2', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2008-02-06 19:00:52', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('226', 'Payment Zone', 'MODULE_PAYMENT_PAYPAL_ZONE', '1', 'If a zone is selected, only enable this payment method for that zone.', '6', '2', NULL, '2008-02-06 19:00:52', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('227', 'Set Order Status', 'MODULE_PAYMENT_PAYPAL_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', '6', '0', NULL, '2008-02-06 19:00:52', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('228', 'Mostrar imagenes adicionales en product info', 'DISPLAY_EXTRA_IMAGES', 'true', 'mostrar imagenes adicionales', '1', '87', '2005-11-17 17:20:36', '2005-10-20 17:40:05', '', 'tep_cfg_select_option(array(\'false\', \'true\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('506', 'Last Database Restore', 'DB_LAST_RESTORE', 'db_apolomul_tadatabases-20100623172333.sql', 'Last database restore file', '6', '0', '0000-00-00 00:00:00', '2010-10-05 18:19:20', '', '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('605', 'Payment Zone', 'MODULE_PAYMENT_MONEYORDER_ZONE', '1', 'If a zone is selected, only enable this payment method for that zone.', '6', '2', NULL, '2011-05-20 20:44:03', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('606', 'Set Order Status', 'MODULE_PAYMENT_MONEYORDER_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', '6', '0', NULL, '2011-05-20 20:44:03', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('603', 'Make Payable to:', 'MODULE_PAYMENT_MONEYORDER_PAYTO', 'xxxxxx', 'Who should payments be made payable to?', '6', '1', NULL, '2011-05-20 20:44:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('604', 'Sort order of display.', 'MODULE_PAYMENT_MONEYORDER_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2011-05-20 20:44:03', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('602', 'Enable Check/Money Order Module', 'MODULE_PAYMENT_MONEYORDER_STATUS', 'True', 'Do you want to accept Check/Money Order payments?', '6', '1', NULL, '2011-05-20 20:44:03', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('383', 'Time Zone Offset', 'TIME_ZONE_OFFSET', '+2', 'The time zone difference between your store and the server. Enter +h, 0 or -h where \'h\' is the number of hours. If your store time zone is ahead of the server time zone, use +', '1', '7', '2011-05-11 11:59:24', '0001-01-01 00:00:00', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('384', 'Display Product Dimensions', 'PRODUCT_LIST_DIMENSIONS', '1', 'Do you want to display the Product Dimensions ?(0-No, 1-Yes)', '8', '11', '2009-09-23 18:02:51', '2009-09-23 17:48:19', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('505', 'Installed Modules', '', '', 'This is automatically updated. No need to edit.', '6', '0', NULL, '2010-03-26 19:21:30', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('615', 'Set Order Status', 'MODULE_PAYMENT_LINKPOINT_API_ORDER_STATUS_ID', '0', 'Set the status of orders made with this payment module to this value', '6', '0', NULL, '2011-05-20 20:44:30', 'tep_get_order_status_name', 'tep_cfg_pull_down_order_statuses(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('613', 'Sort order of display.', 'MODULE_PAYMENT_LINKPOINT_API_SORT_ORDER', '0', 'Sort order of display. Lowest is displayed first.', '6', '0', NULL, '2011-05-20 20:44:30', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('614', 'Payment Zone', 'MODULE_PAYMENT_LINKPOINT_API_ZONE', '1', 'If a zone is selected, only enable this payment method for that zone.', '6', '2', NULL, '2011-05-20 20:44:30', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('611', 'LinkPoint server', 'MODULE_PAYMENT_LINKPOINT_API_SERVER', 'secure.linkpt.net', 'LinkPoint secure server', '6', '0', NULL, '2011-05-20 20:44:30', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('612', 'Debugging', 'MODULE_PAYMENT_LINKPOINT_API_DEBUG', 'False', 'Only use for troubleshooting errors.', '6', '0', NULL, '2011-05-20 20:44:30', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('610', 'Authorization Type', 'MODULE_PAYMENT_LINKPOINT_API_AUTHORIZATION_MODE', 'Sale', 'Preauth will reserve the funds on the credit card. Sale will immediately charge the card.', '6', '0', NULL, '2011-05-20 20:44:30', NULL, 'tep_cfg_select_option(array(\'Preauth\', \'Sale\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('609', 'LinkPoint Transaction Mode', 'MODULE_PAYMENT_LINKPOINT_API_TRANSACTION_MODE_RESPONSE', 'Live', '<strong>Live:</strong> Use for live transactions<br /><strong>Test:</strong> Use for test transactions', '6', '0', NULL, '2011-05-20 20:44:30', NULL, 'tep_cfg_select_option(array(\'Live\', \'Test\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('608', 'Store Number', 'MODULE_PAYMENT_LINKPOINT_API_LOGIN', '870063', 'The 6 or 7 digit store number for LinkPoint. For Yourpay accounts you must enter your 10 digit store number.', '6', '0', NULL, '2011-05-20 20:44:30', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('607', 'Enable Linkpoint API module', 'MODULE_PAYMENT_LINKPOINT_API_STATUS', 'True', 'Do you want to accept Linkpoint payments?', '6', '0', NULL, '2011-05-20 20:44:30', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('600', 'Shipping Zone', 'MODULE_SHIPPING_USPS_ZONE', '1', 'If a zone is selected, only enable this shipping method for that zone.', '6', '0', NULL, '2011-05-20 20:43:43', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('598', 'Handling Fee', 'MODULE_SHIPPING_USPS_HANDLING', '0', 'Handling fee for this shipping method.', '6', '0', NULL, '2011-05-20 20:43:43', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('597', 'Enter the USPS Password', 'MODULE_SHIPPING_USPS_PASSWORD', '126GL76IK236', 'See USERID, above.', '6', '0', NULL, '2011-05-20 20:43:43', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('596', 'Enter the USPS User ID', 'MODULE_SHIPPING_USPS_USERID', '113NUTRI4656', 'Enter the USPS USERID assigned to you.', '6', '0', NULL, '2011-05-20 20:43:43', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('595', 'Enable USPS Shipping', 'MODULE_SHIPPING_USPS_STATUS', 'False', 'Do you want to offer USPS shipping?', '6', '0', NULL, '2011-05-20 20:43:43', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('599', 'Tax Class', 'MODULE_SHIPPING_USPS_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', '6', '0', NULL, '2011-05-20 20:43:43', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('601', 'Sort Order', 'MODULE_SHIPPING_USPS_SORT_ORDER', '0', 'Sort order of display.', '6', '0', NULL, '2011-05-20 20:43:43', NULL, NULL);
drop table if exists configuration_group;
create table configuration_group (
  configuration_group_id int(11) not null auto_increment,
  configuration_group_title varchar(64) not null ,
  configuration_group_description varchar(255) not null ,
  sort_order int(5) ,
  visible int(1) default '1' ,
  PRIMARY KEY (configuration_group_id)
);

insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('1', 'Tienda', 'Informaci?n General de la Tienda', '1', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('2', 'Valores M?nimos', 'Valores m?nimos por funciones', '2', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('3', 'Valores M?ximos', 'Valores m?ximos por funciones', '3', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('4', 'Im?genes', 'Parametros de Imagen', '4', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('5', 'Detalles del Cliente', 'Configuraci?n de la cuenta del cliente', '5', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('6', 'Optiones de M?dulo', 'Hidden from configuration', '6', '0');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('7', 'Envio / Empaque', 'Opciones Disponibles de Envio', '7', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('8', 'Listado de Productos', 'Configuraci?n de las opciones del listado de productos', '8', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('9', 'Stock', 'Opcions de configuraci?n de stock', '9', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('10', 'Logging', 'Opcions de configuraci?n de Logging', '10', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('11', 'Cache', 'Opcions de configuraci?n de Cache', '11', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('12', 'Opciones de E-Mail', 'Configuraci?n de E-mail', '12', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('13', 'Descarga', 'Opciones de los productos descargables', '13', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('14', 'Compresi?n GZip', 'Opciones de la compresi?n GZip', '14', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('15', 'Sesiones', 'Opciones de Sesi?n', '15', '1');
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('112', 'WYSIWYG Editor 1.6', 'Opciones de HTMLArea 1.6', '15', '1');
drop table if exists counter;
create table counter (
  startdate char(8) ,
  counter int(12) 
);

insert into counter (startdate, counter) values ('20050707', '665958');
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

insert into customers (customers_id, customers_gender, customers_firstname, customers_lastname, customers_dob, customers_email_address, customers_default_address_id, customers_telephone, customers_fax, customers_password, customers_newsletter, customers_group_id, customers_group_ra, customers_payment_allowed, customers_shipment_allowed) values ('241', 'm', 'Linda', 'Posch', '1975-12-12 00:00:00', 'joeperalta@apolomultimedia.com', '256', '706-265-2372', '', '301a13124a6568e7f6a20756d8ba430e:1b', '0', '1', '', '', '');
insert into customers (customers_id, customers_gender, customers_firstname, customers_lastname, customers_dob, customers_email_address, customers_default_address_id, customers_telephone, customers_fax, customers_password, customers_newsletter, customers_group_id, customers_group_ra, customers_payment_allowed, customers_shipment_allowed) values ('242', 'f', 'Linda', 'Posch', '1964-07-04 00:00:00', 'ezdoc21@bellsouth.net', '257', '706-265-2372', '', '87c6d406544079f974a285a2ccf6f061:b8', '1', '1', '0', '', '');
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

insert into customers_groups (customers_group_id, customers_group_name, customers_group_show_tax, customers_group_tax_exempt, group_payment_allowed, group_shipment_allowed) values ('1', 'Particular', '1', '1', '', '');
drop table if exists customers_groups_tax_rates_exempt;
create table customers_groups_tax_rates_exempt (
  customers_group_id int(11) default '0' not null ,
  tax_rates_id int(11) default '0' not null ,
  PRIMARY KEY (customers_group_id, tax_rates_id)
);

insert into customers_groups_tax_rates_exempt (customers_group_id, tax_rates_id) values ('1', '8');
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
insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications) values ('241', '2011-05-21 21:44:00', '5', '2011-05-12 00:13:16', '2011-05-20 19:31:05', '0');
insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications) values ('242', '2011-05-18 08:40:54', '3', '2011-05-12 09:40:17', NULL, '0');
drop table if exists customers_newsletters;
create table customers_newsletters (
  id_customers_newsletters int(11) not null auto_increment,
  email_customers_newsletters varchar(255) not null ,
  name_customers_newsletters varchar(255) not null ,
  PRIMARY KEY (id_customers_newsletters)
);

drop table if exists eventos;
create table eventos (
  id_eventos int(11) not null auto_increment,
  image_eventos varchar(200) ,
  date_eventos varchar(200) not null ,
  PRIMARY KEY (id_eventos)
);

insert into eventos (id_eventos, image_eventos, date_eventos) values ('5', 'fotolia_151192.jpg', 'May 20, 2011, 12:49 am');
drop table if exists eventos_description;
create table eventos_description (
  id_eventos_description bigint(20) not null auto_increment,
  id_eventos int(11) default '0' not null ,
  title_eventos varchar(200) ,
  content_eventos longtext ,
  id_language int(11) default '0' not null ,
  PRIMARY KEY (id_eventos_description)
);

insert into eventos_description (id_eventos_description, id_eventos, title_eventos, content_eventos, id_language) values ('7', '5', 'testing2', 'testing2', '1');
drop table if exists events;
create table events (
  id_events int(11) not null auto_increment,
  image_events varchar(200) ,
  date_events varchar(200) not null ,
  PRIMARY KEY (id_events)
);

insert into events (id_events, image_events, date_events) values ('4', 'conecto2r.jpg', 'May 20, 2011, 12:48 am');
drop table if exists events_description;
create table events_description (
  id_events_description bigint(20) not null auto_increment,
  id_events int(11) default '0' not null ,
  title_events varchar(200) ,
  content_events longtext ,
  id_language int(11) default '0' not null ,
  PRIMARY KEY (id_events_description)
);

insert into events_description (id_events_description, id_events, title_events, content_events, id_language) values ('7', '4', 'testing', 'testeo', '1');
drop table if exists flash_banner;
create table flash_banner (
  id_flash_banner int(11) not null auto_increment,
  link_flash_banner varchar(200) ,
  PRIMARY KEY (id_flash_banner)
);

insert into flash_banner (id_flash_banner, link_flash_banner) values ('5', 'http://www.apolomultimedia.com/nutritionalhealthscience/adrenal-p-2596.html');
insert into flash_banner (id_flash_banner, link_flash_banner) values ('6', 'http://www.apolomultimedia.com/nutritionalhealthscience/adrenal-p-2596.html');
insert into flash_banner (id_flash_banner, link_flash_banner) values ('7', 'http://www.apolomultimedia.com/nutritionalhealthscience/adrenal-p-2596.html');
insert into flash_banner (id_flash_banner, link_flash_banner) values ('8', 'http://www.apolomultimedia.com/nutritionalhealthscience/adrenal-p-2596.html');
insert into flash_banner (id_flash_banner, link_flash_banner) values ('9', 'http://www.apolomultimedia.com/nutritionalhealthscience/adrenal-p-2596.html');
insert into flash_banner (id_flash_banner, link_flash_banner) values ('10', 'http://www.apolomultimedia.com/nutritionalhealthscience/adrenal-p-2596.html');
insert into flash_banner (id_flash_banner, link_flash_banner) values ('11', 'http://www.apolomultimedia.com/nutritionalhealthscience/adrenal-p-2596.html');
drop table if exists flash_banner_description;
create table flash_banner_description (
  id_flash_banner_description bigint(20) not null auto_increment,
  id_flash_banner int(11) default '0' not null ,
  img_flash_banner varchar(200) ,
  id_language int(11) default '0' not null ,
  PRIMARY KEY (id_flash_banner_description)
);

insert into flash_banner_description (id_flash_banner_description, id_flash_banner, img_flash_banner, id_language) values ('9', '5', 'banner2_1.jpg', '1');
insert into flash_banner_description (id_flash_banner_description, id_flash_banner, img_flash_banner, id_language) values ('10', '6', 'banner3_1.jpg', '1');
insert into flash_banner_description (id_flash_banner_description, id_flash_banner, img_flash_banner, id_language) values ('11', '7', 'banner4_1.jpg', '1');
insert into flash_banner_description (id_flash_banner_description, id_flash_banner, img_flash_banner, id_language) values ('12', '8', 'banner5_1.jpg', '1');
insert into flash_banner_description (id_flash_banner_description, id_flash_banner, img_flash_banner, id_language) values ('13', '9', 'banner6_1.jpg', '1');
insert into flash_banner_description (id_flash_banner_description, id_flash_banner, img_flash_banner, id_language) values ('14', '10', 'banner7_1.jpg', '1');
insert into flash_banner_description (id_flash_banner_description, id_flash_banner, img_flash_banner, id_language) values ('15', '11', 'banner8_1.jpg', '1');
drop table if exists geo_zones;
create table geo_zones (
  geo_zone_id int(11) not null auto_increment,
  geo_zone_name varchar(32) not null ,
  geo_zone_description varchar(255) not null ,
  last_modified datetime ,
  date_added datetime default '0000-00-00 00:00:00' not null ,
  PRIMARY KEY (geo_zone_id)
);

insert into geo_zones (geo_zone_id, geo_zone_name, geo_zone_description, last_modified, date_added) values ('1', 'world', 'world', NULL, '2011-05-20 20:41:34');
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

drop table if exists imgs;
create table imgs (
  id_imgs int(11) not null auto_increment,
  file_imgs varchar(200) not null ,
  PRIMARY KEY (id_imgs)
);

insert into imgs (id_imgs, file_imgs) values ('1', 'test_1_face.jpg');
insert into imgs (id_imgs, file_imgs) values ('4', 'test_4_face.jpg');
insert into imgs (id_imgs, file_imgs) values ('5', 'test_5_face.jpg');
insert into imgs (id_imgs, file_imgs) values ('6', 'test_6_face.jpg');
insert into imgs (id_imgs, file_imgs) values ('7', 'wtest_4_face.jpg');
insert into imgs (id_imgs, file_imgs) values ('8', 'wtest_3_face.jpg');
insert into imgs (id_imgs, file_imgs) values ('26', 'ttest_3_face_1.jpg');
insert into imgs (id_imgs, file_imgs) values ('11', 'wtest_2_face.jpg');
insert into imgs (id_imgs, file_imgs) values ('12', 'wtest_1_face.jpg');
insert into imgs (id_imgs, file_imgs) values ('16', 'test_2_face.jpg');
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

drop table if exists mensajes_enviados;
create table mensajes_enviados (
  id_mensajes_enviados int(11) not null auto_increment,
  id_news int(11) default '0' not null ,
  id_events int(11) default '0' not null ,
  id_promotion int(11) default '0' not null ,
  id_registered_user int(11) not null ,
  PRIMARY KEY (id_mensajes_enviados)
);

insert into mensajes_enviados (id_mensajes_enviados, id_news, id_events, id_promotion, id_registered_user) values ('1', '4', '0', '0', '1');
insert into mensajes_enviados (id_mensajes_enviados, id_news, id_events, id_promotion, id_registered_user) values ('2', '5', '0', '0', '1');
insert into mensajes_enviados (id_mensajes_enviados, id_news, id_events, id_promotion, id_registered_user) values ('3', '0', '4', '0', '1');
insert into mensajes_enviados (id_mensajes_enviados, id_news, id_events, id_promotion, id_registered_user) values ('4', '4', '0', '0', '2');
insert into mensajes_enviados (id_mensajes_enviados, id_news, id_events, id_promotion, id_registered_user) values ('5', '5', '0', '0', '2');
insert into mensajes_enviados (id_mensajes_enviados, id_news, id_events, id_promotion, id_registered_user) values ('6', '0', '4', '0', '2');
drop table if exists mensajes_enviados2;
create table mensajes_enviados2 (
  id_mensajes_enviados int(11) not null auto_increment,
  id_news int(11) default '0' not null ,
  id_eventos int(11) default '0' not null ,
  id_promotion int(11) default '0' not null ,
  id_registered_user int(11) not null ,
  PRIMARY KEY (id_mensajes_enviados)
);

insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('1', '4', '0', '0', '1');
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('2', '5', '0', '0', '1');
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('3', '0', '5', '0', '1');
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('4', '4', '0', '0', '2');
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('5', '5', '0', '0', '2');
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('6', '0', '5', '0', '2');
drop table if exists music;
create table music (
  id_music int(11) not null auto_increment,
  name_music varchar(200) not null ,
  band_music varchar(200) not null ,
  file_music varchar(200) not null ,
  PRIMARY KEY (id_music)
);

insert into music (id_music, name_music, band_music, file_music) values ('1', 'Never let me down', 'Depeche Mode', '(05) depeche mode - never let me down again363.mp3');
insert into music (id_music, name_music, band_music, file_music) values ('2', 'If you leave', 'OMD', '(80\'s) omd- if you leave (pretty in pink soundtrack).mp3');
insert into music (id_music, name_music, band_music, file_music) values ('8', 'going away', 'justin timberlake', 'justin timberlake - going away.mp3');
insert into music (id_music, name_music, band_music, file_music) values ('9', 'breakout', 'sisters', 'swing out sisters- breakout.mp3');
insert into music (id_music, name_music, band_music, file_music) values ('13', 'Violet Hill', 'Colplay', 'colplay - violet hill (corta)(2).mp3');
drop table if exists news;
create table news (
  id_news int(11) not null auto_increment,
  image_news varchar(200) ,
  date_news varchar(200) not null ,
  PRIMARY KEY (id_news)
);

insert into news (id_news, image_news, date_news) values ('4', 'fotolia_1859298.jpg', 'February 15, 2011, 12:39 pm');
insert into news (id_news, image_news, date_news) values ('5', 'Fotolia_4122683_XS.jpg', 'February 15, 2011, 12:39 pm');
drop table if exists news_description;
create table news_description (
  id_news_description bigint(20) not null auto_increment,
  id_news int(11) default '0' not null ,
  title_news varchar(200) ,
  content_news longtext ,
  id_language int(11) default '0' not null ,
  PRIMARY KEY (id_news_description)
);

insert into news_description (id_news_description, id_news, title_news, content_news, id_language) values ('7', '4', 'Title News 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris volutpat porta turpis convallis eleifend. Morbi eu egestas tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris volutpat porta turpis convallis eleifend. Morbi eu egestas tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris volutpat porta turpis convallis eleifend. Morbi eu egestas tellus.</p>', '1');
insert into news_description (id_news_description, id_news, title_news, content_news, id_language) values ('8', '5', 'Title News 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris volutpat porta turpis convallis eleifend. Morbi eu egestas tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris volutpat porta turpis convallis eleifend. Morbi eu egestas tellus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris volutpat porta turpis convallis eleifend. Morbi eu egestas tellus.</p>', '1');
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
insert into newsletters (newsletters_id, title, image, content, module, date_added, date_sent, status, locked) values ('3', 'test2', '', '<p><a href=\"http://www.comtedoever.com/product_info.php?products_id=2592\">http://www.comtedoever.com/product_info.php?products_id=2592</a></p>', 'newsletter', '2010-11-18 02:03:22', NULL, '0', '1');
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

insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('15', '241', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '(507) 933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-12 02:31:37', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('16', '241', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '(507) 933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-05-12 02:38:26', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('17', '241', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '(507) 933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-12 02:39:18', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('18', '241', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '(507) 933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-12 02:42:51', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('19', '241', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '(507) 933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-12 02:45:08', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('20', '242', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'ezdoc21@bellsouth.net', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-05-12 11:44:16', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('21', '241', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '(507) 933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-05-12 11:44:16', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('22', '241', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '(507) 933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-05-12 11:44:35', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('23', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-20 22:19:27', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('24', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-20 22:45:06', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('25', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-20 23:14:24', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('26', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-20 23:16:08', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('27', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-05-20 23:16:38', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('28', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-05-20 23:18:38', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('29', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-20 23:22:10', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('30', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-21 23:39:56', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('31', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-21 23:41:30', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('32', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-21 23:44:17', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('33', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-21 23:53:51', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('34', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-22 00:03:40', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('35', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-22 00:06:15', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('36', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-05-22 00:06:44', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('37', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-05-22 00:07:17', '1', NULL, 'USD', '1.000000');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value) values ('38', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-22 00:13:13', '1', NULL, 'USD', '1.000000');
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

insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('19', '0', '2593', '', 'Adrenalkare', '59.5000', '59.5000', '0.0000', '10');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('17', '0', '2596', '', 'Adrenal Pac', '80.5500', '80.5500', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('18', '16', '2596', '', 'Adrenal Pac', '80.5500', '80.5500', '0.0000', '5');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('20', '0', '2596', '', 'Adrenal Pac', '80.5500', '80.5500', '0.0000', '5');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('21', '0', '2596', '', 'Adrenal Pac', '80.5500', '80.5500', '0.0000', '5');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('22', '20', '2596', '', 'Adrenal Pac', '80.5500', '80.5500', '0.0000', '10');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('23', '21', '2596', '', 'Adrenal Pac', '80.5500', '80.5500', '0.0000', '10');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('24', '22', '2596', '', 'Adrenal Pac', '80.5500', '80.5500', '0.0000', '10');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('25', '23', '2593', '', 'Adrenalkare', '1.0000', '1.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('26', '0', '2593', '', 'Adrenalkare', '1.0000', '1.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('27', '0', '2593', '', 'Adrenalkare', '1.0000', '1.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('28', '0', '2593', '', 'Adrenalkare', '1.0000', '1.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('29', '27', '2593', '', 'Adrenalkare', '1.0000', '1.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('30', '28', '2593', '', 'Adrenalkare', '1.0000', '1.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('31', '0', '2593', '', 'Adrenalkare', '1.0000', '1.0000', '0.0000', '2');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('32', '0', '2593', '', 'Adrenalkare', '59.5000', '59.5000', '0.0000', '6');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('33', '0', '2595', '', 'Whole Food Vitamin C', '29.5000', '29.5000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('34', '0', '2597', '', 'Serrapeptase  Enzymes', '59.0000', '59.0000', '0.0000', '2');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('35', '0', '2597', '', 'Serrapeptase  Enzymes', '59.0000', '59.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('36', '0', '2597', '', 'Serrapeptase  Enzymes', '59.0000', '59.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('37', '0', '2593', '', 'Adrenalkare', '59.5000', '59.5000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('38', '36', '2593', '', 'Adrenalkare', '59.5000', '59.5000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('39', '37', '2594', '', 'Bio-Chelated Minerals', '39.5000', '39.5000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('40', '0', '2597', '', 'Serrapeptase  Enzymes', '59.0000', '59.0000', '0.0000', '1');
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

insert into orders_status (orders_status_id, language_id, orders_status_name) values ('1', '1', 'Pending');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('2', '1', 'Processing');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('3', '1', 'Shipped');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('100', '1', 'Google Noticias');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('101', '1', 'Google Procesando');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('102', '1', 'Google Enviado');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('103', '1', 'Google Devoluci?n');
insert into orders_status (orders_status_id, language_id, orders_status_name) values ('104', '1', 'Google Enviado y Devoluci?n');
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

insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('17', '0', '1', '2011-05-12 02:39:18', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('15', '0', '1', '2011-05-12 02:31:37', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('16', '16', '1', '2011-05-12 02:38:26', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('18', '0', '1', '2011-05-12 02:42:51', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('19', '0', '1', '2011-05-12 02:45:08', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('20', '20', '1', '2011-05-12 11:44:19', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('21', '21', '1', '2011-05-12 11:44:22', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('22', '22', '1', '2011-05-12 11:44:35', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('23', '23', '1', '2011-05-20 22:19:27', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('24', '0', '1', '2011-05-20 22:45:06', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('25', '0', '1', '2011-05-20 23:14:24', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('26', '0', '1', '2011-05-20 23:16:08', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('27', '27', '1', '2011-05-20 23:16:38', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('28', '28', '1', '2011-05-20 23:18:38', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('29', '0', '1', '2011-05-20 23:22:10', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('30', '0', '1', '2011-05-21 23:39:56', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('31', '0', '1', '2011-05-21 23:41:30', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('32', '0', '1', '2011-05-21 23:44:17', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('33', '0', '1', '2011-05-21 23:53:51', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('34', '0', '1', '2011-05-22 00:03:40', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('35', '0', '1', '2011-05-22 00:06:15', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('36', '36', '1', '2011-05-22 00:06:44', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('37', '37', '1', '2011-05-22 00:07:17', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('38', '0', '1', '2011-05-22 00:13:13', '1', '');
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

insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('63', '20', 'Total:', '<b>$805.50</b>', '805.5000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('62', '20', 'Sub-Total:', '$805.50', '805.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('61', '21', 'Sub-Total:', '$805.50', '805.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('60', '0', 'Total:', '<b>$402.75</b>', '402.7500', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('51', '0', 'Sub-Total:', '$80.55', '80.5500', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('52', '0', 'Total:', '<b>$80.55</b>', '80.5500', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('53', '16', 'Sub-Total:', '$402.75', '402.7500', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('54', '16', 'Total:', '<b>$402.75</b>', '402.7500', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('55', '0', 'Sub-Total:', '$595.00', '595.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('56', '0', 'Total:', '<b>$595.00</b>', '595.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('57', '0', 'Sub-Total:', '$402.75', '402.7500', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('58', '0', 'Total:', '<b>$402.75</b>', '402.7500', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('59', '0', 'Sub-Total:', '$402.75', '402.7500', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('64', '21', 'Total:', '<b>$805.50</b>', '805.5000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('65', '22', 'Sub-Total:', '$805.50', '805.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('66', '22', 'Total:', '<b>$805.50</b>', '805.5000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('67', '23', 'Sub-Total:', '$1.00', '1.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('68', '23', 'Total:', '<b>$1.00</b>', '1.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('69', '0', 'Sub-Total:', '$1.00', '1.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('70', '0', 'Total:', '<b>$1.00</b>', '1.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('71', '0', 'Sub-Total:', '$1.00', '1.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('72', '0', 'Flat Rate (Best Way):', '$1.00', '1.0000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('73', '0', 'Total:', '<b>$2.00</b>', '2.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('74', '0', 'Sub-Total:', '$1.00', '1.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('75', '0', 'Flat Rate (Best Way):', '$1.00', '1.0000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('76', '0', 'Total:', '<b>$2.00</b>', '2.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('77', '27', 'Sub-Total:', '$1.00', '1.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('78', '27', 'Flat Rate (Best Way):', '$1.00', '1.0000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('79', '27', 'Total:', '<b>$2.00</b>', '2.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('80', '28', 'Sub-Total:', '$1.00', '1.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('81', '28', 'Flat Rate (Best Way):', '$1.00', '1.0000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('82', '28', 'Total:', '<b>$2.00</b>', '2.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('83', '0', 'Sub-Total:', '$2.00', '2.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('84', '0', 'Flat Rate (Best Way):', '$1.00', '1.0000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('85', '0', 'Total:', '<b>$3.00</b>', '3.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('86', '0', 'Sub-Total:', '$357.00', '357.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('87', '0', 'Total:', '<b>$357.00</b>', '357.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('88', '0', 'Sub-Total:', '$29.50', '29.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('89', '0', 'Total:', '<b>$29.50</b>', '29.5000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('90', '0', 'Sub-Total:', '$118.00', '118.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('91', '0', 'Total:', '<b>$118.00</b>', '118.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('92', '0', 'Sub-Total:', '$59.00', '59.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('93', '0', 'Total:', '<b>$59.00</b>', '59.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('94', '0', 'Sub-Total:', '$59.00', '59.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('95', '0', 'Total:', '<b>$59.00</b>', '59.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('96', '0', 'Sub-Total:', '$59.50', '59.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('97', '0', 'Total:', '<b>$59.50</b>', '59.5000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('98', '36', 'Sub-Total:', '$59.50', '59.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('99', '36', 'Total:', '<b>$59.50</b>', '59.5000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('100', '37', 'Sub-Total:', '$39.50', '39.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('101', '37', 'Total:', '<b>$39.50</b>', '39.5000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('102', '0', 'Sub-Total:', '$59.00', '59.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('103', '0', 'Total:', '<b>$59.00</b>', '59.0000', 'ot_total', '4');
drop table if exists pages;
create table pages (
  pages_id int(11) not null auto_increment,
  pages_name varchar(32) not null ,
  pages_image varchar(64) not null ,
  sort_order int(3) default '0' not null ,
  pages_status tinyint(1) default '0' not null ,
  PRIMARY KEY (pages_id)
);

insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('13', 'about_us', 'ttest_3_detail.jpg', '0', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('2', 'contact_us', 'ttest_3_detail.jpg', '-100', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('11', 'faq', 'ttest_3_detail.jpg', '0', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('12', 'shipping', 'ttest_3_detail.jpg', '0', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('14', 'conditions', 'ttest_3_detail.jpg', '0', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('15', 'privacy', 'ttest_3_detail.jpg', '0', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('16', 'wellcome', '', '0', '0');
drop table if exists pages_description;
create table pages_description (
  pages_id int(11) default '0' not null ,
  language_id int(11) default '0' not null ,
  pages_title varchar(255) not null ,
  pages_body text not null ,
  PRIMARY KEY (pages_id, language_id)
);

insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('1', '1', 'Home Page', 'Place your home page text here...');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('2', '1', 'Contact Us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('1', '2', 'Nosotros', 'Texto aqui');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('2', '2', 'Contactenos', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('1', '4', 'Home Page', 'Vul hier uw eigen tekst in');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('2', '4', 'Contacteer Ons', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('11', '1', 'Faq', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>
<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>
<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>
<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.<BR></P>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('11', '2', 'Preguntas Frecuentes', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>
<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>
<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>
<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.<BR></P>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('12', '1', 'Shipping', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('12', '2', 'Envios / Devoluciones', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('13', '1', 'About us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('13', '2', 'Nosotros', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('14', '1', 'Conditions', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('14', '2', 'Condiciones', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('15', '1', 'Privacy', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('15', '2', 'Confidencialidad', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('16', '1', 'Soon available', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc nisi enim, vestibulum non hendrerit et, porttitor eget quam. Phasellus vel feugiat metus. Phasellus sed malesuada nisl. Quisque vel dolor mauris, quis viverra sem. Phasellus dignissim facilisis aliquam. Donec luctus, odio non porta dignissim, turpis elit malesuada est, sed vehicula nisl magna nec purus. Aenean vel tortor erat, ac egestas est</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('16', '2', 'Pronto disponible', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc nisi enim, vestibulum non hendrerit et, porttitor eget quam. Phasellus vel feugiat metus. Phasellus sed malesuada nisl. Quisque vel dolor mauris, quis viverra sem. Phasellus dignissim facilisis aliquam. Donec luctus, odio non porta dignissim, turpis elit malesuada est, sed vehicula nisl magna nec purus. Aenean vel tortor erat, ac egestas est</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('2', '3', 'Contact Us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('11', '3', 'Faq', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>
<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>
<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>
<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.<BR></P>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('11', '4', 'Faq', '<P>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis. </P>
<P>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus. </P>
<P>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam. </P>
<P>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.<BR></P>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('12', '3', 'Shipping', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('12', '4', 'Shipping', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('13', '3', 'About us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('13', '4', 'About us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('14', '3', 'Conditions', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('14', '4', 'Conditions', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('15', '3', 'Privacy', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('15', '4', 'Privacy', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('16', '3', 'Bient?t disponible', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc nisi enim, vestibulum non hendrerit et, porttitor eget quam. Phasellus vel feugiat metus. Phasellus sed malesuada nisl. Quisque vel dolor mauris, quis viverra sem. Phasellus dignissim facilisis aliquam. Donec luctus, odio non porta dignissim, turpis elit malesuada est, sed vehicula nisl magna nec purus. Aenean vel tortor erat, ac egestas est</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('16', '4', 'Weldra beschikbaar', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc nisi enim, vestibulum non hendrerit et, porttitor eget quam. Phasellus vel feugiat metus. Phasellus sed malesuada nisl. Quisque vel dolor mauris, quis viverra sem. Phasellus dignissim facilisis aliquam. Donec luctus, odio non porta dignissim, turpis elit malesuada est, sed vehicula nisl magna nec purus. Aenean vel tortor erat, ac egestas est</p>');
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
  idrelations int(11) ,
  PRIMARY KEY (products_id),
  KEY idx_products_date_added (products_date_added)
);

insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2596', '999999953', '', 'pac.png', '80.5500', '2011-05-12 00:28:55', NULL, NULL, '0.00', '1', '0', '0', '46', '0', '0', '0', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2595', '999999998', '', 'whole.png', '29.5000', '2011-05-11 14:56:44', '2011-05-21 20:45:59', NULL, '1.00', '1', '0', '0', '1', '0', '0', '0', '0', '2596');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2594', '2147483646', '', 'biochelated.png', '39.5000', '2011-05-11 14:46:09', '2011-05-11 19:20:53', NULL, '0.00', '1', '0', '0', '1', '0', '0', '0', '0', NULL);
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2593', '9989', '', '1adrenalkareproduct.png', '59.5000', '2011-05-11 14:05:47', '2011-05-21 21:54:56', NULL, '1.00', '1', '0', '0', '26', '0', '0', '0', '0', '2596');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2597', '9986', '', 'Serrapeptase Biologic Enzymes.png', '59.0000', '2011-05-21 16:16:35', '2011-05-21 20:42:28', NULL, '1.00', '1', '0', '0', '5', '0', '0', '0', '0', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2598', '0', '', 'Synergystic Mega Greens Powder.png', '0.0000', '2011-05-21 16:26:20', NULL, NULL, '0.00', '1', '0', '0', '0', '0', '0', '0', '0', '0');
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
  products_description longtext ,
  products_url varchar(255) ,
  products_viewed int(5) default '0' ,
  products_t1 longtext ,
  products_t2 longtext ,
  products_description2 longtext ,
  products_description3 longtext ,
  products_description4 longtext ,
  products_description5 longtext ,
  products_description6 longtext ,
  products_description7 longtext ,
  products_description8 longtext ,
  products_description9 longtext ,
  products_title2 varchar(255) ,
  products_title3 varchar(255) ,
  products_title4 varchar(255) ,
  products_title5 varchar(255) ,
  products_title6 varchar(255) ,
  products_title7 longtext ,
  products_title8 longtext ,
  products_title9 longtext ,
  tags longtext ,
  PRIMARY KEY (products_id, language_id),
  KEY products_name (products_name)
);

insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags) values ('2594', '1', 'Bio-Chelated Minerals', '<ul>
    <li>Increased Energy Levels</li>
    <li>Improved Sleep</li>
    <li>Wake Up Feeling Rested</li>
    <li>No Chemical Stimulants</li>
    <li>Reduced Cravings For Sweets And Caffeine</li>
    <li>Support Healthy Immunity</li>
    <li>Reduce Anxious Feelings</li>
</ul>', '', '6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags) values ('2593', '1', 'Adrenalkare', '<ul>
    <li>Increased Energy Levels</li>
    <li>Improved Sleep</li>
    <li>Wake Up Feeling Rested</li>
    <li>No Chemical Stimulants</li>
    <li>Reduced Cravings For Sweets And Caffeine&nbsp;</li>
    <li>Support Healthy Immunity</li>
    <li>Reduce Anxious Feelings</li>
</ul>', '', '266', 'Tired? Can?t Sleep? Anxious More Than Normal? Try Our Adrenal Exhaustion Supplements!', 'Natural Support For Exhausted Adrenal Glands', '<div style=\"text-align: justify\">The adrenal glands are two separate walnut shaped structures which sit one atop each kidney. The adrenal glands are part of your endocrine system (hormonal) and work with your thyroid and your pituitary gland to keep your body regulated. The adrenal glands produce many of the hormones in your body that influence specific organs and tissues:<br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: #eff5fa; padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: #347696; margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Adrenal glands help regulate blood sugar metabolism,the action of sodium and potassium,some sexual characteristics,and normal growth. The adrenal glands also produce the hormone cortisol,anti-inflammatory&quot;</div>
The hormones epinephrine, adrenalin, and norepinephrine, are produced in your adrenal glands\' inner layer. Norepinephrine commences the fight or flight response and adrenalin is responsible for the &ldquo;high&rdquo; that many thrill seekers crave. <br />
<br />
<b>The outer layer of the adrenal glands produces a multitude of hormones</b> that help regulate blood sugar metabolism, the action of sodium and potassium, certain sexual characteristics, and normal growth. The most significant hormone produced by the outer shell is cortisol, which is a powerful anti-inflammatory that affects conditions such as lupus, rheumatoid arthritis, allergies, asthma and other inflammation related issues.</div>', '<div style=\"text-align: justify\">Standard medical practice does not look for, test, or diagnose adrenal exhaustion. Many suffering the effects of adrenal exhaustion are dismissed with prescriptions for antidepressants and sleeping pills, with the true underlying factors ignored and mistreated.<br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: #eff5fa; padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: left; letter-spacing: -0.05em; color: #347696; font-size: 13px; margin-right: 10px; padding-top: 5px\">&quot;To diagnose adrenal fatigue your health practitiones will ask you to fill out a questionnaire and will check fill out a questionnaire will check your hormone,cortisol,sodium, and potassium levels&quot;</div>
For those able to find a healthcare practitioner who recognizes adrenal exhaustion as a physiological issue, diagnosis is fairly straightforward; a questionnaire will be filled out and a hormone panel and blood cortisol test will be taken along with the possibility of a blood potassium and sodium panel. This in order to determine the need for adrenal supplements.<br />
<br />
Unfortunately, many doctors do not have this type of testing immediately available to them and most do not recognize adrenal exhaustion as a condition to be treated. It\'s true that most people must arrive at the conclusion that adrenal burnout is part of the problem on their own and pursue other avenues for the adrenal support they require. In many cases, adrenal exhaustion treatment is needed.
<div style=\"text-align: left; padding-bottom: 10px; background-color: #eff5fa; margin-top: 10px; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: #347696; font-size: 13px; padding-top: 10px\"><b>AdrenalKare Was The Answer</b><br />
<br />
&quot;I\'ve tried over a dozen products including some my own Naturopath gave me for adrenal exhaustion. None of them worked until I found AdrenalKare. I felt the difference in just four days. I now use the entire Adrenal Supplement-Pac and the results are amazing.<br />
<br />
I\'m definatley enjoying my adrenal exhaustion supplements. There\'s no reason for anyone to ever have to suffer the effects of adrenal exhaustion which simply translates into miserable nights and days. Your product knowledge and customer service are outstanding.&quot;<br />
<br />
<b>Nancy Finegold</b></div>
</div>', '<div style=\"text-align: justify\">The symptoms of adrenal exhaustion are numerous and vary from individual to individual. Everyone has different lifestyles, variable pressures, varied diets and handle stress in unique and individual ways. Below are some of the clinical signs and symptoms of adrenal exhaustion.<br />
<br />
<table border=\"0\" cellspacing=\"25\" cellpadding=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td>
            <ul>
                <li>Constant Exhuastion</li>
                <li>Insomnia</li>
                <li>Cravings For Salt And Sweets Poor Stamina</li>
                <li>Slow Recovery From Exercise</li>
                <li>Brain Fog</li>
                <li>Depressed Immune System Anxiety and Depression</li>
                <li>Irritability and Short Temper</li>
                <li>Low Sex Drive</li>
                <li>Allergies</li>
            </ul>
            </td>
            <td>
            <ul>
                <li>Non Refreshing Sleep</li>
                <li>Poor Coping Skills</li>
                <li>Poor Stamina</li>
                <li>Sensitivity To Light</li>
                <li>Poor Concentration</li>
                <li>Anxiety and Depression</li>
                <li>Poor Appetite</li>
                <li>Restless Tendencies</li>
                <li>Short Temper</li>
            </ul>
            </td>
        </tr>
    </tbody>
</table>
<br />
<br />
Stress, toxicity, and a poor diet are significant contributors to adrenal exhaustion. If your are consuming sugar, hydrogenated fats and processed foods, you are actively contributing to your symptoms.<br />
<br />
These types of foods lead to sharp spikes in blood sugar levels, followed by the release of excess insulin. If refined foods are being consumed in excess, the adrenal glands must work that much harder therefor contributing that much more to your state of adrenal exhaustion.<br />
<br />
<b>Your adrenal glands require adrenal the assistance of adrenal supplements when you\'re under physical and/or emotional stress.</b><br />
<br />
Our customers find that AdrenalKare and the Adrenal Wellness-PAC helps provide optimal adrenal support when they are:<br />
<ul>
    <li>experiencing high levels of physical stress (illness or medical treatment) or emotional stress</li>
    <li>undergoing major surgery, physical therapy, chemotherapy</li>
    <li>suffering from chronic pain</li>
</ul>
</div>', '<div style=\"text-align: justify\"><b>Adrenal exhaustion can be successfully treated with AdrenalKare</b> <br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: #eff5fa; padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: #347696; font-size: 13px; margin-right: 10px; padding-top: 5px\">&quot;Adrenalkare Natural,Safe Effective&quot;</div>
<b>AdrenalKare is a professional formula of natural organics that:</b><br />
<ul>
    <li>supports normal adrenal function</li>
    <li>supports the synthesis of adrenal hormones</li>
</ul>
<br />
<br />
AdrenalKare rivals most adrenal exhaustion supplements with a unique combination of plant adaptagens (natural compounds that help the body to adapt to particular stressors by helping certain systems adapt via self-regulation) and adrenal cell extracts that makes it the best on the market for Adrenal Support.<br />
<br />
A 100% potent formula, all natural AdrenaKare contains no inactive ingredients and is 100 % bio-available to your system.<br />
<br />
<b>Caution:</b> Beware of Adrenal products that are laced with caffeine and other stimulants. Products such as these provide the illusion that you are experiencing an crease in energy levels. While it\'s true that that you will feel &quot;UP&quot; for a little while, you will still experience that mid afternoon crash as never before. Rest assured that AdrenalKare is <b>free of synthetic stimulants.</b> <br />
<br />
AdrenalKare works for you all day long and provides a gentle and natural sense of well being without violent spikes of that all too familiar &quot;Up and Down&quot; feeling. <br />
<br />
<b>Nutritional Health Science has combined scientifically-proven research and nature to produce AdrenalKare; a product that is natural, safe and effective </b>for those suffering from adrenal exhuastion and for those that require optimal adrenal support.</div>', '<div style=\"text-align: left; padding-bottom: 10px; background-color: #eff5fa; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: #347696; font-size: 13px; padding-top: 10px\"><b>Much Needed Rest And A Brighter Outlook </b><br />
<br />
&quot;I My family thought I was going nuts and in fact, so did I. In retrospect, there were reasons I was in that state of mind and body back then. The loss of a job and the loss of my mother coupled with three kids was enough to put me over the edge. I realized I was suffering from adrenal exhaustion.<br />
<br />
I have been following a natural lifestyle and taking your adrenal supplements for six months for adrenal support. I feel great and now look forward to a good night\'s sleep. Feeling rested in the morning is almost a dream come true. You guys are alright&quot;<br />
<br />
<b>Mica Gray</b></div>
<div style=\"text-align: left; padding-bottom: 10px; background-color: #eff5fa; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: #347696; font-size: 13px; padding-top: 10px\"><b>Nutritional Health Science Saves The Day </b><br />
<br />
&quot;I was diagnosed with adrenal exhaustion five years ago. For that length of time I was using supplements that really seemed to do the job. Unfortunately, the company closed and I was no longer able to purchase them.<br />
<br />
I looked everywhere and tried a few products but nothing seemed to help like what I had been taking. I finally found your company and now I\'m back on track. You have excellent products. I\'m forever grateful&quot;<br />
<br />
<b>Jerry O </b></div>
<div style=\"text-align: left; padding-bottom: 10px; background-color: #eff5fa; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: #347696; font-size: 13px; padding-top: 10px\"><b>Dragged Out Exhaustion</b><br />
<br />
&quot;Words cannot express how exhausted I was. I kept trying to tell my doctor how horrible I felt. He just told me to take a vacation or try a low dose antidepressant. I live a full life with two kids and a job that keeps me busy at least fifty hours per week.<br />
<br />
I started to get sick more often and had days where I didn\'t want to get out of bed. The day ahead just seemed to long to tackle.<br />
<br />
In my desperation I went to the internet to try and find out what was wrong with me. I ran across quite a bit of information on adrenal fatigue. It just made sense thatI might require the help of adrenal supplements.<br />
<br />
I\'ve been using your Adrenal-Pac for three months and feel a vast improvement. It\'s difficult to believe that I lived for almost three years like this. I certainly do appreciate your products and excellent customer service. Your products provide remarkable health benefits and I feel so much better&quot; <br />
<br />
<b>Lola D </b></div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial, Helvetica, sans-serif; color: #337696; font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All Natural Professional Formula</li>
                <li>A Delicious Raspberry Taste</li>
                <li>Zero Negative Side Effects</li>
                <li>Promotes Overall Health</li>
                <li>Relieve Symptoms of Fatigue</li>
                <li>Restore Exhausted Worn Out Adrenals</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '', 'The Adrenal Glands Structure And Function', 'Diagnosing Adrenal exhaustion', 'Signs and Symptoms Of Adrenal Exhaustion', 'ADRENALKare: Adrenal Supplements for Guaranteed Success', 'What our customers are saying About our adrenal supplements', 'Our commitment to you', '', '', 'Adrenal Exhuastion | Adrenal Supplements | Adrenal Exhaustion Supplements');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags) values ('2595', '1', 'Whole Food Vitamin C', '<ul>
    <li>Essential For A Healthy Immune System</li>
    <li>Non-Synthetic Chemical Free</li>
    <li>Powerful Antioxidant</li>
    <li>Required for Skin And Tissue Repair</li>
    <li>Cellular Regeneration And Renewal</li>
    <li>Whole Food Nutrition Your Body Can Use</li>
</ul>', '', '28', 'Whole Food Vitamin C is Naturally and Custom Blended for All of Your Body\'s Functions!', 'Natural Vitamin C Source', '<div style=\"text-align: justify\"><b>Vitamin-C is a nutrient that\'s essential for numerous biological functions in your body:</b> <br />
<br />
<b>Antioxidant:</b> Vitamin-C is a powerful antioxidant and plays a key role in helping your body neutralize disease-causing cells called free radicals. <br />
<br />
<b>Bones and Connective Tissues:</b> Vitamin-C is essential for proper bone formation, skin health, and connective tissue formation. Connective tissue is found in your body in areas such as the tendons and ligaments that support your joints and the fine tissues that hold your organs together.<br />
<br />
<b>Teeth and Gums:</b>Vitamin-C is vital for healthy teeth and gums.<br />
<br />
<b>Iron Absorption:</b> Vitamin-C is required for the absorption of iron that, in turn, increases your supply of red blood cells. Red blood cells carry oxygen to all the tissues in your body.<br />
<br />
<b>Wound Healing:</b> Vitamin-C is required for speedy wound healing.<br />
<br />
<b>Brain Health: </b>Vitamin-C is important for brain health and plays a key role in the production of important brain chemicals such as norepinephrine, seratonine, and dopamine. Insufficient levels of certain brain chemicals are known to affect mood and aggravate conditions such as depression.<br />
<br />
<b>Blood Cholesterol:</b> Higher intake of Vitamin-C lowers blood cholesterol levels.<br />
<br />
<b>Heart Disease:</b> Depleted levels of Vitamin-C are strongly associated with heart disease, stroke, and cancer.<br />
<br />
<b>Cellular Energy and Health:</b> Vitamin-C is required for cellular energy and the metabolism of fat to energy. Vitamin-C supplementation has a positive effect on the production of RNA and DNA. Both RNA and DNA are special proteins that are required for new healthy cells to form.<br />
<br />
<b>Often taken for granted, Vitamin-C is a nutrient powerhouse that the body cannot thrive without.</b><br />
<br />
&nbsp;</div>
<div style=\"padding-bottom: 10px; background-color: #eff5fa; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: #347696; font-size: 13px; padding-top: 10px\"><b>Surgical Wound Heals Quickly</b><br />
<br />
&quot;It was difficult to believe that I might be Vitamin-C deficient. However, 2-scoops of your Whole Food Vitamin-C powder made all the difference in the world. I just had my appendix taken out and I can&rsquo;t tell you how fast I healed. I\'m quickly learning how whole food nutrition is for the state of your health.<br />
<br />
You are correct in saying that an adequate amount of Vitamin-C helps healing. If this stuff is great for my outsides I can just imagine how wonderful it is for my insides. You folks are true professionals&quot; <br />
<br />
<b>David W</b></div>', '<p style=\"text-align: justify\">Linus Pauling is the most famous Vitamin-C researcher known to nutritional science. Though Linus Pauling has passed, his work carries on at the Linus Pauling Institute at Oregon State University.</p>
<p style=\"text-align: justify\">After years of extensive research, Linus Pauling concluded that the recommended daily Vitamin-C dosage put forth by the FDA (60 milligrams) was definitely not enough to maintain health and wellness. It was his position that health promoting daily intakes should reach or exceed 500 milligrams. Given the less than desirable health status of the majority living in Westernized cultures, he is proves to be absolutley correct.</p>', '<div style=\"text-align: justify\"><b>Vitamin-C has profound effects on the function of the immune system.</b> Studies have shown that Vitamin-C affects both the production and function of leukocytes, more commonly known as white blood cells. These are cells of the immune system on the frontlines that protect your body 24/7 from foreign invaders such as bacteria, viruses, allergens, and infections. <br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: #eff5fa; padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: #347696; margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;The Immune System Cannont Funtion without Vitamin C&quot;</div>
Specific immune system functions that Vitamin-C positively affects include cell motility (ability of the cell to move) and the ability of the white blood cell to attack the &ldquo;bad guy.&rdquo; Vitamin-C has been shown to positively affect the action and reaction of antibodies. Antibodies are the cells of the immune system that have &ldquo;memory&rdquo; for certain pathogens and they automatically attack when exposed to such. This is provided they have proper nutritional support and the raw organic whole food nutrients they require to function properly.<br />
<br />
<b>If the body has enough Vitamin-C the cells of the immune system will store this essential nutrient. This means that immune system cells have further protection against oxidative damage.</b></div>', '<div style=\"text-align: justify\"><b>Our Vitamin-C formula is formulated from natural sources that the body can easily absorb and put to work for your good health.</b> <br />
<br />
<b>We Provide The Richest Sources That Nature Has To Offer</b><br />
<ul>
    <li>Non-synthetic whole food blends</li>
    <li>Natural compounds from the Acerola Cherry</li>
    <li>Natural compounds from the Camu Camu Berry</li>
</ul>
<br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: #eff5fa; padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: #347696; margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot; Delicious, Raspberry Flavored Vitamin C&quot;</div>
<b>Delicious Raspberry Taste</b><br />
<ul>
    <li>no sugar added</li>
    <li>natural and delicious raspberry matrix</li>
</ul>
<br />
<br />
Each serving of our delicous powder Whole Food Vitamin-C formula provides a whopping 500 mgs of natural Vitamin-C. Our Whole Food Vitamin-C is offered to you in a powder format and is easily mixed with juice or water. Our premier Vitamin-C formula provides healthy benefits for the entire family.</div>', '<div style=\"text-align: left; padding-bottom: 10px; background-color: #eff5fa; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: #347696; font-size: 13px; padding-top: 10px\"><b>Almost Better Than Oranges </b><br />
<br />
&quot;I just love your Vitamin-C. Every time I take it I feel like I\'ve eaten three oranges. It&rsquo;s a healthy feeling I can hardly describe but one I am thankful for. Keep up the good work as I recommend your products to everyone&quot;<br />
<br />
<b>Genie Krakow</b></div>
<div style=\"text-align: left; padding-bottom: 10px; background-color: #eff5fa; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: #347696; font-size: 13px; padding-top: 10px\"><b>Better Energy Levels</b><br />
<br />
&quot;I started taking your Vitamin-C with some of your other products and boy do I feel the difference. I do try hard to eat healthy every day, but with my busy schedule sometimes it just isn&rsquo;t possible. There\'s a big difference in my energy levels and my overall state of well being. I sure didn&rsquo;t realize that my RDA requirements for Vitamin-C were not being met. I will use your Vitamin-C from this day forward&quot;<br />
<br />
<b>Margaret Plumber</b></div>
<div style=\"text-align: left; padding-bottom: 10px; background-color: #eff5fa; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: #347696; font-size: 13px; padding-top: 10px\"><b>A Stronger Immune System</b><br />
<br />
&quot;I really don\'t have any health problems but I take your Vitamin-C on good faith daily. What I can tell you is that in the year I\'ve taken your products, I have not been sick one day. I used to get the flu at least two times per year. I\'ll continue to carry on with your products as they have done me well&quot; <br />
<br />
<b>Skeeter Davis </b></div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial, Helvetica, sans-serif; color: #337696; font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>Increased Bioavailability</li>
                <li>A Delicious Raspberry Taste</li>
                <li>Non Acidic And Easy On The Stomach</li>
                <li>All Natural And Effective</li>
                <li>An Easy To Mix Powder Format</li>
                <li>Cellular Health And Repair With No Side Effects</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '', 'What Vitamin-C Does For You', 'Nutritional Research Substantiates Vitamin-C And Your Health', 'Vitamin-C Is Essential To A Healthy Immune System.', 'Whole Food Vitamin C: The All-Natural Solution for Guaranteed Success', 'What our customers are saying', 'Our commitment to you', '', '', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags) values ('2596', '1', 'Adrenal Pac', '<p>Our product PACs are designed to save you money and offer maximum benefits. This combination of products work together for best results. Our product PACs are the way to go for discriminating consumers seeking both remarkable health benefits and cost savings.</p>', '', '133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags) values ('2597', '1', 'Serrapeptase  Enzymes', '<ul style=\"margin-left: 0px\">
    <li>Support Decreased Inflammation</li>
    <li>Help Improve Joint Mobility</li>
    <li>Experience Improved Bowel &amp; Digestive Function</li>
    <li>Assist With Sinus Issues</li>
    <li>Reduce That Mucous Feeling</li>
    <li>Support Healthy Circulation</li>
    <li>Relieve Overall Discomforts</li>
</ul>', '', '81', 'Inflammation? Swelling? Body Pain? Clogged Arteries? Try Our Systemic Enzymes!', 'Inflammation and Pain Management', '<div style=\"text-align: justify\"><b>Serrapeptase is a unique and powerful biologic systemic </b>enzyme that was discovered in the intestines of the silkworm. Modern day nutritional science now isolates and harvests this protein-digesting enzyme in controlled laboratory conditions.<br />
&nbsp;<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: #eff5fa; padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: #347696; margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot; Serrapeptase digests proteinrich structures such as blood clots, cysts, arterial plaque and inflamation by-products &quot;</div>
Many illness-causing agents are protein rich structures, such as; blood clots, cysts, arterial plaque, and inflammation by-products. <br />
<br />
Serrapeptase is the perfect systemic enzyme to help eliminate these health compromising biologic agents. Serrapeptase travels straight from the digestive system and into the bloodstream to perform the task of protecting your body from these erronous protein structures and inflammation. <br />
Systemic enzymes can help a huge variety of conditions in the most natural and effective way possible. <br />
<br />
The importance of the concept of systemic enzymes needs to be understood. Most of us are familiar with digestive enzymes that are localized to the digestive tract. In contrast, systemic enzymes are naturally available to your entire body as a whole. That means they are naturally designed to provide remarkable health benefits for your entire system. Properly cultivated systemic enzymes are a key part of your arsenal for good health.</div>', '<b>World-wide clinical studies conclude that serrapeptase</b> systemic enzymes offer notable health benefits for the majority. Repeatedly, clinical studies demonstrate the powerful effects of serrapeptase supplementation:<br />
<ul>
    <li>Counteracts inflammation</li>
    <li>Helps reduce swelling</li>
    <li>Helps reduce whole body discomforts</li>
    <li>assists with reducing fibrin blood levels (which lead to clogged arteries and strokes)</li>
    <li>Helps counteract the production of excess mucous</li>
</ul>
<br />
<b>* A major benefit of serrapeptase includes overall whole body pain relief due to its natural ability to stop the release of systemic chemicals called amines. These naturally produced amines are part of the cause and symptoms of pain. Serrapeptase is clinically proven to block the release of amines and help your body reduce the painful biological markers that cause physical discomfort. When the cause of inflammation is addressed, so is the percieved level of pain</b>', '<div style=\"text-align: justify\"><b>Physicians in Europe and Asia are starting to recognize the natural pain blocking effects of serrapeptase </b>systemic enzymes. Serrapeptase is being used as an alternative treatment to the more dangerous salicylates (aspirin), ibuprofen (Advil, Motrin), and NSAIDS (prescription pain medications). German researchers conducted a double blind study (the most effective way to scientifically determine the benefits of a substance) of surgery patients and postoperativeknee swelling. It was found that serrapeptase offers pain relief in as little as three days and total pain relief in as little as ten days.<br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: #eff5fa; padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: #347696; margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Serrapeptase Research Serrapeptase Effective For: Post-Operative Knee Swelling Cystic Breast Disease Ear, Nose and Throat Issues Coronary Heart Disease&quot;</div>
<b>Serrapeptase has been successfully used in the treatment of cystic breast disease</b>. In another double-blind study, seventy patients with the condition were divided into a serrapeptase treatment group and those who were administered a placebo. Eighty-five percent of those patients in the serrapeptase group reported a significant reduction of both pain and swelling. A similar study examined one hundred forty patients with ear, nose, and throat issues. After only six days of serrapeptase treatment, the majority of patients reported noticeable relief from the symptoms of discomforts such as; head throbbing, mucous secretion, and scratchy throats. <br />
<br />
Early research conducted by Dr. Hans Nieper (Germany) indicates that introducing serrapeptase as part of your daily regime has a positive effect on helping reduce the accumulation of plaque in the arteries. Excessive plaque build-up, in the form of cholesterol, fibrin, and cellular waste products leads to coronary heart disease and cardiac arrest.<b> While more research is required, the preliminary results have determined that serrapeptase provides positive benefits for coronary health. </b>
<div style=\"text-align: left; padding-bottom: 10px; background-color: #eff5fa; margin-top: 10px; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: #347696; font-size: 13px; padding-top: 10px\"><b>Serrapeptase Stops My Cysts From Forming For</b><br />
<br />
&quot;whatever reason my body likes to make cysts that pop out of nowhere. I have quite the number of surgical scars from repeat removals. These are often quite painful for me as they are usually extremely inflammed, red, and deep. I decided to give serrapeptase systemic enzymes a shot.<br />
<br />
Much to my delight a new cyst that was forming on my shoulder just disappeared and I have\'nt had one issue in the year I have been taking this fantastic product. It&rsquo;s hard to believe that something so simple could have such profound effects. Thanks for saving me the co-payments on all my medical expenses. Your product is well worth it&quot;<br />
<br />
<b>Thomas Wendworth </b></div>
</div>', '<b>A majority of diseases are aggravated or caused by underlying inflammation. Inflammation is the body\'s natural response to foreign invaders and faulty cells. It\'s when the immune system has become dysfunctional that the inflammatory response becomes dangerous. Taking Serrapeptase can help the body effectively deal with inflammation.</b>', '<div style=\"text-align: justify\"><b>A majority of diseases are aggravated or caused by underlying inflammation. Inflammation is the body\'s natural response to foreign invaders and faulty cells. It\'s when the immune system has become dysfunctional that the inflammatory response becomes dangerous. Taking Serrapeptase can help the body effectively deal with inflammation.</b> <b>Serrapeptase Inherent Biologic Benefits</b><br />
&nbsp;<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: #eff5fa; padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: #347696; margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Serrapeptase Biologic Enzymes are compounded for maximum absorption and efecctiveness&quot;</div>
<ul>
    <li>Natural, safe, and effective</li>
    <li>Compounded for maximum absorption</li>
    <li>Coated, so it can get where it needs to be</li>
</ul>
<br />
Serrapeptase Biologic Enzymes, like all of our supplements, is a professional formula manufactured to the highest therapeutic specifications possible. Thousands have used our proprietary formula with great success. Many after discovering that other serrapeptase products simply don&rsquo;t work. <br />
<br />
<b>Start your serrapeptase supplementation with the product that works:</b>
<ul>
    <li>Serrapeptase Biologic Enzymes</li>
    <li>We Guarantee Results!</li>
</ul>
</div>', '<div style=\"text-align: left; padding-bottom: 10px; background-color: #eff5fa; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: #347696; font-size: 13px; padding-top: 10px\"><b>Fatty Lumps On My Legs</b><br />
<br />
&quot;The unidentified fatty lumps on my legs were getting out of control and somewhat painful. Nobody knew what they were and I wasn\'t at all excited about the prospects of surgery. I decided to change my diet and lifestyle and include supplements such as Nutritional Health Science and their professional formulas.<br />
<br />
I took mega-doses of serrapeptase systemic enzymes for three months along with everything else I could get my hands on and the fatty lumps are now down to a dull roar. You have the best serrapeptase enzyme on the market. I really believe in this company and definitely believe in their products&quot; <br />
<br />
<b>Margaret M</b></div>
<div style=\"text-align: left; padding-bottom: 10px; background-color: #eff5fa; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: #347696; font-size: 13px; padding-top: 10px\"><b>Pounding Headache Gone</b><br />
<br />
&quot;I\'ve suffered my whole life with sinus problems and asthma. In just ten days of taking your serrapeptase systemic enzymes the world seems clearer. There\'s a notable difference and that pounding sinus headache is gone. Today was the first day I didn\'t need my inhaler in the morning. I\'m anxious to see what the next sixty- days brings if I feel this wonderful already&quot;<br />
<br />
<b>Rachel Cruiz</b></div>
<div style=\"text-align: left; padding-bottom: 10px; background-color: #eff5fa; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: #347696; font-size: 13px; padding-top: 10px\"><b>Formerly Arthitic Dog Has a Spring in His Step</b><br />
<br />
&quot;I take serrapeptase as a preventative because I understand that controlling inflammation is one of the steps in staying disease free. I have no significant health troubles and I\'m determined to keep it this way. I do enjoy your products and ended up trying serrapeptase systemic enzymes on my arthritic dog.<br />
<br />
He is twelve years old and after only three weeks he has spring back in his step. He\'s also able to climb into his bed once again. I really think your products work as a dog cannot fake the results. Because of my dog, I will take serrapeptase forever&quot;<br />
<br />
<b>Brenda Carmichel</b></div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial, Helvetica, sans-serif; color: #337696; font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>Results You Can Feel</li>
                <li>All Natural Professional Formula</li>
                <li>Zero Negative Side Effects</li>
                <li>Promotes Overall Health</li>
                <li>Relieve Symptoms of Fatigue</li>
                <li>Restore Exhausted Worn Out Adrenals</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '15', 'About Serrapeptase', 'How Serrapetase Functions In The Body', 'Research On The Use Of Serrapeptase Is Extensive', 'Serrapeptase Can Assist You With Your Health Challenges', 'Serrapeptase: All-Natural Systemic Enzymes for Guaranteed Success', 'What our customers are saying', 'Our commitment to you', 'Ingredients', '');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags) values ('2598', '1', 'Synergystic Mega Greens Powder', '', '', '2', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, '');
drop table if exists products_extra_images;
create table products_extra_images (
  products_extra_images_id int(11) not null auto_increment,
  products_id int(11) ,
  products_extra_image varchar(64) ,
  KEY products_extra_images_id (products_extra_images_id)
);

insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('20', '2578', 'test_2_designface.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('21', '2578', 'test_2_botton.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('22', '2580', 'test_4_botton.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('23', '2584', 'test_1_botton.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('24', '2584', 'test_1_designface.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('25', '2584', 'test_1_detail.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('26', '2578', 'test_2_detail.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('27', '2580', 'test_4_designface.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('28', '2580', 'test_4_detail.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('29', '2579', 'test_3_botton.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('30', '2579', 'test_3_designface.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('31', '2579', 'test_3_detail.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('32', '2581', 'test_5_botton.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('33', '2581', 'test_5_designface.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('34', '2581', 'test_5_detail.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('35', '2582', 'test_6_botton.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('36', '2582', 'test_6_designface.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('37', '2582', 'test_6_detail.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('38', '2586', 'wtest_1_botton.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('39', '2586', 'wtest_1_designface.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('40', '2586', 'wtest_1_detail.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('41', '2587', 'wtest_2_botton.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('42', '2587', 'wtest_2_designface.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('43', '2587', 'wtest_2_detail.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('44', '2588', 'wtest_3_botton.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('45', '2588', 'wtest_3_designface.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('46', '2588', 'wtest_3_detail.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('47', '2589', 'wtest_4_botton.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('48', '2589', 'wtest_4_designface.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('49', '2589', 'wtest_4_detail.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('50', '2592', 'ttest_3_botton.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('51', '2592', 'ttest_3_designface.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('52', '2592', 'ttest_3_detail.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('53', '2590', 'ttest_1_botton.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('54', '2590', 'ttest_1_designface.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('55', '2590', 'ttest_1_detail.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('56', '2591', 'ttest_2_botton.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('57', '2591', 'ttest_2_designface.jpg');
insert into products_extra_images (products_extra_images_id, products_id, products_extra_image) values ('58', '2591', 'ttest_2_detail.jpg');
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

insert into products_options (products_options_id, language_id, products_options_name, products_options_type, products_options_length, products_options_comment) values ('4', '1', 'Colors', '0', '20', 'Choose color');
insert into products_options (products_options_id, language_id, products_options_name, products_options_type, products_options_length, products_options_comment) values ('5', '1', 'Size', '0', '0', 'Choose size');
drop table if exists products_options_values;
create table products_options_values (
  products_options_values_id int(11) default '0' not null ,
  language_id int(11) default '1' not null ,
  products_options_values_name varchar(64) not null ,
  PRIMARY KEY (products_options_values_id, language_id)
);

insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('6', '1', 'L');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('5', '1', 'M');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('4', '1', 'S');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('3', '1', 'yellow');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('2', '1', 'red');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('1', '1', 'blue');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('8', '1', 'black');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('7', '1', 'white');
drop table if exists products_options_values_to_products_options;
create table products_options_values_to_products_options (
  products_options_values_to_products_options_id int(11) not null auto_increment,
  products_options_id int(11) default '0' not null ,
  products_options_values_id int(11) default '0' not null ,
  PRIMARY KEY (products_options_values_to_products_options_id)
);

insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('188', '4', '7');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('189', '4', '8');
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

insert into products_to_categories (products_id, categories_id) values ('2593', '472');
insert into products_to_categories (products_id, categories_id) values ('2594', '472');
insert into products_to_categories (products_id, categories_id) values ('2595', '472');
insert into products_to_categories (products_id, categories_id) values ('2596', '463');
insert into products_to_categories (products_id, categories_id) values ('2597', '472');
insert into products_to_categories (products_id, categories_id) values ('2598', '472');
drop table if exists registered_user;
create table registered_user (
  id_registered_user bigint(20) not null auto_increment,
  id_language int(11) default '0' not null ,
  name_registered_user varchar(200) not null ,
  email_registered_user varchar(200) not null ,
  PRIMARY KEY (id_registered_user)
);

insert into registered_user (id_registered_user, id_language, name_registered_user, email_registered_user) values ('1', '1', 'customer', 'specialreports@customer.com');
insert into registered_user (id_registered_user, id_language, name_registered_user, email_registered_user) values ('2', '1', 'customer', 'specialjoe@repors.com');
drop table if exists registered_user2;
create table registered_user2 (
  id_registered_user bigint(20) not null auto_increment,
  id_language int(11) default '0' not null ,
  name_registered_user varchar(200) not null ,
  email_registered_user varchar(200) not null ,
  PRIMARY KEY (id_registered_user)
);

insert into registered_user2 (id_registered_user, id_language, name_registered_user, email_registered_user) values ('1', '1', 'customer', 'healthycustomer@customer.com');
insert into registered_user2 (id_registered_user, id_language, name_registered_user, email_registered_user) values ('2', '1', 'customer', 'apolo@joe.com');
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

insert into sessions (sesskey, expiry, value) values ('7fa90184dabe47d3c1bb78b84cd00efe', '1306032300', 'language|s:7:\"english\";languages_id|s:1:\"1\";selected_box|s:5:\"tools\";');
insert into sessions (sesskey, expiry, value) values ('565a0ef3664b0a36112d1886e7e97e3f', '1306031889', 'cart|O:12:\"shoppingcart\":6:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;s:5:\"cg_id\";s:1:\"1\";}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:3:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}i:2;a:4:{s:4:\"page\";s:11:\"account.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}customer_id|s:3:\"241\";customer_default_address_id|s:3:\"256\";customer_first_name|s:5:\"Linda\";sppc_customer_group_id|s:1:\"1\";sppc_customer_group_show_tax|i:1;sppc_customer_group_tax_exempt|i:1;sppc_customer_group_tax_rates_exempt|a:1:{i:8;b:1;}customer_country_id|s:3:\"223\";customer_zone_id|s:2:\"19\";new_products_id_in_cart|s:4:\"2597\";');
insert into sessions (sesskey, expiry, value) values ('7e3a2a54663b7fb87ec72ccc35e08754', '1306030736', 'language|s:7:\"english\";languages_id|s:1:\"1\";selected_box|s:13:\"configuration\";');
insert into sessions (sesskey, expiry, value) values ('e650e5184755ee562a295263ade62ea2', '1306030933', 'cart|O:12:\"shoppingcart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:3:{i:0;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:16:\"products_new.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}i:2;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2593\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
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

insert into tax_class (tax_class_id, tax_class_title, tax_class_description, last_modified, date_added) values ('10', 'TVA', 'TVA', '2010-10-21 16:14:29', '2010-10-18 11:15:09');
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
insert into tax_rates (tax_rates_id, tax_zone_id, tax_class_id, tax_priority, tax_rate, tax_description, last_modified, date_added) values ('9', '1', '10', '0', '21.0000', '', '2011-05-20 20:42:12', '2010-10-18 11:17:17');
drop table if exists uploadpdf;
create table uploadpdf (
  id_uploadpdf int(11) not null auto_increment,
  name_uploadpdf varchar(200) not null ,
  file_uploadpdf varchar(200) not null ,
  language_id int(11) not null ,
  PRIMARY KEY (id_uploadpdf)
);

insert into uploadpdf (id_uploadpdf, name_uploadpdf, file_uploadpdf, language_id) values ('1', 'Size Guide', 'CDO_SIZE CHART.pdf', '1');
insert into uploadpdf (id_uploadpdf, name_uploadpdf, file_uploadpdf, language_id) values ('2', 'Gu?a de Tallas', 'CDO_SIZE CHART_3.pdf', '2');
insert into uploadpdf (id_uploadpdf, name_uploadpdf, file_uploadpdf, language_id) values ('3', 'Guide des tailles', 'CDO_SIZE CHART_2.pdf', '3');
insert into uploadpdf (id_uploadpdf, name_uploadpdf, file_uploadpdf, language_id) values ('4', 'Size Guide', 'CDO_SIZE CHART_1.pdf', '4');
drop table if exists videos;
create table videos (
  id_videos int(11) not null auto_increment,
  file_videos varchar(200) not null ,
  PRIMARY KEY (id_videos)
);

insert into videos (id_videos, file_videos) values ('1', 'http://www.youtube.com/watch?v=rpWkLoKuwK4');
insert into videos (id_videos, file_videos) values ('2', 'http://www.youtube.com/watch?v=XrPfEvfKuLs&feature=related');
insert into videos (id_videos, file_videos) values ('3', 'http://www.youtube.com/watch?v=rpWkLoKuwK4');
insert into videos (id_videos, file_videos) values ('4', 'http://www.youtube.com/watch?v=XrPfEvfKuLs&feature=related');
insert into videos (id_videos, file_videos) values ('5', 'http://www.youtube.com/watch?v=rpWkLoKuwK4');
insert into videos (id_videos, file_videos) values ('6', 'http://www.youtube.com/watch?v=XrPfEvfKuLs&feature=related');
insert into videos (id_videos, file_videos) values ('7', 'http://www.youtube.com/watch?v=rpWkLoKuwK4');
insert into videos (id_videos, file_videos) values ('8', 'http://www.youtube.com/watch?v=EfXawt19_JY&feature=related');
insert into videos (id_videos, file_videos) values ('9', 'http://www.youtube.com/watch?v=rpWkLoKuwK4');
insert into videos (id_videos, file_videos) values ('10', 'http://www.youtube.com/watch?v=XrPfEvfKuLs&feature=related');
insert into videos (id_videos, file_videos) values ('11', 'http://www.youtube.com/watch?v=rpWkLoKuwK4');
insert into videos (id_videos, file_videos) values ('12', 'http://www.youtube.com/watch?v=1OtH_7vJH4M&feature=fvw');
insert into videos (id_videos, file_videos) values ('13', 'http://www.youtube.com/watch?v=rpWkLoKuwK4');
insert into videos (id_videos, file_videos) values ('14', 'http://www.youtube.com/watch?v=h9L_qgNO-LY&feature=related');
insert into videos (id_videos, file_videos) values ('15', 'http://www.youtube.com/watch?v=TqZW3GX5dFU');
insert into videos (id_videos, file_videos) values ('16', 'http://www.youtube.com/watch?v=1OtH_7vJH4M&feature=fvw');
insert into videos (id_videos, file_videos) values ('17', 'http://www.youtube.com/watch?v=EfXawt19_JY&feature=related');
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

insert into whos_online (customer_id, full_name, session_id, ip_address, time_entry, time_last_click, last_page_url) values ('241', 'Linda Posch', '565a0ef3664b0a36112d1886e7e97e3f', '190.118.19.201', '1306028610', '1306030449', '/account.php');
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

insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('539', '21', '0', '5', NULL, '2010-10-18 11:17:00');
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
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('538', '195', '0', '4', NULL, '2010-10-18 11:14:02');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('540', '223', NULL, '1', '2011-05-20 20:41:52', '2011-05-20 20:41:41');
