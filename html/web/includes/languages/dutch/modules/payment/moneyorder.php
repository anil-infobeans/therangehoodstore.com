<?php
/*
  $Id: moneyorder.php,v 1.9 2003/07/11 09:04:23 jan0815 Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2002 osCommerce

  Released under the GNU General Public License
*/

  define('MODULE_PAYMENT_MONEYORDER_TEXT_TITLE', 'Overschrijving');
  define('MODULE_PAYMENT_MONEYORDER_TEXT_DESCRIPTION', 'Overschrijving aan:&nbsp;' . MODULE_PAYMENT_MONEYORDER_PAYTO . '<br>Aflever Adres:<br><br>' . nl2br(STORE_NAME_ADDRESS) . '<br><br>' . 'Uw bestelling zal niet worden verzonden zolang de betaling niet is ontvangen!');
  define('MODULE_PAYMENT_MONEYORDER_TEXT_EMAIL_FOOTER', "Overschrijving aan: ". MODULE_PAYMENT_MONEYORDER_PAYTO . "\n\nAflever Adres:\n" . STORE_NAME_ADDRESS . "\n\n" . 'Uw bestellings zal niet worden verzonden zolang de betaling niet is ontvangen!');
?>
