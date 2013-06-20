<?php		session_start();

		if(!isset($_SESSION['MM_Username'])){		

			header('Location: login.php');			

		}

?>

<?php require('includes/application_top.php');?>

<?php require_once('Connections/wa_coneccion.php'); ?>

<?php

// Load the common classes

require_once('includes/common/KT_common.php');



// Load the tNG classes

require_once('includes/tng/tNG.inc.php');



// Load the KT_back class

require_once('includes/nxt/KT_back.php');



// Make a transaction dispatcher instance

$tNGs = new tNG_dispatcher("");



// Make unified connection variable

$conn_wa_coneccion = new KT_connection($wa_coneccion, $database_wa_coneccion);



//Start Restrict Access To Page

//$restrict = new tNG_RestrictAccess($conn_wa_coneccion, "");

//Grand Levels: Any

//$restrict->Execute();

//End Restrict Access To Page



$languages = tep_get_languages();



// Start trigger

$formValidation = new tNG_FormValidation();

$tNGs->prepareValidation($formValidation);

// End trigger





// Start trigger

for ($language_i = 0; $language_i < sizeof($languages); $language_i++) {

${"formValidation_D".$language_i} = new tNG_FormValidation();

$tNGs->prepareValidation(${"formValidation_D".$language_i});

}

// End trigger









//start Trigger_LinkTransactions trigger

//remove this line if you want to edit the code by hand 





function Trigger_LinkTransactions0(&$tNG) {

	global $ins_news_D0;

  $linkObj0 = new tNG_LinkedTrans($tNG, $ins_news_D0);

  $linkObj0->setLink("id_news");

  return $linkObj0->Execute();

}

function Trigger_LinkTransactions1(&$tNG) {

	global $ins_news_D1;

  $linkObj1 = new tNG_LinkedTrans($tNG, $ins_news_D1);

  $linkObj1->setLink("id_news");

  return $linkObj1->Execute();

}

function Trigger_LinkTransactions2(&$tNG) {

	global $ins_news_D2;

  $linkObj2 = new tNG_LinkedTrans($tNG, $ins_news_D2);

  $linkObj2->setLink("id_news");

  return $linkObj2->Execute();

}

function Trigger_LinkTransactions3(&$tNG) {

	global $ins_news_D3;

  $linkObj3 = new tNG_LinkedTrans($tNG, $ins_news_D3);

  $linkObj3->setLink("id_news");

  return $linkObj3->Execute();

}

function Trigger_LinkTransactions4(&$tNG) {

	global $ins_news_D4;

  $linkObj4 = new tNG_LinkedTrans($tNG, $ins_news_D4);

  $linkObj4->setLink("id_news");

  return $linkObj4->Execute();

}

function Trigger_LinkTransactions5(&$tNG) {

	global $ins_news_D5;

  $linkObj5 = new tNG_LinkedTrans($tNG, $ins_news_D5);

  $linkObj5->setLink("id_news");

  return $linkObj5->Execute();

}





















function Trigger_LinkTransactions_D0(&$tNG) {

	global $upd_news_D0;

  $linkObj0 = new tNG_LinkedTrans($tNG, $upd_news_D0);

  $linkObj0->setLink("id_news");

  return $linkObj0->Execute();

}

function Trigger_LinkTransactions_D1(&$tNG) {

	global $upd_news_D1;

  $linkObj1 = new tNG_LinkedTrans($tNG, $upd_news_D1);

  $linkObj1->setLink("id_news");

  return $linkObj1->Execute();

}

function Trigger_LinkTransactions_D2(&$tNG) {

	global $upd_news_D2;

  $linkObj2 = new tNG_LinkedTrans($tNG, $upd_news_D2);

  $linkObj2->setLink("id_news");

  return $linkObj2->Execute();

}

function Trigger_LinkTransactions_D3(&$tNG) {

	global $upd_news_D3;

  $linkObj3 = new tNG_LinkedTrans($tNG, $upd_news_D3);

  $linkObj3->setLink("id_news");

  return $linkObj3->Execute();

}

function Trigger_LinkTransactions_D4(&$tNG) {

	global $upd_news_D4;

  $linkObj4 = new tNG_LinkedTrans($tNG, $upd_news_D4);

  $linkObj4->setLink("id_news");

  return $linkObj4->Execute();

}

function Trigger_LinkTransactions_D5(&$tNG) {

	global $upd_news_D5;

  $linkObj5 = new tNG_LinkedTrans($tNG, $upd_news_D5);

  $linkObj5->setLink("id_news");

  return $linkObj5->Execute();

}







//end Trigger_LinkTransactions trigger







//start Trigger_FileDelete trigger

//remove this line if you want to edit the code by hand 

function Trigger_FileDelete(&$tNG) {

  $deleteObj = new tNG_FileDelete($tNG);

  $deleteObj->setFolder("../images/");

  $deleteObj->setDbFieldName("image_news");

  return $deleteObj->Execute();

}

//end Trigger_FileDelete trigger



//start Trigger_ImageUpload trigger

//remove this line if you want to edit the code by hand 

function Trigger_ImageUpload(&$tNG) {

  $uploadObj = new tNG_ImageUpload($tNG);

  $uploadObj->setFormFieldName("image_news");

  $uploadObj->setDbFieldName("image_news");

  $uploadObj->setFolder("../images/");

  $uploadObj->setResize("true", 250, 250);

  $uploadObj->setMaxSize(3000);

  $uploadObj->setAllowedExtensions("gif, jpg, jpe, jpeg, png");

  $uploadObj->setRename("auto");

  return $uploadObj->Execute();

}

//end Trigger_ImageUpload trigger



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



$colname_Recordset1 = "-1";

if (isset($_GET['id_news'])) {

  $colname_Recordset1 = $_GET['id_news'];

}

mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1 = sprintf("SELECT * FROM news WHERE id_news = %s", GetSQLValueString($colname_Recordset1, "int"));

$Recordset1 = mysql_query($query_Recordset1, $wa_coneccion) or die(mysql_error());

$row_Recordset1 = mysql_fetch_assoc($Recordset1);

$totalRows_Recordset1 = mysql_num_rows($Recordset1);



$colname_Recordset1_D = "-1";

if (isset($_GET['id_news'])) {

  $colname_Recordset1_D = $_GET['id_news'];

}



mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1_D = sprintf("SELECT * FROM news_description WHERE id_news = %s", GetSQLValueString($colname_Recordset1_D, "int"));

$Recordset1_D = mysql_query($query_Recordset1_D, $wa_coneccion) or die(mysql_error());

$row_Recordset1_D = mysql_fetch_assoc($Recordset1_D);

$totalRows_Recordset1_D = mysql_num_rows($Recordset1_D);











// Make an insert transaction instance

$ins_news = new tNG_insert($conn_wa_coneccion);

$tNGs->addTransaction($ins_news);

// Register triggers

$ins_news->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Insert1");

$ins_news->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$ins_news->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");



for ($language_i = 0; $language_i < sizeof($languages); $language_i++) {

$ins_news->registerTrigger("AFTER", "Trigger_LinkTransactions".$language_i, 98);

$ins_news->registerTrigger("ERROR", "Trigger_LinkTransactions".$language_i, 98);

}



$ins_news->registerTrigger("AFTER", "Trigger_ImageUpload", 97);

// Add columns

$ins_news->setTable("news");

$ins_news->addColumn("image_news", "FILE_TYPE", "FILES", "image_news");

$ins_news->addColumn("date_news", "STRING_TYPE", "POST", "date_news");

$ins_news->setPrimaryKey("id_news", "NUMERIC_TYPE");



// Make an update transaction instance

$upd_news = new tNG_update($conn_wa_coneccion);

$tNGs->addTransaction($upd_news);

// Register triggers

$upd_news->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Update1");

$upd_news->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$upd_news->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");



for ($language_i = 0; $language_i < sizeof($languages); $language_i++) {

$upd_news->registerTrigger("AFTER", "Trigger_LinkTransactions_D".$language_i, 98);

$upd_news->registerTrigger("ERROR", "Trigger_LinkTransactions_D".$language_i, 98);

}



$upd_news->registerConditionalTrigger("{image_news} != \"\"", "AFTER", "Trigger_ImageUpload", 97);

// Add columns

$upd_news->setTable("news");

$upd_news->addColumn("image_news", "FILE_TYPE", "FILES", "image_news");

$upd_news->addColumn("date_news", "STRING_TYPE", "POST", "date_news");

$upd_news->setPrimaryKey("id_news", "NUMERIC_TYPE", "GET", "id_news");





for ($language_i = 0; $language_i < sizeof($languages); $language_i++) {



// Make an insert transaction instance

${"ins_news_D".$language_i} = new tNG_insert($conn_wa_coneccion);

$tNGs->addTransaction(${"ins_news_D".$language_i});

// Register triggers

${"ins_news_D".$language_i}->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "VALUE", null);

${"ins_news_D".$language_i}->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, ${"formValidation_D".$language_i});

// Add columns

${"ins_news_D".$language_i}->setTable("news_description");

${"ins_news_D".$language_i}->addColumn("title_news", "STRING_TYPE", "POST", "title_news_".$language_i);

${"ins_news_D".$language_i}->addColumn("description_news", "STRING_TYPE", "POST", "description_news_".$language_i);

${"ins_news_D".$language_i}->addColumn("keyword_news", "STRING_TYPE", "POST", "keyword_news_".$language_i);

${"ins_news_D".$language_i}->addColumn("h1_news", "STRING_TYPE", "POST", "h1_news_".$language_i);

${"ins_news_D".$language_i}->addColumn("content_news", "STRING_TYPE", "POST", "FCKeditor_".$language_i);

${"ins_news_D".$language_i}->addColumn("id_language", "NUMERIC_TYPE", "POST", "id_language_".$language_i);

${"ins_news_D".$language_i}->addColumn("id_news", "NUMERIC_TYPE", "VALUE", "");

${"ins_news_D".$language_i}->setPrimaryKey("id_news_description", "NUMERIC_TYPE");



// Make an update transaction instance

${"upd_news_D".$language_i} = new tNG_update($conn_wa_coneccion);

$tNGs->addTransaction(${"upd_news_D".$language_i});

// Register triggers

${"upd_news_D".$language_i}->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "VALUE", null);

${"upd_news_D".$language_i}->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, ${"formValidation_D".$language_i});

// Add columns

${"upd_news_D".$language_i}->setTable("news_description");

${"upd_news_D".$language_i}->addColumn("title_news", "STRING_TYPE", "POST", "title_news_".$language_i);

${"upd_news_D".$language_i}->addColumn("description_news", "STRING_TYPE", "POST", "description_news_".$language_i);

${"upd_news_D".$language_i}->addColumn("keyword_news", "STRING_TYPE", "POST", "keyword_news_".$language_i);

${"upd_news_D".$language_i}->addColumn("h1_news", "STRING_TYPE", "POST", "h1_news_".$language_i);

${"upd_news_D".$language_i}->addColumn("content_news", "STRING_TYPE", "POST", "FCKeditor_".$language_i);

${"upd_news_D".$language_i}->addColumn("id_language", "NUMERIC_TYPE", "POST", "id_language_".$language_i);

${"upd_news_D".$language_i}->addColumn("id_news", "NUMERIC_TYPE", "GET", "id_news");

${"upd_news_D".$language_i}->setPrimaryKey("id_news_description", "NUMERIC_TYPE", "POST", "id_news_description_".$language_i);



// Make an instance of the transaction object

${"del_news_D".$language_i} = new tNG_delete($conn_wa_coneccion);

$tNGs->addTransaction(${"del_news_D".$language_i});

// Register triggers

${"del_news_D".$language_i}->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Delete1");

// Add columns

${"del_news_D".$language_i}->setTable("news_description");

${"del_news_D".$language_i}->setPrimaryKey("id_news_description", "NUMERIC_TYPE", "POST", "id_news_description_".$language_i);



}





// Make an instance of the transaction object

$del_news = new tNG_delete($conn_wa_coneccion);

$tNGs->addTransaction($del_news);

// Register triggers

$del_news->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Delete1");

$del_news->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

$del_news->registerTrigger("AFTER", "Trigger_FileDelete", 98);

// Add columns

$del_news->setTable("news");

$del_news->setPrimaryKey("id_news", "NUMERIC_TYPE", "GET", "id_news");



// Execute all the registered transactions

$tNGs->executeTransactions();



// Get the transaction recordset

$rsnews = $tNGs->getRecordset("news");

$row_rsnews = mysql_fetch_assoc($rsnews);

$totalRows_rsnews = mysql_num_rows($rsnews);



// Get the transaction recordset

$rsnews_D = $tNGs->getRecordset("news_description");

$row_rsnews_D = mysql_fetch_assoc($rsnews_D);

$totalRows_rsnews_D = mysql_num_rows($rsnews_D);





// Show Dynamic Thumbnail

$objDynamicThumb1 = new tNG_DynamicThumbnail("", "KT_thumbnail1");

$objDynamicThumb1->setFolder("../images/");

$objDynamicThumb1->setRenameRule("{Recordset1.image_news}");

$objDynamicThumb1->setResize(100, 100, true);

$objDynamicThumb1->setWatermark(false);



?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>TA package - Apolomultimedia.com</title>

<link href="includes/skins/mxkollection3.css" rel="stylesheet" type="text/css" media="all" />

<link href="estilosadmin.css" rel="stylesheet" type="text/css" />

<script src="includes/common/js/base.js" type="text/javascript"></script>

<script src="includes/common/js/utility.js" type="text/javascript"></script>

<script src="includes/skins/style.js" type="text/javascript"></script>

<?php echo $tNGs->displayValidationRules();?>

<script src="includes/nxt/scripts/form.js" type="text/javascript"></script>

<script src="includes/nxt/scripts/form.js.php" type="text/javascript"></script>

<script type="text/javascript">

$NXT_FORM_SETTINGS = {

  duplicate_buttons: true,

  show_as_grid: true,

  merge_down_value: true

}

</script>

<script type="text/javascript" src="fckeditor/fckeditor.js"></script>

	<script type="text/javascript">



window.onload = function()

{



	// Automatically calculates the editor base path based on the _samples directory.

	// This is usefull only for these samples. A real application should use something like this:

	// oFCKeditor.BasePath = '/fckeditor/' ;	// '/fckeditor/' is the default value.







for (i=0;i<<?php echo sizeof($languages);?>;i++){



	var oFCKeditor = new FCKeditor( 'FCKeditor_' + i) ;

	

	oFCKeditor.ToolbarSet = 'Basic' ;

	

	oFCKeditor.BasePath	= 'fckeditor/' ;



	oFCKeditor.ReplaceTextarea() ;

	} 

	

}



	</script>

</head>



<body>



<div class="subtitulo">&nbsp;</div><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/logo2.png"/><br />

<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="titulo">BLOG</span>





<div class="main">



<br><br>



<?php

	echo $tNGs->getErrorMsg();

?>

<div class="KT_tng">



  <div class="KT_tngform">

    <form method="post" id="form1" action="<?php echo KT_escapeAttribute(KT_getFullUri()); ?>" enctype="multipart/form-data">



 <?php           

if (isset($_GET['id_news'])) {

?>



<input type="hidden" name="date_news" id="date_news" value="<?php echo KT_escapeAttribute($row_rsnews['date_news']); ?>" size="50" maxlength="200" />&nbsp;&nbsp;<?php echo $row_rsnews['date_news']; ?>



<?php

} else {

?>



<input type="hidden" name="date_news" id="date_news" value="<?php echo date("F j, Y, g:i a"); ?>" size="50" maxlength="200" />&nbsp;&nbsp;<?php echo date("F j, Y, g:i a"); ?>



<?php

}

?>  

<br />





        <table cellpadding="2" cellspacing="0" class="KT_tngtable" width="800">

          <tr>



            <td class="KT_th" colspan="2">



<table cellpadding="0" cellspacing="0" border="0" width="100%">



<tr>

<td width="19%"  class="KT_th" >

URL</td>

<td width="81%"  class="KT_th" >

<?php

for ($language_i = 0; $language_i < sizeof($languages); $language_i++) {

$language_id = $languages[$language_i]['id'];

?>

<?php

mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1_D_1 = sprintf("SELECT * FROM news_description WHERE id_news = %s AND id_language = ".$language_id."", GetSQLValueString($colname_Recordset1_D, "int"));

$Recordset1_D_1 = mysql_query($query_Recordset1_D_1, $wa_coneccion) or die(mysql_error());

$row_Recordset1_D_1 = mysql_fetch_assoc($Recordset1_D_1);

$totalRows_Recordset1_D_1 = mysql_num_rows($Recordset1_D_1);

?>

<input type="text" name="h1_news_<?php echo $language_i; ?>" id="h1_news_<?php echo $language_i; ?>" value="<?php echo KT_escapeAttribute($row_Recordset1_D_1['h1_news']); ?>" size="50" maxlength="200" style="font-size:14px;"/>&nbsp;&nbsp;<?php echo tep_image(DIR_WS_CATALOG_LANGUAGES . $languages[$language_i]['directory'] . '/images/' . $languages[$language_i]['image'], $languages[$language_i]['name']); ?>





<input type="hidden" name="id_language_<?php echo $language_i; ?>" id="id_language_<?php echo $language_i; ?>" value="<?php echo $language_id; ?>" size="50" maxlength="200" />

<input type="hidden" name="id_news_description_<?php echo $language_i; ?>" id="id_news_description_<?php echo $language_i; ?>" value="<?php echo KT_escapeAttribute($row_Recordset1_D_1['id_news_description']); ?>" size="50" maxlength="200" />





<?php echo $tNGs->displayFieldHint("h1_news");?> <?php echo $tNGs->displayFieldError("news", "h1_news", $cnt1); ?><br /><br />

<?php

}

?>

</td>

</tr>







<tr>

<td  class="KT_th" >

TITLE

</td>

<td  class="KT_th" >

<?php

for ($language_i = 0; $language_i < sizeof($languages); $language_i++) {

$language_id = $languages[$language_i]['id'];

?>

<?php

mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1_D_1 = sprintf("SELECT * FROM news_description WHERE id_news = %s AND id_language = ".$language_id."", GetSQLValueString($colname_Recordset1_D, "int"));

$Recordset1_D_1 = mysql_query($query_Recordset1_D_1, $wa_coneccion) or die(mysql_error());

$row_Recordset1_D_1 = mysql_fetch_assoc($Recordset1_D_1);

$totalRows_Recordset1_D_1 = mysql_num_rows($Recordset1_D_1);

?>          

<input type="text" name="title_news_<?php echo $language_i; ?>" id="title_news_<?php echo $language_i; ?>" value="<?php echo KT_escapeAttribute($row_Recordset1_D_1['title_news']); ?>" size="50" maxlength="200" style="font-size:14px;"/>&nbsp;&nbsp;<?php echo tep_image(DIR_WS_CATALOG_LANGUAGES . $languages[$language_i]['directory'] . '/images/' . $languages[$language_i]['image'], $languages[$language_i]['name']); ?>

<?php echo $tNGs->displayFieldHint("title_news");?> <?php echo $tNGs->displayFieldError("news", "title_news", $cnt1); ?><br /><br />

<?php

}

?>

</td>

</tr>







<tr>

<td  class="KT_th" >

META DESCRIPTION

</td>

<td  class="KT_th" >

<?php

for ($language_i = 0; $language_i < sizeof($languages); $language_i++) {

$language_id = $languages[$language_i]['id'];

?>

<?php

mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1_D_1 = sprintf("SELECT * FROM news_description WHERE id_news = %s AND id_language = ".$language_id."", GetSQLValueString($colname_Recordset1_D, "int"));

$Recordset1_D_1 = mysql_query($query_Recordset1_D_1, $wa_coneccion) or die(mysql_error());

$row_Recordset1_D_1 = mysql_fetch_assoc($Recordset1_D_1);

$totalRows_Recordset1_D_1 = mysql_num_rows($Recordset1_D_1);

?>

<input type="text" name="description_news_<?php echo $language_i; ?>" id="description_news_<?php echo $language_i; ?>" value="<?php echo KT_escapeAttribute($row_Recordset1_D_1['description_news']); ?>" size="50" maxlength="200" style="font-size:14px;"/>&nbsp;&nbsp;<?php echo tep_image(DIR_WS_CATALOG_LANGUAGES . $languages[$language_i]['directory'] . '/images/' . $languages[$language_i]['image'], $languages[$language_i]['name']); ?>

<?php echo $tNGs->displayFieldHint("description_news");?> <?php echo $tNGs->displayFieldError("news", "description_news", $cnt1); ?><br /><br />

<?php

}

?>

</td>

</tr>







<tr>

<td  class="KT_th" >

META KEYWORDS

</td>

<td  class="KT_th" >

<?php

for ($language_i = 0; $language_i < sizeof($languages); $language_i++) {

$language_id = $languages[$language_i]['id'];

?>

<?php

mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1_D_1 = sprintf("SELECT * FROM news_description WHERE id_news = %s AND id_language = ".$language_id."", GetSQLValueString($colname_Recordset1_D, "int"));

$Recordset1_D_1 = mysql_query($query_Recordset1_D_1, $wa_coneccion) or die(mysql_error());

$row_Recordset1_D_1 = mysql_fetch_assoc($Recordset1_D_1);

$totalRows_Recordset1_D_1 = mysql_num_rows($Recordset1_D_1);

?>

<input type="text" name="keyword_news_<?php echo $language_i; ?>" id="keyword_news_<?php echo $language_i; ?>" value="<?php echo KT_escapeAttribute($row_Recordset1_D_1['keyword_news']); ?>" size="50" maxlength="200" style="font-size:14px;"/>&nbsp;&nbsp;<?php echo tep_image(DIR_WS_CATALOG_LANGUAGES . $languages[$language_i]['directory'] . '/images/' . $languages[$language_i]['image'], $languages[$language_i]['name']); ?>

<?php echo $tNGs->displayFieldHint("keyword_news");?> <?php echo $tNGs->displayFieldError("news", "keyword_news", $cnt1); ?><br /><br />

<?php

}

?>

</td>

</tr>

</table>







 

                            </td>

          </tr>

          <tr>

            <td class="KT_th"><label for="content_news"><?php echo CONTENT; ?></label></td>

            <td height="350">

<?php

for ($language_i = 0; $language_i < sizeof($languages); $language_i++) {

$language_id = $languages[$language_i]['id'];

?>

<?php

mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1_D_2 = sprintf("SELECT * FROM news_description WHERE id_news = %s AND id_language = ".$language_id."", GetSQLValueString($colname_Recordset1_D, "int"));

$Recordset1_D_2 = mysql_query($query_Recordset1_D_2, $wa_coneccion) or die(mysql_error());

$row_Recordset1_D_2 = mysql_fetch_assoc($Recordset1_D_2);

$totalRows_Recordset1_D_2 = mysql_num_rows($Recordset1_D_2);

?>

     

           &nbsp;<?php echo tep_image(DIR_WS_CATALOG_LANGUAGES . $languages[$language_i]['directory'] . '/images/' . $languages[$language_i]['image'], $languages[$language_i]['name']); ?><br /><textarea name="FCKeditor_<?php echo $language_i; ?>" id="content_news_<?php echo $language_i; ?>" cols="100" rows="20"><?php echo KT_escapeAttribute($row_Recordset1_D_2['content_news']); ?></textarea>

                <?php echo $tNGs->displayFieldHint("content_news");?> <?php echo $tNGs->displayFieldError("news", "content_news", $cnt1); ?><br />



<?php

}

?>           



</td>

          </tr>

          <tr>

            <td class="KT_th"><label for="image_news"><?php echo IMAGE; ?></label></td>

            <td><input type="file" name="image_news" id="image_news" size="32" /><br />

<br />

            

            



<?php if (!empty($row_rsnews['image_news'])) { // Show if recordset not empty ?>

<img src="<?php echo $objDynamicThumb1->Execute(); ?>" border="0" />&nbsp;<?php echo KT_escapeAttribute($row_rsnews['image_news']); ?>&nbsp;<br />

<br />

<?php } // Show if recordset not empty ?>





<?php echo $tNGs->displayFieldError("news", "image_news", $cnt1); ?>

<span class="alert">

<?php echo TEXTO11; ?>

</span></td>

          </tr>

        </table>



      <div class="KT_bottombuttons">

        <div>

          <?php 

      // Show IF Conditional region1

      if (@$_GET['id_news'] == "") {

      ?>

            <input type="submit" name="KT_Insert1" id="KT_Insert1" value="<?php echo INSERT; ?>" />

            <?php 

      // else Conditional region1

      } else { ?>

            <div class="KT_operations">

              <input type="submit" name="KT_Insert1" value="<?php echo INSERTASNEW; ?>" onclick="nxt_form_insertasnew(this, 'id_news')" />

            </div>

            <input type="submit" name="KT_Update1" value="<?php echo UPDATE; ?>" />

            <input type="submit" name="KT_Delete1" value="<?php echo DELETE; ?>" onclick="return confirm('<?php echo AREYOUSURE; ?>');" />

            <?php }

      // endif Conditional region1

      ?>

          <input type="button" name="KT_Cancel1" value="<?php echo CANCEL; ?>" onclick="return UNI_navigateCancel(event, 'includes/nxt/back.php')" />

        </div>

      </div>

    </form>

  </div>

  <br class="clearfixplain" />

</div>



</div>





</body>

</html>

<?php

mysql_free_result($Recordset1);

?>

<?php

mysql_free_result($Recordset1_D);

?>

<?php

mysql_free_result($Recordset1_D_1);

?>

<?php

mysql_free_result($Recordset1_D_2);

?>