<?php
 require('includes/configure.php');
  $wf_coneccion = mysql_pconnect(DB_SERVER, DB_SERVER_USERNAME, DB_SERVER_PASSWORD) or trigger_error(mysql_error(),E_USER_ERROR);
  mysql_select_db(DB_DATABASE);
?>
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

$query_Recordset1_banner_flash = "SELECT categories_id, categories_image FROM categories";
$Recordset1_banner_flash = mysql_query($query_Recordset1_banner_flash, $wf_coneccion) or die(mysql_error());
$row_Recordset1_banner_flash = mysql_fetch_assoc($Recordset1_banner_flash);
$totalRows_Recordset1_banner_flash = mysql_num_rows($Recordset1_banner_flash);
?>



<?php echo '<?xml version="1.0" encoding="iso-8859-1" standalone="yes"?>';?>
<?php echo '<images>';?>
<?php echo '<home name="home">';?>

  <?php do { ?>
<?php  $imagenreal = explode(".", $row_Recordset1_banner_flash["categories_image"]);?>

<?php  if($imagenreal[0]!="")  { ?>
     
      <?php echo '<pic>';?>
      <?php echo '<image>images/'.$row_Recordset1_banner_flash["categories_image"].'</image>';?>
      <?php echo '<caption>index.php?cPath='.$row_Recordset1_banner_flash["categories_id"].'</caption>';?>    
      <?php echo '<thumbnail>images/'.$row_Recordset1_banner_flash["categories_image"].'</thumbnail>';?>
      <?php echo '</pic>';?>
      
<?php } ?> 

    <?php } while ($row_Recordset1_banner_flash = mysql_fetch_assoc($Recordset1_banner_flash)); ?>

<?php echo '</home>';?>
<?php echo '</images>';?>


<?php
mysql_free_result($Recordset1_banner_flash);
?>