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
    $new_products_query = tep_db_query("select p.products_id, p.products_image, p.products_tax_class_id, if(s.status, s.specials_new_products_price, p.products_price) as products_price from " . TABLE_PRODUCTS . " p left join " . TABLE_SPECIALS . " s on p.products_id = s.products_id where products_status = '1' order by p.products_date_added desc limit " . MAX_DISPLAY_NEW_PRODUCTS);
  } else {
    $new_products_query = tep_db_query("select distinct p.products_id, p.products_image, p.products_tax_class_id, if(s.status, s.specials_new_products_price, p.products_price) as products_price from " . TABLE_PRODUCTS . " p left join " . TABLE_SPECIALS . " s on p.products_id = s.products_id, " . TABLE_PRODUCTS_TO_CATEGORIES . " p2c, " . TABLE_CATEGORIES . " c where p.products_id = p2c.products_id and p2c.categories_id = c.categories_id and c.parent_id = '" . (int)$new_products_category_id . "' and p.products_status = '1' order by p.products_date_added desc limit " . MAX_DISPLAY_NEW_PRODUCTS);
  }
  $row = 0;
  $col = 0;
?>
					<table width="100%" style="height:100%" cellspacing="0" cellpadding="0" border="0">
					  <tr>
						<td width="100%" height="100%" valign="top" style="background:url(images/r-t-dr.jpg) repeat-x; padding: 12px 11px 15px 19px">
							<table width="100%" style="height:22px" cellspacing="0" cellpadding="0" border="0">
							  <!--DWLayoutTable-->
							  <tr>
							    <td width="100%" valign="top" class="h_l_text"><strong>Novedades</strong></td>
							  </tr>
							</table>

							<table width="100%" cellspacing="0" cellpadding="0" border="0">
							  <tr>
								<td width="100%" height="100%" valign="top"><br />
<?
  while ($new_products = tep_db_fetch_array($new_products_query)) {
	$new_products['products_name'] = tep_get_products_name($new_products['products_id']);
	$product_query = tep_db_query("select products_description  from " . TABLE_PRODUCTS_DESCRIPTION . " where products_id = '" . (int)$new_products['products_id'] . "' and language_id = '" . (int)$languages_id . "'");
	$product = tep_db_fetch_array($product_query);
	$new_products['products_description'] = $product['products_description'];
	if (($col==0) && ($row!=0)) echo '
									<br style="line-height:13px;">
									<div class="h_l"><img alt="" src="images/spacer.gif" width="1" height="1"></div>
									<br style="line-height:5px;">';
	if ($col==0) echo '
									<table width="100%" style="height:176px" cellspacing="0" cellpadding="0" border="0">
									  <tr>
										<td width="33%" height="100%" valign="top">';
?>
<table width="100%" style="height:100%; background-image:url(images/fondito_foto.png); background-position:0 40 0 0; background-repeat:no-repeat" cellspacing="0" cellpadding="0" border="0">
											  <tr>
												<td width="100%" height="40" align="center" valign="top" class="h1_r_text">
													<a href="<?=tep_href_link('product_info.php?products_id='.$new_products['products_id'])?>"><?=$new_products['products_name']?></a><br><br>
												</td>
											  </tr>
											  <tr>
												<td width="100%"  height="110" valign="bottom"  align="center">
													<a href="<?=tep_href_link('product_info.php?products_id='.$new_products['products_id'])?>"><?=tep_image(DIR_WS_IMAGES.$new_products['products_image'],$new_products['products_name'], SMALL_IMAGE_WIDTH, SMALL_IMAGE_HEIGHT, 'style="border:1px solid #73D1F5"')?></a><br>
													<br style="line-height:10px;">
													<?php echo tep_draw_separator('spacer.gif', '11', '1'); ?><strong class="pr_text"><?php echo TEXT_PRODUCT_PRICE; ?></strong><?php echo tep_draw_separator('spacer.gif', '7', '1'); ?><span class="pr1_text"><?=$currencies->display_price($new_products['products_price'],'')?></span><br>
												</td>
											  </tr>
											  <tr>
												<td width="100%" height="20" valign="top" align="center"><a href="<?= tep_href_link("products_new.php","action=buy_now&products_id=".$new_products['products_id'])?>"><?=tep_image_button("button_in_cart.gif");?></a><a href="<?=tep_href_link('product_info.php?products_id='.$new_products['products_id'])?>"><?=tep_image_button("button_details.gif");?></a><br></td>
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
?>
								</td>
								<td width="20" height="100%" valign="top"><?php echo tep_draw_separator('spacer.gif', '20', '1'); ?></td>
							  </tr>
							</table>							
						</td>
					  </tr>
					  <tr>
						<td width="100%" height="16" valign="top" style="background:url(images/r-b-dr.gif) repeat-x top"></td>
					  </tr>
					</table>

