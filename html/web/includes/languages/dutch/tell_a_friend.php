<?php
/*
  $Id: tell_a_friend.php,v 1.11 2003/07/11 09:04:23 jan0815 Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce

  Released under the GNU General Public License
*/

define('NAVBAR_TITLE', 'Vertel een Vreind');

define('HEADING_TITLE', 'Vertel een Vreind over \'%s\'');

define('FORM_TITLE_CUSTOMER_DETAILS', 'Uw Details');
define('FORM_TITLE_FRIEND_DETAILS', 'Uw vried zijn/haar Details');
define('FORM_TITLE_FRIEND_MESSAGE', 'Uw Bericht');

define('FORM_FIELD_CUSTOMER_NAME', 'Uw Naam:');
define('FORM_FIELD_CUSTOMER_EMAIL', 'Uw E-Mail Adres:');
define('FORM_FIELD_FRIEND_NAME', 'Uw vreind zijn/haar Naam:');
define('FORM_FIELD_FRIEND_EMAIL', 'Uw vreind zijn/haar E-Mail Adres:');

define('TEXT_EMAIL_SUCCESSFUL_SENT', 'Uw E-Mail over <b>%s</b> is succesvol verzonden naar <b>%s</b>.');

define('TEXT_EMAIL_SUBJECT', 'Uw vriend(in) %s heeft dit schitterende Artikel aangeraden van %s');
define('TEXT_EMAIL_INTRO', 'Hallo %s!' . "\n\n" . 'Uw vriend(in), %s, dacht dat jij wel geinsteresseers bent in %s van %s.');
define('TEXT_EMAIL_LINK', 'Om dit Artikel te bekijken klik op onderstaande link of Kopier en plak deze in uw browser:' . "\n\n" . '%s');
define('TEXT_EMAIL_SIGNATURE', 'Met Vriendelijke Groeten,' . "\n\n" . '%s');

define('ERROR_TO_NAME', 'Error: De naam van Uw vriend mag niet leeg zijn.');
define('ERROR_TO_ADDRESS', 'Error: Het E-Mail Adres van Uw vriend moet een geldig E-Mail Adres zijn!');
define('ERROR_FROM_NAME', 'Error: Uw Naam moet ingevuld worden.');
define('ERROR_FROM_ADDRESS', 'Error: Uw E-Mail Adres moet een geldig E-Mail Adres zijn.');
?>
