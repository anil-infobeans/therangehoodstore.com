<?php

/*

  $Id: gv_queue.php,v 1.2.2.1 2003/04/27 12:36:00 wilt Exp $



  osCommerce, Open Source E-Commerce Solutions

  http://www.oscommerce.com



  Copyright (c) 2002 - 2003 osCommerce



  Gift Voucher System v1.0

  Copyright (c) 2001,2002 Ian C Wilson

  http://www.phesis.org



  Released under the GNU General Public License

*/



define('HEADING_TITLE', 'Vale de Regalo de lanzamiento de cola');



define('TABLE_HEADING_CUSTOMERS', 'Clientes');

define('TABLE_HEADING_ORDERS_ID', 'Order-No.');

define('TABLE_HEADING_VOUCHER_VALUE', 'Valor de Regalo');

define('TABLE_HEADING_DATE_PURCHASED', 'Fecha de Compra');

define('TABLE_HEADING_ACTION', 'Action');



define('TEXT_REDEEM_COUPON_MESSAGE_HEADER', 'Recientemente has adquirido un voucher de regalo de nuestra tienda online.' . "\n"

                                          . 'Por razones de seguridad no esta inmediatamente disponible para ti.' . "\n"

                                          . 'Sin embargo este monto ha sido liberado. Ahora puedes visitar nuestra tienda' . "\n"

                                          . 'y enviar el valor via email a quien desees' . "\n\n");



define('TEXT_REDEEM_COUPON_MESSAGE_AMOUNT', 'El bono de regalo que comprastes esta cobrado %s' . "\n\n");



define('TEXT_REDEEM_COUPON_MESSAGE_BODY', '');

define('TEXT_REDEEM_COUPON_MESSAGE_FOOTER', '');

define('TEXT_REDEEM_COUPON_SUBJECT', 'Compra de bono de regalo');

?>