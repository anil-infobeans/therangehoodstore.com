<?php require_once('Connections/wa_coneccion.php'); ?>
<?php //require_once('admin/includes/languages/english/main.php'); ?>
<?php
// Load the tNG classes
require_once('admin/includes/tng/tNG.inc.php');

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

$maxRows_Recordset101a = 2;
$pageNum_Recordset101a = 0;
if (isset($_GET['pageNum_Recordset101a'])) {
  $pageNum_Recordset101a = $_GET['pageNum_Recordset101a'];
}
$startRow_Recordset101a = $pageNum_Recordset101a * $maxRows_Recordset101a;

mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset101a = "SELECT ne.*, ne_d.* FROM news ne, news_description ne_d WHERE  ne.id_news=ne_d.id_news AND ne_d.id_language=1 ORDER BY ne.id_news DESC";
$query_limit_Recordset101a = sprintf("%s LIMIT %d, %d", $query_Recordset101a, $startRow_Recordset101a, $maxRows_Recordset101a);
$Recordset101a = mysql_query($query_limit_Recordset101a, $wa_coneccion) or die(mysql_error());
$row_Recordset101a = mysql_fetch_assoc($Recordset101a);

if (isset($_GET['totalRows_Recordset101a'])) {
  $totalRows_Recordset101a = $_GET['totalRows_Recordset101a'];
} else {
  $all_Recordset101a = mysql_query($query_Recordset101a);
  $totalRows_Recordset101a = mysql_num_rows($all_Recordset101a);
}
$totalPages_Recordset101a = ceil($totalRows_Recordset101a/$maxRows_Recordset101a)-1;

// Show Dynamic Thumbnail
$objDynamicThumb1 = new tNG_DynamicThumbnail("../", "KT_thumbnail1");
$objDynamicThumb1->setFolder("images/");
$objDynamicThumb1->setRenameRule("{Recordset101a.image_news}");
$objDynamicThumb1->setResize(60, 60, true);
$objDynamicThumb1->setWatermark(false);

mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset9000 = "SELECT * FROM activa_modulo WHERE name_activa_modulo = 'module_news'";
$Recordset9000 = mysql_query($query_Recordset9000, $wa_coneccion) or die(mysql_error());
$row_Recordset9000 = mysql_fetch_assoc($Recordset9000);
$totalRows_Recordset9000 = mysql_num_rows($Recordset9000);


?>
<?php if ( ($totalRows_Recordset101a > 0) && ($row_Recordset9000['check_activa_modulo'] == '1') ){ // Show if recordset not empty ?>
<div style="background-image: url(img_web/boxnewsletter.png); background-repeat:repeat-x; ">
<div style="margin-left:15px; padding-top:10px; margin-right:15px">

<table cellpadding="0" cellspacing="0" border="0" >
<tr>
<td valign="top">



  <?php do { ?>
  <table cellpadding="0" cellspacing="0" border="0">
    <tr>
      <td colspan="2" valign="top" class="little_title" height="30px"><a href="publi.php?page=news&id_news=<?php echo $row_Recordset101a['id_news']; ?>" ><?php echo $row_Recordset101a['title_news']; ?></a></td>
    </tr>
    <tr>
    <?php if($row_Recordset101a['image_news']!=""){?>
    <td valign="top">

    <div style="padding-right:10px; width:70px;">
	<img border="0" src="<?php echo $objDynamicThumb1->Execute(); ?>" class="img_little">
    </div>
    </td>
    <td valign="top">
     <?php } else {?>
         <td valign="top" colspan="2">
      <?php }?>     
      
<div class="subcontent">
<?php //limpiamos estilos para contar bien los caracteres

$texto_limpieza_a = eregi_replace("<head[^>]*>.*</head>"," ",$row_Recordset101a['content_news']);
$texto_limpieza_a = eregi_replace("<script[^>]*>.*</script>"," ",$texto_limpieza_a);
$texto_limpieza_a = eregi_replace("<style[^>]*>.*</style>"," ",$texto_limpieza_a);
$texto_limpieza_a = eregi_replace("<[^>]*>"," ",$texto_limpieza_a);
$texto_limpieza_a = eregi_replace("&nbsp;","",$texto_limpieza_a);

?>  
<? 
// Inicializamos las variables 
$tamano_a = 1000; // tamaño máximo 
$texto_cortado_a = substr($texto_limpieza_a, 0 , $tamano_a);
echo $texto_cortado_a . '&nbsp;...';
 ?>
 
 </div>
</td>
    </tr>

    <tr>
    <td colspan="2" height="15">

    </td>
    </tr>
       
    <tr>
    <td colspan="2" height="1" style="background-image:url(../images/divinews.png); padding:5px; background-repeat: repeat-x">

    </td>
    </tr>
    </table>
    <?php } while ($row_Recordset101a = mysql_fetch_assoc($Recordset101a)); ?>


</td>
</tr>
</table>
 <?php } // Show if recordset not empty ?>
</div>
<br />
</div>
<?php
mysql_free_result($Recordset101a);
?>