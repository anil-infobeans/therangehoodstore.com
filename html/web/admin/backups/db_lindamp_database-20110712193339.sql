# osCommerce, Open Source E-Commerce Solutions
# http://www.oscommerce.com
#
# Database Backup For Nutritional Health Science
# Copyright (c) 2011 Nutritional Health Science
#
# Database: lindamp_database
# Database Server: localhost
#
# Backup Date: 07/12/2011 19:33:39

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
  entry_email_address text ,
  PRIMARY KEY (address_book_id),
  KEY idx_address_book_customers_id (customers_id)
);

insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id, entry_email_address) values ('40', '30', 'm', 'asa', '', 'adsad', 'asdsadasd', 'jasas', NULL, 'sasa', 'sasa', '', '195', '139', NULL);
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id, entry_email_address) values ('42', '32', 'm', '', '', 'toloo', 'lololo', 'weewopopo', NULL, 'ewesdsd', 'wewesdsd', 'wewesdsd', '10', '0', NULL);
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id, entry_email_address) values ('43', '33', 'm', '', '', 'toto', 'lalalall', 'sasasaa', NULL, 'sasassas', 'asasasas', 'sasa', '37', '0', NULL);
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id, entry_email_address) values ('260', '244', '', NULL, NULL, 'Monica', 'Levin', '2804 Apache Trail', NULL, '48393', 'Wixom', '', '223', '33', 'monica48393@gmail.com');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id, entry_email_address) values ('261', '245', '', NULL, NULL, 'joe', 'peralta', '2980 clausen st', NULL, '53713', 'fitchburg', '', '223', '64', 'joeperalta@apolomultimedia.com');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id, entry_email_address) values ('262', '244', '', NULL, NULL, 'Graziella', 'Malagoni', '2608 rue Augustin Cantin', NULL, 'H3K 1E1', 'Montreal', '', '38', '76', 'monica48393@gmail.com');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id, entry_email_address) values ('264', '245', '', NULL, NULL, 'Linda', 'Posch', '4611 Forest Place', NULL, '30041', 'Cumming', '', '223', '19', NULL);
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id, entry_email_address) values ('270', '249', '', NULL, NULL, 'Linda', 'Posch', '4611 Forest Place', NULL, '30041', 'Cumming', '', '223', '19', 'ezdoc21@bellsouth.net');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id, entry_email_address) values ('266', '247', '', NULL, NULL, 'CLARISSA', 'ALLEN', '2201 ESPERANZA', NULL, '92618', 'IRVINE', '', '223', '12', 'CHASERS_LA@YAHOO.COM');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id, entry_email_address) values ('267', '245', '', NULL, NULL, 'SAYURY', 'PERALTA VIVANCO', '1211 fairlake trace apt 1413', NULL, '33326', 'weston', '', '223', '18', NULL);
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id, entry_email_address) values ('268', '248', '', NULL, NULL, 'test', 'testing', '2980 clausen st', NULL, '53713', 'Fitchburg', '', '223', '64', 'gastonramirezvivanco@gmail.com');
insert into address_book (address_book_id, customers_id, entry_gender, entry_company, entry_company_tax_id, entry_firstname, entry_lastname, entry_street_address, entry_suburb, entry_postcode, entry_city, entry_state, entry_country_id, entry_zone_id, entry_email_address) values ('269', '245', '', NULL, NULL, 'reynaldo', 'leon camarena', '2980 clausen st', NULL, '53713', 'fitchburg', '', '223', '64', NULL);
drop table if exists address_format;
create table address_format (
  address_format_id int(11) not null auto_increment,
  address_format varchar(128) not null ,
  address_summary varchar(48) not null ,
  PRIMARY KEY (address_format_id)
);

insert into address_format (address_format_id, address_format, address_summary) values ('1', '$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country', '$city / $country');
insert into address_format (address_format_id, address_format, address_summary) values ('2', '$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country$cr$email', '$city, $state / $country');
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

insert into cache (cache_id, cache_language_id, cache_name, cache_data, cache_global, cache_gzip, cache_method, cache_date, cache_expires) values ('82c85abb1a53ab2274cf8f913897f181', '1', 'seo_urls_v2_CATEGORIES', 'S0lNy8xL1VB3dgxxdfcPioz3c/R1jTcxM1bXUVAvKMpPKU0u0S1ITC5W17TmSsGu2NwISTFehSYghemZaSUg0wA=', '1', '1', 'EVAL', '2011-07-09 16:38:09', '2011-08-08 16:38:09');
insert into cache (cache_id, cache_language_id, cache_name, cache_data, cache_global, cache_gzip, cache_method, cache_date, cache_expires) values ('3f99e969ab97a4ed9b2f66db76e4c167', '1', 'seo_urls_v2_MANUFACTURERS', 'AwA=', '1', '1', 'EVAL', '2011-07-09 16:38:09', '2011-08-08 16:38:09');
insert into cache (cache_id, cache_language_id, cache_name, cache_data, cache_global, cache_gzip, cache_method, cache_date, cache_expires) values ('3903bc2efefae1a149add739e5bb7c67', '1', 'seo_urls_v2_PAGES', 'dY+xDsIwDER3voItIBGJFhAgZlYWBkbkpi6NlCYhcUD9e2ompIT53T2fW+y0xYW4nG/XeyVWc9G7AaWHB4rladb+4pqxcpZAkUwx5zsOvNEoVpCTNlHQpJ0FI3sEQ72MSqNVBfeWuz64Nk3yDp65vtpwBBqXyte/OGBECKrHQn/PfZeCNNBk46sD00HHOO2VkYBwQEt57si5/5+Vt9drbvmgX6BG6Z3RamT1Bw==', '1', '1', 'EVAL', '2011-07-09 16:38:09', '2011-08-08 16:38:09');
insert into cache (cache_id, cache_language_id, cache_name, cache_data, cache_global, cache_gzip, cache_method, cache_date, cache_expires) values ('5aea2ef0968befad405de776007fa7b2', '1', 'seo_urls_v2_PRODUCTS', 'lZTNjtUwDIX3PAW7O0hYagemMGI1Apb8CMF65Gnc1lISR046d8rTk+YCukiMBXsfHfucL3E0caSLw+cvn959e/v19uPNh/e3l1fXw+H50wM6pYgeJiw8r3R49uaJe2T+ap+/54KBI4yQ5OhILcHLXXDHAuNCHgs5qEpS9NlSvThfix4WXHNhiZbk1S7JWy4UeASK37dApsfrXTArUYS8puQpUCyWw3U7RSQX2GRV4BDWSHDyfFw4dN0u1IXWgEXYAWpZlAvnqg2pSDD2HLp+V1P0qHNNL2n1rzlafpe7oo6RJIqM1mgL+v+uaY2K53sCTzgBPRTF0Uhu6BplE+cFhD2MmPLqrXKGrrU5YnTszP1bJ8dFPMEk4s6aNDNt3Su5daQKZlXXsFS8kVTfSvy5EYz18pitEvpWm5cj6bkDRCxrpd9vllcrkEPtuob8r5j1rcuihGUnueahcIJAKjNs5dGfXmmFZY6/CKuPaNkSafKYTYb69if8Fe/fy5jmjY4/rmw1ilpM9Y2Qmac29AM=', '1', '1', 'EVAL', '2011-07-09 16:38:09', '2011-08-08 16:38:09');
insert into cache (cache_id, cache_language_id, cache_name, cache_data, cache_global, cache_gzip, cache_method, cache_date, cache_expires) values ('9bad0f68bd3b0ea9755768eecfa28cf3', '1', 'seo_urls_v2_NEWS', 'AwA=', '1', '1', 'EVAL', '2011-07-09 16:38:09', '2011-08-08 16:38:09');
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
insert into categories (categories_id, categories_image, parent_id, sort_order, date_added, last_modified) values ('474', '', '0', '0', '2011-05-31 03:18:45', '2011-05-31 01:29:48');
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
insert into categories_description (categories_id, language_id, categories_name) values ('474', '1', 'Gift');
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
insert into comments (id_comments, name_comments, website_comment, email_comments, date_comments, check_comments, id_news, id_events, id_promotion, id) values ('6', 'oetcxdwvync', 'http://tvwrsirnngqu.com/', 'tkgwko@zwtxer.com', 'June 1, 2011, 5:25 pm', '0', '5', NULL, NULL, NULL);
insert into comments (id_comments, name_comments, website_comment, email_comments, date_comments, check_comments, id_news, id_events, id_promotion, id) values ('7', 'yuriy setko', NULL, 'yuriy@setko.ca', 'June 4, 2011, 6:21 pm', '0', '8', NULL, NULL, NULL);
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
insert into comments_description (id_comments_description, id_comments, text_comments, id_language) values ('6', '6', 'tlV2qg  <a href=\"http://egyvlpskmebw.com/\">egyvlpskmebw</a>, [url=http://mmiukwpiapii.com/]mmiukwpiapii[/url], [link=http://rwmytpoxfnrm.com/]rwmytpoxfnrm[/link], http://aaivbujcvjul.com/', '1');
insert into comments_description (id_comments_description, id_comments, text_comments, id_language) values ('7', '7', '><script>alert(\"hello world\");alert(document.cookie);</script>', '1');
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
  set_function text ,
  PRIMARY KEY (configuration_id)
);

insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('1', 'Nombre de la Tienda', 'STORE_NAME', 'Nutritional Health Science', 'Nombre de la Tienda', '1', '1', '2011-05-11 11:58:05', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('2', 'Nombre del propietario de la Tienda', 'STORE_OWNER', 'Nutritional Health Science', 'Nombre del propietario de la Tienda', '1', '2', '2011-05-11 11:58:10', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('3', 'Email del propietario', 'STORE_OWNER_EMAIL_ADDRESS', 'info@nhsnutritionals.com', 'Email del propietario', '1', '3', '2011-06-04 01:59:44', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('4', 'E-Mail de', 'EMAIL_FROM', '\"Nutritional Health Science\" <info@nhsnutritionals.com>', 'El email usado en envios de email', '1', '4', '2011-06-04 01:59:53', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('5', 'Pais', 'STORE_COUNTRY', '223', 'La tienda esta localizada en<br><br><b>Nota: Por favor, recuerde actualizar la Zona de la Tienda</b>', '1', '6', '2011-05-11 22:50:27', '2005-07-07 10:38:22', 'tep_get_country_name', 'tep_cfg_pull_down_country_list(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('6', 'Zona', 'STORE_ZONE', '', 'La zona de mi Tienda esta localizada en', '1', '7', '2010-10-13 10:29:36', '2005-07-07 10:38:22', 'tep_cfg_get_zone_name', 'tep_cfg_pull_down_zone_list(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('7', 'Orden de los listados de productos', 'EXPECTED_PRODUCTS_SORT', 'desc', 'Este es el orden mostrado en los listados de productos', '1', '8', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'asc\', \'desc\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('8', 'Orden de los listados de productos - adicional', 'EXPECTED_PRODUCTS_FIELD', 'date_expected', 'ordena por fecha de introduccion o por nombre de producto', '1', '9', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'products_name\', \'date_expected\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('9', 'Cargar la Moneda por lenguaje', 'USE_DEFAULT_LANGUAGE_CURRENCY', 'false', 'Cargar la Moneda por lenguaje', '1', '10', '2008-03-11 19:10:07', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('10', 'Enviar emails extras', 'SEND_EXTRA_ORDER_EMAILS_TO', 'info@nhsnutritionals.com', 'Enviar emails extras a las siguientos e-mails, en el siguiente formato: Name 1 &lt;email@address1&gt;, Name 2 &lt;email@address2&gt;', '1', '11', '2011-06-04 01:59:59', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('11', 'Usar URLS seguras (aun en DESARROLLO)', 'SEARCH_ENGINE_FRIENDLY_URLS', 'false', 'Usar URLS seguras (aun en DESARROLLO)', '1', '12', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('12', 'Mostrar cesta despues de agregar producto en cesta', 'DISPLAY_CART', 'true', 'Mostrar cesta despues de agregar producto en cesta', '1', '14', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('13', 'Permitir a un invitado usar el modulo de \"Cuentale a un Amigo\"', 'ALLOW_GUEST_TO_TELL_A_FRIEND', 'true', 'Permitir a un invitado usar el modulo de \"Cuentale a un Amigo\"', '1', '15', '2008-03-31 18:45:40', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('14', 'Operador de Busqueda', 'ADVANCED_SEARCH_DEFAULT_OPERATOR', 'and', 'Operador de Busqueda', '1', '17', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'and\', \'or\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('15', 'Direccion y Telefono de la Tienda', 'STORE_NAME_ADDRESS', 'NUTRITIONAL HEALTH SCIENCE
4611 forest place
Cumming, GA 30041', 'Direccion y Telefono de la Tienda', '1', '18', '2011-05-11 22:51:36', '2005-07-07 10:38:22', NULL, 'tep_cfg_textarea(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('16', 'Mostrar la cantidad de productos por categoria', 'SHOW_COUNTS', 'true', 'Mostrar la cantidad de productos por categoria', '1', '19', NULL, '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('17', 'Impuestos decimales', 'TAX_DECIMAL_PLACES', '0', 'Impuestos decimales', '1', '20', NULL, '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('18', 'Mostrar Precios con Impuestos', 'DISPLAY_PRICE_WITH_TAX', 'true', 'Mostrar Precios con Impuestos', '1', '21', '2011-05-27 10:23:49', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
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
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('67', 'Modulos de Pago instalados', 'MODULE_PAYMENT_INSTALLED', 'linkpoint_api.php;paypal.php', 'Listado de los modulos de pago instalados separados por punto y coma - no necesita editarse - (Ejemplo: cc.php;cod.php;paypal.php)', '6', '0', '2011-06-04 01:42:26', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('68', 'Modulos de Costos instalados', 'MODULE_ORDER_TOTAL_INSTALLED', 'ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_coupon.php;ot_gv.php;ot_total.php', 'Listado de los modulos de costos instalados separados por punto y coma - no necesita editarse -  (Ejemplo: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)', '6', '0', '2011-05-31 01:13:19', '2005-07-07 10:38:22', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('69', 'Modulos de Envio instalados', 'MODULE_SHIPPING_INSTALLED', 'usps.php', 'Listado de los modulos de envio instalados separados por punto y coma - no necesita editarse -  (Ejemplo: ups.php;flat.php;item.php)', '6', '0', '2011-05-23 03:39:12', '2005-07-07 10:38:22', NULL, NULL);
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
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('97', 'orden', 'MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER', '6', 'orden a mostrarse', '6', '2', NULL, '2005-07-07 10:38:22', NULL, NULL);
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
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('130', 'Enable download', 'DOWNLOAD_ENABLED', 'true', 'Enable the products download functions.', '13', '1', '2011-05-31 01:09:16', '2005-07-07 10:38:22', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
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
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('616', 'Last Database Restore', 'DB_LAST_RESTORE', 'db_nhsnutri_database-20110522022102.sql', 'Last database restore file', '6', '0', '0000-00-00 00:00:00', '2011-05-21 22:48:14', '', '');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('796', 'To offer a gift voucher', 'NEW_SIGNUP_GIFT_VOUCHER_AMOUNT', '0', 'Please indicate the amount of the gift voucher which you want to offer a new customer.<br><br>Put 0 if you do not want to offer gift voucher.<br>', '1', '31', NULL, '2003-12-05 05:01:41', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('871', 'Enter special character conversions', 'SEO_CHAR_CONVERT_SET', '', 'This setting will convert characters.<br><br>The format <b>MUST</b> be in the form: <b>char=>conv,char2=>conv2</b>', '119', '24', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('872', 'Remove all non-alphanumeric characters?', 'SEO_REMOVE_ALL_SPEC_CHARS', 'false', 'This will remove all non-letters and non-numbers.  This should be handy to remove all special characters with 1 setting.', '119', '25', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
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
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('608', 'Store Number', 'MODULE_PAYMENT_LINKPOINT_API_LOGIN', '1311986', 'The 6 or 7 digit store number for LinkPoint. For Yourpay accounts you must enter your 10 digit store number.', '6', '0', NULL, '2011-05-20 20:44:30', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('607', 'Enable Linkpoint API module', 'MODULE_PAYMENT_LINKPOINT_API_STATUS', 'True', 'Do you want to accept Linkpoint payments?', '6', '0', NULL, '2011-05-20 20:44:30', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('873', 'Reset SEO URLs Cache', 'SEO_URLS_CACHE_RESET', 'false', 'This will reset the cache data for SEO', '119', '26', '2011-06-09 12:36:11', '2011-06-09 12:36:11', 'tep_reset_cache_data_seo_urls', 'tep_cfg_select_option(array(\'reset\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('874', 'Uninstall Ultimate SEO', 'SEO_URLS_DB_UNINSTALL', 'false', 'This will delete all of the entries in the configuration table for SEO', '119', '27', '2011-06-09 12:36:11', '2011-06-09 12:36:11', 'tep_reset_cache_data_seo_urls', 'tep_cfg_select_option(array(\'uninstall\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('866', 'Enable Page Editor cache?', 'USE_SEO_CACHE_NEWS', 'true', 'This will turn off caching for the News pages.', '119', '19', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('867', 'Enable automatic redirects?', 'USE_SEO_REDIRECT', 'true', 'This will activate the automatic redirect code and send 301 headers for old to new URLs.', '119', '20', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('868', 'Enable use Header Tags SEO as name?', 'USE_SEO_HEADER_TAGS', 'false', 'This will cause the title set in Header Tags SEO to be used instead of the categories or products name.', '119', '21', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('869', 'Enable permormance checker?', 'USE_SEO_PERFORMANCE_CHECK', 'false', 'This will cause the code to track all database queries so that its affect on the speed of the page can be determined. Enabling it will cause a small speed loss.', '119', '22', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('870', 'Choose URL Rewrite Type', 'SEO_REWRITE_TYPE', 'Rewrite', 'Choose which SEO URL format to use.', '119', '23', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'Rewrite\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('865', 'Enable Page Editor cache?', 'USE_SEO_CACHE_PAGE_EDITOR', 'true', 'This will turn off caching for the Page Editor pages.', '119', '18', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('864', 'Enable Pollbooth cache?', 'USE_SEO_CACHE_POLLBOOTH', 'false', 'This will turn off caching for Pollbooth.', '119', '17', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('863', 'Enable NewsDesk Categories cache?', 'USE_SEO_CACHE_NEWSDESK_CATEGORIES', 'false', 'This will turn off caching for the NewsDesk Category pages.', '119', '16', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('862', 'Enable NewsDesk Articles cache?', 'USE_SEO_CACHE_NEWSDESK_ARTICLES', 'false', 'This will turn off caching for the NewsDesk Article pages.', '119', '15', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('861', 'Enable Links Manager cache?', 'USE_SEO_CACHE_LINKS', 'false', 'This will turn off caching for the Links Manager category pages.', '119', '14', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('860', 'Enable Information Pages cache?', 'USE_SEO_CACHE_INFO_PAGES', 'false', 'This will turn off caching for Information Pages.', '119', '13', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('859', 'Enable FAQDesk Categories cache?', 'USE_SEO_CACHE_FAQDESK_CATEGORIES', 'false', 'This will turn off caching for the FAQDesk Category pages.', '119', '12', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('857', 'Enable Articles Manager Articles cache?', 'USE_SEO_CACHE_ARTICLES', 'false', 'This will turn off caching for the Articles Manager articles.', '119', '10', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('858', 'Enable Articles Manager Topics cache?', 'USE_SEO_CACHE_TOPICS', 'false', 'This will turn off caching for the Articles Manager topics.', '119', '11', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('856', 'Enable manufacturers cache?', 'USE_SEO_CACHE_MANUFACTURERS', 'true', 'This will turn off caching for the manufacturers.', '119', '9', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('855', 'Enable categories cache?', 'USE_SEO_CACHE_CATEGORIES', 'true', 'This will turn off caching for the categories.', '119', '8', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('853', 'Enable SEO cache to save queries?', 'USE_SEO_CACHE_GLOBAL', 'true', 'This is a global setting and will turn off caching completely.', '119', '6', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('854', 'Enable product cache?', 'USE_SEO_CACHE_PRODUCTS', 'true', 'This will turn off caching for the products.', '119', '7', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('851', 'Filter Short Words', 'SEO_URLS_FILTER_SHORT_WORDS', '3', 'This setting will filter words less than or equal to the value from the URL.', '119', '4', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('852', 'Output W3C valid URLs (parameter string)?', 'SEO_URLS_USE_W3C_VALID', 'true', 'This setting will output W3C valid URLs.', '119', '5', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('848', 'Add cPath to product URLs?', 'SEO_ADD_CID_TO_PRODUCT_URLS', 'false', 'This setting will append the cPath to the end of product URLs (i.e. - some-product-p-1.html?cPath=xx).', '119', '1', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('850', 'Add category parent to begining of URLs?', 'SEO_ADD_CAT_PARENT', 'false', 'This setting will add the category parent(s) name to the beginning of the category URLs (i.e. - parent-category-c-1.html).', '119', '3', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('644', 'Enable USPS Shipping', 'MODULE_SHIPPING_USPS_STATUS', 'True', 'Do you want to offer USPS shipping?', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('645', 'Enter the USPS User ID', 'MODULE_SHIPPING_USPS_USERID', '113NUTRI4656', 'Enter the USPS USERID assigned to you. <u>You must contact USPS to have them switch you to the Production server.</u>  Otherwise this module will not work!', '6', '3', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_multiinput_list(array(\'\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('646', 'Sort Order', 'MODULE_SHIPPING_USPS_SORT_ORDER', '0', 'Sort order of display.', '6', '0', NULL, '2011-05-21 23:26:10', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('647', 'Tax Class', 'MODULE_SHIPPING_USPS_TAX_CLASS', '0', 'Use the following tax class on the shipping fee.', '6', '0', NULL, '2011-05-21 23:26:10', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('648', 'Shipping Zone', 'MODULE_SHIPPING_USPS_ZONE', '1', 'If a zone is selected, only enable this shipping method for that zone.', '6', '0', NULL, '2011-05-21 23:26:10', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('649', 'Display Options', 'MODULE_SHIPPING_USPS_OPTIONS', 'Display weight, Display transit time, Display insurance', 'Select display options', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_select_multioption(array(\'Display weight\', \'Display transit time\', \'Display insurance\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('650', 'Processing Time', 'MODULE_SHIPPING_USPS_PROCESSING', '1', 'Days to Process Order', '6', '0', NULL, '2011-05-21 23:26:10', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('651', 'Domestic Shipping Methods', 'MODULE_SHIPPING_USPS_DMSTC_TYPES', 'Priority Mail regimark', 'Select the domestic services to be offered:', '6', '4', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_select_multioption(array(\'First-Class Mail regimark\', \'Media Mail regimark\', \'Parcel Post regimark\', \'Priority Mail regimark\', \'Priority Mail regimark Flat Rate Envelope\', \'Priority Mail regimark Small Flat Rate Box\', \'Priority Mail regimark Medium Flat Rate Box\', \'Priority Mail regimark Large Flat Rate Box\', \'Express Mail regimark\', \'Express Mail regimark Flat Rate Envelope\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('799', 'Display Total', 'MODULE_ORDER_TOTAL_GV_STATUS', 'true', 'Do you want to display the Gift Voucher value?', '6', '1', NULL, '2011-05-31 01:10:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('652', 'Domestic Rates', 'MODULE_SHIPPING_USPS_DMSTC_RATE', 'Retail', 'Charge retail pricing or internet pricing?', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_select_option(array(\'Retail\', \'Internet\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('653', 'Domestic Delivery Confirmation', 'MODULE_SHIPPING_USPS_DMST_DEL_CONF', 'True', 'Automatically charge Delivery Confirmation for first class and parcel ($0.19)?', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('654', 'Domestic Signature Confirmation', 'MODULE_SHIPPING_USPS_DMST_SIG_CONF', 'True', 'Automatically charge Signature Confirmation when available ($1.95)?', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('655', 'Signature Confirmation Threshold', 'MODULE_SHIPPING_USPS_SIG_THRESH', '100', 'Order total required before Signature Confirmation is triggered?', '6', '0', NULL, '2011-05-21 23:26:10', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('656', 'Domestic Insurance Options', 'MODULE_SHIPPING_USPS_DMSTC_INSURANCE_OPTION', 'False', 'Force USPS Calculated Domestic Insurance?', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('657', 'Domestic Flat Handling Fees', 'MODULE_SHIPPING_USPS_DMSTC_HANDLING', '0, 0, 0, 0, 0, 0, 0, 0, 0, 0', 'Add a different handling fee for each shipping type.', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_multiinput_list(array(\'First-Class\', \'Media\', \'Parcel\', \'Priority\', \'Priority Flat Env\', \'Priority Sm Flat Box\', \'Priority Med Flat Box\', \'Priority Lg Flat Box\', \'Express\', \'Express Flat Env\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('658', 'Domestic First-Class Threshold', 'MODULE_SHIPPING_USPS_DMSTC_FIRSTCLASS_THRESHOLD', '0, 3.5, 3.5, 10, 10, 13', '<u>Maximums:</u><br>Letters 3.5oz<br>Large envelopes and parcels 13oz', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_multiinput_duallist_oz(array(\'Letter\', \'Lg Env\', \'Package\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('659', 'Domestic Other Mail Threshold', 'MODULE_SHIPPING_USPS_DMSTC_OTHER_THRESHOLD', '0, 3, 0, 3, 3, 11, 11, 15, 0, 70, 0, 3, 0, 70, 0, 70, 0, 70', '<u>Maximums:</u><br>70 lb', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_multiinput_duallist_lb(array(\'Flat Rate Envelope\', \'Sm Flat Rate Box\', \'Md Flat Rate Box\', \'Lg Flat Rate Box\', \'Standard Priority\', \'Express FltRt Env\', \'Express Standard\', \'Parcel Pst\', \'Media Mail\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('660', 'Int\'l Shipping Methods', 'MODULE_SHIPPING_USPS_INTL_TYPES', 'Priority Mail International', 'Select the international services to be offered:', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_select_multioption(array(\'Global Express\', \'Global Express Non-Doc Rect\', \'Global Express Non-Doc Non-Rect\', \'USPS GXG Envelopes\', \'Express Mail Int\', \'Express Mail Int Flat Rate Env\', \'Priority Mail International\', \'Priority Mail Int Flat Rate Env\', \'Priority Mail Int Flat Rate Small Box\', \'Priority Mail Int Flat Rate Med Box\', \'Priority Mail Int Flat Rate Lrg Box\', \'First-Class Mail Int Lrg Env\', \'First-Class Mail Int Package\', \'First-Class Mail Int Letter\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('797', 'To offer a discount coupon', 'NEW_SIGNUP_DISCOUNT_COUPON', '', 'To offer a discount coupon to a new customer, enter the code of the coupon.<br><br>Leave empty if you do not want to offer discount coupon.<BR>', '1', '32', NULL, '2003-12-05 05:01:41', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('661', 'Int\'l Rates', 'MODULE_SHIPPING_USPS_INTL_RATE', 'Retail', 'Charge retail pricing or internet pricing?', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_select_option(array(\'Retail\', \'Internet\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('662', 'Int\'l Insurance Options', 'MODULE_SHIPPING_USPS_INTL_INSURANCE_OPTION', 'False', 'Force USPS Calculated International Insurance?', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('663', 'Int\'l Flat Handling Fees', 'MODULE_SHIPPING_USPS_INTL_HANDLING', '0', 'Add a flat fee international shipping.', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_multiinput_list(array(\'\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('664', 'Int\'l Package Sizes', 'MODULE_SHIPPING_USPS_INTL_SIZE', '1, 1, 1, 0', 'Standard package dimensions required by USPS for international rates', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_multiinput_list(array(\'Width\', \'Length\', \'Height\', \'Girth\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('665', 'Non USPS Insurance - Domestic and international', 'MODULE_SHIPPING_USPS_INSURE', 'False', 'Would you like to charge insurance for packages independent of USPS, i.e, merchant provided, Stamps.com, Endicia?  If used in conjunction with USPS calculated insurance, the higher of the two will apply.', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('666', 'Non USPS Insurance', 'MODULE_SHIPPING_USPS_INS1', '1.75', 'Totals $.01-$50.00', '6', '0', NULL, '2011-05-21 23:26:10', 'currencies->format', NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('667', 'Non USPS Insurance', 'MODULE_SHIPPING_USPS_INS2', '2.25', 'Totals $50.01-$100', '6', '0', NULL, '2011-05-21 23:26:10', 'currencies->format', NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('668', 'Non USPS Insurance', 'MODULE_SHIPPING_USPS_INS3', '2.75', 'Totals $100.01-$200', '6', '0', NULL, '2011-05-21 23:26:10', 'currencies->format', NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('669', 'Non USPS Insurance', 'MODULE_SHIPPING_USPS_INS4', '4.70', 'Totals $200.01-$300', '6', '0', NULL, '2011-05-21 23:26:10', 'currencies->format', NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('670', 'Non USPS Insurance', 'MODULE_SHIPPING_USPS_INS5', '1.00', 'For every $100 over $300 (add)', '6', '0', NULL, '2011-05-21 23:26:10', 'currencies->format', NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('671', 'Insure Tax?', 'MODULE_SHIPPING_USPS_INSURE_TAX', 'False', 'Would you like to insure sales tax paid by the customer?', '6', '0', NULL, '2011-05-21 23:26:10', NULL, 'tep_cfg_select_option(array(\'True\', \'False\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('849', 'Add category parent to product URLs?', 'SEO_ADD_CPATH_TO_PRODUCT_URLS', 'false', 'This setting will append the category parent(s) name to the product URLs (i.e. - parent-some-product-p-1.html).', '119', '2', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('847', 'Enable SEO URLs?', 'SEO_ENABLED', 'true', 'Enable the SEO URLs?  This is a global setting and will turn them off completely.', '119', '0', '2011-06-09 12:36:11', '2011-06-09 12:36:11', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'),');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('800', 'Sort Order', 'MODULE_ORDER_TOTAL_GV_SORT_ORDER', '5', 'Sort order of display.', '6', '2', NULL, '2011-05-31 01:10:33', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('801', 'Queue Purchases', 'MODULE_ORDER_TOTAL_GV_QUEUE', 'false', 'Do you want to queue purchases of the Gift Voucher?', '6', '3', NULL, '2011-05-31 01:10:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('802', 'Include Shipping', 'MODULE_ORDER_TOTAL_GV_INC_SHIPPING', 'true', 'Include Shipping in calculation', '6', '5', NULL, '2011-05-31 01:10:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('803', 'Include Tax', 'MODULE_ORDER_TOTAL_GV_INC_TAX', 'true', 'Include Tax in calculation.', '6', '6', NULL, '2011-05-31 01:10:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('804', 'Re-calculate Tax', 'MODULE_ORDER_TOTAL_GV_CALC_TAX', 'None', 'Re-Calculate Tax', '6', '7', NULL, '2011-05-31 01:10:33', NULL, 'tep_cfg_select_option(array(\'None\', \'Standard\', \'Credit Note\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('805', 'Tax Class', 'MODULE_ORDER_TOTAL_GV_TAX_CLASS', '0', 'Use the following tax class when treating Gift Voucher as Credit Note.', '6', '0', NULL, '2011-05-31 01:10:33', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes(');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('806', 'Credit including Tax', 'MODULE_ORDER_TOTAL_GV_CREDIT_TAX', 'false', 'Add tax to purchased Gift Voucher when crediting to Account', '6', '8', NULL, '2011-05-31 01:10:33', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('807', 'Display Total', 'MODULE_ORDER_TOTAL_COUPON_STATUS', 'true', 'Do you want to display the Discount Coupon value?', '6', '1', NULL, '2011-05-31 01:10:38', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('808', 'Sort Order', 'MODULE_ORDER_TOTAL_COUPON_SORT_ORDER', '4', 'Sort order of display.', '6', '2', NULL, '2011-05-31 01:10:38', NULL, NULL);
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('809', 'Include Shipping', 'MODULE_ORDER_TOTAL_COUPON_INC_SHIPPING', 'true', 'Include Shipping in calculation', '6', '5', NULL, '2011-05-31 01:10:38', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('810', 'Include Tax', 'MODULE_ORDER_TOTAL_COUPON_INC_TAX', 'true', 'Include Tax in calculation.', '6', '6', NULL, '2011-05-31 01:10:38', NULL, 'tep_cfg_select_option(array(\'true\', \'false\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('811', 'Re-calculate Tax', 'MODULE_ORDER_TOTAL_COUPON_CALC_TAX', 'None', 'Re-Calculate Tax', '6', '7', NULL, '2011-05-31 01:10:38', NULL, 'tep_cfg_select_option(array(\'None\', \'Standard\', \'Credit Note\'), ');
insert into configuration (configuration_id, configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, last_modified, date_added, use_function, set_function) values ('812', 'Tax Class', 'MODULE_ORDER_TOTAL_COUPON_TAX_CLASS', '0', 'Use the following tax class when treating Discount Coupon as Credit Note.', '6', '0', NULL, '2011-05-31 01:10:38', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes(');
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
insert into configuration_group (configuration_group_id, configuration_group_title, configuration_group_description, sort_order, visible) values ('119', 'SEO URLs', 'Options for Ultimate SEO URLs by Chemo', '16', '1');
drop table if exists counter;
create table counter (
  startdate char(8) ,
  counter int(12) 
);

insert into counter (startdate, counter) values ('20050707', '685873');
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
drop table if exists coupon_email_track;
create table coupon_email_track (
  unique_id int(11) not null auto_increment,
  coupon_id int(11) default '0' not null ,
  customer_id_sent int(11) default '0' not null ,
  sent_firstname varchar(32) ,
  sent_lastname varchar(32) ,
  emailed_to varchar(32) ,
  date_sent datetime default '0000-00-00 00:00:00' not null ,
  PRIMARY KEY (unique_id)
);

insert into coupon_email_track (unique_id, coupon_id, customer_id_sent, sent_firstname, sent_lastname, emailed_to, date_sent) values ('1', '1', '0', 'Admin', NULL, 'joeperalta@apolomultimedia.com', '2011-06-07 18:50:30');
insert into coupon_email_track (unique_id, coupon_id, customer_id_sent, sent_firstname, sent_lastname, emailed_to, date_sent) values ('2', '2', '245', 'joe', 'peralta', 'gastonramirezvivanco@gmail.com', '2011-06-07 19:05:16');
insert into coupon_email_track (unique_id, coupon_id, customer_id_sent, sent_firstname, sent_lastname, emailed_to, date_sent) values ('3', '3', '0', 'Admin', NULL, 'joeperalta@apolomultimedia.com', '2011-06-07 19:26:24');
insert into coupon_email_track (unique_id, coupon_id, customer_id_sent, sent_firstname, sent_lastname, emailed_to, date_sent) values ('4', '4', '245', 'joe', 'peralta', 'gastonramirezvivanco@gmail.com', '2011-06-07 19:29:03');
insert into coupon_email_track (unique_id, coupon_id, customer_id_sent, sent_firstname, sent_lastname, emailed_to, date_sent) values ('5', '5', '0', 'Admin', NULL, 'joeperalta@apolomultimedia.com', '2011-06-08 12:51:38');
insert into coupon_email_track (unique_id, coupon_id, customer_id_sent, sent_firstname, sent_lastname, emailed_to, date_sent) values ('6', '6', '245', 'joe', 'peralta', 'gastonramirezvivanco@gmail.com', '2011-06-08 12:53:41');
insert into coupon_email_track (unique_id, coupon_id, customer_id_sent, sent_firstname, sent_lastname, emailed_to, date_sent) values ('7', '7', '248', 'test', 'testing', 'joeperalta@apolomultimedia.com', '2011-06-08 13:11:03');
drop table if exists coupon_gv_customer;
create table coupon_gv_customer (
  customer_id int(5) default '0' not null ,
  amount decimal(8,4) default '0.0000' not null ,
  PRIMARY KEY (customer_id),
  KEY customer_id (customer_id)
);

drop table if exists coupon_gv_queue;
create table coupon_gv_queue (
  unique_id int(5) not null auto_increment,
  customer_id int(5) default '0' not null ,
  order_id int(5) default '0' not null ,
  amount decimal(8,4) default '0.0000' not null ,
  date_created datetime default '0000-00-00 00:00:00' not null ,
  ipaddr varchar(32) not null ,
  release_flag char(1) default 'N' not null ,
  PRIMARY KEY (unique_id),
  KEY uid (unique_id, customer_id, order_id)
);

drop table if exists coupon_redeem_track;
create table coupon_redeem_track (
  unique_id int(11) not null auto_increment,
  coupon_id int(11) default '0' not null ,
  customer_id int(11) default '0' not null ,
  redeem_date datetime default '0000-00-00 00:00:00' not null ,
  redeem_ip varchar(32) ,
  order_id int(11) default '0' not null ,
  PRIMARY KEY (unique_id)
);

insert into coupon_redeem_track (unique_id, coupon_id, customer_id, redeem_date, redeem_ip, order_id) values ('1', '1', '245', '2011-06-07 19:05:16', '', '0');
insert into coupon_redeem_track (unique_id, coupon_id, customer_id, redeem_date, redeem_ip, order_id) values ('2', '2', '248', '2011-06-07 19:22:00', '', '106');
insert into coupon_redeem_track (unique_id, coupon_id, customer_id, redeem_date, redeem_ip, order_id) values ('3', '3', '245', '2011-06-07 19:29:03', '', '0');
insert into coupon_redeem_track (unique_id, coupon_id, customer_id, redeem_date, redeem_ip, order_id) values ('4', '5', '245', '2011-06-08 12:53:41', '', '0');
insert into coupon_redeem_track (unique_id, coupon_id, customer_id, redeem_date, redeem_ip, order_id) values ('5', '6', '248', '2011-06-08 13:11:03', '', '0');
drop table if exists coupons;
create table coupons (
  coupon_id int(11) not null auto_increment,
  coupon_type char(1) default 'F' not null ,
  coupon_code varchar(32) not null ,
  coupon_amount decimal(8,4) default '0.0000' not null ,
  coupon_minimum_order decimal(8,4) default '0.0000' not null ,
  coupon_start_date datetime default '0000-00-00 00:00:00' not null ,
  coupon_expire_date datetime default '0000-00-00 00:00:00' not null ,
  uses_per_coupon int(5) default '1' not null ,
  uses_per_user int(5) default '0' not null ,
  restrict_to_products varchar(255) ,
  restrict_to_categories varchar(255) ,
  restrict_to_customers text ,
  coupon_active char(1) default 'Y' not null ,
  date_created datetime default '0000-00-00 00:00:00' not null ,
  date_modified datetime default '0000-00-00 00:00:00' not null ,
  PRIMARY KEY (coupon_id)
);

insert into coupons (coupon_id, coupon_type, coupon_code, coupon_amount, coupon_minimum_order, coupon_start_date, coupon_expire_date, uses_per_coupon, uses_per_user, restrict_to_products, restrict_to_categories, restrict_to_customers, coupon_active, date_created, date_modified) values ('1', 'G', 'a581b9', '50.0000', '0.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '0', NULL, NULL, NULL, 'Y', '2011-06-07 18:50:30', '0000-00-00 00:00:00');
insert into coupons (coupon_id, coupon_type, coupon_code, coupon_amount, coupon_minimum_order, coupon_start_date, coupon_expire_date, uses_per_coupon, uses_per_user, restrict_to_products, restrict_to_categories, restrict_to_customers, coupon_active, date_created, date_modified) values ('2', 'G', '004336f7e4', '50.0000', '0.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '0', NULL, NULL, NULL, 'Y', '2011-06-07 19:05:16', '0000-00-00 00:00:00');
insert into coupons (coupon_id, coupon_type, coupon_code, coupon_amount, coupon_minimum_order, coupon_start_date, coupon_expire_date, uses_per_coupon, uses_per_user, restrict_to_products, restrict_to_categories, restrict_to_customers, coupon_active, date_created, date_modified) values ('3', 'G', 'c0778e', '10.0000', '0.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '0', NULL, NULL, NULL, 'Y', '2011-06-07 19:26:24', '0000-00-00 00:00:00');
insert into coupons (coupon_id, coupon_type, coupon_code, coupon_amount, coupon_minimum_order, coupon_start_date, coupon_expire_date, uses_per_coupon, uses_per_user, restrict_to_products, restrict_to_categories, restrict_to_customers, coupon_active, date_created, date_modified) values ('4', 'G', '2b8ccda6b5', '10.0000', '0.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '0', NULL, NULL, NULL, 'Y', '2011-06-07 19:29:03', '0000-00-00 00:00:00');
insert into coupons (coupon_id, coupon_type, coupon_code, coupon_amount, coupon_minimum_order, coupon_start_date, coupon_expire_date, uses_per_coupon, uses_per_user, restrict_to_products, restrict_to_categories, restrict_to_customers, coupon_active, date_created, date_modified) values ('5', 'G', '10a28f', '75.0000', '0.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '0', NULL, NULL, NULL, 'Y', '2011-06-08 12:51:38', '0000-00-00 00:00:00');
insert into coupons (coupon_id, coupon_type, coupon_code, coupon_amount, coupon_minimum_order, coupon_start_date, coupon_expire_date, uses_per_coupon, uses_per_user, restrict_to_products, restrict_to_categories, restrict_to_customers, coupon_active, date_created, date_modified) values ('6', 'G', '8328442aa1', '75.0000', '0.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '0', NULL, NULL, NULL, 'Y', '2011-06-08 12:53:41', '0000-00-00 00:00:00');
insert into coupons (coupon_id, coupon_type, coupon_code, coupon_amount, coupon_minimum_order, coupon_start_date, coupon_expire_date, uses_per_coupon, uses_per_user, restrict_to_products, restrict_to_categories, restrict_to_customers, coupon_active, date_created, date_modified) values ('7', 'G', '0d9b9d6505', '75.0000', '0.0000', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '0', NULL, NULL, NULL, 'Y', '2011-06-08 13:11:03', '0000-00-00 00:00:00');
drop table if exists coupons_description;
create table coupons_description (
  coupon_id int(11) default '0' not null ,
  language_id int(11) default '0' not null ,
  coupon_name varchar(32) not null ,
  coupon_description text ,
  KEY coupon_id (coupon_id)
);

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

insert into customers (customers_id, customers_gender, customers_firstname, customers_lastname, customers_dob, customers_email_address, customers_default_address_id, customers_telephone, customers_fax, customers_password, customers_newsletter, customers_group_id, customers_group_ra, customers_payment_allowed, customers_shipment_allowed) values ('245', '', 'joe', 'peralta', '0000-00-00 00:00:00', 'joeperalta@apolomultimedia.com', '261', '507-933- 4003', '', 'f346bb1c9019faa413193917b6deaa8c:4d', '0', '1', '', '', '');
insert into customers (customers_id, customers_gender, customers_firstname, customers_lastname, customers_dob, customers_email_address, customers_default_address_id, customers_telephone, customers_fax, customers_password, customers_newsletter, customers_group_id, customers_group_ra, customers_payment_allowed, customers_shipment_allowed) values ('244', '', 'Monica', 'Levin', '0000-00-00 00:00:00', 'monica48393@gmail.com', '260', '248-6-656-2505', '', 'ad5d264bc5483b5af73c397dc1f17239:25', '', '1', '0', '', '');
insert into customers (customers_id, customers_gender, customers_firstname, customers_lastname, customers_dob, customers_email_address, customers_default_address_id, customers_telephone, customers_fax, customers_password, customers_newsletter, customers_group_id, customers_group_ra, customers_payment_allowed, customers_shipment_allowed) values ('249', '', 'Linda', 'Posch', '0000-00-00 00:00:00', 'ezdoc21@bellsouth.net', '270', '706-265-2372', '', 'c26542db16faa56a7424253cc3f24d58:32', '', '1', '0', '', '');
insert into customers (customers_id, customers_gender, customers_firstname, customers_lastname, customers_dob, customers_email_address, customers_default_address_id, customers_telephone, customers_fax, customers_password, customers_newsletter, customers_group_id, customers_group_ra, customers_payment_allowed, customers_shipment_allowed) values ('247', '', 'CLARISSA', 'ALLEN', '0000-00-00 00:00:00', 'CHASERS_LA@YAHOO.COM', '266', '949-387-8687', '', 'd25cdc0b5a8b9bac859a6c09d3fe46ea:ab', '1', '1', '0', '', '');
insert into customers (customers_id, customers_gender, customers_firstname, customers_lastname, customers_dob, customers_email_address, customers_default_address_id, customers_telephone, customers_fax, customers_password, customers_newsletter, customers_group_id, customers_group_ra, customers_payment_allowed, customers_shipment_allowed) values ('248', '', 'test', 'testing', '0000-00-00 00:00:00', 'gastonramirezvivanco@gmail.com', '268', '507 933 4003', '', 'd6f52c14d67cdff1ffaa27c3c5459d4e:ff', '', '1', '0', '', '');
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

insert into customers_basket (customers_basket_id, customers_id, products_id, customers_basket_quantity, final_price, customers_basket_date_added) values ('76', '244', '2616', '1', '0.0000', '20110527');
insert into customers_basket (customers_basket_id, customers_id, products_id, customers_basket_quantity, final_price, customers_basket_date_added) values ('78', '244', '2593', '1', '0.0000', '20110527');
insert into customers_basket (customers_basket_id, customers_id, products_id, customers_basket_quantity, final_price, customers_basket_date_added) values ('152', '249', '2593', '1', '0.0000', '20110620');
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

insert into customers_groups_tax_rates_exempt (customers_group_id, tax_rates_id) values ('1', '11');
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
insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications) values ('245', '2011-06-14 10:39:54', '53', '2011-05-25 11:58:34', '2011-05-27 14:52:28', '0');
insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications) values ('244', '2011-05-27 09:31:08', '2', '2011-05-24 09:44:23', NULL, '0');
insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications) values ('249', NULL, '0', '2011-06-20 07:35:01', NULL, '0');
insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications) values ('247', '2011-06-08 21:24:14', '6', '2011-06-02 01:17:28', '2011-06-02 02:14:40', '0');
insert into customers_info (customers_info_id, customers_info_date_of_last_logon, customers_info_number_of_logons, customers_info_date_account_created, customers_info_date_account_last_modified, global_product_notifications) values ('248', '2011-06-08 13:10:39', '3', '2011-06-07 19:15:35', '2011-06-07 19:16:34', '0');
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

insert into eventos (id_eventos, image_eventos, date_eventos) values ('6', '', 'May 30, 2011, 9:57 pm');
drop table if exists eventos_description;
create table eventos_description (
  id_eventos_description bigint(20) not null auto_increment,
  id_eventos int(11) default '0' not null ,
  title_eventos varchar(200) ,
  content_eventos longtext ,
  id_language int(11) default '0' not null ,
  PRIMARY KEY (id_eventos_description)
);

insert into eventos_description (id_eventos_description, id_eventos, title_eventos, content_eventos, id_language) values ('8', '6', 'test ', 'testing', '1');
drop table if exists events;
create table events (
  id_events int(11) not null auto_increment,
  image_events varchar(200) ,
  date_events varchar(200) not null ,
  PRIMARY KEY (id_events)
);

insert into events (id_events, image_events, date_events) values ('5', '', 'May 30, 2011, 9:57 pm');
drop table if exists events_description;
create table events_description (
  id_events_description bigint(20) not null auto_increment,
  id_events int(11) default '0' not null ,
  title_events varchar(200) ,
  content_events longtext ,
  id_language int(11) default '0' not null ,
  PRIMARY KEY (id_events_description)
);

insert into events_description (id_events_description, id_events, title_events, content_events, id_language) values ('8', '5', 'TEST', 'testing', '1');
drop table if exists flash_banner;
create table flash_banner (
  id_flash_banner int(11) not null auto_increment,
  link_flash_banner varchar(200) ,
  PRIMARY KEY (id_flash_banner)
);

insert into flash_banner (id_flash_banner, link_flash_banner) values ('5', 'http://www.nhsnutritionals.com/adrenal-fatigue-p-2596.html');
insert into flash_banner (id_flash_banner, link_flash_banner) values ('6', 'http://www.nhsnutritionals.com/complete-nutritional-system-p-2609.html');
insert into flash_banner (id_flash_banner, link_flash_banner) values ('7', 'http://www.nhsnutritionals.com/candida-cleanse-p-2610.html');
insert into flash_banner (id_flash_banner, link_flash_banner) values ('8', 'http://www.nhsnutritionals.com/lower-cholesterol-naturally-p-2611.html');
insert into flash_banner (id_flash_banner, link_flash_banner) values ('9', 'http://www.nhsnutritionals.com/enhance-immune-system-p-2612.html');
insert into flash_banner (id_flash_banner, link_flash_banner) values ('10', 'http://www.nhsnutritionals.com/natural-osteoporosis-treatment-p-2613.html');
insert into flash_banner (id_flash_banner, link_flash_banner) values ('11', 'http://www.nhsnutritionals.com/benign-prostatic-hyperplasia-p-2614.html');
insert into flash_banner (id_flash_banner, link_flash_banner) values ('12', 'http://www.nhsnutritionals.com/rheumatoid-arthritis-treatments-p-2615.html');
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
insert into flash_banner_description (id_flash_banner_description, id_flash_banner, img_flash_banner, id_language) values ('13', '9', 'banner9_1.jpg', '1');
insert into flash_banner_description (id_flash_banner_description, id_flash_banner, img_flash_banner, id_language) values ('14', '10', 'banner7_1.jpg', '1');
insert into flash_banner_description (id_flash_banner_description, id_flash_banner, img_flash_banner, id_language) values ('15', '11', 'banner6_1.jpg', '1');
insert into flash_banner_description (id_flash_banner_description, id_flash_banner, img_flash_banner, id_language) values ('16', '12', 'banner8_1.jpg', '1');
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
insert into geo_zones (geo_zone_id, geo_zone_name, geo_zone_description, last_modified, date_added) values ('2', 'georgia', 'georgia', NULL, '2011-05-26 16:16:30');
drop table if exists get_1_free;
create table get_1_free (
  get_1_free_id int(11) not null auto_increment,
  products_id int(11) default '0' not null ,
  products_qualify_quantity int(11) default '0' not null ,
  products_multiple int(11) default '0' not null ,
  products_free_id int(11) default '0' not null ,
  products_free_quantity int(11) default '0' not null ,
  get_1_free_date_added datetime ,
  get_1_free_last_modified datetime ,
  get_1_free_expires_date datetime ,
  date_status_change datetime ,
  status int(1) default '1' not null ,
  PRIMARY KEY (get_1_free_id)
);

insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('1', '2593', '3', '2147483647', '2593', '1', '2011-05-22 23:35:37', '2011-05-25 21:44:37', '0000-00-00 00:00:00', NULL, '1');
insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('2', '2599', '3', '2147483647', '2599', '1', '2011-05-25 16:45:14', '2011-05-25 21:45:42', '0000-00-00 00:00:00', NULL, '1');
insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('3', '2594', '3', '2147483647', '2594', '1', '2011-05-25 16:46:35', '2011-05-25 21:45:52', '0000-00-00 00:00:00', NULL, '1');
insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('4', '2607', '3', '2147483647', '2607', '1', '2011-05-25 16:47:11', '2011-05-25 21:46:06', '0000-00-00 00:00:00', NULL, '1');
insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('5', '2608', '3', '2147483647', '2608', '1', '2011-05-25 16:47:43', '2011-05-25 21:46:19', '0000-00-00 00:00:00', NULL, '1');
insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('6', '2616', '3', '2147483647', '2616', '1', '2011-05-25 16:48:25', '2011-05-25 21:46:30', '0000-00-00 00:00:00', NULL, '1');
insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('7', '2606', '3', '2147483647', '2606', '1', '2011-05-25 16:49:42', '2011-05-25 21:46:59', '0000-00-00 00:00:00', NULL, '1');
insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('8', '2603', '3', '2147483647', '2603', '1', '2011-05-25 16:50:28', '2011-05-25 21:47:10', '0000-00-00 00:00:00', NULL, '1');
insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('9', '2602', '3', '2147483647', '2602', '1', '2011-05-25 16:51:03', '2011-05-25 21:47:21', '0000-00-00 00:00:00', NULL, '1');
insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('10', '2601', '3', '2147483647', '2601', '1', '2011-05-25 16:51:34', '2011-05-25 21:47:30', '0000-00-00 00:00:00', NULL, '1');
insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('11', '2597', '3', '2147483647', '2597', '1', '2011-05-25 16:52:49', '2011-05-25 21:47:53', '0000-00-00 00:00:00', NULL, '1');
insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('12', '2598', '3', '2147483647', '2598', '1', '2011-05-25 16:53:50', '2011-05-25 21:48:11', '0000-00-00 00:00:00', NULL, '1');
insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('13', '2595', '3', '2147483647', '2595', '1', '2011-05-25 16:54:39', '2011-05-25 21:48:03', '0000-00-00 00:00:00', NULL, '1');
insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('14', '2604', '3', '2147483647', '2604', '1', '2011-05-25 16:55:42', '2011-05-25 21:46:47', '0000-00-00 00:00:00', NULL, '1');
insert into get_1_free (get_1_free_id, products_id, products_qualify_quantity, products_multiple, products_free_id, products_free_quantity, get_1_free_date_added, get_1_free_last_modified, get_1_free_expires_date, date_status_change, status) values ('15', '2600', '3', '2147483647', '2600', '1', '2011-05-25 16:56:31', '2011-05-25 21:47:40', '0000-00-00 00:00:00', NULL, '1');
drop table if exists gift_certificate_redemptions;
create table gift_certificate_redemptions (
  gcredeem_index int(11) not null auto_increment,
  gc_code char(11) not null ,
  redeemed_by int(11) ,
  amount_redeemed double ,
  date_redeemed date ,
  PRIMARY KEY (gcredeem_index)
);

insert into gift_certificate_redemptions (gcredeem_index, gc_code, redeemed_by, amount_redeemed, date_redeemed) values ('1', '14HrkftbxoU', '243', '0', '2011-05-23');
drop table if exists gift_certificates;
create table gift_certificates (
  gc_code char(11) not null ,
  amount_purchased double ,
  amount_redeemed double ,
  purchased_by int(11) ,
  redeemed_by int(11) ,
  purchase_date date ,
  last_redeemed date ,
  UNIQUE gc_code (gc_code)
);

insert into gift_certificates (gc_code, amount_purchased, amount_redeemed, purchased_by, redeemed_by, purchase_date, last_redeemed) values ('1J6wyLBdedc', '100', '0', '243', NULL, '2011-05-23', NULL);
insert into gift_certificates (gc_code, amount_purchased, amount_redeemed, purchased_by, redeemed_by, purchase_date, last_redeemed) values ('1hzyPVqnTl5', '100', '0', '243', NULL, '2011-05-23', NULL);
insert into gift_certificates (gc_code, amount_purchased, amount_redeemed, purchased_by, redeemed_by, purchase_date, last_redeemed) values ('1y96fpnGwPb', '100', '0', '243', NULL, '2011-05-23', NULL);
insert into gift_certificates (gc_code, amount_purchased, amount_redeemed, purchased_by, redeemed_by, purchase_date, last_redeemed) values ('1VdncPFPM9J', '100', '0', '243', NULL, '2011-05-23', NULL);
insert into gift_certificates (gc_code, amount_purchased, amount_redeemed, purchased_by, redeemed_by, purchase_date, last_redeemed) values ('1ql79HCr6Gj', '100', '0', '243', NULL, '2011-05-23', NULL);
insert into gift_certificates (gc_code, amount_purchased, amount_redeemed, purchased_by, redeemed_by, purchase_date, last_redeemed) values ('1D0mqHeCkzF', '100', '0', '243', NULL, '2011-05-23', NULL);
insert into gift_certificates (gc_code, amount_purchased, amount_redeemed, purchased_by, redeemed_by, purchase_date, last_redeemed) values ('1ZjUHqygp28', '100', '0', '243', NULL, '2011-05-23', NULL);
insert into gift_certificates (gc_code, amount_purchased, amount_redeemed, purchased_by, redeemed_by, purchase_date, last_redeemed) values ('1pHXKYxWAZG', '100', '0', '243', NULL, '2011-05-23', NULL);
insert into gift_certificates (gc_code, amount_purchased, amount_redeemed, purchased_by, redeemed_by, purchase_date, last_redeemed) values ('1pDVEYC6RCQ', '100', '0', '243', NULL, '2011-05-23', NULL);
insert into gift_certificates (gc_code, amount_purchased, amount_redeemed, purchased_by, redeemed_by, purchase_date, last_redeemed) values ('1trGzBnbWGY', '100', '0', '243', NULL, '2011-05-23', NULL);
insert into gift_certificates (gc_code, amount_purchased, amount_redeemed, purchased_by, redeemed_by, purchase_date, last_redeemed) values ('14HrkftbxoU', '100', '0', '243', '243', '2011-05-23', '2011-05-23');
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
insert into mensajes_enviados (id_mensajes_enviados, id_news, id_events, id_promotion, id_registered_user) values ('7', '6', '0', '0', '3');
insert into mensajes_enviados (id_mensajes_enviados, id_news, id_events, id_promotion, id_registered_user) values ('8', '7', '0', '0', '3');
insert into mensajes_enviados (id_mensajes_enviados, id_news, id_events, id_promotion, id_registered_user) values ('9', '8', '0', '0', '3');
insert into mensajes_enviados (id_mensajes_enviados, id_news, id_events, id_promotion, id_registered_user) values ('10', '0', '4', '0', '3');
insert into mensajes_enviados (id_mensajes_enviados, id_news, id_events, id_promotion, id_registered_user) values ('11', '8', '0', '0', '4');
insert into mensajes_enviados (id_mensajes_enviados, id_news, id_events, id_promotion, id_registered_user) values ('12', '12', '0', '0', '4');
insert into mensajes_enviados (id_mensajes_enviados, id_news, id_events, id_promotion, id_registered_user) values ('13', '0', '5', '0', '4');
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
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('7', '6', '0', '0', '3');
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('8', '7', '0', '0', '3');
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('9', '8', '0', '0', '3');
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('10', '0', '5', '0', '3');
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('11', '8', '0', '0', '4');
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('12', '12', '0', '0', '4');
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('13', '0', '6', '0', '4');
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('14', '8', '0', '0', '5');
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('15', '12', '0', '0', '5');
insert into mensajes_enviados2 (id_mensajes_enviados, id_news, id_eventos, id_promotion, id_registered_user) values ('16', '0', '6', '0', '5');
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

insert into news (id_news, image_news, date_news) values ('12', '', 'May 30, 2011, 7:33 pm');
insert into news (id_news, image_news, date_news) values ('8', '', 'May 26, 2011, 6:05 pm');
drop table if exists news_description;
create table news_description (
  id_news_description bigint(20) not null auto_increment,
  id_news int(11) default '0' not null ,
  title_news varchar(200) ,
  description_news longtext ,
  keyword_news longtext ,
  h1_news longtext ,
  content_news longtext ,
  id_language int(11) default '0' not null ,
  PRIMARY KEY (id_news_description)
);

insert into news_description (id_news_description, id_news, title_news, description_news, keyword_news, h1_news, content_news, id_language) values ('11', '8', 'Acrylamide and the Dangers of Junk Food.', 'description_text', 'acrylamide ', 'acrylamide', '<p style=\"text-align: justify;\">Every year, the United States sells billions of bags of chips. Potato chips, pretzels, puffed rice, puffed corn and just about anything else that you can deep fry invade local gas stations, vending machines, grocery stores and even school cafeterias. Available in roasted jack, sour cream, honey, barbecue, nacho cheese and many other flavors, these popular snacks have become staples of the American diet.&nbsp; As more consumers nibble on these crunchy and flavorful treats, many wonder how these processed foods affect our health.<br />
<br />
Most are aware that these snacks are mostly empty calories that upset the body\'s nutritional balance to a certain degree.&nbsp; However, many are not familiar with the cancer-causing agent included in these little bags of chips.&nbsp; Acrylamide, an industrial chemical used in pesticides and sewage treatment, is a well-documented carcinogen found in almost all processed food.<br />
<br />
In 2002, Swedish researchers accidentally discovered the presence of this substance when they heated food to high temperatures. This discovery caused quite a stir that prompted public health attorneys in California to require snack manufacturers to label each bag of potato chips they produce with prominent cancer warnings. Among the companies pursued were Cape Cod, Kettle Chips, Lays, and Pringles.<br />
<br />
As some companies continue to ignore the directive to raise awareness about carcinogenic ingredients of the chips they sell, lawsuits started to sprout. In August 2008, California\'s Attorney General won the case against Frito Lay, Heinz, and Kettle Foods for violating a state law that requires all products containing cancer-causing agents to post a prominent &quot;warning&quot; label on their packaging. Frito Lay, owned by Pepsi Cola, was asked to pay $1.5 million for omitting this information on its product labels. Other respondents of the lawsuit such as Burger King, Kentucky Fried Chicken, McDonalds, Procter and Gamble and Wendy\'s agreed to lower the amount of this carcinogenic chemical in the foods they sell.<br />
<br />
After these recent developments in the snack food industry, it may be prudent for consumers to rethink their dietary habits. Although a fast food meal or a bag of chips often satisfies the cravings for flavorful, instant food, the risk of acrylamide is simply not worth it. Consumers should go back to the basics and consume fruits and vegetables as well as boiled, raw, and steamed food items that do not contain this cancer-causing ingredient.<br />
<br />
To neglect the body by eating the wrong kinds of food does lead to cancer, diabetes, heart disease, obesity and osteoporosis. With all the fresh food available choices we have, a healthy diet and lifestyle has never been so attainable.</p>', '1');
insert into news_description (id_news_description, id_news, title_news, description_news, keyword_news, h1_news, content_news, id_language) values ('13', '12', 'test1', 'test2', 'test3', 'test4', 'content5', '1');
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
  gc text ,
  gc_code text ,
  PRIMARY KEY (orders_id)
);

insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('15', '241', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '(507) 933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-12 02:31:37', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('67', '245', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Secure Credit Card Transaction', 'Master Card', '', '5178057288041762', '0313', NULL, '2011-05-25 22:50:07', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('17', '241', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '(507) 933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-12 02:39:18', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('18', '241', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '(507) 933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-12 02:42:51', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('19', '241', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '(507) 933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Test testing', 'apolomultimedia', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-12 02:45:08', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('68', '245', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Secure Credit Card Transaction', 'Master Card', '', '5178057288041762', '0313', '2011-05-25 23:25:46', '2011-05-25 23:21:12', '3', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('69', '245', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Secure Credit Card Transaction', 'Master Card', '', '5178057288041762', '0313', NULL, '2011-05-25 23:50:38', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('70', '245', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Secure Credit Card Transaction', 'Master Card', '', '5178057288041762', '0313', NULL, '2011-05-26 04:53:05', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('71', '245', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-05-26 05:01:57', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('24', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-20 22:45:06', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('25', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-20 23:14:24', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('26', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-20 23:16:08', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('72', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'gilmarjperalta@hotmail.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-26 20:30:00', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('73', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'gilmarjperalta@hotmail.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-26 20:34:18', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('29', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-20 23:22:10', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('30', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-21 23:39:56', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('31', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-21 23:41:30', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('32', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-21 23:44:17', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('33', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-21 23:53:51', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('34', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-22 00:03:40', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('35', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-22 00:06:15', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('74', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Secure Credit Card Transaction', 'Master Card', '', '5178057288041762', '0313', NULL, '2011-05-27 20:11:55', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('75', '242', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'ezdoc21@bellsouth.net', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-27 20:24:55', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('76', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Secure Credit Card Transaction', 'Master Card', '', '5178057288041762', '0313', NULL, '2011-05-27 21:25:10', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('38', '241', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', 'apolomultimedia', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-22 00:13:13', '1', NULL, 'USD', '1.000000', NULL, NULL);
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('77', '242', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '706-265-2372', 'ezdoc21@bellsouth.net', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Secure Credit Card Transaction', 'Visa', '', '4115077733173720', '0713', NULL, '2011-05-27 21:50:40', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('78', '246', 'Yuriy Setko', '', '1207 Deer Run', '', 'Mississauga', 'L5C3S4', 'Ontario', 'Canada', '6472941708', 'yuriy@setko.ca', '1', 'Yuriy Setko', '', '1207 Deer Run', '', 'Mississauga', 'L5C3S4', 'Ontario', 'Canada', '1', 'Yuriy Setko', '', '1207 Deer Run', '', 'Mississauga', 'L5C3S4', 'Ontario', 'Canada', '1', 'PayPal', '', '', '', '', NULL, '2011-05-31 00:14:43', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('79', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-31 02:52:17', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('80', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-05-31 03:24:00', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('81', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-05-31 03:26:48', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('82', '247', 'CLARISSA ALLEN', '', '2201 ESPERANZA', '', 'IRVINE', '92618', 'California', 'United States', '949-387-8687', 'CHASERS_LA@YAHOO.COM', '2', 'CLARISSA ALLEN', '', '2201 ESPERANZA', '', 'IRVINE', '92618', 'California', 'United States', '2', 'CLARISSA ALLEN', '', '2201 ESPERANZA', '', 'IRVINE', '92618', 'California', 'United States', '2', 'Secure Credit Card Transaction', 'Visa', '', '4282087073210898', '0413', NULL, '2011-06-02 03:28:01', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('83', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', '', '', '', '', '', NULL, '2011-06-03 14:04:22', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('84', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', '', '', '', '', '', NULL, '2011-06-03 15:18:06', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('85', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', '', '', '', '', '', NULL, '2011-06-03 15:31:30', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('86', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-06-03 15:55:44', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('87', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-06-03 15:56:57', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('88', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-06-03 23:00:45', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('89', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-06-03 23:51:58', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('90', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-06-04 01:05:26', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('91', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-06-04 01:06:57', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('92', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-06-04 01:15:04', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('93', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-06-04 01:27:06', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('94', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-06-04 02:07:08', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('95', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-06-04 02:09:17', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('96', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Check/Money Order', '', '', '', '', NULL, '2011-06-04 02:24:00', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('97', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Gift Certificate', '', '', '', '', NULL, '2011-06-04 02:52:01', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('98', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-06-04 12:02:55', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('99', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Secure Credit Card Transaction', 'Visa', '', '4115077733173720', '0713', NULL, '2011-06-06 12:55:58', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('100', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Secure Credit Card Transaction', 'Visa', '', '4115077733173720', '0713', NULL, '2011-06-06 13:06:46', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('101', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Linda Posch', '', '4611 Forest Place', '', 'Cumming', '30041', 'Georgia', 'United States', '2', 'Gift Certificate', 'Visa', '', '4115077733173720', '0713', NULL, '2011-06-06 13:12:40', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('102', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-06-07 18:18:06', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('103', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-06-07 19:25:22', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('104', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-06-07 20:18:26', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('105', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-06-07 20:50:02', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('106', '248', 'test testing', '', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '507 933 4003', 'gastonramirezvivanco@gmail.com', '2', 'test testing', '', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'test testing', '', '2980 clausen st', '', 'Fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-06-07 21:22:00', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('107', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'PayPal', '', '', '', '', NULL, '2011-06-08 14:49:03', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('108', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'reynaldo leon camarena', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Secure Credit Card Transaction', 'Master Card', '', '5147501044862142', '0514', NULL, '2011-06-14 12:17:42', '1', NULL, 'USD', '1.000000', '', '');
insert into orders (orders_id, customers_id, customers_name, customers_company, customers_street_address, customers_suburb, customers_city, customers_postcode, customers_state, customers_country, customers_telephone, customers_email_address, customers_address_format_id, delivery_name, delivery_company, delivery_street_address, delivery_suburb, delivery_city, delivery_postcode, delivery_state, delivery_country, delivery_address_format_id, billing_name, billing_company, billing_street_address, billing_suburb, billing_city, billing_postcode, billing_state, billing_country, billing_address_format_id, payment_method, cc_type, cc_owner, cc_number, cc_expires, last_modified, date_purchased, orders_status, orders_date_finished, currency, currency_value, gc, gc_code) values ('109', '245', 'joe peralta', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '507-933- 4003', 'joeperalta@apolomultimedia.com', '2', '', '', '', '', '', '', '', '', '0', 'reynaldo leon camarena', '', '2980 clausen st', '', 'fitchburg', '53713', 'Wisconsin', 'United States', '2', 'Secure Credit Card Transaction', 'Master Card', '', '5147501044862142', '0514', NULL, '2011-06-14 12:41:16', '1', NULL, 'USD', '1.000000', '', '');
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
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('71', '69', '2616', '', 'Medicinal Mushrooms', '1.0000', '1.0000', '0.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('20', '0', '2596', '', 'Adrenal Pac', '80.5500', '80.5500', '0.0000', '5');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('21', '0', '2596', '', 'Adrenal Pac', '80.5500', '80.5500', '0.0000', '5');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('68', '67', '2616', '', 'Medicinal Mushrroms', '1.0000', '1.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('69', '68', '2616', '', 'Medicinal Mushrooms', '1.0000', '1.0000', '0.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('70', '68', '2615', '', 'rheumatoid pac', '2.0000', '2.0000', '0.0000', '4');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('26', '0', '2593', '', 'Adrenalkare', '1.0000', '1.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('27', '0', '2593', '', 'Adrenalkare', '1.0000', '1.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('28', '0', '2593', '', 'Adrenalkare', '1.0000', '1.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('72', '69', '2616', '', 'Medicinal Mushrooms', '0.0000', '0.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('31', '0', '2593', '', 'Adrenalkare', '1.0000', '1.0000', '0.0000', '2');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('32', '0', '2593', '', 'Adrenalkare', '59.5000', '59.5000', '0.0000', '6');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('33', '0', '2595', '', 'Whole Food Vitamin C', '29.5000', '29.5000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('34', '0', '2597', '', 'Serrapeptase  Enzymes', '59.0000', '59.0000', '0.0000', '2');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('35', '0', '2597', '', 'Serrapeptase  Enzymes', '59.0000', '59.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('36', '0', '2597', '', 'Serrapeptase  Enzymes', '59.0000', '59.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('37', '0', '2593', '', 'Adrenalkare', '59.5000', '59.5000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('73', '69', '2615', '', 'rheumatoid pac', '2.0000', '2.0000', '0.0000', '5');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('74', '70', '2615', '', 'rheumatoid pac', '2.0000', '2.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('40', '0', '2597', '', 'Serrapeptase  Enzymes', '59.0000', '59.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('75', '71', '2596', '', 'adrenal pac', '80.5500', '80.5500', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('76', '72', '2616', '', 'Medicinal Mushrooms', '83.6449', '83.6449', '0.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('77', '72', '2616', '', 'Medicinal Mushrooms', '0.0000', '0.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('78', '73', '2608', '', 'Cholestokal', '55.6075', '55.6075', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('79', '74', '2607', '', 'Candida Zymes', '46.2617', '46.2617', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('80', '75', '2604', '', 'Olive Leaf Extract', '34.1121', '34.1121', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('81', '76', '2604', '', 'Olive Leaf Extract', '34.1121', '34.1121', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('82', '77', '2594', '', 'Bio-Chelated Minerals', '36.9159', '36.9159', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('83', '77', '2593', '', 'AdrenalKare', '55.6075', '55.6075', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('84', '78', '2607', '', 'Candida Zymes', '46.2617', '46.2617', '7.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('85', '78', '2607', '', 'Candida Zymes', '0.0000', '0.0000', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('86', '78', '2604', '', 'Olive Leaf Extract', '34.1121', '34.1121', '7.0000', '6');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('87', '78', '2604', '', 'Olive Leaf Extract', '0.0000', '0.0000', '7.0000', '2');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('88', '79', '2593', '', 'AdrenalKare', '55.6075', '55.6075', '7.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('89', '79', '2593', '', 'AdrenalKare', '0.0000', '0.0000', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('90', '80', '2617', '', 'GIFT25', '25.0000', '25.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('91', '81', '2617', '', 'GIFT25', '25.0000', '25.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('92', '82', '2609', '', 'Baseline Pac', '116.4953', '116.4953', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('93', '83', '2617', 'GIFT25', 'GIFT 25', '25.0000', '25.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('94', '84', '2593', '', 'AdrenalKare', '55.6075', '55.6075', '7.0000', '2');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('95', '85', '2617', 'GIFT', 'GIFT 25', '25.0000', '25.0000', '0.0000', '2');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('96', '86', '2594', '', 'Chelated Minerals', '36.9159', '36.9159', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('97', '86', '2593', '', 'AdrenalKare', '55.6075', '55.6075', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('98', '87', '2617', 'GIFT', 'GIFT 25', '25.0000', '25.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('99', '88', '2617', 'GIFT', 'GIFT 25', '25.0000', '25.0000', '0.0000', '2');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('100', '89', '2593', '', 'AdrenalKare', '55.6075', '55.6075', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('101', '90', '2593', '', 'AdrenalKare', '55.6075', '55.6075', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('102', '91', '2599', '', 'Aloe Immune Complex', '64.9533', '64.9533', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('103', '92', '2609', '', 'Baseline Pac', '116.4953', '116.4953', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('104', '93', '2593', '', 'AdrenalKare', '55.6075', '55.6075', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('105', '94', '2613', '', 'osteo pac', '108.1776', '108.1776', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('106', '95', '2593', '', 'AdrenalKare', '55.6075', '55.6075', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('107', '96', '2593', '', 'AdrenalKare', '55.6075', '55.6075', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('108', '97', '2617', 'GIFT', 'GIFT 25', '25.0000', '25.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('109', '98', '2617', 'GIFT', 'GIFT 25', '25.0000', '25.0000', '0.0000', '4');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('110', '99', '2593', '', 'AdrenalKare', '55.6075', '55.6075', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('111', '100', '2594', '', 'Chelated Minerals', '36.9159', '36.9159', '7.0000', '2');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('112', '101', '2593', '', 'AdrenalKare', '55.6075', '55.6075', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('113', '102', '2617', 'GIFT', 'GIFT 25', '25.0000', '25.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('114', '103', '2617', 'GIFT', 'GIFT 25', '25.0000', '25.0000', '0.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('115', '104', '2617', 'GIFT', 'Gift', '25.0000', '25.0000', '0.0000', '20');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('116', '105', '2617', 'GIFT', 'Gift', '25.0000', '25.0000', '0.0000', '2');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('117', '106', '2593', '', 'AdrenalKare', '55.6075', '55.6075', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('118', '107', '2617', 'GIFT', 'Gift', '25.0000', '25.0000', '0.0000', '3');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('119', '108', '2595', '', 'Whole Food Vitamin C', '0.0935', '0.0935', '7.0000', '1');
insert into orders_products (orders_products_id, orders_id, products_id, products_model, products_name, products_price, final_price, products_tax, products_quantity) values ('120', '109', '2595', '', 'Whole Food Vitamin C', '0.0935', '0.0935', '7.0000', '1');
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
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('67', '67', '1', '2011-05-25 22:50:07', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('18', '0', '1', '2011-05-12 02:42:51', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('19', '0', '1', '2011-05-12 02:45:08', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('68', '68', '1', '2011-05-25 23:21:12', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('69', '68', '2', '2011-05-25 23:25:41', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('70', '68', '3', '2011-05-25 23:25:47', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('24', '0', '1', '2011-05-20 22:45:06', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('25', '0', '1', '2011-05-20 23:14:24', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('26', '0', '1', '2011-05-20 23:16:08', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('71', '69', '1', '2011-05-25 23:50:38', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('29', '0', '1', '2011-05-20 23:22:10', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('30', '0', '1', '2011-05-21 23:39:56', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('31', '0', '1', '2011-05-21 23:41:30', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('32', '0', '1', '2011-05-21 23:44:17', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('33', '0', '1', '2011-05-21 23:53:51', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('34', '0', '1', '2011-05-22 00:03:40', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('35', '0', '1', '2011-05-22 00:06:15', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('72', '70', '1', '2011-05-26 04:53:05', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('38', '0', '1', '2011-05-22 00:13:13', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('73', '71', '1', '2011-05-26 05:01:57', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('74', '72', '1', '2011-05-26 20:30:00', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('75', '73', '1', '2011-05-26 20:34:18', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('76', '74', '1', '2011-05-27 20:11:55', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('77', '75', '1', '2011-05-27 20:24:55', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('78', '76', '1', '2011-05-27 21:25:10', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('79', '77', '1', '2011-05-27 21:50:40', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('80', '78', '1', '2011-05-31 00:14:43', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('81', '79', '1', '2011-05-31 02:52:17', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('82', '80', '1', '2011-05-31 03:24:00', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('83', '81', '1', '2011-05-31 03:26:48', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('84', '82', '1', '2011-06-02 03:28:01', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('85', '83', '1', '2011-06-03 14:04:22', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('86', '84', '1', '2011-06-03 15:18:06', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('87', '85', '1', '2011-06-03 15:31:30', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('88', '86', '1', '2011-06-03 15:55:44', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('89', '87', '1', '2011-06-03 15:56:57', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('90', '88', '1', '2011-06-03 23:00:45', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('91', '89', '1', '2011-06-03 23:51:58', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('92', '90', '1', '2011-06-04 01:05:26', '1', '102cf5');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('93', '91', '1', '2011-06-04 01:06:57', '1', '102cf5');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('94', '92', '1', '2011-06-04 01:15:04', '1', '102cf5');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('95', '93', '1', '2011-06-04 01:27:06', '1', '102cf5');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('96', '94', '1', '2011-06-04 02:07:08', '1', '102cf5');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('97', '95', '1', '2011-06-04 02:09:17', '1', '102cf5');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('98', '96', '1', '2011-06-04 02:24:00', '1', '421836');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('99', '97', '1', '2011-06-04 02:52:01', '1', '421836');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('100', '98', '1', '2011-06-04 12:02:55', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('101', '99', '1', '2011-06-06 12:55:58', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('102', '100', '1', '2011-06-06 13:06:46', '1', '421836');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('103', '101', '1', '2011-06-06 13:12:40', '1', 'a2ee17');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('104', '102', '1', '2011-06-07 18:18:06', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('105', '103', '1', '2011-06-07 19:25:22', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('106', '104', '1', '2011-06-07 20:18:26', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('107', '105', '1', '2011-06-07 20:50:02', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('108', '106', '1', '2011-06-07 21:22:00', '1', '004336f7e4');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('109', '107', '1', '2011-06-08 14:49:03', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('110', '108', '1', '2011-06-14 12:17:42', '1', '');
insert into orders_status_history (orders_status_history_id, orders_id, orders_status_id, date_added, customer_notified, comments) values ('111', '109', '1', '2011-06-14 12:41:16', '1', '');
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

insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('188', '67', 'United States Postal Service&nbsp;<br>0 lbs, 9.6 oz (First-Class Mail<sup>&reg;</sup> Large Envelope<br>---Approx. delivery time 2 Days):', '$2.68', '2.6800', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('60', '0', 'Total:', '<b>$402.75</b>', '402.7500', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('51', '0', 'Sub-Total:', '$80.55', '80.5500', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('52', '0', 'Total:', '<b>$80.55</b>', '80.5500', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('187', '67', 'Sub-Total:', '$1.00', '1.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('55', '0', 'Sub-Total:', '$595.00', '595.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('56', '0', 'Total:', '<b>$595.00</b>', '595.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('57', '0', 'Sub-Total:', '$402.75', '402.7500', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('58', '0', 'Total:', '<b>$402.75</b>', '402.7500', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('59', '0', 'Sub-Total:', '$402.75', '402.7500', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('191', '68', 'United States Postal Service&nbsp;<br>5 lbs, 12.8 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 2 Days):', '$9.45', '9.4500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('189', '67', 'Total:', '<b>$3.68</b>', '3.6800', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('190', '68', 'Sub-Total:', '$11.00', '11.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('69', '0', 'Sub-Total:', '$1.00', '1.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('70', '0', 'Total:', '<b>$1.00</b>', '1.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('71', '0', 'Sub-Total:', '$1.00', '1.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('72', '0', 'Flat Rate (Best Way):', '$1.00', '1.0000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('73', '0', 'Total:', '<b>$2.00</b>', '2.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('74', '0', 'Sub-Total:', '$1.00', '1.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('75', '0', 'Flat Rate (Best Way):', '$1.00', '1.0000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('76', '0', 'Total:', '<b>$2.00</b>', '2.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('194', '69', 'United States Postal Service&nbsp;<br>7 lbs, 6.4 oz (Media Mail<sup>&reg;</sup><br>---Approx. delivery time 3 Days):', '$6.06', '6.0600', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('192', '68', 'Total:', '<b>$20.45</b>', '20.4500', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('193', '69', 'Sub-Total:', '$13.00', '13.0000', 'ot_subtotal', '1');
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
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('195', '69', 'Total:', '<b>$19.06</b>', '19.0600', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('102', '0', 'Sub-Total:', '$59.00', '59.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('103', '0', 'Total:', '<b>$59.00</b>', '59.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('223', '77', 'Total:', '<b>$104.80</b>', '104.8000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('198', '70', 'Total:', '<b>$5.21</b>', '5.2100', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('196', '70', 'Sub-Total:', '$2.00', '2.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('197', '70', 'United States Postal Service&nbsp;<br>1 lbs, 0 oz (Media Mail<sup>&reg;</sup><br>---Approx. delivery time 3 Days):', '$3.21', '3.2100', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('199', '71', 'Sub-Total:', '$80.55', '80.5500', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('200', '71', 'United States Postal Service&nbsp;<br>1 lbs, 0 oz (Media Mail<sup>&reg;</sup><br>---Approx. delivery time 3 Days):', '$3.21', '3.2100', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('201', '71', 'Total:', '<b>$83.76</b>', '83.7600', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('202', '72', 'Sub-Total:', '$250.92', '250.9200', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('203', '72', 'United States Postal Service&nbsp;<br>2 lbs, 6.4 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$12.50', '12.5000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('204', '72', 'Total:', '<b>$263.42</b>', '263.4200', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('205', '73', 'Sub-Total:', '$55.61', '55.6100', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('206', '73', 'United States Postal Service&nbsp;<br>0 lbs, 9.28 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$6.05', '6.0500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('207', '73', 'Total:', '<b>$61.66</b>', '61.6600', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('208', '74', 'Sub-Total:', '$49.50', '49.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('209', '74', 'Sales Tax (7%):', '$3.24', '3.2383', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('210', '74', 'United States Postal Service&nbsp;<br>0 lbs, 3.2 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$6.05', '6.0500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('211', '74', 'Total:', '<b>$55.55</b>', '55.5500', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('212', '75', 'Sub-Total:', '$36.50', '36.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('213', '75', 'Sales Tax (7%):', '$2.39', '2.3879', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('214', '75', 'United States Postal Service&nbsp;<br>0 lbs, 3.52 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 2 Days):', '$5.80', '5.8000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('215', '75', 'Total:', '<b>$42.30</b>', '42.3000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('216', '76', 'Sub-Total:', '$36.50', '36.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('217', '76', 'Sales Tax (7%):', '$2.39', '2.3879', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('218', '76', 'United States Postal Service&nbsp;<br>0 lbs, 3.52 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$6.05', '6.0500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('219', '76', 'Total:', '<b>$42.55</b>', '42.5500', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('220', '77', 'Sub-Total:', '$99.00', '99.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('221', '77', 'Sales Tax (7%):', '$6.48', '6.4766', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('222', '77', 'United States Postal Service&nbsp;<br>0 lbs, 13.92 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 2 Days):', '$5.80', '5.8000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('224', '78', 'Sub-Total:', '$367.50', '367.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('225', '78', 'Sales Tax (7%):', '$24.04', '24.0421', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('226', '78', 'United States Postal Service&nbsp;<br>6 lbs, 0 oz (Priority Mail<sup>&reg;</sup> International<br>---Approx. delivery time 6 - 10 business days):', '$30.50', '30.5000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('227', '78', 'Total:', '<b>$398.00</b>', '398.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('228', '79', 'Sub-Total:', '$178.50', '178.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('229', '79', 'Sales Tax (7%):', '$11.68', '11.6776', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('230', '79', 'United States Postal Service&nbsp;<br>2 lbs, 2.56 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$12.50', '12.5000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('231', '79', 'Total:', '<b>$191.00</b>', '191.0000', 'ot_total', '4');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('232', '80', 'Sub-Total:', '$25.00', '25.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('233', '80', 'Total:', '<b>$25.00</b>', '25.0000', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('234', '81', 'Sub-Total:', '$25.00', '25.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('235', '81', 'Total:', '<b>$25.00</b>', '25.0000', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('236', '82', 'Sub-Total:', '$124.65', '124.6500', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('237', '82', 'Sales Tax (7%):', '$8.15', '8.1547', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('238', '82', 'United States Postal Service&nbsp;<br>1 lbs, 12.8 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 3 Days):', '$13.35', '13.3500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('239', '82', 'Total:', '<b>$138.00</b>', '138.0000', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('240', '83', 'Sub-Total:', '$25.00', '25.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('241', '83', 'Total:', '<b>$25.00</b>', '25.0000', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('242', '84', 'Sub-Total:', '$119.00', '119.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('243', '84', 'Sales Tax (7%):', '$7.79', '7.7850', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('244', '84', 'United States Postal Service&nbsp;<br>1 lbs, 1.28 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$11.05', '11.0500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('245', '84', 'Total:', '<b>$130.05</b>', '130.0500', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('246', '85', 'Sub-Total:', '$50.00', '50.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('247', '85', 'Total:', '<b>$50.00</b>', '50.0000', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('248', '86', 'Sub-Total:', '$99.00', '99.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('249', '86', 'Sales Tax (7%):', '$6.48', '6.4766', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('250', '86', 'United States Postal Service&nbsp;<br>1 lbs, 1.12 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$8.60', '8.6000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('251', '86', 'Total:', '<b>$107.60</b>', '107.6000', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('252', '87', 'Sub-Total:', '$25.00', '25.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('253', '87', 'Total:', '<b>$25.00</b>', '25.0000', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('254', '88', 'Sub-Total:', '$50.00', '50.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('255', '88', 'Total:', '<b>$50.00</b>', '50.0000', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('256', '89', 'Sub-Total:', '$59.50', '59.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('257', '89', 'Sales Tax (7%):', '$3.89', '3.8925', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('258', '89', 'Gift Certificate (-):', '$25.00', '25.0000', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('259', '89', 'United States Postal Service&nbsp;<br>0 lbs, 8.64 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$6.05', '6.0500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('260', '89', 'Total:', '<b>$44.44</b>', '44.4425', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('261', '90', 'Sub-Total:', '$59.50', '59.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('262', '90', 'Sales Tax (7%):', '$3.89', '3.8925', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('263', '90', 'Gift Certificate (-):', '$25.00', '25.0000', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('264', '90', 'United States Postal Service&nbsp;<br>0 lbs, 8.64 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$6.05', '6.0500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('265', '90', 'Total:', '<b>$44.44</b>', '44.4425', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('266', '91', 'Sub-Total:', '$69.50', '69.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('267', '91', 'Sales Tax (7%):', '$4.55', '4.5467', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('268', '91', 'Gift Certificate (-):', '$25.00', '25.0000', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('269', '91', 'United States Postal Service&nbsp;<br>0 lbs, 6.72 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$6.05', '6.0500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('270', '91', 'Total:', '<b>$55.10</b>', '55.0967', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('271', '92', 'Sub-Total:', '$124.65', '124.6500', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('272', '92', 'Sales Tax (7%):', '$8.15', '8.1547', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('273', '92', 'Gift Certificate (-):', '$25.00', '25.0000', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('274', '92', 'United States Postal Service&nbsp;<br>1 lbs, 12.8 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$11.05', '11.0500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('275', '92', 'Total:', '<b>$118.85</b>', '118.8547', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('276', '93', 'Sub-Total:', '$59.50', '59.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('277', '93', 'Sales Tax (7%):', '$3.89', '3.8925', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('278', '93', 'Gift Certificate (-):', '$25.00', '25.0000', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('279', '93', 'United States Postal Service&nbsp;<br>0 lbs, 8.64 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$6.05', '6.0500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('280', '93', 'Total:', '<b>$44.44</b>', '44.4425', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('281', '94', 'Sub-Total:', '$115.75', '115.7500', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('282', '94', 'Sales Tax (7%):', '$7.57', '7.5724', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('283', '94', 'Gift Certificate (-):', '$25.00', '25.0000', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('284', '94', 'United States Postal Service&nbsp;<br>1 lbs, 13.6 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$11.05', '11.0500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('285', '94', 'Total:', '<b>$109.37</b>', '109.3724', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('286', '95', 'Sub-Total:', '$59.50', '59.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('287', '95', 'Sales Tax (7%):', '$3.89', '3.8925', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('288', '95', 'United States Postal Service&nbsp;<br>0 lbs, 8.64 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$6.05', '6.0500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('289', '95', 'Total:', '<b>$69.44</b>', '69.4425', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('290', '96', 'Sub-Total:', '$59.50', '59.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('291', '96', 'Sales Tax (7%):', '$3.89', '3.8925', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('292', '96', 'Gift Certificate (-):', '$68.00', '68.0000', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('293', '96', 'United States Postal Service&nbsp;<br>0 lbs, 8.64 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 2 Days):', '$5.80', '5.8000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('294', '96', 'Total:', '<b>$1.19</b>', '1.1925', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('295', '97', 'Sub-Total:', '$25.00', '25.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('296', '97', 'Gift Certificate (-):', '$68.00', '68.0000', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('297', '97', 'Total:', '<b>$0.00</b>', '0.0000', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('298', '98', 'Sub-Total:', '$100.00', '100.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('299', '98', 'Gift Certificate ( invalid ):', '$0.00', '0.0010', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('300', '98', 'Total:', '<b>$100.00</b>', '99.9990', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('301', '99', 'Sub-Total:', '$59.50', '59.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('302', '99', 'Sales Tax (7%):', '$3.89', '3.8925', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('303', '99', 'Gift Certificate ( invalid ):', '$0.00', '0.0010', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('304', '99', 'United States Postal Service&nbsp;<br>0 lbs, 8.64 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 2 Days):', '$5.80', '5.8000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('305', '99', 'Total:', '<b>$69.19</b>', '69.1915', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('306', '100', 'Sub-Total:', '$79.00', '79.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('307', '100', 'Sales Tax (7%):', '$5.17', '5.1682', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('308', '100', 'Gift Certificate (-):', '$68.00', '68.0000', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('309', '100', 'United States Postal Service&nbsp;<br>1 lbs, 0.96 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$8.60', '8.6000', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('310', '100', 'Total:', '<b>$24.77</b>', '24.7682', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('311', '101', 'Sub-Total:', '$59.50', '59.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('312', '101', 'Sales Tax (7%):', '$3.89', '3.8925', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('313', '101', 'Gift Certificate (-):', '$100.00', '100.0000', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('314', '101', 'United States Postal Service&nbsp;<br>0 lbs, 8.64 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$6.05', '6.0500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('315', '101', 'Total:', '<b>$0.00</b>', '0.0000', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('316', '102', 'Sub-Total:', '$25.00', '25.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('317', '102', 'Gift Certificate ( invalid ):', '$0.00', '0.0010', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('318', '102', 'Total:', '<b>$25.00</b>', '24.9990', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('319', '103', 'Sub-Total:', '$25.00', '25.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('320', '103', 'Gift Certificate ( invalid ):', '$0.00', '0.0010', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('321', '103', 'Total:', '<b>$25.00</b>', '24.9990', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('322', '104', 'Sub-Total:', '$500.00', '500.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('323', '104', 'Gift Certificate ( invalid ):', '$0.00', '0.0010', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('324', '104', 'Total:', '<b>$500.00</b>', '499.9990', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('325', '105', 'Sub-Total:', '$50.00', '50.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('326', '105', 'Gift Certificate ( invalid ):', '$0.00', '0.0010', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('327', '105', 'Total:', '<b>$50.00</b>', '49.9990', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('328', '106', 'Sub-Total:', '$59.50', '59.5000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('329', '106', 'Gift Certificate (-):', '$50.00', '50.0000', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('330', '106', 'United States Postal Service&nbsp;<br>0 lbs, 8.64 oz (Priority Mail<sup>&reg;</sup><br>---Approx. delivery time 4 Days):', '$6.05', '6.0500', 'ot_shipping', '3');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('331', '106', 'Total:', '<b>$15.55</b>', '15.5500', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('332', '107', 'Sub-Total:', '$75.00', '75.0000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('333', '107', 'Gift Certificate ( invalid ):', '$0.00', '0.0010', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('334', '107', 'Total:', '<b>$75.00</b>', '74.9990', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('335', '108', 'Sub-Total:', '$0.10', '0.1000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('336', '108', 'Gift Certificate ( invalid ):', '$0.00', '0.0010', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('337', '108', 'Total:', '<b>$0.10</b>', '0.0990', 'ot_total', '6');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('338', '109', 'Sub-Total:', '$0.10', '0.1000', 'ot_subtotal', '1');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('339', '109', 'Gift Certificate ( invalid ):', '$0.00', '0.0010', 'ot_tax', '2');
insert into orders_total (orders_total_id, orders_id, title, text, value, class, sort_order) values ('340', '109', 'Total:', '<b>$0.10</b>', '0.0990', 'ot_total', '6');
drop table if exists pages;
create table pages (
  pages_id int(11) not null auto_increment,
  pages_name varchar(32) not null ,
  pages_image varchar(64) not null ,
  sort_order int(3) default '0' not null ,
  pages_status tinyint(1) default '0' not null ,
  PRIMARY KEY (pages_id)
);

insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('13', 'about_us', 'logochico.png', '0', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('2', 'contact_us', '', '-100', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('23', 'researches', '', '0', '0');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('24', 'Product FAQs', '', '0', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('25', 'home', '', '0', '0');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('17', 'our_lab', '', '0', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('18', 'mission_statement', '', '0', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('19', 'nutritionalhealthscience_faq\'s', '', '0', '1');
insert into pages (pages_id, pages_name, pages_image, sort_order, pages_status) values ('20', 'privacy_policy', '', '0', '1');
drop table if exists pages_description;
create table pages_description (
  pages_id int(11) default '0' not null ,
  language_id int(11) default '0' not null ,
  pages_title varchar(255) not null ,
  pages_body text not null ,
  PRIMARY KEY (pages_id, language_id)
);

insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('1', '1', 'Home Page', 'Place your home page text here...');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('2', '1', 'Contact Us', '<p>We at Nutritional Health Science are committed to helping you and those you care about improve their life through better health.</p>
<p>&nbsp;Have a question about our company, policies or procedures?<br />
<br />
&nbsp; Simply check our list of frequently asked questions.<br />
<br />
You may also contact us by phone 678-947-0654<br />
<br />
Nutritional Health Science<br />
4611 Forest Place<br />
Cumming, GA 30041</p>
<p>To contact us via email just fill in the form below.<b><br />
</b></p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('25', '1', 'Welcome to Nutritional Health Science', 'Dear Friends,<br />
<br />
We are thrilled that you are visiting our website and are happy you&rsquo;re here. Taking the steps to make a positive impact on the status of your health is one of your more important life&rsquo;s decisions. This undertaking we take seriously on your behalf as well. <br />
<br />
We are a private laboratory and are directly in the control, formulation, processing and testing of all of the health products we produce. We have a highly educated lab team all with diverse educational backgrounds&rsquo; that effectively come together to produce top of the line, non-synthetic and whole food dietary supplements that enhance human health and wellness.<br />
<br />
Our approach to health and healing is normalize immune system function through the use of natural organically derived immune system modulators, reduce inflammation which is the root cause of almost all disease processes and provide the body the raw organic nutrition it requires for cellular repair and regeneration. We hope you find our information helpful and are on stand-by to help in any way we can.<br />
<br />
Sincerely,<br />
The Team @ nhsnutritionals.com');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('1', '2', 'Nosotros', 'Texto aqui');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('2', '2', 'Contactenos', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('1', '4', 'Home Page', 'Vul hier uw eigen tekst in');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('2', '4', 'Contacteer Ons', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('24', '1', 'Product FAQs', '<br />
<br />
<div style=\"text-align: justify\"><b>Q)</b> Is it okay to take these supplements with my medications?<br />
<br />
<b>A)</b> Our products are non- synthetic whole food supplements. While our products are recognized by your body as a whole food, they are extremely strong and highly effective. To date there have been no contraindications. If you have any concerns please call our office as our staff members are highly qualified and can assist you in this area.<br />
<br />
<b>Q)</b> Can I give your products to my children?<br />
<br />
<b>A)</b> Our products are formulated for the entire family. Thousands of people, from toddlers to grandparents have enjoyed remarkable health benefits as a result of taking our effective and unique dietary supplements.<br />
<br />
<b>Q)</b> If I&rsquo;m not doing well, can I take double doses of your supplements to start?<br />
<br />
<b>A)</b> Most definitely. If you are someone who is experiencing an exacerbation of symptoms it is highly recommended that you double dose until your situation has calmed down or becomes manageable.<br />
<br />
<b>Q)</b> Do I need to take your supplements with or without food?<br />
<br />
<b>A)</b> They can be taken either way. The exception is the Serrapeptase enzyme which must be taken on an empty stomach either 30 minutes before a meal or 1 &frac12; hours after a meal.<br />
<br />
<b>Q)</b> Why do you offer single products and also packages?<br />
<br />
<b>A)</b> While our dietary supplements are highly effective by themselves, the majority will benefit from a synergy of supplements designed to work in tandem with one another. Our product packages are designed to offer maximum health benefits in a shorter amount of time while passing on a cost savings to our valued customers.<br />
<br />
<b>Q)</b> Do you guarantee your products?<br />
<br />
<b>A)</b> We guarantee all of our products and offer our customers a 45-day satisfaction guarantee.<br />
<br />
<b>Some Precautions</b><br />
<br />
If you are an organ transplant recipient, chances are you are taking immune system suppressing medications. With this in mind, you cannot take any of our immune system support products as they indeed do work and will counteract the effects of your medications.<br />
<br />
For those taking cholesterol lowering medications please proceed with caution when taking CholestoKal. CholestoKal works fine just by itself as you will see during your next blood panel.</div>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('13', '1', 'About Us', '<p>Dear Friends,</p>
<p>We are thrilled that you&rsquo;ve found our website and thank-you for visiting.</p>
<p>We are a small private company and own our own laboratory. What this means is we have direct control over our lab operations and produce dietary supplements that adhere to our strict quality standards.</p>
<p>We produce only professional grade products that are all-natural and free of cheap binders, fillers and other unnecessary ingredients used by others in the industry. You won&rsquo;t find our products on health food store shelves and nor do we want them there.</p>
<p>Our business model is totally focused on the benefits of our customers. If it were not for the amazing results experienced by our customers, we simply would not be here. You are our number one priority.</p>
<p>Please find this our personal guarantee to you. If in 45-days you don&rsquo;t feel the effects of our hard work and expertise, expect a full refund less shipping.</p>
<p>We invite and encourage you to call us with any questions you may have. Our staff members are highly qualified and able to answer your questions.</p>
<p><br />
Sincerely,</p>
<p>The Folks @ Nutritional Health Science</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('13', '2', 'Nosotros', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('2', '3', 'Contact Us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('13', '3', 'About us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('13', '4', 'About us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque arcu odio, tincidunt eget suscipit ut, volutpat id nunc. Quisque ut elit quis leo imperdiet imperdiet sed eu nulla. Quisque imperdiet ante ac eros interdum et porttitor quam laoreet. Duis sit amet ipsum erat. Praesent eget turpis vitae neque faucibus laoreet. Etiam hendrerit eleifend posuere. Nullam venenatis est eu mi aliquet non mollis magna pellentesque. Donec nisi felis, rutrum sit amet vulputate sit amet, vestibulum nec sem. Curabitur ac scelerisque odio. Nunc dolor est, pellentesque vel varius ac, consectetur at nibh. Sed eget magna quam, ac convallis purus. Nullam sit amet mi at ante tristique euismod. Praesent a elit felis, eget cursus quam. Nulla urna risus, suscipit id volutpat consectetur, consequat sit amet magna. Aliquam in tortor quis odio sagittis posuere. In semper mi quis diam tincidunt iaculis.</p>
<p>Donec id elit lectus, vitae mollis mauris. Nunc pretium, nunc et laoreet sagittis, lectus nibh aliquet justo, bibendum rutrum lectus elit id nibh. Curabitur velit ligula, dictum at pellentesque et, porttitor eu nibh. Donec ultrices molestie diam, sit amet mattis lacus pulvinar vulputate. Etiam elementum lacus sit amet leo iaculis sodales non ac tortor. Nullam eu lacus neque. Nulla consectetur sodales pellentesque. Etiam luctus nisi et urna ultrices nec vehicula sapien ullamcorper. Fusce nunc diam, condimentum ut vestibulum a, luctus sed turpis. Pellentesque dictum erat nec justo pretium congue. Donec sapien eros, dignissim id luctus ac, ultricies id ante. Ut odio erat, congue a lacinia nec, blandit ut lacus. Vestibulum egestas viverra aliquet. Sed non nunc eros, et varius massa. Cras vitae enim ante, ornare faucibus sapien. Phasellus pretium, lacus vitae pharetra vehicula, magna nisi ullamcorper leo, eget eleifend augue sapien vel mauris. Pellentesque eu lectus magna. Nunc ipsum dui, auctor lacinia lobortis lacinia, ullamcorper non lacus. Sed venenatis consectetur libero pellentesque dapibus.</p>
<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque commodo turpis vitae orci euismod aliquet congue tellus ornare. Fusce sed ipsum sit amet arcu rhoncus consectetur non in massa. Nulla quis odio eget nulla sollicitudin semper. Sed molestie gravida dui, quis vestibulum tortor semper sed. Vivamus eget metus arcu, vitae consequat risus. Morbi ultricies tristique nibh, porttitor tempus arcu condimentum sit amet. Fusce tempor aliquam diam, nec faucibus risus sollicitudin et. Curabitur porttitor consectetur malesuada. Etiam luctus, sem id accumsan pellentesque, ipsum urna cursus massa, eu venenatis justo metus vitae tellus. Mauris quam nisi, elementum id porttitor ut, eleifend et felis. Donec ut eros in ante porttitor blandit. Quisque massa justo, vestibulum sed condimentum nec, laoreet at diam.</p>
<p>Maecenas egestas, orci a semper lacinia, tortor arcu faucibus dolor, nec hendrerit leo dui porttitor mi. Praesent et lacus dui, sed placerat lacus. Suspendisse potenti. Aenean sit amet ipsum sem. Proin mauris magna, pellentesque quis adipiscing id, adipiscing eget orci. Quisque pharetra faucibus risus, vel rutrum nisl blandit in. Suspendisse sed urna justo, at ultricies neque. Fusce vel dui turpis, et consectetur magna. Sed interdum ligula in odio dignissim vitae faucibus sem elementum. Ut ac tellus adipiscing massa egestas porta. Maecenas odio sapien, adipiscing sed faucibus nec, vestibulum sed felis. Proin tempor justo ut est sollicitudin sollicitudin. Vivamus porta imperdiet nisl, eget congue diam tempus hendrerit. Nulla blandit eros vel metus ultricies feugiat. Morbi vitae eleifend tellus. Aliquam arcu ligula, posuere iaculis venenatis iaculis, vestibulum vitae ligula. Quisque vehicula massa in ligula porta elementum. Suspendisse lacinia, dolor id pharetra feugiat, massa mauris cursus eros, nec cursus risus dolor posuere dui.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('23', '1', 'Researches', '<h4 id=\"bobcontent1-title\" class=\"handcursor\">Health Benefits of Aloe Vera</h4>
<div id=\"bobcontent1\" class=\"switchgroup1\">
<p><br />
Loots du T, van der Westhuizen FH, Botes L. &quot;Aloe ferox leaf gel phytochemical content, antioxidant capacity, and possible health benefits.&quot; Journal of Agricultural and Food Chemistry 55.17 (2007) : 6891-6891<br />
<br />
Vogler BK, Ernst E. &quot;Aloe vera: a systematic review of its clinical effectiveness.&quot; British Journal of General Practice 49 (1999) : 823-828<br />
<br />
Worthington HV, Clarkson JE, Eden OB. &quot;Interventions for preventing oral mucositis for patients with cancer receiving treatment.&quot; Cochrane Database Syst Rev. (2007) [CD000978] Review.<br />
<br />
Davis K, Philpott S, Kumar D, Mendall M. &quot;Randomised double-blind placebo-controlled trial of aloe vera for irritable bowel syndrome.&quot; International Journal of Clinical Practice 60.9 (2006) : 1080-1086<br />
<br />
Mirshafiey A, Aghily B, Namaki S, Razavi A, Ghazavi A, Ekhtiari P, Mosayebi G. &quot;Therapeutic approach by Aloe vera in experimental model of multiple sclerosis.&quot; Immunopharmacol Immunotoxicol (2010)<br />
<br />
Ar&yacute;kan D, S&iacute;vr&iacute;kaya SK, Olgun N. &quot;Complementary alternative medicine use in children with type 1 diabetes mellitus in Erzurum, Turkey.&quot; Journal of Clinical Nursing 18.5 (2009) : 2136-2144<br />
<br />
Cuttle L, Kempf M, Kravchuk O, George N, Liu PY, Chang HE, Mill J, Wang XQ, Kimble RM. &quot;The efficacy of Aloe vera, tea tree oil and saliva as first aid treatment for partial thickness burn injuries.&quot; Burns 34.8 (2008) : 1176-1182<br />
<br />
Shakeel M, Little SA, Bruce J, Ah-See KW. &quot;Use of complementary and alternative medicine in pediatric otolaryngology patients attending a tertiary hospital in the UK.&quot; International Journal of Pediatric Otorhinolaryngol 71.11 (2007) : 1725-1730</p>
</div>
<h4 id=\"bobcontent2-title\" class=\"handcursor\"><br />
Health Benefits of Saw Palmetto</h4>
<div id=\"bobcontent2\" class=\"switchgroup1\">
<p><br />
Avins AL, Bent S. &quot;Saw palmetto and lower urinary tract symptoms: what is the latest evidence?&quot; Current Urology Reports 7.4 (2006) : 260-2655 Review.<br />
<br />
Hong H, Kim CS, Maeng S. &quot;Effects of pumpkin seed oil and saw palmetto oil in Korean men with symptomatic benign prostatic hyperplasia.&quot; Nutrition Research and Practice 3.4 (2009) : 323-327<br />
<br />
Scholtysek C, Krukiewicz AA, Alonso JL, Sharma KP, Sharma PC, Goldmann WH. &quot;Characterizing components of the Saw Palmetto Berry Extract (SPBE) on prostate cancer cell growth and traction.&quot; Biochemical and Biophysical Research Communications 379.3 (2009) : 795-798<br />
<br />
Hizli F, Uygur MC. &quot;A prospective study of the efficacy of Serenoa repens, tamsulosin, and Serenoa repens plus tamsulosin treatment for patients with benign prostate hyperplasia.&quot; International Urology and Nephrology 39.3 (2007) : 879-886<br />
<br />
Katz AE. &quot;Flavonoid and botanical approaches to prostate health.&quot; Journal of Alternative and Complementary Medicine 8.6 (2002) : 813 - 821 Review<br />
<br />
Morgia G, Mucciardi G, Gal&igrave; A, Madonia M, Marchese F, Di Benedetto A, Romano G, Bonvissuto G, Castelli T, Macchione L, Magno C. &quot;Treatment of chronic prostatitis/chronic pelvic pain syndrome category IIIA with Serenoa repens plus selenium and lycopene (Profluss) versus S. repens alone: an Italian randomized multicenter-controlled study.&quot; Urologia Internationalis 84.4 (2010) : 400-406</p>
</div>
<h4 id=\"bobcontent3-title\" class=\"handcursor\"><br />
Health Benefits of Vitamin-C</h4>
<div id=\"bobcontent3\" class=\"switchgroup1\">
<p><br />
Greenlee H, Gammon MD, Abrahamson PE, Gaudet MM, Terry MB, Hershman DL, Desai M, Teitelbaum SL, Neugut AI, Jacobson JS. &quot;Prevalence and predictors of antioxidant supplement use during breast cancer treatment: the Long Island Breast Cancer Study Project.&quot; Cancer 115.14 (2009) : 3271-3282.<br />
<br />
Mart&iacute; N, Mena P, C&aacute;novas JA, Micol V, Saura D. &quot;Vitamin C and the role of citrus juices as functional food.&quot; Natural Product Communication 4.5 (2009) : 677-700 Review.<br />
<br />
Bjelakovic G, Gluud LL, Nikolova D, Bjelakovic M, Nagorni A, Gluud C. &quot;Systematic review: antioxidant supplements for liver diseases - the Cochrange Hepato-biliary Group.&quot; Ailmentary Pharmacology and Therapeutics (2010)<br />
<br />
Takemura Y, Satoh M, Satoh K, Hamada H, Sekido Y, Kubota S. &quot;High dose of ascorbic acid induces cell death in mesothelioma cells.&quot; Biochemical and Biophysical Research Communications 394.2 (2010) : 249-253<br />
<br />
Paolisso G, Balbi V, Volpe C, Varricchio G, Gambardella A, Saccomanno F, Ammendola S, Varricchio M, D\'Onofrio F. &quot;Metabolic benefits deriving from chronic vitamin C supplementation in aged non-insulin dependent diabetics.&quot; Journal of American College of Nutrition 14.4 (1995) : 387 - 392<br />
<br />
Dissayabutra T, Tosukhowong P, Seksan P. &quot;The benefits of vitamin C and vitamin E in children with beta-thalassemia with high oxidative stress.&quot; Journal of Medical Association of Thailand 88 (2005) : S317 - 321<br />
<br />
Mart&iacute; N, Mena P, C&aacute;novas JA, Micol V, Saura D. &quot;Vitamin C and the role of citrus juices as functional food.&quot; National Product Communications 4.5 (2009) : 677:700 Review <br />
Ginter E. &quot;Chronic vitamin C deficiency increases the risk of cardiovascular diseases.&quot; Bratisl Lek Listy 108.9 (2007) : 417-421 Review</p>
</div>
<h4 id=\"bobcontent4-title\" class=\"handcursor\"><br />
Health Benefits of Omega-3</h4>
<div id=\"bobcontent4\" class=\"switchgroup1\">
<p><br />
Smith KL, Guentzel JL. &quot;Mercury concentrations and omega-3 fatty acids in fish and shrimp: Preferential consumption for maximum health benefits.&quot; Marine Pollution Bulletin (2010)<br />
<br />
Bonilla DL, Ly LH, Fan YY, Chapkin RS, McMurray DN. &quot;Incorporation of a dietary omega 3 fatty acid impairs murine macrophage responses to Mycobacterium tuberculosis.&quot; PLoS One 5.5 (2010) : e108<br />
<br />
Adkins Y, Kelley DS. &quot;Mechanisms underlying the cardioprotective effects of omega-3 polyunsaturated fatty acids.&quot; The Journal of Nutritional Biochemistry (2010)<br />
<br />
Freeman MP. &quot;Omega-3 fatty acids in major depressive disorder.&quot; Journal of Clinical Psychiatry 70.5 (2009) : 7 -11 Review.<br />
<br />
Freeman MP. &quot;Complementary and Alternative Medicine (CAM): considerations for the treatment of major depressive disorder.&quot; Journal of Clinical Psychiatry 70.5 (2009) : 4-6 Review.<br />
<br />
Lopez-Huertas E. &quot;Health effects of oleic acid and long chain omega-3 fatty acids (EPA and DHA) enriched milks. A review of intervention studies.&quot; Pharmacological Research 61.3 (2010) : 200 - 207<br />
<br />
Micallef MA, Garg ML. &quot;Beyond blood lipids: phytosterols, statins and omega-3 polyunsaturated fatty acid therapy for hyperlipidemia.&quot; The Journal of Nutritional Biochemistry 20.12 (2009) : 927-939 Review</p>
</div>
<h4 id=\"bobcontent25-title\" class=\"handcursor\"><br />
Health Benefits of Vegetables</h4>
<div id=\"bobcontent25\" class=\"switchgroup1\">
<p><br />
Song W, Derito CM, Liu MK, He X, Dong M, Liu RH. &quot;Cellular antioxidant activity of common vegetables.&quot; Journal and Agricultural and Food Chemistry 58.11 (2010) : 6621 - 6629<br />
<br />
Crinnion WJ. &quot;Organic foods contain higher levels of certain nutrients, lower levels of pesticides, and may provide health benefits for the consumer.&quot; Alternative Medicine Review 5.1 (2010) : 4-12<br />
<br />
Ma L, Lin XM. &quot;Effects of lutein and zeaxanthin on aspects of eye health.&quot; Journal of the Science of Food and Agriculture 90.1 (2010) : 2-12<br />
<br />
Leake JR, Adam-Bradford A, Rigby JE. &quot;Health benefits of \'grow your own\' food in urban areas: implications for contaminated land risk assessment and risk management?&quot; Environmental Health 8.1 (2009) : S6<br />
<br />
Nanri A, Mizoue T, Takahashi Y, Kirii K, Inoue M, Noda M, Tsugane S. &quot; Soy product and isoflavone intakes are associated with a lower risk of type 2 diabetes in overweight Japanese women.&quot; Journal of Nutrition 40.3 (2010) : 580 - 586<br />
<br />
Jedrychowski W, Maugeri U, Popiela T, Kulig J, Sochacka-Tatara E, Pac A, Sowa A, Musial A. &quot;Case-control study on beneficial effect of regular consumption of apples on colorectal cancer risk in a population with relatively low intake of fruits and vegetables.&quot; European Journal of Cancer Prevention 19.1 (2010) : 42-7<br />
<br />
Trinidad TP, Mallillin AC, Loyola AS, Sagum RS, Encabo RR. &quot;The potential health benefits of legumes as a good source of dietary fibre.&quot; British Journal of Nutrition 103.4 (2010) : 569-574<br />
<br />
Vasanthi HR, Mukherjee S, Das DK. &quot;Potential health benefits of broccoli- a chemico-biological overview.&quot; Mini-Reviews in Medicinal Chemistry 9.6 (2009) : 749-759 Review.<br />
<br />
Walker C, Reamy BV. &quot;Diets for cardiovascular disease prevention: what is the evidence?&quot; American Family Physician 79.7 (2009) : 571-578 Review.<br />
<br />
Weerts SE, Amoran A. &quot;Pass the Fruits and Vegetables! A Community-University-Industry Partnership Promotes Weight Loss in African American Women.&quot; Health Promotion Practice (2009)</p>
</div>
<h4 id=\"bobcontent5-title\" class=\"handcursor\"><br />
Health Benefits of Various Minerals</h4>
<div id=\"bobcontent5\" class=\"switchgroup1\">
<p><br />
Martini LA, Catania AS, Ferreira SR. &quot;Role of vitamins and minerals in prevention and management of type 2 diabetes mellitus.&quot; Nutrition Review 68.6 (2010) : 341-354<br />
<br />
Hollingworth SA, Gunanti I, Nissen LM, Duncan EL. &quot;Secondary prevention of osteoporosis in Australia: analysis of government-dispensed prescription data.&quot; Drugs and Aging 27.3 (2010) : 255-264<br />
Skeie G, Braaten T, et. al. &quot;Use of dietary supplements in the European Prospective Investigation into Cancer and Nutrition calibration study.&quot; European Journal of Clinical Nutrition 63.4 (2009) : S 226 - 238<br />
<br />
Ralston NV. &quot;Selenium health benefit values as seafood safety criteria.&quot; Ecohealth 5.4 (2008) : 442-455<br />
<br />
Bonjour JP, Gu&eacute;guen L, Palacios C, Shearer MJ, Weaver CM. &quot;Minerals and vitamins in bone health: the potential value of dietary enhancement.&quot; British Journal of Nutrition 101.11 (2009) : 1581 -1596 Review<br />
<br />
Qiao YL, Dawsey SM, Kamangar F, Fan JH, Abnet CC, Sun XD, Johnson LL, Gail MH, Dong ZW, Yu B, Mark SD, Taylor PR. &quot;Total and cancer mortality after supplementation with vitamins and minerals: follow-up of the Linxian General Population Nutrition Intervention Trial.&quot; Journal of National Cancer Institute 101.2 (2010) : 507-518<br />
<br />
Berr C, Akbaraly T, Arnaud J, Hininger I, Roussel AM, Barberger Gateau P. &quot;Increased selenium intake in elderly high fish consumers may account for health benefits previously ascribed to omega-3 fatty acids.&quot; Journal of Nutrition, Health, and Aging 13.1 (2009) : 14-8.<br />
<br />
Mahn AV, Toledo HM, Ruz MH. &quot;Organic and inorganic selenium compounds produce different protein patterns in the blood plasma of rats.&quot; Biol Res. 42.2 (2009) : 163-173</p>
</div>
<h4 id=\"bobcontent6-title\" class=\"handcursor\"><br />
Health Benefits of Medicinal Mushrooms</h4>
<div id=\"bobcontent6\" class=\"switchgroup1\">
<p><br />
Dai YC, Zhou LW, Cui BK, Chen YQ, Decock C. &quot;Current advances in Phellinus sensu lato: medicinal species, functions, metabolites and mechanisms.&quot; Applied Microbiology and Biotechnology 87.5 (2010) : 1587-1593<br />
<br />
Ferreira IC, Vaz JA, Vasconcelos MH, Martins A. &quot;Compounds from wild mushrooms with antitumor potential.&quot; Anti-Cancer Agrnts in Medicinal Chemistry 10.5 (2010) : 424-436<br />
<br />
Wong JH, et. al. &quot;Proteins with antifungal properties and other medicinal applications from plants and mushrooms.&quot; Applied Microbiology and Biotechnology 87.4 (2010) : 1221 - 1235<br />
<br />
Sze DM, Chan GC. &quot;Supplements for immune enhancement in hematologic malignancies.&quot; American Society of Hematology Education Program (2009) : 313-319 Review.<br />
<br />
Reynaud-Maurupt C, Cadet-Ta&iuml;rou A, Zoll A. &quot;The contemporary uses of hallucinogenic plants and mushrooms: a qualitative exploratory study carried out in France.&quot; Substance Use and Misuse 44.11 (2009) : 1519-1552<br />
<br />
Fortes RC, Rec&ocirc;va VL, Melo AL, Novaes MR. &quot;Effects of dietary supplementation with medicinal fungus in fasting glycemia levels of patients with colorectal cancer: a randomized, double-blind, placebo-controlled clinical study.&quot; Nutr Hosp 23.6 (2008) : 591-598<br />
<br />
Mahajna J, Dotan N, Zaidman BZ, Petrova RD, Wasser SP. &quot;Pharmacological values of medicinal mushrooms for prostate cancer therapy: the case of Ganoderma lucidum.&quot; Nutrition and Cancer 61.1 (2009) : 16-26<br />
<br />
Hetland G, Johnson E, Lyberg T, Bernardshaw S, Tryggestad AM, Grinde B. &quot;Effects of the medicinal mushroom Agaricus blazei Murill on immunity, infection and cancer.&quot; Scandinavian Journal of Immunology 68.4 (2008) : 363 - 370 Review.</p>
</div>
<h4 id=\"bobcontent7-title\" class=\"handcursor\"><br />
Health Benefits of Serrapeptase</h4>
<div id=\"bobcontent7\" class=\"switchgroup1\">
<p><br />
Mecikoglu M, Saygi B, Yildirim Y, Karadag-Saygi E, Ramadan SS, Esemenli T. &quot;The effect of proteolytic enzyme serratiopeptidase in the treatment of experimental implant-related infection.&quot; The Journal of Bone and Joint Surgey 88.6 (2006) : 1208 - 1214<br />
<br />
Nakamura S, Hashimoto Y, Mikami M, Yamanaka E, Soma T, Hino M, Azuma A, Kudoh S. &quot;Effect of the proteolytic enzyme serrapeptase in patients with chronic airway disease.&quot; Respirology 8.3 (2003) : 316-20<br />
<br />
Esch PM, Gerngross H, Fabian A. &quot;Reduction of postoperative swelling. Objective measurement of swelling of the upper ankle joint in treatment with serrapeptase-- a prospective study&quot; Fortschr Med. 107.4 (1989) :676-8<br />
<br />
German Kee WH, Tan SL, Lee V, Salmon YM. &quot;The treatment of breast engorgement with Serrapeptase (Danzen): a randomised double-blind controlled trial.&quot; Singapore Medical Journal 30.1 (1989 : 48-54<br />
<br />
Majima Y, Inagaki M, Hirata K, Takeuchi K, Morishita A, Sakakura Y. &quot;The effect of an orally administered proteolytic enzyme on the elasticity and viscosity of nasal mucus.&quot; Eur Arch Otorhinolaryngol 244.6 (1988) : 355-359<br />
<br />
Tachibana M, Mizukoshi O, Harada Y, Kawamoto K, Nakai Y. &quot;A multi-centre, double-blind study of serrapeptase versus placebo in post-antrotomy buccal swelling.&quot; Pharmatherapeutica 13.8 (1984) : 526-530<br />
<br />
Ishihara Y, Kitamura S, Takaku F. &quot;Experimental studies on distribution of cefotiam, a new beta-lactam antibiotic, in the lung and trachea of rabbits. II. Combined effects with serratiopeptidase&quot; The Japanese Journal of Antibiotics 36.10 (1983) : 2665 - 2670<br />
<br />
Japanese Rath G, Johal ES, Goyal AK. &quot;Development of Serratiopeptidase and Metronidazole Based Alginate Microspheres for Wound Healing.&quot; Artificial Cells, Blood Subsitutes and Immobilization Biotechnology (2010)</p>
</div>
<h4 id=\"bobcontent8-title\" class=\"handcursor\"><br />
Health Benefits of Cordyceps Mushroom</h4>
<div id=\"bobcontent8\" class=\"switchgroup1\">
<p><br />
Park BT, Na KH, Jung EC, Park JW, Kim HH. &quot;Antifungal and Anticancer Activities of a Protein from the Mushroom Cordyceps militaris.&quot; The Korean Journal of Physiology and Pharmacology 13.1 (2009) : 49-54<br />
<br />
Xiao JH, Zhong JJ. &quot;Secondary metabolites from Cordyceps species and their antitumor activity studies.&quot; Recent Patents on Biotechnology 1.2 (2007) : 123-37 Review.<br />
<br />
Kim HG, et. al., &quot;Cordycepin inhibits lipopolysaccharide-induced inflammation by the suppression of NF-kappaB through Akt and p38 inhibition in RAW 264.7 macrophage cells.&quot; European Journal of Pharmacology 545.2-3 (2006) : 192-199</p>
</div>
<h4 id=\"bobcontent9-title\" class=\"handcursor\"><br />
Health Benefits of Ginsing Root</h4>
<div id=\"bobcontent9\" class=\"switchgroup1\">
<p><br />
Chan E, Wong CY, Wan CW, Kwok CY, Wu JH, Ng KM, So CH, Au AL, Poon CC, Seto SW, Kwan YW, Yu PH, Chan SW. &quot;Evaluation of anti-oxidant capacity of root of Scutellaria baicalensis Georgi, in comparison with roots of Polygonum multiflorum Thunb and Panax ginseng CA Meyer.&quot; The American Journal of Chinese Medicine 38.4 (2010) : 815-27<br />
<br />
Taira S, Ikeda R, Yokota N, Osaka I, Sakamoto M, Kato M, Sahashi Y. &quot;Mass spectrometric imaging of ginsenosides localization in Panax ginseng root.&quot; The American Journal of Chinese Medicine 383 (2010) : 485-93<br />
<br />
Li XT, Chen R, Jin LM, Chen HY. &quot;Regulation on energy metabolism and protection on mitochondria of Panax ginseng polysaccharide.&quot; American Journal of Chinese Medicine 37.6 (2009) : 1139 - 1152</p>
</div>
<h4 id=\"bobcontent10-title\" class=\"handcursor\"><br />
Health Benefits of Licorice Root</h4>
<div id=\"bobcontent10\" class=\"switchgroup1\">
<p><br />
Houssen ME, Ragab A, Mesbah A, El-Samanoudy AZ, Othman G, Moustafa AF, Badria FA. &quot;Natural anti-inflammatory products and leukotriene inhibitors as complementary therapy for bronchial asthma.&quot; Clinical Biochemistry 43.10-11 (2010) : 887-890<br />
<br />
Honda K, Kamisoyama H, Tominaga Y, Yokota S, Hasegawa S. &quot;The molecular mechanism underlying the reduction in abdominal fat accumulation by licorice flavonoid oil in high fat diet-induced obese rats.&quot; Journal of Animal Science 80.5 (2009) : 562-569<br />
Popovich DG, Yeo SY, Zhang W. &quot;Ginseng (Panax quinquefolius) and Licorice (Glycyrrhiza uralensis) Root Extract Combinations Increase Hepatocarcinoma Cell (Hep-G2) Viability.&quot; Evidence-based Complementary and Alternative Medicine (2009)</p>
</div>
<h4 id=\"bobcontent11-title\" class=\"handcursor\"><br />
Health Benefits of L-Tyrosine</h4>
<div id=\"bobcontent11\" class=\"switchgroup1\">
<p><br />
Arung ET, Wijaya Kusuma I, Shimizu K, Kondo R. &quot;Tyrosinase inhibitory effect of quercetin 4\'-O-beta-D-glucopyranoside from dried skin of red onion (Allium cepa).&quot; Journal of Asian Natural Products Research 1-8 (2010.<br />
<br />
Loriot Y, Mordant P, Dorvault N, De la Motte Rouge T, Bourhis J, Soria JC, Deutsch E. &quot;BMS-690514, a VEGFR and EGFR tyrosine kinase inhibitor, shows anti-tumoural activity on non-small-cell lung cancer xenografts and induces sequence-dependent synergistic effect with radiation.&quot; British Journal of Cancer (2010)<br />
<br />
Ye L, Santarpia L, Gagel RF. &quot;The Evolving Field of Tyrosine Kinase Inhibitors in the Treatment of Endocrine Tumors.&quot; Endocrine Reviews (2010)</p>
</div>
<h4 id=\"bobcontent12-title\" class=\"handcursor\"><br />
Health Benefits of Acerola Cherry</h4>
<div id=\"bobcontent12\" class=\"switchgroup1\">
<p><br />
Aparecida de Assis S, Carlos Rebuglio Vellosa J, Lourenco Brunetti I, Maissar Khalil N, Maria da Silva Cerqueira Leite K, Baldo Geraldo Martins A, Maria Mascarenhas de Faria Oliveira O. &quot;Antioxidant activity, ascorbic acid and total phenol of exotic fruits occurring in Brazil.&quot; International Journal of Food Sciences and Nutrition 1.10 (2008)<br />
<br />
Hanamura T, Mayama C, Aoki H, Hirayama Y, Shimizu M. &quot;Antihyperglycemic effect of polyphenols from Acerola (Malpighia emarginata DC.) fruit.&quot; Bioscience, Biotechnology and Biochemistry 70.8 (2006) : 1813-1820</p>
</div>
<h4 id=\"bobcontent13-title\" class=\"handcursor\"><br />
Health Benefits of Calcium</h4>
<div id=\"bobcontent13\" class=\"switchgroup1\">
<p><br />
Balaguer T, Boukhechba F, Clav&eacute; A, Bouvet-Gerbettaz S, Trojani C, Michiels JF, Laugier JP, Bouler JM, Carle GF, Scimeca JC, Rochet N. &quot;Biphasic calcium phosphate micro-particles for bone formation: benefits of combination with blood clot.&quot; Tissue Engineering (2010)<br />
<br />
Namkung W, Thiagarajah JR, Phuan PW, Verkman AS. &quot;Inhibition of Ca2+-activated Cl- channels by gallotannins as a possible molecular basis for health benefits of red wine and green tea.&quot; The FASEBJ Journal (2010)<br />
<br />
Ringe JD, Dorst A, Farahmand P. &quot;Efficacy of strontium ranelate on bone mineral density in men with osteoporosis.&quot; Arzneimittelforschung 60.5 (2010) : 267-272<br />
<br />
Wang TK, Bolland MJ, Pelt NC, Horne AM, Mason BH, Ames RW, Grey AB, Ruygrok PN, Gamble GD, Reid IR. &quot;Relationships between vascular calcification, calcium metabolism, bone density and fractures.&quot; Journal of Bone and Mineral Research (2010)<br />
<br />
Razzoli M, Andreoli M, Maraia G, Di Francesco C, Arban R. &quot;Functional role of Calcium-stimulated adenylyl cyclase 8 in adaptations to psychological stressors in the mouse: implications for mood disorders.&quot; Neuroscience (2010)</p>
</div>
<h4 id=\"bobcontent14-title\" class=\"handcursor\"><br />
Health Benefits of Magnesium</h4>
<div id=\"bobcontent14\" class=\"switchgroup1\">
<p><br />
Shechter M. &quot;Magnesium and cardiovascular system.&quot; Magnesium Research 23.2 (2010) : 60-72<br />
<br />
Bichara MD, Goldman RD. &quot;Magnesium for treatment of asthma in children.&quot; Canadian Family Physician 55.9 (2009) : 887-889<br />
<br />
Kwon BK, Roy J, Lee JH, Okon E, Zhang H, Marx JC, Kindy MS. &quot;Magnesium chloride in a polyethylene glycol formulation as a neuroprotective therapy for acute spinal cord injury: preclinical refinement and optimization.&quot; Journal of Neurotrauma 26.8 (2009) : 1379-93<br />
<br />
Izidoro MA, Assis DM, Oliveira V, Santos JA, Juliano MA, Lindberg I, Juliano L. &quot;Effects of magnesium ions on recombinant human furin: selective activation of hydrolytic activity upon substrates derived from virus envelope glycoprotein.&quot; The Journal of Biological Chemistry (2010) Han S, Crowther CA, Moore V. &quot;Magnesium maintenance therapy for preventing preterm birth after threatened preterm labour.&quot; Cochrane Database System Review 7 (2010)</p>
</div>
<h4 id=\"bobcontent15-title\" class=\"handcursor\"><br />
Health Benefits of Olive Leaf Extract<br />
&nbsp;</h4>
<div id=\"bobcontent15\" class=\"switchgroup1\">
<p>Mijatovic SA, Timotijevic GS, Miljkovic DM, Radovic JM, Maksimovic-Ivanic DD, Dekanski DP, Stosic-Grujicic SD. &quot;Multiple antimelanoma potential of dry olive leaf extract.&quot; International Journal of Cancer (2010)<br />
<br />
Poudyal H, Campbell F, Brown L. &quot;Olive leaf extract attenuates cardiac, hepatic, and metabolic changes in high carbohydrate-, high fat-fed rats.&quot; Journal of Nutrition 140.5 (2010) : 946-953<br />
El SN, Karakaya S. &quot;Olive tree (Olea europaea) leaves: potential beneficial effects on human health.&quot; Nutrition Reviews 67.11 (2009) : 632-638<br />
<br />
Kimura Y, Sumiyoshi M. &quot;Olive leaf extract and its main component oleuropein prevent chronic ultraviolet B radiation-induced skin damage and carcinogenesis in hairless mice.&quot; Journal of Nutrition 139.11 (2009) : 2079-2086 Sudjana AN, D\'Orazio C, Ryan V, Rasool N, Ng J, Islam N, Riley TV, Hammer KA. &quot;Antimicrobial activity of commercial Olea europaea (olive) leaf extract.&quot; International Journal of Antimicrobial Agents 33.5 (2009) : 461-463</p>
</div>
<h4 id=\"bobcontent16-title\" class=\"handcursor\"><br />
Health Benefits of Devils Claw Root</h4>
<div id=\"bobcontent16\" class=\"switchgroup1\">
<p>G&uuml;nther M, Laufer S, Schmidt PC. &quot;High anti-inflammatory activity of harpagoside-enriched extracts obtained from solvent-modified super- and subcritical carbon dioxide extractions of the roots of Harpagophytum procumbens.&quot; Phytochemical Analysis 17.1 (2006) : 1-7<br />
<br />
Inaba K, Murata K, Naruto S, Matsuda H. &quot;Inhibitory effects of devil\'s claw (secondary root of Harpagophytum procumbens) extract and harpagoside on cytokine production in mouse macrophages.&quot; Nature Medicine 64.2 (2010) : 219-22<br />
<br />
Uchida S, Hirai K, Hatanaka J, Hanato J, Umegaki K, Yamada S. &quot;Antinociceptive effects of St. John\'s wort, Harpagophytum procumbens extract and Grape seed proanthocyanidins extract in mice.&quot; Biological and Pharmaceutical Bulletin 31.2 (2008) : 240-245</p>
</div>
<h4 id=\"bobcontent17-title\" class=\"handcursor\"><br />
Health Benefits of Oregano</h4>
<div id=\"bobcontent17\" class=\"switchgroup1\">
<p>Matsuura H, Chiji H, Asakawa C, Amano M, Yoshihara T, Mizutani J. &quot;DPPH radical scavengers from dried leaves of oregano (Origanum vulgare).&quot; Bioscience, Biotechnology and Biochemistry 67.11 (2003) : 2311-2316 Kawabata J, Mizuhata K, Sato E, Nishioka T, Aoyama Y, Kasai T. &quot;6-hydroxyflavonoids as alpha-glucosidase inhibitors from marjoram (Origanum majorana) leaves.&quot; Bioscience, Biotechnology and Biochemistry 67.2 (2003) : 445-447<br />
<br />
Ayvaz A, Sagdic O, Karaborklu S, Ozturk I. &quot;Insecticidal activity of the essential oils from different plants against three stored-product insects.&quot; Journal of Insect Science 10 (2010) : 21<br />
<br />
Mechergui K, Coelho JA, Serra MC, Lamine SB, Boukhchina S, Khouja ML. &quot;Essential oils of Origanum vulgare L. subsp. glandulosum (Desf.) Ietswaart from Tunisia: chemical composition and antioxidant activity.&quot; Journal of the Science of Food and Agriculture 90.10 (2010) : 1745 - 1749</p>
</div>
<h4 id=\"bobcontent18-title\" class=\"handcursor\"><br />
Health Benefits of White Willow Bark</h4>
<div id=\"bobcontent18\" class=\"switchgroup1\">
<p>Bonaterra GA, Heinrich EU, Kelber O, Weiser D, Metz J, Kinscherf R. &quot;Anti-inflammatory effects of the willow bark extract STW 33-I (Proaktiv((R))) in LPS-activated human monocytes and differentiated macrophages.&quot; Phytomedicine (2010<br />
<br />
Vlachojannis JE, Cameron M, Chrubasik S. &quot;A systematic review on the effectiveness of willow bark for musculoskeletal pain.&quot; Phytother Research 23.7 (2009) : 897-900 Review.<br />
<br />
Beer AM, Wegener T. &quot;Willow bark extract (Salicis cortex) for gonarthrosis and coxarthrosis - Results of a cohort study with a control group.&quot; Phytomedicine (2008)</p>
</div>
<h4 id=\"bobcontent19-title\" class=\"handcursor\"><br />
Health Benefits of Red Yeast Rice</h4>
<div id=\"bobcontent19\" class=\"switchgroup1\">
<p>Borden WB. &quot;Red yeast rice for dyslipidemia in statin-intolerant patients.&quot; Current Atherosclerosis 12.1 (2010) : 11-13<br />
<br />
Lin JS. &quot;An alternative treatment of hyperlipidemia with red yeast rice: a case report.&quot; Journal of Medical Case Reports 4 (2010) : 4<br />
<br />
Guardamagna O, Abello F, Baracco V, Stasiowska B, Martino F. &quot;The treatment of hypercholesterolemic children: Efficacy and safety of a combination of red yeast rice extract and policosanols.&quot; Nutrition, Metabolism and Cardiovascular Diseases (2010)<br />
<br />
Klimek M, Wang S, Ogunkanmi A. &quot;Safety and Efficacy of Red Yeast Rice (Monascus purpureus) as an Alternative Therapy for Hyperlipidemia.&quot; P T. 34.6 (2009) : 313-327</p>
</div>
<h4 id=\"bobcontent20-title\" class=\"handcursor\"><br />
Health Benefits of Vitamin D</h4>
<div id=\"bobcontent20\" class=\"switchgroup1\">
<p>&nbsp;Niino M. &quot;Vitamin D and its immunoregulatory role in multiple sclerosis.&quot; Drugs Today 46.4 (2010) : 279-290<br />
<br />
Funakoshi Y, Omori H, Katoh T. &quot;Relation of bone mineral density to vitamin d receptor gene polymorphism and lifestyle factors in Japanese female workers aged 22-44 years: a cross-sectional study.&quot; Journal of Nutritional Science and Vitaminology 56.1 (2010) : 27-33<br />
<br />
Nakamura K, Saito T, Oyama M, Oshiki R, Kobayashi R, Nishiwaki T, Nashimoto M, Tsuchiya Y. &quot;Vitamin D sufficiency is associated with low incidence of limb and vertebral fractures in community-dwelling elderly Japanese women: the Muramatsu Study.&quot; Osteoporosis International (2010) Urashima M, Segawa T, Okazaki M, Kurihara M, Wada Y, Ida H. &quot;Randomized trial of vitamin D supplementation to prevent seasonal influenza A in schoolchildren.&quot; American Journal of Nutrition 91.5 (2010) : 1255 - 1260<br />
<br />
Grant WB. &quot;In defense of the sun: An estimate of changes in mortality rates in the United States if mean serum 25-hydroxyvitamin D levels were raised to 45 ng/mL by solar ultraviolet-B irradiance.&quot; Dermatoendocrinol 1.4 (2009) : 207-14<br />
<br />
Penckofer S, Kouba J, Byrn M, Estwing Ferrans C. &quot;Vitamin D and depression: where is all the sunshine?&quot; Issues in Mental Health Nursing 31.6 (2010) : 385-393<br />
<br />
Health Benefits of Vitamin K Ohsaki Y, Shirakawa H, Miura A, Giriwono PE, Sato S, Ohashi A, Iribe M, Goto T, Komai M. &quot;Vitamin K suppresses the lipopolysaccharide-induced expression of inflammatory cytokines in cultured macrophage-like cells via the inhibition of the activation of nuclear factor kappaB through the repression of IKKalpha/beta phosphorylation.&quot; The Journal of Nutritional Biochemistry (2010)<br />
<br />
Iwamoto J, Seki A, Sato Y, Matsumoto H, Tadeda T, Yeh JK. &quot;Vitamin K2 promotes bone healing in a rat femoral osteotomy model with or without glucocorticoid treatment.&quot; Calcified Tissues International 86.3 (2010) : 234-241<br />
<br />
Wrigley BJ, Lip GY, Shantsila E. &quot;Novel oral anticoagulants: the potential relegation of vitamin K antagonists in clinical practice.&quot; International Journal of Clinical Practice 64.7 (2010) : 835-838<br />
<br />
Borrelli F, Ernst E. &quot;Alternative and complementary therapies for the menopause.&quot; Maturitas (2010)<br />
<br />
Iwamoto J, Matsumoto H, Takeda T, Sato Y, Yeh JK. &quot;Effects of Vitamin K(2) on Cortical and Cancellous Bone Mass, Cortical Osteocyte and Lacunar System, and Porosity in Sciatic Neurectomized Rats.&quot; Calcified Tissues International (2010) Pengo V, Denas G, Jose SP, Pengo MF. &quot;Cancer prevention and vitamin K antagonists: an overview&quot; Thrombosis Research 125.2 (2010) : S 103-105</p>
</div>
<h4 id=\"bobcontent21-title\" class=\"handcursor\"><br />
Health Benefits of Boron</h4>
<div id=\"bobcontent21\" class=\"switchgroup1\">
<p>Scorei RI, Popa R Jr. &quot;Boron-containing compounds as preventive and chemotherapeutic agents for cancer.&quot; Anticancer Agents in Medicinal Chemistry 10.4 (2010) : 346-35<br />
<br />
Yamamoto T, Nakai K, Tsurubuchi T, Matsuda M, Shirakawa M, Zaboronok A, Endo K, Matsumura A. &quot;Boron neutron capture therapy for newly diagnosed glioblastoma: a pilot study in Tsukuba.&quot; Applied Radiation and Isotopes 67.7-8 (2009) : S25-26</p>
</div>
<h4 id=\"bobcontent22-title\" class=\"handcursor\"><br />
Health Benefits of Chlorella</h4>
<div id=\"bobcontent22\" class=\"switchgroup1\">
<p>Queiroz ML, Rodrigues AP, Bincoletto C, Figueir&ecirc;do CA, Malacrida S. &quot; Protective effects of Chlorella vulgaris in lead-exposed mice infected with Listeria monocytogenes.&quot; International Immunopharmacology 3.6 (2003) : 889:900<br />
<br />
Merchant RE, Andre CA. &quot;A review of recent clinical trials of the nutritional supplement Chlorella pyrenoidosa in the treatment of fibromyalgia, hypertension, and ulcerative colitis.&quot; Alternative Therapies in Health and Medicine 7.3 (2001) : 79-91<br />
<br />
Sato J, Takeda K, Nishiyama R, Fusayama K, Arai T, Sato T, Watanabe T, Abe A, Nakagawa J, Kawasaki S, Niimura Y. &quot;Chlorella vulgaris aldehyde reductase is capable of functioning as ferric reductase and of driving the fenton reaction in the presence of free flavin.&quot; Bioscience, Biotechnology, and Biochemistry 74.4 (2010) : 845-847<br />
<br />
Nakano S, Takekoshi H, Nakano M. &quot;Chlorella pyrenoidosa supplementation reduces the risk of anemia, proteinuria and edema in pregnant women.&quot; Plant Foods for Human Nutrition 65.1 (2010) : 25:30<br />
<br />
Nakashima Y, Ohsawa I, Konishi F, Hasegawa T, Kumamoto S, Suzuki Y, Ohta S. &quot;Preventive effects of Chlorella on cognitive decline in age-dependent dementia model mice.&quot; Neuroscience Letters 464.3 (2009) : 193-198</p>
</div>
<h4 id=\"bobcontent23-title\" class=\"handcursor\"><br />
Health Benefits of CQ-10</h4>
<div id=\"bobcontent23\" class=\"switchgroup1\">
<p>Aoki T, Yamazaki H, Suzuki H, Tamaki T, Sato F, Kitahara M, Saito Y. &quot;Cholesterol-lowering effect of NK-104, a 3-hydroxy-3-methylglutaryl-coenzyme A reductase inhibitor, in guinea pig model of hyperlipidemia.&quot; Arzneimittelforschung 51.3 (2001) : 197-203<br />
<br />
Kusumoto C, Kinugawa T, Morikawa H, Teraoka M, Nishida T, Murawaki Y, Yamada K, Matsura T. &quot;Protection by Exogenously Added Coenzyme Q(9) against Free Radical-Induced Injuries in Human Liver Cells.&quot; Journal of Clinical Bicohemistry and Nutrition 46.3 (2010) : 244-251<br />
<br />
Yamamoto T, Yamaguchi H, Miki H, Shimada M, Nakada Y, Ogino M, Asano K, Aoki K, Tamura N, Masago M, Kato K. &quot;Coenzyme A: diacylglycerol acyltransferase 1 inhibitor ameliorates obesity, liver steatosis, and lipid metabolism abnormality in KKAy mice fed high-fat or high-carbohydrate diets.&quot; European Journal of Pharmacology 640.1-3 (2010) : 243-249<br />
<br />
Ozaki A, Muromachi A, Sumi M, Sakai Y, Morishita K, Okamoto T. &quot;Emulsification of coenzyme Q10 using gum arabic increases bioavailability in rats and human and improves food-processing suitability.&quot; Journal of Nutritional Science and Vitaminology 56.1 (2010) : 41-7<br />
<br />
Zheng A, Moritani T. &quot;Influence of CoQ10 on autonomic nervous activity and energy metabolism during exercise in healthy subjects.&quot; Journal of Nutritional Science and Vitaminology 54.4 (2008) : 286-290</p>
</div>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('17', '1', 'Our Lab', '<p><b>WELCOME TO OUR LABORATORY</b></p>
<p>As customers of Nutritional Health Science you might be pleased to know that we exclusively own and operate our own laboratories. What this means for you is that all supplements have their genesis right in our own lab and are constructed by us until the finished product is complete.</p>
<p>Nutritional Health Science does not engage in the marketing of third party supplements.<br />
<br />
Our diverse staff is important in helping you along your healing path. Please allow us to introduce some of the fantastic people that help make your health and wellness goals a reality.</p>
<p><br />
<b>John Wikoff:<br />
</b>&nbsp;<br />
John is the glue that keeps everything together. He is Chief of Operations and keeps laboratory policies and procedures running at their efficacious capacity. He is in charge when it comes to communications with regulatory agencies such as the FDA, USDA and OCEA. He has 30- years experience running much larger and more complex operations. His resume of experience is a force to be reckoned with. We are pleased he has decided to work on behalf of the laboratories of Nutritional Health Science.</p>
<p><b>Ronald Novack:<br />
</b>&nbsp;<br />
No products are produced in our lab without the skill and experience of Mr. Ron Novak. Ron is in charge of the processing and storage of all of our raw materials. It&rsquo;s his job to make certain all ingredients are fresh, stabilized, and are of therapeutic strength. While a demanding position, Ron is an expert in his field and enjoys knowing that our customers are benefitting from his hard work and expertise.</p>
<p><b><br />
Jennifer Novack:<br />
</b>&nbsp;<br />
Jennifer is the lovely wife of Ron. She is responsible for our production lines. That means she makes certain that all ingredients go into the correct containers and are blended into the proper formulas. This is a monumental task as we handle more than 450 unique ingredients at any given time. She assures all products are labeled properly and batch samples are taken and stored from each production run. Finally, she oversees shipping and assures our customers get their products on time.</p>
<p><b><br />
Barb Beele:<br />
</b>&nbsp;<br />
You can&rsquo;t run a laboratory with out detailed records. This includes day-to-day financial book keeping coupled with production run records as well. Each production run must be recorded in order to insure our customers are getting the fresh and therapeutic products they have come to rely on. Barb is in charge of recording the results of the independent lab testing we perform on all of our products.</p>
<p><br />
<b>Dr. Linda Pashe:<br />
</b><br />
Dr. Pashe is responsible for formulating all of the therapeutic products our patients and online customers rely upon. She uses her expertise in both organic chemistry and cellular biology to design products that are on the cutting edge of nutritional technology. She spends countless hours in the lab and personally oversees and records the benefits of her pharmaceutical grade products before making them available to the public.<br />
<br />
&nbsp;This is not to forget our other dedicated employs that are also directly responsible for the success of our laboratory operations.<br />
<br />
Finally, though not required, we employ a few extra measures to insure that our products are top shelf. Before we produce any products, samples of each ingredient are sent to an independent laboratory for testing. In turn, the completed product is also send to an independent laboratory for testing once again. This means you are assured a safe, standardized, stabilized, and viable product. While these extra steps are not required by law, they mean you are receiving the utmost in the products that so many rely upon.</p>
<p>&nbsp;Sincerely,</p>
<p>The Staff @ Nutritional Health Science</p>
<p>&nbsp;</p>
<p>&nbsp;</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('18', '1', 'Mission Statement', '<p><br />
The mission of Nutritional Health Science is to bridge the gap between science and natural alternatives by offering only professional grade, all-natural, safe, and scientifically validated nutraceuticals.<br />
<br />
Through excellence, education and compassion, we strive to empower our customers with the most current research, information, and health enhancing products on the market today.</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('19', '1', 'Nutritional Health Science FAQ\'s', '<br />
<br />
<p>If you still have an issue with your account that we haven\'t addressed here, please call us Toll Free-1-877-819-7654 Or email us at: <a target=\"_blank\" href=\"http://If you still have an issue with your account that we haven\'t addressed here, please call us Toll Free-1-877-819-7654 Or email us at: info@nutritionalhealthsciencie.com\">info@nutritionalhealthsciencie.com</a></p>
<p><b>What are the benefits of creating an account?</b></p>
<p>When you create an account with Nutritional Health Science, you immediately get access to several important features:</p>
<p>-View your recent orders and access your entire order history - you can even reorder directly from your account!<br />
<br />
-Track the status and shipment of your current order in just one click<br />
<br />
-Get exclusive insider savings and tips through our weekly e-newsletter.&nbsp;<br />
<br />
&nbsp;<b>Can I register for an account without placing an order?</b></p>
<p>Of course! Just sign up now and login to your account the next time you visit.<br />
&nbsp;<br />
<b>&nbsp;How is my order shipped?</b></p>
<p>Orders within the United States are shipped via the US Post Office Priority Mail with Shipping Confirmation. Most US parcels reach their destination in 3 business days.<br />
&nbsp;<br />
<b>&nbsp;How are international orders shipped?</b></p>
<p>International orders are shipped via the US Post Office Express Mail service with a signature required. Most international orders will arrive at their destination in 5-7 business days.<br />
&nbsp;<br />
&nbsp;<b>How do I track my order?</b></p>
<p>Tracking the status and shipment of your order has never been easier. Just login to your account and select &quot;Track Orders&quot; on the side navigation or on your dashboard under your Recent Orders section.<br />
&nbsp;<br />
&nbsp;<b>Do you store credit card information?</b></p>
<p>We never store our customer\'s credit card information, so be sure to have your card on hand when you\'re ready to reorder.<br />
&nbsp;<br />
<b>&nbsp;I requested a new password, but haven\'t received an email yet.</b></p>
<p>Check your &quot;bulk&quot; folder first - if you still don\'t see an email from us, please email us by clicking on the link near the top of this form and we\'ll address the issue as soon as possible.</p>
<p><b>Note: Please check your spam folder before calling.</b></p>
<p><b><br />
&nbsp;When are orders shipped?</b></p>
<p>Orders will ship the next day from the date the order was placed. If an order is placed on a Friday or over the week end it will ship immediately that Monday.</p>
<p><b>Do you have a return/refund policy?</b></p>
<p>Your satisfaction is our first priority. However, if you wish to make a return you are honored by our 45-day customer satisfaction guarantee. You will be given credit for all unopened containers less shipping and a 10% restocking fee.</p>
<p>&nbsp;<b>Where do I ship returns?</b></p>
<p>Returns should be shipping to Nutritional Health Science, 4611 Forest Place, Cumming GA 30041. Please ship your order with a delivery confirmation attached and your invoice enclosed.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>');
insert into pages_description (pages_id, language_id, pages_title, pages_body) values ('20', '1', 'Privacy Policy', '<br />
<br />
<p><b>What information do we collect?</b></p>
<p>We collect information from you when you register on our site, subscribe to our newsletter or fill out a form.</p>
<p>When ordering or registering on our site, as appropriate, you may be asked to enter your: name or e-mail address. You may, however, visit our site anonymously.</p>
<p>What do we use your information for?</p>
<p>Any of the information we collect from you may be used in one of the following ways:</p>
<p><br />
<b>To send periodic emails</b></p>
<p>The email address you provide for order processing, will only be used to send you information and updates pertaining to your order.<br />
If you decide to opt-in to our mailing list, you will receive emails that may include company news, updates, related product or service information, etc.</p>
<p>Note: If at any time you would like to unsubscribe from receiving future emails, we include detailed unsubscribe instructions at the bottom of each email.</p>
<p><b>Do we use cookies?</b></p>
<p>Yes, Cookies are small files that a site or its service provider transfers to your computers hard drive through your Web browser (if you allow) that enables the sites or service providers systems to recognize your browser and capture and remember certain information</p>
<p>We use cookies to understand and save your preferences for future visits.</p>
<p><b>Do we disclose any information to outside parties? </b></p>
<p>We do not sell, trade, or otherwise transfer to outside parties your personally identifiable information. This does not include trusted third parties who assist us in operating our website, conducting our business, or servicing you, so long as those parties agree to keep this information confidential. We may also release your information when we believe release is appropriate to comply with the law, enforce our site policies, or protect ours or others rights, property, or safety. However, non-personally identifiable visitor information may be provided to other parties for marketing, advertising, or other uses.</p>
<p>Your Consent</p>
<p>By using our site, you consent to our privacy policy.</p>
<p>Contacting Us</p>
<p>If there are any questions regarding this privacy policy you may contact us using the information below.</p>
<p><a target=\"_blank\" href=\"http://www.nutritionalhealthscience.com\">http://www.nutritionalhealthscience.com</a><br />
P.O. Box 354<br />
Cummings, GA 10001<br />
USA<br />
<a target=\"_blank\" href=\"http://info@nutritionalhealthscience.com\">info@nutritionalhealthscience.com</a><br />
&nbsp;</p>');
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

insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2596', '999999998', '', 'adrenalpac2.png', '132.8972', '2011-05-12 00:28:55', '2011-06-30 14:50:25', NULL, '1.79', '1', '11', '0', '47', '0', '0', '0', '0', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2595', '999999997', '', 'whole.png', '27.5701', '2011-05-11 14:56:44', '2011-06-16 16:41:23', NULL, '0.40', '1', '11', '0', '3', '0', '0', '0', '0', '2596');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2594', '99995', '', 'biochelated.png', '36.9159', '2011-05-11 14:46:09', '2011-06-03 09:28:32', NULL, '0.53', '1', '11', '0', '5', '0', '0', '0', '0', '2596');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2593', '99999983', '', '1adrenalkareproduct.png', '55.6075', '2011-05-11 14:05:47', '2011-06-11 10:10:20', NULL, '0.54', '1', '11', '0', '49', '0', '0', '0', '0', '2596');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2597', '999999', '', 'Serrapeptase Biologic Enzymes.png', '55.6075', '2011-05-21 16:16:35', '2011-06-16 16:40:31', NULL, '0.54', '1', '11', '0', '8', '0', '0', '0', '0', '2614');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2598', '999999', '', 'Synergystic Mega Greens Powder.png', '55.6075', '2011-05-21 16:26:20', '2011-06-16 16:40:58', NULL, '0.70', '1', '11', '0', '0', '0', '0', '0', '0', '2609');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2599', '999998', '', 'Aloe Immune Complex.png', '64.9533', '2011-05-22 13:34:38', '2011-06-11 10:10:40', NULL, '0.42', '1', '11', '0', '3', '0', '0', '0', '0', '2610');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2600', '99999999', '', 'RheumaStat.png', '64.9533', '2011-05-22 14:23:38', '2011-06-16 16:40:11', NULL, '0.80', '1', '11', '0', '0', '0', '0', '0', '0', '2609');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2601', '999999', '', 'ProstaKare.png', '55.6075', '2011-05-22 16:03:16', '2011-06-16 16:39:44', NULL, '0.70', '1', '11', '0', '0', '0', '0', '0', '0', '2614');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2602', '99999999', '', 'OsteoPlus.png', '55.6075', '2011-05-22 16:51:41', '2011-06-30 14:46:52', NULL, '0.80', '1', '11', '0', '0', '0', '0', '0', '0', '2613');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2603', '9999', '', 'Optimal Cell Support.png', '64.9533', '2011-05-22 17:47:51', '2011-06-16 16:35:57', NULL, '0.80', '1', '11', '0', '0', '0', '0', '0', '0', '2612');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2604', '999989', '', 'Olive Leaf Extract.png', '34.1121', '2011-05-22 18:19:52', '2011-06-16 16:27:59', NULL, '0.45', '1', '11', '0', '10', '0', '0', '0', '0', '2610');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2606', '99999999', '', 'Estra Strength Omega 3 Fatty Acids.png', '36.9159', '2011-05-23 04:05:05', '2011-06-16 16:35:19', NULL, '0.65', '1', '11', '0', '0', '0', '0', '0', '0', '2613');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2607', '999994', '', 'CandidaZymes.png', '46.2617', '2011-05-23 05:34:44', '2011-06-11 10:10:56', NULL, '0.60', '1', '11', '0', '5', '0', '0', '0', '0', '2610');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2609', '99999997', '', 'basselinepac1.png', '116.4953', '2011-05-24 01:54:47', '2011-06-16 16:43:01', NULL, '1.80', '1', '11', '0', '2', '0', '0', '0', '0', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2608', '99998', '', 'CholestolKal.png', '55.6075', '2011-05-23 23:25:52', '2011-06-16 16:26:34', NULL, '0.80', '1', '11', '0', '1', '0', '0', '0', '0', '2611');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2610', '9999999', '', 'candidapac1.png', '116.4953', '2011-05-24 01:56:52', '2011-06-16 16:43:31', NULL, '1.47', '1', '11', '0', '0', '0', '0', '0', '0', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2611', '999999', '', 'cholesterolpac1.png', '166.5421', '2011-05-24 01:59:38', '2011-06-24 04:05:16', NULL, '2.50', '1', '11', '0', '0', '0', '0', '0', '0', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2612', '99999999', '', 'immunepac1.png', '192.1963', '2011-05-24 02:01:11', '2011-06-26 19:38:38', NULL, '2.55', '1', '11', '0', '0', '0', '0', '0', '0', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2613', '999998', '', 'osteopac1.png', '108.1776', '2011-05-24 02:02:44', '2011-06-16 16:52:43', NULL, '1.85', '1', '11', '0', '1', '0', '0', '0', '0', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2614', '99999', '', 'prostatepac1.png', '100.0935', '2011-05-24 02:04:24', '2011-06-16 16:46:22', NULL, '1.50', '1', '11', '0', '0', '0', '0', '0', '0', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2615', '99989', '', 'rehumatoid1.png', '208.5981', '2011-05-24 02:06:05', '2011-06-16 16:46:50', NULL, '3.25', '1', '11', '0', '10', '0', '0', '0', '0', '0');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2616', '99987', '', 'Broad Spectrum Mushroom Complex.png', '83.6449', '2011-05-24 13:18:28', '2011-06-30 14:44:58', NULL, '0.95', '1', '11', '0', '12', '0', '0', '0', '0', '2612');
insert into products (products_id, products_quantity, products_model, products_image, products_price, products_date_added, products_last_modified, products_date_available, products_weight, products_status, products_tax_class_id, manufacturers_id, products_ordered, products_length, products_width, products_depth, products_ship_sep, idrelations) values ('2617', '2147483607', 'GIFT', 'gift2.png', '25.0000', '2011-05-31 03:20:08', '2011-06-07 18:16:48', NULL, '0.00', '1', '0', '0', '40', '0', '0', '0', '0', '0');
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
  products_t3 longtext ,
  products_t4 longtext ,
  products_t5 longtext ,
  PRIMARY KEY (products_id, language_id),
  KEY products_name (products_name)
);

insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2594', '1', 'Chelated Minerals', '<ul>
    <li>Promote Cellular Repair</li>
    <li>Improved Systemic Function</li>
    <li>Support Immune System Health</li>
    <li>Support A Healthy Nervous System</li>
    <li>Healthier Bones Teeth And Tissues</li>
    <li>Increase Overall Energy</li>
    <li>Natural And Balanced Nutrition</li>
    <li>Bio-Available And Highly Absorbable</li>
</ul>', '', '298', 'FACT: Millions Of Americans Are Dangerously Mineral Deficient; Bio-Chelated Minerals Help!', 'Supports Healthy Cell Requirements', '<div style=\"text-align: justify;\">Sometimes life gets in the way and no matter what you might attempt, you may often fall short of doing the things you know are good for you and your family. The majority hardly have time for work and family, let alone trying to fit in exercise, put dinner on the table, or get a good night sleep.<br />
&nbsp;<br />
This is where Nutritional Health Science comes in. Nutritional Health Science can be counted on to help meet your daily essential minerals needs when a busy lifestyle and hectic schedules just don\'t allow you to eat healthy as you should.</div>', '<div style=\"text-align: justify;\"><b>Minerals are essential and must be obtained from your daily diet.</b> Your body cannot make minerals or manufacture them from another organic substance. Minerals serve a multitude of biologic functions with the role of calcium in bone health the most widely known. <br />
&nbsp;<br />
Minerals regulate the balance of fluids inside and outside your body&rsquo;s cells, are required for normal metabolism and are a component of enzymes and hormones.<br />
&nbsp;<br />
Food, drugs, vitamins and other nutritional supplements cannot perform their given functions in your body unless the appropriate amount of minerals are present in a natural and perfect balance.</div>', '<div style=\"text-align: justify;\"><b>A deficiency in any essential mineral can result in adverse metabolic actions and reactions in your body.</b>&nbsp; An imbalance of water, sodium and potassium can result in cardiac arrhythmias. A lack of dietary calcium, especially over long periods of time, forces the body to leech calcium from the bones in order to maintain proper calcium blood levels and can lead to osteoporosis.<br />
<br />
<div style=\"text-align: center; padding: 5px; background-color: rgb(239, 245, 250); width: 250px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52, 118, 150); margin-left: 10px; font-size: 13px;\">&quot;Symptoms of a mineral deficiency may include lethargy, sleepless night\'s, irritability and dificulty concentrating&quot;</div>
Chronically low calcium levels are also associated with memory loss, depression and confusion. Low potassium levels often result in recurrent muscle aches and pains, sometimes referred to as a &ldquo;Charley Horse.&rdquo; <br />
<br />
Zinc deficiencies are detectable by a specific rash that occurs on the face, groin, hands and feet.<br />
<br />
<b>For those experiencing sub-clinical malnutrition, i.e. mineral levels that are under what the body requires for optimal function, signs and symptoms of a mineral deficiency may include lethargy, sleepless nights, irritability and difficulty concentrating.</b><br />
&nbsp;</div>
<div style=\"padding: 10px; background-color: rgb(239, 245, 250); font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52, 118, 150); font-size: 13px;\"><b>Bio-Chelated Minerals Help Increase Energy Levels</b><br />
<br />
&quot;It was difficult to believe that the exhaustion I was feeling might be due to a mineral imbalance. How could I live in the USA with all of this food an suffer malnutrition? I tried so many different mineral products, even one my doctor gave me. I had no results with any of them.<br />
<br />
One gave me painful constipation while another had me feeling nauseated. Yet another product felt like a rock landed in my stomach.<br />
<br />
When I took the Bio-Chelated Minerals from Nutritional Health Science, I felt a noticeable difference in just a few days. Minerals and nutrition certainly go hand in hand. Keep up the good work. You have a customer for life&quot;<br />
<br />
<b>MARCUS HOLDER</b></div>', '<div style=\"text-align: justify;\"><b>Due to loose labeling laws and a lack of direct supervision over the dietary supplement industry, the majority of minerals products are not absorbable or usable by the body and can actually compromise natures delicate mineral balance.<br />
</b>&nbsp;<br />
For example, most of the supplemental calcium the dietary supplement industry produces is ground calcium rock or ground coral. Nowhere does science state that rocks of any type contribute to human health and wellness.<br />
&nbsp;<br />
Supplemental magnesium is often the residue from burned magnesium ribbon. This burned off chemical residue is routinley used in dietary supplements and can be found in over the counter Milk of Magnesia products.<br />
&nbsp;<br />
Potassium is typically offered as potassium chloride, a chemical compound composed of ground potassium rock bound with chlorine.&nbsp;&nbsp;&nbsp;<br />
&nbsp;<br />
<b>These are not the organic mineral compounds your body was designed to thrive upon. They also can cause more harm than good.<br />
</b></div>', '<div style=\"text-align: justify;\"><b>Take Bio-Chelated Minerals and:</b><br />
<div style=\"text-align: center; padding: 5px; background-color: rgb(239, 245, 250); width: 250px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52, 118, 150); margin-left: 10px; font-size: 13px;\">&quot;Bio-Chelated Minerals are minerals that your body can absorb&quot;</div>
<ul>
    <li>improve sleep</li>
    <li>increase energy</li>
    <li>enjoy easy assimilation</li>
    <li>protect overall health</li>
</ul>
<br />
<br />
When you consume healthy&nbsp; foods you also consume minerals in their natural state with hundreds of other beneficial&nbsp; co-factors that make them easily absorbable. Our minerals are also just as easy to absorb and are highly bio-available to your system.<br />
<br />
Bio-Chelated Minerals is a formula of organically derived minerals which are wrapped in essential amino acids. The body recognizes this combination and absorbs it <b>without side effects or adverse health effects on your body. Packaged in a semi sweet natural flavor which is in an easy to mix powder format, this superior minerals formula is healthful for your entire family and meets your needs for daily minerals requirements.<br />
</b></div>', '<div style=\"text-align: justify; padding: 10px; background-color: rgb(239, 245, 250); font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52, 118, 150); font-size: 13px;\"><b>Post-Partum Exhaustion Relieved</b><br />
<br />
&quot;I just had triplets and my entire system was in an uproar. While I expected to be tired, the exhaustion I was experiencing was almost crippling. I did have wonderful family support to help me, but I wanted to be there for my babies instead of others. taking care of them for me. I purchased your minerals, greens, and fish oil.<br />
<br />
What a difference four days made. It\'s understandable that I\'ll be tired, but at least the total exhaustion has lifted. Your products have proven extremely helpful for me. I\'m off to purchase your adrenal exhaustion formula which I suspect will help me that much more&quot;<br />
<br />
<b>AVIENA P</b></div>
<br />
<div style=\"text-align: justify; padding: 10px; background-color: rgb(239, 245, 250); font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52, 118, 150); font-size: 13px;\"><b>Nutritional Health Science Bio-Chelated Minerals Give Confidence</b><br />
<br />
&quot;Because I am &ldquo;at that age&rdquo; I knew I needed a high quality mineral supplement for preventative measures. There\'s no way I want to go into old age hurting, on medications, and always at the doctor&rsquo;s office like many of my friends. Most of the products at the health food store simply didn\'t look appealing.<br />
<br />
There\'s so many minerals and supplements, but so few that seemed effective. I ordered a few products from the internet, but they just didn&rsquo;t feel right. I finally found Nutritional Health Science and I\'m pleased with the results of this excellent bio-chelated minerals formula&quot;<br />
<br />
<b>OLGA MCDONALD</b></div>
<br />
<div style=\"text-align: justify; padding: 10px; background-color: rgb(239, 245, 250); font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52, 118, 150); font-size: 13px;\"><b>Bio-Available Minerals Restore That Feeling Of Youth</b><br />
<br />
&quot;I thought all this dietary supplement business was &ldquo;Baley- Hoo.&rdquo; My daughter finally got me to try a few of the supplements from Nutritional Health Science. They\'re not kidding when they say your health truly is nutritional science. I\'m 58 years young and power walk five miles daily. I\'m convinced the extra energy and overall feeling of wellness I have is the direct result of these wonderful products&quot;<br />
<br />
<b>J. REGONALD</b></div>
<br />
<br />
<div class=\"titlesubcontent\">Chart Below Lists The 13 Essential Minerals And Their Functions</div>
<br />
<ul>
    <li><b>Boron:</b> Works in the body to lessen calcium loss</li>
    <li><b>Calcium:</b> Bone integrity, nerve impulses, blood clotting</li>
    <li><b>Copper:</b> Tissue formation, cholesterol control, formation of red blood cells</li>
    <li><b>Chromium:</b> Insulin activity, glucose utilization, heart beat regulation</li>
    <li><b>Iron:</b> Red blood cell formation, enzyme activator, oxygen transport</li>
    <li><b>Manganese:</b> Build connective tissue, joint fluid production, protein metabolism</li>
    <li><b>Molybdenum:</b> Uric acid production, enzyme activator</li>
    <li><b>Potassium:</b> Alkaline balance, heart rhythm, nerve impulses</li>
    <li><b>Phosphorous:</b> Energy production, building bones and teeth, calcium absorption</li>
    <li><b>Selinium:</b> Anti-oxidant, anti-cancer, precursor to glutathione</li>
    <li><b>Silicon:</b> Cartilage formation, bone formation, tissue formation</li>
    <li><b>Vanadium:</b> Cholesterol balance, bone and teeth integrity</li>
    <li><b>Zinc: </b>Sexual function, wound healing, immune system function</li>
</ul>', '<table width=\"727\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">
    <tbody>
        <tr>
            <td height=\"178\" colspan=\"2\" style=\"background-image: url(&quot;images/backcontent7.jpg&quot;); background-repeat: no-repeat;\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51, 118, 150); font-size: 27px;\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px;\">
            <ul style=\"margin-left: 0px;\">
                <li>Absorbable Bio-Chelated Minerals</li>
                <li>Easy To Use Loose Powder Format</li>
                <li>Delicious and Mixes Easily With Water or Juice</li>
                <li>Bio-Chelation Delivers Results You Can Feel</li>
                <li>Blended In Nature\'s Perfect Balance</li>
                <li>Enjoy Incredible Benefits Without Side Effects</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px;\"><img src=\"images/logo45.jpg\" alt=\"\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\" class=\"tablespecial\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">&nbsp;</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial_header\">Amount<br />
            Per Dose</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial_header\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Calcium (as DiCalcium Malate &amp;Phosphorus Calcium)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">70 mg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">7%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Phosphorus Amino Acid Chelate)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">40 mg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">4%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Magnesium (as Magnesium Glycinate &amp; <br />
            DiMagnesium Malate)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">200 mg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">50%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Zinc (as Zinc Glycinate Chelate)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">25 mg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">166%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Selenium (as Selenium Amino Acid Complex)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">250 mg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">357%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Copper (as Copper Glycinate Chelate)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">1600 mcg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">80%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Manganese (as Manganese Lysine Glycinate Chelate)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">4.6 mg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">230 %</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Chromium (as Chromium Niconate Glycinate Chelate)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">400 mcg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">333%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Molybdenum (as Molybdenum Glycinate Chelate)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">500 mcg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">666%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Potassium (as Amino Acid Chelate)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">100 mg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">3%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Silicon (from Silicon Chelate)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">5 mg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Vanadium (as Vanadium Niconate Glycinate Chelate)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">500mcg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Boron (as Boron Amino Acid Complex)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">1 mg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">*</td>
        </tr>
        <tr>
            <td colspan=\"3\" class=\"tdspecial\">* Daily Value (DV) not established</td>
        </tr>
        <tr>
            <td colspan=\"3\" class=\"tdspecial\"><b>Other Ingredients : </b>None</td>
        </tr>
    </tbody>
</table>', 'Most Have Trouble Meeting Their Minerals Needs', 'Minerals Are Vital To Human Health And Wellness', 'You May Be Experiencing The Symptoms Of a Mineral Deficiency', 'The Majority Of Mineral Supplements Are Inferior', 'Bio-Chelated Minerals Are The Key To Minerals Your Body Can Use', 'What Our Customers Are Saying', 'Our Commitment To You', '', '', 'bio chelated minerals', 'Complete BioAvailable BioChelated Minerals', 'Pure And Derived From Natures Best Sources BioChelated minerals Are An Important Part Of Your Wellness Regime');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2593', '1', 'AdrenalKare', '<ul>
    <li>Increased Energy Levels</li>
    <li>Improved Sleep</li>
    <li>Wake Up Feeling Rested</li>
    <li>No Chemical Stimulants</li>
    <li>Reduce Cravings For Sweets And Caffeine&nbsp;</li>
    <li>Support Healthy Immunity</li>
    <li>Reduce Anxious Feelings</li>
</ul>', '', '1129', 'Exhausted? Mid-Day Crash?  Brain Fog? Our Adrenal Exhaustion Supplements Can Help', 'Natural Support For Exhausted Adrenal Glands', '<div style=\"text-align: justify\">The adrenal glands are two separate walnut shaped structures which sit one atop each kidney. The adrenal glands are part of your endocrine system (hormonal) and work with your thyroid and your pituitary gland to keep your body regulated. The adrenal glands produce many of the hormones in your body that influence specific organs and tissues:<br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; letter-spacing: -0.05em; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Adrenal glands help regulate blood sugar metabolism,the action of sodium and potassium,some sexual characteristics and normal growth. The adrenal glands also produce the hormone cortisol which is an anti-inflammatory&quot;</div>
The hormones epinephrine, adrenalin and norepinephrine are produced in your adrenal glands\' inner layer. Norepinephrine commences the fight or flight response and adrenalin is responsible for the &ldquo;high&rdquo; that many thrill seekers crave. <br />
<br />
<b>The outer layer of the adrenal glands produces a multitude of hormones</b> that help regulate blood sugar metabolism, the action of sodium and potassium, certain sexual characteristics and normal growth. The most significant hormone produced by the outer shell is cortisol which is a powerful anti-inflammatory that affects conditions such as lupus, rheumatoid arthritis, allergies, asthma and other inflammation related issues.</div>', '<div style=\"text-align: justify\">Standard medical practice does not look for, test, or diagnose <b>adrenal exhaustion.</b> Many suffering the effects of adrenal exhaustion are dismissed with prescriptions for antidepressants and sleeping pills with the true underlying factors ignored and mistreated.<br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; letter-spacing: -0.05em; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: left; color: rgb(52,118,150); font-size: 13px; margin-right: 10px; padding-top: 5px\">&quot;To diagnose adrenal fatigue your health practitioner will ask you to fill out a questionnaire and will check check your hormone,cortisol,sodium and potassium levels&quot;</div>
For those able to find a healthcare practitioner who recognizes adrenal exhaustion as a physiological issue, diagnosis is fairly straightforward; a questionnaire will be filled out and a hormone panel and blood cortisol test will be taken along with the possibility of a blood potassium and sodium panel. This in order to determine the need for adrenal supplements.<br />
<br />
Unfortunately, many doctors do not have this type of testing immediately available to them and most do not recognize adrenal exhaustion as a condition to be treated. It\'s true that most people must arrive at the conclusion that adrenal burnout is part of the problem on their own and pursue other avenues for the adrenal support they require. In most cases, adrenal exhaustion treatment is needed.
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); margin-top: 10px; padding-left: 10px; letter-spacing: -0.05em; padding-right: 10px; font-family: \'Courier New\'; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>AdrenalKare Was The Answer</b><br />
<br />
&quot;I\'ve tried over a dozen products including some my own Naturopath gave me for adrenal exhaustion. None of them worked until I found AdrenalKare. I felt the difference in just four days. I now use the entire Adrenal-Pac and the results are amazing.<br />
<br />
I\'m definatley enjoying my adrenal exhaustion supplements. There\'s no reason for anyone to ever have to suffer the effects of adrenal exhaustion which simply translates into miserable nights and days. Your product knowledge and customer service are outstanding.&quot;<br />
<br />
<b>Nancy Finegold</b></div>
</div>', '<div style=\"text-align: justify\">The symptoms of <b>adrenal exhaustion</b> are numerous and vary from individual to individual. Everyone has different lifestyles, variable pressures, varied diets and handle stress in unique and individual ways. Below are some of the clinical signs and symptoms of adrenal exhaustion.<br />
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" align=\"left\">
    <tbody>
        <tr>
            <td>
            <ul>
                <li>Constant Exhaustion</li>
                <li>Insomnia</li>
                <li>Cravings For Salt And Sweets</li>
                <li>Slow Recovery From Exercise</li>
                <li>Brain Fog</li>
                <li>Depressed Immune System</li>
                <li>Irritability and Short Temper</li>
                <li>Low Sex Drive</li>
                <li>Allergies</li>
            </ul>
            </td>
            <td width=\"20\">&nbsp;</td>
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
<br />
<br />
<br />
Stress, toxicity&nbsp; and a poor diet are significant contributors to <b>adrenal exhaustion</b>. If your are consuming sugar, hydrogenated fats and processed foods, you are actively contributing to your symptoms.<br />
<br />
These types of foods lead to sharp spikes in blood sugar levels, followed by the release of excess insulin. If refined foods are being consumed in excess, the adrenal glands must work that much harder therefor contributing that much more to your state of adrenal exhaustion.<br />
<br />
<b>Your adrenal glands require the assistance of adrenal supplements when you\'re under physical and/or emotional stress.</b><br />
<br />
Our customers find that AdrenalKare and the Adrenal-PAC helps provide optimal adrenal support when they are:<br />
<ul>
    <li>experiencing high levels of physical stress (illness or medical treatment) or emotional stress</li>
    <li>undergoing major surgery, physical therapy, chemotherapy</li>
    <li>suffering from chronic pain</li>
</ul>
</div>', '<div style=\"text-align: justify\"><b>Adrenal exhaustion can be successfully treated with AdrenalKare</b> <br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; letter-spacing: -0.05em; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; color: rgb(52,118,150); font-size: 13px; margin-right: 10px; padding-top: 5px\">&quot;AdrenalKare; Natural Safe Effective Guaranteed For All Of Your Adrenal Symptoms&quot;</div>
<b>AdrenalKare is a professional formula of natural organics that:</b><br />
<ul>
    <li>supports normal adrenal function</li>
    <li>supports the synthesis of adrenal hormones</li>
</ul>
<br />
<br />
AdrenalKare rivals most <b>adrenal exhaustion supplements</b> with a unique combination of plant adaptagens (natural compounds that help the body to adapt to particular stressors by helping certain systems adapt via self-regulation) and adrenal cell extracts that makes it the best on the market for Adrenal Support.<br />
<br />
A 100% potent formula, all natural AdrenaKare contains no inactive ingredients and is 100 % bio-available to your system.<br />
<br />
<b>Caution:</b> Beware of Adrenal products that are laced with caffeine and other stimulants. Products such as these provide the illusion that you are experiencing an increase in energy levels. While it\'s true that that you will feel &quot;UP&quot; for a little while, you will still experience that mid afternoon crash as never before coupled with&nbsp; the restless night sleep&nbsp; that you are so accustomed&nbsp; to experiencing. Rest assured that AdrenalKare is <b>free of synthetic stimulants.</b> <br />
<br />
AdrenalKare works for you all day long and provides a gentle and natural sense of well being without&nbsp; the violent spikes of that all too familiar &quot;Up and Down&quot; feeling. <br />
<br />
<b>Nutritional Health Science has combined scientifically-proven research and natural solutions to produce AdrenalKare; a product that is natural, safe and effective </b>for those suffering from <b>adrenal exhaustion </b>and for those that require optimal adrenal support.</div>', '<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; letter-spacing: -0.05em; padding-right: 10px; font-family: \'Courier New\'; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Much Needed Rest And A Brighter Outlook </b><br />
<br />
&quot;I My family thought I was going nuts and in fact, so did I. In retrospect, there were reasons I was in that state of mind and body back then. The loss of a job and the loss of my mother coupled with three kids was enough to put me over the edge. I realized I was suffering from adrenal exhaustion.<br />
<br />
I have been following a natural lifestyle and taking your adrenal supplements for six months for adrenal support. I feel great and now look forward to a good night\'s sleep. Feeling rested in the morning is almost a dream come true. You guys are alright&quot;<br />
<br />
<b>Mica Gray</b></div>
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; letter-spacing: -0.05em; padding-right: 10px; font-family: \'Courier New\'; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Nutritional Health Science Saves The Day </b><br />
<br />
&quot;I was diagnosed with adrenal exhaustion five years ago. For that length of time I was using supplements that really seemed to do the job. Unfortunately, the company closed and I was no longer able to purchase them.<br />
<br />
I looked everywhere and tried a few products but nothing seemed to help like what I had been taking. I finally found your company and now I\'m back on track. You have excellent products. I\'m forever grateful&quot;<br />
<br />
<b>Jerry O </b></div>
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; letter-spacing: -0.05em; padding-right: 10px; font-family: \'Courier New\'; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Dragged Out Exhaustion</b><br />
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
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All Natural Professional Formula</li>
                <li>Relief from Exhaustion Symptoms</li>
                <li>Zero Negative Side Effects</li>
                <li>Promote Overall Health</li>
                <li>Get Much Needed Rest</li>
                <li>Restore Exhausted Worn Out Adrenals</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '<div style=\"text-align: center\">Serving Size: 5 Capsules<br />
Serving Per Container : 30<br />
&nbsp;</div>
<br />
<table class=\"tablespecial\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">&nbsp;</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">Amount<br />
            Per Dose</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Vitamin C (from Acerola Cherry Powder)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">100 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">166%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Proprietary Blend</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">3740 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Cordyceps Powder</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Siberian Ginseng Root Powder</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Acerola Cherry Extract Pwd (17% Vitamin C)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Manchurian Thom Tree Extract</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Rhodiola Root Powder</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Schizandria Berry Powder</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Licorice Root Extract Pwd (3% Glycyrrhizin)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">L-Tyrosine</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Adrenal Powdere</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Hypothalamus Powder</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\">* Daily Value (DV) not established</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\"><b>Other Ingredients : </b>Vegetable Cellulose and Magnesium stearate</td>
        </tr>
    </tbody>
</table>', 'The Adrenal Glands Structure And Function', 'Diagnosing Adrenal Exhaustion', 'Signs and Symptoms Of Adrenal Exhaustion', 'Adrenalkare: The Ultimate  Adrenal Exhaustion Formula For Guaranteed Success', 'What Our Customers Are Saying About Our Adrenal  Exhaustion Supplements', 'Our Commitment To You', '', '', 'Adrenal Exhaustion| Adrenal Support', 'adrenal exhaustion', 'Adrenal Exhaustion | Natural Adrenal Exhaustion Supplements', 'Stop Suffering From Adrenal Exhaustion. Natural Therapy Can Help. Guaranteed');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2595', '1', 'Whole Food Vitamin C', '<ul>
    <li>Essential For A Healthy Immune System</li>
    <li>Non-Synthetic Chemical Free</li>
    <li>Powerful Antioxidant</li>
    <li>Required for Skin And Tissue Repair</li>
    <li>Cellular Regeneration And Renewal</li>
    <li>Whole Food Nutrition Your Body Can Use</li>
</ul>', '', '298', 'Whole Food Vitamin C Powder In a Delicious Raspberry Powder Format', 'Natural Vitamin C Powder', '<div style=\"text-align: justify\"><b>Vitamin-C is a nutrient that\'s essential for numerous biological functions in your body:</b> <br />
<br />
<b>Antioxidant:</b> Vitamin-C is a powerful antioxidant and plays a key role in helping your body neutralize disease-causing cells called free radicals. <br />
<br />
<b>Bones and Connective Tissues:</b> Vitamin-C is essential for proper bone formation, skin health and connective tissue formation. Connective tissue is found in your body in areas such as the tendons and ligaments that support your joints and the fine tissues that hold your organs together.<br />
<br />
<b>Teeth and Gums: </b>Vitamin-C is vital for healthy teeth and gums.<br />
<br />
<b>Iron Absorption:</b> Vitamin-C is required for the absorption of iron that, in turn, increases your supply of red blood cells. Red blood cells carry oxygen to all the tissues in your body.<br />
<br />
<b>Wound Healing:</b> Vitamin-C is required for speedy wound healing.<br />
<br />
<b>Brain Health: </b>Vitamin-C is important for brain health and plays a key role in the production of important brain chemicals such as norepinephrine, seratonine and dopamine. Insufficient levels of certain brain chemicals are known to affect mood and aggravate conditions such as depression.<br />
<br />
<b>Blood Cholesterol:</b> Higher intake of Vitamin-C lowers blood cholesterol levels.<br />
<br />
<b>Heart Disease:</b> Depleted levels of Vitamin-C are strongly associated with heart disease, stroke and cancer.<br />
<br />
<b>Cellular Energy and Health:</b> Vitamin-C is required for cellular energy and the metabolism of fat to energy. Vitamin-C supplementation has a positive effect on the production of RNA and DNA. Both RNA and DNA are special proteins that are required for new healthy cells to form.<br />
<br />
<b>Often taken for granted, Vitamin-C is a nutrient powerhouse that the body cannot thrive without.</b><br />
<br />
&nbsp;</div>
<div style=\"padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Surgical Wound Heals Quickly</b><br />
<br />
&quot;It was difficult to believe that I might be Vitamin-C deficient. However, 2-scoops of your Whole Food Vitamin-C powder daily made all the difference in the world. I just had my appendix taken out and I can&rsquo;t tell you how fast I healed. I\'m quickly learning how important whole food nutrition is for the state of your health.<br />
<br />
You are correct in saying that an adequate amount of Vitamin-C helps healing. If this stuff is great for my outsides I can just imagine how wonderful it is for my insides. You folks are true professionals&quot; <br />
<br />
<b>David W</b></div>', '<p style=\"text-align: justify\">Linus Pauling is the most famous Vitamin-C researcher known to nutritional science. Though Linus Pauling has passed, his work carries on at the Linus Pauling Institute at Oregon State University.</p>
<p style=\"text-align: justify\">After years of extensive research, Linus Pauling concluded that the recommended daily Vitamin-C dosage put forth by the FDA (60 milligrams) was definitely not enough to maintain health and wellness. It was his position that health promoting daily intakes should reach or exceed 500 milligrams. Given the less than desirable health status of the majority living in Westernized cultures his theory proves to be absolutley correct.</p>', '<div style=\"text-align: justify\"><b>Vitamin-C has profound effects on the function of the immune system.</b> Studies have shown that Vitamin-C affects both the production and function of leukocytes, more commonly known as white blood cells. These are cells of the immune system on the frontlines that protect your body 24/7 from foreign invaders such as bacteria, viruses, allergens and infections. <br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;The Immune System Cannot Function without Vitamin C&quot;</div>
Specific immune system functions that Vitamin-C positively affects include cell motility (ability of the cell to move) and the ability of the white blood cell to attack the &ldquo;bad guy.&rdquo; <br />
<br />
Vitamin-C has been shown to positively affect the action and reaction of antibodies. Antibodies are the cells of the immune system that have &ldquo;memory&rdquo; for certain pathogens and they automatically attack when exposed to such. This is provided they have proper nutritional support and the raw organic whole food nutrients they require to function properly.<br />
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
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot; Delicious, Raspberry Flavored Vitamin C&quot;</div>
<b>Delicious Raspberry Taste</b><br />
<ul>
    <li>no sugar added</li>
    <li>natural and delicious raspberry matrix</li>
</ul>
<br />
<br />
Each serving of our delicous powder Whole Food Vitamin-C formula provides a whopping 500 mgs of natural Vitamin-C. Our Whole Food Vitamin-C is offered to you in a powder format and is easily mixed with juice or water. Our premier Vitamin-C&nbsp; powder provides healthy benefits for the entire family.</div>', '<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Almost Better Than Oranges </b><br />
<br />
&quot;I just love your Vitamin-C powder. Every time I take it I feel like I\'ve eaten three oranges. It&rsquo;s a healthy feeling I can hardly describe but one I am thankful for. Keep up the good work as I recommend your products to everyone.&quot;<br />
<br />
<b>Genie Krakow</b></div>
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Better Energy Levels</b><br />
<br />
&quot;I started taking your Vitamin-C with some of your other products and boy do I feel the difference. I do try hard to eat healthy every day, but with my busy schedule sometimes it just isn&rsquo;t possible. There\'s a big difference in my energy levels and my overall state of well being. I sure didn&rsquo;t realize that my RDA requirements for Vitamin-C were not being met. I will use your Vitamin-C from this day forward.&quot;<br />
<br />
<b>Margaret Plumber</b></div>
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>A Stronger Immune System</b><br />
<br />
&quot;I really don\'t have any health problems but I take your Vitamin-C powder on good faith daily. What I can tell you is that in the year I\'ve taken your products, I have not been sick one day. I used to get the flu at least two times per year. I\'ll continue to carry on with your products as they have done me well.&quot; <br />
<br />
<b>Skeeter Davis </b></div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
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
                <li>Vitamin C Powder Your Body Can Use</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '<div style=\"text-align: center\">SUPPLEMENT FACTS<br />
Serving Size :(1) 6.5cc Scoop (4.43 grams)<br />
(1) Rounded Teaspoon<br />
Serving Per Container :30</div>
<br />
<table class=\"tablespecial\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">&nbsp;</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">Amount<br />
            Per Dose</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Vitamin C</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">500 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">833%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Proprietary Blend</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">3740 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Calcium Amino Acid Chelate</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">10 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">10%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Magnesium Amino Acid Chelate</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">18 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">8%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Potassium Amino Acid Complex</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">14 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Acerola Cherry (Vitamin C 17%)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">1650 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Camu Camu Berry (vitamin C 20%)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">1100 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Bioflavonoid Complex</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">25 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\">* Daily Value (DV) not established</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\"><b>Other Ingredients : </b>Raspberry Powder and Stevia Powder Extract.</td>
        </tr>
    </tbody>
</table>', 'What Whole Food Vitamin-C Powder Does For You', 'Nutritional Research Substantiates Vitamin-C And Your Health', 'Vitamin-C Powder  Is Essential  For  A Healthy Immune System.', 'Whole Food Vitamin C Powder: The All-Natural Solution for Guaranteed Success', 'What Our Customers Are Saying', 'Our Commitment To You', '', '', '', 'vitamin c powder', 'Whole Food Vitamin C Powder', 'Don\'t Take Synthetic Vitamin C Powder. Enjoy A Healthy Nutritional Matrix In A Natural Raspberry Flavor. Vitamin C Powder With Integrity.');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2596', '1', 'adrenal pac', '<p>Our product PACs are designed to save you money and offer maximum benefits. This combination of products work together for best results. Our product PACs are the way to go for discriminating consumers seeking both remarkable health benefits and cost savings.</p>', '', '980', 'A Comprehensive And Effective Adrenal Fatigue Treatment', 'Powerful Support For Adrenal Fatigue', '<div style=\"text-align: justify\">Adrenal Fatigue Symptoms such as allergies, tiredness, frequent colds and flu, anxiety, arthritis, depression, difficulty concentrating, lapses in short term memory, insomnia and difficulty losing weight may be due to adrenal fatigue, otherwise known as hypoadrenia.<br />
<br />
The adrenal glands sit one atop each kidney and are referred to as our stress glands. They play an important role in many biological functions such as blood sugar metabolism, carbohydrate and protein metabolism, cardiovascular function, nervous system function, hormone production, digestive processes and liver function.<br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Stress and Poor Diet lead to Adrenal Fatigue&quot;</div>
<b>One of the most important roles of the adrenal glands is to help with hormone production.</b> The adrenals work in tandem with your pituitary gland and your hypothalamous gland to help control inflammation, immune system function, sleep/wake cycles, blood pressure and heart rate. The adrenal glands are negatively affected by stress which can result in all too common adrenal fatigue symptoms. While stress is an individual and unique experience, the more common stressful experiences within our society include divorce, surgery, chronic pain, finances, prescription drugs, junk food diets and familial issues. When stress and poor nutrition remain unchecked, altered hormone levels can lead to adrenal fatigue.
<div>hello linda&nbsp; how are you</div>
</div>', '<div style=\"text-align: justify\">The adrenals are responsible for many physiological functions and&nbsp; the adverse effects experienced by those suffering from adrenal fatigue symptoms. Some adrenal fatigue symptoms may mirror those found in other illnesses and diseases. Consult with your health care practitioner to rule out other possibilities before concluding that adrenal fatigue treatment is required. <br />
<br />
Adrenal Fatigue Symptoms Are Varied:<br />
<table cellspacing=\"25\" cellpadding=\"0\" border=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td>
            <ul>
                <li>Low Energy - Weakness, Fatigue</li>
                <li>Lethargy</li>
                <li>Fluid Retention</li>
                <li>Sleepiness</li>
                <li>Insomnia</li>
                <li>Blood Sugar Problems</li>
                <li>Feel Better</li>
                <li>Suddenly After a Meal</li>
                <li>Need for Mid-Afternoon Naps</li>
                <li>Nervousness</li>
                <li>Hot flashes</li>
                <li>Tremble When Under Pressure Reduced Sex Drive</li>
                <li>Tendency Towards the Flu</li>
                <li>Out of Breath when Going Up Stairs</li>
                <li>Facial Hair on Women</li>
                <li>Unable to Remember Things</li>
            </ul>
            </td>
            <td width=\"100\">&nbsp;</td>
            <td>
            <ul>
                <li>Deeper Voice</li>
                <li>Need Caffeine or Stimulants</li>
                <li>Anxiety (Worry)</li>
                <li>Difficulty Handling Stress</li>
                <li>Frequent Feelings of Stress</li>
                <li>Salt Cravings</li>
                <li>Difficulty Getting out of Bed</li>
                <li>Mood Swings</li>
                <li>Lack of Energy From 3-5 PM</li>
                <li>Cravings for High Protein Foods</li>
                <li>Weight Gain (Unable to Lose It)</li>
                <li>Fat Cravings</li>
                <li>Acne or Poor Skin</li>
                <li>Lax Ligaments - Weak Ankles and Knees</li>
                <li>Weak or Brittle Bones</li>
            </ul>
            </td>
        </tr>
    </tbody>
</table>
</div>', '<b>Adrenalkare</b><br />
<br />
<div id=\"2593\" style=\"text-align: justify\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img width=\"135\" hspace=\"0\" height=\"137\" border=\"0\" src=\"images/1adrenalkareproduct-135x137.png\" alt=\"Adrenalkare\" title=\" Adrenalkare \" /></div>
<br />
<a href=\"javascript:mostrardivid(2593);\"><img src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" alt=\"\" /></a></div>
Carefully cultivated under controlled laboratory conditions, AdrenalKare is a professionally formulated complex nutritional matrix designed to work in tandem with your body. AdrenalKare works to help reduce the negative effects of stress and pressure on your adrenal glands while allowing your adrenals to reap the natural nourishment they require to function properly. <br />
<br />
AdrenalKare is rich in plant adaptagans which have been shown by science to help the body cope during times of extreme stress. AdrenalKare is a 100% natural formula and contains no additives or fillers. AdrenalKare is the gold standard for adrenal exhaustion supplements.<br />
<br />
AdrenalKare is free of damaging chemical stimulants and regularly provides its users with an &ldquo;even keeled&rdquo; steady feeling both day and night. You can effectively stop those exhausted mornings and mid-afternoon crashes with AdrenalKare. Balance your moods and reduce cravings for foods that are less than healthful for you.<br />
<br />
AdrenalKare is tried and proven and never fails to deliver the positive results our customers are seeking. Stress doesn&rsquo;t need to control your life or your health. AdrenalKare delivers. Recovering from adrenal fatigue has never been easier. We guarantee it.<br />
<br />
Each bottle of AdrenalKare contains 150 capsules. Suggested dosage is 5 capsules each morning on an empty stomach 30 minutes before breakfast.</div>
<br />
<br />
<b>Whole Food Vitamin-C</b><br />
<br />
<div id=\"2595\" style=\"text-align: justify\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img width=\"135\" hspace=\"0\" height=\"137\" border=\"0\" src=\"images/whole-135x137.png\" alt=\"Adrenalkare\" title=\"Whole Food Vitamin-C\" /></div>
<br />
<a href=\"javascript:mostrardivid(2595);\"><img src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" alt=\"\" /></a></div>
Vitamin-C is a daily essential nutrient required by your body for optimal health. While associated with the relief of colds and flu, Vitamin-C is engaged in countless health supporting roles such as: collagen production, immune system function, a disease causing free radical scavenger and for proper neurological function as well. <br />
<br />
The adrenal glands naturally have high levels of Vitamin-C in storage which is used to produce a hormone called cortin which works with your immune system to fight off illness. High stress and/or poor diet causes quick and immediate depletion of your body&rsquo;s available Vitamin-C directly affecting your adrenal glands. Therefor, Vitamin-C is an important part of your sucessful adrenal fatigue treatment protocol. <br />
<br />
Many other brands of Vitamin-C contain a synthetic compound made by combining corn starch with sulphuric acid. This is hardly the natural whole food Vitamin-C that your adrenals require for proper function. Nutritional Health Science uses only natural, high quality Vitamin-C rich whole foods such as the Camu Camu berry and Acerola cherry&nbsp; to form a delicious and easy-to-mix raspberry flavored powder. <br />
<br />
Two containers of whole food Vitamin-C are a part of our effective and successful adrenal fatigue treatment and are vital in helping you alleviate your adrenal fatigue symptoms.<br />
<br />
Each bottle contains 30 servings and a whopping 500 mgs of whole food powdered Vitamin-C per serving. Those experiencing adrenal fatigue should take one scoop morning and one scoop evening as part of your adrenal fatigue treatment. Our whole food Vitamin-C mixes easily with water or juice.</div>
<br />
<br />
<b>Bio-Chelated Minerals</b><br />
<div id=\"2594\" style=\"text-align: justify\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img width=\"135\" hspace=\"0\" height=\"137\" border=\"0\" src=\"images/biochelated-135x137.png\" alt=\"Adrenalkare\" title=\"Whole Food Vitamin-C\" /></div>
<br />
<a href=\"javascript:mostrardivid(2594);\"><img src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" alt=\"\" /></a></div>
Minerals have been accurately described as the &quot;spark plugs of life.&quot; For those suffering from adrenal fatigue symptoms, mineral deficiencies are a large part of the problem and are an important part of your adrenal fatigue protocol.<br />
<br />
Mineral deficiencies are serious and can result in osteoporosis, weak joints, hair loss, irregular bowels, poor sleep and an overall feeling of depletion and exhaustion. Because adrenal fatigue and mineral deficiencies have similar symptoms, it\'s prudent to address the mineral needs of your body while directly targeting your adrenal fatigue symptoms as well. <br />
<br />
The majority of dietary mineral supplements are sub-standard and rendered unusable by your body. For example, the majority of suplemental calcium produced in the USA is simply ground calcium rock derived from either calcium rock itself or ground coral. Most supplemental magnesium is derived from burning magnesium ribbon. In some cases, sub-standard mineral supplements may actually accelerate heart disease and also cause kidney or bladder stones.<br />
<br />
To be healthful, mineral supplements must be derived from organic sources. Nutritional Health Science Bio-Chelated minerals formula is well balanced with a natural ratio of essential minerals that your body can recognize and absorb without systemic upsets and danger to your kidneys or bladder. Adrenal fatigue treatment has never been more effective.<br />
<br />
Each bottle contains one scoop powder format for both evening and morning dosage. One bottle is one months supply. Bio-Chelated minerals taste great and easily mixes with water or juice.</div>', '<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Natural Solutions For Adrenal Fatigue</b><br />
<br />
&quot;After extensive research, I knew I was suffering from adrenal fatigue symptoms but was unable to find anybody to diagnose it or offer me adrenal fatigue treatment of any kind. I was unable to find any supplements that seemed to work and was at my wits end.<br />
<br />
I accidentally found Nutritional Health Science and decided to give the adrenal fatigue treatment pac a try. Within 10 days&rsquo; time I felt a positive result and some relief of my adrenal fatigue symptoms. I decided to keep on going with the adrenal fatigue treatment for the 90 days they suggest. The bottom line. I feel great and certainly hope I can convince others to give this a shot. I can\'t think of one person I know who wouldn\'t benefit from such marvelous products&quot;<br />
<br />
<b>marcia z.</b></div>
<br />
<div style=\"padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Adrenal Fatigue Reversed</b> &quot;I was officially diagnosed with adrenal fatigue and offered adrenal fatigue treatment by a naturopathic doctor. The sad part was anything he had to offer me didn\'t work. During my last office visit, he gave me the Adrenal-PAC from Nutritional Health Science.<br />
<br />
After two months I got to feeling pretty good. I also employed some lifestyle changes to get some of the stress out of my life. The combination of the two strategies has been magical for me. The adrenal fatigue treatment pac really works and has provided me maximum adrenal support.&quot;<br />
<br />
<b>dana crowley</b></div>', '<table width=\"727\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">
    <tbody>
        <tr>
            <td height=\"178\" colspan=\"2\" style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All Natural Solutions For Guaranteed Success</li>
                <li>Products That You Can Count On</li>
                <li>No Cheap Fillers Or Additives</li>
                <li>Total Adrenal Fatigue Treatment</li>
                <li>Full Support From Our Product Specialists</li>
                <li>Healthy Benefits You Can Feel</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img src=\"images/logo45.jpg\" alt=\"\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '<br type=\"_moz\" />', '<br type=\"_moz\" />', '<br type=\"_moz\" />', 'The Symptoms Of Adrenal Fatigue', 'Comprehensive Adrenal Fatigue Symptoms', 'Safe And Natural Solutions For Optimal Adrenal Support', 'What Our Customers Are Saying About Our Adrenal Fatigue Treatment Plan', 'Our Commitment To You', '', '', '', 'adrenal fatigue, adrenal pac', 'adrenal fatigue', 'Adrenal Fatigue | Adrenal Pac | The Strongest Adrenal Fatigue Treatment Available', 'If you suffer from adrenal fatigue whose symptoms are allergies, anxiety, depression and more you better take adrenal pac and start enjoying his maximum benefits.');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2597', '1', 'Serrapeptase  Enzymes', '<ul style=\"margin-left: 0px\">
    <li>Support Decreased Inflammation</li>
    <li>Help Improve Joint Mobility</li>
    <li>Healthy Digestion</li>
    <li>Assist With Sinus Issues</li>
    <li>Reduce That Mucous Feeling</li>
    <li>Support Healthy Circulation</li>
    <li>Relieve Overall Discomforts</li>
</ul>', '', '300', 'Serrapeptase Systemic Enzymes Provide A Whole Host Of Health Benefits', 'Systemic Enzymes At Their Best', '<div style=\"text-align: justify\"><b>Serrapeptase is a unique and powerful biologic systemic </b><b>enzyme</b> that was discovered in the intestines of the silkworm. Modern day nutritional science now isolates and harvests this protein-digesting enzyme in controlled laboratory conditions.<br />
&nbsp;<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot; Serrapeptase enzymes digest protein rich structures such as blood clots, cysts, arterial plaque and inflammation by-products &quot;</div>
Many illness-causing agents are protein rich structures, such as; blood clots, cysts, arterial plaque and inflammation by-products. <br />
<br />
Serrapeptase is the perfect systemic enzyme to help eliminate these health compromising biologic agents. Serrapeptase travels straight from the digestive system and into the bloodstream to perform the task of protecting your body from these erronous protein structures and inflammation. <br />
<br />
Systemic enzymes can help a huge variety of conditions in the most natural and effective way possible. <br />
<br />
The importance of the concept of systemic enzymes needs to be understood. Most of us are familiar with digestive enzymes that are localized to the digestive tract. In contrast, systemic enzymes are naturally available to your entire body as a whole. <br />
<br />
That means they are naturally designed to provide remarkable health benefits for your entire system. Properly cultivated systemic enzymes are a key componant of your arsenal for good health.</div>', '<b>World-wide clinical studies conclude that serrapeptase</b> systemic enzymes offer notable health benefits for the majority. Repeatedly, clinical studies demonstrate the powerful effects of serrapeptase supplementation:<br />
<ul>
    <li>Counteracts inflammation</li>
    <li>Helps reduce swelling</li>
    <li>Helps reduce whole body discomforts</li>
    <li>Assists with reducing fibrin blood levels (which lead to clogged arteries and strokes)</li>
    <li>Helps counteract the production of excess mucous</li>
    <li>Provides allergy relief</li>
</ul>
<br />
<b>* A major benefit of serrapeptase includes overall whole body pain relief due to its natural ability to stop the release of systemic chemicals called amines. These naturally produced amines are part of the cause and symptoms of pain. Serrapeptase is clinically proven to block the release of amines and help your body reduce the painful biological markers that cause physical discomfort. When the cause of inflammation is addressed, so is the percieved level of pain</b>', '<div style=\"text-align: justify\"><b>Physicians in Europe and Asia are starting to recognize the natural pain blocking effects of serrapeptase </b>systemic enzymes. Serrapeptase enzymes are being used as an alternative treatment to the more dangerous salicylates (aspirin), ibuprofen (Advil, Motrin) and NSAIDS (prescription pain medications). <br />
<br />
German researchers conducted a double blind study (the most effective way to scientifically determine the benefits of a substance) of surgery patients and postoperativeknee swelling. It was found that serrapeptase offers pain relief in as little as three days and total pain relief in as little as ten days.<br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Serrapeptase Research Serrapeptase Effective For: Post-Operative Knee Swelling Cystic Breast Disease, Ear, Nose and Throat Issues, Coronary Heart Disease&quot;</div>
<b>Serrapeptase has been successfully used in the treatment of cystic breast disease</b>. In another double-blind study, seventy patients with the condition were divided into a serrapeptase treatment group and those who were administered a placebo. Eighty-five percent of those patients in the serrapeptase group reported a significant reduction of both pain and swelling. A similar study examined one hundred forty patients with ear, nose and throat issues. After only six days of serrapeptase treatment, the majority of patients reported noticeable relief from the symptoms of discomforts such as; head throbbing, mucous secretion and scratchy throats. <br />
<br />
Early research conducted by Dr. Hans Nieper (Germany) indicates that introducing serrapeptase as part of your daily regime has a positive effect on helping reduce the accumulation of plaque in the arteries. Excessive plaque build-up, in the form of cholesterol, fibrin and cellular waste products leads to coronary heart disease and cardiac arrest.<b> While more research is required, the preliminary results have determined that serrapeptase provides positive benefits for cardiac health. </b>
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); margin-top: 10px; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Serrapeptase Stops My Cysts From Forming </b><br />
<br />
&quot;For whatever reason my body likes to make cysts that pop out of nowhere. I have quite the number of surgical scars from repeat removals. These are often quite painful for me as they are usually extremely inflammed, red and deep. I decided to give serrapeptase systemic enzymes a shot.<br />
<br />
Much to my delight a new cyst that was forming on my shoulder just disappeared and I have\'nt had one issue in the year I have been taking this fantastic product. It&rsquo;s hard to believe that something so simple could have such profound effects. Thanks for saving me the co-payments on all my medical expenses. Your product is well worth it&quot;<br />
<br />
<b>Thomas Wendworth </b></div>
</div>', '<b>A majority of diseases are aggravated or caused by underlying inflammation. Inflammation is the body\'s natural response to foreign invaders and faulty cells. It\'s when the immune system has become dysfunctional that the inflammatory response becomes dangerous. Taking Serrapeptase can help the body effectively deal with inflammation.</b>', '<div style=\"text-align: justify\"><b>The majority of diseases are aggravated or caused by underlying inflammation. Inflammation is the body\'s natural response to foreign invaders and faulty cells. <br />
<br />
It\'s when the immune system has become dysfunctional that the inflammatory response becomes dangerous. Taking Serrapeptase can help the body effectively deal with inflammation.</b> <b>Serrapeptase Inherent Biologic Benefits</b><br />
&nbsp;<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Serrapeptase Biologic Enzymes are compounded for maximum absorption and effectiveness&quot;</div>
<ul>
    <li>Natural&nbsp; safe and effective</li>
    <li>Compounded for maximum absorption</li>
    <li>Coated so it can get where it needs to be</li>
</ul>
<br />
Serrapeptase Biologic Enzymes, like all of our supplements, is a professional formula manufactured to the highest therapeutic specifications possible. Thousands have used our proprietary formula with great success. Many after discovering that other serrapeptase products simply don&rsquo;t work. <br />
<br />
<b>Start your serrapeptase supplementation with the product that works:</b>
<ul>
    <li>Serrapeptase Biologic Enzymes</li>
    <li>We Guarantee Results!</li>
</ul>
</div>', '<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><span style=\"font-weight: bold\">Relief From Vericose Veins</span><br />
<br />
&quot; I have a pretty good case of vericose veins in both my legs. Since taking your serrapeptase biologic enzymes I\'ve experienced a major improvement. This stuff really does help circulation.&quot;<br />
<br />
<b>Margaret M</b></div>
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Pounding Headache Gone</b><br />
<br />
&quot;I\'ve suffered my whole life with sinus problems and asthma. In just ten days of taking your serrapeptase systemic enzymes the world seems clearer. There\'s a notable difference and that pounding sinus headache is gone. Today was the first day I didn\'t need my inhaler in the morning. I\'m anxious to see what the next sixty- days brings if I feel this wonderful already.&quot;<br />
<br />
<b>Rachel Cruiz</b></div>
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b><br />
Arthitic Dog Has Spring in His Step</b><br />
<br />
&quot;I take serrapeptase as a preventative because I understand that controlling inflammation is one of the steps in staying disease free. I have no significant health troubles and I\'m determined to keep it this way. I do enjoy your products and ended up trying serrapeptase systemic enzymes on my arthritic dog.<br />
<br />
He is twelve years old and after only three weeks he has spring back in his step. He\'s also able to climb into his bed once again. I really think your products work as a dog cannot fake the results. Because of my dog, I will take serrapeptase forever&quot;<br />
<br />
<b>Brenda Carmichel</b></div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
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
                <li>Patented Delivery System</li>
                <li>System Enzymes That Work</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '<div style=\"text-align: center\">SUPPLEMENT FACTS<br />
Serving Size :2 Tablets<br />
Serving Per Container :60</div>
<br />
<table class=\"tablespecial\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">&nbsp;</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">Amount<br />
            Per Dose</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Serrapeptase (80,000 Units)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">80,000 IU</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">166%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Trace Minerals</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">100 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Msm (Methylsulfonylmethane)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">700 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\">* Daily Value (DV) not established</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\"><b>Other Ingredients : </b>Microcrystalline Cellulose, Magnesium Stearate, Hydroxypropylmethylcellulose,Enteric Coating</td>
        </tr>
    </tbody>
</table>', 'About Serrapeptase Systemic Enzymes', 'How Systemic Enzymes Function In The Body', 'Research On The Use Of Serrapeptase Systemic Enzymes Is Extensive', 'Serrapeptase  Enzymes Can Assist You With Your Health Challenges', 'Serrapeptase: All-Natural Systemic Enzymes For Guaranteed Success', 'What Our Customers Are Saying', 'Our Commitment To You', 'Ingredients', '', 'systemic-enzymes', 'Powerful Systemic Enzymes', 'Enjoy The Healthy Benefits Of Systemic Enzyme Therapy. The Best Products AT The Best Prices');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2598', '1', 'Synergystic Mega Greens Powder', '<ul>
    <li>Total Phytonutrient Protection</li>
    <li>Increased Energy</li>
    <li>Antioxidant Powerhouse</li>
    <li>Balance pH Levels</li>
    <li>Phytonutrients Rich</li>
    <li>Like A Salad Bar In A Jar</li>
    <li>Natural Nutrition For The Whole Family</li>
</ul>', '', '198', 'A Total Green Supplement Loaded With Over 75 Green Super Foods', 'A Whole Foods Green Supplement', '<p>For many Americans, busy schedules wreak havoc on any attempt for a healthy lifestyle. While most of us know about the importance of a diet rich in fruits and vegetables, sometimes this goal is just too difficult achieve. <br />
<br />
This is where Nutritional Health Science can help, with a Synergistic Whole Foods Mega Greens Matrix of over 75 green food ingredients. This is a total <b>green supplement</b> that can be enjoyed by the whole family.</p>', '<div style=\"text-align: justify\">
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Mega Green Supplement to ward off and aid in healing arthritis,cancer,diabetes,heart disease and osteoporosis&quot;</div>
Nutritional science has exploded the past couple decades and the connection between dietary habits and chronic illness (or lack thereof) has never been stronger. The American Cancer Society, The American Heart Association and The American Diabetes Association all strongly recommend a diet rich in natural green foods to ward off and aid in healing certain diseases such as arthritis, cancer, diabetes, heart disease and osteoporosis.<br />
&nbsp;</div>
<div style=\"padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Greens Help Faciliate Weight Loss </b><br />
<br />
&quot; Two scoops of Nutritional Health Science Mega Greens Supplement mixed with apple juice for lunch gives me plenty of energy for the day and has helped me loose 21 pounds. How&rsquo;s that for a testimony? <br />
<br />
The stuff really does help fill you up. I have looked far and wide for a green supplement full of green superfoods that don\'t taste like crap. Your healthy botanical formula is a step above the rest. A side note. Since I started taking your healthy products my cholesterol is now normal and the aches in my joints are gone. You have a customer for life&quot;<br />
<br />
<b>Troy Roberts</b></div>', '<div style=\"text-align: justify\"><b>Our synergistic perfect food greens formula is made of natural living green food ingredients giving you:</b><br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Mega Greens includes specialized ingredients that target each vital part of the body&quot;</div>
<ul>
    <li>Daily dose of greens</li>
    <li>Increased energy</li>
    <li>Immune system boost</li>
</ul>
<br />
<br />
Our Mega Greens formula includes concentrated broccoli, tomato, and spinach powders and specialized ingredients that target each vital system of your body. The effectiveness of these natural yet powerful ingredients have been proven over centuries, not to mention by modern day nutritional science in laboratories world wide.</div>', '<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Kids Love Our Greens </b><br />
<br />
&quot; For the life of me I can&rsquo;t get my kids to eat as they should. However, they sure like to drink their greens supplement for breakfast mixed in a glass of juice. It makes me feel better to know they are least getting something nutritious in their body. I like to toss your greens on my salads. The taste is excellent. Getting my daily dose of greens is both easy and delicious. Our family does feel the green supplement difference from your green superfoods formula.&quot;<br />
<br />
<b>Sadie M </b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Concentrated Green Superfoods Help With Lupus</b><br />
<br />
&quot; I have systemic lupus and I take quite the array of natural products to help me not rely so much on damaging prescription drugs. The folks at Nutritional Health Science are the top of the heap and I simply can\'t make it through the day without at least two servings of their comprehensive green superfood formula. I have been using this product for years and it\'s helped me immensely. I can certainly tell when I forget to take it.&quot;<br />
<br />
<b>Maureen Ansted </b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Nutritional Health Science Green Supplement Effective And Affordable </b><br />
<br />
&quot; I\'ve tried dozens of greens products throughout the years. I&rsquo;ve been so frustrated with the poor quality that I even tried making my own from ingredients at the health food store. Nothing stands up to the quality and affordability of the products provided by Nutritional Health Science. I can vouche that this is a a total green superfood and is important for the health of my entire family.&quot;<br />
<br />
<b>Daphne Jost</b></div>', '<div style=\"text-align: justify\">
<ul>
    <li><b>Vegetable Essence:</b> With vital green foods such as; zucchini, parsley, kale, spinach, cabbage and more.</li>
    <li><b>Super Greens:</b> Our super greens formulation includes organic barley grass, blue green algae and organic alfalfa.</li>
    <li><b>Healthy Circulation Formula:</b> Hawthorne berry extract, hawthorne leaf, hawthorne flower and ginkgo biloba are just a few of many in our proprietary custom blend which provides circulatory support.</li>
    <li><b>Healthy Digestion Matrix:</b> Papaya enzymes, lipase and lactase are some of the enzymes in our synergistic formula that can help ease digestive issues.</li>
    <li><b>Liver Health Blend:</b> Milk thistle, dandelion root and yucca helps provide support for a toxic and overworked liver.</li>
    <li><b>Powerful Antioxidant Sources:</b> Rose hips, grape seed extract and acerola cherry provide superior antioxidant support. Antioxidants neutralize naturally occurring free radical cells in the body that contribute to the disease process.</li>
    <li><b>Trace Minerals:</b> Minerals are required for every metobolic action and reaction in your body. Your heart doesn\'t beat without minerals and your muscles can\'t move without minerals. Unfortunately, if there aren\'t sufficient minerals in your daily diet, your body will simply take them from your bones. Hence, the skyrocketing rates of osteoporosis in the United States.</li>
</ul>
</div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>A Green Superfoods Formula Designed For You</li>
                <li>A Green Supplement That Tastes Delicious</li>
                <li>Greens To Be Enjoyed By The Whole Family</li>
                <li>Experience Improved Health And Vitality</li>
                <li>Easy To Mix With Juice Or Water</li>
                <li>Cellular Health And Repair With No Side Effects</li>
                <li>Totally Affordable And Highly Effective</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '<div style=\"text-align: center\">SUPPLEMENT FACTS<br />
Each Serving of powder Contains: 10.86 grams<br />
Serving Size:1 scoop Serving per Container: 30</div>
<br />
<table class=\"tablespecial\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">Serving Size:1 scoop (Tablespoon)<br />
            Serving Per Container: 30</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">Amount<br />
            Per Dose</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Total Fat</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">1 gr</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">2%%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Saturated Fat</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">0 gr</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Total Carbohydrates</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">4 gr</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">2%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Dietary Fiber</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">2 gr</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">8%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Sugars (naturally Ocurring)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">1 gr</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Protein</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">2 gr</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">4%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Vitamin A (100% as Natural Beta- Caratona)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">3400 IU</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">68%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Vitamin C</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">6mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">10%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Vitamin E (as Natural d-Alpha Tocopherol Acetate)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">18 IU</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">62%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Vitamin K</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">55 mcg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">68%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Niacin (Vitamin B3)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">2 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">10%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Calcium mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">20</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">2%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Iron<br />
            &nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">2 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">11%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Iodine</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">216 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">144%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Magnesium (56% as Amino Acid Chalate)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">32 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">8%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Zinc (100% as Amino Acid Chalate)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">3 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">20 %</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Manganase</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">1.07</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">54%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Sodium</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">20 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">1%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Potasium (33% as Amino Acid Chalate)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">174 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">5%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Vegetable Essence(Proprietary Formula--All Juices)<br />
            Zuccini,Carrot Root,Kale Leaf,Fennel Root,Spinach Leaf,<br />
            Collard Greens, Beet Root,ParsleyLeaf,Swiss Chard Leaf,<br />
            Cabbage Leaf,Broccoli Tops.<br />
            &nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">1191 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Super Greens (proprietary Formula) <br />
            Organic Barley Grass Juice,Spirulina,Organic Alfalfa Juice,<br />
            Chorella,Klamath Blue Green Algas.<br />
            &nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">1092 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Circulation (proprietary Formula) <br />
            lecithin,Hawthorne Barry Extract,,Hawthorne Flower,<br />
            Ginkgo Biloba Extract(24/6),Ginkgo Biloba Leaf.</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">564 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Enzymes (proprietary Formula) <br />
            Fermented Green Papaya,Plant Base Protease,Amylase,lipase,<br />
            Hemic ellulase,Lactose, Green Papaya Fruit.<br />
            Papain (50,000 FCC/Gram),Bromelain(2,000 GDU/Gram)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">236 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Liver (proprietary Formula) <br />
            Nettle Leaf,CelandineHerb,Angelica Root,Chinese Peony Root,<br />
            Jujuba Fruit Extract,Milk Thistle Seed Extract,Milk Thistle Seed,<br />
            Dandelion Root Extract,Dandelion Root,Dong Quai Root Extract,<br />
            Dong Quai Root,Yucca Plant.</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">482 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Antioxidants (proprietary Formula) <br />
            Green Tea Extract,Rosehips Extract,Rosehips,<br />
            Grape Seed Extract, Acerole Berry Extract,Bilberry Fruit Extract,<br />
            Bilberry Leaf,Royal Jelly.</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">310 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Chinese Traditionals (proprietary Formula) <br />
            Eleuthro Root, Schisandra Berry Extract,Astragalus Root,<br />
            Atractylus Root,Astragalus Root Extract,Atractylus Root Extract,<br />
            Eleuthro Root Extract,Licorice Root Extract,Fo Ti,Rhizome Extract,<br />
            Ginger,,Fo Ti Rhizome,Ginger Root Extract,Buplerum Root Extract,<br />
            Buplerum Root .</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">199 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Mushroom/Immunity (proprietary Formula) <br />
            Poria,Organic Corityceps Mycellis,Organic Maitake Mycellis,<br />
            Organic Reishi Mycellis,Organic Shitake Mycellis</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">175 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Probiotic Spectrum (proprietary Formula)<br />
            L.Acidophilus,S,Thermophilus,B.Bifidus.L Bulgaricus,<br />
            Lactospore</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">780 mil CFU</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Sea Trace Minerals (proprietary Formula) <br />
            Irish Moss, Red Dulse</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">46 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\">* Daily Value (DV) not established<br />
            Percent Daily Values Based on a 2,000-Calorie-Diet</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\"><b>Other Ingredients : </b>Enzymatically Hydrolyzed Rice,Stabilized Rice Brand,Calcium<br />
            Caseinata,Natural Plant Ravors,Apple Fiber,Apple Pectin,Stavia Leaf Extract.<br />
            <br />
            <b>Suggested Use:</b> As a Dietary supplement. adults mix 1 tablespoon with 8 oz.of water<br />
            or juice once per day,or as directed by a health care provider,if you are pregnat,lactating,<br />
            takin medication or have a medical condition,consult your health care provider before using this product.<br />
            <br />
            <b>Side Effects:</b> No adverse effects have been reported.<br />
            <br />
            *These statements have not been evaluated by the Food and Drug Administration,<br />
            this product is not intented to diagnose,treat,cure or prevent any disease.</td>
        </tr>
    </tbody>
</table>', 'Use Our Healthy Green Supplement To Augment A Busy Lifestyle', 'Green Superfoods Essential for Human Health and Wellness', 'The All-Natural Green Supplement For Guaranteed Success', 'What Our Customers Are Saying', 'A Few Of Our Healthy Green Supplement Ingredients', 'Our Commitment To You', '', '', 'Green Supplement |  Green Superfoods', 'green supplement', 'Off The Top Green Supplement', 'The Most Comprehensive Green Supplement Of Its Kind. Cold Processed To Keep Nutrients Intact.');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2599', '1', 'Aloe Immune Complex', '<ul>
    <li>Support Healthy Immune System Response</li>
    <li>Total Regeneration At The Cellular Level</li>
    <li>Increased Energy And Stamina</li>
    <li>Mitigate The Side Effects Of Chemotherapy</li>
    <li>Regulate Immune System Function</li>
    <li>Improve Sense Of Well Being</li>
    <li>Experience A New Lease On Life</li>
    <li>Boost Your Immune System</li>
</ul>', '', '359', 'Immune System Supplements Professionally Formulated To Boost Your Immune System', 'Boost Your Immune System With Powerful IASC Supplements', '<b>Aloe vera, an ancient medicinal plant, is a modern miracle.</b> However, not all aloe products are created equal. Because of the&nbsp; lack of control and regulation in the dietary supplement industry, watered down versions of aloe based <b>immune system</b> <b>boosters&nbsp;</b> are often produced. This is why at Nutritional Health Science we own, manage and direct our own laboratory and provide supperior products to <b>boost your immune system</b>.<br />
<br />
Our customers depend upon the strict standards and regulations we have for our<b> immune system boosters</b> and other products. A properly processed aloe formula is a powerful adjunct to nutritional and medicinal therapies and is especially effective for the support of many immune system issues to include weakened and auto immune systems. Our Aloe Immune proprietary blend&nbsp; can prove most effective.&nbsp; Aloe Immune Complex is an essential amongst natural immune system boosters. Our customers depend upon it.', '<div style=\"text-align: justify\">The IASC has strict standards by which they certify aloe vera products for human consumption, in food items and in products designed to <b>boost your immune system</b>. According to the IASC, many products claim to contain Aloe Vera, but that\'s often misleading. The IASC has a seal based certification program that\'s been in place since the mid-1980\'s.<br />
<br />
Their certification processes seek to identify products that have aloe in them as compared to those products that do not. The certification program is strict and consists of on -site inspections of manufacturing facilities and the analysis of raw materials and finished products. Don\'t settle for anything less when purchasing your<b> immune system boosters</b>.<br />
<br />
<b>We are proud to inform you that our aloe products meet the strict certification standards of the IASC.</b> <br />
&nbsp;</div>
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; letter-spacing: -0.05em; padding-right: 10px; font-family: \'Courier New\'; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Aloe Immune Complex Relieves Numerous Health Challenges </b><br />
<br />
&quot; I have multiple health issues, too numerous to mention. However, they are because of the abnormal state of my immune system. I have suffered with these issues since I was a child. I take plenty of vitamins and consume a decent diet. However, my efforts didn\'t seem to be helping as I had hoped they would and most advertised immune system boosters didn\'t work.<br />
<br />
When I started on your Aloe Immune Complex I could feel a difference almost immediately. At the end of thirty-days I purchased your entire Immune-PAC. This has to be the best thing I\'ve ever done in my life. Your immune system&nbsp; boosters are fantastic. I\'m telling you it\'s worth it to treat yourself well. If you don&rsquo;t, then who will?&quot;<br />
<br />
<b>Suzy A </b></div>', 'As far back as 4000 B. C. visual interpretations of aloe were found among ancient people. The Sumerians recorded the use of Aloe for medicinal and healing purposes on clay tablets in 200 B. C.<br />
<br />
The first detailed transcription of Aloe&rsquo;s medicinal uses as an<b> immune system booster</b> appeared was found in the Ebers Paprus around 1550 B. C. in Egypt. Additional ancient records exist by the Greeks, Romans, Arabs, and Asians. <br />
<br />
<b>Some of the recorded medicinal uses of Aloe include arthritis, gout, acne, dermatitis, headaches, high blood pressure, hair loss, Rheumatoid arthritis, ulcers, psoriasis and burns.</b><br />
<br />
In the 1930&rsquo;s, the efficacy of Aloe was clinically tested as a possible immune system supplement.<br />
<br />
Positive results were recorded in clinical radiation and thermal burn studies. These initial studies opened the door for the treatment of other skin conditions, pain control, wound healing and to overall assist the immune system as an effective immune system supplement.<br />
<br />
Studies on Aloe since the 1960&rsquo;s have been mainly designed with medical, dental, and veterinary applications. In humans, aloe was first tested for the treatment of stomach ulcers and chronic leg wounds.<br />
<br />
The antiviral activity of Aloe vera has proven to have a profound effect on immune system activity. When viral loads are increased, drugs and other therapies are thought to help, but often these types of treatments result in a toxic overload in your body and on your liver. Aloe vera can prove a helpful adjunct to these treatments and help boost a weak immune system.<br />
<br />
<b>To date, not only does clinical research validate the effectiveness of Aloe vera, but so does anecdotal evidence. <br />
<br />
Thousands of people worldwide use aloe as an effective immune system supplement for a variety of reasons and conditions. One can safely assert that aloe &quot;does it all.&quot;</b>', '<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; letter-spacing: -0.05em; padding-right: 10px; font-family: \'Courier New\'; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Overall Good Health With Aloe Immune Complex</b><br />
<br />
&quot; I\'ve read a couple really good science books on the health benefits of aloe vera. Because the science seemed so valid I decided to give aloe a try. I tried a couple aloe products but didn\'t find they were helpful at all. Then I learned about the certification of aloe. I\'ve been taking your certified Aloe Immune Complex for two months to boost my weak immune system and feel a notable difference. <br />
<br />
My energy levels are up, I\'m sleeping better at night and my stubborn adult acne is starting to clear. If things are this great on the outside, I can only imagine what good things are happening on the inside. Even though I\'ve recently found you, I sure look forward to a long and satisfied customer relationship with your company. You have excellent customer service and fantastic products that boost your immune system.&quot;<br />
<br />
<b>Betty S </b>&nbsp;</div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; letter-spacing: -0.05em; padding-right: 10px; font-family: \'Courier New\'; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Supports A Weak Immune System</b><br />
<br />
&quot;I have immune system issues and as of late, probably due to stress, I feel worse than usual. I decided to try and do things naturally verses suffering the side effects of my medications once again. Because my symptoms were so bad, I decided to use your entire Immune&ndash;PAC which includes the Optimal Cell Support, Medicinal Mushrooms and Aloe Immune Complex. <br />
<br />
I\'ve been taking it faithfully for six weeks and I\'m experiencing a notable difference. This is a fantastic boost your immune system program all the way around. In my opinion, you have the best immune system supplements on the market. I want to thank you for excellent products, fantastic customer service and a knowledgeable staff who cares.&quot;<br />
<br />
<b>Mark Janes</b> &nbsp;</div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; letter-spacing: -0.05em; padding-right: 10px; font-family: \'Courier New\'; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Feels 72 Years Young</b><br />
<br />
&quot;At the ripe young age of 72, I was diagnosed with immune system problems that made my joints swell with inflammation. This was shocking as I have nothing at all wrong with me and never thought I would suffer from a weak immune system. I\'m from the Philippines and brought the dietary habits of my country to this country. This means I don&rsquo;t eat junk food, consume lean meats and plenty of fruits and vegetables. <br />
<br />
As I said, there was absolutely nothing wrong with me until this. Because I come from a country that regularly uses natural therapies, I was wide open to finding immune system supplements that really worked to boost your immune system and didn\'t toxify my body as medications would. I grabbed a hold of your Aloe Immune product and have been taking triple doses. In just three short weeks there\'s a difference and I\'m certain to see future positive results. You\'re a good company.&quot;<br />
<br />
<b>Mark Janes</b> &nbsp;</div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All-Natural Ingredients</li>
                <li>Ultimate Immune System Support</li>
                <li>Results You Can Feel</li>
                <li>Better Sense Of Overall Well Being</li>
                <li>Increased Strength And Resistance</li>
                <li>Boost Your Immune System Naturally</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '', '<div style=\"text-align: center\">Supplement Facts<br />
Serving Size: 1 Scoop (5cc) (contains 3 grams)<br />
Servings Per Container: 30</div>
<br />
<table class=\"tablespecial\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">&nbsp;</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">Amount<br />
            Per Dose</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Proprietary Blend</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">3%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Aloe Vera Whole Leaf Pwd Extract<br />
            &nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Bamboo Fiber Powder</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\">* Daily Value (DV) not established</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\"><b>Other Ingredients : </b>Citrus Powder and Stevia Exract</td>
        </tr>
    </tbody>
</table>', 'Not All Aloe Products Are Created Equal', 'The International Aloe Science Council Has Strict Standards By Which To Boost Your Immune System', 'The Recorded Uses Of Aloe: A Superior Adjunct To Boost Your Immune System', 'What Our Customers Are Saying About Our Immune System Products', 'Our Commitment To You', '', '', '', 'Boost Your Immune System', 'Boost Your Immune System', 'Boost Your Immune System', 'Superior Immune System Support For all Types Of Immune System Difficulties. Boost Your Immune System With IASC Certified Supplements.');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2600', '1', 'RheumaStat', '<ul>
    <li>Support Overall Mobility</li>
    <li>Reduce Overall Discomforts</li>
    <li>Free Up Your Joints</li>
    <li>Support A Balanced Immune System</li>
    <li>Increase Functionality</li>
    <li>Get Back To Living Again</li>
    <li>Reduce Rheumatoid Arthritis Symptoms</li>
</ul>', '', '173', 'Reduce Rheumatoid Arthritis Symptoms Safely And Naturally', 'Natural Management for Rheumotoid Arthritis Symptoms', '<div style=\"text-align: justify\">Rheumatoid arthritis (RA) is an autoimmune disease that causes chronic inflammation of the joints. This is the major component of<b> rheumatoid arthritis symptoms</b>. RA can also attack the sensitive tissues that line joints and other organs in the body.<br />
<br />
Autoimmune disease arises when the body&rsquo;s immune system cells attack the body\'s own tissues and organs.<br />
<br />
While Rheumatoid arthritis is an ongoing condition, certain patients may occasionally experience long periods of remission. In the same breath, RA is progressive and eventually causes joint destruction and functional disability as a result of rheumatoid arthritis symptoms. .<br />
<br />
In many cases, rhematoid arthritis causes permanent damage of the supportive structures of joints. This means that the tendons, ligaments and muscles surrounding the joints have been destroyed. This leads to a permanent deformity of joints and in many cases renders the joint useless.<br />
<br />
Unfortunately, the causes of rheumatoid arthritis are unknown. However, it\'s thought that the condition may have strong genetic basis. RA is a disease that affects predominately females. Medical science isn\'t certain as to why men are affected at such small ratios as compared to women. It\'s suspected that female hormones may be a causative factor in some way.<br />
<br />
When rheumatoid arthritis&nbsp; is active symptoms can include:</div>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">
    <tbody>
        <tr>
            <td>
            <ul>
                <li>fatigue and loss of energy</li>
                <li>low-grade fever</li>
                <li>pain and stiffness</li>
                <li>inflammation of the lungs</li>
                <li>inflammation of the mouth</li>
            </ul>
            </td>
            <td width=\"25\">&nbsp;</td>
            <td>
            <ul>
                <li>lack of appetite</li>
                <li>aching joints</li>
                <li>joints are red, swollen &amp; tender</li>
                <li>weak bones</li>
                <li>low and raspy voice</li>
            </ul>
            </td>
        </tr>
    </tbody>
</table>', '<div style=\"text-align: justify\"><b>The American College Of Rheumatology has devised a system for classifying rheumatoid arthritis and it\'s symptoms in various stages of the disease:</b><br />
<b><br />
Stage 1</b>
<ul>
    <li>no damage seen on X-rays. However, bone thinning may be detected.</li>
</ul>
<br />
<b>Stage 2</b>
<ul>
    <li>bone thinning with slight joint damage</li>
    <li>slight muscle weakness</li>
    <li>&nbsp;slight cartilage damage</li>
    <li>limited joint mobility</li>
</ul>
<br />
<b>Stage 3</b>
<ul>
    <li>increased joint damage</li>
    <li>increased muscle deterioration</li>
    <li>joint deformity without permanent fixation</li>
    <li>abnormalities of the soft tissue around the joint</li>
</ul>
<br />
<b>Stage 4</b>
<ul>
    <li>severe bone damage and osteoporosis- joint deformity with permanent fixation (the joint is no longer functional)</li>
</ul>
<br />
<b>There is no known cure for RA. Treatment of Rheumatoid arthritis is managed via medications and steroid injections straight into affected joints. Unfortunately, none of the available treatments are significant enough to slow the progression of rheumatoid arthritis. Quite sobering is the fact that those with RA are at a higher risk of developing lymphoma, a cancer of the lymph nodes.</b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>RheumaStat Brings Relief </b><br />
<br />
&quot; I\'m always in some kind of discomfort due to my rhematoid arthritis symptoms. Mostly in my hands although my feet are affected too. After quite a bit of research, I realized how dangerous the medications could be on top of already having a serious medical condition. I\'ve been activley seeking a natural rheumatoid arthritis treatment.<br />
<br />
I\'m taking some medications but in very low doses since I started the RheumaStat. So far my results have been positive and I think your products are excellent. I\'m adding your entire Rheumatoid -PAC next month&quot;<br />
<br />
<b>Julia F </b></div>', '<div style=\"text-align: justify\">Two different classes of drugs are used to treat rheumatoid arthritis; fast acting first-line drugs and slow acting second-line drugs. First-line drugs such as aspirin and cortisone are used to assist with inflammation. Second line drugs such as methotrexate and plaqenil are used to promote disease remission, therefore, hopefully slowing joint destruction.<br />
<br />
<b>First-Line Drugs</b><br />
First-line drugs such as aspirin, ibuprofen and iodine are examples of &ldquo;Non Steroidal Anti-Inflammatory Drugs,&rdquo; otherwise referred to as NSAIDS. The most common side effects of this class of drugs include:<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Steroids Have Serious Side Effects As Do Immuno Supressive Drugs&quot;</div>
<ul>
    <li>abdominal pain</li>
    <li>ulcers</li>
    <li>bleeding in the digestive tract</li>
</ul>
<br />
Other first-line drugs are steroids, prescribed for their relatively quick action on inflammation, but whose long term use causes:
<ul>
    <li>osteoporosis</li>
    <li>thinning of the skin</li>
    <li>weight gain &amp; muscle wasting</li>
    <li>easy bruising</li>
    <li>cataracts</li>
    <li>damage to large joints (e.g. hips and shoulders)</li>
</ul>
<br />
<b>Second-Line Drugs:</b><br />
Second-line drugs are prescribed&nbsp; long-term rheumatoid arthritis symptoms, two of which are Plaqenil and Methotrexat. Side effects of Plaqenil include:<br />
<ul>
    <li>Cramps</li>
    <li>Acne</li>
    <li>Anemia</li>
    <li>Blurred Vision</li>
    <li>Muscle Weakness &amp; Wasting</li>
    <li>Heart Problems</li>
    <li>Hair Loss Nervousness</li>
    <li>Paralysis of Eye Muscles</li>
    <li>Liver Problems</li>
</ul>
<br />
Methotrexate is used to suppress the immune system in order to reduce the effects of the immune system attacking itself.&nbsp; thereby causing rheumatoid arthritis symptoms. The side effects of Methotrexat include:<br />
<ul>
    <li>Nausea</li>
    <li>Liver Disease (Irreversible)</li>
    <li>Severe Anemia</li>
    <li>Hair Loss</li>
    <li>Mouth Sores</li>
    <li>Toxicity To Bone Marrow and Kidneys</li>
    <li>Skin Rash &amp; Itching</li>
    <li>Stomach Pain</li>
    <li>Loss of Appetite Cancer, Bacterial, Viral, &amp; Fungal Infections</li>
</ul>
<br />
<b>Caution: Using a drug that suppresses the immune system leaves the immune system more susceptible to host of other diseases and conditions. Cancer, bacterial infections, viral infections and fungal infections are rampant where methotrexate is found.</b></div>', '<div style=\"text-align: justify\"><b>If suffering from rheumatoid arthritis and wanting relief, a healthy lifestyle is a must in order to help slow the progression of this disease.&nbsp; Natural Rheumatoid arthritis treatments and lifestyle changes can indeed be highly effective.</b><br />
<br />
<b>Foods</b><br />
Proper nutrition is necessary and will help protect bones, muscles and joints. All processed foods must be removed from your daily diet. That means no sugar, no refined white starches, no hydrogenated oils, and no fast foods. Concentrate on a diet of fresh fruits and vegetables, lean protein, nuts, legumes, beans&nbsp; and whole grains.<br />
<br />
<b>Healthy Fats</b><br />
Healthy fats should be consumed in the form of Omega-3 fatty acids and extra virgin olive oil. Healthy fats act as natural anti-inflammatory agents.<br />
<br />
<b>Exercise</b><br />
Gentle exercise is necessary to keep joints mobile.</div>', '<div style=\"text-align: justify\">Nutritional Health Science is on the cutting edge of nutritional science and provides professional formulas like RheumaStat that are therapeutic and clinically effective. RheumaStat is a proprietary blend of immune system balancing botanicals which clinical studies show:<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;RheumaStat Has NO Side Effects!&quot;</div>
<ul>
    <li>boost the immune system</li>
</ul>
<br />
<br />
RheumaStat provides immune system support and:
<ul>
    <li>offers natural support for swollen joints</li>
    <li>has no side effects</li>
    <li>helps reduce rheumatoid arthritis symptoms</li>
</ul>
<br />
It means a million bucks to the users of RheumaStat to experience the relief of discomfort, increased energy levels and lessening of side of effects that have been obtainable with our special blend of natural botanicals.<br />
<br />
We urge you to try RheumaStat today. We guarantee it. Reduce your <b>rhematoid arthritis symptoms</b> today.</div>', '<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Feeling Great</b><br />
<br />
&quot; I was diagnosed with Rheumatoid arthritis two years ago. I started going to a support group and was shocked to see the damage this disease can cause. For example, there was a gal who had four fingers that had stiffened permanently. The joints had literally locked. I certainly didn\'t want this to be me. <br />
<br />
I went to a wholistic doctor who changed my diet and geared me towards more natural&nbsp; treatments to reuce my rheumatoid arthritis symptoms. Off of all processed foods, no sugar and plenty of fresh fruits and vegetables was the recommendation. <br />
<br />
He also gave me your RheumaStat. I am doing much better after only 45 days on your product and now have purchased your entire Rheumatoid- Pac. I\'m feeling much better than before. What I\'m enjoying the most is my increased energy from my new natural Rheumatoid arthritis treatment protocol. I feel great.&quot;<br />
<br />
<b>Judy L</b> <br />
&nbsp;</div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Rheumatoid Arthritis Takes A Break</b><br />
<br />
&quot; Words can\'t express how the side effects of the prescriptions I have been taking seem much worse than the joint symptoms themselves. I ran across your website and thought I would give your RA package a try. After all, I had nothing to loose. <br />
<br />
About 3 months after taking your products, my rheumatoid arthritis went into remission. I\'m not certain if it was your products or something else, but I\'ve never felt this great before. I won&rsquo;t look a gift horse in the mouth and will continue to take your natural and health promoting products&quot;<br />
<br />
<b>Missie Grand</b> <br />
&nbsp;</div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><span style=\"font-weight: bold\">Almost Lost My Life</span><br />
<br />
&quot; Rheumatoid arthritis was destroying my life. I had to go to part time hours at work and can hardly afford my doctor visits because of my limited health insurance. It was a friend who showed me the way to more natural alternatives to help reduce my rheumatoid arthritis symptoms.<br />
<br />
I currently take double doses of RheumaStat and it sure seems to help. I\'m hoping to save the rest of my joints as I already have serious probems in my feet. I must do something as conventional therapy simply isn\'t working. On a side note, since I\'ve been taking this product I don&rsquo;t get the chest congestion and sniffles I normally do.&quot;<br />
<br />
<b>Barb K </b><br />
&nbsp;</div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All Natural Ingredients</li>
                <li>Results You Can Feel</li>
                <li>Products You Can Count On</li>
                <li>Zero Negative Side Effects</li>
                <li>Increased Vitality</li>
                <li>Relief From Rheumatoid Arthritis Symptoms</li>
                <li>Our Personal Guarantee</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '<div style=\"text-align: center\">SUPPLEMENT FACTS<br />
Serving Size :1 Scoop (6.5 cc) [contains 4 Grams]<br />
Serving Per Container :60</div>
<br />
<table class=\"tablespecial\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">&nbsp;</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">Amount<br />
            Per Dose</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Proprietary Blend</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">4 Grams</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Glutamine Powder</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Larex Powder</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\">* Daily Value (DV) not established</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\"><b>Other Ingredients : </b>None</td>
        </tr>
    </tbody>
</table>', 'The Causes Of Rheumatoid Arthritis Symptoms', 'Stages Of Rheumatoid Arthritis', 'The Side Effects Of Medications Used To Treat Rheumatoid Arthritis Symptoms', 'A Healthy Lifestyle Helps With Rheumatoid Arthritis Symptoms', 'RheumaStat: The All Natural Solution For Guaranteed Success', 'What Our Customers Are Saying', 'Our Commitment To You', '', '', 'rheumatoid arthritis symptoms', 'Rheumatoid Arthritis Symptoms', 'Highly Successful Non-Synthetic Therapy To Help Manage Rheumatoid Arthritis Symptoms');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2601', '1', 'ProstaKare', '<ul>
    <li>Support A Healthy Prostate</li>
    <li>Relief From Discomfort</li>
    <li>Support Comfortable Frequency</li>
    <li>Enjoy A Restful Sleep</li>
    <li>Eliminate Irregularity</li>
    <li>Restore Confidence</li>
    <li>Gain Control Of Your Life Again</li>
</ul>', '', '250', 'Stop The Miserable Symptoms Of An Enlarged Prostate With ProstaKare', 'Natural Support For Enlarged Prostate Symptoms', '<div style=\"text-align: justify\">Most men enjoy normal prostate gland function into their mid-to-late forties. Beyond this age, the prostate begins to enlarge, reffered to as an <b>enlarged prostate</b> and adversely affecting 90% of all males.&nbsp; This causes enlarged prostate symptoms. This data according to the Centers for Disease Control and Prevention (CDC).<br />
<br />
While an <b>enlarged prostate</b> conjures up fears of prostate disease such as cancer, statistics say that the majority suffering this condition are actually cancer free. This cancer-free condition is referred to as Benign Prostatic Hyperplasia (BPH), a fancy way of saying enlarged prostate.<br />
<br />
Enlargement of the prostate (BPH) is considered a normal part of the aging process. For some men, enlarged prostate symptoms are an annoyance while for others the symptoms can be profound and debilitating. Enlarged prostate gland symptoms may include the following. <br />
<ul>
    <li>Problems Urinating</li>
    <li>An Inability To Urinate At All</li>
    <li>Difficulty Controlling Flow</li>
    <li>Physical Stress</li>
    <li>Numerous Visits To The Restroom At Night</li>
    <li>Weak Urine Flow</li>
    <li>Pain Or Burning When Urinating</li>
    <li>Psychological Stress</li>
    <li>Sleep Deprivation</li>
    <li>Poor Erection</li>
    <li>Pain In The Lower Back, Upper Hips Or Thighs</li>
    <li>Urinary Tract Infections</li>
</ul>
</div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Avoided Side Effects Of Prescriptions </b><br />
<br />
&quot; I was only fifty two when my prostate went on the skids. I thought I was going to drop in my tracks from all the horrible effects I was experiencing. My life was absolutely miserable. I was too afraid to take the medications they offered as I watched the horrible side effects my brother-in-law had.<br />
<br />
I figured there had to a natural prostate remedy out there. I\'ve been taking your Prostate-Pac for three weeks and have never felt better. I finally have the good night sleep I deserve after almost two years of feeling deprived and cranky. It\'s hard to believe that something natural could be so effective without side effects and help my enlarged prostate.&quot;<br />
<br />
<b>Jason M </b></div>', '<div style=\"text-align: justify\">Prostate-specific antigen (PSA) is a protein produced by cells of the prostate gland. The PSA test measures the level of PSA in the blood. Normally, only small amounts of PSA are present in any given blood sample. However, any abnormality of the prostate disrupts the normal function of the gland therefore creating an opening for PSA to pass directly into the bloodstream which indicates the reason for continuous discomforts as a result of an <b>enlarged prostate</b>.<br />
<br />
Clinical studies have demonstrated the following benefits of PSA testing:<br />
<ul>
    <li>An elevated PSA is the best predictor of the presence of prostate cancer</li>
    <li>PSA testing detects prostate cancer 5-10 years earlier than a regular digital exam</li>
    <li>Most cancers detected with PSA testing are curable</li>
    <li>A regular PSA test eliminates the probability of advanced cancer</li>
</ul>
<br />
<br />
Clinical Studies have also identified drawbacks of PSA testing:<br />
<ul>
    <li>It&rsquo;s not clear whether or not PSA testing reduces death rates for prostate cancer</li>
    <li>Some of the cancers detected are slow growing and never become life threatening</li>
    <li>Most men with an elevated PSA and an enlarged prostate do not have prostate cancer</li>
    <li>Instead of cancer, an enlarged prostate is to blame for elevated PSA levels</li>
</ul>
<br />
<br />
Factors that affect your PSA levels:<br />
<ul>
    <li>An ejaculation 1-2 days before a PSA test will raise those levels.&nbsp; Digital exams and biopsies will raise PSA levels . Men taking 5-alpha-reductase-inhibitors will present with an abnormally low PSA</li>
</ul>
<br />
While not a perfect system by any means, the PSA test is still the best scientific indicator of prostate cancer. As mentioned before, most men with elevated PSA levels are simply suffering from an enlarged prostate.</div>', '<div style=\"text-align: justify\"><b>Flomax</b> <br />
Flomax is one of the more popular prescription medications used to treat the symptoms of an <b>enlarged prostate</b>. Flomax does\'nt shrink the prostate but relaxes the muscles around it.<br />
<br />
The side effects of flomax are many and include dizziness, back pain, chest pain and runny stools. If this weren&rsquo;t enough,; headaches, infections, sinus problems and drowsiness may occur. A lawsuit has been filed against the makers of Flomax. It appears that those taking this drug are at risk for serious eye complications after cataract surgery.<br />
<br />
<b>Proscar</b><br />
<br />
Proscar is another popular drug prescribed for the symptoms of enlarged prostates. One of the biggest complaints regarding the use of this drug is the loss of sexual desire and function.<br />
<br />
<b>Other Drug Side Effects</b><br />
<ul>
    <li>allergic reactions such as hives, rashes, swelling of the mouth or difficulty breathing</li>
    <li>breast enlargement, nipple discharge, and testicular pain</li>
</ul>
<br />
<br />
&nbsp;</div>', '<div style=\"text-align: justify\"><b>ProstaKare is a concentrated and standardized liquid extract specially engineered and formulated to support prostate health.</b><br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">Feel Results in Just a Few Days!</div>
ProstaKare comes in an easy to swallow soft gel caplet which is highly digestible and immediately bio-available. What this means to you:<br />
<br />
<ul>
    <li>start to feel positive results in just a few days</li>
    <li>results get even better with prolonged use</li>
</ul>
<br />
The natural compounds in ProstaKare are time tested and well researched. The proprietary formulation that is ProstaKare has been designed to ensure the optimum amount of bio-active compounds in each and every serving. Natural support for your prostate has never more effective or worry free.<br />
<br />
Join thousands of men that have gained control of their lives safely and naturally with ProstaKare</div>', '<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Outlook Much Better With Your Prostate-Pac </b><br />
<br />
&quot; My girlfriend purchased your Prostate-Pac after reading about all the side effects of the drugs used to treat enlarged prostate glands. I was somewhat skeptical as I am a &ldquo;go to the doctor&rdquo; kind of guy and never have really believed in natural therapies of any kind.<br />
<br />
Well, you people have made me a believer. I feel so much better than I did three months ago and it\'s directly because of your products. I will continue to use them faithfully.&quot;<br />
<br />
<b>Timmy W</b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Feels Younger</b><br />
<br />
&quot; I\'m 66 years young and your supplements make me feel even younger. It&rsquo;s finally nice to sleep through the night and not have to worry about the embarrassing symptoms anymore. Effective prostate remedies are hard to find. You are a great company.&quot;<br />
<br />
<b>Gunther Blalock </b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Finally Gets Much Needed Rest</b><br />
<br />
&quot; It was hard for me to admit that I had a problem with my male parts. I was unable to love and enjoy my wife. I was getting up at least five times per night to use the restroom. I was tired and life was generally miserable because of my enlarged prostate.<br />
<br />
I thought that maybe I would go crazy soon enough. The medication I was taking was actually making me feel worse. I had to do something. I decided to jump the gun and here I am. I feel fantastic, rested and in control. I do thank your company for all of your help&quot;<br />
<br />
<b>Jay K </b></div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All Natural Ingredients</li>
                <li>Results You Can Feel</li>
                <li>Overall Sense Of Well Being</li>
                <li>No Negative Side Effects</li>
                <li>A Product You Can Count On</li>
                <li>Our Personal Guarantee</li>
                <li>No More Enlarged Prostate Symptoms</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '<div style=\"text-align: center\">SUPPLEMENT FACTS<br />
Serving Size :2 Softgels<br />
Serving Per Container :60</div>
<br />
<table class=\"tablespecial\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">&nbsp;</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">Amount<br />
            Per Dose</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Zinc</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">16 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">100%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Proprietary Blend</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">890 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Saw Palmetto Berry Oil Ext</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Pumpkin Seed Oil</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Folic Acid</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Lycopene</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\">* Daily Value (DV) not established</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\"><b>Other Ingredients : </b>Corn Oil, Gelatin,Glycerin,Yellow Beeswax</td>
        </tr>
    </tbody>
</table>', 'Enlarged Prostate Symptoms', 'The PSA Test For An Enlarged Prostate', 'The Side Effects Associated With Medications To Treat An Enlarged Prostate', 'ProstaKare: The All-Natural Solution For Guaranteed Success', 'What Our Customers Are Saying', 'Our Commitment To You', '', '', '', 'enlarged prostate', 'Natural Enlarged Prostate Solutions', 'Having Enlarged Prostate Issues? Alleviate The Symptoms With our Natural Enlarged Prostate Treatment');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2602', '1', 'OsteoPlus - Osteopenia Supplement', '<ul>
    <li>Promote A Healthy Skeleton</li>
    <li>&nbsp;Natural Bone Nutrients</li>
    <li>Total Reminerilization</li>
    <li>Nourish Tired Old Bones</li>
    <li>Maximun Absorption</li>
    <li>Superior Osteopenia Support</li>
    <li>Minerals Your Body Can Use</li>
</ul>', '', '411', 'Ultimate Bone Health For Both Osteopenia And Osteoporosis', 'Overcome Osteopenia and Maintain Strong and Resilient Bones', '<div style=\"text-align: justify\"><b>Osteoporosis and Osteopenia affects bone tissue and is characterized by a decrease in the density (thickness) of bone. The result is weak and fragile bones. </b>Where bone tissue was once ossified and hard as a rock, it becomes abnormally porous and squeezable just like a sponge. Osteoporosis has no symptoms and many don\'t realize they have it until they fracture a bone. It\'s even possible to have minor fractures without any symptoms at all.<br />
<br />
Osteopenia is the first of the beginning stages of Osteoporosis, but with early intervention, can be effectivly treated in an effort to stop the diease process which leads to full blown osteoporosis.<br />
<br />
Fractures of the vertebra as examplified by full blown osteoprosis affect the bones located in your spinal column,. These fractures can cause an intense and radiating pain. Over the years, it\'s common for osteoporosis sufferers to endure repeated spinal fractures resulting in a loss of height and a pronounced curve in the back.<br />
<br />
Severe osteoporosis can make normal daily activities such as walking up or down stairs, stepping off a curb, or slipping in the bathroom quite dangerous.<br />
<br />
<b>The prognosis of surgical repair to osteoporotic bones is typically poor due to the compromised health of the bone tissue itself.</b> The bone tissue simply doesn\'t have the resources to heal itself. Osteoporosis fractures are responsible for considerable pain, loss of quality of life and disability.<br />
<br />
Sadly, a certain percentage of hip fracture patients will require long-term nursing home care where elderly patients frequently develop blood clots and/or pneumonia from prolonged bed rest or hospital derived bacterial infections. This is not a place you want to find yourself in.<b> Self care and prevention can offer you a much brighter outlook.<br />
<br />
While our bone health supplements are quite effective for those suffering from osteopenia, they just as effective for those suffering from osteoporosis. </b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><span style=\"font-weight: bold\">Takes Control Of Her Osteopenia</span><br />
<br />
&quot; I found out that I had osteopenia after just two years of taking steroids. Needless to say, I was pretty worried and reasonably upset. Why did my doctor not warn me against this significant side effect? At age 53 I sure didn\'t want to have bone fractures of any kind for any reason. Because of my health condition, I did rely on steroids for comfort.<br />
<br />
My research soon pointed me to diet, nutrition and exercise. I started power walking, totally changed my diet to a whole food diet free of processed junk, sugar and grease. I was taking straight calcium supplements for osteoopenia until I realized how worthless and potentially harmful they could be. I added your Osteo-Pac instead.<br />
<br />
I\'ve been following a healthy lifestyle and taking your bone health supplements for nine months. My last bone test showed a huge improvement. I\'ve also been able to eliminate my steroids by following a healthful regime. This is fantastic news for me and I plan on taking your excellent products for many years to come. They are definitely worth it and I\'m glad to throw away those worthless calcium tablets. I\'m living proof that osteopenia can be controlled and doesn\'t have to ruin your life&quot;<br />
<br />
<b>Krissy K </b></div>', '<div style=\"text-align: justify\"><b>To maintain a healthy skeleton, old bone tissue must be removed in order for new bone cells to be put in their proper place.</b> A cell called the osteoclast is responsible for clearing away old bone tissue.<br />
<br />
<b>The effects of biphosphonate drugs on bone density is merely an illusion. </b>The biphosphonate class of &quot;bone building&quot; drugs works by killing the osteoclast cell that\'s responsible for the removal of old bone tissue. The result? A skeleton that is made up of old and dead bone tissue. The use of biphosphonates produces a thick and rotten skeleton that passes a bone density test because of the build-up of old dead bone tissue.<b> A question. Would you support the structure of your house with layers of rotten siding? Case closed.</b><br />
<br />
<b>One of the more popular treatments for osteoporosis and late stage osteopenia is the drug Fosamax which has numerous dangerous side effects:</b><br />
<ul>
    <li>Nausea</li>
    <li>Abdominal Cramping</li>
    <li>Flatulence</li>
    <li>Runny Stools</li>
    <li>Ulcers In The Esophagus</li>
    <li>Skin Rashes</li>
    <li>Vision Problems</li>
    <li>Muscle Pain</li>
    <li>Nausea</li>
    <li>Jawbone Necrosis</li>
</ul>
<br />
<b>Jawbone necrosis is especially serious. &quot;Jawbone necrosis&quot; literally means &quot;death of the jawbone. &quot;</b>The bone tissue in the jawbone rots away as the direct result of the use of biphosphonates. There are approximately 10,000 cases of this serious side effect reported each year.<br />
<br />
Symptoms associated with rotting jawbones include severe pain, numbness, loose teeth, infections and the exposure of bone way below the gum line. In severe cases, there is joint collapse in the jaw. This means that the lower jaw separates from the upper jaw and they are no longer hinged together.<br />
<br />
<b>Jawbone necrosis isn\'t reversible.</b> As reported in the Journal of the American Medical Association (JAMA), oral surgeons are at a loss as to what to do about this problem. The bottom line; attempts at bone grafts to rebuild the jaw will not adhere to bone that is actively rotting. The services of a facial reconstructive surgeon may be required.<br />
<br />
<b>Because of the life altering and devastating side effects of Fosamax, lawsuits have been filed against Merk, the makers of this dangerous drug. <br />
<br />
This is hardly a trade off when osteopenia and osteoprosis are prevenatable and reversable with proper supplementation and lifestyle changes. </b></div>', '<div style=\"text-align: justify\"><b>Unfortunatly, many mistakenly believe that large doses of daily calcium tablets or calcium/magnesium tablets will protect them from further degridation from osteopenia and osteoporosis. </b>Nothing could be worse for your bones<b> </b>because calcium by itself in the form of calcium tablets&nbsp; cannot be absorbed and deposited into your bone tissue where it\'s needed. <br />
<br />
The latest clinical research confirms the fact that calcium supplements for osteopenia or combination calcium/magnesium do nothing for bone health. And, they can cause you more harm than good.<br />
<br />
Most sources of supplemental calcium are useless and should be avoided and include those that come from ground up rocks such as oxides, carbonates, lactates, Tums, oyster shell or coral calcium.<br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: left; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; margin-right: 10px; padding-top: 5px\">&quot;OsteoPlus Professionally Formulated in Nature&acute;s Perfect Balance Provides Maximun Support For Osteopenia&quot;</div>
Calcium is not meant to work alone and is absorbable only when it has the assistance of other nutrients such as Vitamin-D and Vitamin-K,&nbsp; magnesium, phosphorous, zinc, manganese and Silica. They&nbsp; all play a role in the absorption of calcium. Equally important is the natural balance between these nutrients. Too much or too little of one will cancel out the other. The majority of mineral supplements do nothng to prevent <b>osteopenia</b> from developing into osteoporosis. <br />
<br />
<b>Our bone-building product OsteoPlus is scientifically formulated to meet bone health requirements and offers highly absorbable forms of the synergistic nutrients required for maximum calcium uptake. OsteoPlus is the ultimate bone health formulation.</b><br />
<br />
Our naturally sourced mineral whole bone extracts are derived from the extremely bio-available mineral form referred to as microcrystalline hydroxyapatite (MCH).<br />
<br />
Research indicates that (MCH) can indeed reduce peripheral bone loss in women and provide maximum support for total bone nutrition. At Nutritional Health Science, only the best will do for our customers. Maintaining bone integrity into your senior years is vital for your overall health and well being. Bone health supplements should be considered into your senior years as an adjunct for both good health and a preventative measure in order to avoid <b>osteopenia</b> and subsequent osteoporosis as well.</div>', '<div style=\"text-align: justify\"><b>Factors that make OsteoPlus a superior osteopenia support supplement:</b><br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;OsteoPlus Specifically Formulated with Organic Ingredients for Optimal Bone Health&quot;</div>
<ul>
    <li>minerals the body recognizes</li>
    <li>vitamin D</li>
    <li>vitamin K</li>
    <li>we guarantee it!</li>
</ul>
<br />
OsteoPlus meets your bone health requirements and offers highly absorbable forms of the synergistic nutrients required for maximum calcium uptake. When diagnosed with <b>osteopenia</b>, an ounce of prevention is certainaly worth a pound of cure. You don\'t have to risk your bone health and consequently your risk of injury to lesser products.<br />
<br />
OsteoPlus is a component of our popular Osteo-PAC. The Osteo-PAC provides a total and comprehensive bone health plan for our customers affected by both osteopenia and osteoporosis alike. While OsteoPlus is a superior product by itself, the synergystic health benefits of the Osteo-Pac is a complete and total bone health regime.</div>', '<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>OsteoPlus Helps With Bone Integrity </b><br />
<br />
&quot;I\'m not taking chances with my health. I exercise, eat right and take your Osteo-Pac. At 69 years I\'m doing great because I\'m proactive. Both of my sisters have severe osteoporosis and are not doing well at all. I refuse to end up in a nursing home and have reversed my osteopenia with your help.<br />
<br />
My bone density test has showed no decline in the two years I have been taking your products. How\'s that for a lady 69 years young! It was my grandson who is studying to be a radiologist that directed me to your company. I feel fantastic, have no problems and am more than happy with the quality products you have offer.&quot;<br />
<br />
<b>Annie Graham </b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Takes Charge Of Her Bone Health </b><br />
<br />
&quot;I\'ve been on steroids long term. The sad part is nobody told me that long term steroid use stops your body from being able to absorb calcium. Guess what, I am in the begining stages of Osteopenia. <br />
<br />
At age fifty-eight, I really don&rsquo;t need more problems. My bone density test showed a decline last time. However, a good friend who takes your products said I need your bone building supplements for my osteopenia. I had to agree as I don&rsquo;t want to go down with a broken hip and calcium tablets seemed to be worthless from everything I\'ve read.<br />
<br />
So far so good. No side effects and no problems. The natural bone health program you offer is fantastic and makes sense. I can tell you that I feel better overall and even have a sensation of being stronger. I will continue with your products as my friend has had remarkable results with them.&quot;<br />
<br />
<b>Nancy K </b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Keeping Bones Healthy</b><br />
<br />
&quot; Brittle bones run in my family. My mother died at the young age of 67 after she broke her hip and wrist and had to go in for surgery. She contracted pneumonia while trying to heal from her surgery. She was so weak and the infection so strong that she soon passed away. It\'s saddening to think that all of this could have been preventable if someone had told her how to take care of herself when she first found out that she had osteopenia. Instead, she ended up wih full blown osteoporosis and all the complications there after. <br />
<br />
I\'ve been taking either calcium tablets or calcium/magnesium tablets for many years. in an effort to ward away osteopenia and osteoprosis. After finding out how harmful they can be, I started your OsteoPlus four years ago. My last bone density test was normal and they said that at age 71, I have the skeleton of a much younger woman. OsteoPlus is my main stay and with me for life&quot;<br />
<br />
<b>Margy Howard </b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>OsteoPlus Helps Erase Side Effects </b><br />
<br />
&quot; I\'ve had osteoporosis for six years that I know of. I\'ve been taking the calcium supplements for the past 5 years that my doctor gave me. He also told me to drink five glasses of milk each day. <br />
<br />
So far, none of this has worked as I keep getting worse. I started with your supplements and twelve months later I showed an improvement. I\'m not sure how things will go over time but I plan on taking your supplements in order to at least hopefully stop any further decline.<br />
<br />
Words can\'t express how hard the side effects of Fosamax were for me. I feel lucky that I stopped taking it when I did. The news about this drug isn\'t good. I wish I had all of this good information when I first found out I had osteopenia ten years ago. I believe &quot;<br />
<br />
<b>Nancy M </b></div>', '<table width=\"727\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">
    <tbody>
        <tr>
            <td height=\"178\" colspan=\"2\" style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>Cutting Edge Organic Ingredients</li>
                <li>A Product That Delivers</li>
                <li>Unparalleled Bio-Availability</li>
                <li>Regeneration At The Cellular Level</li>
                <li>The Ultimate Osteopenia Formula</li>
                <li>Zero Negative Side Effects</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img src=\"images/logo45.jpg\" alt=\"\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '<br type=\"_moz\" />', '<div style=\"text-align: center\">SUPPLEMENT FACTS<br />
Serving Size : 4<br />
Serving Per Container :60</div>
<br />
<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\" class=\"tablespecial\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">&nbsp;</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial_header\">Amount<br />
            Per Dose</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial_header\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Vitamin D</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">2000 IU</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">500%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Vitamin K</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">40 mcg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">50%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Calcium<br />
            (from microcrystaline calcium hydroxyapatite)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">500%</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">50%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Phosphorus<br />
            (from microcrystaline calcium hydroxyapatite)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">222 mg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">22%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Magnesium (as buffered amino acid chelate)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">250 mg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">63%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Zinc (as buffered amino acid chelate)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">2.4 mg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">16%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Manganase (as buffered amino acid chelate)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">3 mg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">150 %<br />
            &nbsp;</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Silica (as buffered amino acid chelate)</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">400 mg</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">*</td>
        </tr>
        <tr>
            <td colspan=\"3\" class=\"tdspecial\">* Daily Value (DV) not established</td>
        </tr>
        <tr>
            <td colspan=\"3\" class=\"tdspecial\"><b>Other Ingredients : </b>Vegetables Cellulose, Rice Flour and Vegetable,Magnesium Stearate</td>
        </tr>
    </tbody>
</table>', 'How Osteoporosis And Osteopenia Affects You', 'Osteoporosis Medication Side Effects', 'The Real Answer For Osteopenia and Osteoporosis', 'OsteoPlus: The All Natural Solution For Guaranteed Success', 'What Our Customers Are Saying', 'Our Commitment To You', '', '', 'Osteopenia, Osteopenia supplements', 'osteopenia', 'Osteopenia | Osteopenia supplements', 'Improve your health and life quality by using Osteoplus-osteopenia supplement, a cutting-edge product created to overcome osteopenia and keep resilient bones.');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2603', '1', 'Optimal Cell Support', '<ul>
    <li>Alleviate The Side Effects Of Chemotherapy</li>
    <li>Support Natural Immunity</li>
    <li>Reduce Adverse Symptoms</li>
    <li>Increase Sense of Well being</li>
    <li>Balance Immune System Function</li>
    <li>Build Healthy Immune System Cells</li>
    <li>Enjoy Increased Vitality</li>
    <li>Ultimate Immune System Support</li>
</ul>', '', '196', 'The New Science of Glycobiology Helps Your Immune System', 'Improve Your Immune System', '<div style=\"text-align: justify\">Biology classes and medical schools used to teach that cellular communication took place via proteins embedded on the cell surface of your body&rsquo;s cells. Science now knows that cellular communication takes place via glycoprotein&rsquo;s, not just via proteins by themselves. The term &ldquo;Glyco&rdquo; means &ldquo;sweet&rdquo; and refers to a class of special saccharides that bind with proteins in order to facilitate cellular communication. Therefor, boosting your immune system and all other biological functions of your body.<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Optimal Cell Support Helps the Cells Of the Immune System to Communicate&quot;</div>
<b><br />
Cellular communication is important because the cells of the body don&rsquo;t work independently from one another; </b>they must work together in order to achieve optimal health. If your immune system cells are not able to communicate, they cannot function properly. This in turn results in unwanted symptoms for you.<br />
<br />
Based on this research, the new science of glycobiology has emerged. Arabinogalactin provides the raw natural ingredients by which immune system cells are able to communicate and function properly. It\'s the main ingredient in Optimal Cell Support.<br />
<br />
Prestigious universities such as Purdue University, University of Georgia, and the University of Miami all have substantial glycobiology departments. Current and ongoing research is yielding exciting new breakthroughs in nutritional science daily.<br />
<br />
Our customers can depend upon Nutritional Health Science to keep them ahead of the curve. Additionally, our immune system boosting product known as Optimal Cell Support provides the key components required for optimal cellular communication and cellular health. Optimal Cell Support never fails to deliver.</div>', '<div style=\"text-align: justify\">Dr. Gregory S Kelly N. D. performed one of the first scientific studies on the effects of arabinogalactin on immune system function. His research revealed that the specialized nutriceutical known as arabinogalactin had positive effects on increasing good intestinal flora, which is an important part of digestive health which in turn plays a key role in helping you boost your immune system. It\'s often and wisely said, immunity begins in the gut.<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot; Optimal Cell Support can stimulate the natural Killer cells of the immune system&quot;</div>
<b>According to Dr. Kelly, arabinogalactin is an ideal adjunctive immune system supplement</b> that should be strongly considered to provide immune system support during cancer treatment protocols. Experimental studies have indicated that arabinogalactin can stimulate the Natural Killer Cells of the immune system.<br />
<br />
His work suggests that the immune-enhancing properties of arabinogalactin may boast a wide array of clinical uses in both preventative medicine because of it\'s ability to stimulate a more responsive immune system, as well as in clinical medicine as a therapeutic agent in conditions associated with decreased immune system function.<br />
<br />
Nutritional Health Science proprietary arabinogalactin formula provides optimal support to help you boost your immune system. Carefully formulated in controlled laboratory conditions means that you are getting a one of a kind formula that can help maintain the strength of your natural defenses. <br />
<br />
The addition of pharmaceutical grade glutamine helps you boost your immune system even further. It gives your immune system the raw organic ingredients it requires to maintain strength and regularity.<br />
<br />
Glutamine is a conditionally essential amino acid. Under normal conditions, the body can make glutamine; however, when conditions are less than ideal and in cases of high stress situations such as, prescription medications, interferon treatments, chemotherapy, radiation, and frequent infections, the ability to manufacture glutamine is all but diminished. Supplemental glutamine can help support and boost your immune system.<br />
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Helped Me Survive Chemotherapy</b><br />
<br />
&quot;I was diagnosed with liver issues a few years back. The standard treatment was interferon, a type of chemotherapy. There are no words to describe how hard this treatment is on your whole body. I was sick to my stomach through it all and wondered if the treatment would kill me versus the illness itself.<br />
<br />
I started my own research as I desired a better quality existance. I found that changing my diet and taking certain supplements might reverse the hell I was going through. I tossed out all processed foods and added plenty of fresh fruits and vegetables.<br />
<br />
I added the Optimal Cell Support as a way to boost my immune system and a few of your other products as well. I\'m happy to report that my health is better than it\'s been in a long time and I feel fantastic. Your products have done wonders for me and the state of my health. Needless to say, I feel more rested and much less worried.&quot;<br />
<br />
<b>Robert Megs </b></div>
</div>', '<ul>
    <li>Rheumatoid Arthritis</li>
    <li>Cancer</li>
    <li>Allergies</li>
    <li>Childhood Earaches</li>
    <li>Frequent Colds/Flu</li>
    <li>Systemic Lupus</li>
    <li>Type 1 Diabetes</li>
    <li>Irritable Bowel Syndrome</li>
    <li>HIV/AIDS</li>
    <li>Hepatitis-C</li>
    <li>ADD/ADHD</li>
    <li>Type 2 Diabetes</li>
    <li>Bacterial Infections</li>
    <li>Viral Infections</li>
    <li>Candida</li>
</ul>', '<div style=\"text-align: justify\"><b>All-natural Optimal Cell Support:</b><br />
<ul>
    <li>boosts your immune system</li>
</ul>
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot; Optimal Cell Support Helps Modulate The Immune System&quot;</div>
<b>Optimal Cell Support can help offset the effects of:</b><br />
<ul>
    <li>stress</li>
    <li>prescription medications</li>
    <li>interferon treatments</li>
    <li>chemotherapy</li>
    <li>radiation</li>
    <li>frequent infections</li>
</ul>
<b>Optimal Cell Support helps manage:</b><br />
<ul>
    <li>arthritis</li>
    <li>autoimmune disease</li>
    <li>muscle wasting</li>
    <li>digestive issues</li>
    <li>fibrosis</li>
    <li>peptic ulcers</li>
    <li>connective tissue disease</li>
    <li>bacterial infections</li>
</ul>
</div>', '<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Optimal Cell Support Delivers</b><br />
<br />
&quot; I suffer from chronic acne and cysts. When these conditions arise it\'s difficult to explain how painful they are. Especially the cysts. I also have allergies that are out the window.<br />
<br />
Your Optimal Cell Support has been a lifesaver for me. My allergy symptoms have been greatly reduced and my skin much clearer in just three short months. I have a couple cysts that at this point seem to be shrinking on their own.<br />
<br />
All in all I feel better than I\'ve felt in quite awhile. I\'ll continue with your products and plan to purchase your entire Immune System Health PAC. Thank-you for being a company that delivers and cares about its customers.&quot;<br />
<br />
<b>Sally K </b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Double Doses Got Me Through My Treatment</b><br />
<br />
&quot;I was diagnosed with breast cancer and was scared to death. While the cancer was bad enough, I knew the chemotherapy was going to kill me. I had seen this time and again. My aunt ended up losing all her hair, was 25 pounds underweight, had bleeding gums, loose teeth and kept getting the flu.<br />
<br />
It was the aggressive chemotherapy meant to save her life that became her demise. With an open mind, I knew that there were natural solutions that could help me along my healing path. I found your Optimal Cell Support immune system building product and took double doses through all of my treatment. I came out smelling like a rose.<br />
<br />
Because I\'m concerned about my future health, I\'ve decided to use your entire Immune System Support-Pac. With this kind of nutritional immune system support, I\'m confident that I have a chance at a long and healthy life.&quot;<br />
<br />
<b>Jamie S </b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Optimal Cell Support for the Kids</b><br />
<br />
&quot; I\'m a sickly person. It&rsquo;s been that way since I was a child. If it&rsquo;s not a cold it&rdquo;s the flu or bronchitis. Not to mention numerous allergies and chronic sinus infections to boot. I went all the way and purchased your entire Immune System&ndash;Pac. What a difference two months makes. I feel like a brand new person. I will recommend your products to everyone I know. Plus, I\'m now ordering extra to give to my kids.&quot;<br />
<br />
<b>Annie Pickens </b></div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All-Natural Ingredients</li>
                <li>Zero Negative Side Effects</li>
                <li>One Of Kind Formula</li>
                <li>Results You Can Feel</li>
                <li>Better Health And Well being</li>
                <li>Our Personal Guarantee</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '<div style=\"text-align: center\">SUPPLEMENT FACTS<br />
Serving Size :1 Scoop (6.5cc) [contains 4 grams]<br />
Serving Per Container :60</div>
<br />
<table class=\"tablespecial\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">&nbsp;</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">Amount<br />
            Per Dose</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Proprietary Blend</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">4 Grams</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Glutamine Powder</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Larex Powder</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\">* Daily Value (DV) not established</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\"><b>Other Ingredients : </b>None</td>
        </tr>
    </tbody>
</table>', 'Polysaccharides Explained', 'The Science Behind The Product', 'Condistions Associated With Immune System Dysfunction', 'Optimal Cell Support: The All-Natural Solution for Guaranteed Success', 'What Our Customers Are Saying', 'Our Commitment To You', '', '', '', 'your immune system', 'Your Immune System', 'Treat Your Immune System Issues With Exciting And Effective Polysaccharides. The Latest Nutritional Technology For  Healthy Immune System Function');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2604', '1', 'Olive Leaf Extract', '<ul style=\"margin-left: 0px\">
    <li>Natural Immune System Balance</li>
    <li>Natural Anti-Pathogen</li>
    <li>Natural Anti-Fungal</li>
    <li>Purified Extra Strength</li>
    <li>Support Healthy Circulation</li>
    <li>Standardized For Potentcy</li>
    <li>Overall Health And Well Being</li>
</ul>', '', '237', 'Olive Leaf Extract Benefits: Anti-Fungal. Anti-Bacterial. Anti-Microbial. Try Today', 'The Ultimate Olive Leaf Extract Formula', '<div style=\"text-align: justify\">Modern Nutritional Science continues to study plants in search of those that provide benefits for human health and wellness. Olive leaves and <b>olive leaf extract </b>are one of these plants.<br />
<br />
The ancient Egyptians may have been the first to put the olive leaf to work. Regarding the olive leaf as a symbol of heavenly power, they extracted the oil and used it to mummify their kings. It\'s reported that the juice from boiled olive leaves was used to bring down fevers.<br />
<br />
The first formal medicinal application of the olive leaf was reported in 1854 as published in the Pharmaceutical Journal during a time when malaria was prevalent.<br />
<br />
The juice of boiled olive leaves lessened the severe symptoms of this infection.<br />
<br />
<b>The olive leaf is mentioned frequently in ancient history, mythology&nbsp; and the Bible</b>; not to mention during the early settlement of the United States. The olive leaf and it\'s numerous natural compounds are routinely used by modern Mediterranean cultures as a potent medicinal with olive leaf extract benefits widely recognized by this culture. yestrday\'s &quot;medicine&quot; still stands as todays natural cure.</div>', '<div style=\"text-align: justify\"><b>Ancient times have passed us by and modern nutritional science has taken over. Science has identified the key components in the olive leaf and olive leaf extract&nbsp; that are responsible for it\'s healing properties.</b><br />
<br />
Additionally, because modern nutritional science is able to extract these plant based natural chemicals without denaturing them, one dosage is equal to the ingestion of three hundred olive leaves. <br />
<br />
<div style=\"padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">Olive Leaf Extract
<ul>
    <li>anti-Viral</li>
    <li>anti-fungal</li>
    <li>anti-bacterial</li>
    <li>anti-parasitic</li>
</ul>
</div>
Olive leaf extract benefits are numerous; they contain a series of phytochemicals called secoiridoids. Of these many plant based beneficial compounds, the most important is referred to as oleuropein.<br />
<br />
Numerous scientific studies have shown that oleuropein is responsible for the mega health benefits of this potent and healing plant, which is a proven immune system enhancer.<br />
<br />
Most of the study on <b>olive leaf extract</b> has occurred in Europe as the United States is predominately a prescription drug-based country.<br />
<br />
European research has revealed that olive leaf extract has proven beneficial against certain bacteria by dissolving their outer walls in much the same way as antibiotics do.<br />
<br />
<b>The giant pharmaceutical company UpJohn found olive leaf extract benefits both numerous and viable against viruses, bacteria and parasitic protozoas.</b> <br />
<br />
Their research revealed that it enhanced the phagocyte activity of human immune system cells.<br />
<br />
This means the cells of the immune system engulfs the bad guys and does away with them.<br />
<br />
Research in the 60&rsquo;s indicated that supplementation with olive leaf extract helps increase circulation therefore promoting heart and brain function. Dr. Lisa Weinrib noted that patients with chronic fatigue syndrome improved immensely with the addition of olive leaf extract to their daily regime.<br />
<br />
<b>Finally, olive leaf extract is an important part of the arsenal for the treatment of candida. Olive leaf extract is a proven and potent anti-fungal and is renowned for helping eradicate both localized and systemic fungal infections.</b><br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); margin-top: 10px; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Olive Leaf Extract Even Helps The Guys </b><br />
<br />
&quot;I\'m taking your olive leaf extract because of the frequent itching I was experiencing in my most private area. Yup, guys get it too. The anti-fungals I was taking (for the third time in a row) weren\'t working and ended up tearing apart my stomach. <br />
<br />
I took mega doses for two weeks then cut back to half of what I was taking. I\'m feeling a whole lot better and the discomfort is gone. The wonderful side effect, if you will, is that my high blood pressure has regulated since I started taking your product. Olive extract benefits are certainly worth it.&quot;<br />
<br />
<b>James K </b></div>
</div>', '<div style=\"text-align: justify\"><b>It\'s important to understand that not all olive leaf extract supplements are the same.</b> For a nutritional health supplement to be effective, it must be standardized. Standardization guarantees the potency and amount of active ingredients from batch to batch. In the case of olive leaf extract, we are concerned about the amount of active oleuropein in each dose.<br />
<br />
<b>NO SHORT CUTS!</b><br />
<br />
Our strict laboratory procedures insure that our customers get the maximum dose of <b>olive leaf extract </b>with each serving. Beware of olive leaf supplements that advertise calcium elenolate as their active ingredient. This is a cheap short cut that some manufacturers employ in order to increase profits. The result is a product that is essentially worthless. Our customers are much too important to us to engage in such practice.<br />
<br />
At Nutritional Health Science we own our laboratory and manufacture our own products in order to assure the highest levels of quality. Because of this, our customers can depend upon a potent and effective olive leaf extract supplement. <br />
<br />
<b>Olive Leaf Extract can assist you if you have a:</b><br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 200px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot; Potent, Natural, Safe Effectve, Extra Strength, Purity, Viability And A Product That Is Guaranteed.&quot;</div>
<ul>
    <li>virus</li>
    <li>bacteria</li>
    <li>fungus</li>
    <li>parasite</li>
</ul>
<br />
<br />
<b>You can rely on us! And our super strength olive leaf extract formula.</b></div>', '<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); margin-top: 10px; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Balanced Digestive System </b><br />
<br />
&quot; I&rsquo;m really susceptible to intestinal yeast infections and have a sensitive digestive system. This situation leaves me bloated, constipated, tired, crabby and somewhat sleepless. I\'ve tried many products over the years but to no avail. While some gave me short-term relief, it didn\'t last for the long term. <br />
<br />
I decided to purchase your entire candida protocol to see what might happen. I sure do appreciate your money back guarantee. However, I don\'t need my money back as I feel better than what I have for a long time. The addition of your excellent products including your olive leaf extract has made a huge difference and your products are just wonderful for me. &quot;<br />
<br />
<b>Marcia Bowlings </b></div>
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); margin-top: 10px; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Energized By Olive Leaf Extract </b><br />
<br />
&quot; I take a lot of supplements in an effort to guard my health and stay well. I really don&rsquo;t have any major problems going on and this is probably why. <br />
<br />
However, I decided to add your olive leaf extract and a couple of your other products to my routine. What I can say is I feel much more energized and I don&rsquo;t fall out in the middle of the day anymore. I plan to keep using your products in my efforts to protect my health. I have every confidence that your products will do just that.<br />
<br />
After all, an ounce of prevention is certainly worth a pound of cure.&quot;<br />
<br />
<b>Missy Hansen </b></div>
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); margin-top: 10px; padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Olive Leaf Extract Really Works </b><br />
<br />
&quot; I started taking your olive leaf extract as part of your candida package. It only took six weeks for me to feel totally healthy. This is so much better than other products I have tried. <br />
<br />
I seem to get candida upsets every once or so often and have such a hard time getting rid of it. I have continued on with your olive leaf extract. I take it daily in order to protect me that much further. So far so good. Things seem to be working out just fine. A side note. The circulation in my feet seems to be much better. Just like you say. &quot;<br />
<br />
<b>Betty Shuster </b></div>
<div>&nbsp;</div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>Professional Standardized Formula</li>
                <li>Amazing Olive Leaf Extract Benefits</li>
                <li>Strengthen Your Immune System</li>
                <li>Improve Your Well Being</li>
                <li>Eradicate Yeast</li>
                <li>All Natural Ingredients</li>
                <li>Results You Can Count On</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '', '<div style=\"text-align: center\">SUPPLEMENT FACTS<br />
Serving Size :2 Capsules<br />
Serving Per Container :60</div>
<br />
<table class=\"tablespecial\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">&nbsp;</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">Amount<br />
            Per Dose</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Olive Leaf Extract</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">900 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Oleuropein (20%)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">180 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\">* Daily Value (DV) not established</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\"><b>Other Ingredients : </b>Gelatin and Magnesium stearate</td>
        </tr>
    </tbody>
</table>
<div>&nbsp;</div>', 'About Olive Leaf Extract', 'The Active Components of Olive Leaf Extract', 'Olive Leaf Extract: The All-Natural Solution for Guaranteed Success', 'What Our Customers Are Saying About Our Olive Leaf Extract Formula', 'Our Commitment To You', '', '', '', 'Olive Leaf Extract', 'olive leaf extract', 'The Best Olive Leaf Extract On The Market', 'Extra Strength Olive Leaf Extract Rich In Natural And Active Ingredients');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2606', '1', 'Omega - 3 Fatty Acids', '<ul>
    <li>Support Normal Brain Function</li>
    <li>Strengthen Your Body\'s Cells</li>
    <li>Support Cardiovascular Health</li>
    <li>Improve Joint Health</li>
    <li>Healthy Skin, Hair and Nails</li>
    <li>Enjoy Healthy Cholesterol</li>
    <li>Reduce Aches And Discomforts</li>
</ul>', '', '207', 'Certified Toxin Free Pure Fish Oil Capsules For Optimal Health', 'Phamaceutical Grade Fish Oil Capsules', '<div style=\"text-align: justify\">Omega-3 Fatty Acids play a crucial role in brain function and early childhood development.<br />
<br />
Omega-3 Fatty Acids, as pure fish oil capsules are highly concentrated in the brain and important for cognitive function in both children and adults. <b>Symptoms of Omega-3 Fatty Acid deficiency include; fatigue, poor memory, dry skin, mood swings, heart problems, poor circulation&nbsp; and depression.</b><br />
<br />
There are hundreds of professional research documents world-wide that show that pure fish oil is an essential part of a healthy diet. These research documents not only share the preventative and health protective properties of daily doses of fish oil&nbsp; but the disease reversing benefits for many as well. The consumption of&nbsp; fish oil is certainly one of the more proactive measures that can be taken to protect your health.</div>', '<div style=\"text-align: justify\"><b>The benefits of pure fish oil capsules&nbsp; are astounding.</b> Freedom from discomfort and inflammation is significant for many. Omega-3 Fatty Acids have proven to help alleviate inflammation resulting from such conditions as arthritis, cystitis, rheumatoid arthritis and prostitis.<br />
<br />
Babies and toddlers enjoy accelerated development, higher aptitudes and a higher IQ well into adulthood when supplemented with Omega-3&rsquo;s as pure fish oil or given Omega-3 rich foods. For adults, adequate pure fish oil capsules intake results in better recall, reasoning and focus.<br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 200px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Nutrional Health Science\'s Omega 3 Fatty Acids are Free of toxins &quot;</div>
According to the Journal of Affective Disorders, adequate <b>fish oil&nbsp; i</b>ntake may result in the easing of symptoms for those experiencing depression, psychosis and bipolar disorder.<br />
<br />
Additionally, many studies conclude that conditions such as ADD and ADHD in both children and adults can be greatly alleviated by the dietary intake of Omega-3&rsquo;s as pure fish oil, as well as conditions such as compulsive disorders, dyspraxia and dyslexia.<br />
<br />
The National Institute of Health conducted an experiment by providing those with unstable and explosive personalities three grams of pure fish oil capsules daily. In ninety -days;&nbsp; there was a marked decrease in explosive outbursts.<br />
<br />
<b>The benefits of Fish Oil Capsules outweigh the expense as the incidence of heart attacks and strokes are greatly diminished when pure fish oil is consumed on a daily basis. With essential Omega-3&rsquo;s, you can look forward to the decreased likelihood of breast, colon and prostate cancer.</b><br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Youngest Son Sleeps Through The Night </b><br />
<br />
&quot; My entire family takes your fish oil capsules and I believe that we are all the better for it. From my five year old son to my fifteen year old daughter. Even my husband takes your product and it\'s hard to get him to take anything that&rsquo;s good for him. <br />
<br />
About a month after taking your fish oil, my youngest son started finally sleeping through the night. I have read so much research on the fact that growing children need Omega-3 fats for brain health and development. It all started to make perfect sense and I\'m just thrilled to know that my family is getting a quality product at an excellent price. I think it&rsquo;s about time to add your greens formula to our healthful hardware plan. &quot;<br />
<br />
<b>Frances Hodgkins </b></div>
</div>', '<div style=\"text-align: justify\">Flaxseed oil is also known as linseed oil. Flaxseed oil is comprised of a fatty acid called alpha-linolenic acid (ALA). While a subclass of Omega-3 fats, ALA is not the high chain class of fatty acids (EPA and DHA) in pure fish oil that scientific research has studied and validated&nbsp; for decades.<br />
<br />
Because flaxseed oil is a subclass of Omega-3&rsquo;s by itself, it\'s boldly marketed as a viable source of essential fats - but nothing is further from the truth. Some research indicates that flaxseed oil may convert to EPA and DHA in the body, but there are no solid conclusions to date. in contrast to toxin free<b> fish oil capsules</b>. <br />
<br />
<b>A study in the American Journal of Clinical Nutrition revealed that flaxseed oil was not a weapon against inflammation as manufacturers claim.</b> Disturbingly, this unhealthful oil was found to actually increase inflammation.<br />
<br />
Preliminary studies indicate that flaxseed oil may also stimulate both prostate and breast cancers and animal studies indicated that when high dosages of flaxseed oil were taken, damage to development of the fetal reproductive system occurred.<br />
<br />
The hyped health claims of flaxseed oil have not been proven by any substantial research. This in sharp contrast to our good fatty acid friends EPA and DHA as derived from pure fish oil. Being on the safe side, you can depend on us for a quality fish oil supplement for your essential daily dose of healthful Omega-3&rsquo;s. <br />
&nbsp;</div>', '<div style=\"text-align: justify\"><b>Our Omega-3 Fatty Acid Formula is a double strength compound in a single strength serving.</b> At Nutritional Health Science, we distill our pure<b> fish oil capsules</b> to guarantee our products are free of harmful environmental pollutants.<br />
<br />
With double strength levels of the critical EPA and DHA fatty acids from pure fish oil, you can expect to reap health benefits from our pharmaceutical grade fish oil almost immediately. <br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; margin-right: 10px; padding-top: 5px\">&quot;Omega 3 Fatty Acids Reduce Discomforts, Support Cardiac Health and Support Neurological Funcion&quot;</div>
<b>Beware of lessor fish oil capsule products.</b> An independent laboratory decided to test a dozen fish oil products for contaminants.<br />
<br />
Common brands such as Puritans Pride, Now Foods and GNC stores were found to have high levels of cancer causing PCB\'s. This is the direct result of big industry dumping chemicals into our worlds\' oceans. Fish absorb these toxins and in turn we consume these toxins via the fish products we consume and use.<br />
<br />
Our fish oil is prepared for human consumption using a special molecular distillation process that renders our product free from all contaminants. Don\'t settle for anything less. Your good health depends upon it.<br />
<br />
<b>Reasons to take our Fish Oil Formula:</b><br />
<ul>
    <li>double strength</li>
    <li>no toxins</li>
</ul>
<br />
<br />
Finally, our <b>fish oil capsules </b>gel caps include Vitamin-E, a potent fat soluble antioxidant. This is important as without a compatible antioxidant present to help metabolize the valuable EPA/DHA componants of fish oil, it will simply turn rancid in your bloodstream. Don\'t settle for second best for yourself or your family when it comes to your health and well being. Nutritional Health Science is there for you all the way.</div>', '<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Good Cholesterol Numbers Go Up </b><br />
<br />
&quot; I\'ve been purchasing fish oil at my local drugstore for years. I took it on faith even though it never tasted quite right and gave me the worst fishy belch that anyone could ever imagine. <br />
<br />
I don&rsquo;t know how you do what you do but keep on doing it because after I began taking your products my skin is much softer and my good cholesterol has increased. I\'m pleased with your product and have recommended it to my ladies bridge club. They are all in rather poor health and take way too many medications to do them a hill of beans. &quot;<br />
<br />
<b>Linda M </b></div>
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>No More Flaxseed Oil </b><br />
<br />
&quot;I really enjoy the extra strength and clean quality of your pure fish oil capsules. I certainly learned a lot by visiting your web site. In addition, the people who answer your phone are nice, knowledgeable and professional. <br />
<br />
I\'ve been taking flaxseed oil for years and never could get my good cholesterol to regulate. I exercise daily and eat well, so it just didn&rsquo;t make sense. Now I\'ve never been happier and am finally enjoying healthy and normal cholesterol balance. I\'m confidant that my good health will continue as long as I have your excellent products.&quot;<br />
<br />
<b>J. Woburn </b></div>
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Enjoys Quality Products </b><br />
<br />
&quot;I\'ll only purchase my fish oil capsules and other products from you because you are so heavily based and proven in the natural science of health. I also like the fact that I\'m not getting third party supplements. <br />
<br />
In addition, you oversee your own operation and production. I\'m satisfied with my healthy results thus far and hope that you\'re there for many years to come. It\'s difficult these days to find excellent customer service and companies who mean what they say and have good products to boot. Your pure fish oil is the best. .&quot;<br />
<br />
<b>Darlene Nichola </b></div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>No Fishy Burp Or Aftertaste</li>
                <li>A Pollutant-Free Fish Oil Capsule</li>
                <li>Safe For The Whole Family</li>
                <li>Easy To Swallow Soft Gel Capsules</li>
                <li>A Formula That Provides Maximum Results</li>
                <li>Fish Oil That Protects You From Oxidative Stress</li>
                <li>Immediately Bioavailable, Potent EPAs &amp; DHAs</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '<div style=\"text-align: center\">SUPPLEMENT FACTS<br />
Serving Size:2 Softgels<br />
Serving per Container: 60</div>
<br />
<table class=\"tablespecial\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">&nbsp;</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">Amount<br />
            Per Dose</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Total Calories</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">26</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Calories from Fat</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">26</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Total Fat</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">2400 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">4%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Saturated Fat</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">216 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">1%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Total Carbohydrates</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">216 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Unsaturated Fat</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">1056 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Monounsaturated Fat</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">840 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Polyunsaturated Fat</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">840 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Total Carbohydrates</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">177 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">1%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">protein</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">386 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Cholesterol</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">0 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">0%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Vitamin E (d-Alpha Tocopherol)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">10 IU</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">33%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Fish Oil Concentrate</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">2400 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Fish Oil Concentrate</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">720 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">EPA (Eicosapentaenoic Acid)[30%]</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">720 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">DHA (Docosahexaenoic Acid)[20%]</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">480 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\"><b>*Daily Value (DV) not stablished Percent Daily Values Based on a 2,000-Calorie Diet</b></td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\"><b>Other Ingredients : </b>Gelatin,glycerin and water</td>
        </tr>
    </tbody>
</table>', 'Pure Fish Oil Capsules Are Essential For Human Health and Wellness', 'Pure Fish Oil Capsules Are  Beneficial All The Way Around', 'Flaxseed Oil VS Fish Oil Capsules', 'Pure Fish Oil Capsules: The All-Natural Solution for Guaranteed Success', 'What Our Customers Are Saying About Our Fish Oil Capsules', 'Our Commitment To You', '', '', '', 'fish oil capsules', 'Toxin Free Fish Oil Capsules', 'Pure Fish Oil Capsules. Extra Strength EPA/DHA Certified Chemical Free Fish Oil');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2607', '1', 'Candida Zymes', '<ul>
    <li>Relief From Gas And Bloating</li>
    <li>Enjoy Normal Digestion</li>
    <li>Improved Regularity</li>
    <li>Break Down Candida Outer Walls</li>
    <li>Promote Optimal Digestive Health</li>
    <li>Ease Stomach Upsets</li>
    <li>Enjoy Better Moods</li>
    <li>Feel Human Again</li>
</ul>', '', '231', 'Don\'t Let Candida Infections Control Your Life. Our Candida Products Can Help', 'Natural Control Of Candida Albicans', 'Candida infections occur when the immune system and the good bacteria in the digestive system are unable to regulate the normally occuring candida organisms in the body. <br />
<br />
Candida albicans then disturbs the digestive system and sometimes the entire body as a whole.<br />
<br />
Candida albicans are single celled organisms that can mutate and result in the growth of branches, outside of their normally round shapes and bore through the mucous membranes of the digestive system seeking nourishment. In turn, these stubborm microscopic fungals release toxins into your body through these branches and may affect your entire system; reffered to as a systemic candida infection causing symptoms such as:<br />
<br />
<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">
    <tbody>
        <tr>
            <td>
            <ul>
                <li>Irritability</li>
                <li>Runny Stools</li>
                <li>Hyperactivity</li>
                <li>Dizziness</li>
                <li>Anxiety and Depression</li>
                <li>PMS</li>
                <li>Eczema</li>
                <li>Jock Itch</li>
                <li>Sugar Cravings</li>
            </ul>
            </td>
            <td width=\"20\">&nbsp;</td>
            <td>
            <ul>
                <li>Sinus Infections</li>
                <li>Athlete\'s Foot</li>
                <li>Acne</li>
                <li>Poor memory</li>
                <li>Thrush</li>
                <li>Itching</li>
                <li>Constipation</li>
                <li>Sleeplessness</li>
                <li>Alcohol Cravings</li>
            </ul>
            </td>
        </tr>
    </tbody>
</table>
<br />
<br />
<b>Healthcare professionals often misdiagnose and mistreat candida infections because they are not commonly tested for. Taking CandidaZymes and our Candida-Pac can help remediate candida infections.</b> <br />
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; letter-spacing: -0.05em; padding-right: 10px; font-family: \'Courier New\'; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>A Whole New Outlook</b><br />
<br />
&quot;I\'ve always had a sensitive system and these lousy yeast infections seem to get me when I least suspect it. An on again and off again thing. I just thought to myself that this was how it goes so I better get used it. After finding you and your website, I thought maybe I could try again once more with an anti candida protocol. <br />
<br />
After 60 days on the Candida-PAC plus your Greens and Omega-3&rsquo;s, I really feel like a million bucks. My moods are much brighter, I feel rested and I look forward to a brand new day. So much better than what I was experiencing. You have excellent products that deliver, just like you say. &quot;<br />
<br />
<b>Missy R</b></div>
<br />', '<b>Candida infections occur most often when:</b><br />
<br />
<b>The immune system is compromised: </b>For example, when immune suppressive drugs are taken.<br />
<br />
<b>A person has undergone antibiotic therapy:</b> Antibiotics kill the good intestinal micro flora along with the bad bacteria you are taking them for. Without the good micro flora, fungal organisms can proliferate.<br />
<br />
<b>A person is elderly:</b> An aged body does not have the resources it once had to fight out-of-control fungal growth.<br />
<br />
<b>A person has been on chemotherapy:</b> Which kills off healthy intestinal micro flora and depletes your immune system.<br />
<br />
<b>A person is under physical and/or emotional stress:</b> Which wears down the immune system.', '<b>Your body makes many of its own enzymes but cannot make the natural enzymes that prove effective against stubborn yeast organisms.</b> This is why our anti candida CandidaZymes are truly unique as well as 100% effective. When<br />
CandidaZymes and our Candida-PAC are used, candida doesn&rsquo;t stand a chance. <br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; letter-spacing: -0.05em; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Candidazymes Remove Intestinal Sludge and Destroy the Outer Walls of the Candida Organism&quot;</div>
Most people with active yeast infections have immobile fibrous material clogging their digestive systems. This material stagnates and stops normal bowel movements from occuring.<br />
<br />
As a natural defense, the body then produces mucous in an effort to protect itself from the toxins produced by Candida albicans. The excess mucous serves as an ideal barrier in which candida cells can hide and multiply.<br />
<br />
<ul>
    <li><b>Remove Intestinal Sludge</b></li>
</ul>
These specialized anti-candida enzymes cleanse your digestive system and have a direct effect on the organism itself. When your digestive system is cleansed, anti-candida agents can perform their job which is immobilizing and ridding your system of excess candida.<br />
<br />
The cell walls of most candida strains result from a combination of two fibrous substances: hemicellulose and cellulose. <br />
<br />
Together they make up the protective outer wall of candida organisms known as mannochitin. Without dissolving the tough outer walls of these organisms, candida protocols simply won&rsquo;t work.<br />
<br />
<ul>
    <li><b>Destroy Outer Walls of Candida Organisms</b></li>
</ul>
CandidaZymes destroy the outer walls of the fungal organism itself, rendering them ineffective and disposable via the body&rsquo;s normal elimination pathways. Candida organisms have no natural resistance to these powerful anti candida enzymes and are rendered helpless and disposable upon contact.', '<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; letter-spacing: -0.05em; padding-right: 10px; font-family: \'Courier New\'; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>CandidaZymes Offer Relief</b><br />
<br />
&quot; I can&rsquo;t believe that my life is so much clearer because of your professional grade Candida-Pac. Before I was suffering irritability, odd looking rashes on my hands and such a sluggish bowel that it hurt.<br />
<br />
While all of your products are excellent, I truly believe it\'s your CandidaZymes that have made the biggest difference. I\'m happy to report I feel a thousand times better and extend my heartfelt thanks to you. I\'m more than happy to kill these health compromising critters before they kill me. &quot;<br />
<br />
<b>Mary M</b></div>
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; letter-spacing: -0.05em; padding-right: 10px; font-family: \'Courier New\'; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Other Products Didn&rsquo;t Work </b><br />
<br />
&quot;I kept getting candida yeast infections in my gut and tried everything under the sun. The discomfort was significant. I would guess that I \'ve spent at least fifteen hundred dollars on various natural products the past 1 1/2 years or so. <br />
<br />
There were times when I felt instant relief but then the same old discomfort started again anyway. I decided to take the plunge one more time and purchase your products, all the while fearing failure yet again. So far so good. I\'m doing excellent and it\'s definitely because of your high quality products. &quot;<br />
<br />
<b>Scott Bowling</b></div>
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; letter-spacing: -0.05em; padding-right: 10px; font-family: \'Courier New\'; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Antibiotics Caused Candida Infections</b><br />
<br />
&quot;My situation isn\'t as bad as what I\'ve read regarding what others have experienced. Still the same, I seem to get it at least twice per year (especially when I\'m on antibiotics) and the discomfort is all my own. I was using another anti candida product and it worked okay.<br />
<br />
Your products are off the top! I started to feel better in just forty-eight hours and was cleared up in just six weeks. I\'ve added some of your other products so I can keep my immune system strong. I do tell others about the positive experience I\'ve had with your company and look foward to a long and positive relationship. &quot; <br />
<br />
<b>Sundra Hail</b></div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All Natural Products</li>
                <li>Result you can feel</li>
                <li>Safe And Effective</li>
                <li>A Healthy Balance Naturally</li>
                <li>Gentle Relief Of Symptoms</li>
                <li>Products You Can Rely On</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '', '<div style=\"text-align: center\">SUPPLEMENT FACTS<br />
Serving Size: 2 Capsules<br />
Serving per Container: 60</div>
<br />
<table class=\"tablespecial\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">&nbsp;</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">Amount<br />
            Per Dose</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Proprietary Blend</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">2240 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Cellulase</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">160,000 CU</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Alpha-Galactosidase</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">400 GALu</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">*Daily Value (DV)</td>
            <td class=\"tdspecial\" colspan=\"2\" align=\"center\">not stablished</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\"><b>Other Ingredients : </b>Vegetable Callulose,RiceBran and Magnesium stearate.</td>
        </tr>
    </tbody>
</table>', 'What You Need To Know About Candida Infections', 'Factors That Can Cause Stubborn Candida Infections', 'Candidazymes: The All-natural Solution For Guaranteed Success', 'Our Success Stories', 'Our Commitment To You', '', '', '', '', 'candida', 'Stop Candida In Its Tracks', 'Powerful And All Natural Support For The Eradication Of Candida Albicans. Our Products Never Fail To Deliver.');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2608', '1', 'Cholestokal', '<ul>
    <li>Maintain Healthy Cholesterol With No Side Effects</li>
    <li>Support Your Cholesterol In A Gentle And Natural Way</li>
    <li>Protect Your Cardiovascular System</li>
    <li>Enjoy Better Overall Health</li>
    <li>Improve Your Sense Of Well Being</li>
    <li>Take Control Of Your Health And Wellness</li>
</ul>', '', '213', 'High Cholesterol? Safely Reduce Cholesterol With All Natural Cholestokal', 'Designed to Reduce Cholesterol', '<div style=\"text-align: justify\"><b>Nutritional science is exploding rapidly and Nutritional Health Science has formulated proprietary state of the art nutritional products to fill this need.</b>&nbsp; Many inquire as to whether support for natural support to <b>reduce cholesterol</b> truly is possible; the answer is yes.<br />
<br />
Healthy cholesterol can be supported with our 100% natural cholesterol treatment support formula. CholestoKal is gentle, contains no synthetic ingredients and has been used with great success to help men and women of all ages reduce cholesterol and enjoy a healthy cholesterol balance. The reality of achieving natural health has never been greater due to recent breakthroughs in modern nutritional science and we are glad to be a part of the research and production of ground breaking products that&nbsp; have such a positive impact on human health and wellness. You indeed can <b>reduce your cholesterol</b> levels naturally with zero negative side effects.</div>', '<div style=\"text-align: justify\"><b>The potential side effects of cholesterol treatment via medications are sobering and can vary from person to person.</b> Statin drugs such as Crestor and Lipitor are the most frequently prescribed drugs for prescribed to reduce cholesterol. The most reported side effect of these drugs is muscle pain or weakness.<br />
<br />
<div style=\"text-align: left; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">Side effects of statin drugs include:
<ul style=\"color: rgb(0,126,253)\">
    <li>muscle pain or weakness</li>
    <li>tingling in the hands and feet</li>
    <li>disgestive issues</li>
    <li>skin rashes</li>
    <li>liver and kidney failure</li>
</ul>
</div>
Some statin drug users report feeling full body pain. In severe cases, rhabdomyolysis may occur, a condition where muscles are severely damaged. Moreover, liver and kidney failure can be part of the equation.<br />
<br />
<b>Because the long-term use of statin drugs can cause liver failure, regular tests of liver function are necessary. <br />
<br />
Statin drug users should be aware of tingling in the hands and feet, digestive issues and skin rashes as these are warning signs of more serious issues. In many cases, the cholesterol treatment is worse than the fear of high cholesterol itself.</b></div>
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; margin-bottom: 10px; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Cholesterol Down 30 Points </b><br />
<br />
&quot;You\'ve made a huge difference in my life. I no longer worry about what horrible things might be happening inside my body. My doctor simply says &quot;keep doing what you\'re doing because it\'s working.&quot; My numbers went down 30 points in just two months. Enjoying healthy cholesterol with your natural products designed to reduce cholesterol has never been easier. Thanks a whole bunch to you.&quot;<br />
<br />
<b>Mary Roberts </b></div>', '<div style=\"text-align: justify\"><b>CholestoKal is naturally compatible with the body and helps support healthy cholesterol function.</b> The natural ingredients in CholestoKal have been rigorously studied for both safety and effectiveness with regards to successful and natural cholesterol treatment.<br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Natural Safe Guaranteed&quot;</div>
<b>CholestoKal use results in:</b>
<ul>
    <li>healthy cholesterol levels</li>
</ul>
<br />
<br />
The specialized nutritional matrix that is CholestoKal offers valuable nutrients that are not found in our everyday diets. The life changing results our customers experience every day is part of what makes our products so special. Natural, safe and proven formulas can make all the difference in the world with regards to your health and wellness. <br />
<br />
While a diagnosis of high cholesterol can prove unsettling, our unique formula that is CholestoKal can save the day. in helping you lower cholesterol levels. Simply check your cholesterol after taking CholestoKal for 60 days. We guarantee it. Imagine the peace of mind as you experience healthy cholesterol without negative side effects. <b>That\'s the power of Nutritional Health Science.</b></div>', '<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>No More Muscle Aches And Pains </b><br />
<br />
&quot; My cholesterol medication made me sick to my stomach and my legs were always aching. I couldn&rsquo;t take it for more than two months. I had to stop because the side effects were so difficult.<br />
<br />
Because heart disease runs in my family, I knew I had to do something, but what?<br />
<br />
I found Nutritional Health Science and my worries are over. Six months later I had blood work performed and my healthy cholesterol has never been better. This stuff really does help reduce cholesterol.<br />
<br />
The beauty of it all is that I feel great! No muscle aches and no stomach sickness. I now recommend this product to all my friends and Nutritional Health Science has a customer forever.&quot;<br />
<br />
<b>Victor Pacewick</b></div>
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>CholestoKal Helps For Three Years </b><br />
<br />
&quot; Even though I was diligent about my low cholesterol diet and exercise, I still couldn&rsquo;t get my cholesterol numbers in the right place. I wouldn\'t consider taking statin drugs because I was too scared of the side effects after watching my uncle suffer from nerve damage in his feet from these drugs.<br />
<br />
I definately didn&rsquo;t want to go through the same thing. The CholestoKal regime has served me well for over three years. I would never think of taking anything else to help me manage my health. It&rsquo;s CholestoKal natural cholesterol treatment all the way.&quot;<br />
<br />
<b>Auria Mendez </b></div>
<br />
<div style=\"text-align: left; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>An Easy Time Getting Healthy Cholesterol</b><br />
<br />
&quot; I\'ve been trying to work on my cholesterol numbers for over two years. I\'ve tried so many combinations of prescription drugs and supplements for cholesterol treatment to no avail. I even lost twenty-pounds. While I\'m glad I did loose the extra pounds, it didn\'t seem to help me reduce my cholesterol levels.<br />
<br />
CholestoKal has been heaven sent. After three months, my numbers showed up right where they were supposed to be. Almost like magic. I guess my body hates synthetic chemicals. Needless to say, I sleep a bit easier now. Thanks for all the good stuff. You\'re correct when you say that our body is supposed to thrive on organic nutrients and NOT synthetic materials.&quot;<br />
<br />
<b>Daphne R </b></div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>A Natural And Healthy Formula You Can Live With</li>
                <li>NO Side Effects</li>
                <li>Guaranteed and Quick Results</li>
                <li>100% Customer Satisfaction Guarantee</li>
                <li>An Unbeatable Proprietary Blend</li>
                <li>Reduce Cholesterol And Enjoy Radiant Health</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '', '<div style=\"text-align: center\">SUPPLEMENT FACTS<br />
Serving Size:3 Tablets<br />
Serving per Container: 60</div>
<br />
<table class=\"tablespecial\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">&nbsp;</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">Amount<br />
            Per Dose</td>
            <td class=\"tdspecial_header\" width=\"85\" align=\"right\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Vitamin B-3 (from Niacinamide)(Flush-Free)</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">270 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">1350%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Proprietary Blend</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">1756 mg</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Cordyceps Powder</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Red Yeast Rice Extract</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Gugulipid</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Beta Sitosterol Complex</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Gamma Oryzanol</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Inositol</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Alpha Lipoic Acid</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">&nbsp;</td>
            <td class=\"tdspecial\" width=\"85\" align=\"right\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\">* Daily Value (DV) not established</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\"><b>Other Ingredients : </b>Gelatin and L-Leucine (flowing agent)</td>
        </tr>
    </tbody>
</table>', 'Natural Support To Safely Reduce Cholesterol', 'The Side Effects Of Cholesterol Medications That Reduce Cholesterol Are Significant', 'Reduce Cholesterol With CholestoKal', 'What Our Customers Are Saying', 'Our Commitment To You', '', '', '', '', 'reduce cholesterol', 'Safely Reduce Cholesterol With All Natural Cholestokal', 'Reduce Cholesterol Without Side Effects. Safe Effective and Natural Cholesterol Management.');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2609', '1', 'Baseline Pac', '<div style=\"text-align: justify\">Our product PACs are designed to save you money and offer maximum benefits; they are the way to go for discriminating consumers seeking both remarkable health benefits and cost savings.</div>', '', '421', 'Complete and Nutritious Whole Food Supplements For The Entire Family', 'Non-Synthetic Whole Food Supplements', '<div style=\"text-align: justify\"><b>Sub-clinical malnutrition is a real and present danger in all Westernized countries including the United States.</b> Though we have more food than many other countries, it\'s the nutrient-poor processed foods that the majority of our population consumes that causes health problems. These types of foods do not provide the natural nutrition we were designed to thrive upon. And they lead to devastating effects on your health and wellness. Our <b>whole food supplements </b>can help.<br />
<br />
The effects of nutrient-poor diets are numerous and include exhaustion, sleeplessness, irritability, light headedness the mid-day crash and PMS. More serious complications of sub-clinical malnutrition include diabetes, obesity, learning and behavior disorders in children, memory loss in the elderly and immune system deficiencies such as cancer.<br />
<br />
America has a love affair with food, but with the wrong types of food. Foods like cakes, fries, chips, and burgers can harm health and even lead to an early death. Foods such as fruits, vegetables, whole grains, nuts and seeds are nutritious for your body and can even heal certain diseases. The question becomes do you want to &quot;eat to live&quot; or &quot;live to eat&quot;?<br />
<br />
The basics of healthful and nutrient dense foods lie in three different nutrient categories:<br />
<ul>
    <li>green foods, meaning plenty of fruits and vegetables</li>
    <li>minerals, required for every metabolic action and reaction in the body</li>
    <li>good fats help fight cancer, heart disease and neurological issues</li>
</ul>
<b>Because sub-clinical malnutrition is a real and present danger for the majority of Americans, we\'ve designed a complete nutritional system&nbsp; comprised of non symthetic whole food supplements to address this increasingly important issue.</b></div>', '<div style=\"text-align: justify\"><b>It\'s true that American families are busier than ever. With working households, kids, chores, and everything else in between, it can be quite the challenge to consume a healthful diet full of natural nutrition. Typically, the end of the day does\'nt&nbsp; leave enough time for meal preparation. Let alone anything else. <br />
<br />
To help meet your needs for basic nutrition, use our Baseline-PAC. This basic nutritional program is designed for&nbsp; your entire family and can help provide you the whole food nutrition you deserve.<br />
</b></div>
<br />
<b>Mega Greens Complex</b><br />
<br />
<div style=\"text-align: justify\" id=\"2598\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"Mega Greens Complex\" border=\"0\" hspace=\"0\" alt=\"Mega Greens\" width=\"135\" height=\"137\" src=\"images/Synergystic%20Mega%20Greens%20Powder-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2598);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
Your body requires 5-7 servings of fruits and vegetables daily according to the American Heart Association, the American Diabetes Association and the American Cancer Society. Nutritional science has proven the health enhancing and disease fighting properties of green and natural whole foods. A diet rich in fruits and vegetables can help ward off obesity, diabetes, cancer, heart disease, high cholesterol and memory loss. A healthy diet also helps children mature to their full capacity and wards away childhood obesity and learning disorders.<br />
<br />
Because green foods are so important to your health and wellness, at Nutritional Health Science we set out to manufacture a greens formula that would be a step above the rest and worthy of our complete nutritional system. After two years of research and study, we now offer our superior Mega Greens Complex: a viable and concentrated professional formula of over 75 green food ingredients, cultivated under controlled laboratory conditions for maximum nutritional strength. The ingredients of our Mega Greens Complex are cold processed which leaves all of the natural nutrition intact. <br />
<br />
Mega Greens are for your whole family, from children to grandparents and everyone in between. Mega Greens taste GREAT and mixes easily in juice or water. Mega greens are an important component of our complete nutritional system.<br />
<br />
Each bottle contains a whopping 5 grams per serving and 60 servings in a loose powder format that mixes easily with water or juice. One bottle is one months supply.</div>
<br />
<b>Bio-Chelated Minerals</b><br />
<br />
<div style=\"text-align: justify\" id=\"2594\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"Bio-Chelated Minerals\" border=\"0\" hspace=\"0\" alt=\"Bio-Chelated Minerals\" width=\"135\" height=\"137\" src=\"images/biochelated-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2594);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
Minerals: vital to human health and wellness. Minerals help your heart beat, make muscles move, keep bones and teeth strong, help enzyme actions and reactions occur in your body and keep your pH balanced and regular.<br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.09em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot; Bio-Chelated Minerals are minerals that your body can absorb &quot;</div>
Obtaining minerals from processed foods is difficult and finding an effective supplement can be just as challenging - until now. Bio-Chelated Minerals are bio-available and easily assimilated by the body. Minerals are essential and a requirement in a complete nutritional system.<br />
<br />
Other mineral supplements are constructed from inorganic materials. This means rocks in many cases; ground up calcium rock or ground up coral. Mineral supplements such as these have been shown to harden arteries and aid in the formation of kidney and bladder stones.<br />
<br />
Our Bio-Cheleted Minerals formula is derived from natural organic mineral sources that are wrapped in amino acids for immediate uptake by the body. Minerals must be in a useful and viable format to provide benefits for your body. Mineral supplements must be well balanced with each mineral in nature&rsquo;s perfect ratio with one another; unbalanced mineral formulas can actually cause metabolic upsets and result in your body leeching calcium from your bones.<br />
<br />
Our laboratory experts are second to none and are proud to offer you this unsurpassable minerals formula as part of our complete nutritional system.<br />
<br />
Each bottle contains 60 servings in a loose powder format that mixes easy with water or juice. One bottle is one months supply</div>
<br />
<b>Omega-3 Fatty Acids</b><br />
<br />
<div style=\"text-align: justify\" id=\"2606\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"Omega-3 Fatty Acids\" border=\"0\" hspace=\"0\" alt=\"Omega-3 Fatty Acids\" width=\"135\" height=\"137\" src=\"images/Estra%20Strength%20Omega%203%20Fatty%20Acids-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2606);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
Omega-3 Fatty Acids rounds out your requirements for basic natural nutrition and are part of our complete whole food supplement program. With thousands of studies world wide, Omega-3&rsquo;s as derived from pure fish oil have proven beyond a doubt essential for human health and wellness. Everyone requires Omega-3 Fatty Acids for a healthy lifestyle:<br />
<br />
<b>Proven Cancer Fighters:</b> Women who took supplemental fish oil reduced their risk of breast cancer by 33%<br />
<br />
<b>Heart Healthy:</b> In some cases, pure fish oil can reverse the progression of heart disease (study published by the Cleveland Clinic)<br />
<b><br />
Vital for Growing Brains:</b> And neurological systems. Adequate fish oil supplementation can help prevent/alleviate learning disorders, ADD, and ADHD<br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Omega 3 Fatty Acids Reduce Discomforts, Support Cardiac Health,and Support Neurological Function &quot;</div>
However, all fish oil products are not created equal. Just recently, an independent lab tested ten different fish oil products. These included more well-known brands such as Puritans Pride, Now Foods, GNC nutrition stores and New Life. Each fish oil product was found to contain detectable levels of cancer causing PCB&rsquo;s. This is due to our relentless pollution of the world&rsquo;s oceans. As fish absorb these toxins into their systems, we then consume them from fish and fish products.<br />
<b><br />
Our Omega-3 Fatty Acids are extra strength and provided in an easy-to-swallow soft gel. With ample amounts of the active components in fish oil, EPA and DHA, our specialized formula offers numerous health benefits for both adults and children.<br />
<br />
Our fish oil formula is completely free of any environmental toxins or additives. We utilize a specialized laboratory procedure called molecular distillation which ensures that our fish oil is completely free of harmful toxins or additives. Our pure fish oil rounds out our complete nutritional system which is designed for your health and wellness in mind.<br />
<br />
Our fish oil contains a complimentary anti-oxidant, vitamin-e in order to stop any rancid reactions in your blood stream.</b><br />
<br />
Each bottle contains 120 easy to swallow &quot;no burp&quot; softgel capsules. One bottle is one months supply.</div>', '<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Total Nutrition For The Whole Family</b><br />
<br />
&quot; We have a busy household. My husband and I work full time and we have three kids that must be at various activities throughout the course of the week. Needless to say, it&rsquo;s difficult to get a proper dinner on the table. Because we are so busy, we consume a lot of takeout and other fast food items. I know this is not at all a healthy lifestyle or the natural nutrition my family needs.<br />
<br />
I decided to purchase the Baseline-PAC and we are all the better for it. My kids love the greens mixed in their juice and the minerals and Omega-3 Fatty Acids are what we need to stay healthy. We have lots of energy, sleep well, and feel revitalized. We ran out for a couple weeks and boy did we feel the difference. Your Whole Food Suplements really do make a difference. The Baseline-PAC is now a permanent part of our lives and a healthful and complete nutritional system we can\'t live without.&quot;<br />
<br />
<b>Daphne Marcus.</b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Baseline Wellness-PAC Helps For Good Health</b><br />
<br />
&quot; I&rsquo;m not sick or anything like that. However, I don\'t eat well most of the time even though I know better. With this in mind I take the Baseline&ndash;PAC from Nutritional Health Science.<br />
<br />
It gives me the anti-oxidants, phytonutrients, minerals and Omega-3&rsquo;s I need to stay healthy. Since I\'ve been taking these products I haven\'t had one bout with colds or the flu. This tells me these fine products are working for me. I recommend this healthful PAC to all of my friends and family.&quot;<br />
<br />
<b>Mickey Jays</b></div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All Natural Solutions For Guaranteed Success</li>
                <li>Products That You Can Count On</li>
                <li>No Cheap Fillers Or Additives</li>
                <li>Healthy For The Whole Family</li>
                <li>Full Support From Our Product Specialists</li>
                <li>Superior Whole Food Supplements</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '', '', '', 'Americans Are Suffering From Sub Clinical Malnutrition', 'Safe And Natural Solutions Provided By Whole Food Supplements', 'What Our Customers Are Saying', 'Our Promise To You', '', '', '', '', 'Whole Food Supplements', 'whole food supplements', 'The Best Whole Food Supplements On the Market Today', 'Complete And Total Whole Food Supplements For The Entire Family. Stop Taking Synthetic Chemicals And Choose Concentrated Whole Food Nutrition Instead');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2610', '1', 'candida pac', '<div style=\"text-align: justify\">Our product PACs are designed to save you money and offer maximum benefits. This combination of products work together for best results. Our product PACs are the way to go for discriminating consumers seeking both remarkable health benefits and cost savings. Our candida cleanse package is highly effective.</div>', '', '241', 'A Natural And Highly Effective Candida Cleanse: Gentle On Your System No Side Effects', 'Ultimate Candida Cleanse', '<div style=\"text-align: justify\"><b>Candida yeast infections, also referred to as fungal infections, are on the rise.</b> Modern lifestyle habits which include a lack of exercise, poor diets, run down immune systems, lack of rest and prescription medications contribute to to these all too common infections which ultimaltly require a<b> candida cleanse</b>. <br />
<br />
Candida infections occur when the body&rsquo;s own fungal cells run haywire and end up causing a multitude of symptoms and undesirable side effects.<br />
<br />
<b>Causes of yeast infections are often associated with a weakened or compromised immune system.</b> Metabolic disorders such as diabetes are strong predisposing factors for the chronic development of candida. Conditions such as HIV/AIDS, cancer/chemotherapy, mononucleosis, stress, nutrient deficiency, the use of steroids&nbsp; and the use of antibiotics raise the risk of candida and otherwise uncontrolled yeast infections. <br />
<br />
Fluconazole is one of the more widely used prescription antifungal medications used for treating candida. Resistance to this drug occurs quickly and the side effects are often worse than the candida infection itself. While there are other antifungal drugs on the market, resistance is common with these common yeast infection treatments as well. The most effective way to erradicate stuborn yeast is with our proven candida cleanse formula.</div>', '<div style=\"text-align: justify\">Dr. William Crook was one of the first practitioners in his day to diagnose and recognize out of control candida albicans yeast infections as a more common and widely spread condition than originally thought. In his book he outlines the symptoms he ran across as he began testing his patients. The more common symptoms he describes are:<br />
<br />
<table border=\"0\" cellspacing=\"25\" cellpadding=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td>
            <ul>
                <li>PMS</li>
                <li>Sexual Dysfunction</li>
                <li>Itching Asthma</li>
                <li>Muscle Pain</li>
                <li>Poor Digestion</li>
                <li>Urinary Tract Infections</li>
                <li>Exhaustion</li>
                <li>Gas</li>
            </ul>
            </td>
            <td width=\"250\">&nbsp;</td>
            <td>
            <ul>
                <li>Bloating</li>
                <li>Runny Stools</li>
                <li>Heartburn</li>
                <li>Nausea</li>
                <li>Fatigue</li>
                <li>Sinus Infections</li>
            </ul>
            </td>
        </tr>
    </tbody>
</table>
<br />
<b>Note: The Mayo Clinic writes that most sinus infections are caused by fungal yeast infections.</b></div>', '<div style=\"text-align: justify\"><b>The Nutritional Health Science Candida Cleanse-PAC is your personall ally and extremely effective. The symptoms of out of control overgrowth, including itching, fatigue and digestive upsets are relieved quickly by taking these three powerful supplements:</b></div>
<br />
<b>Aloe Immune Matrix</b><br />
<br />
<div style=\"text-align: justify\" id=\"2599\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"Aloe Immune Matrix\" border=\"0\" hspace=\"0\" alt=\"Aloe Immune Matrix\" width=\"135\" height=\"137\" src=\"images/Aloe%20Immune%20Complex-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2599);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
The first step in the remediation of uncomfortable yeast infection symptoms is the treatment of your immune system. If your immune system is working properly, it will greatly assist your body with the task of erradicating stubborn yeast organisms. Luckily, nature has provided us with a wide variety of natural compounds that boost the immune system. Aloe vera is one of the most powerful natural immune system boosters known to nutritional science and is a required adjunct for an effective candida cleanse.<br />
<br />
Modern science has written volumes about the healing components of aloe vera called &ldquo;essential saccharides&quot;. Essential saccharides are plant-specific carbohydrate molecules that, when ingested orally, attach themselves to the cell surfaces of immune system cells and are able to initiate a heightened immune system response. This positive response drives the immune system into high gear and allows it to seek and heal damaged areas,as well as to expel foreign invaders such as candida.<br />
<br />
Not all aloe vera products have been constructed to retain these valuable and often life changing immune system activation molecules. At Nutritional Health Science, we analyze every batch of aloe to insure that therapeutic amounts of these health specific carbohydrate molecules are present.<br />
<br />
This is line with the strict requirements of the International Aloe Science Counsel which examines and certifies our Aloe Products.<br />
<br />
Each bottle of Aloe Immune Complex contains one scoop daily in a powder format and is one months supply. Our Aloe Immune Matrix mixes easily with water or juice.</div>
<br />
<b>Olive Leaf Extract</b><br />
<br />
<div style=\"text-align: justify\" id=\"2604\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"Olive Leaf Extract\" border=\"0\" hspace=\"0\" alt=\"Olive Leaf Extract\" width=\"135\" height=\"137\" src=\"images/Olive%20Leaf%20Extract-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2604);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
<b>Olive Leaf extract is a natural anti-bacterial and anti-fungal agent.</b> Under scientific scrutiny for more than 60 years, olive leaf extract has proven itself invaluable in the fight against incidious yeast infections. The active component of the olive leaf, Oleuropein, is what is directly responsible for the health benefits of this supplement and it\'s natural success in candida cleanse treatments.<br />
<br />
In order for dietary supplements to be active and of therapeutic quality, standardization must be achieved in the laboratory process. This guarantees a quality amount and purity of Oleuropein in each dosage. Our Olive Leaf Extract, like all of our whole food supplements, has a Certification of Analysis (COA) on file.<br />
<br />
This is simply an extra measure to insure that our customers are getting the quality they have come to expect from us.<br />
<br />
Each bottle contains 120 capsules and is one months supply.</div>
<br />
<b>CandidaZymes</b><br />
<br />
<div style=\"text-align: justify\" id=\"2607\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"CandidaZymes\" border=\"0\" hspace=\"0\" alt=\"CandidaZymes\" width=\"135\" height=\"137\" src=\"images/CandidaZymes-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2607);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
Candida specific enzymes such as CandidaZymes are a required componant of any yeast infection treatment plan. A proprietary blend specially formulated for strength purity and potentcy, <br />
the active ingredients are specifically designed to both remove sludge fand mucous build up from the digestive tract&nbsp; therefor removing the barriers where yeast organisms hide and proliferate.<br />
<br />
Most of our customers feel positive results in as little as 3 days and report a marked reduction in uncomfortable gas and bloating symptoms. With a clean digestive tract, this specilalized enzyme product can then do its job of&nbsp; breaking down the tough outer walls of these pesky organisms.<br />
<br />
Each bottle contains 120 capsules and is one months supply.</div>', '<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Candida Overgrowth Ruining Her Life</b><br />
<br />
&quot; For years I experienced constant Candida infections localized to my digestive system. This left me bloated, gassy, constipated and sometimes in chronic abdominal pain. I regularly visited a colon therapist who was able to provide me relief for extended periods of time. However, nothing permanent even though I followed his healthy lifestyle reccomendations to a T.<br />
<br />
In the meantime, my colon therapist\'s program was about all I could find that held some promise. Four months ago I added the NHS Candida Cleanse-PAC to my routine and the results have been remarkable. My moods, digestion and sleep have improved using your excellent candida yeast infection treatment products. &quot;<br />
<br />
<b>Nancy m.</b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Anti-Fungal Medications Ineffective</b><br />
<br />
&quot; It was difficult to find natural products for candida cleansing that were effective. My doctor, who does recognize candida as a health issue, put me on prescription anti-fungal drugs. I gave up after 2 weeks due to the side effects and lack of effect on my situation..<br />
<br />
A friend of mine shared Nutritional Health Science with me and I decided to open my mind and give the natural candida cleanse a try. The product specialists were extremely helpful. Almost three months later I feel fantastic and have added even more of your products to my healthy routine. I recommend NHS all the way. &quot;<br />
<br />
<b>Chrissy Samuels</b></div>
<br />', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All Natural Solutions For Guaranteed Success</li>
                <li>Products That You Can Count On</li>
                <li>No Cheap Fillers Or Additives</li>
                <li>Proven Candida Cleanse Treatment</li>
                <li>Full Support From Our Product Specialists</li>
                <li>A Candida Cleanse You Can Count On</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '', '', 'Candida Infections Are On The Rise', 'Symptoms Of Candida Infections', 'Gentle And Natural Candida Cleanse Solutions', 'What Our Customers Are Saying About Our Candida Cleanse', 'Our Commitment To You', '', '', '', 'Candida  Cleanse', 'candida cleanse', 'Stop Candida With Our Powerful Candida Cleanse', 'Candida Infections Can Wreak Havock On Your Health. Why  Suffer The Symptoms Of Candida When Our Candida Cleanse Can Help Return Your Life  Back To Normal.');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2611', '1', 'cholesterol  pac', '<div style=\"text-align: justify\">Our product PACs are designed to save you money and offer maximum benefits. This combination of products work together for best results. Our product PACs are the way to go for discriminating consumers seeking both remarkable health benefits and cost savings. Lower your cholesterol naturally and with no side effects.</div>', '', '229', 'Lower Cholesterol Naturally And Safely Without Side Effects', 'Healthy Lower Cholesterol Solutions', '<div style=\"text-align: justify\"><b>High cholesterol also known as hypercholesterolemia increases your risk factor for strokes, heart disease, heart attacks and diabetes.</b> There are no symptoms associated with high cholesterol, but it, coupled with other disease factors, can cause serious health complications. Too much cholesterol in your blood can cause a buildup of plaque on the walls in your arteries. <br />
<br />
This buildup can cause the walls to narrow and harden and if a blood clot gets lodged in a narrowed artery it can cause a heart attack or stroke. The causes of high cholesterol are multi-factorial and include diet, weight, activity level, the presence of certain diseases and certain medications. You can <b>lower cholesterol naturally </b>by paying attention to all of the below.<br />
<br />
<b>Diet</b><br />
Consuming too many saturated fats and trans fats including high fat meats and dairy products, can increase your blood cholesterol levels.<br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;High cholesterol is associated with a poor diet, being overwerigtht,lack of exercise and certain medications. You can lower cholesterol naturally with proper lifestyle changes and quality dietary supplements&quot;</div>
<b>Weight</b><br />
High cholesterol levels are related to being overweight.<br />
<br />
<b>Exercise</b><br />
Without adequate exercise&nbsp; your cholesterol levels can climb.<br />
<br />
<b>Medications</b><br />
Medications that increase harmful cholesterol levels include diuretics, beta blockers, estrogen, and steroids.</div>', '<div style=\"text-align: justify\">High cholesterol is now considered a national health issue resulting in the mass sale of cholesterol lowering drugs by drug manufacturers. These cholesterol lowering drugs are called statin drugs and have side effects that can be more serious than having high cholesterol itself. Some of the side effects may include<br />
<br />
<table cellspacing=\"25\" cellpadding=\"0\" border=\"0\" align=\"center\">
    <tbody>
        <tr>
            <td>
            <ul>
                <li>Headaches</li>
                <li>Difficulty Sleeping</li>
                <li>Dizziness</li>
                <li>Drowsiness</li>
                <li>Constipation</li>
                <li>Skin Rashes</li>
            </ul>
            </td>
            <td width=\"250\">&nbsp;</td>
            <td>
            <ul>
                <li>Muscle Aches</li>
                <li>Flushing Of The Skin</li>
                <li>Bloating and Gas</li>
                <li>Peripheral Neuropathy</li>
                <li>Cancer</li>
                <li>Dementia</li>
            </ul>
            </td>
        </tr>
    </tbody>
</table>
<br />
For thousands, the side effects are hardly worth it&nbsp; despite the fact that a dangerous medical situation may be at play. People are looking for ways to <b>lower cholesterol naturally</b> and are actively seeking natural cholesterol lowering supplements now more than ever before.<br />
<br />
The Center for Disease Control estimates that at least 12 million Americans will suffer an adverse effect as the direct result of unhealthy cholesterol levels. You don\'t have to be one of those people. The Cholesterol-PAC is an effective and natural cholesterol supplement regime free of negative side effects and can help you lower your cholesterol&nbsp; naturally with safe, well researched and effective natural therapies. Thousands have used our natural cholesterol supplements to achieve their health and wellness goals.&nbsp; You can too.</div>', '<div style=\"text-align: justify\">The Nutritional Health Science Cholesterol Wellness-PAC provides a natural and safe solution that helps lower cholesterol naturally and safely. Finally, healthy cholesterol levels without side effects is now possible!</div>
<br />
<b>CholestoKal</b><br />
<br />
<div id=\"2608\" style=\"text-align: justify\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img width=\"135\" hspace=\"0\" height=\"137\" border=\"0\" src=\"images/CholestolKal-135x137.png\" alt=\"CholestoKal\" title=\"CholestoKal\" /></div>
<br />
<a href=\"javascript:mostrardivid(2608);\"><img src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" alt=\"\" /></a></div>
CholestoKal is an effective natural cholesterol treatment and a forerunner in helping you lower your cholesterol to balanced levels. CholestoKal is a powerful nutritional matrix specially blended in controlled laboratory conditions to provide maximum benefits. CholestoKal, a natural cholesterol treatment, helps achieve healthy cholesterol function, balance and helps promote proper ratios of LDL and HDL cholesterol.<br />
<br />
The ingredients in CholestoKal are specifically chosen to work in natural balance with your body for safe and healthy results. Hundreds of CholestoKal users continue to experience positive results with no side effects. All of these benefits without the risky side effects of statin drugs.<br />
<br />
Each bottle contains 120 capsules and is one months supply</div>
<br />
<b>Whole Food Vitamin-C</b><br />
<br />
<div id=\"2595\" style=\"text-align: justify\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img width=\"135\" hspace=\"0\" height=\"137\" border=\"0\" src=\"images/whole-135x137.png\" alt=\"Whole Food \" title=\"Whole Food\" /></div>
<br />
<a href=\"javascript:mostrardivid(2595);\"><img src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" alt=\"\" /></a></div>
Vitamin-C is an essential nutrient and is a precursor to collagen which is what your body requires to help skin, connective tissue, veins and arteries stay soft and supple. High cholesterol can cause hardening of arterial walls. Vitamin-C should be part of everyones heart healthy regime and can greatly contribute to helping you <b>lower your cholesterol naturally</b>.<br />
<br />
Most vitamin C supplements are synthetic, derived from binding corn starch to a volatile acid. Nutritional Health Science\'s Vitamin-C is a whole food supplement that your body can use. Our Whole Food Vitamin-C is constructed from the Camu Camu Berry and Acerola Cherry, the richest sources of natural Vitamin-C known to nutritional science.<br />
<br />
Each bottle contains a whopping 500 mgs per serving of whole food natural Vitamin-C. Offered in a delicious raspberry powder formula, this healthful product mixes easily with water or juice.</div>
<br />
<b>Omega-3 Fatty Acids</b><br />
<br />
<div id=\"2606\" style=\"text-align: justify\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img width=\"135\" hspace=\"0\" height=\"137\" border=\"0\" src=\"images/Estra%20Strength%20Omega%203%20Fatty%20Acids-135x137.png\" alt=\"Omega-3 Fatty Acids\" title=\"Omega-3 Fatty Acids\" /></div>
<br />
<a href=\"javascript:mostrardivid(2606);\"><img src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" alt=\"\" /></a></div>
Research concludes that Omega-3 Fatty Acids from fish oil, are a necessary part of a heart healthy lifestyle. The American Heart Association endorses the consumption of Omega-3 Fatty Acids to support cardiovascular health and is the perfect natural cholesterol supplement to help you achieve a healthy cholesterol balance. Omega-3 Fatty Acids are a viable natural cholesterol treatment and have also been shown to not only help lower cholesterol but assist with other numerous heart healthy benefits as well:<br />
<br />
<br />
<br />
<br />
<br />
<ul>
    <li>decrease the risk of abnormal heartbeats (arthmyias)</li>
    <li>decrease high triglycerides</li>
    <li>slow down the rate of the growth of arterial plaque</li>
</ul>
<br />
<b>Note: all of the heart healthy research has been conducted on fish oil not flaxseed oil.</b><br />
<br />
Caution! An independent lab recently tested ten different fish oil products including fish oil from Puritans Pride, Now Foods, GNC nutrition stores and New Life. Each fish oil product was found to contain high levels of cancer causing PCBs.<br />
<br />
Nutritional Health Science\'s pure fish oil formula is completely free of any environmental toxins or additives. We utilize a specialized laboratory procedure called molecular distillation which insures that our fish oil is the heart healthy product you have come to depend on.<br />
<br />
Our Omega-3 Fatty Acids are extra strength and provided in an easy to swallow soft gel. With ample amounts of the active components in fish oil, EPA and DHA, our specialized formula offers numerous health benefits for both adults and children alike. With no &quot;fishy&quot; after taste.<br />
<br />
Each bottle contains 120 extra-strength softgels combined with Vitamin-E to stop oxidation in the bloodstream. Each bottle is one months supply.</div>
<br />
<b>SerraPeptase Biologic Enzymes </b><br />
<br />
<div id=\"2597\" style=\"text-align: justify\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img width=\"135\" hspace=\"0\" height=\"137\" border=\"0\" src=\"images/Serrapeptase%20Biologic%20Enzymes-135x137.png\" alt=\"SerraPeptase Biologic Enzymes\" title=\"SerraPeptase Biologic Enzymes\" /></div>
<br />
<a href=\"javascript:mostrardivid(2597);\"><img src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" alt=\"SerraPeptase Biologic Enzymes\" /></a></div>
Serrapeptase is an anti-inflammation systemic enzyme. Hundreds of European Studies have proven that this biologic enzyme is effective at fighting disease causing inflammation.<br />
<br />
How is inflammation related to high cholesterol? <br />
<br />
When the inner arterial walls are inflamed the body lays plaque-causing cholesterol on them in an attempt to reduce the inflammation.<br />
<br />
<br />
<br />
<br />
<b>Causes of Inflammation</b><br />
<br />
Inflammation can be caused by many factors including prescription medications, drug use, alcohol use, heredity, lack of exercise&nbsp; and a poor diet.<br />
<br />
<b>Reducing Inflammation</b><br />
<br />
Serrapeptase Biologic Enzymes are highly effective at reducing inflammation. Our serrapeptase is enterically coated passing through the stomach untouched to maximize bio-availability via the intestines. In addition, Nutritional Health Science has utilized a patented delivery process (BBPS Technology) in order to increase bio-availability, enzyme stability and absorption.<br />
<br />
Each bottle contains 120 capsules and is one months supply.</div>', '<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Long Time Cholesterol-PAC Customer</b><br />
<br />
&quot;I\'ve been using the NHS Cholesterol- PAC for almost four years and my health has never been better. At first I was a bit suspicious as my nurse abruptly explained that nothing natural could ever lower my high cholesterol. It took me a couple weeks but I finally decided to give the Cholesterol-PAC a try. <br />
<br />
I was nervous because my cholesterol was off the charts at 80 points out of range and I didn\'t think trying to lower my cholesterol naturally would help. I was more than pleased three months later when my cholesterol was at a healthy balance. I now have a new health care provider who is open to natural therapies. He just tells me to keep on doing what I\'m doing because it ain\'t broke. I plan on it for years to come.&quot;<br />
<br />
<b>Angie Dewitt</b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Not Interested In Chemicals And Side Effects</b><br />
<br />
&quot; At age fifty I felt like a ticking time bomb. I was overweight, out of breath, exhausted and couldn&rsquo;t seem to eat right no matter how hard I tried. My yearly examination was a wake up call. My doctor was alarmed at my unhealthy cholesterol and mentioned something about a heart attack waiting to happen. I sobered up pretty quick and decided I needed to make some changes. <br />
<br />
I started taking the statin drug he gave me and within two weeks time experienced almost full body muscle pain. I tossed it in the can and thought possibly natural cholesterol solutions could help me balance out my system. The Product Specialists at Nutritional Health Science seemed pretty knowledgeable. I decided to try the entire Cholesterol -PAC. Six months later I\'m doing much better and have achieved lower cholesterol and without side effects. I\'m thrilled&quot;<br />
<br />
<b>Broan Davis</b></div>', '<table width=\"727\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">
    <tbody>
        <tr>
            <td height=\"178\" colspan=\"2\" style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All Natural Solutions For Guaranteed Success</li>
                <li>Products That You Can Count On</li>
                <li>No Cheap Fillers Or Additives</li>
                <li>Zero Negative Side Effects</li>
                <li>Lower Cholesterol Naturally</li>
                <li>Health Benefits You Can Feel</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img src=\"images/logo45.jpg\" alt=\"\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '<br type=\"_moz\" />', '<br type=\"_moz\" />', '<br type=\"_moz\" />', 'What High Cholesterol Means For You', 'Side Effects Of Cholesterol Medications', 'Safe And Natural Solutions For Lower Cholesterol Levels', 'What Our Customers Are Saying', 'Our Promise To You', '', '', '', '', 'lower cholesterol naturally', 'The Best Way To Lower Cholesterol', 'Lower Cholesterol Naturally With A Proven Supplement Program Designed to Not Only Lower Cholesterol But Protect Cardiac Health As Well.');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2612', '1', 'immune system pac', '<div style=\"text-align: justify\">Our product PACs are designed to save you money and offer maximum benefits. This combination of products work together for best results. Our product PACs are the way to go for discriminating consumers seeking both remarkable health benefits and cost savings.</div>', '', '313', 'Improve Immune System Function With Highly Effective Natural Products', 'Improve Immune System Function', '<div style=\"text-align: justify\">
<p>Your immune system is comprised of numerous cell types that are dependent on one another; one cell can&rsquo;t function without the help of the other, referred to by science as cellular communication. They co-exist with one another to create natural immunity against a myriad of pathogens and conditions. This in a naturally balanced and healthy immune system.</p>
<p>Many of the cells of your immune system have single and specialized functions. Some cells engulf and kill bacteria; others kill parasites or invading viral cells; others kill cancer cells. For these specialized cells to remain active and do their job, others cells are needed to communicate with them. These include T-helper cells, which provide immune system activation secretions such as cytokines, lymphokines, and interleukins.</p>
<p>It\'s important to note that immune system vitamins do not provide immune protection as advertised as they are simply chemical compounds. All cells of your body including the cells of your immune system are meant to thrive on whole food and organic nutrition. NOT synthetic vitamins. Strengthen and <b>enhance immune system</b> structure and function the natural way with whole food and natural supplements specially designed to help regulate and balance your immune system. A healthy immune system is quite abtainable with proper lifestyle changes and targeted natural nutritional products.<br />
&nbsp;</p>
</div>', '<div style=\"text-align: justify\"><b>Bone Marrow:</b> All cells of your immune system are derived from bone marrow. Bone marrow derived stem cells either mature into full blown mature immune cells or into cells that migrate out to mature elsewhere in your body.<br />
<br />
<b>Thymus:</b> The function of your thymus is to produce mature T-cells. Immature T-cells that migrate into the thymus either mature into healthy immune system cells or are identified as cells that will cause an autoimmune response and are eliminated. That is in a healthy and properly functioning immune system. <br />
<br />
<b>Spleen:</b> The spleen filters blood. It\'s made up of B-cells, T-cells, macrophages, dendritic cells, natural killer cells and red blood cells. The spleen captures foreign materials from your blood, destroys old red blood cells and initiates an immune response when needed.<br />
<br />
<b>Lymph Nodes: </b>Lymph nodes act as a filter for immunologic fluid called lymph. Lymph nodes are scattered throughout your body and are composed of numerous and varied immune system cells. Their job is to drain fluids from our bodies tissues as well as capture bad cells and eliminate them. &nbsp;
<p>&nbsp;</p>
</div>', '<div style=\"text-align: justify\">Our immune system can fail us due to a variety of reasons. Poor diet is a huge factor. Heredity does play a definitive role, as do environmental factors such as an overload of environmental toxins. Obesity plays a lofty role combined with stress, depression and other neurological imbalances. Enhancing immune systems can prove challenging in these situations,. However, it can be done effectivley and naturally.<br />
<br />
Immune systems express dysfunction in three major ways; a depressed, hyperactive, or autoimmune immune system.<br />
<br />
<div style=\"text-align: left; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">Immune System Stressors:
<ul>
    <li>Poor diet</li>
    <li>Heredity</li>
    <li>Environmental Toxins</li>
    <li>Obesity</li>
    <li>Stress</li>
    <li>Depression</li>
</ul>
</div>
<b>Depressed Immune Systems:</b> A depressed immune system can express itself in a variety of ways. Constant colds and flu are common in our high stress society. Pneumonia and other respiratory illnesses are indicative of a depressed immune system as well as inflammation and constant urinary tract infections. The most profound symptoms of a depressed immune system are cancer, HIV/AIDS and Hep-C. <br />
<br />
<b>Autoimmune Immune Systems: </b>Autoimmunity also expresses itself in a variety of ways. Because the link between autoimmune disease and heredity is so solid, it\'s thought that autoimmune systems can be genetic. <br />
<br />
Autoimmune diseases can express themselves as Multiple sclerosis,Type 1 Diabetes, Rheumatoid arthritis, Endometriosis, Graves&rsquo; disease, Hashimotos disease, Chrons disease and Lupus. To name a few.<br />
<br />
<b>Hyperactive Immune Systems:</b> Hyperactive immune systems express themselves as asthma, allergies and skin rashes. Autism has been linked to hyperactive immune systems.</div>', '<div style=\"text-align: justify\">Medical science has little to offer with regards to balancing or restoring the health of a malfunctioning immune system. to that of a healthy immune system. Drugs such as methyltrexate are used for autoimmune disorders such as lupus, rheumatoid arthritis and Crohn\'s disease. Methyltrexate works by suppressing the self-attacking immune system leaving your body wide open for colds, flu, pneumonia and cancer. <br />
<br />
Cancer patients are often given immune system building drugs in an effort to enhance immune system function. However, the side effects are great and the clinical outcomes poor. Those suffering the effects of hyperimmunity can count on regular bouts of steroids in an effort to cease inflammation associated with related conditions. Inflammation is also a culprit in many autoimmune diseases. The long term side effects of oral steroid use (cortisone, hydrocortisone, and prednisone) include glaucoma, fluid retention, increased blood pressure, mood swings, weight gain, cataracts, increased risk of infections and slow wound healing. <br />
<br />
<b>Fortunately, nature has provided us with an abundance of natural immune system modulators, or balancers, that are highly effective for enhancing the immune system and result in no negative side effects at all. These natural immune system modulators are effective at balancing an improperly functioning immune system. Nutritional Science has proven that fact again and again.</b></div>
<br />
<b>Aloe Immune Matrix</b><br />
<br />
<div id=\"2599\" style=\"text-align: justify\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img width=\"135\" hspace=\"0\" height=\"137\" border=\"0\" src=\"images/Aloe%20Immune%20Complex-135x137.png\" alt=\"Aloe Immune Matrix\" title=\"Aloe Immune Matrix\" /></div>
<br />
<a href=\"javascript:mostrardivid(2599);\"><img src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" alt=\"\" /></a></div>
The positive impact that aloe vera has on immune system function is well-documented and irrefutable. While aloe offers generalized health benefits, aloe vera is most noted to assist by sucessfuly enhancing immune system function to that of a healthy immune system. <br />
<br />
The magic of aloe vera lies in special long chain carbohydrates called polymannans. At one time science thought that cellular communication took place via protein molecules embedded in cell surfaces, but the study of aloe has proven this theory wrong; cellular communication takes place via the combination of polymannan/protein molecules imbedded in the cell surfaces of your body. The polymannans are crucial as the cells of your immune system must be able to communicate in order to function properly.<br />
<br />
In fact, intravenous solutions of polymannans are used in cats to treat feline leukemia.<br />
<br />
Not all aloe vera products have been constructed to retain these valuable immune system activation molecules. Here at Nutritional Health Science, every batch of aloe is analyzed to insure that therapeutic amounts of these health specific carbohydrates are present. This is an absolute requirement for your immune system health. It&rsquo;s important to note that our aloe vera product is certified organic and also is certified by the International Aloe Science Council.<br />
<br />
<br />
Each bottle contains 30 servings of aloe in a powder format that is easy to mix with juice or water. Each bottle is one months supply.</div>
<br />
<b>Medicinal Mushroom Broad Spectrum Complex</b><br />
<br />
<div id=\"2616\" style=\"text-align: justify\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img width=\"135\" hspace=\"0\" height=\"137\" border=\"0\" src=\"images/Broad%20Spectrum%20Mushroom%20Complex-135x137.png\" alt=\"Medicinal Mushroom Broad Spectrum Complex\" title=\"Medicinal Mushroom Broad Spectrum Complex\" /></div>
<br />
<a href=\"javascript:mostrardivid(2616);\"><img src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" alt=\"\" /></a></div>
Medicinal mushrooms have been used for thousands of years in traditional East Asian medicine to improve immune system function. In the past thirty years rigorous research and subsequent scholarly works have been published giving medicinal mushrooms their now world-renowned status as effective immune system supplement and immune system modulator.<br />
<br />
Researcher Paul Stanents writes, &ldquo;Science has only recently confirmed what ancient cultures have known for centuries. Certain species of mushrooms have within them some of the most potent medicines found in nature. We know their cellular components can profoundly improve the quality of human health.&rdquo;<br />
<br />
The key to a successful medicinal mushroom formula is a broad spectrum formula. Science has validated the immune system support benefits of over 20 mushroom species. Each species offers support for one or more human biological functions such as blood sugar control, adrenal gland support, or chemo protective qualities.<br />
<br />
Nutritional Health Science remains on the cutting edge of nutritional technology with a broad spectrum organically cultivated mushroom formula which offers the recorded health benefits of nine different species of medicinal mushrooms proven to have immune system&nbsp; support properties.<br />
<br />
Our Medicinal Mushroom Broad Spectrum Complex is privately cultivated under controlled laboratory conditions to provide superior therapeutic immune system strength. Hundreds of thousands of people world wide have reaped impressive health benefits via the use of medicinal mushrooms as part of their immune system health regime.<br />
<br />
Each bottle contains a whopping 240 capsules. Each bottle is one months supply.</div>
<br />
<b>Optimal Cell Support</b><br />
<br />
<div id=\"2603\" style=\"text-align: justify\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img width=\"135\" hspace=\"0\" height=\"137\" border=\"0\" src=\"images/Optimal%20Cell%20Support-135x137.png\" alt=\"Optimal Cell Support\" title=\"Optimal Cell Support\" /></div>
<br />
<a href=\"javascript:mostrardivid(2603);\"><img src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" alt=\"\" /></a></div>
The success to this immune system formula lies in the specialized carbohydrate molecules that are required for enhanced cellular communication. These molecules are important for a balanced and well functioning immune system. Expertly extracted from the bark of the birch tree, the ingredients in Optimal Cell Support have provided help and hope to thousands suffering from a wide variety of immune system difficulties.<br />
<br />
Famed Lakers basketball player, Magic Johnson has depended upon the natural ingredients found in Optimal Cell Support for his battle against HIV/AIDS. <br />
<br />
This revolutionary dietary supplement has proven profound for him and the state of his health and has kept him going by leaps and bounds. Optimal Cell Support can prove just as valuable to you as well.<br />
<br />
<br />
Immune support continues to be the front runner and focus of study in modern nutritional science. Nutritional Health Science is committed to supporting the body&rsquo;s natural immune system wellness and function.<br />
<br />
Optimal Cell Support has proven effective for a wide range of immune system issues. Optimal Cell Support is 100% natural and Optimal Cell Support delivers. <br />
<br />
Each bottle contains 60 servings in a loose powder format. Optimal Cell Support mixes easily with water or juice.</div>', '<div style=\"text-align: justify; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; padding-right: 5px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 5px\"><b>Was Living A Cancer Nightmare</b><br />
<br />
&quot;A diagnosis of breast cancer was sobering enough. However, there was nothing on this earth that would have prepared me for the treatment. First was the fine needle biopsy deep into both my breasts. At first a lumpectomy was discussed and I thought to myself I could live through that. However, things quickly changed and they decided to take both of my breasts. About 5 days after my breast removal I developed a resistant bacterial infection called MRSA. My chemotherapy was delayed until this infection was gone, about a month later.<br />
<br />
It was time to start my chemo and radiation. The second chemo treatment threw me down in a way I can&rsquo;t describe. At this point I thought I would truly die, not afraid of the cancer, but afraid of what chemotherapy was doing to me. I started researching things I could do to help myself and found the Immune System-PAC. It just made sense.<br />
<br />
I started taking the Immune System-PAC right away and within a week I could feel a difference. I felt stronger and was not as nauseated. To make a long story short, it has been over a year since I started the Immune-PAC and I\'ll take it until I\'m old and gray. It got me through chemo, 2 breast reconstructive surgeries and my appendix surgery as well. I don&rsquo;t know of anyone who could make it through all that in such a short time. I tell everyone about Nutritional Health Science. Thanks for giving me my life back.&quot;<br />
<br />
<b>MARIAM LAWREY</b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; padding-right: 5px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 5px\"><b>Low White Blood Cell Count</b><br />
<br />
&quot;The immune support-PAC has been almost magical for me. I have chronic liver issues, asthma, allergies and always have a cold. Due to my liver issues my white blood cell count is always low. I knew I needed an immune system enhancer of some type as I never have been truly healthy.<br />
<br />
After only three months on the entire immune- PAC, my white blood cell count tested normal for the first time in a long time and my liver test showed a major improvement. Your product specialists are extremely kind and very knowledgeable. They helped me three different times and for that I\'m thankful. Keep up the good work for me and the rest of your customers. We appreciate it more than words can tell. I\'m a believer.&quot;<br />
<br />
<b>JEB HOOK </b></div>', '<table width=\"727\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">
    <tbody>
        <tr>
            <td height=\"178\" colspan=\"2\" style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All Natural Solutions For Guaranteed Success</li>
                <li>Products That You Can Count On</li>
                <li>No Cheap Fillers Or Additives</li>
                <li>Enhance Immune System Function</li>
                <li>Full Support From Our Product Specialists</li>
                <li>Health Benefits You Can Feel</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img src=\"images/logo45.jpg\" alt=\"\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '<br type=\"_moz\" />', '<br type=\"_moz\" />', 'Immune System Function', 'The Organs Of The Immune System', 'When Our Immune System Fails Us', 'Safe And Natural Solutions To Improve Immune System Function', 'What Our Customers Are Saying About Our Immune System Enhancers', 'Our Commitment To You', '', '', '', 'improve immune system', 'Improve Immune System Guaranteed | Cutting Edge Nutritional Products', 'Improve Immune System With Properly Formulated Immune System Products. Highly Beneficial For All Types Of Immune System Issues. We Guarantee It');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2613', '1', 'Osteo Pac', '<div>Our product PACs are designed to save you money and offer maximum benefits. This combination of products work together for best results. Our product PACs are the way to go for discriminating consumers seeking both remarkable health benefits and cost savings.</div>', '', '539', 'Natural Treatment For Osteoporosis', 'Natural Bone Health', '<p>Decreased bone density and co-occurring fractures result in more deaths in men and women combined than breast, ovarian, and prostate cancer combined. According to the Mayo Clinic, fractures occur most often in the spine and hip and are the most frequent complication of osteoporosis. In many cases, spinal fractures may occur even if there isn\\\'t a fall involved. Bones in the back may become weakened and start to compress or even collapse. Spinal compression fractures can cause severe pain and require long recovery times.</p>
<p>Osteoporosis is responsible for over 1.5 million fractures per year, with hip fractures the greatest cause of death thereafter. One in five people will not live more than one year after a hip fracture. Fifty percent of those with a hip fracture will require permanent assistance with walking and 28% will require long-term care. Sadly, current medical <b>treatment for osteoporosis </b>offers no permanant solution to this this problem and has actually been proven harmful.</p>', '<div>The medications Fosamax, Moniva, and Actonel belong to a class of drugs called biophosphonates. They are the leading drugs prescribed for the <b>treatment for osteoporosis</b>. In addition to having many side effects, these drugs give the illusion that you are building fresh new bone tissue. Nothing is further from the truth and these drugs in no way shape or form produce healthy bones.<br />
<br />
<div>&quot;Medications for the Treatment for Osteoporosis Actually Weaken Your Bones&quot;</div>
Two of the body\\\'s specialized healthy bone cells are the osteoblast and the osteoclast. The osteoblast is the new bone tissue cell. The osteoclast replaces aging, stressed, or dead bone tissue. Biophosphanate drugs kill the action of the osteoclast. What this means is that old dead bone tissue is not removed, nor is it replaced. Bone density tests will show an increase in bone density but they <b>will not show that the bones are made up of rotten and dead bone tissue.</b></div>', '<div><b>The side effects of &ldquo;bone building&rdquo; drugs are varied and in some cases life threatening.</b> Side effects may include nausea, abdominal pain, flatulence, diarrhea, ulceration of the esophagus, skin rashes, and generalized muscle pain. Fosamax is now linked to increased fractures of the femur, or thigh bones as commonly known.<br />
<br />
<b>Probably, the most life impacting osteo drug side effect is osteonecrosis.</b> This means the jawbone literally rots away. Otherwise known as &ldquo;Phossy Jaw,&rdquo; symptoms include extreme jaw pain, loose teeth, abscesses and exposed inner bone tissue. Osteonecrosis is difficult to treat medically or naturally. As published in the Journal of the American Medical Association, oral surgeons are at a loss as to how to treat this condition as surgical bone grafts cannot adhere to rotting bone tissue. the bottom line, you are stuck with with rotting bones and with no where to turn.</div>', '<div><b>Americans consume the most dairy products (purported to be rich in calcium) of any civilized nation in the world and also consume the most supplemental calcium of any country in the world. Americans also have the highest rate of bone fractures in the world and lack of calcium is not the reason. Calcium as a bone health supplement on its own will not maintain bone health. <br />
<br />
Factors needed to maintain good bone health are; healthy diet, exercise, sunshine (Vitamin-D) and a high quality bone health supplement.<br />
<br />
Our OSTEO-PAC provides all of the easy to absorb nutrients required for optimal bone health. </b></div>
<br />
<b>Whole Food Vitamin-C</b><br />
<br />
<div style=\"text-align: justify\" id=\"2595\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"Whole\" border=\"0\" alt=\"Whole\" width=\"135\" height=\"137\" food=\"\" src=\"images/whole-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2595);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
Vitamin-C is required for numerous vital bodily functions including the production of collagen. Collagen is the first step in producing skin and bone tissue. This makes Vitamin-C a valuable bone health supplement. While bone is thought of as a hard rocky substance, it actually begins life as a soft tissue in the form of collagen.<br />
<br />
Our Whole Food Vitamin-C is a non-synthetic and non-chemically derived dietary supplement in a form that the body can easily use. Our Whole Food Vitamin-C is made from the richest sources of Vitamin-C known to science: the Camu Camu berry and the Acerola Cherry.<br />
<br />
Our Whole Food Vitamin-C formula is a delicious raspberry flavored loose powder that is easy to mix with water or juice and provides a whopping 500 mgs of natural Vitamin-C per serving and greatly contributes to you having healthy bones and first and foremost your friend and&nbsp; ally in the natural<b> treatment for osteoprosis</b> .
<div style=\"clear: both\">&nbsp;</div>
</div>
<br />
<br />
<b>OsteoPlus</b><br />
<br />
<div style=\"text-align: justify\" id=\"2602\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"OsteoPlus\" border=\"0\" alt=\"OsteoPlus\" width=\"135\" height=\"137\" src=\"images/OsteoPlus-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2602);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
Substantial amounts of Vitamin-D and Vitamin-K are required for optimal bone health and are vital bone health supplements. OsteoPlus provides ample amounts of both vitamins in a form that your body can use.<br />
<br />
OsteoPlus contains magnesium, phosphorous, zinc, manganese, and silica as well as natural minerals from Whole Bone Extracts (WBE) otherwise known as hydroxyapatites which have been well researched by nutritional science and shown to improve bone health. These natural sourced minerals are the most natural <b>treatments for osteoporosis </b>know to modern nutritional science. <br />
<br />
Each bottle contains 120 bio-available bone health capsules. One bottle is one months supply.
<div style=\"clear: both\">&nbsp;</div>
</div>
<br />
<br />
<b>Omega-3 Fatty Acids</b><br />
<br />
<div style=\"text-align: justify\" id=\"2606\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"Omega-3\" border=\"0\" alt=\"Omega-3\" width=\"135\" height=\"137\" fatty=\"\" src=\"images/Estra%20Strength%20Omega%203%20Fatty%20Acids-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2606);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
Minerals require saturated fats in order to be absorbed by your body. While saturated fat has a bad reputation, there are healthful saturated fats that come in the form of Omega-3 Fatty Acids, otherwise known as fish oil. Science has shown that fish oil is associated with cardiac and neurological health, but it \\\'s less commonly known that fish oil (or saturated fat) is a valuable bone health supplement.<br />
<br />
Omega-3 Fatty Acids provide extra strength benefits of EPA and DHA, the active componants in fish oil we require for optimal health.<br />
<br />
Beware of lessor products: An independent laboratory tested fish oil products from 10 leading supplement manufacturers including GNC, Twin Labs, Puritans Pride and Now Foods. All of these brands can be found at your local health food store. All of the brands tested were found to contain cancer causing PCB&rsquo;s&nbsp; which is due to the fact that our oceans are polluted and the fish absorb these chemicals and store them in their body&rsquo;s tissues. In turn, we ingest these chemicals when consuming fish or fish oil supplements.<br />
<br />
Nutritional Health Science Fish Oil is molecularly distilled in a proprietary lab process that insures our fish oil is chemical free. We test every batch twice to insure that our customers are getting the top quality Omega-3 Fatty Acid\\\'s they deserve for their good health. Our fish oil provides a double strength dose in a single strength serving. Each bottle contains 120 easy to swallow softgel capsules and is a one months supply of pure fish oil.
<div style=\"clear: both\">&nbsp;</div>
</div>', '<div><b>Early Intervention For Bone Health</b><br />
<br />
&quot;When my physician told me I had thinning bones and was on my way to osetoprosis, my head started spinning as if I were in my own little whirlwind. I was scared to death as I\\\'ve seen what osteoporosis has done to others. It was strongly suggested that I take bone building drugs, exercise and take calcium supplements. I didn&rsquo;t commit to anything that day as I wished to examine my options and choose the best course for me. After some thought and discussion I decided against any medications out of fear of the horrible side effects I was reading about.<br />
<br />
I decided to try diet, exercise and bone health supplements. I stumbled upon the Osteo -PAC at NHS. It all seemed to make sense and the porduct sepcialist was extremely knowledgeable. I stayed the course and 10 months later I had an improvement in my bone strength. While I knew the bone health supplements I was taking had been a huge help, I believe it was my well rounded and proactive approach to my bone health that ultimately made the biggest difference. With that said, I\\\'ll continue taking the Osteo-PAC as part of my new and healthy lifestyle.&quot;<br />
<br />
<b>Millie Houst</b></div>
<br />
<div><b>Sub Standard Supplements Didn&rsquo;t Help</b><br />
<br />
&quot; To date, I can\\\'t count the plethora of minerals and other bone health supplements I\\\'ve taken in an effort to help remediate my bone loss. I&rsquo;m not kidding when I say I have spent thousands. I ran across Nutritional Health Science. They seemed to know what they were talking about. I decided to call to learn more.<br />
<br />
It was enjoyable to speak to an intelligent person who was seemingly dedicated to helping a customer. I took up almost an hour of her time and she didn&rsquo;t seem to mind discussing&nbsp; this with me. Since I\\\'ve been taking the Osteo-PAC I have an overall sense of just feeling better. I can tell when I\\\'m exercising that my bones somehow just feel better/stronger. I look forward to my next bone density test as I\\\'m certain these products have helped..&quot;<br />
<br />
<b>Sandra W.</b></div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All Natural Solutions For Guaranteed Success</li>
                <li>Products That You Can Count On</li>
                <li>No Cheap Fillers Or Additives</li>
                <li>Zero Negative Side Effects</li>
                <li>Full Support From Our Product Specialists</li>
                <li>Health Benefits You Can Feel</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '', 'The Ravages Of Osteoporosis', 'Fosamax, Boniva And Actonel Weaken Your Bones', 'Osteonecrosis Or “Phossy Jaw” Direct Result Of Medical Treatment For Osteoporosis', 'Safe And Natural Solutions', 'What Our Customers Are Saying', 'Our Commitment To You', '', '', 'Treatment For Osteoporosis', 'treatment for osteoporosis', 'Support Bone Health With Natural Treatment For Osteoporosis', 'Natural Treatment For Osteoporosis Can Prove Effective Without The Unwanted Side Effects Such As Bone fractures And Jaw Bone Death From Frequently Prescribed Osteo Drugs.');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2614', '1', 'Prostate  pac', '<div style=\"text-align: justify\">Our product PACs are designed to save you money and offer maximum benefits. This combination of products work together for best results. Our product PACs are the way to go for discriminating consumers seeking both remarkable health benefits and cost savings.</div>', '', '233', 'Benign Prostatic Hyperplasia Effects Millions: But It Doesn\'t Have too', 'Healthy Prostate Support', '<div style=\"text-align: justify\"><b>Most men enjoy good prostate health into their late 40&rsquo;s or early 50&rsquo;s. After that, the majority suffer the symptoms of Benign Prostate Hyperplasia (BPH), or enlarged prostate gland.</b><br />
<br />
Symptoms usually begin with that annoying nightly trip or two to the bathroom. Most men don\'t suspect that this is the beginning of further complications to come. In the next stage, it\'s difficult to start a stream of urine regardless of how urgently you need to go. Urinating becomes a strain and the need to urinate is more frequent, interrupting both daily productivity and night time rest. Most men with BPH never have the feeling that they have completely emptied their bladder which cin turn auses continual discomfort.<br />
<br />
An incompletely emptied bladder is prone to frequent urinary tract infections. Other serious complications can occur over time including bladder stones, blood in the urine and acute urinary retention which requires surgery to empty the bladder. Another symptom that occurs in advanced stages of BPH is loss of normal sexual functioning, adding emotiional stress to the situation.<br />
<br />
The medical community considers BPH a &quot;normal&quot; part of aging and doesn&rsquo;t have a solid explaination as to why this phenomenon occurs.</div>', '<div style=\"text-align: justify\"><b>The class of drugs called alpha blockers are successful prostate treatment for many. These drugs include Flomax, Proscar, Cardura, and Avodart. However, they do not work for all men and there is growing concern about the side effects associated with these drugs. The most common reported side effects are:</b><br />
<br />
<b>CARDURA:</b>
<ul>
    <li>Dizziness</li>
    <li>Fatigue</li>
    <li>Edema (swelling, water weight)</li>
    <li>Difficulty Breathing</li>
    <li>Low Blood Pressure</li>
</ul>
<br />
<br />
<b>AVODART:</b>
<ul>
    <li>Low Sex Drive</li>
    <li>Impaired Libido</li>
    <li>Swelling of the Breasts</li>
</ul>
<br />
<br />
<b>PROSCAR:</b>
<ul>
    <li>Erectile Dysfunction</li>
    <li>Abnormal Ejaculation</li>
    <li>Breast Enlargement</li>
</ul>
<br />
<br />
<b>FLOMAX:</b>
<ul>
    <li>Abnormal Ejaculation</li>
    <li>Runny Nose</li>
    <li>Dizziness</li>
    <li>Body Pain</li>
    <li>Sore Throat</li>
    <li>Runny Stools</li>
</ul>
<br />
<br />
<b>In some cases, the side effects are worse than the enlarged prostate itself.</b></div>', '<div style=\"text-align: justify\"><b>Fortunately there are viable and safe alternatives to relieve the symptoms of BHP that have proven effective for thousands of men worldwide, without the negative side effects of prescription drugs. At Nutritional Health Science, countless gentlemen have relieved the symptoms of BPH using the combination of products listed below.</b></div>
<br />
<b>ProstaKare</b><br />
<br />
<div style=\"text-align: justify\" id=\"2601\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"ProstaKare\" border=\"0\" hspace=\"0\" alt=\"ProstaKare\" width=\"135\" height=\"137\" src=\"images/ProstaKare-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2601);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
ProstaKare is a highly effective natural solution for relief of the embarrassing symptoms of BPH. Produced under controlled laboratory conditions, ProstaKare contains all-natural and highly potent saw palmetto oil. Our saw pametto oil is at an unheard of 90% active compounds per serving and is free of toxins and contaminants.<br />
<br />
ProstaKare contains no additives or fillers and provides maximum dosages of health promoting ingredients per serving.<br />
<br />
ProstaKare is packaged in an easy to swallow soft gel which is immediately bio-available and usable to your system. Nutritional Health Science is at the cutting edge of nutritional technology and ProstaKare provides lasting benefits in a 100% natural formula that is safe and without side effects. Natural enlarged prostate treatments have never been more effective.<br />
<br />
Each bottle contains 120 softgel capsules and each bottle is one months supply.</div>
<br />
<b>Serrapeptase Biologic Enzymes</b><br />
<br />
<div style=\"text-align: justify\" id=\"2597\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"Serrapeptase Biologic Enzymes\" border=\"0\" hspace=\"0\" alt=\"Serrapeptase Biologic Enzymes\" width=\"135\" height=\"137\" src=\"images/Serrapeptase%20Biologic%20Enzymes-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2597);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
Inflammation is the root cause of countless diseases and disease processes, including BPH. An inflammed prostate is responsible for many of the symptoms of BPH including frequent urination and night time urgency. Our pharmaceutical grade Serrapeptase Biologic Enzymes are specifically formulated to ease inflammation.<br />
<br />
Serrapeptase Biologic Enzymes do not cause stomach upsets like other enzymes and are an integral part of your healthy prostate plan. Our scientifically formulated Serrapeptase Biologic Enzymes utilizes a patented bio-delivery process that insures maximum absorption and bio-availability. Enteric coated, our Serrapeptase Biologic Enzymes bypass your stomach during the digestive process and are quickly absorbed by the intestines for immediate use by your body.<br />
<br />
This patented process insures maximum results for all of our clients. <br />
<br />
Each bottle contains 120 capsules and each bottle is one months supply.</div>', '<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Prostate and Frequent Urination</b><br />
<br />
&quot;My whole family has been into alternative health practices for most of my life and with great success. My mother hardly took us to the doctor for any reason unless we were bleeding or had broken bones. I\'m fortunate as I\'ve had no reason to take medications for any reason my entire life. <br />
<br />
However, at age 53 my prostate started to talk back to me. I was getting up about three times per night and felt pretty tired during the day. I knew early intervention was the key and that I didn\'t want to take prescription medications. I got lucky right off the bat and found the Prostate-PAC. It took about six weeks to kick in for me and things are much better.&quot;<br />
<br />
<b>JASON K.</b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 10px; background-color: rgb(239,245,250); padding-left: 10px; padding-right: 10px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 10px\"><b>Natural Therapy for Enlarged Prostate</b><br />
<br />
&quot;It&rsquo;s unfortunate that I took so long to try other therapies for my enlarged prostate. I tried a couple of the prostate medications. While they did work, the side effects weren\'t worth it. The Prostate-PAC has been the answer to my prayers. I\'ll continue using it as the results have been phenomenal.&quot;<br />
<br />
<b>JEF CHASEY</b></div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All Natural Solutions For Guaranteed Success</li>
                <li>Products That You Can Count On</li>
                <li>No Cheap Fillers Or Additives</li>
                <li>Zero Negative Side Effects</li>
                <li>Full Support From Our Product Specialists</li>
                <li>Health Benefits You Can Feel</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '', '', 'The Complications Of Benign Prostatic Hyperplasia', 'Medications Used To Treat Benign Prostatic Hyperplasia', 'Safe And Natural Solutions', 'What Our Customers Are Saying', 'Our Commitment To You', '', '', '', '', 'benign prostatic hyperplasia', 'Benign Prostatic Hyperplasia', 'Benign Prostatic Hyperplasia Is More Common Than You Think. Find Solutions Naturally With No Side Effects And Remarkable Results');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2615', '1', 'rheumatoid pac', '<div style=\"text-align: justify\">Our product PACs are designed to save you money and offer maximum benefits. This combination of products work together for best results. Our product PACs are the way to go for discriminating consumers seeking both remarkable health benefits and cost savings.</div>', '', '258', 'Natural Rheumatoid Arthritis Treatment', 'Wholistic Rheumatoid Arthritis Treatments', '<div style=\"text-align: justify\"><b>Rheumatoid arthritis (RA) is classified as an autoimmune disease. To date, medical science has no explanation as to why or how this happens, nor how to heal this disease. All that can be done is to take action to lessen the symptoms of Rheumatoid arthritis pain and discomfort.</b><br />
<br />
<div style=\"text-align: center; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; width: 250px; padding-right: 5px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52,118,150); margin-left: 10px; font-size: 13px; padding-top: 5px\">&quot;Rheumatoid Arthitis Drugs Have Serious Side Effects&quot;</div>
Certain medications can help reduce the inflammation in joints to relieve pain or slow down joint damage. In many cases even these strategies are limited, as ongoing joint damage will require surgery down the line. According to the Mayo Clinic, drugs used to treat RA have serious complications over the long haul. If you are an RA sufferer, you may be familiar with some of the more damaging effects of RA drugs:<br />
<br />
<b>NSAIDS: </b>Non-Steroidal Anti-Inflammatory Drugs. These are prescribed to provide Rheumatoid arthritis pain relief. Over the counter versions include Advil, Motrin and Aleve. Side effects may include ear ringing, easy bruising, ulcers, heart problems and kidney damage. <br />
<br />
<b>Steroids:</b> Prednisone and methylprednisolone are prescribed to reduce inflammation, pain&nbsp; and joint damage. Long term side effects of these drugs may include bruising, osteoporosis, weight gain, a round face and diabetes.<br />
<br />
<b>Immunosuppressants:</b> This family of prescription drugs acts by reducing the activity of your immune system. Azathioprine, cyclosporine and cyclophosphamide are just a few. Side effects of these drugs may include more susceptibility to colds, flu, pneumonia&nbsp; and cancer. <br />
<br />
<b>TNF Alpha Inhibitors:</b> TNF can help reduce Rheumatoid arthritis pain, morning stiffness and swollen joints. Side effects may include congestive heart failure, blood disorders, cancer of the lymph nodes, neurological diseases and increased risk of infection.<br />
<br />
<b>Disease Modifying Anti-Rheumatic Drugs (DMARDS):</b> These drugs may slow the progression of RA and save joints and tissues from permanent damage. Some of the more widely used DMARDS include methotrexate, plaquenil and sulfasalazine. The long term side effects of these drugs are severe and include liver damage, suppression of the immune system via the bone marrow and lung infections.</div>', '<ul>
    <li>Genetics appears to be one of the biggest culprits</li>
    <li>Females are more likely to develop rheumatoid arthritis than males</li>
    <li>Smoking significantly increases the risk</li>
    <li>A lack of exercise is a notable component</li>
    <li>Poor diet plays a role in the severity of symptoms</li>
    <li>Stress can initiate symptoms and flare-ups</li>
    <li>Depression may play a role in the severity of symptoms</li>
</ul>', '<div style=\"text-align: justify\"><b>The dangerous side effects of common drugs used to treat Rheumatoid arthritis pain may be enough to inspire positive lifestyle changes.&nbsp; Here are some suggestions:</b> <br />
<br />
<b>Exercise:</b><br />
Gentle exercise can help strengthen the muscles around joints and fight fatigue. <br />
<br />
<b>Heat or Cold:</b><br />
The application of heat or cold may prove helpful in providing Rheumatoid arthritis pain relief. Heat can relieve pain and relax tense muscles. Cold has a numbing effect and relaxes areas of muscle spasms. However, don&rsquo;t use cold in the case of poor circulation.<br />
<br />
<b>Diet:</b><br />
A diet rich in fruits, vegetables, lean meats, and whole grains will go a long way in helping protecting joint health.<br />
<br />
<b>Supplements:</b><br />
Dietary supplements that address both the immune system and the inflammatory process can prove helpful.</div>', '<div style=\"text-align: justify\"><b>Our Rheumatoid-PAC is designed to help address the issues that give rise to the sometimes crippling effects of rheumatoid arthritis. Our Rheumatoid-PAC is professionally formulated, safe, 100% natural and gentle on the system.</b></div>
<br />
<b>RheumaStat</b><br />
<br />
<div style=\"text-align: justify\" id=\"2600\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"RheumaStat\" border=\"0\" hspace=\"0\" alt=\"RheumaStat\" width=\"135\" height=\"137\" src=\"images/RheumaStat-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2600);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
RheumaStat is part one in the remediation of symptoms from Rheumatoid arthritis. Directly addressing the dysfunctioning auto-immune system, the results from RheumaStat have been felt in as little as seven days enabling a better sense of well being. <br />
<br />
Rheumastat provides the raw organic materials that the immune system requires for balanced function: &ldquo;essential saccharides,&quot; or essential carbohydrates, extracted from the larch tree. The immune system cells uses these essential compounds to protect&nbsp; rather than attack&nbsp; the body.<br />
<br />
The field of nutritional science, called Glycobiology, is new&nbsp; and the discovery of these essential saccharaides and their function was made just in the past decade. Nutritional Health Science is a leader in the science of Glycobiology and RheumaStat for Rheumatoid arthritis is blended under strict and controlled laboratory conditions in order to maintain its potency and strength.<br />
<br />
Each bottle contains 180 grams powder which mixes easily with juice or water. Each bottle is one months supply.</div>
<br />
<b>Aloe Immune Matrix</b><br />
<br />
<div style=\"text-align: justify\" id=\"2599\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"Aloe Immune Matrix\" border=\"0\" hspace=\"0\" alt=\"Aloe Immune Matrix\" width=\"135\" height=\"137\" src=\"images/Aloe%20Immune%20Complex-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2599);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
The study of aloe vera is one of the greatest accomplishments of modern day nutritional science. The positive impact that aloe vera has on immune system function is well documented and irrefutable. While aloe offers almost everyone generalized health benefits, aloe vera is of special merit regarding the modulation of immune system dysfunctions.<br />
<br />
The magic of aloe vera lies in its long chain carbohydrates called polymannans. At one time, science thought that cellular communication took place via protein molecules imbedded in cell surfaces. The study of aloe has proven this theory wrong as cellular communication takes place via combination polymannan/protein molecules imbedded in the cell surface. Referring back to the immune system cell lesson above, the cells of the immune system must be able to communicate in order to function properly.<br />
<br />
The processed food lifestyle of most Americans has rendered us deficient of any available dietary sources of polymannan chains. However, properly processed aloe vera powders are rich in these much needed natural compounds requiered for immune system health. In fact, intravenous solutions of polymannans are used in cats to treat feline leukemia. Sadly, this is not available for humans because huge drug companies cannot make profits providing an inexpensive and natural product. <br />
<br />
Not all aloe vera products have been constructed to retain these valuable and often life changing immune system activation molecules. At Nutritional Health Science quality is important to us. We analyze every batch of our aloe to insure that therapeutic amounts of these immune system specific carbohydrates are present.<br />
<br />
Note: Aloe Immune Matrix is certified organic and is certified by the International Aloe Science Council.<br />
<br />
Each bottle contains 90 grams powder which easily mixes with juice or water. Each bottle is one months supply.</div>
<br />
<b>Omega-3 Fatty Acids</b><br />
<br />
<div style=\"text-align: justify\" id=\"2606\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"Omega-3 Fatty Acids\" border=\"0\" hspace=\"0\" alt=\"Omega-3 Fatty Acids\" width=\"135\" height=\"137\" src=\"images/Estra%20Strength%20Omega%203%20Fatty%20Acids-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2606);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
Omega-3 Fatty Acids otherwise known as fish oil&nbsp; is world renowned and studied world-wide for their positive effects on human health and well-being.<br />
<br />
Widely known for their heart health benefits and brain health benefits, they also help to protect joint health as well.<br />
<br />
The major components of fish oil, EPA and DHA, increase the body\'s anti-inflammatory response. Since the reduction of inflammation is crucial for those suffering from rheumatoid arthritis, properly processed and extra strength fish oil tablets are an important part of your supplement regimen. An independent consumer laboratory recently tested some of the more popular fish oil brands such as GNC, Now Foods and Puritans Pride.&nbsp; Disturbingly, ten out of ten of the brands tested were contaminated with cancer causing PCB&rsquo;s. Fortunately, we use a specialized molecular distillation process which makes sure that our customers get toxin free and purified fish oil. Our customers depend upon us for nothing but the best.<br />
<br />
For fish oil to be effective and absorbed properly, it must be taken in tandem with a compatable antioxidant. Our extra strength fish oil softgels are complete with Vitamin-E to stop any rancidity of these healthful fats in the bloodstream.<br />
<br />
Each bottle contains 120 easy to swallow &quot;no burp&quot; softgels. Each bottle is one months supply.</div>
<br />
<b>SerraPeptase Biologic Enzymes</b><br />
<br />
<div style=\"text-align: justify\" id=\"2597\">
<div style=\"text-align: center; padding-bottom: 10px; padding-right: 10px; float: left\">
<div style=\"border-bottom: rgb(237,237,239) 1px solid; border-left: rgb(237,237,239) 1px solid; border-top: rgb(237,237,239) 1px solid; border-right: rgb(237,237,239) 1px solid\"><img title=\"SerraPeptase Biologic Enzymes\" border=\"0\" hspace=\"0\" alt=\"Omega-3 Fatty Acids\" width=\"135\" height=\"137\" src=\"images/Serrapeptase%20Biologic%20Enzymes-135x137.png\" /></div>
<br />
<a href=\"javascript:mostrardivid(2597);\"><img alt=\"\" src=\"includes/languages/english/images/buttons/btn_ingredients.jpg\" /></a></div>
Serrapeptase is known as the inflammation enzyme and is quite sucessful in assisting with Rheumatoid arthritis pain relief. Hundreds of European Studies have proven beyond a reasonable doubt that this specialized enzyme is effective at fighting disease-causing inflammation.<br />
<br />
Given that rheumatoid arthritis is a disease with underlying and damaging inflammation, it\'s important to keep that inflammation in check.<br />
<br />
Our Serrapeptase Biologic Enzyme formula is a step above the competition. Nutritional Health Science uses two processes to insure that our customers get top quality serrapeptase: Serrapeptase Enzymes are enterically coated and pass through the stomach untouched to maximize absorption through the intestines. This coating insures that our customers get the maximum dosage required for therapeutic purposes. In addition, we utilize a patented delivery process (BBPS Technology) which increases bio-availability, enzyme stability and absorption.<br />
<br />
With Serrapeptase Biologic Enzymes inflammation is decreased and the symptoms of rheumatoid arthritis are reduced.<br />
<br />
Each bottle contains 120 capsules which is one months supply.</div>', '<div style=\"text-align: justify; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; padding-right: 5px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 5px\"><b>Sharing The Rheumatoid-PAC At Support Group</b><br />
<br />
&quot;Rheumatoid Arthritis was destroying my life right along with the medications I was taking. My husband encouraged me to explore natural solutions as he\'s a real believer in natural health practices. However, I really didn\'t know where to look or what to buy. <br />
<br />
Nutritional Health Science popped up and I decided to give the Rheumatoid arthritis pain relief package a try since they had such a compelling story. I followed their natural protocol for 90 days as they suggest. To date, I feel great, the exhaustion has lifted and my joints are feeling pretty good. <br />
<br />
I plan on sharing this natural therapy with my RA support group.&quot;<br />
<br />
<b>Jasmine Peters</b></div>
<br />
<div style=\"text-align: justify; padding-bottom: 5px; background-color: rgb(239,245,250); padding-left: 5px; padding-right: 5px; font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52,118,150); font-size: 13px; padding-top: 5px\"><b>Cut Medications In Half</b><br />
<br />
&quot;What&rsquo;s worse? Rheumatoid Arthritis or the treatments? My case is rather severe and ongoing for 8 years. I\'ve never experienced a period of remission. I decided to try alternatives for my arthritis instead. Adding the Rheumatoid-PAC has helped me significantly. <br />
<br />
I\'m not off all of my medications, but they\'ve been greatly reduced. I feel so much better and am totally grateful for the expertise of the people at Nutritional Health Science. The product specialists are knowledgeable, helpful and kind. It certainly can\'t hurt anyone to give it a try. In my opinion and based on my experience it can only help.&quot;<br />
<br />
<b>Lila Holoway</b></div>', '<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"727\">
    <tbody>
        <tr>
            <td style=\"background-image: url(images/backcontent7.jpg); background-repeat: no-repeat\" height=\"178\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51,118,150); font-size: 27px\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px\">
            <ul style=\"margin-left: 0px\">
                <li>All Natural Solutions For Guaranteed Success</li>
                <li>Products That You Can Count On</li>
                <li>No Cheap Fillers Or Additives</li>
                <li>Zero Negative Side Effects</li>
                <li>Full Support From Our Product Specialists</li>
                <li>Health Benefits You Can Feel</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '', '', 'The Ravages Of Rheumatoid Arthritis', 'Risk Factors For Rheumatoid Arthritis', 'Beneficial Lifestyle Adjustments Can Help', 'Safe And Natural Solutions', 'What Our Customers Are Saying', 'Our Commitment To You', '', '', '', 'rheumatoid arthritis treatments', 'Rheumatoid Arthritis Treatments', 'Sadly Most Rheumatoid Arthritis Treatments Result In More Difficulties and Health Problems Than  RA Itself. We Can Help');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2617', '1', 'Gift', 'You can buy as many gift certificates you want,after that you will receive two (2 ) emails :<br />
<br />
<ul>
    <li>One with the purchase confirmation.</li>
    <li>One with the code of your gift certificate.</li>
</ul>', '', '184', 'Get your Gift Certificate', 'Valid for one purchase only', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Get your Gift Certificate', 'GIFT', 'Get your Gift Certificate', 'Get your Gift Certificate');
insert into products_description (products_id, language_id, products_name, products_description, products_url, products_viewed, products_t1, products_t2, products_description2, products_description3, products_description4, products_description5, products_description6, products_description7, products_description8, products_description9, products_title2, products_title3, products_title4, products_title5, products_title6, products_title7, products_title8, products_title9, tags, products_t3, products_t4, products_t5) values ('2616', '1', 'Medicinal Mushrooms', '<ul>
    <li>Innovative Broad Spectrum Formula</li>
    <li>Increase Cellular Function</li>
    <li>Biological Repair At The Cellular Level</li>
    <li>Better Sense Of Well-Being</li>
    <li>Natural And Effective</li>
    <li>Superior Immune System Support</li>
</ul>', '', '286', 'Powerful And Advanced Natural Immune System Support', 'Advanced Immune System Support', '<div style=\"text-align: justify;\"><b>Certain species of mushrooms can have profound effects on human health and wellness.</b><br />
<br />
Mushrooms are often thought of as a fungus with a negative connotation. Just as there are good fats and bad fats, good carbs and bad carbs, there are good mushrooms and bad mushrooms.<br />
<br />
<div style=\"text-align: center; padding: 5px; background-color: rgb(239, 245, 250); width: 250px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52, 118, 150); margin-left: 10px; font-size: 13px;\">&quot;Medicinal Mushrooms Increase Immune System Function&quot;</div>
Medicinal mushrooms, as the name suggests, are indeed medicinal and have been used by Asian cultures for centuries with marked results for immune system support. It\'s only in recent decades that modern science has revealed, via controlled laboratory conditions, the dynamic effects of medicinal mushrooms on <b>immune system support and function.</b><br />
<br />
Most of the research has taken place in Japan where medicinal mushrooms are <b>automatically given to cancer patients as part of their treatment protocol. </b><br />
<br />
According to an article written by Dr. Barbara Starfield, published in the Journal of the American Medical Association (JAMA), Japan has the number one health care system in the world coupled with the highest cancer survival rates. Is it possible that the clinical application of adjunct nutritional therapies such as medicinal mushrooms can be credited?</div>', '<div style=\"text-align: justify;\">
<div style=\"text-align: left; padding: 5px; background-color: rgb(239, 245, 250); width: 250px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.05em; color: rgb(52, 118, 150); margin-left: 10px; font-size: 13px;\">Medicinal Mushrooms Include:
<ul>
    <li>Maitake Mushoroom</li>
    <li>Shitake Mushoroom</li>
    <li>Chaga Mushoroom</li>
    <li>Turkey Mushoroom</li>
    <li>Reishi Mushoroom</li>
    <li>Lions Mane Mushoroom</li>
    <li>Cordyceps Mushoroom</li>
</ul>
</div>
<b>The historical reality is that certain mushrooms have enjoyed an integral role in both China and Japan as a modality for healing.</b> Today, science recognizes over 3,000 mushroom species. Out of this vast and diverse population, only handfuls of these specialized plant healers are granted credit for the enhancement of your immune system structure and function. <br />
<br />
There are certain species under focus and study for immunological functions and overall immune system support. This research includes anti-tumor and anti-cancer studies.<br />
<br />
Some of the more important and scientifically proven medicinal mushroom species include: Maitake mushroom, Shitake mushroom, Chaga mushroom, Turkey Tail mushroom, Reishi mushroom, Lions Mane mushroom and Cordyceps mushroom.</div>
<br />
<div style=\"text-align: left; padding: 10px; background-color: rgb(239, 245, 250); font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52, 118, 150); font-size: 13px;\"><b>Immune System Finds Balance </b><br />
<br />
&quot;I suffer a few conditions which I would like to keep private. However, what I can say is I strongly believe that Nutritional Health Science has impacted both my life and my health in a positive way. <br />
<br />
I became quite concerned when my tests for the past year kept coming back negative for my overall immune system function.<br />
<br />
The day Nutritional Health Science came into my life was my saving grace. After four months of taking the Immune System PAC, me and my immune system are doing quite nicely and I have been provided optimal immune system support.<br />
<br />
While I was skeptical, I\'m elated that I had the courage to take the plunge and try natural immune system support. Needless to say, I\'m thrilled at the positive results.&quot;<br />
<br />
<b>Marcy Dugle </b></div>', '<div style=\"text-align: justify;\">The majority of medicinal mushroom species are not specific to the United States. As a result, <b>we work with some of the best laboratories in the world to bring you the health enhancing medicinal mushroom products you have come to depend upon for your ultimate immune system support.</b> Because of these relationships, we are able to cultivate unique medicinal mushroom formulas in our own USA based laboratory. <br />
<br />
We are very proud here at Nutrional Health Science to offer our customers some of the most potent and integrous mushroom products in the world. We personally oversee our mushroom growth facility as we won\'t settle for second best.<br />
<br />
<div style=\"text-align: left; padding: 5px; background-color: rgb(239, 245, 250); width: 250px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.09em; color: rgb(52, 118, 150); margin-left: 10px; font-size: 13px;\">&quot; Our Medicinal Mushrooms Are Grown And Harvested In The United<br />
States &quot;</div>
Constant lab testing assures us that you are getting a top-notch product at an affordable price. Our unique and proprietary formula is second to none and proven by our customers for over a decade. We are certain that our unique product can support your immune system. Give it a try, as your purchase is guaranteed.<br />
<br />
<b>Be advised, that for the money, our Medcinal Mushroom Complex is of extreme value. </b>You receive 240 capsules at a vey reasonable price as other companies will charge on upwards to 49.50 for a 60 count bottle of cheap watered down product. At Nutritional Health Science, our customers are our success. We take this responsibility seriously.</div>', '<ul>
    <li>Those Experiencing Chemotherapy and Radiation</li>
    <li>Type-1 Diabetes</li>
    <li>Type 2 Diabetes</li>
    <li>Rheumatoid Arthritis</li>
    <li>Lupus</li>
    <li>Osteo Arthritis</li>
    <li>Candida Infections</li>
    <li>Those Experiencing Constant Flu and Colds</li>
    <li>Chrons Disease</li>
    <li>Celiac Disease</li>
    <li>Those experiencing the effects of HIV/AIDS</li>
    <li>Irritable Bowel Syndrome</li>
    <li>Chronic Fatigue Syndrome</li>
    <li>Thyroid Issues</li>
    <li>Liver Issues</li>
    <li>Those Experiencing a Generalized Run-Down Feeling</li>
</ul>', '<div style=\"text-align: justify;\"><b>Our broad spectrum professional formula medicinal mushrooms complex can:</b><br />
<div style=\"text-align: left; padding: 5px; background-color: rgb(239, 245, 250); width: 250px; font-family: \'Courier New\'; margin-bottom: 10px; float: right; letter-spacing: -0.08em; color: rgb(52, 118, 150); margin-left: 10px; font-size: 13px;\">&quot;Jump Start Your Immune System &quot;</div>
<ul>
    <li>enhance human health and wellness</li>
    <li>target all cellular systems of the body</li>
    <li>boost the immune system</li>
</ul>
<br />
Potency and diversity are guaranteed because:
<ul>
    <li>our mushrooms are harvested when they are at their nutritional peak</li>
</ul>
<br />
Our proprietary formula provides nine of the most powerful medicinal mushrooms that have been validated by modern nutritional science. It\'s this unique combination and proprietary harvesting techniques that makes our formula a powerful ally for your immune system health and provides superior<b> immune system support</b>.</div>', '<div style=\"text-align: left; padding: 10px; background-color: rgb(239, 245, 250); font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52, 118, 150); font-size: 13px;\"><span style=\"font-weight: bold;\">Incredible Benefits That Helped </span>My Situation<br />
<br />
&quot;I was almost fired from my job due to frequent bouts of of the sniffles and everything else in between. My sick days also ate up my vacation days and I really had no more time off I could take.<br />
<br />
It was a rude awakening the day I received a warning letter from my supervisor. Taking any more days off meant that I would soon be unemployed. The fourth prescription for antibiotics this year was certain to fail me as in times past.<br />
<br />
I finally looked to the internet for help. Lucky for me, I ran across Nutritional Health Science. One of their professional staff members told me exactly what to do and discussed with me the mushroom benefits that might help my situation and provide me superior immune system support.<br />
<br />
I took their medicinal mushroom product with a few of their other high quality supplements. Today has never been greater. I haven\'t missed a day of work in five months and actually will be able to take my vacation days this year for a real vacation versus using them for sick days. All I can say is thanks Nutritional Health Science for optimal immune system support.&quot;<br />
<br />
<b>Toby Gishmare </b></div>
<br />
<div style=\"text-align: left; padding: 10px; background-color: rgb(239, 245, 250); font-family: \'Courier New\'; letter-spacing: -0.05em; color: rgb(52, 118, 150); font-size: 13px;\"><span style=\"font-weight: bold;\">Kids Doing Great</span><br />
<br />
&quot; I have seven kids and boy do we ever &quot;pass it around.&quot; It seems I spend more on tissues for runny noses than I do for groceries. My oldest son misses alot of school and my youngest is always so cranky from the frequent discomforts. Since our entire family has been taking your broad spectrum mushroom complex there\'s been a notable difference with regards to the health and wellness of all of us. I\'ll be adding the greens and your pure fish oil next.&quot;<br />
<br />
<b>Patty Dangus </b></div>', '<table width=\"727\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">
    <tbody>
        <tr>
            <td height=\"178\" style=\"background-image: url(&quot;images/backcontent7.jpg&quot;); background-repeat: no-repeat;\" colspan=\"2\">
            <div style=\"text-align: center; line-height: 32px; padding-left: 36px; width: 291px; padding-right: 36px; font-family: Arial,Helvetica,sans-serif; color: rgb(51, 118, 150); font-size: 27px;\">Restoring Health through the Science of Nutrition</div>
            </td>
        </tr>
        <tr>
            <td>
            <div style=\"padding-right: 10px;\">
            <ul style=\"margin-left: 0px;\">
                <li>A Unique Medicinal Mushroom Blend</li>
                <li>Guaranteed Potency and Effectiveness</li>
                <li>&nbsp;Powerful Immune System Support</li>
                <li>Results You Can Feel</li>
                <li>Increased Energy Levels</li>
                <li>Benefits Without Side Effects</li>
                <li>The Highest Quality Of Its Kind</li>
            </ul>
            </div>
            </td>
            <td width=\"363\" align=\"center\">
            <div style=\"padding-bottom: 10px; padding-top: 10px;\"><img alt=\"\" src=\"images/logo45.jpg\" /></div>
            </td>
        </tr>
    </tbody>
</table>', '<div style=\"text-align: center;\">SUPPLEMENT FACTS<br />
Serving Size: 4 Capsules<br />
Serving per Container: 60</div>
<br />
<table cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\" class=\"tablespecial\">
    <tbody>
        <tr>
            <td class=\"tdspecial_header\">&nbsp;</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial_header\">Amount<br />
            Per Dose</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial_header\">%DV</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Proprietary Blend</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">5840 mgs</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">166%</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Shitake Powder</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">&nbsp;</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Agaricus Blazei Murill Pwd</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">&nbsp;</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Chaga Powder</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">&nbsp;</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Cordyceps Sinensis Powder</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">&nbsp;</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Lions Mane Powder</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">&nbsp;</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Maitake Powder</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">&nbsp;</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">&nbsp;</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Mesiama Powder</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">&nbsp;</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Reishi Powder</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">&nbsp;</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Turkey Tail Powder</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">&nbsp;</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\">Brown Seaweed Extract</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">&nbsp;</td>
            <td width=\"85\" align=\"right\" class=\"tdspecial\">*</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\">* Daily Value (DV) not established</td>
        </tr>
        <tr>
            <td class=\"tdspecial\" colspan=\"3\"><b>Other Ingredients : </b>Vegetable Cellulose (Capsules),Rice Brand and Magnesium Stearate</td>
        </tr>
    </tbody>
</table>', 'Why Medcinal Mushrooms Are Superior Immune System Support', 'The Types Of Medicinal Mushrooms That Are Beneficial For Immune System Support', 'Carefully Cultivated And Harvested For Superior Immune System Support', 'Issues That May Benefit From Natural Immune System Support', 'Medicinal Mushrooms: The All-Natural Solution for Guaranteed Success', 'What Our Customers Are Saying', 'Our Commitment To You', '', 'Immune system support', 'immune system support', 'Immune System Support | NHS NUTRITIONALS', 'Top of the line NHS products for immune system support: medicinal mushrooms, which are well-known by Asian cultures for his outstanding healing properties.');
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
insert into products_options (products_options_id, language_id, products_options_name, products_options_type, products_options_length, products_options_comment) values ('6', '1', 'Email', '0', '0', '');
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
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('9', '1', 'Send Email');
insert into products_options_values (products_options_values_id, language_id, products_options_values_name) values ('10', '1', 'Do Not Send Email');
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
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('190', '6', '9');
insert into products_options_values_to_products_options (products_options_values_to_products_options_id, products_options_id, products_options_values_id) values ('191', '6', '10');
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
insert into products_to_categories (products_id, categories_id) values ('2599', '472');
insert into products_to_categories (products_id, categories_id) values ('2600', '472');
insert into products_to_categories (products_id, categories_id) values ('2601', '472');
insert into products_to_categories (products_id, categories_id) values ('2602', '472');
insert into products_to_categories (products_id, categories_id) values ('2603', '472');
insert into products_to_categories (products_id, categories_id) values ('2604', '472');
insert into products_to_categories (products_id, categories_id) values ('2606', '472');
insert into products_to_categories (products_id, categories_id) values ('2607', '472');
insert into products_to_categories (products_id, categories_id) values ('2608', '472');
insert into products_to_categories (products_id, categories_id) values ('2609', '463');
insert into products_to_categories (products_id, categories_id) values ('2610', '463');
insert into products_to_categories (products_id, categories_id) values ('2611', '463');
insert into products_to_categories (products_id, categories_id) values ('2612', '463');
insert into products_to_categories (products_id, categories_id) values ('2613', '463');
insert into products_to_categories (products_id, categories_id) values ('2614', '463');
insert into products_to_categories (products_id, categories_id) values ('2615', '463');
insert into products_to_categories (products_id, categories_id) values ('2616', '472');
insert into products_to_categories (products_id, categories_id) values ('2617', '474');
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
insert into registered_user (id_registered_user, id_language, name_registered_user, email_registered_user) values ('3', '1', 'customer', 'ezdoc21@bellsouth.net');
insert into registered_user (id_registered_user, id_language, name_registered_user, email_registered_user) values ('4', '1', 'customer', 'cws.cfs@gmail.com');
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
insert into registered_user2 (id_registered_user, id_language, name_registered_user, email_registered_user) values ('3', '1', 'customer', 'ezdoc21@bellsouth.net');
insert into registered_user2 (id_registered_user, id_language, name_registered_user, email_registered_user) values ('4', '1', 'customer', 'cws.cfs@gmail.com');
insert into registered_user2 (id_registered_user, id_language, name_registered_user, email_registered_user) values ('5', '1', 'customer', 'ezdoc26@bellsouth.net');
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

insert into sessions (sesskey, expiry, value) values ('41c1a515702b9edfae3b646c6d49e696', '1310399025', 'cart|O:12:\"shoppingcart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"publi.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:4:\"page\";s:4:\"news\";s:7:\"id_news\";s:1:\"8\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('a820f83cd515f3cb5024ab5f64b19a3e', '1310399033', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('391bc314a4cd2adf15400ad1d5c2f4a9', '1310402751', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:8:\"home.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('32c0da9d1501bfda0f987c4274d97b19', '1310405209', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('d07cc6681abeed70517615ebc85e327c', '1310405715', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('2e5c7a75dc372d7ecd7f3faa317ea32a', '1310410592', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('2373986e9c56ebc31f92f672fd40384b', '1310414363', 'cart|O:12:\"shoppingcart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:8:\"home.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('2e8cc065117f5a7a7ab0905bacc52246', '1310418807', 'cart|O:12:\"shoppingcart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2595\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('c680857998af2e05101be43437ca8034', '1310419169', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('80d52e23b4c5d4ec92346bba19cff47e', '1310424732', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2595\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('c4f0ff09c07c91da93192186d36ca729', '1310432092', 'cart|O:12:\"shoppingcart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:8:\"home.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('19af100b94619d5233f4b4bc3e469d82', '1310431861', 'cart|O:12:\"shoppingcart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"publi.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:4:\"page\";s:4:\"news\";s:4:\"view\";s:3:\"all\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('b2936903eedc24feee0501ea82aa6b65', '1310440888', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2616\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('03f8c6d653feec6ab506e0e023008e45', '1310472786', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('7e0e5986c240b2c45eecb2092ecc7893', '1310474173', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2596\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('8b41d02484cacbc5523b5af2c260db0d', '1310479481', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('f59b699e8481fda1935f479306303435', '1310492020', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('7d15e6260a403f5fa074547683c7b3fe', '1310492526', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('caf5a9a893412cd9348a49d447339b7e', '1310500601', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('728fe8fe57a33bca2921c74afa9a8c5c', '1310500611', 'language|s:7:\"english\";languages_id|s:1:\"1\";selected_box|s:13:\"configuration\";');
insert into sessions (sesskey, expiry, value) values ('9cc9ff48c82bfc98a54acfcd4c8f539b', '1310351397', 'cart|O:12:\"shoppingcart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:5:{i:0;a:4:{s:4:\"page\";s:9:\"publi.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:2:{s:4:\"page\";s:4:\"news\";s:4:\"view\";s:3:\"all\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2617\";}s:4:\"post\";a:0:{}}i:2;a:4:{s:4:\"page\";s:18:\"specialreports.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}i:3;a:4:{s:4:\"page\";s:17:\"shopping_cart.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}i:4;a:4:{s:4:\"page\";s:9:\"login.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('fed7dbe6bc0100353f9530ffd64e4598', '1310313018', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('236ba12688b500ecbe86876e9a231b75', '1310314277', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('5a6fe8ef81f6158a96beec208274ab82', '1310318216', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('0e64722c8a000f7d3e88f9130b52ef9e', '1310320253', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('b322cc2bfdc4f5ba08729619ed8ab086', '1310326826', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('95b31689e195998cfdd9bcae223d9912', '1310343637', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2595\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('1b7360a8abf8749451440e09187d5953', '1310349438', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:9:\"pages.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:8:\"pages_id\";s:2:\"20\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('25644f928963b6956dc1dea130b65ac5', '1310274993', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('0ee8fa193bc44c47f020d719d11bceb3', '1310312791', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('9601eb516622e2e81558f7622ecd7b0a', '1310245155', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('b6c8a36a4703613ffff88bfad46ce934', '1310265126', 'cart|O:12:\"shoppingcart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:4:{i:0;a:4:{s:4:\"page\";s:8:\"home.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2612\";}s:4:\"post\";a:0:{}}i:2;a:4:{s:4:\"page\";s:9:\"index.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}i:3;a:4:{s:4:\"page\";s:9:\"pages.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:8:\"pages_id\";s:2:\"23\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('a19592b31f92a419c407f50cea8041da', '1310241107', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('7dc0ffd7cc3223de43960cd4cbc7183f', '1310243186', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('f9c95892b58c79258ed88ac81c3e3471', '1310243589', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:15:\"ingredients.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2593\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('305d5eb422bb14aca2d8ec7224b573e9', '1310217867', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2613\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('144cae4924443784980af1e768e0d1cf', '1310226952', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('726e95e9862d4fc15a7ff90264224084', '1310227260', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('aca17d085938f99dd24f2d96449f2cc2', '1310230929', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2613\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('a2d8c1fd01680c15fefa419e75dcc404', '1310204901', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2609\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('c5a5ff50f0621d77e529a867d21141ae', '1310215088', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('1fb6b575fe352802ae475a0149e0528e', '1310179915', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('ec3e4c4d192a99f10753b0a4c2f7583a', '1310199695', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2615\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('252dfe8e1f42fd8404f725b49b98b174', '1310154091', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('229ec2221dd737f4e21d0e87eb583d92', '1310170931', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2613\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('602043d309840c8571cd60645ef537e5', '1310174660', 'cart|O:12:\"shoppingcart\":5:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:6:\"cartID\";N;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:2:{i:0;a:4:{s:4:\"page\";s:9:\"pages.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:8:\"pages_id\";s:2:\"23\";}s:4:\"post\";a:0:{}}i:1;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2593\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('588934200df232d42cff5de7f23a8832', '1310151861', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('5b9aa80b41ff6e341cd8fda44d71991b', '1310143100', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:8:\"home.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('3b969379731f7170363a95587f68b7eb', '1310140641', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('97941eccd098408ee16b111ba11be629', '1310140916', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('7474f008dc485ae29f71477f42900328', '1310134737', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('44d8b57e1eaddb8e7d13cc061d615f88', '1310137432', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2611\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('5f428b72c4d316417d7cb57d564f224e', '1310121927', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2613\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('b3caef5afc614954910dc2db8635297d', '1310124719', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('3bf9b85deb417a75ddcaa85bdca1f980', '1310115395', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('31a91a1e29af4a2c188dfcee7a6bd380', '1310120773', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('c23544a9102ad919c9ec6e67e4bdf666', '1310109917', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('9cc1b421735356a101a018480395a995', '1310113843', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2609\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('75e80f42d60ee30e2b8156fa00296eb3', '1310095778', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2616\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('fa42b3df704ef821d287a58c5f4e388a', '1310044491', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('85b5deac6ac2a18a2a20df7075622860', '1310044491', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('fc980c45ba018c6fe5e9e2d53b45f9ad', '1310047973', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2609\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('70d31667fefd17b64bc40c1eae6514eb', '1310054896', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('d44cf3fc1a7184c6c6b93dde6a5f13d1', '1310055181', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('aaa2575b424d0b1572087b474f242e95', '1310058442', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2614\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('3d6bb4d605990973b386cf3afc945444', '1310061519', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2607\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('4eb4e00e0e693725a54211069f874840', '1310068126', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('370a0885069912c1ce8530a7cf83266a', '1310267070', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:8:\"home.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('f392c91c6584a17e4120703a826ad1b5', '1310089636', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"cookie_usage.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:0:{}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('f57fd8aa8c9969470cc9d407c76156fd', '1310072844', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2602\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('4c94122ad09f94cb0e5950e928defd38', '1310078591', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2598\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('bc1a25f79757c1ff6db788087791e8ae', '1310079025', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('e6274829befb6a49fca57d6ae4afa1cc', '1310268529', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('a2892fabc373ba34cc0bacf56045d57b', '1310129828', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2609\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('4f2f06db923eade3a36bfcdbc5995ec8', '1310090000', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2612\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('17a0db4c943385af7e65b7be66fc6c0d', '1310030944', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('2afde91ccb5e0b96a254932273def56a', '1310032024', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2609\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
insert into sessions (sesskey, expiry, value) values ('b44142036b9b92b840d0047966d1e332', '1310034179', 'KT_lastsiteroot|s:32:\"e94d41c9884fb6f415fa22a69c57ac32\";');
insert into sessions (sesskey, expiry, value) values ('64cad0a76acbaeb877c6e7620265c6df', '1310040155', 'cart|O:12:\"shoppingcart\":4:{s:8:\"contents\";a:0:{}s:5:\"total\";i:0;s:6:\"weight\";i:0;s:12:\"content_type\";b:0;}language|s:7:\"english\";languages_id|s:1:\"1\";currency|s:3:\"USD\";navigation|O:17:\"navigationhistory\":2:{s:4:\"path\";a:1:{i:0;a:4:{s:4:\"page\";s:16:\"product_info.php\";s:4:\"mode\";s:6:\"NONSSL\";s:3:\"get\";a:1:{s:11:\"products_id\";s:4:\"2613\";}s:4:\"post\";a:0:{}}}s:8:\"snapshot\";a:0:{}}');
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

insert into tax_class (tax_class_id, tax_class_title, tax_class_description, last_modified, date_added) values ('12', 'R.E. 4%', 'R.E. 4%', NULL, '2011-06-03 14:27:45');
insert into tax_class (tax_class_id, tax_class_title, tax_class_description, last_modified, date_added) values ('11', 'Sales Tax', 'Sales Tax', NULL, '2011-05-26 16:18:29');
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
insert into tax_rates (tax_rates_id, tax_zone_id, tax_class_id, tax_priority, tax_rate, tax_description, last_modified, date_added) values ('10', '1', '11', '0', '7.0000', 'Sales Tax (7%)', '2011-05-27 15:26:57', '2011-05-26 16:18:54');
insert into tax_rates (tax_rates_id, tax_zone_id, tax_class_id, tax_priority, tax_rate, tax_description, last_modified, date_added) values ('11', '1', '12', '0', '4.0000', 'R.E. 4%', '2011-06-03 20:19:04', '2011-06-03 14:28:15');
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
drop table if exists user_login;
create table user_login (
  id_user_login int(11) not null auto_increment,
  usuario_user_login varchar(200) not null ,
  clave_user_login varchar(200) not null ,
  email_users varchar(200) not null ,
  PRIMARY KEY (id_user_login)
);

insert into user_login (id_user_login, usuario_user_login, clave_user_login, email_users) values ('3', 'nhsnutri', 'dogchow26', 'ezdoc21@bellsouth.net');
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

insert into whos_online (customer_id, full_name, session_id, ip_address, time_entry, time_last_click, last_page_url) values ('0', 'Guest', '', '190.118.22.223', '1310496981', '1310499145', '/');
insert into whos_online (customer_id, full_name, session_id, ip_address, time_entry, time_last_click, last_page_url) values ('0', 'Guest', 'caf5a9a893412cd9348a49d447339b7e', '190.118.22.223', '1310499161', '1310499161', '/login.php');
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
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('546', '38', '0', '1', NULL, '2011-05-27 15:37:47');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('541', '223', '19', '2', NULL, '2011-05-26 16:16:47');
insert into zones_to_geo_zones (association_id, zone_country_id, zone_id, geo_zone_id, last_modified, date_added) values ('545', '223', '0', '1', NULL, '2011-05-27 15:33:27');
