<?php


  require("includes/application_top.php");

  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_SHOPPING_CART);

  $breadcrumb->add(NAVBAR_TITLE, tep_href_link(FILENAME_SHOPPING_CART));

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php echo HTML_PARAMS; ?> xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title><?php echo TITLE; ?></title>
<base href="<?php echo (($request_type == 'SSL') ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<link rel="stylesheet" type="text/css" href="stylesheet2.css">
</head>
<body marginwidth="0" marginheight="0" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0">
<!-- header //-->
<?php require(DIR_WS_INCLUDES . 'header3.php'); ?>
<!-- header_eof //-->

<!-- body //-->

	  <tr>
		<td class="tdborde" valign="top" width="<?php echo BOX_WIDTH_1; ?>" height="100%"><?php require(DIR_WS_INCLUDES . 'column_left.php'); ?></td>
	   <td class="tdborde" valign="top" width="<?php echo BOX_WIDTH_2; ?>" >
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="height:100%" class="content">
			  <tr>
				<td width="100%" height="100%" valign="top">
					<table width="100%" style="height:100%" cellspacing="0" cellpadding="0" border="0" >
					  <tr>
						<td width="100%" height="100%" valign="top" style="background:url(images/r-t-dr.png) repeat-x; padding: 16px 11px 15px 19px">
							<table width="100%" style="height:22px" cellspacing="0" cellpadding="0" border="0">
							  <tr>
								<td width="25" height="100%" valign="top"></td>
								<td class="h_r_text" width="100%" height="100%" valign="top">
									<?=HEADING_TITLE?><br>
								</td>
								<td width="100%" height="100%" valign="top" style="background: url(images/t1-dr.gif) repeat-x top"></td>
							  </tr>
							</table>
							<br style="line-height:18px;">
							<table width="100%" cellspacing="0" cellpadding="0" border="0" >
							  <tr>
								<td width="100%" height="100%" valign="top">
									<br style="line-height:5px;">


<?php echo tep_draw_form('cart_quantity', tep_href_link(FILENAME_SHOPPING_CART, 'action=update_product')); ?>


		<table cellpadding="0" cellspacing="0" border="0" width="100%">
<?php
  if ($cart->count_contents() > 0) {
?>
      <tr>
        <td>
<?php
    $info_box_contents = array();
    $info_box_contents[0][] = array('align' => 'center',
                                    'params' => 'class="productListing-heading"',
                                    'text' => TABLE_HEADING_REMOVE);

    $info_box_contents[0][] = array('params' => 'class="productListing-heading"',
                                    'text' => TABLE_HEADING_PRODUCTS);

    $info_box_contents[0][] = array('align' => 'center',
                                    'params' => 'class="productListing-heading"',
                                    'text' => TABLE_HEADING_QUANTITY);

    $info_box_contents[0][] = array('align' => 'right',
                                    'params' => 'class="productListing-heading"',
                                    'text' => TABLE_HEADING_TOTAL);

    $any_out_of_stock = 0;
    $products = $cart->get_products();
    for ($i=0, $n=sizeof($products); $i<$n; $i++) {
		reset($products);
// Push all attributes information in an array
      if (isset($products[$i]['attributes']) && is_array($products[$i]['attributes'])) {
	    reset($products[$i]['attributes']);
		ksort($products[$i]['attributes']);
        while (list($option, $value) = each($products[$i]['attributes'])) {
// OTF contrib begins
//echo tep_draw_hidden_field('id[' . $products[$i]['id'] . '][' . $option . ']', $value);
// OTF contrib ends

          $attributes = tep_db_query("select popt.products_options_name, poval.products_options_values_name, pa.options_values_price, pa.price_prefix
                                      from " . TABLE_PRODUCTS_OPTIONS . " popt, " . TABLE_PRODUCTS_OPTIONS_VALUES . " poval, " . TABLE_PRODUCTS_ATTRIBUTES . " pa
                                      where pa.products_id = '" . $products[$i]['id'] . "'
                                       and pa.options_id = '" . $option . "'
                                       and pa.options_id = popt.products_options_id
                                       and pa.options_values_id = '" . $value . "'
                                       and pa.options_values_id = poval.products_options_values_id
                                       and popt.language_id = '" . $languages_id . "'
                                       and poval.language_id = '" . $languages_id . "'");
          $attributes_values = tep_db_fetch_array($attributes);
		            // OTF contrib begins
          if ($value == PRODUCTS_OPTIONS_VALUE_TEXT_ID) {                       
            
            $attr_value = $products[$i]['attributes_values'][$option] . 
              tep_draw_hidden_field('id[' . $products[$i]['id'] . '+++' .
              $i . '][' . TEXT_PREFIX . $option . ']',  
              $products[$i]['attributes_values'][$option]);
            $attr_name_sql_raw = 'SELECT po.products_options_name FROM ' .
              TABLE_PRODUCTS_OPTIONS . ' po, ' .
              TABLE_PRODUCTS_ATTRIBUTES . ' pa WHERE ' .
              ' pa.products_id="' . tep_get_prid($products[$i]['id']) . '" AND ' .
              ' pa.options_id="' . $option . '" AND ' .
              ' pa.options_id=po.products_options_id AND ' .
              ' po.language_id="' . $languages_id . '" ';
            $attr_name_sql = tep_db_query($attr_name_sql_raw);
            if ($arr = tep_db_fetch_array($attr_name_sql)) {
              $attr_name  = $arr['products_options_name'];
            }
            
          } else {
            
            
            $attr_value = $attributes_values['products_options_values_name'] . 
              tep_draw_hidden_field('id[' . $products[$i]['id'] . '+++' . 
              $i. '][' . $option . ']', $value);
            $attr_name  = $attributes_values['products_options_name'];
            
          }
          // OTF contrib ends

// OTF contrib begins
          //$products[$i][$option]['products_options_name'] = $attributes_values['products_options_name'];
          $products[$i][$option]['products_options_name'] = $attr_name;
          // OTF contrib ends
          $products[$i][$option]['options_values_id'] = $value;
          // OTF contrib begins
          //$products[$i][$option]['products_options_values_name'] = $attributes_values['products_options_values_name'];
          $products[$i][$option]['products_options_values_name'] = $attr_value ;
          // OTF contrib ends
          $products[$i][$option]['options_values_price'] = $attributes_values['options_values_price'];
          $products[$i][$option]['price_prefix'] = $attributes_values['price_prefix'];
        }
      }
    }

    
	
	
	                           
//inicio variables de producto_id y cantidades y precio cero antes de ejecutar el for
	$idsfinal = 0;
	$quantityidsinicial = 0;
	$priceidsinicial = 0;
//inicio variables de producto_id y cantidades y precio cero antes de ejecutar el for



	
    for ($i=0, $n=sizeof($products); $i<$n; $i++) {
		reset($products);
      if (($i/2) == floor($i/2)) {
        $info_box_contents[] = array('params' => 'class="productListing-even"');
      } else {
        $info_box_contents[] = array('params' => 'class="productListing-odd"');
      }

      $cur_row = sizeof($info_box_contents) - 1;

	  

	  
      $info_box_contents[$cur_row][] = array('align' => 'center',
                                             'params' => 'class="productListing-data" valign="top"',
                                             'text' => tep_draw_checkbox_field('cart_delete[]', $products[$i]['id']));
											 
      $products_name = '<a href="' . tep_href_link(FILENAME_PRODUCT_INFO, 'products_id=' . $products[$i]['id']) . '">' . tep_image(DIR_WS_IMAGES . $products[$i]['image'], $products[$i]['name'], SMALL_IMAGE_WIDTH, SMALL_IMAGE_HEIGHT,'style="border:1px solid #DCDEDD;margin:4px;"') . '</a>';


	//Minimum quantity code - gastoncarozi

	global $sppc_customer_group_id;
     if(!tep_session_is_registered('sppc_customer_group_id')) {
     $customer_group_id = '0';
     } else {
      $customer_group_id = $sppc_customer_group_id;
     }
   
      $min_order_query = tep_db_query("select minorder as min_quant FROM " . TABLE_PRODUCTS_GROUPS . " where (products_id = '".(int)$products[$i]['id']."') and (customers_group_id = '" . $customer_group_id ."')");
	while ($min_order = tep_db_fetch_array($min_order_query))  {

	  if ($products[$i]['quantity'] < $min_order['min_quant'] ) {
			$products[$i]['min_quant']=$min_order['min_quant'];
	  }
	  
	  	// multiplo solo quitar este bloque de multiplo si no quieres packs
	else {
	
	
	   while ($products[$i]['quantity'] % $min_order['min_quant'] > 0){
	   
	   $products[$i]['quantity'] = $products[$i]['quantity'] + 1;
	   $cart_notice2 = sprintf(PACK_ORDER_NOTICE, $products[$i]["name"], $min_order['min_quant']);
	   }
	   if ($products[$i]['quantity'] % $min_order['min_quant'] == 0){
		$cart->add_cart($products[$i]['id'],$products[$i]['quantity'],$products[$i]['attributes']);
		}
		
	}
// multiplo solo quitar este bloque de multiplo si no quieres packs 
	
	}

	 if ($products[$i]['quantity'] < $products[$i]['min_quant'] ) {
	 	$products[$i]['quantity']=$products[$i]['min_quant'];
		$cart->add_cart($products[$i]['id'],$products[$i]['quantity'],$products[$i]['attributes']);
		$cart_notice = sprintf(MINIMUM_ORDER_NOTICE, $products[$i]["name"], $products[$i]["min_quant"]);
	}	 
	//End Minimum quantity code -gastoncarozi
	
	
      if (STOCK_CHECK == 'true') {
        $stock_check = tep_check_stock($products[$i]['id'], $products[$i]['quantity']);
        if (tep_not_null($stock_check)) {
          $any_out_of_stock = 1;

          $products_name .= $stock_check;
        }
      }

      if (isset($products[$i]['attributes']) && is_array($products[$i]['attributes'])) {
        reset($products[$i]['attributes']);
		ksort($products[$i]['attributes']);
        while (list($option, $value) = each($products[$i]['attributes'])) {
//          $products_name .= '<br><small><i> - ' . $products[$i][$option]['products_options_name'] . ' ' . $products[$i][$option]['products_options_values_name'] . '</i></small>';
        }
      }
	  
	
	
      $info_box_contents[$cur_row][] = array('params' => 'class="productListing-data" style="text-align:center;"',
                                             'text' => $products_name);

      $info_box_contents[$cur_row][] = array('align' => 'center',
                                             'params' => 'class="productListing-data" valign="top"  style="text-align:center;"',
                                             'text' => tep_draw_input_field('cart_quantity[]', $products[$i]['quantity'], 'size="4"') . tep_draw_hidden_field('products_id[]', $products[$i]['id']). tep_draw_hidden_field('free[]', $products[$i]['free']) );

      $info_box_contents[$cur_row][] = array('align' => 'right',
                                             'params' => 'class="productListing-data" valign="top"  style="text-align:center;"',
                                             'text' => $currencies->display_price($products[$i]['final_price'], tep_get_tax_rate($products[$i]['tax_class_id']), $products[$i]['quantity']));
    }
?>
                                  
							<table width="100%" style="height:383px" cellspacing="0" cellpadding="0" border="0">
							  <tr>
								<td width="100%" height="100%" valign="top" style="padding-left:11px; padding-right:19px">
									<table class="h1_r_text_shoppong" width="100%" style="height:28px" cellspacing="0" cellpadding="0" border="0">
									  <tr>
										<td width="18%" height="100%">
											<font style="font-size:12px"><strong><?=TABLE_HEADING_REMOVE?></strong></font><br>
										</td>
										<td align="center" width="46%" height="100%"><font style="font-size:12px"><strong><?=TABLE_HEADING_PRODUCTS?></strong></font></td>
										<td align="center" width="20%" height="100%"><font style="font-size:12px"><strong><?=TABLE_HEADING_QUANTITY?></strong></font></td>
										<td align="center" width="16%" height="100%"><font style="font-size:12px"><strong><?=TABLE_HEADING_TOTAL?></strong></font></td>
									  </tr>
									</table>
									<div class="h_l1"><img alt="" src="images/spacer.gif" width="1" height="1"></div>
<br style="line-height:12px;">























<?

	for ($i=1;$i<count($info_box_contents);$i++) {
		$rowline=$info_box_contents[$i];
		
		//le doy la idinicial por cada for que procese
		$idsinicial = $products[$i-1]['id'];
		//le doy la idinicial por cada for que procese
		
		$product_query = tep_db_query("select products_description  from " . TABLE_PRODUCTS_DESCRIPTION . " where products_id = '" . (int)$products[$i-1]['id'] . "' and language_id = '" . (int)$languages_id . "'");
		$product = tep_db_fetch_array($product_query);
		$description=$product['products_description'];
		
?>										
                                        
                                          <?php
                                          //pregunto antes de contar si es el mismo produc_id al ultimo produc_id ejectuado
										  if($idsinicial == $idsfinal){
										$cuentaids = $cuentaids + 1;
										 } else {
										 $cuentaids = 0;
										 }
										  //pregunto antes de contar si es el mismo produc_id al ultimo produc_id ejectuado
										 ?>   
                                         
                                         
                                         <!-- CREO DIV QUE DESAPARECERA MEDIANTE JAVA SCRIPT CUANDO SALGA EL PRODUCTO 4 //-->
									<DIV ID="<?=$products[$i-1]['id'].'_'.$cuentaids;?>">
                                    
                                    
									<table class="h1_r_text" width="100%" style="height:112px" cellspacing="0" cellpadding="0" border="0">
									  <tr>
										<td width="18%" height="100%" valign="top" >
											<img alt="" src="images/spacer.gif" width="17" height="1"><?=$rowline[0]['text']?>
											<input type="hidden" name="products_id[]" value="<?=$products[$i-1]['id']?>"/><br><?php //echo $products[$i-1]['id'];?>

										</td>
										<td width="46%" height="100%" align="center" ><?=$rowline[1]['text']?><br></td>
										<td width="20%" height="100%" align="center" valign="top" >
                                        
                                        <?php if($idsinicial == $idsfinal){ ?>
                                            <input type="text" name="cart_quantity[]" class="input1" value="<?=$quantityidsinicial;?>">
                                            <br>
                                            <?php
											
											if (floor($quantityidsinicial/3)==1) {
											 echo '+ '.floor($quantityidsinicial/3).' free';
                                            }
											if (floor($quantityidsinicial/3)>1) {
											 echo '+ '.floor($quantityidsinicial/3).' free';                                       		
											}?>
                                        
                                        <?php } else { ?>
                                            <input type="text" name="cart_quantity[]" class="input1" value="<?=$products[$i-1]['quantity']?>">
                                       	<?php } ?>
                                        

                                        
                                        </td>
										<td width="16%" height="100%" align="center" valign="top" >
                                        
                                        <font class="pr1_text">
                                        
										<?php if($idsinicial == $idsfinal){ ?>
											<?=$priceidsinicial;?>
                                        <?php } else { ?>
											<?=$rowline[3]['text'];?>
                                        <?php } ?>
                                       
                                                                               
                                        </font>
                                        
                                        
                                        </td>
									  </tr>
								  </table>
                                  	<br style="line-height:15px;">
									<div class="h_l1"><img alt="" src="images/spacer.gif" width="1" height="1"></div>
                                  </DIV>
                                  
                                  <!-- CREO DIV QUE DESAPARECERA MEDIANTE JAVA SCRIPT CUANDO SALGA EL PRODUCTO 4 //-->
                                  
                                  
                                  <!-- JAVASCRIPT QUE OCULTA LA ANOMALIA DE MOSTRAR EL PRODUCTO CON 0 PRECIOS Y QUE PODIA MODIFICAR Y DAR UN ERROR A AL ACTUALIZAR EL CARRITO ELIMINANDO PRODUCTO//-->
                                  <?php if($idsinicial == $idsfinal){ ?>
                                  <script language="javascript">
									divshopping = document.getElementById('<?php echo $products[$i-1]['id'].'_0';?>');
									if(divshopping) {
									divshopping.style.display='none';
									}
								  </script>
                                  <?php } ?>
                                   <!-- JAVASCRIPT QUE OCULTA LA ANOMALIA DE MOSTRAR EL PRODUCTO CON 0 PRECIOS Y QUE PODIA MODIFICAR Y DAR UN ERROR A AL ACTUALIZAR EL CARRITO ELIMINANDO PRODUCTO//-->                                 
                                  
                                  
                                  
                                  
                                   <!-- CARGA DE VALORES FINALES AL FINALES DEL FOR PARA COMPARAR CON LOS VARLORES DE INICIO DEL SIGUIENTE PRODUCTO//-->                                 			<?php $priceidsinicial = $rowline[3]['text'];?>
                                            <?php $quantityidsinicial = $products[$i-1]['quantity'];?>
                                            <?php $idsfinal = $products[$i-1]['id'];?>
                                            <?php $cuentaids;?>
                                   <!-- CARGA DE VALORES FINALES AL FINALES DEL FOR PARA COMPARAR CON LOS VARLORES DE INICIO DEL SIGUIENTE PRODUCTO//-->  

									<br style="line-height:12px;">
<? } ?>
















									<div class="h1_r_text" align="right"><font><strong><?php echo SUB_TITLE_SUB_TOTAL; ?></strong></font>&nbsp; <font class="pr1_text"><?php echo $currencies->format($cart->show_total()); ?></font></div>
									<p><br style="line-height:10px;">
									  
									  
                                      <?php echo tep_draw_separator('spacer.gif', '17', '1'); ?>
                                      <?php echo tep_image_submit('button_update_cart.gif', IMAGE_BUTTON_UPDATE_CART,'style="border:0px"'); ?>
                                      <?php echo tep_draw_separator('spacer.gif', '13', '1'); ?>
                                      <?php
    $back = sizeof($navigation->path)-2;
    if (isset($navigation->path[$back])) {
?>
                                      <?php echo '<a href="' . tep_href_link($navigation->path[$back]['page'], tep_array_to_string($navigation->path[$back]['get'], array('action')), $navigation->path[$back]['mode']) . '">' . tep_image_button('button_continue_shopping.gif', IMAGE_BUTTON_CONTINUE_SHOPPING) . '</a>'; ?><?php echo tep_draw_separator('spacer.gif', '13', '1'); ?>
                                      <?php
    }
?>
                                      <?php echo '<a href="' . tep_href_link(FILENAME_CHECKOUT_SHIPPING, '', 'SSL') . '">' . tep_image_button('button_checkout.gif', IMAGE_BUTTON_CHECKOUT) . '</a>'; ?>                                  </p></td>
							  </tr>
							</table>

        </td>
      </tr>

      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
<?php
    if ($any_out_of_stock == 1) {
      if (STOCK_ALLOW_CHECKOUT == 'true') {
?>
      <tr>
        <td class="stockWarning" align="center"><br><?php echo OUT_OF_STOCK_CAN_CHECKOUT; ?></td>
      </tr>
<?php
      } else {
?>
      <tr>
        <td class="stockWarning" align="center"><br><?php echo OUT_OF_STOCK_CANT_CHECKOUT; ?></td>
      </tr>
<?php
      }
    }
		//Minimum quantity code
    if ($cart_notice) {
?>
      <tr>
        <td class="stockWarning" align="center"><br><?php echo $cart_notice; ?></td>
      </tr>
<?php
      }
	//End Minimum quantity code
	
			//Minimum quantity code
    if ($cart_notice2) {
?>
      <tr>
        <td class="stockWarning" align="center"><br><?php echo $cart_notice2; ?></td>
      </tr>
<?php
      }
	//End Minimum quantity code
?>
<?php
  } else {
?>
      <tr>
        <td align="center" class="main" ><?php new infoBox(array(array('text' => TEXT_CART_EMPTY))); ?></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
      <tr>
        <td><table border="0" width="100%" cellspacing="1" cellpadding="2">
          <tr>
            <td><table border="0" width="100%" cellspacing="0" cellpadding="2">
              <tr>
                <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                <td align="right" class="main"><?php echo '<a href="' . tep_href_link(FILENAME_DEFAULT) . '">' . tep_image_button('button_continue.gif', IMAGE_BUTTON_CONTINUE) . '</a>'; ?></td>
                <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td> 
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
<?php
  }
?>
    </table></form>         <?php
    // ** GOOGLE CHECKOUT **
    // Checks if the Google Checkout payment module has been enabled and if so 
    // includes gcheckout.php to add the Checkout button to the page 
    if (defined('MODULE_PAYMENT_GOOGLECHECKOUT_STATUS') && MODULE_PAYMENT_GOOGLECHECKOUT_STATUS == 'True') {
      include_once('googlecheckout/gcheckout.php');
    } 
    // ** END GOOGLE CHECKOUT **
    ?>

<!-- body_eof //-->

								</td>
								<td width="20" height="100%" valign="top"><?php echo tep_draw_separator('spacer.gif', '20', '1'); ?></td>
							  </tr>
							</table>							
						</td>
					  </tr>
					  <tr>
                      <!-- gastoncarozi , link del carrito de compras que debia salir en el header, que al no actualizar el precio, se tuvo que crear un include header2 sin el link carrito y tuvo que ponerse aqui para que salga el verdadero contenido del carrito en el header mediante un div flotante que carga en la posicion que le he dado sujeto a la tabla //-->
						<td width="100%" height="16" valign="top" >

<div  class="c_text2" style="position:absolute; z-index:201; border:1px solid #CCCCCC; padding:10px;  top:62px; float:right; margin-left:555px;">
    
            <a href="account.php">Mi Cuenta</a>
            
            &nbsp;|&nbsp;
            
            <? if (tep_session_is_registered('customer_id')) { 
            ?><a href="<?=tep_href_link('logoff.php')?>"><?=HEADER_TITLE_LOGOFF?></a><? } else 
            { ?><a href="<?=tep_href_link('login.php')?>"><?=HEADER_TITLE_LOGIN?></a><? } ?>
            
            &nbsp;|&nbsp;
              
             <a href="<?=tep_href_link('shopping_cart.php')?>"><?=BOX_HEADING_SHOPPING_CART?>&nbsp;<?=$cart->count_contents()?> <?=BOX_SHOPPING_CART_EMPTY?></a>

</div>
               

                        
                        </td>
                      <!-- gastoncarozi , link del carrito de compras que debia salir en el header, que al no actualizar el precio, se tuvo que crear un include header2 sin el link carrito y tuvo que ponerse aqui para que salga el verdadero contenido del carrito en el header mediante un div flotante que carga en la posicion que le he dado sujeto a la tabla //-->
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