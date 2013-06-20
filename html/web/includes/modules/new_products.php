<?php
/*
  $Id: new_products.php,v 1.34 2003/06/09 22:49:58 hpdl Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce

  Released under the GNU General Public License
*/
?>
<script language="javascript"><!--
function popupWindow(url) {
  window.open(url,'popupWindow','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,copyhistory=no,width=290,height=290,screenX=290,screenY=290,top=150,left=150');
}
//--></script>

<!-- new_products //-->
<?php
  $info_box_contents = sprintf(TABLE_HEADING_NEW_PRODUCTS, strftime('%B'));
  if ( (!isset($new_products_category_id)) || ($new_products_category_id == '0') ) {
// BOF Separate Pricing per Customer
    $new_products_query = tep_db_query("select p.products_id, p.products_image, p.products_tax_class_id, p.products_price as products_price from " . TABLE_PRODUCTS . " p where products_status = '1' order by p.products_date_added desc limit " . MAX_DISPLAY_NEW_PRODUCTS);
  } else {
    $new_products_query = tep_db_query("select distinct p.products_id, p.products_image, p.products_tax_class_id, p.products_price as products_price from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_TO_CATEGORIES . " p2c, " . TABLE_CATEGORIES . " c where p.products_id = p2c.products_id and p2c.categories_id = c.categories_id and c.parent_id = '" . (int)$new_products_category_id . "' and p.products_status = '1' order by p.products_date_added desc limit ". MAX_DISPLAY_NEW_PRODUCTS);
  }

// global variable (session) $sppc_customer_group_id -> local variable customer_group_id

  if(!tep_session_is_registered('sppc_customer_group_id')) {
  $customer_group_id = '0';
  } else {
   $customer_group_id = $sppc_customer_group_id;
  }

  if (($no_of_new_products = tep_db_num_rows($new_products_query)) > 0) {
	  while ($_new_products = tep_db_fetch_array($new_products_query)) {
	$new_products[] = $_new_products;
	$list_of_prdct_ids[] = $_new_products['products_id'];
	}

$select_list_of_prdct_ids = "products_id = '".$list_of_prdct_ids[0]."' ";
  if ($no_of_new_products > 1) {
   for ($n = 1 ; $n < count($list_of_prdct_ids) ; $n++) {
   $select_list_of_prdct_ids .= "or products_id = '".$list_of_prdct_ids[$n]."' ";
   }
}
// get all customers_group_prices for products with the particular customer_group_id
// however not necessary for customer_group_id = 0
if ($customer_group_id != '0') {
  $pg_query = tep_db_query("select pg.products_id, customers_group_price as price from " . TABLE_PRODUCTS_GROUPS . " pg where (".$select_list_of_prdct_ids.") and pg.customers_group_id = '".$customer_group_id."'");
	while ($pg_array = tep_db_fetch_array($pg_query)) {
	$new_prices[] = array ('products_id' => $pg_array['products_id'], 'products_price' => $pg_array['price'], 'specials_new_products_price' => '');
	}

   for ($x = 0; $x < $no_of_new_products; $x++) {
// replace products prices with those from customers_group table
        if(!empty($new_prices)) {
	    for ($i = 0; $i < count($new_prices); $i++) {
		    if( $new_products[$x]['products_id'] == $new_prices[$i]['products_id'] ) {
			$new_products[$x]['products_price'] = $new_prices[$i]['products_price'];
		    }
	    }
	} // end if(!empty($new_prices)
   } // end for ($x = 0; $x < $no_of_products_new; $x++)
} // end if ($customer_group_id != '0')

// an extra query is needed for all the specials
	$specials_query = tep_db_query("select products_id, specials_new_products_price from specials where (".$select_list_of_prdct_ids.") and status = '1' and customers_group_id = '" .$customer_group_id. "' ");
	while ($specials_array = tep_db_fetch_array($specials_query)) {
	$new_s_prices[] = array ('products_id' => $specials_array['products_id'], 'specials_new_products_price' => $specials_array['specials_new_products_price']);
	}

// replace products_price with the correct specials_new_products_price
if(!empty($new_s_prices)) {
	for ($x = 0; $x < $no_of_new_products; $x++) {
	    for ($i = 0; $i < count($new_s_prices); $i++) {
		    if( $new_products[$x]['products_id'] == $new_s_prices[$i]['products_id'] ) {
			$new_products[$x]['products_price'] = $new_s_prices[$i]['specials_new_products_price'];
		    }
	       }
	   }
	} // // end if(!empty($new_s_prices)
  $row = 0; 
  $col = 0;
?>
					<table width="100%" style="height:100%" cellspacing="0" cellpadding="0" border="0" class="content">
					  <tr>
						<td width="100%" height="100%" valign="top" style="background:url(images/r-t-dr.png) no-repeat; padding: 16px 11px 15px 19px">
							<table width="100%" style="height:22px" cellspacing="0" cellpadding="0" border="0">
							  <!--DWLayoutTable-->
							  <tr>
							    <td width="100%" valign="top" class="h_r_text"><?=HEADING_TITLE__PRODUCT_NEW?></td>
							  </tr>
							</table>

							<table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-left:19px">
							  <tr>
								<td width="100%" height="100%" valign="top"><br /><br />

<?
 // while ($new_products = tep_db_fetch_array($new_products_query)) {
  	for ($x = 0; $x < $no_of_new_products; $x++) {
    $new_products[$x]['products_name'] = tep_get_products_name($new_products[$x]['products_id']);
	$product_query = tep_db_query("select products_description  from " . TABLE_PRODUCTS_DESCRIPTION . " where products_id = '" . (int)$new_products[$x]['products_id'] . "' and language_id = '" . (int)$languages_id . "'");
	$product = tep_db_fetch_array($product_query);
	$new_products[$x]['products_description'] = $product[$x]['products_description'];
	if (($col==0) && ($row!=0)) echo '
									<br style="line-height:13px;">
									<div class="h_l"><img alt="" src="images/spacer.gif" width="1" height="1"></div>
									<br style="line-height:5px;">';
	if ($col==0) echo '
									<table width="100%" cellspacing="0" cellpadding="0" border="0" style="height:176px">
									  <tr>
										<td width="33%" height="100%" valign="top">';
?>
<table width="180" cellspacing="0" cellpadding="0" border="0" >
											  <tr>
												<td width="100%" height="40" align="center" valign="top"  class="h1_r_text">
													<a href="<?=tep_href_link('product_info.php?products_id='.$new_products[$x]['products_id'])?>"><?=$new_products[$x]['products_name']?></a><br><br style="line-height:10px;">
												</td>
											  </tr>
											  <tr>
												<td width="100%"  height="110" valign="bottom"  align="center">
                                                

<?php
  if(ereg("MSIE", $_SERVER["HTTP_USER_AGENT"])) {
?>                                               
                                                
                                                <div style=" position:absolute; z-index:500; margin-left:-101px;"><a href="<?=tep_href_link('product_info.php?products_id='.$new_products[$x]['products_id'])?>"><img src="watermark_ss.png" width="220" height="220" /></a></div><div style="z-index:400"><?=tep_image(DIR_WS_IMAGES.$new_products[$x]['products_image'],$new_products[$x]['products_name'], SMALL_IMAGE_WIDTH, SMALL_IMAGE_HEIGHT, 'style="border:1px solid #96957E"')?></div>

<?php
  } else {
?> 

<div style=" position:absolute; z-index:500; margin-left:8px"><a href="<?=tep_href_link('product_info.php?products_id='.$new_products[$x]['products_id'])?>"><img src="watermark_ss.png" width="220" height="220" /></a></div><div style="z-index:400"><?=tep_image(DIR_WS_IMAGES.$new_products[$x]['products_image'],$new_products[$x]['products_name'], SMALL_IMAGE_WIDTH, SMALL_IMAGE_HEIGHT, 'style="border:1px solid #96957E"')?></div>
    
<?php
  }
?>
                                               
<br />
<br style="line-height:4px;">
<div align="left" style="margin-left:8px">
<span class="pr1_text"><?=$currencies->display_price($new_products[$x]['products_price'], tep_get_tax_rate($new_products[$x]['products_tax_class_id']))?></span><br>
<br style="line-height:4px;">
<a href="<?=tep_href_link('product_info.php?products_id='.$new_products[$x]['products_id'])?>"><?=tep_image_button("button_details.gif");?></a></div><br>
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
										<td  height="100%" valign="top"><img alt="" src="images/spacer.gif" width="55" height="1"><br></td>
										<td width="33%" height="100%" valign="top">';
		$col++;
	}
}
if ($col==1) {
		echo '
										</td>
										<td  height="100%" valign="top"><img alt="" src="images/spacer.gif" width="55" height="1"><br></td>
										<td width="33%" height="100%" valign="top">';
		echo '
										</td>
										<td  height="100%" valign="top"><img alt="" src="images/spacer.gif" width="55" height="1"><br></td>
										<td width="33%" height="100%" valign="top">';
		echo '
										</td>
									  </tr>
									</table>';
}
if ($col==2) {
		echo '
										</td>
										<td  height="100%" valign="top"><img alt="" src="images/spacer.gif" width="55" height="1"><br></td>
										<td width="33%" height="100%" valign="top">';
		echo '
										</td>
									  </tr>
									</table>';
}}
?>
								</td>
								<td width="20" height="100%" valign="top"><?php echo tep_draw_separator('spacer.gif', '0', '1'); ?></td>
							  </tr>
							</table>							
						</td>
					  </tr>
					  <tr>
						<td width="100%" height="16" valign="top"></td>
					  </tr>
					</table>

