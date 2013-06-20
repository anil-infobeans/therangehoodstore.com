<?php

/*

  $Id: products_extra_images.php,v 1.0 2003/06/11 Mikel Williams



  osCommerce, Open Source E-Commerce Solutions

  http://www.oscommerce.com



	Copyright (c) 2003 osCommerce



  Released under the GNU General Public License

*/



define('HEADING_TITLE', 'Imagenes Extras por Producto');

define('TABLE_HEADING_PRODUCTS_MODEL', 'Modelo');

define('TABLE_HEADING_PRODUCTS_NAME', 'Nombre de Producto');



/* Added for product image*/

define('TABLE_HEADING_PRODUCTS_IMAGE', 'Producto');

define('TABLE_HEADING_PRODUCTS_IMAGE_PATH', 'Ruta de Imagen (de OSC folder de imagenes)');

define('TABLE_HEADING_PRODUCTS_EXTRA_IMAGE', 'Extra Imagen');

/* Added for product image*/



define('TABLE_HEADING_PRODUCTS_ID', 'ID de Productos');

define('TABLE_HEADING_ACTION', 'Acción');



define('TEXT_PAGING_FORMAT', 'Mostrando de <b>%d</b> a <b>%d</b> (de <b>%d</b> imagenes extras)');

define('TEXT_HEADING_EDIT_EXTRA_IMAGE', 'Editar Imagen Extra de producto');

define('TEXT_HEADING_NEW_EXTRA_IMAGE', 'Nueva Imagen Extra de producto');

define('TEXT_NEW_INTRO', 'Por favor llena la siguiente información de la Nueva Imagen Extra de producto');

define('TEXT_EDIT_INTRO', 'Por favor haz los cambios necesarios');

define('TEXT_PRODUCTS', 'Número de Productos:');



/* Added for small improvements in upload UI */

define('TEXT_PRODUCTS_NAME', 'Nombre de Producto:');

define('TEXT_PRODUCTS_IMAGE', 'Imagen de Producto:');



/* Added for fix and allows for setting customized paths to image on server*/

define('TEXT_IMAGE_NONEXISTENT', 'IMAGEN NO EXISTE');

define('TEXT_SPECIAL_IMAGE_PATH', 'si deseas tener otro directorio <BR>donde subas las extra imagenes <BR>, por favor pon la ruta <BR>con un <B>slash</B> al final del nombre de folder.<BR>el subfolder debe de <BR>estar dentro de la carpeta images.<BR>

<B>Ejemplo: images/subsubfolder/</B>');

define('UPDATE_EXTRA_IMAGE_OPTION', 'o si ya la imagenes ya estan <BR>subidas entonces puedes poner <BR>la ruta .<b>Ejemplo: images/subsubfolder/mimiagen.jpg o <BR>images/mimiagen.jpg</b>');

/* Added for fix and allows for setting customized paths to image on server*/



/** Added to place a link to insert a link to add a new image on the top of the table **/

define(ACTION_ADD_NEW_EXTRA_IMAGE, "Agregar Nueva Imagen");

?>

