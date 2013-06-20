<?php
/*
  $Id: product_listing.php,v 1.44 2003/06/09 22:49:59 hpdl Exp $
  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com
  Copyright (c) 2003 osCommerce
  Released under the GNU General Public License
*/
	$new_products=array();
	$new_p_id=array();
?>
<script language="javascript"><!--
function popupWindow(url) {
  window.open(url,'popupWindow','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,copyhistory=no,width=290,height=290,screenX=290,screenY=290,top=150,left=150');
}
//--></script>
					<table width="100%" style="height:100%" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
					  <tr>
						<td width="100%" height="100%" valign="top" style="background:url(images/r-t-dr.jpg) no-repeat; padding: 14px 11px 15px 19px">
							<table width="100%" style="height:22px" cellspacing="0" cellpadding="0" border="0" >
							  <tr>
								<td width="25" height="100%" valign="top"></td>
								<td class="h_r_text" height="100%" valign="top" width="100%">
									<?php echo tep_draw_separator('spacer.gif', '290', '3'); ?><br>
									<strong><?=$breadcrumb->trail(' &raquo; ')?></strong><br>
								</td>
								<td height="100%" width="100%" valign="top"></td>
							  </tr>
							</table>
							<br style="line-height:18px;">
							<table width="100%" cellspacing="0" cellpadding="0" border="0">
							  <tr>
								<td width="100%" height="100%" valign="top">
									<br style="line-height:5px;">
<?
  $listing_split = new splitPageResults($listing_sql, MAX_DISPLAY_SEARCH_RESULTS, 'p.products_id');
  if ( ($listing_split->number_of_rows > 0) && ( (PREV_NEXT_BAR_LOCATION == '1') || (PREV_NEXT_BAR_LOCATION == '3') ) ) {
?>
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <td class="smallText"><?php echo $listing_split->display_count(TEXT_DISPLAY_NUMBER_OF_PRODUCTS); ?></td>
    <td class="smallText" align="right"><?php echo TEXT_RESULT_PAGE . ' ' . $listing_split->display_links(MAX_DISPLAY_PAGE_LINKS, tep_get_all_get_params(array('page', 'info', 'x', 'y'))); ?></td>
  </tr>
</table>
<?php
  }
  $list_box_contents = array();
  for ($col=0, $n=sizeof($column_list); $col<$n; $col++) {
    switch ($column_list[$col]) {
      case 'PRODUCT_LIST_MODEL':
        $lc_text = TABLE_HEADING_MODEL;
        $lc_align = '';
        break;
      case 'PRODUCT_LIST_NAME':
        $lc_text = TABLE_HEADING_PRODUCTS;
        $lc_align = '';
        break;
      case 'PRODUCT_LIST_MANUFACTURER':
        $lc_text = TABLE_HEADING_MANUFACTURER;
        $lc_align = '';
        break;
      case 'PRODUCT_LIST_PRICE':
        $lc_text = TABLE_HEADING_PRICE;
        $lc_align = 'right';
        break;
      case 'PRODUCT_LIST_QUANTITY':
        $lc_text = TABLE_HEADING_QUANTITY;
        $lc_align = 'right';
        break;
      case 'PRODUCT_LIST_WEIGHT':
        $lc_text = TABLE_HEADING_WEIGHT;
        $lc_align = 'right';
        break;
      case 'PRODUCT_LIST_IMAGE':
        $lc_text = TABLE_HEADING_IMAGE;
        $lc_align = 'center';
        break;
      case 'PRODUCT_LIST_BUY_NOW':
        $lc_text = TABLE_HEADING_BUY_NOW;
        $lc_align = 'center';
        break;
    }
    if ( ($column_list[$col] != 'PRODUCT_LIST_BUY_NOW') && ($column_list[$col] != 'PRODUCT_LIST_IMAGE') ) {
      $lc_text = tep_create_sort_heading($HTTP_GET_VARS['sort'], $col+1, $lc_text);
    }
    $list_box_contents[0][] = array('align' => $lc_align,
                                    'params' => 'class="productListing-heading"',
                                    'text' => '&nbsp;' . $lc_text . '&nbsp;');
  }
 if ($listing_split->number_of_rows > 0) {

    $rows = 0;
    $listing_query = tep_db_query($listing_split->sql_query);
// BOF Separate Pricing per Customer
    $no_of_listings = tep_db_num_rows($listing_query);
// global variable (session) $sppc_customer_group_id -> local variable customer_group_id

  if(!tep_session_is_registered('sppc_customer_group_id')) {
  $customer_group_id = '0';
  } else {
   $customer_group_id = $sppc_customer_group_id;
  }

	while ($_listing = tep_db_fetch_array($listing_query)) {
	$listing[] = $_listing;
	$list_of_prdct_ids[] = $_listing['products_id'];
	}
// next part is a debug feature, when uncommented it will print the info that this module receives
 /*
   echo '<pre>';
   print_r($listing);
   echo '</pre>';
 */
  $select_list_of_prdct_ids = "products_id = '".$list_of_prdct_ids[0]."' ";
  if ($no_of_listings > 1) {
   for ($n = 1 ; $n < count($list_of_prdct_ids) ; $n++) {
   $select_list_of_prdct_ids .= "or products_id = '".$list_of_prdct_ids[$n]."' ";
   }
}

// get all product prices for products with the particular customer_group_id
// however not necessary for customer_group_id = 0
if ($customer_group_id != '0') {
  $pg_query = tep_db_query("select pg.products_id, customers_group_price as price from " . TABLE_PRODUCTS_GROUPS . " pg where (".$select_list_of_prdct_ids.") and pg.customers_group_id = '".$customer_group_id."' ");
 //   $no_of_pg_products = tep_db_num_rows($pg_query) ;
	while ($pg_array = tep_db_fetch_array($pg_query)) {
	$new_prices[] = array ('products_id' => $pg_array['products_id'], 'products_price' => $pg_array['price'], 'specials_new_products_price' => '', 'final_price' => $pg_array['price']);
	}
   for ($x = 0; $x < $no_of_listings; $x++) {
// replace products prices with those from customers_group table
      if(!empty($new_prices)) {
         for ($i = 0; $i < count($new_prices); $i++) {
	    if( $listing[$x]['products_id'] == $new_prices[$i]['products_id'] ) {
		$listing[$x]['products_price'] = $new_prices[$i]['products_price'];
		$listing[$x]['final_price'] = $new_prices[$i]['final_price'];
		}
	    }
	} // end if(!empty($new_prices)
	$listing[$x]['specials_new_products_price'] = ''; // makes sure that a retail specials price doesn't carry over to another customer group
	$listing[$x]['final_price'] = $listing[$x]['products_price']; // final price should not be the retail special price
   } // end for ($x = 0; $x < $no_of_listings; $x++)
} // end if ($customer_group_id != '0')

// an extra query is needed for all the specials

	$specials_query = tep_db_query("select products_id, specials_new_products_price from " . TABLE_SPECIALS . " where (".$select_list_of_prdct_ids.") and status = '1' and customers_group_id = '" .$customer_group_id. "'");
	while ($specials_array = tep_db_fetch_array($specials_query)) {
	$new_s_prices[] = array ('products_id' => $specials_array['products_id'], 'products_price' => '', 'specials_new_products_price' => $specials_array['specials_new_products_price'] , 'final_price' => $specials_array['specials_new_products_price']);
	}

// add the correct specials_new_products_price and replace final_price
	for ($x = 0; $x < $no_of_listings; $x++) {

        if(!empty($new_s_prices)) {
	    for ($i = 0; $i < count($new_s_prices); $i++) {
		 if( $listing[$x]['products_id'] == $new_s_prices[$i]['products_id'] ) {
		   $listing[$x]['specials_new_products_price'] = $new_s_prices[$i]['specials_new_products_price'];
		   $listing[$x]['final_price'] = $new_s_prices[$i]['final_price'];
		 }
	       }
	   } // end if(!empty($new_s_prices)
	} // end for ($x = 0; $x < $no_of_listings; $x++)

//    while ($listing = tep_db_fetch_array($listing_query)) { (was original code)
	for ($x = 0; $x < $no_of_listings; $x++) {

      $rows++;
      if (($rows/2) == floor($rows/2)) {
        $list_box_contents[] = array('params' => 'class="productListing-even"');
      } else {
        $list_box_contents[] = array('params' => 'class="productListing-odd"');
      }
      $cur_row = sizeof($list_box_contents) - 1;
      for ($col=0, $n=sizeof($column_list); $col<$n; $col++) {
        $lc_align = '';
        switch ($column_list[$col]) {
          case 'PRODUCT_LIST_MODEL':
            $lc_align = '';
            $lc_text = '&nbsp;' . $listing[$x]['products_model'] . '&nbsp;';
            break;
          case 'PRODUCT_LIST_NAME':
            $lc_align = '';
            if (isset($HTTP_GET_VARS['manufacturers_id'])) {
              $lc_text = '<a href="' . tep_href_link(FILENAME_PRODUCT_INFO, 'manufacturers_id=' . $HTTP_GET_VARS['manufacturers_id'] . '&products_id=' . $listing[$x]['products_id']) . '">' . $listing[$x]['products_name'] . '</a>';
            } else {
              $lc_text = '&nbsp;<a href="' . tep_href_link(FILENAME_PRODUCT_INFO, ($cPath ? 'cPath=' . $cPath . '&' : '') . 'products_id=' . $listing[$x]['products_id']) . '">' . $listing[$x]['products_name'] . '</a>&nbsp;';
            }
            break;
          case 'PRODUCT_LIST_MANUFACTURER':
            $lc_align = '';
            $lc_text = '&nbsp;<a href="' . tep_href_link(FILENAME_DEFAULT, 'manufacturers_id=' . $listing[$x]['manufacturers_id']) . '">' . $listing[$x]['manufacturers_name'] . '</a>&nbsp;';
            break;
          case 'PRODUCT_LIST_PRICE':
            $lc_align = 'right';

            if (tep_not_null($listing[$x]['specials_new_products_price'])) {
              $lc_text = '&nbsp;<s>' .  $currencies->display_price($listing[$x]['products_price'], tep_get_tax_rate($listing[$x]['products_tax_class_id'])) . '</s>&nbsp;&nbsp;<span class="productSpecialPrice">' . $currencies->display_price($listing[$x]['specials_new_products_price'], tep_get_tax_rate($listing[$x]['products_tax_class_id'])) . '</span>&nbsp;';
            } else {
              $lc_text = '&nbsp;' . $currencies->display_price($listing[$x]['products_price'], tep_get_tax_rate($listing[$x]['products_tax_class_id'])) . '&nbsp;';
            }
            break;
          case 'PRODUCT_LIST_QUANTITY':
            $lc_align = 'right';
            $lc_text = '&nbsp;' . $listing[$x]['products_quantity'] . '&nbsp;';
            break;
          case 'PRODUCT_LIST_WEIGHT':
            $lc_align = 'right';
            $lc_text = '&nbsp;' . $listing[$x]['products_weight'] . '&nbsp;';
            break;
          case 'PRODUCT_LIST_IMAGE':
            $lc_align = 'center';
            if (isset($HTTP_GET_VARS['manufacturers_id'])) {
              $lc_text = '<a href="' . tep_href_link(FILENAME_PRODUCT_INFO, 'manufacturers_id=' . $HTTP_GET_VARS['manufacturers_id'] . '&products_id=' . $listing[$x]['products_id']) . '">' . tep_image(DIR_WS_IMAGES . $listing[$x]['products_image'], $listing[$x]['products_name'], SMALL_IMAGE_WIDTH, SMALL_IMAGE_HEIGHT) . '</a>';
            } else {
              $lc_text = '&nbsp;<a href="' . tep_href_link(FILENAME_PRODUCT_INFO, ($cPath ? 'cPath=' . $cPath . '&' : '') . 'products_id=' . $listing[$x]['products_id']) . '">' . tep_image(DIR_WS_IMAGES . $listing[$x]['products_image'], $listing[$x]['products_name'], SMALL_IMAGE_WIDTH, SMALL_IMAGE_HEIGHT) . '</a>&nbsp;';
            }
            break; // EOF Separate Pricing per Customer
          case 'PRODUCT_LIST_BUY_NOW':
            $lc_align = 'center';
            $lc_text = '<a href="' . tep_href_link(basename($PHP_SELF), tep_get_all_get_params(array('action')) . 'action=buy_now&products_id=' . $listing[$x]['products_id']) . '">' . tep_image_button('button_buy_now.gif', IMAGE_BUTTON_BUY_NOW) . '</a>&nbsp;';
            break;
        }
        $list_box_contents[$cur_row][] = array('align' => $lc_align,'params' => 'class="productListing-data"','text'  => $lc_text);
		$product_contents[] = $lc_text;
      }
	  $product_query = tep_db_query("select products_description, products_id from " . TABLE_PRODUCTS_DESCRIPTION . " where products_id = '" . (int)$listing[$x]['products_id'] . "' and language_id = '" . (int)$languages_id . "'");
      $product = tep_db_fetch_array($product_query);

      array_push($new_products,$product['products_description']);
	  array_push($new_p_id,$product['products_id']);
    }
?>

<?
	$col=0;
	$row=0;
	for ($i=1;$i<count($list_box_contents);$i++) {
		$j=$list_box_contents[$i];
	if (($col==0) && ($row!=0)) echo '
									<br style="line-height:13px;">
									<div class="h_l"><img alt="" src="images/spacer.gif" width="1" height="1"></div>
									<br style="line-height:5px;">';
	if ($col==0) echo '
									<table width="100%" style="height:176px" cellspacing="0" cellpadding="0" border="0">
									  <tr>
										<td width="33%" height="100%" valign="top">';

?>
<table width="100%" style="height:100%; background-image:url(images/fondito_foto.png); background-position:2px 38px 0px 0px; background-repeat:no-repeat" cellspacing="0" cellpadding="0" border="0" >
											  <tr>
												<td width="100%" height="50" align="center" valign="top" class="h1_r_text">
													<?=$j[1][text]?><br>												</td>
											  </tr>
											  <tr>
												<td width="100%"  height="110" valign="bottom"  align="center"><?=$j[0][text]?>
<br>
<br style="line-height:2px;">
													<strong class="pr_text"><?php echo TEXT_PRODUCT_PRICE; ?></strong><?php echo tep_draw_separator('spacer.gif', '7', '1'); ?><span class="pr1_text"><?=$j[2][text]?></span><br>												</td>
											  </tr>
											  <tr>
												<td width="100%" height="20" valign="top" align="center"><br style="line-height:5px;"><a href="<?= tep_href_link("products_new.php","action=buy_now&products_id=".$new_p_id[$i-1])?>"><?=tep_image_button("button_in_cart.gif");?></a><a href="<?=tep_href_link('product_info.php?products_id='.$new_p_id[$i-1])?>"><?=tep_image_button("button_details.gif");?></a><br><br />
</td>
											  </tr>
								  </table>

<?	
	if ($col==2) {
		echo '
										</td>
									  </tr>
									</table>';
		$col=0;
		$row++;
	} else {
		echo '
										</td>
										<td  height="100%" valign="top"><img alt="" src="images/spacer.gif" width="9" height="1"><br></td>
										<td width="33%" height="100%" valign="top">';
		$col++;
	}
}
if ($col==1) {
		echo '
										</td>
										<td  height="100%" valign="top"><img alt="" src="images/spacer.gif" width="9" height="1"><br></td>
										<td width="33%" height="100%" valign="top">';
		echo '
										</td>
										<td  height="100%" valign="top"><img alt="" src="images/spacer.gif" width="9" height="1"><br></td>
										<td width="33%" height="100%" valign="top">';
		echo '
										</td>
									  </tr>
									</table>';
}
if ($col==2) {
		echo '
										</td>
										<td  height="100%" valign="top"><img alt="" src="images/spacer.gif" width="9" height="1"><br></td>
										<td width="33%" height="100%" valign="top">';
		echo '
										</td>
									  </tr>
									</table>';
}

/*    new productListingBox($list_box_contents);  */
  } else {
    $list_box_contents = array();
    $list_box_contents[0] = array('params' => 'class="productListing-odd"');
    $list_box_contents[0][] = array('params' => 'class="productListing-data"');
//    new productListingBox($list_box_contents);
  }
  if ( ($listing_split->number_of_rows > 0) && ((PREV_NEXT_BAR_LOCATION == '2') || (PREV_NEXT_BAR_LOCATION == '3')) ) {
?><br/>
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <td class="smallText"><?php echo $listing_split->display_count(TEXT_DISPLAY_NUMBER_OF_PRODUCTS); ?></td>
    <td class="smallText" align="right"><?php echo TEXT_RESULT_PAGE . ' ' . $listing_split->display_links(MAX_DISPLAY_PAGE_LINKS, tep_get_all_get_params(array('page', 'info', 'x', 'y'))); ?></td>
  </tr>
</table>
<?php
  }
?> 

								</td>
								<td width="20" height="100%" valign="top"><?php echo tep_draw_separator('spacer.gif', '20', '1'); ?></td>
							  </tr>
							</table>							

<?

if (isset($_REQUEST['keywords'])) {
?>
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
      <tr>
        <td class="main"><?php echo '&nbsp;&nbsp;&nbsp;&nbsp;<a href="' . tep_href_link(FILENAME_ADVANCED_SEARCH, tep_get_all_get_params(array('sort', 'page')), 'NONSSL', true, false) . '">' . tep_image_button('button_back.gif', IMAGE_BUTTON_BACK) . '</a>'; ?><br/><br/></td>
      </tr>
    </table>

<?
}

?>

						</td>
					  </tr>
					  <tr>
						<td width="100%" height="16" valign="top" ></td>
					  </tr>
					</table>