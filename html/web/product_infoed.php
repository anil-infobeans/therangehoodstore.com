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
<!doctype html public "-//W3C//DTD HTML 4.01 Transitional//EN">
<html <?php echo HTML_PARAMS; ?>>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title><?php echo TITLE; ?></title>
<base href="<?php echo (($request_type == 'SSL') ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<script language="javascript">

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

</head>
<body marginwidth="0" marginheight="0" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0">
<!-- header //-->
<?php require(DIR_WS_INCLUDES . 'header.php'); ?>
<!-- header_eof //--> 

<!-- body //-->

	  <tr> 
		<td class="tdborde" valign="top" width="<?php echo BOX_WIDTH_1; ?>" height="20%" bgcolor="#F2F2F2"><?php require(DIR_WS_INCLUDES . 'column_left.php'); ?></td>
	   <td class="tdborde" valign="top" width="<?php echo BOX_WIDTH_2; ?>" bgcolor="#F2F2F2">
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" height:"20%" class="content">
			  <tr>
				<td width="100%" height="100%" valign="top" style="background:url(images/r-t-dr.png) no-repeat; padding: 8px 11px 15px 19px">
							<table width="50%" style="height:22px" cellspacing="10" cellpadding="0" border="0">
							  <!--DWLayoutTable-->
							  <tr>
								<td width="150%" valign="top" class="h_r_text">
                                  <?php echo tep_draw_form('cart_quantity', tep_href_link(FILENAME_PRODUCT_INFO, tep_get_all_get_params(array('action')) . 'action=add_product')); ?>

                                <?php
  if ($product_check['total'] < 1) {    
?><strong><strong>
                                <?= TEXT_PRODUCT_NOT_FOUND; ?>
                                </strong></strong><br>								</td>
							  </tr> 
							</table>
				  <br style="line-height:18px;">

	<table cellpadding="0" cellspacing="0" border="0" width="100%" >
	 <tr>
        <td><table border="0" width="20%" cellspacing="10" cellpadding="2" >
          <tr>
            <td><table border="0" width="20%" cellspacing="0" cellpadding="2"><tr><td align="right">
            <table border="0" width="20%" cellspacing="10" cellpadding="2">
              <tr>
               <td align="right">
			   <?php echo '<a href="' . tep_href_link(FILENAME_DEFAULT) . '">' . tep_image_button('button_continue.gif', IMAGE_BUTTON_CONTINUE) . '</a>'; ?>
               </td>
                </tr>
            </table>
           </td>
          </tr>
        </table></td>
      </tr>
<?php
  } else {
    $product_info_query = tep_db_query("select p.products_id, pd.products_name, pd.products_description, p.products_model, p.products_quantity, p.products_image, pd.products_url, p.products_price, p.products_tax_class_id, p.products_date_added, p.products_date_available, p.manufacturers_id , p.products_length, p.products_width, p.products_depth from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_status = '1' and p.products_id = '" . (int)$HTTP_GET_VARS['products_id'] . "' and pd.products_id = p.products_id and pd.language_id = '" . (int)$languages_id . "'");
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
      $products_name = $product_info['products_name'] . '<span class="smallText">' . $product_info['products_model'] . '  </span>';
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
<strong><?=$breadcrumb->trail(' &raquo; ')?></strong><span class="t1"><?=$products_name?></span>
<td width="20%" height="20%" valign="top" style="background: url(images/t1-dr.gif) repeat-x top"></td>
							  </tr>
						</table>
							<tr>
                            <td align="right"><br>
							<?php echo '<a href="#" onclick="history.go(-1);return false">' . tep_image_button('button_back.gif', IMAGE_BUTTON_BACK) . '</a>'; ?></td></tr>
							  <tr>
								<td width="20%" height="20%" valign="top">
									<br style="line-height:2px;">
	
    									<table cellpadding="0" cellspacing="10" border="0" width="80%">
                                        	<tr>
												<td align="left" valign="top" class="main">
													<div style="position:absolute; z-index:20;" >
													<script language="javascript"><!--
													document.write('<?php echo '<a href="javascript:popupWindow(\\\'' . tep_href_link(FILENAME_POPUP_IMAGE, 'pID=' . 		
													$product_info['products_id']) . '\\\')"><img src="watermark_s.png" height="480" width="480">' . '</a>'; ?>');
													//--></script>
													</div>
													<div style="z-index:10">
													<script language="javascript"><!--
													
													document.write('<?php echo '<a href="javascript:popupWindow(\\\'' . tep_href_link(FILENAME_POPUP_IMAGE, 'pID=' . $product_info['products_id']) . '\\\')">' . tep_image(DIR_WS_IMAGES . $product_info['products_image'], addslashes($product_info['products_name']), PRODUCT_IMAGE_WIDTH, PRODUCT_IMAGE_HEIGHT, 'hspace="0" vspace="0" style="border:1px solid #DCDEDD"') . '<br>' . '</a>'; ?>');
//--></script>
<noscript>
<?php echo '<a href="' . tep_href_link(DIR_WS_IMAGES . $product_info['products_image']) . '" target="_blank">' . tep_image(DIR_WS_IMAGES . $product_info['products_image'], $product_info['products_name'], PRODUCT_IMAGE_WIDTH, PRODUCT_IMAGE_HEIGHT, 'hspace="0" vspace="0" style="border:3px solid #D0ECF9"') . '<br>' . '</a>'; ?>
												</noscript>
												</div>
												</td> 
												<td align="left" class="main" height="20%">
											<span class="t2"><?php echo TEXT_PRODUCT_DESCRIPTION; ?></span> 
                                    		<div class="h_5"><?php echo tep_draw_separator('spacer.gif', '1', '1'); ?></div>
                                    		
<?php echo stripslashes($product_info['products_description']); ?>
<br>
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

	<table cellpadding="0" cellspacing="0" border="0" width="20%"> 
      <tr>
        <td class="main">
<?php
    $products_attributes_query = tep_db_query("select count(*) as total from " . TABLE_PRODUCTS_OPTIONS . " popt, " . TABLE_PRODUCTS_ATTRIBUTES . " patrib where patrib.products_id='" . (int)$HTTP_GET_VARS['products_id'] . "' and patrib.options_id = popt.products_options_id and popt.language_id = '" . (int)$languages_id . "'");
    $products_attributes = tep_db_fetch_array($products_attributes_query);
    if ($products_attributes['total'] > 0) {
?>
<table border="0" cellspacing="0" cellpadding="0" width="20%">
          <tr>
<td colspan="2">
        <span class="t2"><?php echo TEXT_PRODUCT_OPTIONS; ?></span>
<div class="h_5"><?php echo tep_draw_separator('spacer.gif', '1', '1'); ?></div></td>
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
<td width="80%" valign="top">
<?php echo $products_options_name['products_options_name'] . ':'; ?></td>
              <td width="76%" align="left" valign="top"><br>
<br>
<?php echo $tmp_html;  ?></td>
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
<td width="80%" valign="top">
<br>
<br><?php echo ' <span class="smallText3">' . $products_options_name['products_options_name'] . ':' . '</span>' . '<br>(' . $products_options_name['products_options_comment'] . ' ' . $products_attribs_array['price_prefix'] . $currencies->display_price($products_attribs_array['options_values_price'], tep_get_tax_rate($product_info['products_tax_class_id'])) . ')'; ?></td>
<?php       } else {
?>
<tr>
<td width="80%" valign="top">
<br>
<br><?php echo ' <span class="smallText3">' . $products_options_name['products_options_name'] . ':' . '</span>' .'<br>(' . $products_options_name['products_options_comment'] . ')'; ?></td>
<?php        }
?>
              <td width="76%" align="left" valign="top"><br>
<br>
<div style="width:430px">
&nbsp;<?php echo $tmp_html;  ?></div></td>
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
<td width="80%" valign="top">
<br>
<br><?php echo ' <span class="smallText3">' . $products_options_name['products_options_name'] . ':' . '</span>' . '<br>(' . $products_options_name['products_options_comment'] . ')'; ?></td>
              <td width="76%" align="left" valign="top"><br>
<br><?php echo $tmp_html;  ?></td>
            </tr>
<?php
            break;
          case PRODUCTS_OPTIONS_TYPE_CHECKBOX:
            //CLR 030714 Add logic for checkboxes
            $products_attribs_query = tep_db_query("select distinct patrib.options_values_id, patrib.options_values_price, patrib.price_prefix from " . TABLE_PRODUCTS_ATTRIBUTES . " patrib where patrib.products_id='" . (int)$HTTP_GET_VARS['products_id'] . "' and patrib.options_id = '" . $products_options_name['products_options_id'] . "'");
            $products_attribs_array = tep_db_fetch_array($products_attribs_query);
            echo '<tr><td class="main">' . '<br><br>' . ' <span class="smallText3">'.$products_options_name['products_options_name'] . ':' . '</span>' . '<br>(' . $products_options_name['products_options_comment'] . ')' . '</td><td class="main">'. '<br><br>';
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
<td width="80%" valign="top">
<br>
<br>
<?php echo ' <span class="smallText3">' . $products_options_name['products_options_name'] . ':' . ' </span>' . '<br>(' . $products_options_name['products_options_comment'] . ')'; ?><br>
<br></td>
              <td width="80%" align="left" valign="top"><br>
<br><br>&nbsp;<?php 
                // BOF Option Type Feature
                //echo tep_draw_pull_down_menu('id[' . $products_options_name['products_options_id'] . ']', $products_options_array, $selected_attribute);
                echo tep_draw_pull_down_menu('id[' . $products_options_name['products_options_id'] . ']', $products_options_array,   $selected_attribute);
                // EOF Option Type Feature
                ?>
<?php
        // BOF Option Type Feature
        } // ends the switch clause
        // EOF Option Type Feature
      } 
	  ?>
   <?php
    }
?>

<?php
		//Minimum quantity code
	if (tep_not_null($product_info['minorder']) ) {
      echo '<br><span class="pr_text">'.TEXT_PEDIDO_MINIMO.'&nbsp;:&nbsp;</span><span class="pr1_text">' .$product_info['minorder'] . '</span>'.'<br><br style="line-height:14px;">' .'<span class="pr_text">'.TEXT_PACKS.'&nbsp;:&nbsp;</span>&nbsp;'.TEXT_DE.'&nbsp;<span class="pr1_text">' . $product_info['minorder'] . '</span>&nbsp;'.TEXT_EN.'&nbsp;<span class="pr1_text">' . $product_info['minorder'] . '<br><br style="line-height:7px;">';
    }
	//End: Minimum quantity code
	?>
   <br></br> <br></br>
   
  <span class="pr_text"><?php echo TEXT_PRODUCT_PRICE; ?></span>&nbsp;&nbsp;&nbsp;<span class="pr1_text"><?=$products_price?><br></br></span>
  

<?php echo TEXT_ENTER_QUANTITY .'&nbsp;:&nbsp;&nbsp;&nbsp;'. tep_draw_input_field('quantity','', 'size="6"'); ?></div><br>
<br style="line-height:7px;">
<?php echo tep_draw_hidden_field('products_id', $product_info['products_id']) . tep_image_submit('button_in_cart.gif', IMAGE_BUTTON_IN_CART); ?>&nbsp;&nbsp;
<?php echo '<a href="' . tep_href_link(FILENAME_PRODUCT_REVIEWS, tep_get_all_get_params()) . '">' . tep_image_button('button_reviews.gif', IMAGE_BUTTON_REVIEWS) . '</a>'; ?>
<br><br>



<!-- AddThis Button BEGIN -->
<!-- LINK PARA LLAMAR A FACEBOOK Y DEMAS REDES SOCIALES
<div class="addthis_toolbox addthis_default_style">
<a href="http://www.addthis.com/bookmark.php?v=250&amp;username=xa-4c599fc05e197650" class="addthis_button_compact">Share</a>
<span class="addthis_separator">|</span>
<a class="addthis_button_facebook"></a>
<a class="addthis_button_myspace"></a>
<a class="addthis_button_google"></a>
<a class="addthis_button_twitter"></a>
</div> 
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#username=xa-4c599fc05e197650"></script>-->
<!-- AddThis Button END -->
</td>
</tr>
<tr>

        <td><?php echo tep_draw_separator('pixel_trans.gif', '20%', '10'); ?></td>
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
        <td><?php echo tep_draw_separator('pixel_trans.gif', '20%', '10'); ?></td>
      </tr>
<?php
    }

    if (tep_not_null($product_info['products_url'])) {
?>
      <tr>
        <td class="main"><?php echo sprintf(TEXT_MORE_INFORMATION, tep_href_link(FILENAME_REDIRECT, 'action=url&goto=' . urlencode($product_info['products_url']), 'NONSSL', true, false)); ?></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '20%', '10'); ?></td>
      </tr>
<?php
    }

    if ($product_info['products_date_available'] > date('Y-m-d H:i:s')) {
?>
      <tr>
        <td align="center" class="smallText">
		<?php echo sprintf(TEXT_DATE_AVAILABLE, tep_date_long($product_info['products_date_available'])); ?></td>
      </tr>
<?php
    } else {  
?>
<?php
    }
?>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '20%', '10'); ?></td>
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
	</form>
<!-- body_eof //-->

					  </td>
					  </tr>
					 </table>
                    </td></tr></table>

  <div style="margin-left:10px">              
<?
	// EXTRA IMAGES
if (DISPLAY_EXTRA_IMAGES == 'true'){
if ($product_check['total'] >= 1) {
include (DIR_WS_INCLUDES . 'products_extra_images.php');
}
} 
// EXTRAIMGES HASTA AQUI?>
</div>

	  </tr>
							</table>							
						</td>
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