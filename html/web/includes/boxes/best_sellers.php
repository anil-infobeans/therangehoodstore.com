<?php
/*
  $Id: best_sellers.php,v 1.21 2003/06/09 22:07:52 hpdl Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce

  Released under the GNU General Public License
*/

  if (isset($current_category_id) && ($current_category_id > 0)) {
    $best_sellers_query = tep_db_query("select distinct p.products_id, pd.products_name, p.products_price from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd, " . TABLE_PRODUCTS_TO_CATEGORIES . " p2c, " . TABLE_CATEGORIES . " c where p.products_status = '1' and p.products_ordered > 0 and p.products_id = pd.products_id and pd.language_id = '" . (int)$languages_id . "' and p.products_id = p2c.products_id and p2c.categories_id = c.categories_id and '" . (int)$current_category_id . "' in (c.categories_id, c.parent_id) order by p.products_ordered desc, pd.products_name limit " . MAX_DISPLAY_BESTSELLERS);
  } else {
    $best_sellers_query = tep_db_query("select distinct p.products_id, pd.products_name, p.products_price from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_status = '1' and p.products_ordered > 0 and p.products_id = pd.products_id and pd.language_id = '" . (int)$languages_id . "' order by p.products_ordered desc, pd.products_name limit " . MAX_DISPLAY_BESTSELLERS);
  }

  if (tep_db_num_rows($best_sellers_query) >= MIN_DISPLAY_BESTSELLERS) {
?>
<!-- best_sellers //-->

			 <table border="0" cellspacing="0" cellpadding="0" width="190" align="center">
			  <tr><td width="190" height="27" class="bg1"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span class="tx3"><?=BOX_HEADING_BESTSELLERS?></span></td></tr>
		      <tr><td width="190" class="bd">
<?php
    $info_box_contents = array();
    $info_box_contents[] = array('text' => BOX_HEADING_BESTSELLERS);

    // new infoBoxHeading($info_box_contents, false, false);

    $rows = 0;
    $bestsellers_list = '';
    while ($best_sellers = tep_db_fetch_array($best_sellers_query)) {
      $rows++;
		if (($rows % 2)==1) $bestsellers_list .= '<tr><td height="21" width="125"><img src="images/m23.gif" alt="" style="margin-left:13px; margin-right:7px;" class="ab"><a class="ml4" href="' . tep_href_link(FILENAME_PRODUCT_INFO, 'products_id=' . $best_sellers['products_id']) . '">' . $best_sellers['products_name'] . '</a></td><td height="21" width="53" class="tx4">&nbsp;&nbsp;'.sprintf("%.2f",$best_sellers['products_price']).'</td></tr></td></tr>';
			else $bestsellers_list .= '<tr><td height="19" bgcolor="EFEFEF"><img src="images/m23.gif" alt="" style="margin-left:13px; margin-right:7px;" class="ab"><a class="ml4" href="' . tep_href_link(FILENAME_PRODUCT_INFO, 'products_id=' . $best_sellers['products_id']) . '">' . $best_sellers['products_name'] . '</a></td><td height="19" width="25" class="tx4" bgcolor="EFEFEF">&nbsp;&nbsp;'.sprintf("%.2f",$best_sellers['products_price']).'</td></tr>';
    }
    $bestsellers_list .= '';
    $info_box_contents = array();
    $info_box_contents[] = array('text' => $bestsellers_list);
    // new infoBox($info_box_contents);
?>



			       <table border="0" cellspacing="0" cellpadding="0" width="178" align="center">
				    <tr><td height="9" colspan="2"></td></tr>
					<tr><td height="19" width="125" bgcolor="EFEFEF" class="tx5"> &nbsp; &nbsp; Name</td><td height="19" width="25" class="tx5" bgcolor="EFEFEF">Price</td></tr>
					<?=$info_box_contents[0]['text']?>
					<tr><td height="8" colspan="2"></td></tr>					
				   </table>
			  </td></tr>
			 </table>
<!-- best_sellers_eof //-->
<?php
  }
?>
