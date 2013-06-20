<?php		

		session_start();

		if(!isset($_SESSION['MM_Username'])){		

			header('Location: login.php');			

		}

?>

<?php require_once($directoriocorrescript.'/Connections/wa_coneccion.php'); ?>

<?php require_once($directoriocorrescript.'/includes/application_top.php'); ?>

<?php require_once($directoriocorrescript.'/includes/configure.php');?>

<?php require_once($directoriocorrescript.'/includes/languages/english/main.php');?>



<?php  $url_website = HTTP_SERVER;?>

<?php

// Load the tNG classes

require_once($directoriocorrescript.'/includes/tng/tNG.inc.php');



// Make unified connection variable

$conn_wa_coneccion = new KT_connection($wa_coneccion, $database_wa_coneccion);



//Start Restrict Access To Page

//$restrict = new tNG_RestrictAccess($conn_wa_coneccion, "../");

//Grand Levels: Any

//$restrict->Execute();

//End Restrict Access To Page





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











ob_start();

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>News</title>

<style type="text/css">

body {

	margin-left: 0px;

	margin-top: 0px;

	margin-right: 0px;

	margin-bottom: 0px;

	font-family:Arial;

	font-size:12px;

	background-color:#EEEEEE;

}

.main a {

color:#20ADD0;

text-decoration:none;

}



.main a:hover {

color:#20ADD0;

text-decoration: underline;

}



.titulo2{

font-family:Arial;

font-size:14px;

color: #ffffff;

font-weight: bold;

background-color: #64CEE1;

height:30px;

width:100%;

text-align:center;

line-height:30px;

}



.titulo3{

font-family:Tahoma;

font-size:20px;

color: #20ADD0;

line-height:40px;



}





.titulo3 a {

color:#20ADD0;

text-decoration:none;

}



.titulo3 a:hover {

color:#20ADD0;

text-decoration: underline;

}



.footer {

color:#A0A0A0;

}



.footer a{

color:#A0A0A0;

text-decoration: underline;



}



.footer a:hover{

color:#ffffff;

}



.aviso {

font-family:tahoma;

font-size:10px;

color:#FF9900;

}



</style></head>



<body>

<?php



foreach ($arreglo_usuarios_registrados as $keypos => $valpos_usuarios_registrados)

    {



mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset2 = "SELECT * FROM registered_user where id_registered_user = ".$valpos_usuarios_registrados."";

$Recordset2 = mysql_query($query_Recordset2, $wa_coneccion) or die(mysql_error());

$row_Recordset2 = mysql_fetch_assoc($Recordset2);

$totalRows_Recordset2 = mysql_num_rows($Recordset2);



?>

<?php if( $totalRows_Recordset2 > 0 ) { ?>



<?php do { ?>

<?php if( $cuentaemails < $maximoporhora ) { ?>

<?php

			mysql_select_db($database_wa_coneccion, $wa_coneccion);

			$query_Recordset1_language_definido_email = "SELECT * FROM languages WHERE languages_id='".$row_Recordset2['id_language']."'";

			$Recordset1_language_definido_email = mysql_query($query_Recordset1_language_definido_email, $wa_coneccion) or die(mysql_error());

			$row_Recordset1_language_definido_email = mysql_fetch_assoc($Recordset1_language_definido_email);

			$totalRows_Recordset1_language_definido_email = mysql_num_rows($Recordset1_language_definido_email);





			mysql_select_db($database_wa_coneccion, $wa_coneccion);

			$query_Recordset1 = "SELECT ne.*, ne_d.* FROM news ne, news_description ne_d WHERE ne.id_news=ne_d.id_news AND ne.id_news ='".$row_Recordset_noticiasenviar['id_news']."' AND ne_d.id_language='".$row_Recordset2['id_language']."'";

			$Recordset1 = mysql_query($query_Recordset1, $wa_coneccion) or die(mysql_error());

			$row_Recordset1 = mysql_fetch_assoc($Recordset1);

			$totalRows_Recordset1 = mysql_num_rows($Recordset1);

			

			include($directoriocorrescript."/includes/languages/".$row_Recordset1_language_definido_email['directory']."/main.php");	

			

					

			// Show Dynamic Thumbnail

			$objDynamicThumb1 = new tNG_DynamicThumbnail($url_website."/", "KT_thumbnail1");

			$objDynamicThumb1->setFolder($directoriocorrescript."/images/");

			$objDynamicThumb1->setFolder2($url_website."/images/");

			$objDynamicThumb1->setRenameRule("{Recordset1.image_news}");

			$objDynamicThumb1->setResize(150, 150, true);

			$objDynamicThumb1->setWatermark(false);





?>





<?php

  $sectemailObj = new tNG_EmailPageSection();

  $sectemailObj->getCSSFrom(__FILE__);

  $sectemailObj->setTo($row_Recordset2['email_registered_user']);

  $sectemailObj->setFrom(STORE_OWNER_EMAIL_ADDRESS);

  $sectemailObj->setSubject($row_Recordset1['title_news']);

  $sectemailObj->setFormat("HTML/Text");

  $sectemailObj->setEncoding("iso-8859-1");

  $sectemailObj->setImportance("Normal");

  $sectemailObj->BeginContent();

?>





<table width="800" border="0" align="center" cellpadding="0" cellspacing="0" style="background-color:#FFFFFF; color:#666666">

  <tr>

    <td ><img src="<?php echo $url_website;?>/admin/img/header_envios.jpg" /></td>

  </tr>

</table>







<table width="800" border="0" align="center" cellpadding="0" cellspacing="0" style="background-color:#FFFFFF; color:#666666">

      <tr>

    <td colspan="2">

       <br />



   <div class="aviso" align="center">

<?php echo $TEXTO41;?>

</div>

     <div style=" margin-left:20px; margin-right:20px; margin-top:10px"><br />



     <div class="titulo2">

     <?php echo $NEWS;?>

     </div>

     <br />

<span class="titulo3">

<a href="<?php echo $url_website.'/'; ?>information_page.php?page=news&id_news=<?php echo $row_Recordset1['id_news'] ; ?>"><?php echo $row_Recordset1['title_news'] ; ?></a>





</span>

</div>

    </td>

    </tr>

    <tr>

    <td valign="top">

    <div style=" margin-left:20px; margin-right:10px; margin-top:23px; ">

    <img src="<?php echo $objDynamicThumb1->Execute2(); ?>" border="0" /> </div>

    </td>

    <td valign="top">

    <div style=" margin-left:10px; margin-right:20px; margin-top:20px; text-align:justify">

<?php echo $row_Recordset1['content_news']; ?>



<br /><br /><br />

</div>

    </td>

  </tr>

  

</table>

  

  

<table width="800" border="0" align="center" cellpadding="0" cellspacing="0" style="background-color:#FFFFFF; color:#666666">  

    <tr>

   <td align="center" style="background-color: #CCCCCC;"><br />

     <span class="footer"><a href="<?php echo $url_website; ?>" target="_blank"><?php echo $url_website; ?></a></span><br />     

     <br />



</td>

  </tr>

</table>

  <?php

  $sectemailObj->EndContent();

  $sectemailObj->Execute();

mysql_free_result($Recordset1_language_definido_email);  

?>

<?php





$insertSQL = sprintf("INSERT INTO mensajes_enviados (id_news, id_events, id_promotion, id_registered_user) VALUES (%s, %s, %s, %s)",

						   GetSQLValueString($row_Recordset1['id_news'], "text"),

						   GetSQLValueString(0, "text"),

						   GetSQLValueString(0, "text"),

						   GetSQLValueString($row_Recordset2['id_registered_user'], "text"));

	

	  mysql_select_db($database_wa_coneccion, $wa_coneccion);

	  $Resultado_news_enviados = mysql_query($insertSQL, $wa_coneccion) or die(mysql_error());

	  

$cuentaemails = $cuentaemails + 1;

//echo $cuentaemails.'<br>'.$maximoporhora.'<br>'.$cuentaemailsusuario;

//print_r($arreglo_usuarios_registrados);

}

?>

<?php

	  

	  

	  

  } while ($row_Recordset2 = mysql_fetch_assoc($Recordset2));

?>  



<?php } ?>

<?php } ?>

</body>

</html>

<?php



if(isset($row_Recordset1['id_news']) && ($row_Recordset1['id_news'] != $capturavalorid)){





	mysql_free_result($Recordset1);

	

	mysql_free_result($Recordset2);







	//Redirect Email sectemailObj

	 // $redObj = new tNG_Redirect(null);

	//  $redObj->setURL("admin_exito.php");

	//  $redObj->setKeepURLParams(false);

	//  $redObj->Execute();

	//End Redirect Email sectemailObj











	  

	

	

   $capturavalorid = $row_Recordset1['id_news'];

}

?>