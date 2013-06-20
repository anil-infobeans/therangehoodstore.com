<?php
/*
  $Id: create_account.php,v 1.13 2003/05/19 20:17:51 hpdl Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce

  Released under the GNU General Public License
*/

define('NAVBAR_TITLE', 'Maak een Account');
define('NAVBAR_TITLE_2', 'Proces');
define('HEADING_TITLE', 'Mijn Account Informatie');

define('TEXT_ORIGIN_LOGIN', '<font color="#FF0000"><small><b>Letop!:</b></font></small> Als u reeds een account heeft bij ons, gelieve in te loggen op de <a href="%s"><u><b>Login pagina</b></u></a>.');

define('EMAIL_SUBJECT', 'Welkom Bij' . STORE_NAME);
define('EMAIL_GREET_MR', 'Geachte Heer' . stripslashes($HTTP_POST_VARS['lastname']) . ',' . "\n\n");
define('EMAIL_GREET_MS', 'Gachte Mevrouw ' . stripslashes($HTTP_POST_VARS['lastname']) . ',' . "\n\n");
define('EMAIL_GREET_NONE', 'Geachte ' . stripslashes($HTTP_POST_VARS['firstname']) . ',' . "\n\n");
define('EMAIL_WELCOME', 'Welkom bij <b>' . STORE_NAME . '</b>.' . "\n\n");
define('EMAIL_TEXT', 'U kunt nu gebruik maken van onze <b>Online Service</b>. Deze Service bied U onder andere:' . "\n\n" . '<li>Een <b>Winkelwagen</b> - Ieder Artikel Blijft geregistreet tot dat U naar de Kassa gaat, of het Artikel verwijdert uit de Winkelwagen.' . "\n" . '<li>Een<b>Adresboek</b> - We kunnen de Artikelen nu sturen naar het Adres dat U heeft gekozen. Een ideale manier om een kado te versturen.' . "\n" . '<li>Een<b>Bestel Geschiedenis</b> - U kunt nu ten aller tijden Uw vorige besteling controlen.' . "\n" . '<li>Een<b>Recensie geven</b> - Deel Uw mening 
voor een Artikel met andere klanten.' . "\n\n");
define('EMAIL_CONTACT', 'Als U vragen heeft kunt U die altijd stellen aan onze Support afdeling: ' . STORE_OWNER_EMAIL_ADDRESS . '.' . "\n\n");
define('EMAIL_WARNING', '<b>Letop !:</b> Deze E-Mail Adres is ons door een klant gegeven! Als U zich niet heeft aangemeld laat het ons dan weten en stuur ons een E-mail op het volgende Adres ' . STORE_OWNER_EMAIL_ADDRESS . '.' . "\n");
define('TEXT_CREATE_ACCOUNT_SELECCION', '<a href="javascript:select_account();">[Meer info]</a>');
?>
