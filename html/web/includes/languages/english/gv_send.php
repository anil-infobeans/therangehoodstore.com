<?php
/*
  $Id: gv_send.php,v 1.1.2.1 2003/04/18 17:25:44 wilt Exp $

  The Exchange Project - Community Made Shopping!
  http://www.theexchangeproject.org

  Gift Voucher System v1.0
  Copyright (c) 2001,2002 Ian C Wilson
  http://www.phesis.org

  Released under the GNU General Public License
*/

define('HEADING_TITLE', 'Send Gift Certificate');
define('NAVBAR_TITLE', 'Send Gift Certificate');
define('EMAIL_SUBJECT', 'Enquiry from ' . STORE_NAME);
define('HEADING_TEXT','<br>Please enter below the details of the Gift Certificate you wish to send. <br>');
define('ENTRY_NAME', 'Recipients Name:');
define('ENTRY_EMAIL', 'Recipients E-Mail Address:');
define('ENTRY_MESSAGE', 'Message to Recipients:');
define('ENTRY_AMOUNT', 'Amount of Gift Certificate:');
define('ERROR_ENTRY_AMOUNT_CHECK', '&nbsp;&nbsp;<span class="errorText">Invalid Amount</span>');
define('ERROR_ENTRY_EMAIL_ADDRESS_CHECK', '&nbsp;&nbsp;<span class="errorText">Invalid Email Address</span>');
define('MAIN_MESSAGE', 'You have decided to post a gift Certificate worth %s to %s who\'s email address is %s<br><br>The text accompanying the email will read<br><br>Dear %s<br><br>
                        You have been sent a Gift Certificate worth %s by %s');

define('PERSONAL_MESSAGE', '%s says');
define('TEXT_SUCCESS', 'Congratulations, your Gift Certificate has successfully been sent');


define('EMAIL_SEPARATOR', '----------------------------------------------------------------------------------------');
define('EMAIL_GV_TEXT_HEADER', 'Congratulations, You have received a Gift Certificate worth %s');
define('EMAIL_GV_TEXT_SUBJECT', 'A gift from %s');
define('EMAIL_GV_FROM', 'This Gift Certificate has been sent to you by %s');
define('EMAIL_GV_MESSAGE', 'With a message saying ');
define('EMAIL_GV_SEND_TO', 'Hi, %s');
define('EMAIL_GV_REDEEM', 'To redeem this Gift Certificate, please click on the link below. Please also write down the redemption code which is %s. In case you have problems.');
define('EMAIL_GV_LINK', 'To redeem please click ');
define('EMAIL_GV_VISIT', ' or visit ');
define('EMAIL_GV_ENTER', ' and enter the code ');
define('EMAIL_GV_FIXED_FOOTER', 'If you are have problems redeeming the Gift Certificate using the automated link above, ' . "\n" . 
                                'you can also enter the Gift Certificate code during the checkout process at our store.' . "\n\n");
define('EMAIL_GV_SHOP_FOOTER', '');
define('TEXT_INVALID_GV', 'The Gift Certificate number may be invalid or has already been redeemed. To contact the shop owner please use the Contact Page');
?>