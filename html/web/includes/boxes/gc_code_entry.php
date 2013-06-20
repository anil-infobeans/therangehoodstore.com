<?php
/*
  $Id: search.php,v 1.22 2003/02/10 22:31:05 hpdl Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce

  Released under the GNU General Public License
*/
?>
<!-- search //-->
          <tr>
            <td>
<?php
  $info_box_contents = array();
  $info_box_contents[] = array('text' => BOX_HEADING_GC_CODE);

  new infoBoxHeading($info_box_contents, false, false);

  $info_box_contents = array();
  $info_box_contents[] = array('form' => tep_draw_form('gc_code_entry', tep_href_link(FILENAME_GC_CODE_ENTRY, '', 'NONSSL', false), 'get'),
                               'align' => 'center',
                               'text' => tep_draw_input_field('gc_code', '', 'size="10" maxlength="30" style="width: ' . (BOX_WIDTH-30) . 'px"') . '&nbsp;' . tep_hide_session_id() . tep_image_submit('small_enter.gif', BOX_HEADING_GC_CODE) . '<br>' . BOX_GC_CODE_TEXT . ' ' . tep_draw_hidden_field('lastpage', $PHP_SELF) . ' ' . tep_draw_hidden_field('cpath', $cPath));

  new infoBox($info_box_contents);
?>
            </td>
          </tr>
<!-- search_eof //-->




