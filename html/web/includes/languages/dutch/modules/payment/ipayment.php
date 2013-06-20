<?php
/*
  $Id: ipayment.php,v 1.7 2003/07/11 09:04:23 jan0815 Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2002 osCommerce

  Released under the GNU General Public License
*/

  define('MODULE_PAYMENT_IPAYMENT_TEXT_TITLE', 'iPayment');
  define('MODULE_PAYMENT_IPAYMENT_TEXT_DESCRIPTION', 'Credit Card Test Info:<br><br>CC#: 4111111111111111<br>Geldig Tot: Any');
  define('IPAYMENT_ERROR_HEADING', 'Er is een fout opgetreden tijdens het verwerken van de Credit Card gegevens');
  define('IPAYMENT_ERROR_MESSAGE', 'Gelieve Uw Credit Card informatie te controleren!');
  define('MODULE_PAYMENT_IPAYMENT_TEXT_CREDIT_CARD_OWNER', 'Credit Card Eigenaar');
  define('MODULE_PAYMENT_IPAYMENT_TEXT_CREDIT_CARD_NUMBER', 'Credit Card Nummer:');
  define('MODULE_PAYMENT_IPAYMENT_TEXT_CREDIT_CARD_EXPIRES', 'Geldig Tot:');
  define('MODULE_PAYMENT_IPAYMENT_TEXT_CREDIT_CARD_CHECKNUMBER', 'Credit Card Cheknummer');
  define('MODULE_PAYMENT_IPAYMENT_TEXT_CREDIT_CARD_CHECKNUMBER_LOCATION', '(Bevind zich op de achterzijde van Uw kaart)');

  define('MODULE_PAYMENT_IPAYMENT_TEXT_JS_CC_OWNER', '* De Naam Kaart Eigenaar moet minstens ' . CC_OWNER_MIN_LENGTH . ' karakters lang zijn.\n');
  define('MODULE_PAYMENT_IPAYMENT_TEXT_JS_CC_NUMBER', '* Het  \'Credit Card Nummer\' moet minstens ' . CC_NUMBER_MIN_LENGTH . ' karaketes lang zijn.\n');
?>
