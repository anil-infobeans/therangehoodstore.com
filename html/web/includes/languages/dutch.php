<?php
/*
  $Id: Dutch.php,v 1.124 2003/07/11 09:03:49 jan0815 Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce

  Released under the GNU General Public License
*/

// look in your $PATH_LOCALE/locale directory for available locales
// or type locale -a on the server.
// Examples:
// on RedHat try 'de_DE'
// on FreeBSD try 'de_DE.ISO_8859-1'
// on Windows try 'de' or 'German'
@setlocale(LC_TIME, 'nl_NL.ISO_8859-1');

define('DATE_FORMAT_SHORT', '%d.%m.%Y');  // this is used for strftime()
define('DATE_FORMAT_LONG', '%A, %d. %B %Y'); // this is used for strftime()
define('DATE_FORMAT', 'd.m.Y');  // this is used for strftime()
define('DATE_TIME_FORMAT', DATE_FORMAT_SHORT . ' %H:%M:%S');

////
// Return date in raw format
// $date should be in format mm/dd/yyyy
// raw date is in format YYYYMMDD, or DDMMYYYY
function tep_date_raw($date, $reverse = false) {
  if ($reverse) {
    return substr($date, 0, 2) . substr($date, 3, 2) . substr($date, 6, 4);
  } else {
    return substr($date, 6, 4) . substr($date, 3, 2) . substr($date, 0, 2);
  }
}

// if USE_DEFAULT_LANGUAGE_CURRENCY is true, use the following currency, instead of the applications default currency (used when changing language)
define('LANGUAGE_CURRENCY', 'EUR');

// Global entries for the <html> tag
define('HTML_PARAMS','dir="LTR" lang="de"');

// charset for web pages and emails
define('CHARSET', 'iso-8859-1');

// page title
define('TITLE', STORE_NAME);

// header text in includes/header.php
define('HEADER_TITLE_CREATE_ACCOUNT', 'Account Aanmaken');
define('HEADER_TITLE_MY_ACCOUNT', 'Mijn Account');
define('HEADER_TITLE_CART_CONTENTS', 'Inhoud Winkelwagen');
define('HEADER_TITLE_CHECKOUT', 'Afrekenen');
define('HEADER_TITLE_TOP', 'Begin');
define('HEADER_TITLE_CATALOG', 'Winkel');
define('HEADER_TITLE_LOGOFF', 'Uitloggen');
define('HEADER_TITLE_LOGIN', 'Inloggen');

// footer text in includes/footer.php
define('FOOTER_TEXT_REQUESTS_SINCE', 'Aageroepen sinds');

// text for gender
define('MALE', 'Man');
define('FEMALE', 'Vrouw');
define('MALE_ADDRESS', 'Dhr');
define('FEMALE_ADDRESS', 'Mevr');

// text for date of birth example
define('DOB_FORMAT_STRING', 'dd/mm/jjjj');

// categories box text in includes/boxes/categories.php
define('BOX_HEADING_CATEGORIES', 'Categorieën');

// manufacturers box text in includes/boxes/manufacturers.php
define('BOX_HEADING_MANUFACTURERS', 'Fabrikanten');

// whats_new box text in includes/boxes/whats_new.php
define('BOX_HEADING_WHATS_NEW', 'Wat is er nieuw?');

// quick_find box text in includes/boxes/quick_find.php
define('BOX_HEADING_SEARCH', 'Snel zoeken');
define('BOX_SEARCH_TEXT', 'Gebruik Sleutelwoorden om het Artikel te vinden.');
define('BOX_SEARCH_ADVANCED_SEARCH', 'Geavandceerd Zoeken');

// specials box text in includes/boxes/specials.php
define('BOX_HEADING_SPECIALS', 'Aanbiedingen');

// reviews box text in includes/boxes/reviews.php
define('BOX_HEADING_REVIEWS', 'Recensies');
define('BOX_REVIEWS_WRITE_REVIEW', 'Schrijf een Recensie over dit Artikel!');
define('BOX_REVIEWS_NO_REVIEWS', 'Er zijn geen Recensies over dit Artikel. Wees de eerste!');
define('BOX_REVIEWS_TEXT_OF_5_STARS', '%s van 5 Sterren!');

// shopping_cart box text in includes/boxes/shopping_cart.php
define('BOX_HEADING_SHOPPING_CART', 'Winkelwagen');
define('BOX_SHOPPING_CART_EMPTY', 'artikelen');

// order_history box text in includes/boxes/order_history.php
define('BOX_HEADING_CUSTOMER_ORDERS', 'Bestel Geschiedenis');

// best_sellers box text in includes/boxes/best_sellers.php
define('BOX_HEADING_BESTSELLERS', 'Bestsellers');
define('BOX_HEADING_BESTSELLERS_IN', 'Bestseller in<br>&nbsp;&nbsp;');

// notifications box text in includes/boxes/products_notifications.php
define('BOX_HEADING_NOTIFICATIONS', 'Notificaties');
define('BOX_NOTIFICATIONS_NOTIFY', 'Hou mij op de hoogte van Updates voor <b>%s</b>');
define('BOX_NOTIFICATIONS_NOTIFY_REMOVE', 'Hou mij <b>niet</b> op de hoogte van Updates voor <b>%s</b>');

// manufacturer box text
define('BOX_HEADING_MANUFACTURER_INFO', 'Fabrikant Info');
define('BOX_MANUFACTURER_INFO_HOMEPAGE', '%s Homepage');
define('BOX_MANUFACTURER_INFO_OTHER_PRODUCTS', 'Andere prodcuten');

// languages box test in includes/boxes/languages.php
define('BOX_HEADING_LANGUAGES', 'Talen');

// currencies box text in includes/boxes/currencies.php
define('BOX_HEADING_CURRENCIES', 'Valuta');

// information box text in includes/boxes/information.php
define('BOX_HEADING_INFORMATION', 'Informatie');
define('BOX_INFORMATION_PRIVACY', 'Privacay van gegevens');
define('BOX_INFORMATION_CONDITIONS', 'Algemene Voorwaarden');
define('BOX_INFORMATION_SHIPPING', 'Verzenden en Retouren');
define('BOX_INFORMATION_CONTACT', 'Mail ons');
define('BOX_INFORMATION_FAQ', 'Frecuently Gestelde Vragen');

// information box text in includes/colum_left esto es un relleno
define('BOX_CATEGORIES_SUBCATEGORY_PREFIX', '');
define('BOX_CATEGORIES_CATEGORY_HAS_SUBCATEGORY', '');

// tell a friend box text in includes/boxes/tell_a_friend.php
define('BOX_HEADING_TELL_A_FRIEND', 'Vertel een vreind');
define('BOX_TELL_A_FRIEND_TEXT', 'Vertel iemand die je kent over dit Artikel.');

// checkout procedure text
define('CHECKOUT_BAR_DELIVERY', 'Verzend Informatie');
define('CHECKOUT_BAR_PAYMENT', 'Betaal Informatie');
define('CHECKOUT_BAR_CONFIRMATION', 'Bevestigen');
define('CHECKOUT_BAR_FINISHED', 'Gereed!');

// pull down default text
define('PULL_DOWN_DEFAULT', 'Selecteer');
define('TYPE_BELOW', 'Type hieronder');

// javascript messages
define('JS_ERROR', 'Er hebben zich fouten voor gedaan tijdens het verwerken van het formulier!\nMaak de volgende aanpassingen:\n\n');

define('JS_REVIEW_TEXT', '* De \'Recensie Tekst\' Moet minimaal ' . REVIEW_TEXT_MIN_LENGTH . ' karaktes lang zijn.\n');
define('JS_REVIEW_RATING', '* Je moet het Artikel een waardering geven voor de Recensie.\n');

define('JS_ERROR_NO_PAYMENT_MODULE_SELECTED', '* Selecteer de wijze van Betaling voor Uw Bestelling.\n');

define('JS_ERROR_SUBMITTED', 'Dit formulier is al verstuurd. Klik op oke en wacht tot de verwerking van deze Bestelling gedaan is..');

define('ERROR_NO_PAYMENT_MODULE_SELECTED', 'Selecteer de wijze van Betaling voor Uw Bestelling.');

define('CATEGORY_COMPANY', 'Bedrijfs Gegevens');
define('CATEGORY_PERSONAL', 'Persoonlijke Gegevens');
define('CATEGORY_ADDRESS', 'Uw Adres');
define('CATEGORY_CONTACT', 'Contact Informatie');
define('CATEGORY_OPTIONS', 'Opties');
define('CATEGORY_PASSWORD', 'Uw Wachtwoord');

define('ENTRY_COMPANY', 'Bedrijfsnaam:');
define('ENTRY_COMPANY_ERROR', '');
define('ENTRY_COMPANY_TEXT', '');
// BOF Separate Pricing Per Customer
define('ENTRY_COMPANY_TAX_ID', 'Bedrijf BTW-nummer:');
define('ENTRY_COMPANY_TAX_ID_ERROR', '');
define('ENTRY_COMPANY_TAX_ID_TEXT', '');
define('ENTRY_CUSTOMERS_GROUP_NAME', 'Klanten Groep');
define('ENTRY_CUSTOMERS_GROUP_NAME_ERROR', 'Selecteer uw klanten groep');
define('ENTRY_CUSTOMERS_GROUP_NAME_TEXT', '*');
define('ENTRY_CUSTOMERS_GROUP_NAME_SELECT', 'Selecteer');
// EOF Separate Pricing Per Customer
define('ENTRY_GENDER', 'Geslacht :');
define('ENTRY_GENDER_ERROR', '&nbsp;<small><font color="#AABBDD">verplicht</font></small>.');
define('ENTRY_GENDER_TEXT', '&nbsp;<small><font color="#AABBDD">verplicht</font></small>');
define('ENTRY_FIRST_NAME', 'Voornaam:');
define('ENTRY_FIRST_NAME_ERROR', '&nbsp;<small><font color="#FF0000">min ' . ENTRY_FIRST_NAME_MIN_LENGTH . ' karakters lang zijn</font></small>.');
define('ENTRY_FIRST_NAME_TEXT', '*');
define('ENTRY_LAST_NAME', 'Achternaam:');
define('ENTRY_LAST_NAME_ERROR', 'De Achternaam moet min. ' . ENTRY_LAST_NAME_MIN_LENGTH . ' karakter lang zijn.');
define('ENTRY_LAST_NAME_TEXT', '<small><font color="#AABBDD">verplicht</font></small>');
define('ENTRY_DATE_OF_BIRTH', 'Geboortedatum:');
define('ENTRY_DATE_OF_BIRTH_ERROR', '&nbsp;<small><font color="#FF0000">(bv. 24/12/1970)</font></small>');
define('ENTRY_DATE_OF_BIRTH_TEXT', '&nbsp;<small>(bv. 24/12/1970)<font color="#AABBDD">verplicht</font></small>');
define('ENTRY_EMAIL_ADDRESS', 'E-Mail Adres:');
define('ENTRY_EMAIL_ADDRESS_ERROR', '&nbsp;<small><font color="#FF0000">min ' . ENTRY_EMAIL_ADDRESS_MIN_LENGTH . ' karakters lang zijn</font></small>.');
define('ENTRY_EMAIL_ADDRESS_CHECK_ERROR', '&nbsp;<small><font color="#FF0000">Het lijkt erop dat uw e-mail adres is niet geldig!</font></small>.');
define('ENTRY_EMAIL_ADDRESS_ERROR_EXISTS', '&nbsp;<small><font color="#FF0000">Het e-mail adres bestaat al!</font></small>.');
define('ENTRY_EMAIL_ADDRESS_TEXT', '&nbsp;<small><font color="#AABBDD">verplicht</font></small>');
define('ENTRY_STREET_ADDRESS', 'Straatnaam :');
define('ENTRY_STREET_ADDRESS_ERROR', '&nbsp;<small><font color="#FF0000">min ' . ENTRY_STREET_ADDRESS_MIN_LENGTH . ' karakters lang zijn</font></small>.');
define('ENTRY_STREET_ADDRESS_TEXT', '&nbsp;<small><font color="#AABBDD">verplicht</font></small>');
define('ENTRY_SUBURB', 'Wijk:');
define('ENTRY_SUBURB_ERROR', '');
define('ENTRY_SUBURB_TEXT', '');
define('ENTRY_POST_CODE', 'Postcode:');
define('ENTRY_POST_CODE_ERROR', '&nbsp;<small><font color="#FF0000">min ' . ENTRY_POSTCODE_MIN_LENGTH . ' karakters lang zijn</font></small>.');
define('ENTRY_POST_CODE_TEXT', '&nbsp;<small><font color="#AABBDD">verplicht</font></small>');
define('ENTRY_CITY', 'Plaats:');
define('ENTRY_CITY_ERROR', '&nbsp;<small><font color="#FF0000">min ' . ENTRY_CITY_MIN_LENGTH . ' karakters lang zijn</font></small>.');
define('ENTRY_CITY_TEXT', '&nbsp;<small><font color="#AABBDD">verplicht</font></small>');
define('ENTRY_STATE', 'Provincie :');
define('ENTRY_STATE_ERROR', '&nbsp;<small><font color="#FF0000">verplicht</font></small>.');
define('ENTRY_STATE_ERROR_SELECT', 'Uw provincie moet min. ' . ENTRY_STATE_MIN_LENGTH . ' karakters lang zijn.');
define('ENTRY_STATE_TEXT', '&nbsp;<small><font color="#AABBDD">verplicht</font></small>');
define('ENTRY_COUNTRY', 'Land:');
define('ENTRY_COUNTRY_ERROR', '<small><font color="#AABBDD">Kies een land uit de Pulldown Menu.</font></small>');
define('ENTRY_COUNTRY_TEXT', '&nbsp;<small><font color="#AABBDD">verplicht</font></small>');
define('ENTRY_TELEPHONE_NUMBER', 'Telefoonnummer:');
define('ENTRY_TELEPHONE_NUMBER_ERROR', '&nbsp;<small><font color="#FF0000">min ' . ENTRY_TELEPHONE_MIN_LENGTH . ' karakters lang zijn</font></small>');
define('ENTRY_TELEPHONE_NUMBER_TEXT', '&nbsp;<small><font color="#AABBDD">verplicht</font></small>');
define('ENTRY_FAX_NUMBER', 'Faxnummer:');
define('ENTRY_FAX_NUMBER_ERROR', '');
define('ENTRY_FAX_NUMBER_TEXT', '');
define('ENTRY_NEWSLETTER', 'Nieuwsbrief:');
define('ENTRY_NEWSLETTER_TEXT', '');
define('ENTRY_NEWSLETTER_YES', 'Aboneren');
define('ENTRY_NEWSLETTER_NO', 'Abonement Afzeggen');
define('ENTRY_NEWSLETTER_ERROR', '');
define('ENTRY_PASSWORD', 'Wachtwoord:');
define('ENTRY_PASSWORD_ERROR', '&nbsp;<small><font color="#FF0000">Het Wachtwoord moet min ' . ENTRY_PASSWORD_MIN_LENGTH . ' karakters lang zijn</font></small>.');
define('ENTRY_PASSWORD_ERROR_NOT_MATCHING', 'biede Wachtwoorden moet het zelfde zijn !');
define('ENTRY_PASSWORD_TEXT', '&nbsp;<small><font color="#AABBDD">verplicht</font></small>');
define('ENTRY_PASSWORD_CONFIRMATION', 'Wachtwoord Bevestigen:');
define('ENTRY_PASSWORD_CONFIRMATION_TEXT', '&nbsp;<small><font color="#AABBDD">verplicht</font></small>');
define('ENTRY_PASSWORD_CURRENT', 'Huidig Wachtwoord:');
define('ENTRY_PASSWORD_CURRENT_TEXT', '&nbsp;<small><font color="#AABBDD">verplicht</font></small>');
define('ENTRY_PASSWORD_CURRENT_ERROR', '&nbsp;<small><font color="#FF0000">Het Wachtwoord moet min ' . ENTRY_PASSWORD_MIN_LENGTH . ' karakters lang zijn</font></small>.');
define('ENTRY_PASSWORD_NEW', 'Nieuw Wachtwoord:');
define('ENTRY_PASSWORD_NEW_TEXT', '&nbsp;<small><font color="#AABBDD">verplicht</font></small>');
define('ENTRY_PASSWORD_NEW_ERROR', 'Het Nieuwe Wachtwoordt moet min. ' . ENTRY_PASSWORD_MIN_LENGTH . ' .karakters lang zijn.');
define('ENTRY_PASSWORD_NEW_ERROR_NOT_MATCHING', 'Biede Wachtwoorden moet het zelfde zijn !');
define('PASSWORD_HIDDEN', '--Verborgen--');

define('FORM_REQUIRED_INFORMATION', '&nbsp;<small><font color="#AABBDD">verplicht</font></small>');

// constants for use in tep_prev_next_display function
define('TEXT_RESULT_PAGE', 'Overige Resultaatpagina(s):');

define('TEXT_DISPLAY_NUMBER_OF_PRODUCTS', 'Product <b>%d</b> tot <b>%d</b> (van <b>%d</b> producten)');
define('TEXT_DISPLAY_NUMBER_OF_ORDERS', 'Bestelling <b>%d</b> tot <b>%d</b> (van <b>%d</b> bestellingen)');
define('TEXT_DISPLAY_NUMBER_OF_REVIEWS', 'Recensie <b>%d</b> to <b>%d</b> (of <b>%d</b> Recensies)');
define('TEXT_DISPLAY_NUMBER_OF_PRODUCTS_NEW', 'Nieuw Artikel <b>%d</b> to <b>%d</b> (of <b>%d</b> nieuwe Artikelen)');
define('TEXT_DISPLAY_NUMBER_OF_SPECIALS', 'Aanbieding <b>%d</b> to <b>%d</b> (of <b>%d</b> Aanbiedingen)');

define('PREVNEXT_TITLE_FIRST_PAGE', 'Eerste Pagina');
define('PREVNEXT_TITLE_PREVIOUS_PAGE', 'Vorige Pagina');
define('PREVNEXT_TITLE_NEXT_PAGE', 'Volgende Pagina');
define('PREVNEXT_TITLE_LAST_PAGE', 'Laatste Pagina');
define('PREVNEXT_TITLE_PAGE_NO', 'Pagina %d');
define('PREVNEXT_TITLE_PREV_SET_OF_NO_PAGE', 'Vorige Set van %d Pagina\'s');
define('PREVNEXT_TITLE_NEXT_SET_OF_NO_PAGE', 'Volgende Set van %d Pagina\'s');
define('PREVNEXT_BUTTON_FIRST', '&lt;&lt;Eerste');
define('PREVNEXT_BUTTON_PREV', '[&lt;&lt;&nbsp;Vorige');
define('PREVNEXT_BUTTON_NEXT', '[Volgende&nbsp;&gt;&gt;]');
define('PREVNEXT_BUTTON_LAST', 'Laatste&gt;&gt;');

define('IMAGE_BUTTON_ADD_ADDRESS', 'Adres Toevoegen');
define('IMAGE_BUTTON_ADDRESS_BOOK', 'Adresboek');
define('IMAGE_BUTTON_BACK', 'Terug');
define('IMAGE_BUTTON_BUY_NOW', 'Koop NU');
define('IMAGE_BUTTON_CHANGE_ADDRESS', 'Adres Veranderen');
define('IMAGE_BUTTON_CHECKOUT', 'Kassa');
define('IMAGE_BUTTON_CONFIRM_ORDER', 'Bevestigen');
define('IMAGE_BUTTON_CONTINUE', 'Volgende');
define('IMAGE_BUTTON_CONTINUE_SHOPPING', 'Verder Winkelen');
define('IMAGE_BUTTON_DELETE', 'Verwijderen');
define('IMAGE_BUTTON_EDIT_ACCOUNT', 'Bewerken Account');
define('IMAGE_BUTTON_HISTORY', 'Bestel Geschiedenis');
define('IMAGE_BUTTON_LOGIN', 'Inloggen');
define('IMAGE_BUTTON_IN_CART', 'In Winkelwagen');
define('IMAGE_BUTTON_NOTIFICATIONS', 'Notificaties');
define('IMAGE_BUTTON_QUICK_FIND', 'Snel Zoeken');
define('IMAGE_BUTTON_REMOVE_NOTIFICATIONS', 'Verwijderen Notificaties');
define('IMAGE_BUTTON_REVIEWS', 'Recensies');
define('IMAGE_BUTTON_SEARCH', 'Zoeken');
define('IMAGE_BUTTON_SHIPPING_OPTIONS', 'Verzend Opties');
define('IMAGE_BUTTON_TELL_A_FRIEND', 'Vertel een vriend');
define('IMAGE_BUTTON_UPDATE', 'Bijwerken');
define('IMAGE_BUTTON_UPDATE_CART', 'Winkelwagen Bijwerken');
define('IMAGE_BUTTON_WRITE_REVIEW', 'Schrijf een Recensie');

define('SMALL_IMAGE_BUTTON_DELETE', 'Verwijderen');
define('SMALL_IMAGE_BUTTON_EDIT', 'Bewerken');
define('SMALL_IMAGE_BUTTON_VIEW', 'Bekijken');

define('ICON_ARROW_RIGHT', 'Meer');
define('ICON_CART', 'In de winkelwagen doen');
define('ICON_ERROR', 'Fout');
define('ICON_SUCCESS', 'Success');
define('ICON_WARNING', 'waarschuwing');

define('TEXT_GREETING_PERSONAL', '<center>Welkom terug <span class="greetUser">%s!</span> Wilt U de <a href="%s"><u>nieuwe producten</u></a> zien?</center>');
define('TEXT_GREETING_PERSONAL_RELOGON', '<small>Als U niet %s bent, <a href="%s"><u>log Uzelf in</u></a> met U account informatie.</small>');
define('TEXT_GREETING_GUEST', 'Welkom <span class="greetUser">Gast!</span> Wilt U <a href="%s"><u>inloggen</u></a>? Of wilt U een Nieuw Account <a href="%s"><u>aanmaken</u></a>? Alleen met een Account kunt U dingen bestellen.');

define('TEXT_SORT_PRODUCTS', 'Sorteer Producten ');
define('TEXT_DESCENDINGLY', 'Aflopend');
define('TEXT_ASCENDINGLY', 'Oplopend');
define('TEXT_BY', ' Volgengens ');

define('TEXT_REVIEW_BY', 'van %s');
define('TEXT_REVIEW_WORD_COUNT', '%s Woorden');
define('TEXT_REVIEW_RATING', 'Waardring: %s [%s]');
define('TEXT_REVIEW_DATE_ADDED', 'Datum Toegevoegd: %s');
define('TEXT_NO_REVIEWS', 'Er zijn geen Artikel Recensies.');

define('TEXT_NO_NEW_PRODUCTS', 'Er zijn <b>Geen</b> Nieuwe Artikelen op dit moment.');

define('TEXT_UNKNOWN_TAX_RATE', 'Onbekende Belastings Tartief');

define('TEXT_REQUIRED', '<span class="errorText">Vereist</span>');

define('ERROR_TEP_MAIL', '<font face="Verdana, Arial" size="2" color="#ff0000"><b><small>Error:</small> Kan de E-Mail niet via de opgegeven SMTP server versturen. Controleer de php.ini instellingen en maak eventueel de nodige aanpassingen.</b></font>');
define('WARNING_INSTALL_DIRECTORY_EXISTS', 'Waarschuwing: Installatie directory bestaat nog: ' . dirname($HTTP_SERVER_VARS['SCRIPT_FILENAME']) . '/install. Verwijder deze directory voor veiligheids overwegingen.');
define('WARNING_CONFIG_FILE_WRITEABLE', 'Waarschuwing: Ik kan het configuratie bstand: ' . dirname($HTTP_SERVER_VARS['SCRIPT_FILENAME']) . '/includes/configure.php beschrijven. Dit is een potentieel risico - Stel de user permissies goed in.');
define('WARNING_SESSION_DIRECTORY_NON_EXISTENT',  'Waarschuwing: De sessies directory bestaat niet: ' . tep_session_save_path() . '. Sessies zullen niet werken totdat de Map is aangemaakt.');
define('WARNING_SESSION_DIRECTORY_NOT_WRITEABLE', 'Waarschuwing: Ik kan niet naar de Sessies Map schrijven: ' . tep_session_save_path() . '. Sessies zullen niet werken totdat de user permissies goed zijn gezet.');
define('WARNING_SESSION_AUTO_START', 'Waarschuwing: Session.auto_start staat aan - zet deze uit in php.ini en het start de web server.');
define('WARNING_DOWNLOAD_DIRECTORY_NON_EXISTENT', 'Waarschuwing: De download producten Map bestaat niet: ' . DIR_FS_DOWNLOAD . '. Download producten zal niet werken totdat deze Map is aangemaakt.');

define('TEXT_CCVAL_ERROR_INVALID_DATE', 'De Verloop Datum ingevult voor de Credit Card is ongeldig.<br>Controleer de Datum en probeer opnieuw.');
define('TEXT_CCVAL_ERROR_INVALID_NUMBER', 'Het Credit Card Nummer ingevult is ongeldig.<br>Controleer het Nummer en probeer opnieuw.');
define('TEXT_CCVAL_ERROR_UNKNOWN_CARD', 'De eerste vier ingevulde Nummer van de Credit Card zijn: %s<br>Als dit correct is, dan accepteren wij dit type Credit Card niet.<br>Als het niet klopt, probeer het opnieuw.');

/*
  The following copyright announcement can only be
  appropriately modified or removed if the layout of
  the site theme has been modified to distinguish
  itself from the default osCommerce-copyrighted
  theme.

  For more information please read the following
  Frequently Asked Questions entry on the osCommerce
  support site:

  http://www.oscommerce.com/community.php/faq,26/q,50

  Please leave this comment intact together with the
  following copyright announcement.
*/
define('FOOTER_TEXT_BODY', 'Copyright &copy; 2003 <a href="http://www.oscommerce.com" target="_blank">osCommerce</a><br>Powered by <a href="http://www.oscommerce.com" target="_blank">osCommerce</a>');


define('TEXT_EXTRA_IMAGES', 'ANDERE WEERGAVEN:');

define('TEXT_PRODUCT_DESCRIPTION', 'BESCHRIJVING :');

define('TEXT_PRODUCT_PRICE', 'Prijs :');
// BOF edit pages 
define('BOX_HEADING_PAGES', 'Informatie');
// EOF edit pages
define('TEXT_SEARCH', 'Schrijf de zoekwoorden');
define('TEXT_TELL_A_FRIEND', 'Klik hier om de link naar je vriend');
define('HEADING_TITLE__PRODUCT_NEW', 'Nieuwe producten');
define('FLASH', 'banner1_de');
define('TEXT_PRODUCT_DIMENSIONS', 'Dimensies: ');
define('TEXT_PRODUCT_LENGTH', 'Lengte:');
define('TEXT_PRODUCT_WIDTH', 'Breedte:');
define('TEXT_PRODUCT_DEPTH', 'Diepte:');

define('PLAYLIST', 'Afspeellijst');
define('CASTING', 'Casting');
define('VIDEOS', 'Video\'s');
define('VIEWMORE', 'Bekijk meer');
define('NOTIFICACIONESENRIQUE', 'Bestelbedrag (incl. BTW)<br>BPOST, 3 - 4 werkdagen<br>Betaling via VISA, MASTERCARD, AMEX, DISCOVER, PAYPAL<br>');
?>
