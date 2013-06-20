<?php
  require('includes/application_top.php');

  $pages_name = $HTTP_GET_VARS["page"];
  $page_query = tep_db_query("select pd.pages_title, pd.pages_body, p.pages_id, p.pages_name, p.pages_image, p.pages_status, p.sort_order from " . TABLE_PAGES . " p, " . TABLE_PAGES_DESCRIPTION . " pd where p.pages_name = '" . $pages_name . "' and p.pages_id = pd.pages_id and pd.language_id = '" . (int)$languages_id . "'");
  $page = tep_db_fetch_array($page_query);
  define('NAVBAR_TITLE', $page['pages_title']);
  define('HEADING_TITLE', $page['pages_title']);
  define('TEXT_INFORMATION', $page['pages_body']); 
  define('PAGES_IMAGE', $page["pages_image"]);  
  $breadcrumb->add(NAVBAR_TITLE, tep_href_link('pages.php?page='.$pages_name, '', 'NONSSL'));
?>

<?php require_once('Connections/wa_coneccion.php'); ?>
<?php require_once('includes/languages/'.$language.'/main.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;

  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

  switch ($theType) {
    case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;    
    case "long":
    case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
    case "double":
      $theValue = ($theValue != "") ? "'" . doubleval($theValue) . "'" : "NULL";
      break;
    case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
    case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
  }
  return $theValue;
}
}
?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php echo HTML_PARAMS; ?> xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title><?php echo TITLE; ?></title>
<base href="<?php echo (getenv('HTTPS') == 'on' ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<link rel="stylesheet" type="text/css" href="stylesheet2.css">
<?php require("includes/google.php"); ?>
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
									<?php echo TEXTO43;?></td>
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
            <td class="main">
            
            
            
            
            
    <table border="0" cellspacing="0" cellpadding="0" width="100%">

    <tr>
    <td>
    
    
<div class="main">

 <?php 

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form1")) {

//mysql_select_db($database_wa_coneccion, $wa_coneccion);
//$query_Recordset1_busca_idioma = "select * from language where name_language ='1'" ;
//$Recordset1_busca_idioma   = mysql_query($query_Recordset1_busca_idioma , $wa_coneccion) or die(mysql_error());
//$row_Recordset1_busca_idioma  = mysql_fetch_assoc($Recordset1_busca_idioma );
//$totalRows_Recordset1_busca_idioma  = mysql_num_rows($Recordset1_busca_idioma );
	
mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset1_busca = "select * from registered_user where email_registered_user ='".$_POST['email_user']."'" ;
$Recordset1_busca  = mysql_query($query_Recordset1_busca, $wa_coneccion) or die(mysql_error());
$row_Recordset1_busca = mysql_fetch_assoc($Recordset1_busca);
$totalRows_Recordset1_busca = mysql_num_rows($Recordset1_busca);

if (mysql_num_rows($Recordset1_busca)==0 ){

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form1")) {
  $insertSQL = sprintf("INSERT INTO registered_user (name_registered_user, email_registered_user, id_language) VALUES (%s, %s, %s)",
                       GetSQLValueString(customer, "text"),
                       GetSQLValueString($_POST['email_user'], "text"),
					   GetSQLValueString($_POST['RadioGroup1'], "text"));

  mysql_select_db($database_wa_coneccion, $wa_coneccion);
  $Result1 = mysql_query($insertSQL, $wa_coneccion) or die(mysql_error());


  			$idultimoregistered = mysql_insert_id();
  
  
			  //news
			mysql_select_db($database_wa_coneccion, $wa_coneccion);
			$query_Recordset1 = "SELECT id_news FROM news";
			$Recordset1 = mysql_query($query_Recordset1, $wa_coneccion) or die(mysql_error());
			$row_Recordset1 = mysql_fetch_assoc($Recordset1);
			$totalRows_Recordset1 = mysql_num_rows($Recordset1);
			
			if($totalRows_Recordset1>0){
			do {
			
				  $insertSQL = sprintf("INSERT INTO mensajes_enviados (id_news, id_events, id_promotion, id_registered_user) VALUES (%s, %s, %s, %s)",
									   GetSQLValueString($row_Recordset1['id_news'], "text"),
									   GetSQLValueString(0, "text"),
									   GetSQLValueString(0, "text"),
									   GetSQLValueString($idultimoregistered, "text"));
				
				  mysql_select_db($database_wa_coneccion, $wa_coneccion);
				  $Resultado_news_enviados = mysql_query($insertSQL, $wa_coneccion) or die(mysql_error());
				  
			} while ($row_Recordset1 = mysql_fetch_assoc($Recordset1));	  
			}   
			//events
			mysql_select_db($database_wa_coneccion, $wa_coneccion);
			$query_Recordset1 = "SELECT id_events FROM events";
			$Recordset1 = mysql_query($query_Recordset1, $wa_coneccion) or die(mysql_error());
			$row_Recordset1 = mysql_fetch_assoc($Recordset1);
			$totalRows_Recordset1 = mysql_num_rows($Recordset1);
			
			if($totalRows_Recordset1>0){
			do {	  
				  
				  $insertSQL = sprintf("INSERT INTO mensajes_enviados (id_news, id_events, id_promotion, id_registered_user) VALUES (%s, %s, %s, %s)",
									   GetSQLValueString(0, "text"),
									   GetSQLValueString($row_Recordset1['id_events'], "text"),
									   GetSQLValueString(0, "text"),
									   GetSQLValueString($idultimoregistered, "text"));
				
				  mysql_select_db($database_wa_coneccion, $wa_coneccion);
				  $Resultado_news_enviados = mysql_query($insertSQL, $wa_coneccion) or die(mysql_error());
				  
			} while ($row_Recordset1 = mysql_fetch_assoc($Recordset1));	  	  
			}  
			

}
echo TEXTO62;
}
else{
echo TEXTO63;
}}

 ?>




 <?php 

if ((isset($_POST["MM_insert_1"])) && ($_POST["MM_insert_1"] == "form1_1")) {

//mysql_select_db($database_wa_coneccion, $wa_coneccion);
//$query_Recordset1_busca_idioma = "select * from language where name_language ='1'" ;
//$Recordset1_busca_idioma   = mysql_query($query_Recordset1_busca_idioma , $wa_coneccion) or die(mysql_error());
//$row_Recordset1_busca_idioma  = mysql_fetch_assoc($Recordset1_busca_idioma );
//$totalRows_Recordset1_busca_idioma  = mysql_num_rows($Recordset1_busca_idioma );
	
mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset1_busca = "select * from registered_user2 where email_registered_user ='".$_POST['email_user']."'" ;
$Recordset1_busca  = mysql_query($query_Recordset1_busca, $wa_coneccion) or die(mysql_error());
$row_Recordset1_busca = mysql_fetch_assoc($Recordset1_busca);
$totalRows_Recordset1_busca = mysql_num_rows($Recordset1_busca);

if (mysql_num_rows($Recordset1_busca)==0 ){

if ((isset($_POST["MM_insert_1"])) && ($_POST["MM_insert_1"] == "form1_1")) {
  $insertSQL = sprintf("INSERT INTO registered_user2 (name_registered_user, email_registered_user, id_language) VALUES (%s, %s, %s)",
                       GetSQLValueString(customer, "text"),
                       GetSQLValueString($_POST['email_user'], "text"),
					   GetSQLValueString(1, "text"));

  mysql_select_db($database_wa_coneccion, $wa_coneccion);
  $Result1 = mysql_query($insertSQL, $wa_coneccion) or die(mysql_error());


  			$idultimoregistered = mysql_insert_id();
  
  
			  //news
			mysql_select_db($database_wa_coneccion, $wa_coneccion);
			$query_Recordset1 = "SELECT id_news FROM news";
			$Recordset1 = mysql_query($query_Recordset1, $wa_coneccion) or die(mysql_error());
			$row_Recordset1 = mysql_fetch_assoc($Recordset1);
			$totalRows_Recordset1 = mysql_num_rows($Recordset1);
			
			if($totalRows_Recordset1>0){
			do {
			
				  $insertSQL = sprintf("INSERT INTO mensajes_enviados2 (id_news, id_eventos, id_promotion, id_registered_user) VALUES (%s, %s, %s, %s)",
									   GetSQLValueString($row_Recordset1['id_news'], "text"),
									   GetSQLValueString(0, "text"),
									   GetSQLValueString(0, "text"),
									   GetSQLValueString($idultimoregistered, "text"));
				
				  mysql_select_db($database_wa_coneccion, $wa_coneccion);
				  $Resultado_news_enviados = mysql_query($insertSQL, $wa_coneccion) or die(mysql_error());
				  
			} while ($row_Recordset1 = mysql_fetch_assoc($Recordset1));	  
			}   

			
			//eventos
			mysql_select_db($database_wa_coneccion, $wa_coneccion);
			$query_Recordset1 = "SELECT id_eventos FROM eventos";
			$Recordset1 = mysql_query($query_Recordset1, $wa_coneccion) or die(mysql_error());
			$row_Recordset1 = mysql_fetch_assoc($Recordset1);
			$totalRows_Recordset1 = mysql_num_rows($Recordset1);
			
			if($totalRows_Recordset1>0){
			do {	  
				  
				  $insertSQL = sprintf("INSERT INTO mensajes_enviados2 (id_news, id_eventos, id_promotion, id_registered_user) VALUES (%s, %s, %s, %s)",
									   GetSQLValueString(0, "text"),
									   GetSQLValueString($row_Recordset1['id_eventos'], "text"),
									   GetSQLValueString(0, "text"),
									   GetSQLValueString($idultimoregistered, "text"));
				
				  mysql_select_db($database_wa_coneccion, $wa_coneccion);
				  $Resultado_news_enviados = mysql_query($insertSQL, $wa_coneccion) or die(mysql_error());
				  
			} while ($row_Recordset1 = mysql_fetch_assoc($Recordset1));	  	  
			}
			

}
echo TEXTO62;
}
else{
echo TEXTO63;
}}

 ?>
 
 
 
  
  <?php 

if ((isset($_POST["MM_insert2"])) && ($_POST["MM_insert2"] == "form2")) {
 

$emails=array();
 $h=0;
 mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset_email = "SELECT configuration_id, configuration_value  FROM configuration WHERE configuration_id=3";
$Recordset_email = mysql_query($query_Recordset_email, $wa_coneccion) or die(mysql_error());
$row_Recordset_email = mysql_fetch_assoc($Recordset_email);
$totalRows_Recordset_email = mysql_num_rows($Recordset_email);


do { 

$h=$h+1;

$emails[] = $row_Recordset_email['configuration_value'];

} while ($row_Recordset_email = mysql_fetch_assoc($Recordset_email));

$emailsok = implode($emails,",");

if(isset($_POST["name"]) && isset($_POST["email"])  && isset($_POST["telephone"]) && isset($_POST["message"]) ){
	$mymail = $emailsok;
	$subject = CONTACTFORM;
	$contenido .= FULLNAME.".........................:".$_POST["name"]."\n";
	$contenido .= EMAIL."............................:".$_POST["email"]."\n";
	$contenido .= TELEPHONE."........................:".$_POST["telephone"]."\n";
	$contenido .= ENQUIRY."..........................:".$_POST["message"]."\n\n";
	$header = "From:".$_POST["email"]."\nReply-To:".$_POST["email"]."\n";
	$header .= "X-Mailer:PHP/".phpversion()."\n";
	$header .= "Mime-Version: 1.0\n";
	$header .= "Content-Type: text/plain";
	mail($mymail, $subject, $contenido ,$header);
	echo TEXTO64;
}


mysql_free_result($Recordset_email);
}
    
 ?>


 <?php 

if ((isset($_POST["MM_insert3"])) && ($_POST["MM_insert3"] == "form3")) {
	

if ((isset($_POST["MM_insert3"])) && ($_POST["MM_insert3"] == "form3")) {
  $insertSQL = sprintf("INSERT INTO comments (name_comments, website_comment, email_comments, date_comments, check_comments, id_news, id_events, id_promotion, id) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)",
                       GetSQLValueString($_POST['name'], "text"),
                       GetSQLValueString($_POST['website'], "text"),
					   GetSQLValueString($_POST['email'], "text"),
					   GetSQLValueString(date("F j, Y, g:i a"), "text"),
					   GetSQLValueString(0, "text"),
					   GetSQLValueString($_POST['news_form'], "text"),
					   GetSQLValueString($_POST['events_form'], "text"),
					   GetSQLValueString($_POST['promotion_form'], "text"),
					   GetSQLValueString($_POST['pages_form'], "text"));
					   
				  
				  mysql_select_db($database_wa_coneccion, $wa_coneccion);
				  $Result1 = mysql_query($insertSQL, $wa_coneccion) or die(mysql_error());
				  $get_id_comments_ya = mysql_insert_id();
				  
				  
$insertSQL2 = sprintf("INSERT INTO comments_description (id_comments, text_comments, id_language) VALUES (%s, %s, %s)",
                       GetSQLValueString($get_id_comments_ya, "number"),
					   GetSQLValueString($_POST['message'], "text"),
					   GetSQLValueString($_POST['id_language_f'], "number"));
					   
				  mysql_select_db($database_wa_coneccion, $wa_coneccion);
				  $Result2 = mysql_query($insertSQL2, $wa_coneccion) or die(mysql_error());

}


$emails=array();
 $h=0;
 mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset_email = "SELECT configuration_id, configuration_value  FROM configuration WHERE configuration_id=3";
$Recordset_email = mysql_query($query_Recordset_email, $wa_coneccion) or die(mysql_error());
$row_Recordset_email = mysql_fetch_assoc($Recordset_email);
$totalRows_Recordset_email = mysql_num_rows($Recordset_email);


do { 

$h=$h+1;

$emails[] = $row_Recordset_email['configuration_value'];

} while ($row_Recordset_email = mysql_fetch_assoc($Recordset_email));

$emailsok = implode($emails,",");

if(isset($_POST["name"]) && isset($_POST["email"]) && isset($_POST["message"]) ){
	$mymail = $emailsok;
	$subject = CONTACTFORM;
	$contenido .= FULLNAME.".........................:".$_POST["name"]."\n";
	$contenido .= EMAIL."............................:".$_POST["email"]."\n";
	$contenido .= ENQUIRY."..........................:".$_POST["message"]."\n";
	$contenido .= INSTRUCCIONS.".....................:".TEXTO79." ".$url_website."/admin/admin_comments_detail.php?id_comments=".$get_id_comments_ya."\n\n";
	$header = "From:".$_POST["email"]."\nReply-To:".$_POST["email"]."\n";
	$header .= "X-Mailer:PHP/".phpversion()."\n";
	$header .= "Mime-Version: 1.0\n";
	$header .= "Content-Type: text/plain";
	mail($mymail, $subject, $contenido ,$header);
	echo TEXTO65;
}


mysql_free_result($Recordset_email);



}


 ?>
 

</div>
     

    
    </td>
    </tr>
    </table>            
            
            
            
            
            
            
            
            
            
            
            
            
            
            </td>
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
                <td align="right"><?php echo '<a href="' . tep_href_link(FILENAME_DEFAULT) . '">' . tep_image_button('button_continue.gif', IMAGE_BUTTON_CONTINUE) . '</a>'; ?></td>
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