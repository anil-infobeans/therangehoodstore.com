<?php
/*
  $Id: linpoint_api.php,v 1.20 2004/09/01 22:40:24 DJALEX Exp $

The Exchange Project - Community Made Shopping
http://www.theexchangeproject.org

Copyright (c) 2000,2001 The Exchange Project

  Released under the GNU General Public License
*/

  define('MODULE_PAYMENT_LINKPOINT_API_TEXT_TITLE', 'Transacción segura para tarjeta de crédito');   
  define('MODULE_PAYMENT_LINKPOINT_API_TEXT_DESCRIPTION', 'Credit Card Test Info:<br><br>CC#:4111111111111111<br>Expira:cualquier fecha');
  define('MODULE_PAYMENT_LINKPOINT_API_TEXT_TYPE', 'Tipo:');   
  define('MODULE_PAYMENT_LINKPOINT_API_TEXT_CREDIT_CARD_NUMBER', 'Número de Tarjeta de Crédito:');    
  define('MODULE_PAYMENT_LINKPOINT_API_TEXT_CREDIT_CARD_CHECK_VALUE', 'Valor de verificación de tarjeta:');
  define('MODULE_PAYMENT_LINKPOINT_API_CVS_NOT_PRESENT', 'No legible:');
  define('MODULE_PAYMENT_LINKPOINT_API_TEXT_CREDIT_CARD_OWNER', 'Nombre del Dueño de la tarjeta de crédito:');    
  define('MODULE_PAYMENT_LINKPOINT_API_TEXT_CREDIT_CARD_TYPE', 'Tipo de tarjeta de crédito:');   
  define('MODULE_PAYMENT_LINKPOINT_API_TEXT_CREDIT_CARD_EXPIRES', 'Fecha de expiración de tarjeta de crédito:');    
  define('MODULE_PAYMENT_LINKPOINT_API_TEXT_JS_CC_NUMBER', '* El número de la tarjeta de crédito debería ser al menos de  ' . CC_NUMBER_MIN_LENGTH . ' carácteres.\n');
  define('MODULE_PAYMENT_LINKPOINT_API_TEXT_ERROR_MESSAGE', 'Hay un error procesando tu tarjeta de crédito, por favor esperar 10 minutos antes de tratar de nuevo.');
  define('MODULE_PAYMENT_LINKPOINT_API_TEXT_DECLINED_MESSAGE', 'Tu tarjeta de crédito fue declinado. Por favor tratar con otra tarjeta de crédito o contacta a tu banco para mayor información.');
  define('MODULE_PAYMENT_LINKPOINT_API_TEXT_DUPLICATE_MESSAGE', 'Tal parece que has enviado tu pedido más de una vez, esto fue declinado previamente, por favor esperar 10 minutos.');
  define('MODULE_PAYMENT_LINKPOINT_API_TEXT_ERROR', 'Error en la tarjeta de crédito!');
  define('TEXT_SEARCH_CVS_HELP', 'Cual es el valor [?]');

?>