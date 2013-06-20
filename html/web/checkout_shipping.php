<?php


  require('includes/application_top.php');
  require('includes/classes/http_client.php');

// if the customer is not logged on, redirect them to the login page
  if (!tep_session_is_registered('customer_id')) {
    $navigation->set_snapshot();
    tep_redirect(tep_href_link(FILENAME_LOGIN, '', 'SSL'));
  }

// if there is nothing in the customers cart, redirect them to the shopping cart page
  if ($cart->count_contents() < 1) {
    tep_redirect(tep_href_link(FILENAME_SHOPPING_CART));
  }

// if no shipping destination address was selected, use the customers own address as default
  if (!tep_session_is_registered('sendto')) {
    tep_session_register('sendto');
    $sendto = $customer_default_address_id;
  } else {
// verify the selected shipping address
    $check_address_query = tep_db_query("select count(*) as total from " . TABLE_ADDRESS_BOOK . " where customers_id = '" . (int)$customer_id . "' and address_book_id = '" . (int)$sendto . "'");
    $check_address = tep_db_fetch_array($check_address_query);

    if ($check_address['total'] != '1') {
      $sendto = $customer_default_address_id;
      if (tep_session_is_registered('shipping')) tep_session_unregister('shipping');
    }
  }

  require(DIR_WS_CLASSES . 'order.php');
  $order = new order;

// register a random ID in the session to check throughout the checkout procedure
// against alterations in the shopping cart contents
  if (!tep_session_is_registered('cartID')) tep_session_register('cartID');
  $cartID = $cart->cartID;

// if the order contains only virtual products, forward the customer to the billing page as
// a shipping address is not needed
$products = $cart->get_products();
$nproducts = sizeof($products);

//el producto 2617 es el gift certificate..nunca cambiarle de id
if($nproducts == 1){
   if($products[0]['id'] == 2617){
	  if ($order->content_type == 'virtual') {
		if (!tep_session_is_registered('shipping')) tep_session_register('shipping');
		$shipping = false;
		$sendto = false;
		tep_redirect(tep_href_link(FILENAME_CHECKOUT_PAYMENT, '', 'SSL'));
	  }
  }
}

  $total_weight = $cart->show_weight();
  $total_count = $cart->count_contents();

// load all enabled shipping modules
  require(DIR_WS_CLASSES . 'shipping.php');
  $shipping_modules = new shipping;

  if ( defined('MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING') && (MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING == 'true') ) {
    $pass = false;

    switch (MODULE_ORDER_TOTAL_SHIPPING_DESTINATION) {
      case 'national':
        if ($order->delivery['country_id'] == STORE_COUNTRY) {
          $pass = true;
        }
        break;
      case 'international':
        if ($order->delivery['country_id'] != STORE_COUNTRY) {
          $pass = true;
        }
        break;
      case 'both':
        $pass = true;
        break;
    }

    $free_shipping = false;
    if ( ($pass == true) && ($order->info['total'] >= MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER) ) {
      $free_shipping = true;

      include(DIR_WS_LANGUAGES . $language . '/modules/order_total/ot_shipping.php');
    }
  } else {
    $free_shipping = false;
  }

// process the selected shipping method
  if ( isset($HTTP_POST_VARS['action']) && ($HTTP_POST_VARS['action'] == 'process') ) {
    if (!tep_session_is_registered('comments')) tep_session_register('comments');
    if (tep_not_null($HTTP_POST_VARS['comments'])) {
      $comments = tep_db_prepare_input($HTTP_POST_VARS['comments']);
    }

    if (!tep_session_is_registered('shipping')) tep_session_register('shipping');

    if ( (tep_count_shipping_modules() > 0) || ($free_shipping == true) ) {
      if ( (isset($HTTP_POST_VARS['shipping'])) && (strpos($HTTP_POST_VARS['shipping'], '_')) ) {
        $shipping = $HTTP_POST_VARS['shipping'];

        list($module, $method) = explode('_', $shipping);
        if ( is_object($$module) || ($shipping == 'free_free') ) {
          if ($shipping == 'free_free') {
            $quote[0]['methods'][0]['title'] = FREE_SHIPPING_TITLE;
            $quote[0]['methods'][0]['cost'] = '0';
          } else {
            $quote = $shipping_modules->quote($method, $module);
          }
          if (isset($quote['error'])) {
            tep_session_unregister('shipping');
          } else {
            if ( (isset($quote[0]['methods'][0]['title'])) && (isset($quote[0]['methods'][0]['cost'])) ) {
              $shipping = array('id' => $shipping,
                                'title' => (($free_shipping == true) ?  $quote[0]['methods'][0]['title'] : $quote[0]['module'] . ' (' . $quote[0]['methods'][0]['title'] . ')'),
                                'cost' => $quote[0]['methods'][0]['cost']);

              tep_redirect(tep_href_link(FILENAME_CHECKOUT_PAYMENT, '', 'SSL'));
            }
          }
        } else {
          tep_session_unregister('shipping');
        }
      }
    } else {
      $shipping = false;
                
      tep_redirect(tep_href_link(FILENAME_CHECKOUT_PAYMENT, '', 'SSL'));
    }    
  }


			//--Gift Certificate Modifications START
			if (tep_not_null($HTTP_POST_VARS['gc_code'])){
				$order->info['gc_code']=$HTTP_POST_VARS['gc_code'];
				$gc_code=$HTTP_POST_VARS['gc_code'];
				$gift_certificates->info['gc_code']=$HTTP_POST_VARS['gc_code'];
				if (!tep_session_is_registered('gc_code')) tep_session_register('gc_code');
			}

			if(!is_null($HTTP_POST_VARS['gc_code'])){
				$gc_query = tep_db_query("SELECT amount_purchased-amount_redeemed as current_value, amount_redeemed FROM " . TABLE_GIFT_CERTIFICATES . " where gc_code='" . $gc_code . "'");
				$gcvalue=tep_db_fetch_array($gc_query);
				$order->info['gc']=$gcvalue['current_value'];
				$order->info['gc_code']=$HTTP_POST_VARS['gc_code'];
				$order->info['gc_redeemed']=$gcvalue['amount_redeemed'];
				$gc=$gcvalue['current_value'];
				$gc_redeemed=tep_round($gcvalue['amount_redeemed'],2);
				tep_session_register('gc');
				tep_session_register('gc_redeemed');
				if($order->info['total'] - $gc <= 0.00){
					$payment="Gift Certificate";
					tep_session_register('payment');
				}
			}
			//--Gift Certificate Modifications END
			
			
// get all available shipping quotes
  $quotes = $shipping_modules->quote();

// if no shipping method has been selected, automatically select the cheapest method.
// if the modules status was changed when none were available, to save on implementing
// a javascript force-selection method, also automatically select the cheapest shipping
// method if more than one module is now enabled
  if ( !tep_session_is_registered('shipping') || ( tep_session_is_registered('shipping') && ($shipping == false) && (tep_count_shipping_modules() > 1) ) ) $shipping = $shipping_modules->cheapest();

  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_CHECKOUT_SHIPPING);

  $breadcrumb->add(NAVBAR_TITLE_1, tep_href_link(FILENAME_CHECKOUT_SHIPPING, '', 'SSL'));
  $breadcrumb->add(NAVBAR_TITLE_2, tep_href_link(FILENAME_CHECKOUT_SHIPPING, '', 'SSL'));
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php echo HTML_PARAMS; ?> xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title><?php echo TITLE; ?></title>
<base href="<?php echo (($request_type == 'SSL') ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<link rel="stylesheet" type="text/css" href="stylesheet2.css">
<script language="javascript"><!--
var selected;

function selectRowEffect(object, buttonSelect) {
  if (!selected) {
    if (document.getElementById) {
      selected = document.getElementById('defaultSelected');
    } else {
      selected = document.all['defaultSelected'];
    }
  }

  if (selected) selected.className = 'moduleRow';
  object.className = 'moduleRowSelected';
  selected = object;

// one button is not an array
  if (document.checkout_address.shipping[0]) {
    document.checkout_address.shipping[buttonSelect].checked=true;
  } else {
    document.checkout_address.shipping.checked=true;
  }
}

function rowOverEffect(object) {
  if (object.className == 'moduleRow') object.className = 'moduleRowOver';
}

function rowOutEffect(object) {
  if (object.className == 'moduleRowOver') object.className = 'moduleRow';
}
//--></script>
</head>
<body marginwidth="0" marginheight="0" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0">
<!-- header //-->
<?php require(DIR_WS_INCLUDES . 'header.php'); ?>
<!-- header_eof //-->

<!-- body //-->



            
            
            
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
							  <tr>
								<td width="25" height="100%" valign="top"></td>
								<td class="h_r_text" height="100%" valign="top" width="100%">
									<strong><?=HEADING_TITLE?></strong><br>
								</td>
								<td width="100%" height="100%" valign="top" style="background: url(images/t1-dr.gif) repeat-x top"></td>
							  </tr>
							</table>
							<table width="100%" cellspacing="0" cellpadding="0" border="0">
							  <tr>
								<td width="100%" height="100%" valign="top">
									<br style="line-height:18px;">

<?php echo tep_draw_form('checkout_address', tep_href_link(FILENAME_CHECKOUT_SHIPPING, '', 'SSL')) . tep_draw_hidden_field('action', 'process'); ?>

		<table cellpadding="0" cellspacing="0" border="0" width="100%" >
      <tr>
        <td><table border="0" width="100%" cellspacing="0" cellpadding="2">
        <!--Gift Certificate Modifications START-->
			<?php
			//check if all products are gift certificates
			$allgc=0;
			$allprod=0;
			$prodno=0;
			for ($i=0, $n=sizeof($order->products); $i<$n; $i++) {
				if(ereg('Gift Certificate', $order->products[$i]['name'])){
					$allgc++;
					$gc_prod=$order->products[$i]['name'];
					$gc_price=$order->products[$i]['final_price'];
					tep_session_register('gc_prod');
					tep_session_register('gc_price');
					$prodno=$i;
					tep_session_register('prodno');
				}
				$allprod++;
			}
			if($allgc==$allprod){
				$free_shipping = true;
				include(DIR_WS_LANGUAGES . $language . '/modules/order_total/ot_shipping.php');
				$order->info['shipping_method'] = "Free Shipping";
				$shipping_caption=RECIPIENTS_ADDRESS;
				$shipping_caption1=RECIPIENTS_ADDRESS;
				$message_caption=GC_MESSAGE;
				$gc_yes=1;
			}else{
				$free_shipping = false;
				$shipping_caption=TABLE_HEADING_SHIPPING_ADDRESS;
				$shipping_caption1=TITLE_SHIPPING_ADDRESS;
				$message_caption=TABLE_HEADING_COMMENTS;
				$gc_yes=0;
			}
			tep_session_register('gc_yes');
			?>
			<!--Gift Certificate Modifications END-->
            
          <tr>
            <td class="main"><b><?php echo $shipping_caption; ?></b></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table border="0" width="100%" cellspacing="1" cellpadding="2">
          <tr>
            <td><table border="0" width="100%" cellspacing="0" cellpadding="2" class="bor">
              <tr>
                <td><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td> 
                <td class="main" width="50%" valign="top"><?php echo TEXT_CHOOSE_SHIPPING_DESTINATION . '<br><br><a href="' . tep_href_link(FILENAME_CHECKOUT_SHIPPING_ADDRESS, '', 'SSL') . '">' . tep_image_button('button_change_address.gif', IMAGE_BUTTON_CHANGE_ADDRESS) . '</a>'; ?></td>
                <td align="right" width="50%" valign="top"><table border="0" cellspacing="0" cellpadding="2">
                  <tr>
                    <td class="main" align="center" valign="top"><?php echo '<b>' . $shipping_caption1 . '</b><br>' . tep_image(DIR_WS_IMAGES . 'arrow_south_east.gif'); ?></td>
                    <td><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td> 
                    <td class="main" valign="top"><?php echo tep_address_label($customer_id, $sendto, true, ' ', '<br>'); ?></td>
                    <td><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td> 
                  </tr>
                </table></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
<?php
  if (tep_count_shipping_modules() > 0) {
?>
      <tr>
        <td><table border="0" width="100%" cellspacing="0" cellpadding="2">
          <tr>
            <td class="main"><b><?php echo TABLE_HEADING_SHIPPING_METHOD; ?></b></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table border="0" width="100%" cellspacing="1" cellpadding="2">
          <tr>
            <td><table border="0" width="100%" cellspacing="0" cellpadding="2" class="bor">
<?php
    if (sizeof($quotes) > 1 && sizeof($quotes[0]) > 1) {
?>
              <tr>
                <td><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                <td class="main" width="50%" valign="top"><?php echo TEXT_CHOOSE_SHIPPING_METHOD; ?></td>
                <td class="main" width="50%" valign="top" align="right"><?php echo '<b>' . TITLE_PLEASE_SELECT . '</b><br>' . tep_image(DIR_WS_IMAGES . 'arrow_east_south.gif'); ?></td>
                <td><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
              </tr>
<?php
    } elseif ($free_shipping == false) {
?>
              <tr>
                <td><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                <td class="main" width="100%" colspan="2"><?php echo TEXT_ENTER_SHIPPING_INFORMATION; ?></td>
                <td><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
              </tr>
<?php
    }

    if ($free_shipping == true) {
?>
              <tr>
                <td><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                <td colspan="2" width="100%"><table border="0" width="100%" cellspacing="0" cellpadding="2">
                  <tr>
                    <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                    <td class="main" colspan="3"><b><?php echo FREE_SHIPPING_TITLE; ?></b>&nbsp;<?php echo $quotes[$i]['icon']; ?></td>
                    <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                  </tr>
                  <tr id="defaultSelected" class="moduleRowSelected" onMouseOver="rowOverEffect(this)" onMouseOut="rowOutEffect(this)" onClick="selectRowEffect(this, 0)">
                    <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                    <td class="main" width="100%"><?php echo sprintf(FREE_SHIPPING_DESCRIPTION, $currencies->format(MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER)) . tep_draw_hidden_field('shipping', 'free_free'); ?></td>
                    <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                  </tr>
                </table></td>
                <td><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td> 
              </tr>
<?php
    } else {
      $radio_buttons = 0;
      for ($i=0, $n=sizeof($quotes); $i<$n; $i++) {
?>
              <tr>
                <td><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                <td colspan="2"><table border="0" width="100%" cellspacing="0" cellpadding="2">
                  <tr>
                    <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                    <td class="main" colspan="3"><b><?php echo $quotes[$i]['module']; ?></b>&nbsp;<?php if (isset($quotes[$i]['icon']) && tep_not_null($quotes[$i]['icon'])) { echo $quotes[$i]['icon']; } ?></td>
                    <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                  </tr>
<?php
        if (isset($quotes[$i]['error'])) {
?>
                  <tr>
                    <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                    <td class="main" colspan="3"><?php echo $quotes[$i]['error']; ?></td>
                    <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                  </tr>
<?php
        } else {
          for ($j=0, $n2=sizeof($quotes[$i]['methods']); $j<$n2; $j++) {
// set the radio button to be checked if it is the method chosen
            $checked = (($quotes[$i]['id'] . '_' . $quotes[$i]['methods'][$j]['id'] == $shipping['id']) ? true : false);

            if ( ($checked == true) || ($n == 1 && $n2 == 1) ) {
              echo '                  <tr id="defaultSelected" class="moduleRowSelected" onmouseover="rowOverEffect(this)" onmouseout="rowOutEffect(this)" onclick="selectRowEffect(this, ' . $radio_buttons . ')">' . "\n";
            } else {
              echo '                  <tr class="moduleRow" onmouseover="rowOverEffect(this)" onmouseout="rowOutEffect(this)" onclick="selectRowEffect(this, ' . $radio_buttons . ')">' . "\n";
            }
?>
                    <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
<?php
        $search = array(' regimark', ' tradmrk');
        $replace = array('<sup>&reg;</sup>', '<sup>&trade;</sup>');
?> 
                    <td class="main" width="75%"><?php echo str_replace($search, $replace, $quotes[$i]['methods'][$j]['title']); ?></td>


<?php
            if ( ($n > 1) || ($n2 > 1) ) {
?>
                    <td class="main"><?php echo $currencies->format(tep_add_tax($quotes[$i]['methods'][$j]['cost'], (isset($quotes[$i]['tax']) ? $quotes[$i]['tax'] : 0))); ?></td>
                    <td class="main" align="right"><?php echo tep_draw_radio_field('shipping', $quotes[$i]['id'] . '_' . $quotes[$i]['methods'][$j]['id'], $checked); ?></td>
<?php
            } else {
?>
                    <td class="main" align="right" colspan="2"><?php echo $currencies->format(tep_add_tax($quotes[$i]['methods'][$j]['cost'], $quotes[$i]['tax'])) . tep_draw_hidden_field('shipping', $quotes[$i]['id'] . '_' . $quotes[$i]['methods'][$j]['id']); ?></td>
<?php
            }
?>
                    <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                  </tr>
<?php
            $radio_buttons++;
          }
        }
?>
                </table></td>
                <td><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td> 
              </tr>
<?php
      }
    }
?>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
<?php
  }
?>

      <tr>
        <td><table border="0" width="100%" cellspacing="1" cellpadding="2" class="infoBox">
          <tr class="infoBoxContents">
            <td><table border="0" width="100%" cellspacing="0" cellpadding="2">
              <tr>
                <td>
                <div style="background-color:#FFEA95; padding:20px;">
                <b><?php echo "HAVE A GIFT CERTIFICATE CODE?"; ?></b><br>
only one code may be used per order<br>
<br>

				<input name="comments" type="text" value="<?php echo $comments ?>" style="font-size:20px; line-height:20px;">
                </div>
                </td>
              </tr>
            </table></td>
          </tr>
        </table></td>
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
                <td class="main"><?php echo '<b>' . TITLE_CONTINUE_CHECKOUT_PROCEDURE . '</b><br>' . TEXT_CONTINUE_CHECKOUT_PROCEDURE; ?></td>
                <td class="main" align="right"><?php echo tep_image_submit('button_continue.gif', IMAGE_BUTTON_CONTINUE); ?></td>
                <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
      <tr>
        <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
          <tr>
            <td width="25%"><table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td width="50%" align="right"><?php echo tep_image(DIR_WS_IMAGES . 'checkout_bullet.gif'); ?></td>
                <td width="50%"><?php echo tep_draw_separator('pixel_silver.gif', '100%', '1'); ?></td>
              </tr>
            </table></td>
            <td width="25%"><?php echo tep_draw_separator('pixel_silver.gif', '100%', '1'); ?></td>
            <td width="25%"><?php echo tep_draw_separator('pixel_silver.gif', '100%', '1'); ?></td>
            <td width="25%"><table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td width="50%"><?php echo tep_draw_separator('pixel_silver.gif', '100%', '1'); ?></td>
                <td width="50%"><?php echo tep_draw_separator('pixel_silver.gif', '1', '5'); ?></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td align="center" width="25%" class="checkoutBarCurrent"><?php echo CHECKOUT_BAR_DELIVERY; ?></td>
            <td align="center" width="25%" class="checkoutBarTo"><?php echo CHECKOUT_BAR_PAYMENT; ?></td>
            <td align="center" width="25%" class="checkoutBarTo"><?php echo CHECKOUT_BAR_CONFIRMATION; ?></td>
            <td align="center" width="25%" class="checkoutBarTo"><?php echo CHECKOUT_BAR_FINISHED; ?></td>
          </tr>
        </table></td>
      </tr>
    </table></form><br/>

<!-- body_eof //-->


            

								</td>
								<td width="20" height="100%" valign="top"><?php echo tep_draw_separator('spacer.gif', '20', '1'); ?></td>
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
<?php echo $shipping_weight;?>
<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>
<!-- footer_eof //-->
</body>
</html>
<?php require(DIR_WS_INCLUDES . 'application_bottom.php'); ?>