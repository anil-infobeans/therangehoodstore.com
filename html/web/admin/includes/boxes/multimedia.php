<?php

/*

  $Id: taxes.php,v 1.17 2003/07/09 01:18:53 hpdl Exp $



  osCommerce, Open Source E-Commerce Solutions

  http://www.oscommerce.com



  Copyright (c) 2002 osCommerce



  Released under the GNU General Public License

*/

?>

<!-- taxes //-->

          <tr>

            <td>

<?php

  $heading = array();

  $contents = array();



  $heading[] = array('text'  => BOX_HEADING_MULTIMEDIA,

                     'link'  => tep_href_link(FILENAME_MULTIMEDIA, 'selected_box=multimedia'));



  if ($selected_box == 'taxes') {

    $contents[] = array('text'  => '<a href="' . tep_href_link(FILENAME_MUSIC, '', 'NONSSL') . '" class="menuBoxContentLink" target="_blank">' . BOX_TAXES_MUSIC . '</a><br>' .

                                   '<a href="' . tep_href_link(FILENAME_CASTING, '', 'NONSSL') . '" class="menuBoxContentLink" target="_blank">' . BOX_TAXES_CASTING . '</a><br>' .

                                   '<a href="' . tep_href_link(FILENAME_VIDEOS, '', 'NONSSL') . '" class="menuBoxContentLink" target="_blank">' . BOX_TAXES_VIDEOS . '</a><br>' . 

								   '<a href="' . tep_href_link(FILENAME_UPLOADPDF, '', 'NONSSL') . '" class="menuBoxContentLink" target="_blank">' . BOX_UPLOADPDF . '</a><br>');

  }



  $box = new box;

  echo $box->menuBox($heading, $contents);

?>

            </td>

          </tr>

<!-- taxes_eof //-->

