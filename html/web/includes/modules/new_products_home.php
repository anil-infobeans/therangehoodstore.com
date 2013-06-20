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
    $new_products_query = tep_db_query("select distinct p.products_id, p.products_image, p.products_tax_class_id, p.products_price as products_price from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_TO_CATEGORIES . " p2c, " . TABLE_CATEGORIES . " c where p.products_id = p2c.products_id and p2c.categories_id = c.categories_id and c.parent_id = '" . (int)$new_products_category_id . "' and p.products_status = '1' and p.products_id <> '2617' order by p.products_date_added desc limit 3");
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
			$new_products[$x]['specials_new_products_price'] = $new_s_prices[$i]['specials_new_products_price'];
		    }
	       }
	   }
	} // // end if(!empty($new_s_prices)
  $row = 0; 
  $col = 0;
?>
					<table width="100%" style="height:100%" cellspacing="0" cellpadding="0" border="0" class="content">
					  <tr>
						<td width="100%" height="100%" valign="top">
							<table width="100%" style="height:22px" cellspacing="0" cellpadding="0" border="0">
							  <!--DWLayoutTable-->
							  <tr>
							    <td width="100%" valign="top" class="h_r_text"><?=HEADING_TITLE__PRODUCT_NEW?>
<br />
<br />
<div style="width:100%; background-color:#CCCCCC; height:1px;"></div></td>
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
<table width="320" cellspacing="0" cellpadding="0" border="0" >

											  <tr>
												<td width="160"  height="165" valign="top"  align="left" >
<div class="bordedivimagen">
<a href="<?=tep_href_link('product_info.php?products_id='.$new_products[$x]['products_id'])?>"><?=tep_image(DIR_WS_IMAGES.$new_products[$x]['products_image'],$new_products[$x]['products_name'], SMALL_IMAGE_WIDTH, SMALL_IMAGE_HEIGHT, '')?></a></div><br />
<a href="<?=tep_href_link('product_info.php?products_id='.$new_products[$x]['products_id'])?>"><?=tep_image_button("button_details.gif");?></a>
</td>
<td width="10">&nbsp;</td>
                                                <td   width="150" valign="top" >


<div class="h1_r_text" >
<a href="<?=tep_href_link('product_info.php?products_id='.$new_products[$x]['products_id'])?>"><?=$new_products[$x]['products_name']?></a>
</div>

<br />
  <?php
      $reviews_query = tep_db_query("select count(*) as count from " . TABLE_REVIEWS . " r, " . TABLE_REVIEWS_DESCRIPTION . " rd where r.products_id = '" . (int)$new_products[$x]['products_id'] . "' and r.reviews_id = rd.reviews_id and rd.languages_id = '" . (int)$languages_id . "'");
    $reviews = tep_db_fetch_array($reviews_query);
    $reviews_query_average = tep_db_query("select (avg(reviews_rating)) as average_rating from " . TABLE_REVIEWS . " r," . TABLE_REVIEWS_DESCRIPTION . " rd where r.products_id = '" . (int)$new_products[$x]['products_id'] . "' and r.reviews_id = rd.reviews_id and rd.languages_id = '" . (int)$languages_id . "'");
    $reviews_average = tep_db_fetch_array($reviews_query_average);
	  $reveiws_stars = $reviews_average['average_rating'];
	  $reveiws_rating = number_format($reveiws_stars,0);
      
      ?>
      
      <?php
	  
	   if ($reviews['count'] > 0) {
	   
	   echo '<a href="' . tep_href_link(FILENAME_PRODUCT_REVIEWS, tep_get_all_get_params()) . '">' . tep_image(DIR_WS_IMAGES . 'stars_' . $reveiws_rating . '.gif') . ' ' . ' (' . $reviews['count'] . ')'. '</a>';
	   
	   } else {
	   
	   echo '<a href="' . tep_href_link(FILENAME_PRODUCT_REVIEWS, tep_get_all_get_params()) . '">' . tep_image(DIR_WS_IMAGES . 'stars_' . $reveiws_rating . '.gif') . ' '. '</a>';	   
	   
	   }
	   ?><br />
       

 <?php       
$product_info_query = tep_db_query("select p.products_id, pd.products_name, pd.products_description, p.products_model, p.products_quantity, p.products_image, pd.products_url, p.products_price, p.products_tax_class_id, p.products_date_added, p.products_date_available, p.manufacturers_id , p.products_length, p.products_width, p.products_depth from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_status = '1' and p.products_id = '" . (int)$new_products[$x]['products_id'] . "' and pd.products_id = p.products_id and pd.language_id = '" . (int)$languages_id . "'");
    $product_info = tep_db_fetch_array($product_info_query);?>
    
    
  
 <?php //echo stripslashes($product_info['products_description']); ?>
 
 <div style="font-family:Arial, Helvetica, sans-serif; font-size:12px; text-align:left;  padding-right:10px;
 padding-top:10px; font-weight:normal; text-transform:lowercase;">
 <?php //limpiamos estilos para contar bien los caracteres

$texto_limpieza = eregi_replace("<head[^>]*>.*</head>"," ",$product_info['products_description']);
$texto_limpieza = eregi_replace("<script[^>]*>.*</script>"," ",$texto_limpieza);
$texto_limpieza = eregi_replace("<style[^>]*>.*</style>"," ",$texto_limpieza);
$texto_limpieza = eregi_replace("<[^>]*>"," ",$texto_limpieza);
$texto_limpieza = eregi_replace("&nbsp;","",$texto_limpieza);


?>
<? // Inicializamos las variables 
$tamano = 80; // tamaño máximo
$texto_cortado = substr($texto_limpieza, 0 , $tamano);
echo $texto_cortado . '&nbsp;...';
 ?>
 </div>
 


<div style=" padding-top:5px; font-size:12px; font-family:Arial, Helvetica, sans-serif" class="more"><a href="<?=tep_href_link('product_info.php?products_id='.(int)$new_products[$x]['products_id'].'');?>"><?php echo VIEWMORE;?> >>
  </a>
</div>


  
  


      
      

                                            
<br />

<div class="pr1_text">

<?php
if($new_products[$x]['specials_new_products_price'] != ''){
echo '<s>'.$currencies->display_price($new_products[$x]['products_price'], tep_get_tax_rate($new_products[$x]['products_tax_class_id'])).'</s>&nbsp;' . '<span class="productSpecialPrice">'.$currencies->display_price($new_products[$x]['specials_new_products_price'], tep_get_tax_rate($new_products[$x]['products_tax_class_id'])).'</span>';

}else{
echo $currencies->display_price($new_products[$x]['products_price'], tep_get_tax_rate($new_products[$x]['products_tax_class_id']));
}
?>

</div>

<br>

</td>

</tr>
<tr>
<td valign="bottom">
&nbsp;
</td>
<td valign="bottom" colspan="2">&nbsp;
  
 
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
										<td  height="100%" valign="top" ><img alt="" src="images/spacer.gif" width="25" height="1"><br></td>
										<td width="33%" height="100%" valign="top" >';
		$col++;
	}
}
if ($col==1) {
		echo '
										</td>
										<td  height="100%" valign="top" ><img alt="" src="images/spacer.gif" width="25" height="1"><br></td>
										<td width="33%" height="100%" valign="top" >';
		echo '
										</td>
										<td  height="100%" valign="top" ><img alt="" src="images/spacer.gif" width="25" height="1"><br></td>
										<td width="33%" height="100%" valign="top" >';
		echo '
										</td>
									  </tr>
									</table>';
}
if ($col==2) {
		echo '
										</td>
										<td  height="100%" valign="top" ><img alt="" src="images/spacer.gif" width="25" height="1"><br></td>
										<td width="33%" height="100%" valign="top" >';
		echo '
										</td>
									  </tr>
									</table>';
}

if ($col==3) {
		echo '
										</td>
										<td  height="100%" valign="top" ><img alt="" src="images/spacer.gif" width="25" height="1"><br></td>
										<td width="33%" height="100%" valign="top" >';
		echo '
										</td>
									  </tr>
									</table>';
}
if ($col==4) {
		echo '
										</td>
										<td  height="100%" valign="top" ><img alt="" src="images/spacer.gif" width="25" height="1"><br></td>
										<td width="33%" height="100%" valign="top" >';
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

