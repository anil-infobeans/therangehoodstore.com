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



  $heading[] = array('text'  => 'Healthy News Users',

                     'link'  => 'healthynews_users.php?selected_box=healthynews_users');







  $box = new box;

  echo $box->menuBox($heading, $contents);

?>

            </td>

          </tr>

<!-- taxes_eof //-->