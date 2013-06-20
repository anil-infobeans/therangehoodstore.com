<?php


  require('includes/application_top.php');

  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_PRODUCT_INFO);

  $product_check_query = tep_db_query("select count(*) as total from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_status = '1' and p.products_id = '" . (int)$HTTP_GET_VARS['products_id'] . "' and pd.products_id = p.products_id and pd.language_id = '" . (int)$languages_id . "'");
  $product_check = tep_db_fetch_array($product_check_query);
  // BOF Separate Price per Customer
     if(!tep_session_is_registered('sppc_customer_group_id')) {
     $customer_group_id = '0';
     } else {
      $customer_group_id = $sppc_customer_group_id;
     }
   // EOF Separate Price per Customer
  // MOD oscStudio.com ic 20050803 - Category Name in Product_info
     $categories_name_query = tep_db_query("select p.products_id, cd.categories_name from " . TABLE_PRODUCTS_TO_CATEGORIES . " p2c, " . TABLE_PRODUCTS . " p, " . TABLE_CATEGORIES_DESCRIPTION . " cd  where p.products_status = '1' and p.products_id = '" . $HTTP_GET_VARS['products_id'] . "' and p2c.products_id = p.products_id and p2c.categories_id = cd.categories_id");
 
    $category = tep_db_fetch_array($categories_name_query);
  // END  
?>

<?php     $product_info_tags_query = tep_db_query("select p.products_id, pd.products_name, pd.products_t1, pd.products_t2, pd.products_t3, pd.products_t4, pd.products_t5, pd.tags, pd.products_title2, pd.products_title3, pd.products_title4, pd.products_title5, pd.products_title6, pd.products_title7, pd.products_title8, pd.products_title9, pd.products_description, pd.products_description2, pd.products_description3, pd.products_description4, pd.products_description5, pd.products_description6, pd.products_description7, pd.products_description8, pd.products_description9, p.products_model, p.products_quantity, p.products_image, pd.products_url, p.products_price, p.products_tax_class_id, p.products_date_added, p.products_date_available, p.manufacturers_id , p.products_length, p.products_width, p.products_depth, p.idrelations from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_status = '1' and p.products_id = '" . (int)$HTTP_GET_VARS['products_id'] . "' and pd.products_id = p.products_id and pd.language_id = '" . (int)$languages_id . "'");
    $product_info_tags = tep_db_fetch_array($product_info_tags_query);
	?>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php echo HTML_PARAMS; ?> xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo $product_info_tags['products_t4']; ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
<meta name="subject" content="<?php echo $product_info_tags['products_t4']; ?>"/>
<meta name="description" content="<?php echo $product_info_tags['products_t5']; ?>"/>
<meta name="keywords" content="<?php echo $product_info_tags['tags']; ?>"/>
<meta name="language" content="English"/>
<meta name="revisit-after" content="5 days"/>
<meta name="distribution" content="Global"/>


<base href="<?php echo (($request_type == 'SSL') ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>"/>
<link rel="stylesheet" type="text/css" href="stylesheet.css"/>
<link rel="stylesheet" type="text/css" href="stylesheet2.css"/>
<!-- link to magiczoom.css file -->
<link href="magiczoom/magiczoom.css" rel="stylesheet" type="text/css" media="screen"/>
<!-- link to magiczoom.js file -->

<script src="magiczoom/magiczoom.js" type="text/javascript"></script>
<script type="text/javascript">

function popupWindow(url) {
  window.open(url,'popupWindow','toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,copyhistory=no,width=100,height=100,screenX=150,screenY=150,top=150,left=150')
}
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
// BOF Product Type Feature
/* DDB - 041031 - Form Field Progress Bar */
/***********************************************
* Form Field Progress Bar- By Ron Jonk- http://www.euronet.nl/~jonkr/
* Modified by Dynamic Drive for minor changes
* Script featured/ available at Dynamic Drive- http://www.dynamicdrive.com
* Please keep this notice intact
***********************************************/
function textCounter(field,counter,maxlimit,linecounter) {
	// text width//
	var fieldWidth =  parseInt(field.offsetWidth);
	var charcnt = field.value.length;        
	// trim the extra text
	if (charcnt > maxlimit) { 
		field.value = field.value.substring(0, maxlimit);
	} else { 
	// progress bar percentage
	var percentage = parseInt(100 - (( maxlimit - charcnt) * 100)/maxlimit) ;
	document.getElementById(counter).style.width =  parseInt((fieldWidth*percentage)/100)+"px";
	document.getElementById(counter).innerHTML="Límite: "+percentage+"%"
	// color correction on style from CCFFF -> CC0000
	setcolor(document.getElementById(counter),percentage,"background-color");
	}
}
function setcolor(obj,percentage,prop){
	obj.style[prop] = "rgb(80%,"+(100-percentage)+"%,"+(100-percentage)+"%)";
}
// EOF Product Type Feature
</script>

<!-- script para cambiar el estilo de un div -->
<script src="Scripts/jquery-latest.js" type="text/javascript"></script>
<!-- script para cambiar el estilo de un div -->


<!-- funcion para encontrar la posicion de un div -->
<script language="JavaScript" type="text/javascript">
function getPosition(obj){
    var topValue= 0,leftValue= 0;
    while(obj){
	leftValue+= obj.offsetLeft;
	topValue+= obj.offsetTop;
	obj= obj.offsetParent;
    }
    finalvalue = leftValue + "," + topValue;
    return finalvalue;

}
</script>
<!-- funcion para encontrar la posicion de un div -->


<!-- funcion para ocultar y mostrar div de un ingrediente para productos unicos -->
<script type="text/javascript">
function mostrardiv() {
div = document.getElementById('ingredientscontent');
div.style.display = '';
}

function ocultardiv() {
div = document.getElementById('ingredientscontent');
div.style.display='none';
}
</script>
<!-- funcion para ocultar y mostrar div de un ingrediente para productos unicos -->



<?php require("includes/google.php"); ?>
<link href="126/jqueryslidemenu.css" rel="stylesheet" type="text/css" />
<!--[if lte IE 6]> 
<link rel="StyleSheet" type="text/css" href="ie6only.css" />
<![endif]-->
<!--[if lt IE 7.]>
<script defer type="text/javascript" src="pngfix.js"></script>
<![endif]-->
</head>

<body <?php if($cPath == 472){?> onclick="javascript:ocultardiv();" <?php }?>>


<?php require(DIR_WS_INCLUDES . 'header.php'); ?> 
<!-- header_eof //-->

<!-- body //-->

	  <tr <?php if($cPath == 463){?> onclick="javascript:ocultardivid();" <?php }?>>
		<td class="tdborde" valign="top" width="<?php echo BOX_WIDTH_1; ?>" height="100%" ><?php require(DIR_WS_INCLUDES . 'column_left.php'); ?></td>
	   <td class="tdborde" valign="top" width="<?php echo BOX_WIDTH_2; ?>" >
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="height:100%" class="content">
			  <tr>
				<td width="100%" height="100%" valign="top">
					<table width="100%" style="height:100%" cellspacing="0" cellpadding="0" border="0">
					  <tr>
						<td width="100%" height="100%" valign="top" style="background:url(images/r-t-dr.png) no-repeat; padding:16px 0px 15px 19px">
							<table width="100%" cellspacing="0" cellpadding="0" border="0">
							  <!--DWLayoutTable-->
							  <tr>
								<td width="1" height="36">&nbsp;</td>
							    <td width="100%" valign="top" class="h_r_text">


                                  <?php
  if ($product_check['total'] < 1) {
?>
									<strong><?= TEXT_PRODUCT_NOT_FOUND; ?>
									</strong><br/>								</td>
							  </tr>
							</table>
							<br style="line-height:18px;"/>

	<table cellpadding="0" cellspacing="0" border="0" width="100%">
	 <tr>
        <td><table border="0" width="100%" cellspacing="1" cellpadding="2">
          <tr>
            <td><table border="0" width="100%" cellspacing="0" cellpadding="2">
              <tr>
                <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                <td align="right"><?php echo '<a href="' . tep_href_link(FILENAME_DEFAULT) . '">' . tep_image_button('button_continue.gif', IMAGE_BUTTON_CONTINUE) . '</a>'; ?></td>
                <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
<?php
  } else {
    $product_info_query = tep_db_query("select p.products_id, pd.products_name, pd.products_t1, pd.products_t2, pd.products_t3, pd.products_t4, pd.products_t5, pd.tags, pd.products_title2, pd.products_title3, pd.products_title4, pd.products_title5, pd.products_title6, pd.products_title7, pd.products_title8, pd.products_title9, pd.products_description, pd.products_description2, pd.products_description3, pd.products_description4, pd.products_description5, pd.products_description6, pd.products_description7, pd.products_description8, pd.products_description9, p.products_model, p.products_quantity, p.products_image, pd.products_url, p.products_price, p.products_tax_class_id, p.products_date_added, p.products_date_available, p.manufacturers_id , p.products_length, p.products_width, p.products_depth, p.idrelations from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_status = '1' and p.products_id = '" . (int)$HTTP_GET_VARS['products_id'] . "' and pd.products_id = p.products_id and pd.language_id = '" . (int)$languages_id . "'");
    $product_info = tep_db_fetch_array($product_info_query);

    tep_db_query("update " . TABLE_PRODUCTS_DESCRIPTION . " set products_viewed = products_viewed+1 where products_id = '" . (int)$HTTP_GET_VARS['products_id'] . "' and language_id = '" . (int)$languages_id . "'");

    if ($new_price = tep_get_products_special_price($product_info['products_id'])) {
// BOF Separate Price per Customer

        $scustomer_group_price_query = tep_db_query("select customers_group_price, minorder from " . TABLE_PRODUCTS_GROUPS . " where products_id = '" . (int)$HTTP_GET_VARS['products_id']. "' and customers_group_id =  '" . $customer_group_id . "'");
        if ($scustomer_group_price = tep_db_fetch_array($scustomer_group_price_query)) {
        $product_info['products_price']= $scustomer_group_price['customers_group_price'];
		$product_info['minorder']= $scustomer_group_price['minorder'];
	}
// EOF Separate Price per Customer

      $products_price = '<s>' . $currencies->display_price($product_info['products_price'], tep_get_tax_rate($product_info['products_tax_class_id'])) . '</s> <span class="productSpecialPrice">' . $currencies->display_price($new_price, tep_get_tax_rate($product_info['products_tax_class_id'])) . '</span>';
    } else {
// BOF Separate Price per Customer
        $scustomer_group_price_query = tep_db_query("select customers_group_price, minorder from " . TABLE_PRODUCTS_GROUPS . " where products_id = '" . (int)$HTTP_GET_VARS['products_id']. "' and customers_group_id =  '" . $customer_group_id . "'");
        if ($scustomer_group_price = tep_db_fetch_array($scustomer_group_price_query)) {
        $product_info['products_price']= $scustomer_group_price['customers_group_price'];
				$product_info['minorder']= $scustomer_group_price['minorder'];
	}
// EOF Separate Price per Customer

      $products_price = $currencies->display_price($product_info['products_price'], tep_get_tax_rate($product_info['products_tax_class_id']));
    }

    // MOD - Category & Manufactureres Name in Product_info
    if (tep_not_null($product_info['products_model'])) {
	  $products_category = ' <span class="smallText2">'. $category['categories_name']. '</span>';
      //$products_name = $product_info['products_name'];
	  if (tep_not_null($manufacturer ['manufacturers_name'])) {
	  	$products_name = $products_name . ' <span class="smallText">[' . $manufacturer['manufacturers_name'] . ']</span>';
	  }
	} else {
	$products_category = ' <span class="smallText2">'. $category['categories_name']. '</span>';
	  $products_name = $product_info['products_name'];
	  if (tep_not_null($manufacturer ['manufacturers_name'])) {
	  	$products_name = $products_name . ' <span class="smallText">[' . $manufacturer['manufacturers_name'] . ']</span>';
	  }
    }
    // END 
?>
<?=$breadcrumb->trail(' &raquo; ')?><span class="t1"><?=$products_name?></span>
</td>
							  </tr>
						</table>
                        <?php echo tep_draw_form('cart_quantity', tep_href_link(FILENAME_PRODUCT_INFO, tep_get_all_get_params(array('action')) . 'action=add_product')); ?>
							<table width="100%" cellspacing="0" cellpadding="0" border="0">
							  <tr>
								<td width="100%" height="100%" valign="top">
                                    
                                      
                                                                      
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td height="90" colspan="2">

<table cellpadding="0" cellspacing="0" border="0" height="90" width="100%">
<tr>
<td style="background-image:url(images/fondoH1a.png)" width="10">&nbsp;

</td>
<td style="background-image:url(images/fondoH1b.png)">
<div style="text-align:center" >
<h1><?php echo $product_info['products_t1'];?></h1>
</div>
</td>
<td style="background-image:url(images/fondoH1c.png)" width="10">&nbsp;

</td>
</tr>
</table>

<div style="display:none">
<?php echo tep_image(DIR_WS_IMAGES .$product_info['products_image'], $product_info['products_image'], '135', '137');?>
</div>
</td>
</tr>
<tr>
<td align="left" valign="top" class="main" width="<?php echo PRODUCT_IMAGE_WIDTH+20;?>">

<div style="padding-left:7px; padding-top:10px">
<?php $exxtrap = explode('.',$product_info['products_image']); ?>
<?php echo '<a href="' . tep_href_link(DIR_WS_IMAGES . $product_info['products_image']) . '"  class="MagicZoom" rel="zoom-width:395px;zoom-height:395px;" id="zoom" >' . tep_image(DIR_WS_IMAGES . $product_info['products_image'], $product_info['products_name'], PRODUCT_IMAGE_WIDTH, PRODUCT_IMAGE_HEIGHT, 'hspace="0" vspace="0" style="border:3px solid #DCDEDD"') . '<br>' . '</a>'; ?>
</div>

<div style="padding-left:7px; padding-bottom:10px">
<?
// EXTRA IMAGES
if (DISPLAY_EXTRA_IMAGES == 'true'){
if ($product_check['total'] >= 1) {
include (DIR_WS_INCLUDES . 'products_extra_images.php');
}
} 
// EXTRAIMGES HASTA AQUI
?>
</div>

</td> 
<td align="left" class="main" valign="top">

<table cellpadding="0" cellspacing="0" border="0" width="100%">
      <tr>
        <td class="main">
        
        <!-- ESTE DIV ES EL CUADRO DE LA IZQUIERDA DE LA FOTO.. JUEGAS CON LOS PADDIGNS PARA MOVERLO Y QUE NO SALGA TAN PEGADO AL BORDE DE LA CAJA INFERIOR DE CANTIDADES -->
        <div style="padding-left:10px; padding-right:0px; padding-bottom:10px">
        <br style="line-height:25px" />
<h2><?php echo $product_info['products_name'];?></h2><br />

						<!-- AddThis Button BEGIN -->
                        <div class="addthis_toolbox addthis_default_style">
                        <a class="addthis_button_facebook" rel="nofollow"></a>
                        <a class="addthis_button_twitter" rel="nofollow"></a>
                        <a class="addthis_button_email" rel="nofollow"></a>
                        <a class="addthis_button_favorites" rel="nofollow"></a>
                        <a class="addthis_button_print" rel="nofollow"></a>
                        </div>
                        <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js?pub=xa-4a9bd17b72252878"></script>
                        <!-- AddThis Button END -->
<br />






<?php
// start Get 1 Free
    // If this product qualifies for free product(s) display promotional text
    $get_1_free_query = tep_db_query("select pd.products_name,
                                             g1f.products_free_quantity,
                                             g1f.products_qualify_quantity
                                      from " . TABLE_GET_1_FREE . " g1f,
                                           " . TABLE_PRODUCTS_DESCRIPTION . " pd
                                      where g1f.products_id = '" . (int)$product_info['products_id'] . "'
                                        and pd.products_id = g1f. products_free_id
                                        and pd.language_id = '" . (int)$languages_id . "'
                                        and status = '1'"
                                    );
    if (tep_db_num_rows($get_1_free_query) > 0) {
      $free_product = tep_db_fetch_array($get_1_free_query);
      //echo '<p class=get1free>' . sprintf (TEXT_GET_1_FREE_PROMOTION, $free_product['products_qualify_quantity'], $product_info['products_name'], $free_product['products_free_quantity'], $free_product['products_name']) . '</p>';
    }
// end Get 1 Free
?>









<?php echo stripslashes($product_info['products_description']); ?>
<br/>
 <?php
//if (PRODUCT_LIST_DIMENSIONS) 
//{
//	if ($product_info['products_length'] !='' || $product_info['products_width'] !=null || $product_info['products_depth'] !=null )
//  		echo '<span class="t2">'.TEXT_PRODUCT_DIMENSIONS .'</span>';
//		echo '<div class="h_5">'.tep_draw_separator('spacer.gif', '1', '1').'</div><br><br>';
//  	if (stripslashes($product_info['products_length']) != '')  
//  		echo TEXT_PRODUCT_LENGTH . stripslashes($product_info['products_length']) . '<br><br>';
//   	if (stripslashes($product_info['products_width']) != '')  
//  		echo TEXT_PRODUCT_WIDTH . stripslashes($product_info['products_width']) . '<br><br>';
//  	if (stripslashes($product_info['products_depth']) != '')  
//  		echo TEXT_PRODUCT_DEPTH . stripslashes($product_info['products_depth']) . '<br><br><br>';
//}
?>


<?php
    $products_attributes_query = tep_db_query("select count(*) as total from " . TABLE_PRODUCTS_OPTIONS . " popt, " . TABLE_PRODUCTS_ATTRIBUTES . " patrib where patrib.products_id='" . (int)$HTTP_GET_VARS['products_id'] . "' and patrib.options_id = popt.products_options_id and popt.language_id = '" . (int)$languages_id . "'");
    $products_attributes = tep_db_fetch_array($products_attributes_query);
    if ($products_attributes['total'] > 0) {
?>
          <table border="0" cellspacing="0" cellpadding="0" width="100%">
          <tr>
<td colspan="2">
        <span class="t2"><?php echo TEXT_PRODUCT_OPTIONS; ?></span>
<div class="h_5"><?php echo tep_draw_separator('spacer.gif', '1', '1'); ?></div>
</td>
</tr>      
 <?php
      // BOF Option Type Feature
      //$products_options_name_query = tep_db_query("select distinct popt.products_options_id, popt.products_options_name from " . TABLE_PRODUCTS_OPTIONS . " popt, " . TABLE_PRODUCTS_ATTRIBUTES . " patrib where patrib.products_id='" . (int)$HTTP_GET_VARS['products_id'] . "' and patrib.options_id = popt.products_options_id and popt.language_id = '" . (int)$languages_id . "' order by popt.products_options_name");
      //while ($products_options_name = tep_db_fetch_array($products_options_name_query)) {

      $products_options_name_query = tep_db_query("select distinct popt.products_options_id, popt.products_options_name, popt.products_options_type, popt.products_options_length, popt.products_options_comment from " . TABLE_PRODUCTS_OPTIONS . " popt, " . TABLE_PRODUCTS_ATTRIBUTES . " patrib where patrib.products_id='" . (int)$HTTP_GET_VARS['products_id'] . "' and patrib.options_id = popt.products_options_id and popt.language_id = '" . (int)$languages_id . "' order by popt.products_options_name");
      while ($products_options_name = tep_db_fetch_array($products_options_name_query)) {
				//clr 030714 add case statement to check option type
        switch ($products_options_name['products_options_type']) {
          case PRODUCTS_OPTIONS_TYPE_TEXT:
            //CLR 030714 Add logic for text option
            $products_attribs_query = tep_db_query("select distinct patrib.options_values_price, patrib.price_prefix from " . TABLE_PRODUCTS_ATTRIBUTES . " patrib where patrib.products_id='" . (int)$HTTP_GET_VARS['products_id'] . "' and patrib.options_id = '" . $products_options_name['products_options_id'] . "'");
            $products_attribs_array = tep_db_fetch_array($products_attribs_query);
            $tmp_html = '<input type="text" name ="id[' . TEXT_PREFIX . $products_options_name['products_options_id'] . ']" size="' . $products_options_name['products_options_length'] .'" maxlength="' . $products_options_name['products_options_length'] . '" value="' . $cart->contents[$HTTP_GET_VARS['products_id']]['attributes_values'][$products_options_name['products_options_id']] .'">  ' . $products_options_name['products_options_comment'] ;
            if ($products_attribs_array['options_values_price'] != '0') {
              $tmp_html .= '(' . $products_attribs_array['price_prefix'] . $currencies->display_price($products_attribs_array['options_values_price'], tep_get_tax_rate($product_info['products_tax_class_id'])) .')';
            }
?>
<tr>
<td width="50%" valign="top">
<br/>
<br/><?php echo $products_options_name['products_options_name'] . ':'; ?></td>
              <td width="50%" align="left" valign="top"><br/>
<br/><?php echo $tmp_html;  ?></td>
            </tr>
<?php
            break;
			
          case PRODUCTS_OPTIONS_TYPE_TEXTAREA:
            //CLR 030714 Add logic for text option
            $products_attribs_query = tep_db_query("select distinct patrib.options_values_price, patrib.price_prefix from " . TABLE_PRODUCTS_ATTRIBUTES . " patrib where patrib.products_id='" . (int)$HTTP_GET_VARS['products_id'] . "' and patrib.options_id = '" . $products_options_name['products_options_id'] . "'");
            $products_attribs_array = tep_db_fetch_array($products_attribs_query);
		$tmp_html = '<textarea onKeyDown="textCounter(this,\'progressbar' . $products_options_name['products_options_id'] . '\',' . $products_options_name['products_options_length'] . ')" 
								   onKeyUp="textCounter(this,\'progressbar' . $products_options_name['products_options_id'] . '\',' . $products_options_name['products_options_length'] . ')" 
								   onFocus="textCounter(this,\'progressbar' . $products_options_name['products_options_id'] . '\',' . $products_options_name['products_options_length'] . ')" 
								   wrap="soft" 
								   name="id[' . TEXT_PREFIX . $products_options_name['products_options_id'] . ']"
								   cols="21"
								   rows="5" 
								   id="id[' . TEXT_PREFIX . $products_options_name['products_options_id'] . ']" 
								   value="' . $cart->contents[$HTTP_GET_VARS['products_id']]['attributes_values'][$products_options_name['products_options_id']] . '"></textarea>
						<div id="progressbar' . $products_options_name['products_options_id'] . '" class="progress"></div>
						<script>textCounter(document.getElementById("id[' . TEXT_PREFIX . $products_options_name['products_options_id'] . ']"),"progressbar' . $products_options_name['products_options_id'] . '",' . $products_options_name['products_options_length'] . ')</script>';?>	<!-- DDB - 041031 - Form Field Progress Bar //-->
            <tr>
<?php
            if ($products_attribs_array['options_values_price'] != '0') {
?>
<tr>
<td width="50%" valign="top">
<br/>
<br/><?php echo ' <span class="smallText3">' . $products_options_name['products_options_name'] . ':' . '</span>' . '<br/>(' . $products_options_name['products_options_comment'] . ' ' . $products_attribs_array['price_prefix'] . $currencies->display_price($products_attribs_array['options_values_price'], tep_get_tax_rate($product_info['products_tax_class_id'])) . ')'; ?></td>
<?php       } else {
?>
<tr>
<td width="50%" valign="top">
<br/>
<br/><?php echo ' <span class="smallText3">' . $products_options_name['products_options_name'] . ':' . '</span>' .'<br/>(' . $products_options_name['products_options_comment'] . ')'; ?></td>
<?php        }
?>
              <td width="50%" align="left" valign="top"><br/>
<br/>
<div style="width:430px">
&nbsp;<?php echo $tmp_html;  ?>
</div></td>
            </tr>
<?php
            break;
			
          case PRODUCTS_OPTIONS_TYPE_RADIO:
            //CLR 030714 Add logic for radio buttons
            $tmp_html = '<table>';
            $products_options_query = tep_db_query("select pov.products_options_values_id, pov.products_options_values_name, pa.options_values_price, pa.price_prefix from " . TABLE_PRODUCTS_ATTRIBUTES . " pa, " . TABLE_PRODUCTS_OPTIONS_VALUES . " pov where pa.products_id = '" . (int)$HTTP_GET_VARS['products_id'] . "' and pa.options_id = '" . $products_options_name['products_options_id'] . "' and pa.options_values_id = pov.products_options_values_id and pov.language_id = '" . $languages_id . "'");
            $checked = true;
            while ($products_options_array = tep_db_fetch_array($products_options_query)) {
              $tmp_html .= '<tr><td class="main">';
              $tmp_html .= tep_draw_radio_field('id[' . $products_options_name['products_options_id'] . ']', $products_options_array['products_options_values_id'], $checked);
              $checked = false;
              $tmp_html .= $products_options_array['products_options_values_name'] ;
              if ($products_options_array['options_values_price'] != '0') {
                $tmp_html .= '(' . $products_options_array['price_prefix'] . $currencies->display_price($products_options_array['options_values_price'], tep_get_tax_rate($product_info['products_tax_class_id'])) .')&nbsp';
              }
              $tmp_html .= '</tr></td>';
            }
            $tmp_html .= '</table>';
?>
<tr>
<td width="50%" valign="top">
<br/>
<br/><?php echo ' <span class="smallText3">' . $products_options_name['products_options_name'] . ':' . '</span>' . '<br/>(' . $products_options_name['products_options_comment'] . ')'; ?></td>
              <td width="50%" align="left" valign="top"><br/>
<br/><?php echo $tmp_html;  ?></td>
            </tr>
<?php
            break;
          case PRODUCTS_OPTIONS_TYPE_CHECKBOX:
            //CLR 030714 Add logic for checkboxes
            $products_attribs_query = tep_db_query("select distinct patrib.options_values_id, patrib.options_values_price, patrib.price_prefix from " . TABLE_PRODUCTS_ATTRIBUTES . " patrib where patrib.products_id='" . (int)$HTTP_GET_VARS['products_id'] . "' and patrib.options_id = '" . $products_options_name['products_options_id'] . "'");
            $products_attribs_array = tep_db_fetch_array($products_attribs_query);
            echo '<tr><td class="main">' . '<br/><br/>' . ' <span class="smallText3">'.$products_options_name['products_options_name'] . ':' . '</span>' . '<br/>(' . $products_options_name['products_options_comment'] . ')' . '</td><td class="main">'. '<br/><br/>';
            echo tep_draw_checkbox_field('id[' . $products_options_name['products_options_id'] . ']', $products_attribs_array['options_values_id']);
            if ($products_attribs_array['options_values_price'] != '0') {
              echo '(' . $products_attribs_array['price_prefix'] . $currencies->display_price($products_attribs_array['options_values_price'], tep_get_tax_rate($product_info['products_tax_class_id'])) .')&nbsp';
            }
            echo '</td></tr>';
            break;
          default:
            //clr 030714 default is select list
            //clr 030714 reset selected_attribute variable
            $selected_attribute = false;

      // EOF Option Type Feature 
        $products_options_array = array();
        $products_options_query = tep_db_query("select pov.products_options_values_id, pov.products_options_values_name, pa.options_values_price, pa.price_prefix from " . TABLE_PRODUCTS_ATTRIBUTES . " pa, " . TABLE_PRODUCTS_OPTIONS_VALUES . " pov where pa.products_id = '" . (int)$HTTP_GET_VARS['products_id'] . "' and pa.options_id = '" . (int)$products_options_name['products_options_id'] . "' and pa.options_values_id = pov.products_options_values_id and pov.language_id = '" . (int)$languages_id . "'");
        while ($products_options = tep_db_fetch_array($products_options_query)) {
          $products_options_array[] = array('id' => $products_options['products_options_values_id'], 'text' => $products_options['products_options_values_name']);
          if ($products_options['options_values_price'] != '0') {
            $products_options_array[sizeof($products_options_array)-1]['text'] .= ' (' . $products_options['price_prefix'] . $currencies->display_price($products_options['options_values_price'], tep_get_tax_rate($product_info['products_tax_class_id'])) .') ';
          }
        }

        if (isset($cart->contents[$HTTP_GET_VARS['products_id']]['attributes'][$products_options_name['products_options_id']])) {
          $selected_attribute = $cart->contents[$HTTP_GET_VARS['products_id']]['attributes'][$products_options_name['products_options_id']];
        } else {
          $selected_attribute = false;
        }
?>
<tr>
<td width="20%" valign="top">
<br/>
<br/>
<?php echo ' <span class="smallText3">' . $products_options_name['products_options_name'] . ':' . ' </span>' . '<br/>(' . $products_options_name['products_options_comment'] . ')'; ?><br/>

</td>
              <td width="80%" align="left" valign="top"><br/>
<br/>&nbsp;<?php 
                // BOF Option Type Feature
                //echo tep_draw_pull_down_menu('id[' . $products_options_name['products_options_id'] . ']', $products_options_array, $selected_attribute);
                echo tep_draw_pull_down_menu('id[' . $products_options_name['products_options_id'] . ']', $products_options_array,   $selected_attribute);
                // EOF Option Type Feature
                ?>

                </td>
            </tr>
<?php
        // BOF Option Type Feature
        } // ends the switch clause
        // EOF Option Type Feature
      } 
	  ?>
          </table>

<?php
    }
?>
<br />

<span class="pr1_text"><b><?=$products_price?></b></span>

<?php if($cPath == 463){?>
&nbsp;&nbsp;<span class="red">You Save: <?php echo round($product_info['products_price']/(0.9*10), 2);?>!</span>
<br />
<span style="font-weight:bold">
SAVE 10% AND BUY A PRODUCT PAC NOW!
</span>
<?php } ?>

<?php
		//Minimum quantity code
	if (tep_not_null($product_info['minorder']) ) {
      echo '<br/><span class="pr_text">'.TEXT_PEDIDO_MINIMO.'&nbsp;:&nbsp;</span><span class="pr1_text">' .$product_info['minorder'] . '</span>'.'<br/><br style="line-height:14px;"/>' .'<span class="pr_text">'.TEXT_PACKS.'&nbsp;:&nbsp;</span>&nbsp;'.TEXT_DE.'&nbsp;<span class="pr1_text">' . $product_info['minorder'] . '</span>&nbsp;'.TEXT_EN.'&nbsp;<span class="pr1_text">' . $product_info['minorder'] . '<br/><br style="line-height:7px;"/>';
    }
	//End: Minimum quantity code
	?>

</div>


<table cellpadding="0" cellspacing="0" border="0" width="403"  style="background-image:url(images/fondoCART.png); background-repeat:no-repeat">
<tr>
<td class="pr_text3" <?php if($cPath == 472){?>height="60"<?php } else {?>height="70"<?php } ?>valign="bottom" align="right" style="padding-bottom:5px;">
<?php echo TEXT_ENTER_QUANTITY ;?>&nbsp;:&nbsp;<input name="quantity" type="text" size="6" class="input2"/>&nbsp;&nbsp;
</td>
<td valign="bottom" align="left" <?php if($cPath == 472){?>height="56"<?php } else {?>height="46"<?php } ?> >
<?php echo tep_draw_hidden_field('products_id', $product_info['products_id']) . tep_image_submit('button_in_cart.gif', IMAGE_BUTTON_IN_CART); ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
<?php if($cPath == 472){?>
<tr>
<td colspan="2" align="center" valign="top" height="55">
<span class="yellow">Buy 3 and Get 1 Free</span>
<br />
<span class="red">You Save: <?=$products_price?>!</span>
</td>
</tr>
<?php } else {?>
<tr>
<td colspan="2" align="center" valign="top" height="40">&nbsp;

</td>
</tr>
<?php } ?>
</table>






<?php //echo '<a href="' . tep_href_link(FILENAME_PRODUCT_REVIEWS, tep_get_all_get_params()) . '">' . tep_image_button('button_reviews.gif', IMAGE_BUTTON_REVIEWS) . '</a>'; ?>




</td>
</tr>

</table>

</td>
</tr>





<?php
    $product_infoidrelations_query = tep_db_query("select p.products_id, p.products_image from " . TABLE_PRODUCTS . " p where p.products_status = '1' and p.products_id = '" . $product_info['idrelations'] . "'");
    $product_infoidrelations = tep_db_fetch_array($product_infoidrelations_query);
	?>
    
 <?php if($product_infoidrelations > 0){?>   
    
<tr>
<td colspan="2">

<a href="product_info.php?products_id=<?php echo $product_info['idrelations'];?>"><?php echo tep_image(DIR_WS_IMAGES . $product_infoidrelations['products_image'], '', '98', '100', 'hspace="0" vspace="0"') . '<br/>' ; ?></a>

</td>
</tr>

<?php } ?>




<?php 
$errormerde = '<br type="_moz" />';
?>

<?php if(($product_info['products_description2'] != "") && ($product_info['products_description2'] != $errormerde)){?>
<tr>
<td colspan="2">
<div style="background-image:url(images/blanco_1.png); height:30px">&nbsp;</div>
<div style="background-image:url(images/blanco_2.png); padding-left:27px; padding-right:27px;">
    <div class="titlesubcontent">
    <?php echo stripslashes($product_info['products_title2']); ?>
    </div><br />
    <div class="subcontent">
    <?php echo stripslashes($product_info['products_description2']); ?>
    </div>
</div>
<div style="background-image:url(images/blanco_3.png); height:30px" >&nbsp;</div>
</td>
</tr>
<?php }?>


<?php if(($product_info['products_description3'] != "") && ($product_info['products_description3'] != $errormerde)){?>
<tr>
<td colspan="2">
<div style="background-image:url(images/blanco_1.png); height:30px">&nbsp;</div>
<div style="background-image:url(images/blanco_2.png); padding-left:27px; padding-right:27px;">
    <div class="titlesubcontent">
    <?php echo stripslashes($product_info['products_title3']); ?>
    </div><br />
    <div class="subcontent">
    <?php echo stripslashes($product_info['products_description3']); ?>
    </div>
</div>
<div style="background-image:url(images/blanco_3.png); height:30px">&nbsp;</div>
</td>
</tr>
<?php }?>



<?php if(($product_info['products_description4'] != "") && ($product_info['products_description4'] != $errormerde)){?>
<tr>
<td colspan="2">
<div style="background-image:url(images/blanco_1.png); height:30px">&nbsp;</div>
<div style="background-image:url(images/blanco_2.png); padding-left:27px; padding-right:27px;">
    <div class="titlesubcontent">
    <?php echo stripslashes($product_info['products_title4']); ?>
    </div><br />
    <div class="subcontent">
    <?php echo stripslashes($product_info['products_description4']); ?>
    </div>
</div>
<div style="background-image:url(images/blanco_3.png); height:30px">&nbsp;</div>
</td>
</tr>
<?php }?>


<?php if(($product_info['products_description5'] != "") && ($product_info['products_description5'] != $errormerde)){?>
<tr>
<td colspan="2">
<div style="background-image:url(images/blanco_1.png); height:30px">&nbsp;</div>
<div style="background-image:url(images/blanco_2.png); padding-left:27px; padding-right:27px;">
    <div class="titlesubcontent">
    <?php echo stripslashes($product_info['products_title5']); ?>
    </div><br />
    <div class="subcontent">
    <?php echo stripslashes($product_info['products_description5']); ?>
    </div>
</div>
<div style="background-image:url(images/blanco_3.png); height:30px">&nbsp;</div>
</td>
</tr>
<?php }?>




<?php if(($product_info['products_description6'] != "") && ($product_info['products_description6'] != $errormerde)){?>
<tr>
<td colspan="2">
<div style="background-image:url(images/blanco_1.png); height:30px">&nbsp;</div>
<div style="background-image:url(images/blanco_2.png); padding-left:27px; padding-right:27px;">
    <div class="titlesubcontent">
    <?php echo stripslashes($product_info['products_title6']); ?>
    </div><br />
    <div class="subcontent">
    <?php echo stripslashes($product_info['products_description6']); ?>
    </div>
</div>
<div style="background-image:url(images/blanco_3.png); height:30px">&nbsp;</div>
</td>
</tr>
<?php }?>




<?php if(($product_info['products_description7'] != "") && ($product_info['products_description7'] != $errormerde)){?>
<tr>
<td colspan="2">
<div style="background-image:url(images/blanco_1.png); height:30px">&nbsp;</div>
<div style="background-image:url(images/blanco_2.png); padding-left:27px; padding-right:27px;">
    <div class="titlesubcontent">
    <?php echo stripslashes($product_info['products_title7']); ?>
    </div><br />
    <div class="subcontent">
    <?php echo stripslashes($product_info['products_description7']); ?>
    </div>
</div>
<div style="background-image:url(images/blanco_3.png); height:30px">&nbsp;</div>
</td>
</tr>
<?php }?>





<?php if(($product_info['products_description8'] != "") && ($product_info['products_description8'] != $errormerde)){?>
<tr>
<td colspan="2">
<div style="background-image:url(images/blanco_1.png); height:30px">&nbsp;</div>
<div style="background-image:url(images/blanco_2.png); padding-left:27px; padding-right:27px;">
    <div class="titlesubcontent">
    <?php echo stripslashes($product_info['products_title8']); ?>
    </div><br />
    <div class="subcontent">
    <?php echo stripslashes($product_info['products_description8']); ?>
    </div>
</div>
<div style="background-image:url(images/blanco_3.png); height:30px">&nbsp;</div>
</td>
</tr>
<?php }?>





</table>
	




      
          
          

        </td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
<?php
    $reviews_query = tep_db_query("select count(*) as count from " . TABLE_REVIEWS . " where products_id = '" . (int)$HTTP_GET_VARS['products_id'] . "'");
    $reviews = tep_db_fetch_array($reviews_query);
    if ($reviews['count'] > 0) {
?>
      <tr>
        <td class="main"><?php echo TEXT_CURRENT_REVIEWS . ' ' . $reviews['count']; ?></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
<?php
    }

    if (tep_not_null($product_info['products_url'])) {
?>
      <tr>
        <td class="main"><?php echo sprintf(TEXT_MORE_INFORMATION, tep_href_link(FILENAME_REDIRECT, 'action=url&goto=' . urlencode($product_info['products_url']), 'NONSSL', true, false)); ?></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
<?php
    }

    if ($product_info['products_date_available'] > date('Y-m-d H:i:s')) {
?>
      <tr>
        <td align="center" class="smallText"><?php echo sprintf(TEXT_DATE_AVAILABLE, tep_date_long($product_info['products_date_available'])); ?></td>
      </tr>
<?php
    } else {
?>
<?php
    }
?>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
      
      <tr>
      <td>
<?php
    if ((USE_CACHE == 'true') && empty($SID)) {
      echo tep_cache_also_purchased(3600);
    } else {

            

        
include(DIR_WS_MODULES . FILENAME_ALSO_PURCHASED_PRODUCTS);
         }
  }
?>
</td>
</tr>

    </table>
	
<!-- body_eof //-->

					  </td>
					  </tr>
					</table>
                    </form>
                    </td>
                    </tr>
</table>
</td>
			  </tr>
              



</table>



<!-- funcion para ocultar y mostrar div e un ingrediente para cada producto de un PAC posicionado de acuerdo al div donde se encuentre el producto-->
<script type="text/javascript">
		function loadContent(id) {
			$("#subproductcontent").load("ingredients.php?products_id="+id+"");
		}
</script>
<script type="text/javascript">
function mostrardivid(id) {
var obj = document.getElementById(id);
    var topValue= 0,leftValue= 0;
    while(obj){
	leftValue+= obj.offsetLeft;
	topValue+= obj.offsetTop;
	obj= obj.offsetParent;
    }

document.getElementById('subproductcontent').style.marginTop =topValue-341+'px';
document.getElementById('subproductcontent').style.display = '';
loadContent(id);
}

function ocultardivid() {
div = document.getElementById('subproductcontent');
div.style.display='none';
}
</script>
<!-- funcion para ocultar y mostrar div e un ingrediente para cada producto de un PAC posicionado de acuerdo al div donde se encuentre el producto-->



<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>
<!-- footer_eof //-->
</body>
</html>
<?php require(DIR_WS_INCLUDES . 'application_bottom.php'); ?>