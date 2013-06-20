<?php
  require('includes/application_top.php');

?>


<?php require_once('Connections/wa_coneccion.php'); ?>
<?php

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






?>

<?php require("admin/includes/functions_mine.php");?>



     <?php  if (isset($_GET['id_news'])) {
	 
$colname_Recordset501_blog = "-1";
if (isset($_GET['id_news'])) {
  $colname_Recordset501_blog = $_GET['id_news'];
}
mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset501_blog = sprintf("SELECT ne.*, ne_d.* FROM news ne, news_description ne_d WHERE ne.id_news = %s AND ne.id_news=ne_d.id_news AND ne_d.id_language=".(int)$languages_id."", GetSQLValueString($colname_Recordset501_blog, "int"));
$Recordset501_blog = mysql_query($query_Recordset501_blog, $wa_coneccion) or die(mysql_error());
$row_Recordset501_blog = mysql_fetch_assoc($Recordset501_blog);
$totalRows_Recordset501_blog = mysql_num_rows($Recordset501_blog);

}?>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php echo HTML_PARAMS; ?> xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><?php echo $row_Recordset501_blog['title_news']; ?></title>
<base href="<?php echo (getenv('HTTPS') == 'on' ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<link rel="stylesheet" type="text/css" href="stylesheet2.css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<META NAME="Author" CONTENT="APOLOMULTIMEDIA">
<META NAME="Subject" CONTENT="<?php echo $row_Recordset501_blog['title_news']; ?>">
<META NAME="Description" CONTENT="<?php echo $row_Recordset501_blog['description_news']; ?>">
<META NAME="Keywords" CONTENT="<?php echo $row_Recordset501_blog['keyword_news']; ?>">
<META NAME="Language" CONTENT="English">
<META NAME="revisit-after" CONTENT="5 days">
<META NAME="Distribution" CONTENT="Global">




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
									Blog</td>
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
            
            
            
            
            
            
<?php 
// COMIENZA ------ NEWS

if ($_GET['page'] == "news") {?>
    
    <table border="0" cellspacing="0" cellpadding="0" width="100%">
    <tr>
    <td>

    <div class="main">
    
     <?php  if (isset($_GET['id_news'])) {
	 
$colname_Recordset501 = "-1";
if (isset($_GET['id_news'])) {
  $colname_Recordset501 = $_GET['id_news'];
}
mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset501 = sprintf("SELECT ne.*, ne_d.* FROM news ne, news_description ne_d WHERE ne.id_news = %s AND ne.id_news=ne_d.id_news AND ne_d.id_language=".(int)$languages_id."", GetSQLValueString($colname_Recordset501, "int"));
$Recordset501 = mysql_query($query_Recordset501, $wa_coneccion) or die(mysql_error());
$row_Recordset501 = mysql_fetch_assoc($Recordset501);
$totalRows_Recordset501 = mysql_num_rows($Recordset501);

	 
	 do { ?>
     
    
    <a href="news.html"><?php echo ALLNEWS;?></a><br /><br />
	<h1><strong><?php echo $row_Recordset501['title_news']; ?></strong></h1><span class="date"><?php //echo actual_date($row_Recordset501['date_news']); ?></span>
    <div class="debajotitulo3"></div><br />
	<table cellpadding="0" cellspacing="0" border="0" width="100%">
   <tr>
   <td valign="top">
<div class="subcontent">
    <?php if ($row_Recordset501['image_news'] != "") { // Show if recordset not empty ?>
    <div class="img_fix" style="float:left; padding-right:10px;">
      <img src="images/<?php echo $row_Recordset501['image_news']; ?>" />
      </div>
      <?php } // Show if recordset not empty ?>
    <?php echo $row_Recordset501['content_news']; ?>
 </div>
 <div style="clear:both"></div>
<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style" style="padding-top:10px">
<a class="addthis_button_facebook"></a>
<a class="addthis_button_twitter"></a>
<a class="addthis_button_email"></a>
<a class="addthis_button_favorites"></a>
<a class="addthis_button_print"></a>
</div>
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js?pub=xa-4a9bd17b72252878"></script>
<!-- AddThis Button END -->

</td>
</tr>
<tr>
<td>


<?php
mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset501_comments = sprintf("SELECT com.*, com_d.* FROM comments com, comments_description com_d WHERE com.id_news = %s AND com_d.id_comments=com.id_comments AND com.check_comments = '1' AND com_d.id_language=".(int)$languages_id." ORDER BY com.id_comments DESC", GetSQLValueString($colname_Recordset501, "int"));
$Recordset501_comments = mysql_query($query_Recordset501_comments, $wa_coneccion) or die(mysql_error());
$row_Recordset501_comments = mysql_fetch_assoc($Recordset501_comments);
$totalRows_Recordset501_comments = mysql_num_rows($Recordset501_comments);
?>

<?php if ($totalRows_Recordset501_comments > 0) { ?>
<br />
<span class="titulo5"><?php echo COMMENTS;?> :</span>&nbsp;&nbsp;<a href="#commentform"><?php echo ADDCOMMENT;?></a>


<?php do { ?>
<br />
<br />
<br />
<div class="divcuad"></div>
<span class="titulo4"><a href="<?php echo $row_Recordset501_comments['website_comment']; ?>" target="_blank"><?php echo $row_Recordset501_comments['name_comments']; ?></a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="date"><?php echo actual_date($row_Recordset501_comments['date_comments']); ?></span>
<br />

<?php echo $row_Recordset501_comments['text_comments']; ?>

    <?php
	
	} while ($row_Recordset501_comments = mysql_fetch_assoc($Recordset501_comments));
	
	 
	
?>

<?php
}
mysql_free_result($Recordset501_comments);
?>

</td>
</tr>
</table>

    <?php
	
	} while ($row_Recordset501 = mysql_fetch_assoc($Recordset501));
	
	 mysql_free_result($Recordset501);
	 ?>
<br />
<br />
<br />	 
<?php echo LEAVECOMMENT;?><br /><br />

<div class="divcuad"></div>
<a name="commentform" id="commentform"></a>
<?php require("includes/comment_form.php"); ?>


<?php	
}
?>
    
 

 <?php 

if ($_GET['view'] == "all") {
  ?>    


<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td colspan="3">
	<span class="titulo3"><?php echo ARCHIVES;?></span>
    <div class="debajotitulo3"></div><br />
</td>
</tr>
<tr>
<td valign="top" width="70">  
<?php  

mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset500_1_y = "SELECT * FROM news order by id_news DESC";
$Recordset500_1_y = mysql_query($query_Recordset500_1_y, $wa_coneccion) or die(mysql_error());
$row_Recordset500_1_y = mysql_fetch_assoc($Recordset500_1_y);
$totalRows_Recordset500_1_y = mysql_num_rows($Recordset500_1_y);

$idemdate_y = 0;
$arrayyear = array();

do {

$datenew_y = explode(",",$row_Recordset500_1_y['date_news']);
$datenew_y_esp = explode(" ",$datenew_y[1]);

if($idemdate_y != $datenew_y_esp[1]) {
$idemdate_y = $datenew_y_esp[1];
$arrayyear[] = $idemdate_y;

}

} while ($row_Recordset500_1_y = mysql_fetch_assoc($Recordset500_1_y));

$total_arrayyear = count($arrayyear);


for($val_y = 0; $val_y <= $total_arrayyear-1; $val_y++)  {

echo '<span class="year">'.$arrayyear[$val_y].'</span><br>';

mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset500_1 = "SELECT * FROM news WHERE date_news LIKE '%$arrayyear[$val_y]%' order by id_news DESC";
$Recordset500_1 = mysql_query($query_Recordset500_1, $wa_coneccion) or die(mysql_error());
$row_Recordset500_1 = mysql_fetch_assoc($Recordset500_1);
$totalRows_Recordset500_1 = mysql_num_rows($Recordset500_1);

$idemdate = "primero";

do {

$datenew = explode(",",$row_Recordset500_1['date_news']);

preg_match_all('|[0-9]+|',$datenew[0],$numeros);

$datenewget = explode($numeros[0][0],$datenew[0]);
$datenewget_esp = explode(" ",$datenewget[0]);


if($idemdate != $datenewget_esp[0]) {
$idemdate = $datenewget_esp[0];
echo '<a href="publi.php?page=news&view=all&month='.$idemdate.'&year='.$arrayyear[$val_y].'">'.actual_date($idemdate).'</a><br>';
}

} while ($row_Recordset500_1 = mysql_fetch_assoc($Recordset500_1));

echo'<br><br>';
}
?>



</td>
<td width="30">&nbsp;

</td>
<td valign="top">
<?php 

mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset500 = "SELECT ne10.*, ne10_d.* FROM news ne10, news_description ne10_d where ne10.date_news LIKE '%".$_GET['month']."%' AND ne10.date_news LIKE '%".$_GET['year']."%' AND ne10.id_news=ne10_d.id_news AND ne10_d.id_language=".(int)$languages_id." order by ne10.id_news DESC";
$Recordset500 = mysql_query($query_Recordset500, $wa_coneccion) or die(mysql_error());
$row_Recordset500 = mysql_fetch_assoc($Recordset500);
$totalRows_Recordset500 = mysql_num_rows($Recordset500);

// Show Dynamic Thumbnail
$objDynamicThumb1_n = new tNG_DynamicThumbnail("../", "KT_thumbnail1");
$objDynamicThumb1_n->setFolder("images/");
$objDynamicThumb1_n->setRenameRule("{Recordset500.image_news}");
$objDynamicThumb1_n->setResize(60, 40, true);
$objDynamicThumb1_n->setWatermark(false);

?>



    <?php do { ?>
    
<span class="titulo5"><a href="<?php echo $row_Recordset500['h1_news']; ?>-news-<?php echo $row_Recordset500['id_news']; ?>.html"><?php echo $row_Recordset500['title_news']; ?></a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="date2"><?php //echo actual_date($row_Recordset500['date_news']); ?></span><br /><br />

    
   <table cellpadding="0" cellspacing="0" border="0">
   <tr>
   <td valign="top">
   <div style="margin-right:10px" class="bajaimagen">
    <?php if ($row_Recordset500['image_news'] != "") { // Show if recordset not empty ?>
    
    <img border="0" src="<?php echo $objDynamicThumb1_n->Execute(); ?>" class="img_little">

      <?php } // Show if recordset not empty ?>
</div>
     </td>
     <td valign="top">
<div class="subcontent">
     <?
$texto_limpieza_n_i = eregi_replace("<head[^>]*>.*</head>"," ",$row_Recordset500['content_news']);
$texto_limpieza_n_i = eregi_replace("<script[^>]*>.*</script>"," ",$texto_limpieza_n_i);
$texto_limpieza_n_i = eregi_replace("<style[^>]*>.*</style>"," ",$texto_limpieza_n_i);
$texto_limpieza_n_i = eregi_replace("<[^>]*>"," ",$texto_limpieza_n_i);
$texto_limpieza_n_i = eregi_replace("&nbsp;","",$texto_limpieza_n_i);

// Inicializamos las variables 
$tamano_n_i = 320; // tamaño máximo 
$texto_cortado_n_i = substr($texto_limpieza_n_i, 0 , $tamano_n_i);
echo $texto_cortado_n_i . '&nbsp;...<a href="'.$row_Recordset500['h1_news'].'-news-'.$row_Recordset500['id_news'].'.html">'.READMORE.'</a>';
 ?>

</div>

</td>
</tr>
<tr>
<td height="20" style="background-image:url(img_web/div_little.png); background-repeat:repeat-x; background-position:center" colspan="3">
</td>
</tr>
</table>

<?php } while ($row_Recordset500 = mysql_fetch_assoc($Recordset500));?>


</td>
</tr>
</table>



<?php
mysql_free_result($Recordset500);
}
?>

 </div>

    </td>
    </tr>
    </table>  
    <?php   
    }
	// TERMINA ----- NEWS
    ?>
    
    
    
    

<?php  

// COMIENZA ------ EVENTS

if ($_GET['page'] == "events") {?>
    
    <table border="0" cellspacing="0" cellpadding="0" width="100%">
    <tr>
        <td class="titulo2" height="50">
    <div style="margin-left:40px;">
      > <?php echo EVENTS;?>
    </div>
    </td>
    </tr>
    <tr>
    <td>

    <div class="main">
    
     <?php  if (isset($_GET['id_events'])) {
	 
$colname_Recordset601 = "-1";
if (isset($_GET['id_events'])) {
  $colname_Recordset601 = $_GET['id_events'];
}
mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset601 = sprintf("SELECT eve.*, eve_d.* FROM events eve, events_description eve_d WHERE  eve.id_events = %s AND eve.id_events=eve_d.id_events AND eve_d.id_language=".(int)$languages_id." ORDER BY eve.id_events DESC", GetSQLValueString($colname_Recordset601, "int"));
$Recordset601 = mysql_query($query_Recordset601, $wa_coneccion) or die(mysql_error());
$row_Recordset601 = mysql_fetch_assoc($Recordset601);
$totalRows_Recordset601 = mysql_num_rows($Recordset601);

	 
	 do { ?>
    <a href="publi.php?page=events&view=all"><?php echo ALLEVENTS;?></a><br /><br />    
	<span class="titulo3"><?php echo $row_Recordset601['title_events']; ?></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="date"><?php echo actual_date($row_Recordset601['date_events']); ?></span>
    <div class="debajotitulo3"></div><br />
	<table cellpadding="0" cellspacing="0" border="0">
   <tr>
   <td valign="top">
   <div>
    <?php if ($row_Recordset601['image_events'] != "") { // Show if recordset not empty ?>
    <div class="img_fix">
      <img src="images/<?php echo $row_Recordset601['image_events']; ?>"  />
    </div>
      <?php } // Show if recordset not empty ?>
    <?php echo $row_Recordset601['content_events']; ?>
  </div>
 <div style="clear:both"></div>

<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style">
<a class="addthis_button_facebook"></a>
<a class="addthis_button_twitter"></a>
<a class="addthis_button_email"></a>
<a class="addthis_button_favorites"></a>
<a class="addthis_button_print"></a>
</div>
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js?pub=xa-4a9bd17b72252878"></script>
<!-- AddThis Button END -->

</td>
</tr>
<tr>
<td>


<?php
mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset601_comments = sprintf("SELECT com10.*, com10_d.* FROM comments com10, comments_description com10_d WHERE com10.id_events = %s AND com10_d.id_comments=com10.id_comments AND com10.check_comments = '1' AND com10_d.id_language=".(int)$languages_id." ORDER BY com10.id_comments DESC", GetSQLValueString($colname_Recordset601, "int"));
$Recordset601_comments = mysql_query($query_Recordset601_comments, $wa_coneccion) or die(mysql_error());
$row_Recordset601_comments = mysql_fetch_assoc($Recordset601_comments);
$totalRows_Recordset601_comments = mysql_num_rows($Recordset601_comments);
?>
<?php if ($totalRows_Recordset601_comments > 0) { ?>

<br />
<span class="titulo5"><?php echo COMMENTS;?> :</span>&nbsp;&nbsp;<a href="#commentform"><?php echo ADDCOMMENT;?></a>

<?php do { ?>
<br />
<br />
<br />
<div class="divcuad"></div>
<span class="titulo4"><a href="<?php echo $row_Recordset601_comments['website_comment']; ?>" target="_blank"><?php echo $row_Recordset601_comments['name_comments']; ?></a></span>&nbsp;&nbsp;&nbsp;&nbsp;
<span class="date"><?php echo actual_date($row_Recordset601_comments['date_comments']); ?></span>
<br />

<?php echo $row_Recordset601_comments['text_comments']; ?>

    <?php
	
	} while ($row_Recordset601_comments = mysql_fetch_assoc($Recordset601_comments));
	
	 
	
?>

<?php
}
mysql_free_result($Recordset601_comments);
?>

</td>
</tr>
</table>

    <?php 
} while ($row_Recordset601 = mysql_fetch_assoc($Recordset601));

mysql_free_result($Recordset601); 
	
?>

<br />
<br />
<br />	 
<span class="titulo4"><?php echo LEAVECOMMENT;?></span>
<div class="divcuad"></div>
<a name="commentform" id="commentform"></a>
<?php require("includes/comment_form.php"); ?>


<?php	
}
?>
 

 <?php 

if ($_GET['view'] == "all") {
  ?>    


<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td colspan="3">
	<span class="titulo3"><?php echo ARCHIVES;?></span>
    <div class="debajotitulo3"></div><br />
</td>
</tr>
<tr>
<td valign="top" width="70">  
<?php  

mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset600_1_y = "SELECT * FROM events order by id_events DESC";
$Recordset600_1_y = mysql_query($query_Recordset600_1_y, $wa_coneccion) or die(mysql_error());
$row_Recordset600_1_y = mysql_fetch_assoc($Recordset600_1_y);
$totalRows_Recordset600_1_y = mysql_num_rows($Recordset600_1_y);

$idemdateeve_y = 0;
$arrayyeareve = array();

do {

$dateneweve_y = explode(",",$row_Recordset600_1_y['date_events']);
$dateneweve_y_esp = explode(" ",$dateneweve_y[1]);

if($idemdateeve_y != $dateneweve_y_esp[1]) {
$idemdateeve_y = $dateneweve_y_esp[1];
$arrayyeareve[] = $idemdateeve_y;

}

} while ($row_Recordset600_1_y = mysql_fetch_assoc($Recordset600_1_y));

$total_arrayyeareve = count($arrayyeareve);


for($val_y_eve = 0; $val_y_eve <= $total_arrayyeareve-1; $val_y_eve++)  {

echo '<span class="year">'.$arrayyeareve[$val_y_eve].'</span><br>';

mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset600_1 = "SELECT * FROM events WHERE date_events LIKE '%$arrayyeareve[$val_y_eve]%' order by id_events DESC";
$Recordset600_1 = mysql_query($query_Recordset600_1, $wa_coneccion) or die(mysql_error());
$row_Recordset600_1 = mysql_fetch_assoc($Recordset600_1);
$totalRows_Recordset600_1 = mysql_num_rows($Recordset600_1);

$idemdateeve = "primero";

do {


$dateneweve = explode(",",$row_Recordset600_1['date_events']);
preg_match_all('|[0-9]+|',$dateneweve[0],$numeros_eve);

$dateneweveget = explode($numeros_eve[0][0],$dateneweve[0]);
$dateneweveget_esp = explode(" ",$dateneweveget[0]);


if($idemdateeve != $dateneweveget_esp[0]) {
$idemdateeve = $dateneweveget_esp[0];
echo '<a href="publi.php?page=events&view=all&month='.$idemdateeve.'&year='.$arrayyeareve[$val_y_eve].'">'.actual_date($idemdateeve).'</a><br>';
}

} while ($row_Recordset600_1 = mysql_fetch_assoc($Recordset600_1));

echo'<br><br>';
}
?>



</td>
<td width="30">&nbsp;

</td>
<td valign="top">
<?php 




mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset600 = "SELECT eve10.*, eve10_d.* FROM events eve10, events_description eve10_d where eve10.date_events LIKE '%".$_GET['month']."%' AND eve10.date_events LIKE '%".$_GET['year']."%' AND eve10.id_events=eve10_d.id_events AND eve10_d.id_language=".(int)$languages_id." order by eve10.id_events DESC";
$Recordset600 = mysql_query($query_Recordset600, $wa_coneccion) or die(mysql_error());
$row_Recordset600 = mysql_fetch_assoc($Recordset600);
$totalRows_Recordset600 = mysql_num_rows($Recordset600);

// Show Dynamic Thumbnail
$objDynamicThumb1_n_e = new tNG_DynamicThumbnail("../", "KT_thumbnail1");
$objDynamicThumb1_n_e->setFolder("images/");
$objDynamicThumb1_n_e->setRenameRule("{Recordset600.image_events}");
$objDynamicThumb1_n_e->setResize(60, 40, true);
$objDynamicThumb1_n_e->setWatermark(false);

?>



    <?php do { ?>
    
<span class="titulo5"><a href="publi.php?page=events&id_events=<?php echo $row_Recordset600['id_events']; ?>"><?php echo $row_Recordset600['title_events']; ?></a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="date2"><?php echo actual_date($row_Recordset600['date_events']); ?></span><br /><br />

    
   <table cellpadding="0" cellspacing="0" border="0">
   <tr>
   <td valign="top">
   <div style="margin-right:10px" class="bajaimagen">
    <?php if ($row_Recordset600['image_events'] != "") { // Show if recordset not empty ?>
    
    <img border="0" src="<?php echo $objDynamicThumb1_n_e->Execute(); ?>" class="img_little">

      <?php } // Show if recordset not empty ?>
</div>
     </td>
     <td valign="top">
     <?
$texto_limpieza_n_i_e = eregi_replace("<head[^>]*>.*</head>"," ",$row_Recordset600['content_events']);
$texto_limpieza_n_i_e = eregi_replace("<script[^>]*>.*</script>"," ",$texto_limpieza_n_i_e);
$texto_limpieza_n_i_e = eregi_replace("<style[^>]*>.*</style>"," ",$texto_limpieza_n_i_e);
$texto_limpieza_n_i_e = eregi_replace("<[^>]*>"," ",$texto_limpieza_n_i_e);
$texto_limpieza_n_i_e = eregi_replace("&nbsp;","",$texto_limpieza_n_i_e);

// Inicializamos las variables 
$tamano_n_i_e = 320; // tamaño máximo 
$texto_cortado_n_i_e = substr($texto_limpieza_n_i_e, 0 , $tamano_n_i_e);
echo $texto_cortado_n_i_e . '&nbsp;...<a href="publi.php?page=events&id_events='.$row_Recordset600['id_events'].'">'.READMORE.'</a>';
 ?>
 



</td>
</tr>
<tr>
<td height="20" style="background-image:url(img_web/div_little.png); background-repeat:repeat-x; background-position:center" colspan="3">
</td>
</tr>
</table>

<?php } while ($row_Recordset600 = mysql_fetch_assoc($Recordset600));?>


</td>
</tr>
</table>



<?php
mysql_free_result($Recordset600);
}
?>


 </div>

    </td>
    </tr>
    </table>  
    <?php   
    }// TERMINA ----- EVENTS
    ?>
    
    
      

<?php  

// COMIENZA ------ PROMOTION

if ($_GET['page'] == "promotion") {?>
    
    <table border="0" cellspacing="0" cellpadding="0" width="100%">
    <tr>
        <td class="titulo2" height="50">
    <div style="margin-left:40px;">
      > <?php echo PROMOTIONS;?>
    </div>
    </td>
    </tr>
    <tr>
    <td>

    <div class="main">
    
     <?php  if (isset($_GET['id_promotion'])) {
	 
$colname_Recordset701 = "-1";
if (isset($_GET['id_promotion'])) {
  $colname_Recordset701 = $_GET['id_promotion'];
}


mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset701 = sprintf("SELECT pr.*, pr_d.* FROM promotion pr, promotion_description pr_d WHERE  pr.id_promotion = %s AND pr.id_promotion=pr_d.id_promotion AND pr_d.id_language=".(int)$languages_id." ORDER BY pr.id_promotion DESC", GetSQLValueString($colname_Recordset701, "int"));
$Recordset701 = mysql_query($query_Recordset701, $wa_coneccion) or die(mysql_error());
$row_Recordset701 = mysql_fetch_assoc($Recordset701);
$totalRows_Recordset701 = mysql_num_rows($Recordset701);

	 
	 do { ?>
    <a href="publi.php?page=promotion&view=all"><?php echo ALLPROMOTIONS;?></a><br /><br />
    <span class="titulo3"><?php echo $row_Recordset701['title_promotion']; ?></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="date"><?php echo actual_date($row_Recordset701['date_promotion']); ?></span>
    <div class="debajotitulo3"></div><br />
	<table cellpadding="0" cellspacing="0" border="0">
   <tr>
   <td valign="top">
   <div>
    <?php if ($row_Recordset701['image_promotion'] != "") { // Show if recordset not empty ?>
    <div class="img_fix">
      <img src="images/<?php echo $row_Recordset701['image_promotion']; ?>"/>
    </div>
      <?php } // Show if recordset not empty ?>
    <?php echo $row_Recordset701['content_promotion']; ?>
 </div>
 <div style="clear:both"></div>
<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_default_style">
<a class="addthis_button_facebook"></a>
<a class="addthis_button_twitter"></a>
<a class="addthis_button_email"></a>
<a class="addthis_button_favorites"></a>
<a class="addthis_button_print"></a>
</div>
<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js?pub=xa-4a9bd17b72252878"></script>
<!-- AddThis Button END -->

</td>
</tr>
<tr>
<td>


<?php
mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset701_comments = sprintf("SELECT com20.*, com20_d.* FROM comments com20, comments_description com20_d WHERE com20.id_promotion = %s AND com20_d.id_comments=com20.id_comments AND com20.check_comments = '1' AND com20_d.id_language=".(int)$languages_id." ORDER BY com20.id_comments DESC", GetSQLValueString($colname_Recordset701, "int"));
$Recordset701_comments = mysql_query($query_Recordset701_comments, $wa_coneccion) or die(mysql_error());
$row_Recordset701_comments = mysql_fetch_assoc($Recordset701_comments);
$totalRows_Recordset701_comments = mysql_num_rows($Recordset701_comments);
?>

<?php if ($totalRows_Recordset701_comments > 0) { ?>

<br />
<span class="titulo5"><?php echo COMMENTS;?> :</span>&nbsp;&nbsp;<a href="#commentform"><?php echo ADDCOMMENT;?></a>

<?php do { ?>
<br />
<br />
<br />
<div class="divcuad"></div>
<span class="titulo4"><a href="<?php echo $row_Recordset701_comments['website_comment']; ?>" target="_blank"><?php echo $row_Recordset701_comments['name_comments']; ?></a></span>&nbsp;&nbsp;&nbsp;&nbsp;
<span class="date"><?php echo actual_date($row_Recordset701_comments['date_comments']); ?></span>
<br />

<?php echo $row_Recordset701_comments['text_comments']; ?>

    <?php
	
	} while ($row_Recordset701_comments = mysql_fetch_assoc($Recordset701_comments));
	

	
?>

<?php
}
mysql_free_result($Recordset701_comments);
?>

</td>
</tr>
</table>

    <?php } while ($row_Recordset701 = mysql_fetch_assoc($Recordset701));
	
	mysql_free_result($Recordset701);	
	
?>

<br />
<br />
<br />	 
<span class="titulo4"><?php echo LEAVECOMMENT;?></span>
<div class="divcuad"></div>
<a name="commentform" id="commentform"></a>
<?php require("includes/comment_form.php"); ?>


<?php	
}
?>
    
 

 <?php 

if ($_GET['view'] == "all") {
  ?>    


<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td colspan="3">
	<span class="titulo3"><?php echo ARCHIVES;?></span>
    <div class="debajotitulo3"></div><br />
</td>
</tr>
<tr>
<td valign="top" width="70">  
<?php  

mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset700_1_y = "SELECT * FROM promotion order by id_promotion DESC";
$Recordset700_1_y = mysql_query($query_Recordset700_1_y, $wa_coneccion) or die(mysql_error());
$row_Recordset700_1_y = mysql_fetch_assoc($Recordset700_1_y);
$totalRows_Recordset700_1_y = mysql_num_rows($Recordset700_1_y);

$idemdateeve_p_y_p = 0;
$arrayyeareve_p = array();

do {

$dateneweve_p_y_p = explode(",",$row_Recordset700_1_y['date_promotion']);
$dateneweve_p_y_p_esp = explode(" ",$dateneweve_p_y_p[1]);

if($idemdateeve_p_y_p != $dateneweve_p_y_p_esp[1]) {
$idemdateeve_p_y_p = $dateneweve_p_y_p_esp[1];
$arrayyeareve_p[] = $idemdateeve_p_y_p;

}

} while ($row_Recordset700_1_y = mysql_fetch_assoc($Recordset700_1_y));

$total_arrayyeareve_p = count($arrayyeareve_p);


for($val_y_p = 0; $val_y_p <= $total_arrayyeareve_p-1; $val_y_p++)  {

echo '<span class="year">'.$arrayyeareve_p[$val_y_p].'</span><br>';

mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset700_1 = "SELECT * FROM promotion WHERE date_promotion LIKE '%$arrayyeareve_p[$val_y_p]%' order by id_promotion DESC";
$Recordset700_1 = mysql_query($query_Recordset700_1, $wa_coneccion) or die(mysql_error());
$row_Recordset700_1 = mysql_fetch_assoc($Recordset700_1);
$totalRows_Recordset700_1 = mysql_num_rows($Recordset700_1);

$idemdateeve_p = "primero";

do {


$dateneweve_p = explode(",",$row_Recordset700_1['date_promotion']);
preg_match_all('|[0-9]+|',$dateneweve_p[0],$numeros_eve);

$dateneweve_pget = explode($numeros_eve[0][0],$dateneweve_p[0]);
$dateneweve_pget_esp = explode(" ",$dateneweve_pget[0]);


if($idemdateeve_p != $dateneweve_pget_esp[0]) {
$idemdateeve_p = $dateneweve_pget_esp[0];
echo '<a href="publi.php?page=promotion&view=all&month='.$idemdateeve_p.'&year='.$arrayyeareve_p[$val_y_p].'">'.actual_date($idemdateeve_p).'</a><br>';
}

} while ($row_Recordset700_1 = mysql_fetch_assoc($Recordset700_1));

echo'<br><br>';
}
?>



</td>
<td width="30">&nbsp;

</td>
<td valign="top">
<?php 


mysql_select_db($database_wa_coneccion, $wa_coneccion);
$query_Recordset700 = "SELECT pr10.*, pr10_d.* FROM promotion pr10, promotion_description pr10_d where pr10.date_promotion LIKE '%".$_GET['month']."%' AND pr10.date_promotion LIKE '%".$_GET['year']."%' AND pr10.id_promotion=pr10_d.id_promotion AND pr10_d.id_language=".(int)$languages_id." order by pr10.id_promotion DESC";
$Recordset700 = mysql_query($query_Recordset700, $wa_coneccion) or die(mysql_error());
$row_Recordset700 = mysql_fetch_assoc($Recordset700);
$totalRows_Recordset700 = mysql_num_rows($Recordset700);

// Show Dynamic Thumbnail
$objDynamicThumb1_n_p = new tNG_DynamicThumbnail("../", "KT_thumbnail1");
$objDynamicThumb1_n_p->setFolder("images/");
$objDynamicThumb1_n_p->setRenameRule("{Recordset700.image_promotion}");
$objDynamicThumb1_n_p->setResize(60, 40, true);
$objDynamicThumb1_n_p->setWatermark(false);

?>



    <?php do { ?>
    
<span class="titulo5"><a href="publi.php?page=promotion&id_promotion=<?php echo $row_Recordset700['id_promotion']; ?>"><?php echo $row_Recordset700['title_promotion']; ?></a></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="date2"><?php echo actual_date($row_Recordset700['date_promotion']); ?></span><br /><br />

    
   <table cellpadding="0" cellspacing="0" border="0">
   <tr>
   <td valign="top">
   <div style="margin-right:10px" class="bajaimagen">
    <?php if ($row_Recordset700['image_promotion'] != "") { // Show if recordset not empty ?>
    
    <img border="0" src="<?php echo $objDynamicThumb1_n_p->Execute(); ?>" class="img_little">

      <?php } // Show if recordset not empty ?>
</div>
     </td>
     <td valign="top">
     <?
$texto_limpieza_n_i_e = eregi_replace("<head[^>]*>.*</head>"," ",$row_Recordset700['content_promotion']);
$texto_limpieza_n_i_e = eregi_replace("<script[^>]*>.*</script>"," ",$texto_limpieza_n_i_e);
$texto_limpieza_n_i_e = eregi_replace("<style[^>]*>.*</style>"," ",$texto_limpieza_n_i_e);
$texto_limpieza_n_i_e = eregi_replace("<[^>]*>"," ",$texto_limpieza_n_i_e);
$texto_limpieza_n_i_e = eregi_replace("&nbsp;","",$texto_limpieza_n_i_e);

// Inicializamos las variables 
$tamano_n_p = 320; // tamaño máximo 
$texto_cortado_n_i = substr($texto_limpieza_n_i_e, 0 , $tamano_n_p);
echo $texto_cortado_n_i . '&nbsp;...<a href="publi.php?page=promotion&id_promotion='.$row_Recordset700['id_promotion'].'">'.READMORE.'</a>';
 ?>
 
      
 


</td>
</tr>
<tr>
<td height="20" style="background-image:url(img_web/div_little.png); background-repeat:repeat-x; background-position:center" colspan="3">
</td>
</tr>
</table>

<?php } while ($row_Recordset700 = mysql_fetch_assoc($Recordset700));?>


</td>
</tr>
</table>



<?php
mysql_free_result($Recordset700);
}
?>


 </div>

    </td>
    </tr>
    </table>  
    <?php   
    }// TERMINA ----- PROMOTION
    ?>   
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
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