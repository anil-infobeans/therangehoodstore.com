<?php


  require('includes/application_top.php');

  require('includes/classes/http_client.php');

// if the customer is not logged on, redirect them to the login page
  if (!tep_session_is_registered('customer_id')) {
    $navigation->set_snapshot();
    tep_redirect(tep_href_link(FILENAME_LOGIN, '', 'SSL'));
  }

  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_GV_SEND);

  if (($HTTP_POST_VARS['back_x']) || ($HTTP_POST_VARS['back_y'])) {
    $HTTP_GET_VARS['action'] = '';
  }
  if ($HTTP_GET_VARS['action'] == 'send') {
    $error = false;
    if (!tep_validate_email(trim($HTTP_POST_VARS['email']))) {
      $error = true;
      $error_email = ERROR_ENTRY_EMAIL_ADDRESS_CHECK;
    }
    $gv_query = tep_db_query("select amount from " . TABLE_COUPON_GV_CUSTOMER . " where customer_id = '" . $customer_id . "'");
    $gv_result = tep_db_fetch_array($gv_query);
    $customer_amount = $gv_result['amount'];
    $gv_amount = trim($HTTP_POST_VARS['amount']);
    if (ereg('[^0-9/.]', $gv_amount)) {
      $error = true;
      $error_amount = ERROR_ENTRY_AMOUNT_CHECK; 
    }
    if ($gv_amount>$customer_amount || $gv_amount == 0) {
      $error = true; 
      $error_amount = ERROR_ENTRY_AMOUNT_CHECK; 
    } 
  }
  if ($HTTP_GET_VARS['action'] == 'process') {
  
  	  $coupon_search_query=tep_db_query("select * from coupons where coupon_code='".$HTTP_GET_VARS['gv_no']."'");
      $coupon_search=tep_db_fetch_array($coupon_search_query);

      $coupon_update_query=tep_db_query("insert into coupon_redeem_track (coupon_id, customer_id, redeem_date, redeem_ip) values ('" . $coupon_search['coupon_id'] . "', '".$customer_id."' ,now(), '')");
	 
	 //creas el nuevo codigo 
    $id1 = create_coupon_code($mail['customers_email_address']);
	
	
	
    $gv_query = tep_db_query("select amount from " . TABLE_COUPON_GV_CUSTOMER . " where customer_id='".$customer_id."'");
    $gv_result=tep_db_fetch_array($gv_query);
    $new_amount=$gv_result['amount']-$HTTP_POST_VARS['amount'];
    if ($new_amount<0) {
      $error= true;
      $error_amount = ERROR_ENTRY_AMOUNT_CHECK; 
      $HTTP_GET_VARS['action'] = 'send';
    } else {
      $gv_query=tep_db_query("update " . TABLE_COUPON_GV_CUSTOMER . " set amount = '" . $new_amount . "' where customer_id = '" . $customer_id . "'");
	  
	  


	  
	  
	  
	  
	  
      $gv_query=tep_db_query("select customers_firstname, customers_lastname from " . TABLE_CUSTOMERS . " where customers_id = '" . $customer_id . "'");
      $gv_customer=tep_db_fetch_array($gv_query);
      $gv_query=tep_db_query("insert into " . TABLE_COUPONS . " (coupon_type, coupon_code, date_created, coupon_amount) values ('G', '" . $id1 . "', NOW(), '" . $HTTP_POST_VARS['amount'] . "')");
      $insert_id = mysql_insert_id();
      $gv_query=tep_db_query("insert into " . TABLE_COUPON_EMAIL_TRACK . " (coupon_id, customer_id_sent, sent_firstname, sent_lastname, emailed_to, date_sent) values ('" . $insert_id . "' ,'" . $customer_id . "', '" . addslashes($gv_customer['customers_firstname']) . "', '" . addslashes($gv_customer['customers_lastname']) . "', '" . $HTTP_POST_VARS['email'] . "', now())");

      $gv_email = STORE_NAME . "\n" .
              EMAIL_SEPARATOR . "\n" .
              sprintf(EMAIL_GV_TEXT_HEADER, $currencies->format($HTTP_POST_VARS['amount'])) . "\n" .
              EMAIL_SEPARATOR . "\n" . 
              sprintf(EMAIL_GV_FROM, stripslashes($HTTP_POST_VARS['send_name'])) . "\n";
      if (isset($HTTP_POST_VARS['message'])) {
        $gv_email .= EMAIL_GV_MESSAGE . "\n";
        if (isset($HTTP_POST_VARS['to_name'])) {
          $gv_email .= sprintf(EMAIL_GV_SEND_TO, stripslashes($HTTP_POST_VARS['to_name'])) . "\n\n";
        }
        $gv_email .= stripslashes($HTTP_POST_VARS['message']) . "\n\n";
      } 
      $gv_email .= sprintf(EMAIL_GV_REDEEM, $id1) . "\n\n";
      $gv_email .= EMAIL_GV_LINK . ' ' . "<a HREF='" . 
      tep_href_link(FILENAME_GV_REDEEM, 'gv_no=' . $id1,'NONSSL',false) . "'>" . tep_href_link(FILENAME_GV_REDEEM, 'gv_no=' .       $id1,'NONSSL',false) . "</a>\n" .
      $gv_email .= "\n\n";  
      $gv_email .= EMAIL_GV_FIXED_FOOTER . "\n\n";
      $gv_email .= EMAIL_GV_SHOP_FOOTER . "\n\n";;
      $gv_email_subject = sprintf(EMAIL_GV_TEXT_SUBJECT, stripslashes($HTTP_POST_VARS['send_name']));             
      tep_mail('', $HTTP_POST_VARS['email'], $gv_email_subject, nl2br($gv_email), STORE_OWNER, STORE_OWNER_EMAIL_ADDRESS, '');
    }
  }
  $breadcrumb->add(NAVBAR_TITLE);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php echo HTML_PARAMS; ?> xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title><?php echo TITLE; ?></title>
<base href="<?php echo (getenv('HTTPS') == 'on' ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<link rel="stylesheet" type="text/css" href="stylesheet2.css">
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
								<td class="h_r_text" width="100%" height="100%" valign="top">
									<?=HEADING_TITLE?></td>
                                <td align="right"></td>
							  </tr>
							</table>
							<br style="line-height:18px;">
							<table width="100%" cellspacing="0" cellpadding="0" border="0">
							  <tr>
								<td width="100%" height="100%" valign="top">

	<table cellpadding="0" cellspacing="0" border="0" width="100%">
      <tr>
        <td><table border="0" width="100%" cellspacing="0" cellpadding="2">





<?php
  if ($HTTP_GET_VARS['action'] == 'process') {
?>
      <tr>
        <td class="main"><?php echo tep_image(DIR_WS_IMAGES . 'table_background_man_on_board.png', HEADING_TITLE, '0', '0', 'align="left"') . TEXT_SUCCESS; ?><br><br><?php echo 'gv '.$id1; ?></td>
      </tr>
      <tr>
        <td align="right"><br><a href="<?php echo tep_href_link(FILENAME_DEFAULT, '', 'NONSSL'); ?>"><?php echo tep_image_button('button_continue.gif', IMAGE_BUTTON_CONTINUE); ?></a></td>
      </tr>
<?php
  }  
  if ($HTTP_GET_VARS['action'] == 'send' && !$error) {
    // validate entries
      $gv_amount = (double) $gv_amount;
      $gv_query = tep_db_query("select customers_firstname, customers_lastname from " . TABLE_CUSTOMERS . " where customers_id = '" . $customer_id . "'");
      $gv_result = tep_db_fetch_array($gv_query);
      $send_name = $gv_result['customers_firstname'] . ' ' . $gv_result['customers_lastname'];
?>
      <tr>
        <td><form action="<?php echo tep_href_link(FILENAME_GV_SEND, 'action=process&gv_no='.$HTTP_GET_VARS['gv_no'].'', 'NONSSL'); ?>" method="post"><table border="0" width="100%" cellspacing="0" cellpadding="2">
          <tr>
            <td class="main"><?php echo sprintf(MAIN_MESSAGE, $currencies->format($HTTP_POST_VARS['amount']), stripslashes($HTTP_POST_VARS['to_name']), $HTTP_POST_VARS['email'], stripslashes($HTTP_POST_VARS['to_name']), $currencies->format($HTTP_POST_VARS['amount']), $send_name); ?></td>
          </tr>
<?php
      if ($HTTP_POST_VARS['message']) {
?>
           <tr>
            <td class="main"><?php echo sprintf(PERSONAL_MESSAGE, $gv_result['customers_firstname']); ?></td>
          </tr>
          <tr>
            <td class="main"><?php echo stripslashes($HTTP_POST_VARS['message']); ?></td>
          </tr>
<?php
      }

      echo tep_draw_hidden_field('send_name', $send_name) . tep_draw_hidden_field('to_name', stripslashes($HTTP_POST_VARS['to_name'])) . tep_draw_hidden_field('email', $HTTP_POST_VARS['email']) . tep_draw_hidden_field('amount', $gv_amount) . tep_draw_hidden_field('message', stripslashes($HTTP_POST_VARS['message']));
?>
          <tr>
            <td class="main"><?php echo '<a href="gv_send.php?gv_no='.$HTTP_GET_VARS['gv_no'].'">Back</a>'; ?></td>
            <td align="right"><br><?php echo tep_image_submit('button_send.gif', IMAGE_BUTTON_CONTINUE); ?></td>
          </tr>
        </table></form></td>
      </tr>
<?php
  } elseif ($HTTP_GET_VARS['action']=='' || $error) {
?>

<?php
 if (isset($HTTP_GET_VARS['gv_no'])) {
 
 $voucher_number=$HTTP_GET_VARS['gv_no'];
    $gv_query = tep_db_query("select c.coupon_id, c.coupon_amount from coupons c, coupon_email_track et where coupon_code = '" . addslashes($voucher_number) . "' and c.coupon_id = et.coupon_id");
    if (tep_db_num_rows($gv_query) >0) {
	$coupon = tep_db_fetch_array($gv_query);
	

	
	
 
 ?>
      <tr>
        <td class="main"><?php echo HEADING_TEXT; ?><br>
</td>
      </tr>
      <tr>
        <td>
        
        
<?php        
      $gv_query_find = tep_db_query("select * from coupon_redeem_track where coupon_id = '" . $coupon['coupon_id'] . "'");
	if (tep_db_num_rows($gv_query_find) == 0) {
	?>
    
    
    
    <form action="<?php echo tep_href_link(FILENAME_GV_SEND, 'action=send&gv_no='.$HTTP_GET_VARS['gv_no'].'', 'NONSSL'); ?>" method="post"><table border="0" width="100%" cellspacing="4" cellpadding="4">
          <tr>
            <td class="main" width="200"><?php echo ENTRY_NAME; ?></td>
            <td class="main">
            <?php echo tep_draw_input_field('to_name', stripslashes($HTTP_POST_VARS['to_name']));?></td>
          </tr>
          <tr>
            <td class="main"><?php echo ENTRY_EMAIL; ?></td>
			<td class="main">
			<?php echo tep_draw_input_field('email', $HTTP_POST_VARS['email']); if ($error) echo $error_email; ?></td>
          </tr>
          <tr>
            <td class="main"><?php echo ENTRY_AMOUNT; ?></td>
            <td class="main">
            <span class="pr_text"><?php echo "$".round($coupon['coupon_amount']);?></span><input name="amount" type="hidden" value="<?php echo round($coupon['coupon_amount']);?>"><input name="gv_no" type="hidden" value="<?php echo $HTTP_GET_VARS['gv_no'];?>">
            
            
			</td>
          </tr>
          <tr>
            <td class="main" valign="top"><?php echo ENTRY_MESSAGE; ?></td>
			<td class="main">
			<?php echo tep_draw_textarea_field('message', 'soft', 50, 15, stripslashes($HTTP_POST_VARS['message'])); ?>
            </td>
          </tr>
        </table>
        <table border="0" width="100%" cellspacing="0" cellpadding="2">
          <tr>
<?php
    $back = sizeof($navigation->path)-2;
?>
            <td class="main"><?php //echo '<a href="' . tep_href_link($navigation->path[$back]['page'], tep_array_to_string($navigation->path[$back]['get'], array('action')), $navigation->path[$back]['mode']) . '">' . tep_image_button('button_back.gif', IMAGE_BUTTON_BACK) . '</a>'; ?></td>
            <td class="main" align="right" ><?php echo tep_image_submit('button_continue.gif', IMAGE_BUTTON_CONTINUE, 'style="border:0px"'); ?></td>
          </tr>
        </table></form>
        
        
   <?php        
      } else {
	echo TEXT_INVALID_GV;    
      }
	?> 
        
        
        
        </td>
      </tr>
    <?php
  } }
?>
  
      
<?php
  }
?>
















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
                <td align="right"><?php //echo '<a href="' . tep_href_link(FILENAME_DEFAULT) . '">' . tep_image_button('button_continue.gif', IMAGE_BUTTON_CONTINUE) . '</a>'; ?></td>
                <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table>

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
<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>
<!-- footer_eof //-->
</body>
</html>
<?php require(DIR_WS_INCLUDES . 'application_bottom.php'); ?>