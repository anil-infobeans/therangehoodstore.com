<?php
/*
  $Id: gv_faq.php,v 1.1.1.1.2.2 2003/05/04 12:24:25 wilt Exp $

  The Exchange Project - Community Made Shopping!
  http://www.theexchangeproject.org

  Gift Voucher System v1.0
  Copyright (c) 2001,2002 Ian C Wilson
  http://www.phesis.org

  Released under the GNU General Public License
*/

define('NAVBAR_TITLE', 'Bono de Regalo - Preguntas');
define('HEADING_TITLE', 'Bono de Regalo - Preguntas');

define('TEXT_INFORMATION', '<a name="Top"></a>
  <a href="'.tep_href_link(FILENAME_GV_FAQ,'faq_item=1','NONSSL').'">Comprando Bonos de Regalo</a><br>
  <a href="'.tep_href_link(FILENAME_GV_FAQ,'faq_item=2','NONSSL').'">Como enviar un Bono de Regalo</a><br>
  <a href="'.tep_href_link(FILENAME_GV_FAQ,'faq_item=3','NONSSL').'">Usar un Bono de Regalo</a><br>
  <a href="'.tep_href_link(FILENAME_GV_FAQ,'faq_item=4','NONSSL').'">Canjear un Bono de Regalo</a><br>
  <a href="'.tep_href_link(FILENAME_GV_FAQ,'faq_item=5','NONSSL').'">Posibles Problemas</a><br>
');
switch ($HTTP_GET_VARS['faq_item']) {
  case '1':
define('SUB_HEADING_TITLE','Comprando Bonos de Regalo.');
define('SUB_HEADING_TEXT','Bonos de regalo se compran como cualquier otro art�tulo de nuestra tienda.<br>
Usted puede pagar por ellos con las tiendas de m�todo de pago est�ndar (s).<br>
Una vez adquirido, el valor del Bono de Regalo, este se a�adir� a su cuenta.<br>
Si usted tiene fondos en su Cuenta de Bono de Regalo, se notar� que la cantidad ahora se muestra en �l Carro de Compras, y tambi�n proporciona un enlazar a una p�gina donde podr� enviar el Bono de Regalo a alguien por correo electr�nico.');
  break;
  case '2':
define('SUB_HEADING_TITLE','Como enviar un Bono de Regalo.');
define('SUB_HEADING_TEXT','Para enviar un Bono de Regalo que usted ha comprado, tienes que ir a nuestra p�gina Enviar Bono de Regalo.<br>
Usted puede encontrar el enlace a esta p�gina en el Cuadro del Carro de Compras en la columna de la derecha de cada p�gina.<br>
Cuando usted env�a un Vale de Regalo, necesita especificar la siguiente informaci�n: <br>
El nombre de la persona que est� enviando el Bono de Regalo. <br>
La direcci�n de correo electr�nico de la persona que est� enviando el Bono de Regalo. <br>
La cantidad que desea enviar. (Nota : No es necesario enviar la cantidad total que esta en el Bono de Regalo Cuenta.) <br>
Un mensaje corto que aparecer� en el correo electr�nico. <br>
Por favor, aseg�rese de haber ingresado toda la informaci�n correctamente, a pesar de se le dar� la oportunidad de cambiar esta situaci�n tanto como usted desea antes de que el email sea enviado.');  
  break;
  case '3':
  define('SUB_HEADING_TITLE','Usar un Bono de Regalo.');
  define('SUB_HEADING_TEXT','Si usted tiene fondos en su Cuenta de Bono de Regalo, puede utilizar esos fondos para comprar otros art�culos en nuestra tienda.<br>
Al momento del pago, una caja extra aparecer�. Al hacer clic en este cuadro se aplicar�n esos fondos en su Cuenta de Bono Regalo.<br>
Por favor tome nota que usted tendr� que seleccionar otro m�todo de pago si no hay dinero suficiente en su Cuenta de Bono de Regalo para cubrir el costo de su compra.<br>
Si tiene m�s fondos en su Cuenta de Bono Regalo que el coste total de su compra el resto se queda en ti Bono de Regalo Cuenta para el futuro.<br>');
  break;
  case '4':
  define('SUB_HEADING_TITLE','Canjear un Bono de Regalo.');
  define('SUB_HEADING_TEXT','Si recibe un Bono de Regalo por email, tendr� los detalles de qui�n le envi�
   que el vale de regalo, junto con un posible peque�o mensaje. <br>El E-mail
   Tambi�n contendr� el n�mero de Bono de Regalo. <br>Imprima
   este email para futuras referencias. Usted puede ahora canjear el Bono de Regalo de
   dos maneras. <br>
   1. Al hacer clic en el enlace que contiene el email justo para este prop�sito.
   Esto le llevar� a la tienda de la p�gina de Canje de Bonos de Regalo. usted solicitar� 
   para crear una cuenta, antes de que el Bono de Regalo sea validado y puesto en su
   Bono de Regalo Cuenta listo para que lo gaste en lo que quieras. <br>
   2. Durante el proceso de pago, en la misma p�gina que usted seleccione un m�todo de pago
 habr� un recuadro para ingresar un c�digo de canjear. Ingrese el c�digo de aqu�, y haga clic en el bot�n de canjear. El c�digo ser�
 validado y agregado a su cuenta de Bono de Regalo. A continuaci�n, puede utilizar la cantidad para comprar cualquier art�culo de nuestra tienda');
  break;
  case '5':
  define('SUB_HEADING_TITLE','Posibles Problemas');
  define('SUB_HEADING_TEXT','Si existe algun problema, por favor contactarse al siguiente email '. STORE_OWNER_EMAIL_ADDRESS . ' ');
  break;
  default:
  define('SUB_HEADING_TITLE','');
  define('SUB_HEADING_TEXT','Por favor escoger una de las siguientes preguntas.');

  }
?>
