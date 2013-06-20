<?php require_once('Connections/wa_coneccion.php'); ?>

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

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="titulo">Login</span>

<div class="main">



<form id="form1" name="form1" method="post" action="login.php">

<table cellpadding="4" cellspacing="4"  width="300" class="tablespecial" align="left" style="border:1px solid #CCCCCC">

  <tr>

    <td align="right" class="tdspecial">

      <label></label>

    User :</td>

    <td class="tdspecial"><input type="text" name="userid" id="userid" /></td>

  </tr>

  <tr>

    <td align="right" class="tdspecial"><label>Password :</label></td>

    <td class="tdspecial"><input type="password" name="password" id="password" />

    </td>

  </tr>

  <tr>

    <td class="tdspecial">&nbsp;</td>

    <td class="tdspecial"><label>

      <input type="submit"  name="loguear" id="loguear" value="Submit" />

    </label></td>

  </tr>

  <tr>

  <td>

  </td>

  <td>

  <a href="forgot.php">Password forgotten? Click here.</a>

  </td>

  </tr>

</table>

    </form><br />

<br />

<br />

<br />

<br />

<br />

<br />

<br />



        <?



if (isset($_POST['loguear'])) { 



$userid=$_POST['userid'];

$password=$_POST['password'];







		if($rec=mysql_fetch_array(mysql_query("SELECT * FROM user_login WHERE usuario_user_login='$userid' AND clave_user_login = '$password' "))){



		

				if(($rec['usuario_user_login']==$userid)&&($rec['clave_user_login']==$password)){

						session_start();

						$_SESSION['MM_Username'] = $userid;

						$_SESSION['MM_UserGroup'] = "";

						$_SESSION['MM_Password'] = $password;

						

			

							$url="categories.php";

							echo '<script type="text/javascript">';

							echo 'window.location.href="'.$url.'";';

							echo '</script>';

				

				}	



		}	else{

						echo 'Enter the correct password or user';

				}



}

?>

</div>

</body>

</html>

