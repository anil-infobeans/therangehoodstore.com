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

define('HEADING_TITLE', 'Enviar Bono de Regalo');
define('NAVBAR_TITLE', 'Enviar Bono de Regalo');
define('EMAIL_SUBJECT', 'Formulario ' . STORE_NAME);
define('HEADING_TEXT','<br>Por favor, introduzca a continuación los detalles del certificado de regalo que desea enviar. <br>');
define('ENTRY_NAME', 'Nombre del Recipiente:');
define('ENTRY_EMAIL', 'Email del Recipiente:');
define('ENTRY_MESSAGE', 'Mensaje al Recipiente:');
define('ENTRY_AMOUNT', 'Monto del Bono de Regalo:');
define('ERROR_ENTRY_AMOUNT_CHECK', '&nbsp;&nbsp;<span class="errorText">Monto Inválido</span>');
define('ERROR_ENTRY_EMAIL_ADDRESS_CHECK', '&nbsp;&nbsp;<span class="errorText">Email Inválido</span>');
define('MAIN_MESSAGE', 'Tu decidistes enviar un Bono de Regalo con el siguiente monto %s a %s el dueño del siguiente email %s<br><br>EL mensaje  será el siguiente <br><br>Sr(a) %s<br><br>
                        Se ha enviado un Bono de Regalo con el siguiente valor %s de %s');

define('PERSONAL_MESSAGE', '%s dice');
define('TEXT_SUCCESS', 'Felicitaciones!, Tu Bono de Regalo ha sido enviado');


define('EMAIL_SEPARATOR', '----------------------------------------------------------------------------------------');
define('EMAIL_GV_TEXT_HEADER', 'Felicitaciones, has recibido un Bono de Regalo de %s');
define('EMAIL_GV_TEXT_SUBJECT', 'un regalo de %s');
define('EMAIL_GV_FROM', 'Este certificado de regalo ha sido enviado a usted por %s');
define('EMAIL_GV_MESSAGE', 'Con el mensaje siguiente ');
define('EMAIL_GV_SEND_TO', 'Hola, %s');
define('EMAIL_GV_REDEEM', 'Para usar el Bono de Regalo, por favor usar hacer click en el siguiente enlace. Por favor escribir el codigo %s. en caso que tengas problemas.');
define('EMAIL_GV_LINK', 'para usarlo click aqui');
define('EMAIL_GV_VISIT', ' o visita ');
define('EMAIL_GV_ENTER', ' e ingresa el código ');
define('EMAIL_GV_FIXED_FOOTER', 'Si tienes problemas usando el Bono de Regalo, usar el siguiente link automatizado, ' . "\n" . 
                                'tambien puedes ingresar el código durante el proceso de compra.' . "\n\n");
define('EMAIL_GV_SHOP_FOOTER', '');
define('TEXT_INVALID_GV', 'EL Bono de Regalo ya fue utilizado, por favor contactarse usando el formulario de contacto');
?>