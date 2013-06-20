<?php
/*
  $Id: password_forgotten.php,v 1.11 2003/06/25 21:17:02 hpdl Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce

  Released under the GNU General Public License
*/

define('NAVBAR_TITLE_1', 'Login');
define('NAVBAR_TITLE_2', 'Wachwoord vergeten');

define('HEADING_TITLE', 'Ik ben mijn Wachtwoord vergeten.');

define('TEXT_MAIN', 'Als U Uw Wachtwoord niet meer weet, geef dan Uw E-Mail Adres op zodat er een nieuw Wachtwoordt naar U toe gestuurd kan worden.');

define('TEXT_NO_EMAIL_ADDRESS_FOUND', 'Error: Uw E-Mail Adres komt niet voor in onze database, gelieve te controleren.');

define('EMAIL_PASSWORD_REMINDER_SUBJECT', STORE_NAME . ' - Nieuw Wachtwoord.');
define('EMAIL_PASSWORD_REMINDER_BODY', 'Een nieuw Wachtwoord is gevraags door ' . $REMOTE_ADDR . ' .' . "\n\n" . 'Uw Nieuw Wachtwoord voor\'' . STORE_NAME . '\' is:' . "\n\n" . '   %s' . "\n\n");

define('SUCCESS_PASSWORD_SENT', 'Een nieuw Wachtwoord is naar Uw E-Mail Adres verstuurd.');
?>
