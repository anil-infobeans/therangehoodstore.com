<?php


  require('includes/application_top.php');

  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_SPECIALS);

  $breadcrumb->add(NAVBAR_TITLE, tep_href_link(FILENAME_SPECIALS));
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php echo HTML_PARAMS; ?> xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title><?php echo TITLE; ?></title>
<base href="<?php echo (($request_type == 'SSL') ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
</head>
<body marginwidth="0" marginheight="0" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0">
<!-- header //-->
<?php require(DIR_WS_INCLUDES . 'header2.php'); ?>
<!-- header_eof //-->

<!-- body //-->

<script language="javascript"><!-- 
function popupWindow(url) {
  window.open(url,'popupWindow','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,copyhistory=no,width=290,height=290,screenX=290,screenY=290,top=150,left=150');
}
//--></script>

<!-- Start code -->

	  <tr>
		<td class="tdborde" valign="top" width="<?php echo BOX_WIDTH_1; ?>" height="100%"><?php require(DIR_WS_INCLUDES . 'column_left.php'); ?></td>
	   <td class="tdborde" valign="top" width="<?php echo BOX_WIDTH_2; ?>" >
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="height:100%" class="content">
			  <tr>
				<td width="100%" height="100%" valign="top">
					<table width="100%" style="height:100%" cellspacing="0" cellpadding="0" border="0">
					  <tr>
						<td width="100%" height="100%" valign="top" style="background:url(images/r-t-dr.png) repeat-x; padding: 16px 11px 15px 19px">
							<table width="100%" style="height:22px" cellspacing="0" cellpadding="0" border="0">
							  <!--DWLayoutTable-->
							  <tr>
								<td width="1" height="36">&nbsp;</td>
							    <td width="100%" valign="top" class="h_r_text">
									<?=HEADING_TITLE?><br></td>
							  </tr>
							</table>
							<table width="100%" cellspacing="0" cellpadding="0" border="0" style="padding-left:19px">
							  <tr>
								<td width="100%" height="100%" valign="top">
									<br style="line-height:5px;">

<?php

  if(!tep_session_is_registered('sppc_customer_group_id')) {
  $customer_group_id = '0';
	echo CONTENT_TEXT;
  } else {
   $customer_group_id = $sppc_customer_group_id;
  }
  
  $specials_query_raw = "select p.products_id, pd.products_name, p.products_price, p.products_tax_class_id, p.products_image, s.specials_new_products_price from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd, " . TABLE_SPECIALS . " s where p.products_status = '1' and s.products_id = p.products_id and p.products_id = pd.products_id and pd.language_id = '" . (int)$languages_id . "' and s.status = '1' and s.customers_group_id = ". (int)$customer_group_id." order by s.specials_date_added DESC";
  

	
  $specials_split = new splitPageResults($specials_query_raw, MAX_DISPLAY_SPECIAL_PRODUCTS);
  if (($specials_split->number_of_rows > 0) && ((PREV_NEXT_BAR_LOCATION == '1') || (PREV_NEXT_BAR_LOCATION == '3'))) {
?>
		<table border="0" width="100%" cellspacing="0" cellpadding="2">
		<tr>
			<td class="smallText"><?php echo $specials_split->display_count(TEXT_DISPLAY_NUMBER_OF_SPECIALS); ?></td>
			<td align="right" class="smallText"><?php echo TEXT_RESULT_PAGE . ' ' . $specials_split->display_links(MAX_DISPLAY_PAGE_LINKS, tep_get_all_get_params(array('page', 'info', 'x', 'y'))); ?></td>
		</tr>
		</table><br/>
<?php } ?>

<?php
    $row=0;
	$col=0;
    $specials_query = tep_db_query($specials_split->sql_query);
    while ($specials = tep_db_fetch_array($specials_query)) {
		$products_new=$specials;
$product_query=tep_db_query("select products_description  from " . TABLE_PRODUCTS_DESCRIPTION . " where products_id = '" . (int)$products_new['products_id'] . "' and language_id = '" . (int)$languages_id . "'");
$product = tep_db_fetch_array($product_query);
$pn = $product['products_description'];
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
<a href="<?=tep_href_link(FILENAME_PRODUCT_INFO, 'products_id=' . $products_new['products_id'])?>"><?=tep_image(DIR_WS_IMAGES . $products_new['products_image'], $products_new['products_name'],SMALL_IMAGE_WIDTH, SMALL_IMAGE_HEIGHT)?></a>
</div>
</td>
<td width="10">&nbsp;</td>
<td width="150" align="center" valign="top" class="h1_r_text">
<div class="h1_r_text" >
<a href="<?=tep_href_link('product_info.php?products_id='.$products_new['products_id'])?>"><?=$products_new['products_name']?></a>
</div>

<br />
  <?php
      $reviews_query = tep_db_query("select count(*) as count from " . TABLE_REVIEWS . " r, " . TABLE_REVIEWS_DESCRIPTION . " rd where r.products_id = '" . $products_new['products_id'] . "' and r.reviews_id = rd.reviews_id and rd.languages_id = '" . (int)$languages_id . "'");
    $reviews = tep_db_fetch_array($reviews_query);
    $reviews_query_average = tep_db_query("select (avg(reviews_rating)) as average_rating from " . TABLE_REVIEWS . " r," . TABLE_REVIEWS_DESCRIPTION . " rd where r.products_id = '" . $products_new['products_id'] . "' and r.reviews_id = rd.reviews_id and rd.languages_id = '" . (int)$languages_id . "'");
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
$product_info_query = tep_db_query("select p.products_id, pd.products_name, pd.products_description, p.products_model, p.products_quantity, p.products_image, pd.products_url, p.products_price, p.products_tax_class_id, p.products_date_added, p.products_date_available, p.manufacturers_id , p.products_length, p.products_width, p.products_depth from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_status = '1' and p.products_id = '" . $products_new['products_id'] . "' and pd.products_id = p.products_id and pd.language_id = '" . (int)$languages_id . "'");
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
 


<div style=" padding-top:5px; font-size:12px; font-family:Arial, Helvetica, sans-serif" class="more"><a href="<?=tep_href_link('product_info.php?products_id='.$products_new['products_id'].'');?>"><?php echo VIEWMORE;?> >>
  </a>
</div>


  
  


      
      

                                            
<br />

<?php

if($customer_group_id != 0){
  $scustomer_group_price_query = tep_db_query("select customers_group_price from " . TABLE_PRODUCTS_GROUPS . " where products_id = '" . $products_new['products_id']. "' and customers_group_id =  '" . $customer_group_id . "'");
        if ($scustomer_group_price = tep_db_fetch_array($scustomer_group_price_query)) {
        $specials['products_price'] = $scustomer_group_price['customers_group_price'];
		
	}
}
?>
    
    


<div class="pr1_text"><s><?php echo $currencies->display_price($specials['products_price'],'')?></s></span>&nbsp;<span class="productSpecialPrice"><?=$currencies->display_price($specials['specials_new_products_price'],'')?></div><br>


</td>
</tr>

<tr>
<td valign="bottom">
<a href="<?=tep_href_link('product_info.php?products_id='.$products_new['products_id'])?>"><?=tep_image_button("button_details.gif");?></a>
</td>
<td valign="bottom" colspan="2">&nbsp;

</td>
</tr>                                      
                                                

								  </table>
<?php
	if ($col==1) {
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
										<td width="2%" height="100%"  valign="top"><img alt="" src="images/spacer.gif" width="2" height="1"><br></td>
										<td width="32%" height="100%" valign="top">';
		echo '
										</td>
									  </tr>
									</table>';
}

?>

<?php
  if (($specials_split->number_of_rows > 0) && ((PREV_NEXT_BAR_LOCATION == '2') || (PREV_NEXT_BAR_LOCATION == '3'))) {
?>    <br/>
      <table border="0" width="100%" cellspacing="0" cellpadding="2">
          <tr>
            <td class="smallText"><br/>&nbsp;<?php echo $specials_split->display_count(TEXT_DISPLAY_NUMBER_OF_SPECIALS); ?><br/><br/></td>
            <td align="right" class="smallText"><?php echo TEXT_RESULT_PAGE . ' ' . $specials_split->display_links(MAX_DISPLAY_PAGE_LINKS, tep_get_all_get_params(array('page', 'info', 'x', 'y'))); ?><br/><br/></td>
          </tr>
      </table>
<?php
  }
?>


<!-- body_eof //-->

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