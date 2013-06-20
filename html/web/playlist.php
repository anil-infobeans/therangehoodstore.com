<?php header("Content-type: text/xml"); ?>
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

 require('includes/configure.php');
  $wf_coneccion = mysql_pconnect(DB_SERVER, DB_SERVER_USERNAME, DB_SERVER_PASSWORD) or trigger_error(mysql_error(),E_USER_ERROR);
  mysql_select_db(DB_DATABASE);

$query_Recordset1_music_xml = "SELECT * FROM music";
$Recordset1_music_xml = mysql_query($query_Recordset1_music_xml, $wf_coneccion) or die(mysql_error());
$row_Recordset1_music_xml = mysql_fetch_assoc($Recordset1_music_xml);
$totalRows_Recordset1_music_xml = mysql_num_rows($Recordset1_music_xml);
?>

<?php   if($totalRows_Recordset1_music_xml>0)  {;?>


<?php echo '<songs>';?>
 
<?php do { ?>
  
      <?php echo '<song name ="'.$row_Recordset1_music_xml["name_music"].'" band ="'.$row_Recordset1_music_xml["band_music"].'" file ="music/'.$row_Recordset1_music_xml["file_music"].'" />';?>
      
<?php } while ($row_Recordset1_music_xml = mysql_fetch_assoc($Recordset1_music_xml));?>

<?php echo '</songs>';?>

<?php };?>

<?php
mysql_free_result($Recordset1_music_xml);
?>
