<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.js"></script>
<script src="Scripts/html5placeholder.jquery.js"></script>
  <script>
    $(function(){
      $(':input[placeholder]').placeholder();
    });
  </script>
<?php

// check if the 'install' directory exists, and warn of its existence
  if (WARN_INSTALL_EXISTENCE == 'true') {
    if (file_exists(dirname($HTTP_SERVER_VARS['SCRIPT_FILENAME']) . '/install')) {
      $messageStack->add('header', WARNING_INSTALL_DIRECTORY_EXISTS, 'warning');
    }
  }

// check if the configure.php file is writeable
  if (WARN_CONFIG_WRITEABLE == 'true') {
    if ( (file_exists(dirname($HTTP_SERVER_VARS['SCRIPT_FILENAME']) . '/includes/configure.php')) && (is_writeable(dirname($HTTP_SERVER_VARS['SCRIPT_FILENAME']) . '/includes/configure.php')) ) {
      $messageStack->add('header', WARNING_CONFIG_FILE_WRITEABLE, 'warning');
    }
  }

// check if the session folder is writeable
  if (WARN_SESSION_DIRECTORY_NOT_WRITEABLE == 'true') {
    if (STORE_SESSIONS == '') {
      if (!is_dir(tep_session_save_path())) {
        $messageStack->add('header', WARNING_SESSION_DIRECTORY_NON_EXISTENT, 'warning');
      } elseif (!is_writeable(tep_session_save_path())) {
        $messageStack->add('header', WARNING_SESSION_DIRECTORY_NOT_WRITEABLE, 'warning');
      }
    }
  }

// check session.auto_start is disabled
  if ( (function_exists('ini_get')) && (WARN_SESSION_AUTO_START == 'true') ) {
    if (ini_get('session.auto_start') == '1') {
      $messageStack->add('header', WARNING_SESSION_AUTO_START, 'warning');
    }
  }

  if ( (WARN_DOWNLOAD_DIRECTORY_NOT_READABLE == 'true') && (DOWNLOAD_ENABLED == 'true') ) {
    if (!is_dir(DIR_FS_DOWNLOAD)) {
      $messageStack->add('header', WARNING_DOWNLOAD_DIRECTORY_NON_EXISTENT, 'warning');
    }
  }
 
  if ($messageStack->size('header') > 0) {
    echo $messageStack->output('header');
  }
?>

<table width="<?php echo BOX_TOTAL; ?>" border="0" cellspacing="0" cellpadding="0" align="center">
  <tr>
    <td colspan="2" class="tdborde" height="512" valign="top">
    
<div style="width:<?php echo BOX_TOTAL; ?>px; position:absolute; z-index:200;">
    
           <table border="0" cellspacing="0" cellpadding="0" align="center" >
            <tr>
            <td width="<?php echo BOX_TOTAL-610; ?>" height="95">
            <a href="<?php echo HTTP_SERVER;?>"><img src="images/logotransparente.png" alt="<?php echo HTTP_COOKIE_DOMAIN;?>"/></a>
            </td>
            <td width="610" valign="bottom" >
            
            <div class="c_text2" style="border:1px solid #CCCCCC; padding:5px; float:right; margin-bottom:5px;">
            <form name="search" action="<?PHP echo HTTP_SERVER;?>/advanced_search_result.php" method="get" >
            <table cellpadding="0" cellspacing="0" border="0">
            <tr>
            <td valign="top"> 
			<input name="keywords" type="text" style=" border:0px; background-color:#FFFFFF; color:#666666; font-family:Tahoma; font-size:11px;" size="30" placeholder="Buscar"/>
            </td>
            <td width="5"></td>
            <td valign="top">
			<input type="image" src="<?php echo tep_output_string(DIR_WS_LANGUAGES . $language . '/images/buttons/go.gif');?>" border="0" alt="">
            </td>
            </tr>
            </table>
			</form>
			</div>
            <div style="clear:both"></div>
            
            <div class="c_text2" style="border:1px solid #CCCCCC; padding:10px; float:right">
            
            <a href="account.php">Mi Cuenta</a>
            
			&nbsp;|&nbsp;
            
            <? if (tep_session_is_registered('customer_id')) { 
            ?><a href="<?=tep_href_link('logoff.php')?>"><?=HEADER_TITLE_LOGOFF?></a><? } else 
            { ?><a href="<?=tep_href_link('login.php')?>"><?=HEADER_TITLE_LOGIN?></a><? } ?>
            
            &nbsp;|&nbsp;
              
             <a href="<?=tep_href_link('shopping_cart.php')?>"><?=BOX_HEADING_SHOPPING_CART?>&nbsp;<?=$cart->count_contents()?> <?=BOX_SHOPPING_CART_EMPTY?></a>

            
            </div>
            
            </td>
            </tr>
            </table>

</div>


<div style="width:<?php echo BOX_TOTAL; ?>px; height:48px;position:absolute; z-index:4003;   margin-top:101px;">
<?php include('126/headeroscommerce_1.php'); ?> 
</div> 


<div style="z-index:4000; position:absolute; margin-top:143px">
<?php include('rotador/index2.php'); ?>
</div> 


<div style="z-index:4001; position:absolute; margin-top:305px; margin-left:380px">
<a href="create_account.php"><?php echo tep_image_button("letreroprecios.png");?></a>
</div>


<div style="z-index:4002; position:absolute; margin-top:475px; margin-left:10px">
<img src="images/cards.png" />
</div> 


<div style="z-index:4003; position:absolute; margin-top:100px; margin-left:842px;">
<? if (tep_session_is_registered('customer_id')) { 

//para poner el nombre del cliente
$account_query = tep_db_query("select customers_gender, customers_firstname, customers_lastname, customers_dob, customers_email_address, customers_telephone, customers_fax, customers_group_id from " . TABLE_CUSTOMERS . " where customers_id = '" . (int)$customer_id . "'");
  if ($account = tep_db_fetch_array($account_query)) {
// gastoncarozi
$filtro = $account['customers_group_id'];
}
	$existing_customers_query = tep_db_query("select customers_group_id, customers_group_name from " . TABLE_CUSTOMERS_GROUPS . " order by customers_group_id ");
	while ($existing_customers = tep_db_fetch_array($existing_customers_query)) {
		          $existing_customers_list[] = array('id' => $existing_customers['customers_group_id'], 'text' => $existing_customers['customers_group_name']);
                }
				
	$customers_group_query = tep_db_query("select customers_group_name from " . TABLE_CUSTOMERS_GROUPS . " where customers_group_id = '". $filtro . "'");
	if ($customers_group = tep_db_fetch_array($customers_group_query)) {
	$customer_group_name = $customers_group['customers_group_name'];
}

//require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_ACCOUNT);
//gastoncarozi
//para poner el nombre del cliente

?>
<? //echo '<div style="margin-top:20px; background-color:#000000">Bienvenido&nbsp;<a href="account.php">'.$account['customers_firstname'].'&nbsp;'.$account['customers_lastname'].'</a></div>';?>

<? } else { ?>

<? require('includes/boxes/loginbox.php'); ?>

<? } ?></span>
</div>

</td>
</tr>  
