<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php echo HTML_PARAMS; ?> xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

        
        
        <span class="t2"><?php echo TEXT_PRODUCT_DESCRIPTION; ?></span> 
                                    <div class="h_5"><?php echo tep_draw_separator('spacer.gif', '1', '1'); ?></div>
                                    <br><br>
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

<br>
<?php
    $products_attributes_query = tep_db_query("select count(*) as total from " . TABLE_PRODUCTS_OPTIONS . " popt, " . TABLE_PRODUCTS_ATTRIBUTES . " patrib where patrib.products_id='" . (int)$HTTP_GET_VARS['products_id'] . "' and patrib.options_id = popt.products_options_id and popt.language_id = '" . (int)$languages_id . "'");
    $products_attributes = tep_db_fetch_array($products_attributes_query);
    if ($products_attributes['total'] > 0) {
?>
          <table border="0" cellspacing="0" cellpadding="0" width="100%">
          <tr>
<td colspan="2">
        <span class="t2"><?php echo TEXT_PRODUCT_OPTIONS; ?></span>
<div class="h_5"><?php echo tep_draw_separator('spacer.gif', '1', '1'); ?></div><br>
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
<td width="24%" valign="top">
<br>
<br><?php echo $products_options_name['products_options_name'] . ':'; ?></td>
              <td width="76%" align="left" valign="top"><br>
<br><?php echo $tmp_html;  ?></td>
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
<td width="24%" valign="top">
<br>
<br><?php echo ' <span class="smallText3">' . $products_options_name['products_options_name'] . ':' . '</span>' . '<br>(' . $products_options_name['products_options_comment'] . ' ' . $products_attribs_array['price_prefix'] . $currencies->display_price($products_attribs_array['options_values_price'], tep_get_tax_rate($product_info['products_tax_class_id'])) . ')'; ?></td>
<?php       } else {
?>
<tr>
<td width="24%" valign="top">
<br>
<br><?php echo ' <span class="smallText3">' . $products_options_name['products_options_name'] . ':' . '</span>' .'<br>(' . $products_options_name['products_options_comment'] . ')'; ?></td>
<?php        }
?>
              <td width="76%" align="left" valign="top"><br>
<br>
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
<td width="24%" valign="top">
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
<td width="24%" valign="top">
<br>
<br>
<?php echo ' <span class="smallText3">' . $products_options_name['products_options_name'] . ':' . ' </span>' . '<br>(' . $products_options_name['products_options_comment'] . ')'; ?><br>
<br>
</td>
              <td width="76%" align="left" valign="top"><br>
<br>&nbsp;<?php 
                // BOF Option Type Feature
                //echo tep_draw_pull_down_menu('id[' . $products_options_name['products_options_id'] . ']', $products_options_array, $selected_attribute);
                echo tep_draw_pull_down_menu('id[' . $products_options_name['products_options_id'] . ']', $products_options_array,   $selected_attribute);
                // EOF Option Type Feature
                ?></td>
            </tr>
<?php
        // BOF Option Type Feature
        } // ends the switch clause
        // EOF Option Type Feature
      } 
	  ?>
          </table>
</body>
</html>
