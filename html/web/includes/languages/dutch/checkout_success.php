<?php
/*
  $Id: checkout_success.php,v 1.17 2003/02/16 00:42:03 harley_vb Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce

  Released under the GNU General Public License
*/

define('NAVBAR_TITLE_1', 'Kassa');
define('NAVBAR_TITLE_2', 'Succes');

define('HEADING_TITLE', 'Uw bestelling is verwerkt!');

define('TEXT_SUCCESS', 'Uw bestelling is succesvol verwerkt! Uw Artikelen zullen binnen de vooropgestelde termijn bij U geleverd worden.');
define('TEXT_NOTIFY_PRODUCTS', 'Gelieve mij te verwittigen bij Updates over het(de) onderstaande Artikel(en):');
define('TEXT_SEE_ORDERS', 'U kan Uw bestelgeschiedenis zien door naar <a href="' . tep_href_link(FILENAME_ACCOUNT, '', 'SSL') . '"><u>\'Mijn Account\'</u></a> pagina te gaan en te klikken op <a href="' . tep_href_link(FILENAME_ACCOUNT_HISTORY, '', 'SSL') . '"><u>\'Geschiedenis\'</u></a>.');
define('TEXT_CONTACT_STORE_OWNER', 'Gelieve alle vragen naar de <a href="' . tep_href_link(FILENAME_CONTACT_US) . '"><u>Winkeleingenaar</u></a> te richten.');
define('TEXT_THANKS_FOR_SHOPPING', 'Bedankt om online bij ons te kopen!');

define('TABLE_HEADING_DOWNLOAD_DATE', 'Verval Datum:');
define('TABLE_HEADING_DOWNLOAD_COUNT', 'Downloads resterend.');
define('HEADING_DOWNLOAD', 'Download Uw Artikel hier:');
define('FOOTER_DOWNLOAD', 'U kan Uw Artikel ook op een later tijdstip downloaden op \'%s\'');
?>