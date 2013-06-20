<?php  

   

  // Connect to the database 

  $cnx = mysql_connect("p41mysql95.secureserver.net", "fck_database", "kikErve1204") 

         OR die("Unable to connect to database!"); 

  mysql_select_db("fck_database", $cnx); 

   

   

  if ($_POST['submit_form'] == 1)  { 

    // Save to the database 

    $data = mysql_real_escape_string(trim($_POST['fcktext'])); 

    $res = mysql_query("UPDATE fck_data SET data = '".$data."' WHERE id = 1"); 

     

    if (!$res) 

      die("Error saving the record!  Mysql said: ".mysql_error()); 

    

  } 

?>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>FAITH SATELLITE RADIO | Adopt a Parish in Africa</title>

<style type="text/css">

<!--



body {

}td img {display: block;}

-->

</style>

<link href="styles.css" rel="stylesheet" type="text/css" />

<style type="text/css">

<!--

.Estilo2 {color: #006699}

-->

</style>

<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>

</head>



<body>

<table width="766" border="0" align="center" cellpadding="0" cellspacing="0">

      <tr>

        <td width="766" height="288" td colspan="3"><script type="text/javascript">

AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0','width','766','height','288','src','header5?button=3','quality','high','pluginspage','http://www.macromedia.com/go/getflashplayer','movie','header5?button=3' ); //end AC code

</script></td>

</tr>

<tr>

<td width="12"></td>

  <td width="750" valign="top"><div style="margin-left:5px" align="left">

<?php  

  // Get data from the database 

  $query = mysql_query("SELECT data FROM fck_data WHERE id = 1"); 

  $data = mysql_fetch_array($query); 



  // Configure and output editor 



echo stripslashes($data["data"]);?>

</div>

<br />

<br />

<br />

<br />

<br />

<br />

</td>

<td width="12"></td>

</tr>

      <tr >

        <td align="center" valign="middle" background="header4_r11_c1.jpg" height="61" td colspan="3"><a href="index.html">Home</a> <span class="Estilo2">|</span> <a href="aboutusandservices.html">About Us &amp; Services</a> <span class="Estilo2">|</span> <a href="adoptaparish.html">Adopt a Parish</a> <span class="Estilo2">|</span> <a href="programmingandradio.html">Programming &amp; Radio</a> <span class="Estilo2">|</span> <a href="faq.html">F.A.Q.</a> <span class="Estilo2">|</span> <a href="contactus.html">Contact Us</a><br />

        <span class="Estilo2">Designed by</span> <a href="http://www.apolomultimedia.com" target="_blank">Apolomultimedia.com</a></td>

      </tr>

</table>

</body>

</html>

<?php  

  // Close the database connection 

  mysql_close($cnx); 

?>



