<?php


  require('includes/application_top.php');

// if the customer is not logged on, redirect them to the login page
if (!tep_session_is_registered('customer_id')) {
$navigation->set_snapshot();
tep_redirect(tep_href_link(FILENAME_LOGIN, '', 'SSL'));
}



// check for a voucher number in the url
  if (isset($HTTP_GET_VARS['gv_no'])) {
    $error = true;
 $voucher_number=tep_db_prepare_input($HTTP_GET_VARS['gv_no']);
    $gv_query = tep_db_query("select c.coupon_id, c.coupon_amount from " . TABLE_COUPONS . " c, " . TABLE_COUPON_EMAIL_TRACK . " et where coupon_code = '" . addslashes($voucher_number) . "' and c.coupon_id = et.coupon_id");
    if (tep_db_num_rows($gv_query) >0) {
      $coupon = tep_db_fetch_array($gv_query);
      $redeem_query = tep_db_query("select coupon_id from ". TABLE_COUPON_REDEEM_TRACK . " where coupon_id = '" . $coupon['coupon_id'] . "'");
      if (tep_db_num_rows($redeem_query) == 0 ) {
// check for required session variables
        if (!tep_session_is_registered('gv_id')) {
          tep_session_register('gv_id');
        }
        $gv_id = $coupon['coupon_id'];
        $error = false;
      } else {
        $error = true;
      }
    }
  } else {
    tep_redirect(FILENAME_DEFAULT);
  }
  if ((!$error) && (tep_session_is_registered('customer_id'))) {
// Update redeem status
   // $gv_query = tep_db_query("insert into  " . TABLE_COUPON_REDEEM_TRACK . " (coupon_id, customer_id, redeem_date, redeem_ip) values ('" . $coupon['coupon_id'] . "', '" . $customer_id . "', now(),'" . $REMOTE_ADDR . "')");
   // $gv_update = tep_db_query("update " . TABLE_COUPONS . " set coupon_active = 'N' where coupon_id = '" . $coupon['coupon_id'] . "'");
  //  tep_gv_account_update($customer_id, $gv_id);
  //  tep_session_unregister('gv_id');   
  } 
  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_GV_REDEEM);



/* 
GV_REDEEM_EXPLOIT_FIX (GVREF)
---------------------------------------------
* case: guest accounts can exploit gift voucher sent using "Mail Gift Voucher" (admin area),
*       by sharing the code until somebody logs with a valid account
*       or successfully created new account.
*
* obv:  the session remains on user while served as a guest. 
*       The gift voucher can now be reused to all guest users until 
*       gift voucher is redeemed
* soln: before releasing the gift voucher, the user must login first
*       or asked to create an account.
*
*
* -- Frederick Ricaforte
*/


/*
* connected files:
*   /catalog/gv_redeem.php
*   /catalog/login.php
*   /catalog/create_account.php 
*   /catalog/includes/languages/english/gv_redeem.php
*
*/

/*******************************************************
**** gv_redeem.php  ************************************
*******************************************************/
  //before:  $redeem_query = tep_db_query("select coupon_id from ". TABLE_COUPON_REDEEM_TRACK . " where coupon_id = '" . $coupon['coupon_id'] . "'");
  //----
      // add:GVREF
      if ((tep_session_is_registered('customer_id')) && $voucher_not_redeemed) {
        $gv_id = $coupon['coupon_id'];
        $gv_query = tep_db_query("insert into  " . TABLE_COUPON_REDEEM_TRACK . " (coupon_id, customer_id, redeem_date, redeem_ip) values ('" . $coupon['coupon_id'] . "', '" . $customer_id . "', now(),'" . $REMOTE_ADDR . "')");
        $gv_update = tep_db_query("update " . TABLE_COUPONS . " set coupon_active = 'N' where coupon_id = '" . $coupon['coupon_id'] . "'");
        tep_gv_account_update($customer_id, $gv_id);
        $error = false;
      } elseif($voucher_not_redeemed) {
      // endof_add:GVREF

      // replace: GVREF
      /*
      if (tep_db_num_rows($redeem_query) == 0 ) {
        // check for required session variables
        if (!tep_session_is_registered('gv_id')) {
          tep_session_register('gv_id');
        }
        $gv_id = $coupon['coupon_id'];
        $error = false;
      } else {
        $error = true;
      }
      */

      // with: GVREF
        if (!tep_session_is_registered('floating_gv_code')) {
            tep_session_register('floating_gv_code');
          //}
          $floating_gv_code = $HTTP_GET_VARS['gv_no'];
          $gv_error_message = TEXT_NEEDS_TO_LOGIN;
      } else {
        $gv_error_message = TEXT_INVALID_GV;
     }
    } else {
      $gv_error_message = TEXT_INVALID_GV;
    }
    // endof_replace: GVREF

  // remove: GVREF
  /*
  if ((!$error) && (tep_session_is_registered('customer_id'))) {
    // Update redeem status
    $gv_query = tep_db_query("insert into  " . TABLE_COUPON_REDEEM_TRACK . " (coupon_id, customer_id, redeem_date, redeem_ip) values ('" . $coupon['coupon_id'] . "', '" . $customer_id . "', now(),'" . $REMOTE_ADDR . "')");
    $gv_update = tep_db_query("update " . TABLE_COUPONS . " set coupon_active = 'N' where coupon_id = '" . $coupon['coupon_id'] . "'");
    tep_gv_account_update($customer_id, $gv_id);
    tep_session_unregister('gv_id');   
  } 
  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_GV_REDEEM);
  */
  // endof_remove: GVREF

  // replace: GVREF
  // $message = TEXT_INVALID_GV;
  // with:
  $message = $gv_error_message;
  // endof_replace
  
  

/*******************************************************
****  login.php  ******************************************
*******************************************************/
  //before:    $cart->restore_contents();
  //---------
  //add these new codes:
        if (tep_session_is_registered('floating_gv_code')) {
          $gv_query = tep_db_query("SELECT c.coupon_id, c.coupon_amount, IF(rt.coupon_id>0, 'true', 'false') AS redeemed FROM ". TABLE_COUPONS ." c LEFT JOIN ". TABLE_COUPON_REDEEM_TRACK." rt USING(coupon_id), ". TABLE_COUPON_EMAIL_TRACK ." et WHERE c.coupon_code = '". $floating_gv_code ."' AND c.coupon_id = et.coupon_id");
          // check if coupon exist
          if (tep_db_num_rows($gv_query) >0) {
            $coupon = tep_db_fetch_array($gv_query);
            // check if coupon_id exist and coupon not redeemed
            if($coupon['coupon_id']>0 && $coupon['redeemed'] == 'false') {
              tep_session_unregister('floating_gv_code');
              $gv_query = tep_db_query("insert into  " . TABLE_COUPON_REDEEM_TRACK . " (coupon_id, customer_id, redeem_date, redeem_ip) values ('" . $coupon['coupon_id'] . "', '" . $customer_id . "', now(),'" . $REMOTE_ADDR . "')");
              $gv_update = tep_db_query("update " . TABLE_COUPONS . " set coupon_active = 'N' where coupon_id = '" . $coupon['coupon_id'] . "'");
              tep_gv_account_update($customer_id, $coupon['coupon_id']);
            }
          }
        }
//**********



/*******************************************************
****  create_account.php  ***********************************
*******************************************************/
  //before: tep_mail($name, $email_address, EMAIL_SUBJECT, $email_text, STORE_OWNER, STORE_OWNER_EMAIL_ADDRESS);
  //---------
  //add these:
      if (tep_session_is_registered('floating_gv_code')) {
        $gv_query = tep_db_query("SELECT c.coupon_id, c.coupon_amount, IF(rt.coupon_id>0, 'true', 'false') AS redeemed FROM ". TABLE_COUPONS ." c LEFT JOIN ". TABLE_COUPON_REDEEM_TRACK." rt USING(coupon_id), ". TABLE_COUPON_EMAIL_TRACK ." et WHERE c.coupon_code = '". $floating_gv_code ."' AND c.coupon_id = et.coupon_id");
        // check if coupon exist
        if (tep_db_num_rows($gv_query) >0) {
          $coupon = tep_db_fetch_array($gv_query);
          // check if coupon_id exist and coupon not redeemed
          if($coupon['coupon_id']>0 && $coupon['redeemed'] == 'false') {
              tep_session_unregister('floating_gv_code');
              $gv_query = tep_db_query("insert into  " . TABLE_COUPON_REDEEM_TRACK . " (coupon_id, customer_id, redeem_date, redeem_ip) values ('" . $coupon['coupon_id'] . "', '" . $customer_id . "', now(),'" . $REMOTE_ADDR . "')");
              $gv_update = tep_db_query("update " . TABLE_COUPONS . " set coupon_active = 'N' where coupon_id = '" . $coupon['coupon_id'] . "'");
              tep_gv_account_update($customer_id, $coupon['coupon_id']);
          }
        }
      }

/*******************************************************
****  /includes/languages/english/gv_redeem.php ******************
*******************************************************/
// add:
define('TEXT_NEEDS_TO_LOGIN', 'We are sorry but we are unable to process your Gift Voucher claim at this time. You need to login first or create an account with us, if you don\'t already have one, before you can claim your Gift Voucher. Please <a href="' . tep_href_link(FILENAME_LOGIN,'','SSL').'">click here to login or create an account.</a> ');

    

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
          <tr>
            <td class="main"><div align="justify">
			<?php //echo TEXT_INFORMATION; ?></div></td>
          </tr>
          <?php
// if we get here then either the url gv_no was not set or it was invalid
// so output a message.
  $message = sprintf(TEXT_VALID_GV, $currencies->format($coupon['coupon_amount']));
  if ($error) {
    $message = TEXT_INVALID_GV;
  }
?>
<tr>
<td class="main"><div align="justify" style="padding-bottom:10px;">
<?php echo $message; ?>

</div>


</td>
</tr>




<?php
if ($error) {} else {
?>
<tr>
<td>
<div style="padding:15px; background-color:#E7EAEB; text-align:center">
<?php echo TEXT_MSG_GV1;?>
</div>
</td>
</tr>
<tr>
<td style="font-size:20px; line-height:20px;">
<div style="margin-top:10px; margin-bottom:10px; background-color:#FFEA95; text-align:center; padding:40px;">
GIFT CERTIFICATE CODE<br>
<br>
<b><?PHP echo $HTTP_GET_VARS['gv_no'];?></b>
<br>
</div>
</td>
</tr>
<tr>
<td><br>
<div style="padding:15px; background-color:#E7EAEB; text-align:center">
<?php echo TEXT_MSG_GV2.'<br><br>';?>
<a href="gv_send.php?gv_no=<?PHP echo $HTTP_GET_VARS['gv_no'];?>"><img src="<?php echo tep_output_string(DIR_WS_LANGUAGES . $language . '/images/buttons/button_send.gif');?>"></a>
</div>

</td>
</tr>
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