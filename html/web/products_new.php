<?php


  require('includes/application_top.php');

  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_PRODUCTS_NEW);

  $breadcrumb->add(NAVBAR_TITLE, tep_href_link(FILENAME_PRODUCTS_NEW));
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php echo HTML_PARAMS; ?> xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title><?php echo TITLE; ?></title>
<base href="<?php echo (($request_type == 'SSL') ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<?php require("includes/google.php"); ?>
</head>
<body marginwidth="0" marginheight="0" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0">
<!-- header //-->
<?php require(DIR_WS_INCLUDES . 'header2.php'); ?>
<!-- header_eof //-->
<script language="javascript"><!--
function popupWindow(url) {
  window.open(url,'popupWindow','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,copyhistory=no,width=290,height=290,screenX=290,screenY=290,top=150,left=150');
}
//--></script>

<!-- body //-->

	  <tr>
		<td class="tdborde" valign="top" width="<?php echo BOX_WIDTH_1; ?>" height="100%"><?php require(DIR_WS_INCLUDES . 'column_left.php'); ?> </td>
    <td class="tdborde" valign="top" width="<?php echo BOX_WIDTH_2; ?>" >
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="height:100%" class="content">
			  <tr>
				<td width="100%" height="100%" valign="top">
					<table width="100%" style="height:100%" cellspacing="0" cellpadding="0" border="0">
					  <tr>
						<td width="100%" height="100%" valign="top" style="background:url(images/r-t-dr.png) no-repeat; padding: 16px 11px 15px 19px">
							<table width="100%" style="height:22px" cellspacing="0" cellpadding="0" border="0">
							  <!--DWLayoutTable-->
							  <tr>
								<td width="1" height="100%">&nbsp;</td>
							    <td width="100%" valign="top" class="h_r_text">
									<?=HEADING_TITLE?><br></td>
							  </tr>
							</table>
							<table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-left:0px">
							  <tr>
								<td width="100%" height="100%" valign="top" >
									<br style="line-height:20px;">

<?php
  $products_new_array = array();
  $products_new_query_raw = "select p.products_id, pd.products_name, p.products_image, p.products_price, p.products_tax_class_id, p.products_date_added, m.manufacturers_name from " . TABLE_PRODUCTS . " p left join " . TABLE_MANUFACTURERS . " m on (p.manufacturers_id = m.manufacturers_id), " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_status = '1' and p.products_id = pd.products_id and pd.language_id = '" . (int)$languages_id . "' order by p.products_date_added DESC, pd.products_name";
  $products_new_split = new splitPageResults($products_new_query_raw, MAX_DISPLAY_PRODUCTS_NEW);
  if (($products_new_split->number_of_rows > 0) && ((PREV_NEXT_BAR_LOCATION == '1') || (PREV_NEXT_BAR_LOCATION == '3'))) {
?>
		<table border="0" width="100%" cellspacing="0" cellpadding="2">
		<tr>
			<td class="smallText"><?php echo $products_new_split->display_count(TEXT_DISPLAY_NUMBER_OF_PRODUCTS_NEW); ?></td>
			<td align="right" class="smallText"><?php echo TEXT_RESULT_PAGE . ' ' . $products_new_split->display_links(MAX_DISPLAY_PAGE_LINKS, tep_get_all_get_params(array('page', 'info', 'x', 'y'))); ?></td>
		</tr>
		</table><br/>
<?php
  }
?>

<?php
if ($products_new_split->number_of_rows > 0) {
// BOF Separate Price Per Customer
//  global variable (session): $sppc_customers_group_id -> local variable $customer_group_id

  if(!tep_session_is_registered('sppc_customer_group_id')) { 
  $customer_group_id = '0';
  } else {
   $customer_group_id = $sppc_customer_group_id;
  }
	$products_new_query = tep_db_query($products_new_split->sql_query);
    $no_of_products_new = tep_db_num_rows($products_new_query);
	$row = 0;
	$col = 0;
	while ($_products_new = tep_db_fetch_array($products_new_query)) {
	$products_new[] = $_products_new;
	$list_of_prdct_ids[] = $_products_new['products_id'];  
    }
	
	  $select_list_of_prdct_ids = "products_id = '".$list_of_prdct_ids[0]."' ";
   if ($no_of_products_new > 1) {
      for ($n = 1 ; $n < count($list_of_prdct_ids) ; $n++) {
      $select_list_of_prdct_ids .= "or products_id = '".$list_of_prdct_ids[$n]."' ";    
      }
   }

// get all customers_group_prices for products with the particular customer_group_id
// however not necessary for customer_group_id
if ($customer_group_id != '0') {
  $pg_query = tep_db_query("select pg.products_id, customers_group_price as price from " . TABLE_PRODUCTS_GROUPS . " pg where (".$select_list_of_prdct_ids.") and pg.customers_group_id = '".$customer_group_id."'");
	while ($pg_array = tep_db_fetch_array($pg_query)) {
	$new_prices[] = array ('products_id' => $pg_array['products_id'], 'products_price' => $pg_array['price'], 'specials_new_products_price' => '');
	}

   for ($x = 0; $x < $no_of_products_new; $x++) {
// replace products prices with those from customers_group table
// originally they would be obtained with an extra query for every new product:
//   if ($new_price = tep_get_products_special_price($products_new['products_id'])) {
      
        if(!empty($new_prices)) {
	    for ($i = 0; $i < count($new_prices); $i++) {
		    if( $products_new[$x]['products_id'] == $new_prices[$i]['products_id'] ) {
			$products_new[$x]['products_price'] = $new_prices[$i]['products_price'];
		    }
	    }
	} // end if(!empty($new_prices)
   } // end for ($x = 0; $x < $no_of_products_new; $x++)
} // end if ($customer_group_id != '0')

// an extra query is needed for all the specials

	$specials_query = tep_db_query("select s.products_id, specials_new_products_price from " . TABLE_SPECIALS . " s  where (".$select_list_of_prdct_ids.") and status = '1' and s.customers_group_id = '" .$customer_group_id. "'");
	while ($specials_array = tep_db_fetch_array($specials_query)) {
	$new_prices[] = array ('products_id' => $specials_array['products_id'], 'products_price' => '', 'specials_new_products_price' => $specials_array['specials_new_products_price']);
	}

// replace specials_new_products_price with those those for the customers_group_id
	for ($x = 0; $x < $no_of_products_new; $x++) {
      
        if(!empty($new_prices)) {
	    for ($i = 0; $i < count($new_prices); $i++) {
		    if( $products_new[$x]['products_id'] == $new_prices[$i]['products_id'] ) {
			$products_new[$x]['specials_new_products_price'] = $new_prices[$i]['specials_new_products_price'];
		    }
	       }
	   } // end if(!empty($new_prices)
//	} // end for ($x = 0; $x < $no_of_products_new; $x++)
	if (tep_not_null($products_new[$x]['specials_new_products_price'])) {
	        $products_price = '<s>' . $currencies->display_price($products_new[$x]['products_price'], tep_get_tax_rate($products_new[$x]['products_tax_class_id'])) . '</s> <span class="productSpecialPrice">' . $currencies->display_price($products_new[$x]['specials_new_products_price'], tep_get_tax_rate($products_new[$x]['products_tax_class_id'])) . '</span>';
	} else {
		$products_price = $currencies->display_price($products_new[$x]['products_price'], tep_get_tax_rate($products_new[$x]['products_tax_class_id']));
	}
$product_query=tep_db_query("select products_description  from " . TABLE_PRODUCTS_DESCRIPTION . " where products_id = '" . (int)$products_new[$x]['products_id'] . "' and language_id = '" . (int)$languages_id . "'");
$product = tep_db_fetch_array($product_query);
$pn = $product[$x]['products_description'];
	if (($col==0) && ($row!=0)) echo '
									<br style="line-height:13px;">
									<div class="h_l"><img alt="" src="images/spacer.gif" width="1" height="1"></div>
									<br style="line-height:5px;">';
	if ($col==0) echo '
									<table width="100%" cellspacing="0" cellpadding="0" border="0" style="height:176px">
									  <tr>
										<td width="33%" height="100%" valign="top">';

?>

			<table width="<?php echo SMALL_IMAGE_WIDTH;?>" cellspacing="0" cellpadding="0" border="0" style="height:100%">
											  <tr>
												<td width="100%" height="29" align="center" valign="top" class="h1_r_text">
													<a href="<?=tep_href_link('product_info.php?products_id='.$products_new[$x]['products_id'])?>"><?=$products_new[$x]['products_name']?></a> <br>
												</td>
											  </tr>
											  <tr>
												<td width="100%"  valign="top" align="center"><br>

<?php
  if(ereg("MSIE", $_SERVER["HTTP_USER_AGENT"])) {
?>    
                                                                                               <div style=" position: absolute; z-index:500; margin-left:-<?php echo SMALL_IMAGE_WIDTH/2;?>px; "><a href="<?=tep_href_link(FILENAME_PRODUCT_INFO, 'products_id=' . $products_new[$x]['products_id'])?>"><img src="watermark_ss.png" width="<?php echo SMALL_IMAGE_WIDTH;?>" height="<?php echo SMALL_IMAGE_HEIGHT;?>" /></a></div><div class="bordedivimagen">
<?=tep_image(DIR_WS_IMAGES . $products_new[$x]['products_image'], $products_new[$x]['products_name'],SMALL_IMAGE_WIDTH, SMALL_IMAGE_HEIGHT)?></div>

<?php
  } else {
?>                                       
                                                
                                                <div style=" position: absolute; z-index:500; margin-left:8px;"><a href="<?=tep_href_link(FILENAME_PRODUCT_INFO, 'products_id=' . $products_new[$x]['products_id'])?>"><img src="watermark_ss.png" width="<?php echo SMALL_IMAGE_WIDTH;?>" height="<?php echo SMALL_IMAGE_HEIGHT;?>" /></a></div><div class="bordedivimagen">
<?=tep_image(DIR_WS_IMAGES . $products_new[$x]['products_image'], $products_new[$x]['products_name'],SMALL_IMAGE_WIDTH, SMALL_IMAGE_HEIGHT)?></div>

<?php 
  }
?>

<br>
<br style="line-height:4px;">
<div align="center" style="margin-left:8px;">
<span class="pr1_text"><?=$products_price?></span>
<br>
<br style="line-height:4px;">
<a href="<?=tep_href_link('product_info.php?products_id='.$products_new[$x]['products_id'])?>"><?=tep_image_button("button_details.gif");?></a>
</div>
<br></td>
											  </tr>
								  </table>
<?php
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
										<td width="2%" height="100%"  valign="top"><img alt="" src="images/spacer.gif" width="2" height="1"><br></td>
										<td width="32%" height="100%" valign="top">';
		$col++;
	}

  }

if ($col==1) {
		echo '
										</td>
										<td width="2%" height="100%" valign="top"><img alt="" src="images/spacer.gif" width="2" height="1"><br></td>
										<td width="32%" height="100%" valign="top">';
		echo '
										</td>
										<td  width="2%" height="100%" valign="top"><img alt="" src="images/spacer.gif" width="2" height="1"><br></td>
										<td width="32%" height="100%" valign="top">';
		echo '
										</td>
									  </tr>
									</table>';
}
if ($col==2) {
		echo '
										</td>
										<td  width="2%" height="100%" valign="top"><img alt="" src="images/spacer.gif" width="2" height="1"><br></td>
										<td width="32%" height="100%" valign="top">';
		echo '
										</td>
									  </tr>
									</table>';
}

?>
<br/>
<table border="0" width="100%" cellspacing="0" cellpadding="2">
		<tr>
			<td class="smallText"><?php echo $products_new_split->display_count(TEXT_DISPLAY_NUMBER_OF_PRODUCTS_NEW); ?></td>
			<td align="right" class="smallText"><?php echo TEXT_RESULT_PAGE . ' ' . $products_new_split->display_links(MAX_DISPLAY_PAGE_LINKS, tep_get_all_get_params(array('page', 'info', 'x', 'y'))); ?></td>
		</tr>
		</table>

<?
} else {
?>        <br/>
		<table border="0" width="100%" cellspacing="0" cellpadding="2">
		<tr>
			<td colspan="3" class="main"><?php echo TEXT_NO_NEW_PRODUCTS; ?></td>
		</tr>
		<tr>
			<td colspan="3"><?php echo tep_draw_separator('pixel_trans.gif', '100%', '0'); ?></td>
		</tr>
		</table>
<?php
  }

	   
?>

<!-- body_eof //-->

								</td>
								<td width="1" height="100%" valign="top"><?php echo tep_draw_separator('spacer.gif', '0', '1'); ?></td>
							  </tr>
							</table>							
						</td>
					  </tr>
					  <tr>
						<td width="0%" height="16" valign="top"></td>
					  </tr>
					</table> 
				</td>
			  </tr>
		  </table>
</td>
			  </tr>
              



</table>
<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>
<!-- footer_eof //-->
</body>
</html>
<?php require(DIR_WS_INCLUDES . 'application_bottom.php'); ?>