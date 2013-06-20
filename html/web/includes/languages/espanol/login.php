<?php
/*
  $Id: login.php,v 1.18 2003/07/08 16:56:04 dgw_ Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce

  Released under the GNU General Public License
*/

define('NAVBAR_TITLE', 'Entrar');
define('HEADING_TITLE', 'Acceda a su cuenta de cliente');

define('HEADING_NEW_CUSTOMER', 'Nuevo Cliente');
define('TEXT_NEW_CUSTOMER', 'Soy un nuevo cliente.');
define('TEXT_NEW_CUSTOMER_INTRODUCTION', 'Al crear una cuenta en ' . STORE_OWNER . ' podrá acceder a oportunidades y privilegios cómo cliente registrado.');

define('HEADING_RETURNING_CUSTOMER', 'Ya Soy Cliente');
define('TEXT_RETURNING_CUSTOMER', 'Ya estoy registrado.');

define('TEXT_PASSWORD_FORGOTTEN', '&iquest;Ha olvidado su contrase&ntilde;a?');

define('TEXT_LOGIN_ERROR', 'Error: El E-Mail y/o Contrase&ntilde;a no figuran en nuestros datos.');
define('TEXT_VISITORS_CART', '<font color="#ff0000"><b>Nota:</b></font> El contenido de su &quot;Cesta de Visitante&quot; ser&aacute; a&ntilde;adido a su &quot;Cesta de Asociado&quot; una vez que haya entrado. <a href="javascript:session_win();">[M&aacute;s Informaci&oacute;n]</a>');
// BOF Separate Pricing Per Customer
// define the email address that can change customer_group_id on login
define('SPPC_TOGGLE_LOGIN_PASSWORD', 'root@localhost');
// EOF Separate Pricing Per Customer
?>
