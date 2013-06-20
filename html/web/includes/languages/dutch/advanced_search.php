<?php
/*
  $Id: advanced_search.php,v 1.21 2003/07/11 09:04:22 jan0815 Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce

  Released under the GNU General Public License
*/

define('NAVBAR_TITLE_1', 'Geavanceers Zoeken');
define('NAVBAR_TITLE_2', 'Zoek Resultaat');

define('HEADING_TITLE_1', 'Geeft Uw Zoek Criteria in');
define('HEADING_TITLE_2', 'Artikel die aan de Criteria voldoen');

define('HEADING_SEARCH_CRITERIA', 'Zoek Criteria');

define('TEXT_SEARCH_IN_DESCRIPTION', 'Zoeken in Artikel omschrijvingen');
define('ENTRY_CATEGORIES', 'Categorieën:');
define('ENTRY_INCLUDE_SUBCATEGORIES', 'Inclusief Sub-Catagoieën');
define('ENTRY_MANUFACTURERS', 'Fabrikanten:');
define('ENTRY_PRICE_FROM', 'Prijs Vanaf:');
define('ENTRY_PRICE_TO', 'Prijs Tot:');
define('ENTRY_DATE_FROM', 'Vanaf Datum:');
define('ENTRY_DATE_TO', 'Tot Datum:');

define('TEXT_SEARCH_HELP_LINK', '<u>Hulp met Zoeken</u> [?]');

define('TEXT_ALL_CATEGORIES', 'Alle Categorieën');
define('TEXT_ALL_MANUFACTURERS', 'Alle Fabrikanten');

define('HEADING_SEARCH_HELP', 'Hulp met zoeken');
define('TEXT_SEARCH_HELP', 'Sleutewoorden mogen gescheiden worden met AND en/of OR statements om meer controle te krijgen over het zoek resultaat<br><br>Bijboorbeeld <u>Microsoft AND mouse</u>zal een resultaat geven waar beide woorden in voorkomen. Maar, voor <u>Muis OR Toetsenbord</u>, zal het resultaat terugkomen met beide woorden of een van de twee woorden.<br><br>Om op een exacte regel of serie woorden te zoeken kunt u de woorden tussen dubbel quotes plaatsen.<br><br>Bijvoorbeeld, <u>"Notebook computer"</u>zal het resultaat generen waar deze exate zin is terug te vinden.<br><br>Haken kunnen ook nog gebruikt worden waar deze excate zin is terug te vinden.<br><br>Bijvoorbeeld, <u>Microsoft and (keyboard or mouse or "visual basic")</u>.');
define('TEXT_CLOSE_WINDOW', '<u>Venster sluiten</u> [x]');

define('TABLE_HEADING_IMAGE', '');
define('TABLE_HEADING_MODEL', 'Model/Type');
define('TABLE_HEADING_PRODUCTS', 'Artikel Naam');
define('TABLE_HEADING_MANUFACTURER', 'Fabrikant');
define('TABLE_HEADING_QUANTITY', 'Aantal');
define('TABLE_HEADING_PRICE', 'Stuk Prijs');
define('TABLE_HEADING_WEIGHT', 'Gewicht');
define('TABLE_HEADING_BUY_NOW', 'Koop NU');

define('TEXT_NO_PRODUCTS', 'Er zijn geen Artikelen die overeen komen met de criteria.');

define('ERROR_AT_LEAST_ONE_INPUT', 'Minimaal 1 veld moet worden ingevuld.');
 define('ERROR_INVALID_FROM_DATE', 'Vanaf Datum Ongeldig');
define('ERROR_INVALID_TO_DATE', 'Tot Datum Ongeldig');
define('ERROR_TO_DATE_LESS_THAN_FROM_DATE', 'Tot Datum moet groter of gelijk zijn aan de Vanaf Datum');
define('ERROR_PRICE_FROM_MUST_BE_NUM', 'Prijs Vanaf moet een nummer zijn');
define('ERROR_PRICE_TO_MUST_BE_NUM', 'Prijs Tot moet een nummer zijn');
define('ERROR_PRICE_TO_LESS_THAN_PRICE_FROM', 'Prijs Tot moet groter of gelijk zijn aan de Prijs Vanaf.');
define('ERROR_INVALID_KEYWORDS', 'Ongeldige Sleuterwoorden');
?>
