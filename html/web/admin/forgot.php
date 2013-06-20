<?php require_once('Connections/wa_coneccion.php'); ?>

<?php require('includes/application_top.php'); ?>

<?php require_once('includes/languages/english/main.php'); ?>

<?php if (!function_exists("GetSQLValueString")) {

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

mysql_select_db($database_wa_coneccion, $wa_coneccion);

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>WA package - Apolomultimedia.com</title>

<link href="estilosadmin.css" rel="stylesheet" type="text/css" />

</head>



<body>



<div class="subtitulo">&nbsp;</div><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/logo2.png"/><br />

<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="titulo">Password forgotten?</span>

<div class="main">









<form  method=post>

<table border='0' cellspacing='4' cellpadding='0' >

 <tr >

 <td colspan='2' style="color:#FF0000"><?php echo TEXTO51; ?>

 </td>

 </tr>

 <tr>

<td align="left">

 Email</td>

<td align="left">

<input type ='text'  name='email' class="formstyle" size="18">

</td>

</tr>

<tr >

<td>

</td>

<td >  

<input type='submit' value='<?php echo REMEMBERME;?>' name="sendmyemail">

</td>

</tr>

</table></form>











<?



if (isset($_POST['sendmyemail'])) { 



$email=mysql_real_escape_string($email);

$status = "OK";

$msg="";

//error_reporting(E_ERROR | E_PARSE | E_CORE_ERROR);

if (!stristr($email,"@") OR !stristr($email,".")) {

$msg=TEXTO87; 

$status= "NOTOK";}





if($status=="OK"){  $query="SELECT * FROM user_login WHERE email_users = '$email'";

$st=mysql_query($query);

$recs=mysql_num_rows($st);

$row=mysql_fetch_object($st);

$em=$row->email_users;// email is stored to a variable

 if ($recs == 0) {  echo '<div class="little" style="text-align:center;padding-top:0px; color:red; " >'.TEXTO57.'</div>'; }

else {

$headers4=STORE_OWNER;         ///// Change this address within quotes to your address ///

$headers.="Reply-to: $headers4\n";

$headers .= "From: $headers4\n"; 

$headers .= "Errors-to: $headers4\n"; 

//$headers = "Content-Type: text/html; charset=iso-8859-1\n".$headers;// for html mail un-comment this line

$TEXTO56 .= TEXTO56." ".HTTP_SERVER." \n\n";

$TEXTO56 .= "User: $row->usuario_user_login \n";

$TEXTO56 .= "Password: $row->clave_user_login \n\n";

$TEXTO56 .= HTTP_SERVER;



 if(mail("$em",TEXTO55,$TEXTO56,"$headers"))

 {

 echo '<div class="little" style=" text-align:left; padding-top:0px; color:red; " >'.TEXTO58.'<br /><br /></div>';

 

 							$url="login.php";

							echo '<script type="text/javascript">';

							echo 'window.location.href="'.$url.'";';

							echo '</script>';

							

 }

else{

echo '<div class="little" style="text-align:left;padding-top:0px; color:red; " >'.TEXTO59.'<br /><br /></div>';

}



}

	} 



	else {echo '<div class="little" style="text-align:left;padding-top:0px; color:red; " >'.$msg.' <br /><br /></div>';}

	

}

?>









</div>



</body>

</html>

