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

     

    // Redirect to self to get rid of the POST 

    header("Location: index.php"); 

  } 



include_once("fckeditor.php") ; 

?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"  

    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"> 

<head> 

<title>Test FCKeditor</title> 

</head> 

<body> 



<h1>Test</h1> 



<form action="index.php" method="post"> 

<?php  

  // Get data from the database 

  $query = mysql_query("SELECT data FROM fck_data WHERE id = 1"); 

  $data = mysql_fetch_array($query); 



  // Configure and output editor 

  $oFCKeditor = new FCKeditor('fcktext'); 

$oFCKeditor->BasePath = '/fckeditor/' ;

$oFCKeditor->Value    = stripslashes($data["data"]);

  echo $oFCKeditor->CreateHtml(); 



?> 

<br /> 

<input type="hidden" name="submit_form" value="1" /> 

<input type="submit" value="Save Form" /> 

</form> 



</body> 

</html> 





<?php  

  // Close the database connection 

  mysql_close($cnx); 

?>