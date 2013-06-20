<?php

/*

  $Id: customers.php,v 1.16 2003/07/09 01:18:53 hpdl Exp $



  osCommerce, Open Source E-Commerce Solutions

  http://www.oscommerce.com

Copyright (c) 2005

  Released under the GNU General Public License

  ////////////////////////////

  Modificado por Belchior

  webmaster@sualojavirtual.com

  www.sualojavirtual.com

  ///////////////////////////

*/

?>

<!-- customers //-->

          <tr>

            <td>

<?php

  $heading = array();

  $contents = array();



  $heading[] = array('text'  => BOX_HEADING_INFORMATION,

                     'link'  => tep_href_link(FILENAME_EDIT_SHIPPING, 'selected_box=information'));



  if ($selected_box == 'information') {

    $contents[] = array('text'  => '<a href="' . tep_href_link(FILENAME_EDIT_SHIPPING, '', 'NONSSL') . '" class="menuBoxContentLink">' . BOX_INFORMATION_SHIPPING . '</a><br>' .

                                   '<a href="' . tep_href_link(FILENAME_EDIT_PRIVACY, '', 'NONSSL') . '" class="menuBoxContentLink">' . BOX_INFORMATION_PRIVACY . '</a><br>' .

                                   '<a href="' . tep_href_link(FILENAME_EDIT_ABOUT_US, '', 'NONSSL') . '" class="menuBoxContentLink">' . BOX_INFORMATION_ABOUT_US . '</a><br>' .

								   '<a href="' . tep_href_link(FILENAME_EDIT_FAQ, '', 'NONSSL') . '" class="menuBoxContentLink">' . BOX_INFORMATION_FAQ . '</a><br>' .

                                   '<a href="' . tep_href_link(FILENAME_EDIT_CONDITIONS, '', 'NONSSL') . '" class="menuBoxContentLink">' . BOX_INFORMATION_CONDITIONS . '</a><br>');

  }



  $box = new box;

  echo $box->menuBox($heading, $contents);

?>

            </td>

          </tr>

<!-- customers_eof //-->

