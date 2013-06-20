<?php		session_start();

		if(!isset($_SESSION['MM_Username'])){		

			header('Location: login.php');			

		}

?>

<?php require_once('Connections/wa_coneccion.php'); ?>

<?php require_once('includes/languages/english/main.php'); ?>

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



// Start trigger

$formValidation = new tNG_FormValidation();

$tNGs->prepareValidation($formValidation);

// End trigger





// Start trigger



${"formValidation_D1"} = new tNG_FormValidation();

$tNGs->prepareValidation(${"formValidation_D1"});



// End trigger









//start Trigger_LinkTransactions trigger

//remove this line if you want to edit the code by hand 





function Trigger_LinkTransactions0(&$tNG) {

	global $ins_events_D0;

  $linkObj0 = new tNG_LinkedTrans($tNG, $ins_events_D0);

  $linkObj0->setLink("id_events");

  return $linkObj0->Execute();

}

function Trigger_LinkTransactions1(&$tNG) {

	global $ins_events_D1;

  $linkObj1 = new tNG_LinkedTrans($tNG, $ins_events_D1);

  $linkObj1->setLink("id_events");

  return $linkObj1->Execute();

}

function Trigger_LinkTransactions2(&$tNG) {

	global $ins_events_D2;

  $linkObj2 = new tNG_LinkedTrans($tNG, $ins_events_D2);

  $linkObj2->setLink("id_events");

  return $linkObj2->Execute();

}

function Trigger_LinkTransactions3(&$tNG) {

	global $ins_events_D3;

  $linkObj3 = new tNG_LinkedTrans($tNG, $ins_events_D3);

  $linkObj3->setLink("id_events");

  return $linkObj3->Execute();

}

function Trigger_LinkTransactions4(&$tNG) {

	global $ins_events_D4;

  $linkObj4 = new tNG_LinkedTrans($tNG, $ins_events_D4);

  $linkObj4->setLink("id_events");

  return $linkObj4->Execute();

}

function Trigger_LinkTransactions5(&$tNG) {

	global $ins_events_D5;

  $linkObj5 = new tNG_LinkedTrans($tNG, $ins_events_D5);

  $linkObj5->setLink("id_events");

  return $linkObj5->Execute();

}





















function Trigger_LinkTransactions_D0(&$tNG) {

	global $upd_events_D0;

  $linkObj0 = new tNG_LinkedTrans($tNG, $upd_events_D0);

  $linkObj0->setLink("id_events");

  return $linkObj0->Execute();

}

function Trigger_LinkTransactions_D1(&$tNG) {

	global $upd_events_D1;

  $linkObj1 = new tNG_LinkedTrans($tNG, $upd_events_D1);

  $linkObj1->setLink("id_events");

  return $linkObj1->Execute();

}

function Trigger_LinkTransactions_D2(&$tNG) {

	global $upd_events_D2;

  $linkObj2 = new tNG_LinkedTrans($tNG, $upd_events_D2);

  $linkObj2->setLink("id_events");

  return $linkObj2->Execute();

}

function Trigger_LinkTransactions_D3(&$tNG) {

	global $upd_events_D3;

  $linkObj3 = new tNG_LinkedTrans($tNG, $upd_events_D3);

  $linkObj3->setLink("id_events");

  return $linkObj3->Execute();

}

function Trigger_LinkTransactions_D4(&$tNG) {

	global $upd_events_D4;

  $linkObj4 = new tNG_LinkedTrans($tNG, $upd_events_D4);

  $linkObj4->setLink("id_events");

  return $linkObj4->Execute();

}

function Trigger_LinkTransactions_D5(&$tNG) {

	global $upd_events_D5;

  $linkObj5 = new tNG_LinkedTrans($tNG, $upd_events_D5);

  $linkObj5->setLink("id_events");

  return $linkObj5->Execute();

}







//end Trigger_LinkTransactions trigger







//start Trigger_FileDelete trigger

//remove this line if you want to edit the code by hand 

function Trigger_FileDelete(&$tNG) {

  $deleteObj = new tNG_FileDelete($tNG);

  $deleteObj->setFolder("../images/");

  $deleteObj->setDbFieldName("image_events");

  return $deleteObj->Execute();

}

//end Trigger_FileDelete trigger



//start Trigger_ImageUpload trigger

//remove this line if you want to edit the code by hand 

function Trigger_ImageUpload(&$tNG) {

  $uploadObj = new tNG_ImageUpload($tNG);

  $uploadObj->setFormFieldName("image_events");

  $uploadObj->setDbFieldName("image_events");

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

if (isset($_GET['id_events'])) {

  $colname_Recordset1 = $_GET['id_events'];

}

mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1 = sprintf("SELECT * FROM events WHERE id_events = %s", GetSQLValueString($colname_Recordset1, "int"));

$Recordset1 = mysql_query($query_Recordset1, $wa_coneccion) or die(mysql_error());

$row_Recordset1 = mysql_fetch_assoc($Recordset1);

$totalRows_Recordset1 = mysql_num_rows($Recordset1);



$colname_Recordset1_D = "-1";

if (isset($_GET['id_events'])) {

  $colname_Recordset1_D = $_GET['id_events'];

}



mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1_D = sprintf("SELECT * FROM events_description WHERE id_events = %s", GetSQLValueString($colname_Recordset1_D, "int"));

$Recordset1_D = mysql_query($query_Recordset1_D, $wa_coneccion) or die(mysql_error());

$row_Recordset1_D = mysql_fetch_assoc($Recordset1_D);

$totalRows_Recordset1_D = mysql_num_rows($Recordset1_D);











// Make an insert transaction instance

$ins_events = new tNG_insert($conn_wa_coneccion);

$tNGs->addTransaction($ins_events);

// Register triggers

$ins_events->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Insert1");

$ins_events->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$ins_events->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");





$ins_events->registerTrigger("AFTER", "Trigger_LinkTransactions1", 98);

$ins_events->registerTrigger("ERROR", "Trigger_LinkTransactions1", 98);





$ins_events->registerTrigger("AFTER", "Trigger_ImageUpload", 97);

// Add columns

$ins_events->setTable("events");

$ins_events->addColumn("image_events", "FILE_TYPE", "FILES", "image_events");

$ins_events->addColumn("date_events", "STRING_TYPE", "POST", "date_events");

$ins_events->setPrimaryKey("id_events", "NUMERIC_TYPE");



// Make an update transaction instance

$upd_events = new tNG_update($conn_wa_coneccion);

$tNGs->addTransaction($upd_events);

// Register triggers

$upd_events->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Update1");

$upd_events->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$upd_events->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");





$upd_events->registerTrigger("AFTER", "Trigger_LinkTransactions_D1", 98);

$upd_events->registerTrigger("ERROR", "Trigger_LinkTransactions_D1", 98);





$upd_events->registerConditionalTrigger("{image_events} != \"\"", "AFTER", "Trigger_ImageUpload", 97);

// Add columns

$upd_events->setTable("events");

$upd_events->addColumn("image_events", "FILE_TYPE", "FILES", "image_events");

$upd_events->addColumn("date_events", "STRING_TYPE", "POST", "date_events");

$upd_events->setPrimaryKey("id_events", "NUMERIC_TYPE", "GET", "id_events");









// Make an insert transaction instance

${"ins_events_D1"} = new tNG_insert($conn_wa_coneccion);

$tNGs->addTransaction(${"ins_events_D1"});

// Register triggers

${"ins_events_D1"}->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "VALUE", null);

${"ins_events_D1"}->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, ${"formValidation_D1"});

// Add columns

${"ins_events_D1"}->setTable("events_description");

${"ins_events_D1"}->addColumn("title_events", "STRING_TYPE", "POST", "title_events_1");

${"ins_events_D1"}->addColumn("content_events", "STRING_TYPE", "POST", "FCKeditor_1");

${"ins_events_D1"}->addColumn("id_language", "NUMERIC_TYPE", "POST", "id_language_1");

${"ins_events_D1"}->addColumn("id_events", "NUMERIC_TYPE", "VALUE", "");

${"ins_events_D1"}->setPrimaryKey("id_events_description", "NUMERIC_TYPE");



// Make an update transaction instance

${"upd_events_D1"} = new tNG_update($conn_wa_coneccion);

$tNGs->addTransaction(${"upd_events_D1"});

// Register triggers

${"upd_events_D1"}->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "VALUE", null);

${"upd_events_D1"}->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, ${"formValidation_D1"});

// Add columns

${"upd_events_D1"}->setTable("events_description");

${"upd_events_D1"}->addColumn("title_events", "STRING_TYPE", "POST", "title_events_1");

${"upd_events_D1"}->addColumn("content_events", "STRING_TYPE", "POST", "FCKeditor_1");

${"upd_events_D1"}->addColumn("id_language", "NUMERIC_TYPE", "POST", "id_language_1");

${"upd_events_D1"}->addColumn("id_events", "NUMERIC_TYPE", "GET", "id_events");

${"upd_events_D1"}->setPrimaryKey("id_events_description", "NUMERIC_TYPE", "POST", "id_events_description_1");



// Make an instance of the transaction object

${"del_events_D1"} = new tNG_delete($conn_wa_coneccion);

$tNGs->addTransaction(${"del_events_D1"});

// Register triggers

${"del_events_D1"}->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Delete1");

// Add columns

${"del_events_D1"}->setTable("events_description");

${"del_events_D1"}->setPrimaryKey("id_events_description", "NUMERIC_TYPE", "POST", "id_events_description_1");









// Make an instance of the transaction object

$del_events = new tNG_delete($conn_wa_coneccion);

$tNGs->addTransaction($del_events);

// Register triggers

$del_events->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Delete1");

$del_events->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

$del_events->registerTrigger("AFTER", "Trigger_FileDelete", 98);

// Add columns

$del_events->setTable("events");

$del_events->setPrimaryKey("id_events", "NUMERIC_TYPE", "GET", "id_events");



// Execute all the registered transactions

$tNGs->executeTransactions();



// Get the transaction recordset

$rsevents = $tNGs->getRecordset("events");

$row_rsevents = mysql_fetch_assoc($rsevents);

$totalRows_rsevents = mysql_num_rows($rsevents);



// Get the transaction recordset

$rsevents_D = $tNGs->getRecordset("events_description");

$row_rsevents_D = mysql_fetch_assoc($rsevents_D);

$totalRows_rsevents_D = mysql_num_rows($rsevents_D);





// Show Dynamic Thumbnail

$objDynamicThumb1 = new tNG_DynamicThumbnail("", "KT_thumbnail1");

$objDynamicThumb1->setFolder("../images/");

$objDynamicThumb1->setRenameRule("{Recordset1.image_events}");

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







	var oFCKeditor = new FCKeditor( 'FCKeditor_1' ) ;



	oFCKeditor.ToolbarSet = 'Basic' ;

		

	oFCKeditor.BasePath	= 'fckeditor/' ;



	oFCKeditor.ReplaceTextarea() ;





}



	</script>

</head>



<body>



<div class="subtitulo">&nbsp;</div><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/logo2.png"/><br />

<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="titulo">Special Reports</span>





<div class="main">

<br><br>



<?php

	echo $tNGs->getErrorMsg();

?>

<div class="KT_tng">



  <div class="KT_tngform">

    <form method="post" id="form1" action="<?php echo KT_escapeAttribute(KT_getFullUri()); ?>" enctype="multipart/form-data">



        <table cellpadding="2" cellspacing="0" class="KT_tngtable" width="800">

          <tr>

            <td class="KT_th"><label for="title_events"><?php echo TITLE; ?></label></td>

            <td >



 <?php           

if (isset($_GET['id_events'])) {

?>



<input type="hidden" name="date_events" id="date_events" value="<?php echo KT_escapeAttribute($row_rsevents['date_events']); ?>" size="50" maxlength="200" />&nbsp;&nbsp;<?php echo $row_rsevents['date_events']; ?>



<?php

} else {

?>



<input type="hidden" name="date_events" id="date_events" value="<?php echo date("F j, Y, g:i a"); ?>" size="50" maxlength="200" />&nbsp;&nbsp;<?php echo date("F j, Y, g:i a"); ?>



<?php

}

?>  

<br />



<?php



?>

<?php

mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1_D_1 = sprintf("SELECT * FROM events_description WHERE id_events = %s AND id_language = 1", GetSQLValueString($colname_Recordset1_D, "int"));

$Recordset1_D_1 = mysql_query($query_Recordset1_D_1, $wa_coneccion) or die(mysql_error());

$row_Recordset1_D_1 = mysql_fetch_assoc($Recordset1_D_1);

$totalRows_Recordset1_D_1 = mysql_num_rows($Recordset1_D_1);

?>



           

<input type="text" name="title_events_1" id="title_events_1" value="<?php echo KT_escapeAttribute($row_Recordset1_D_1['title_events']); ?>" size="50" maxlength="200" style="font-size:14px;"/>&nbsp;&nbsp;<?php echo $name_language_array[$language]; ?>



<?php echo $tNGs->displayFieldHint("title_events");?> <?php echo $tNGs->displayFieldError("events", "title_events", $cnt1); ?>

<input type="hidden" name="id_language_1" id="id_language_1" value="<?php echo 1; ?>" size="50" maxlength="200" />

<input type="hidden" name="id_events_description_1" id="id_events_description_1" value="<?php echo KT_escapeAttribute($row_Recordset1_D_1['id_events_description']); ?>" size="50" maxlength="200" />

<br />

<?php



?>







                

 

                            </td>

          </tr>

          <tr>

            <td class="KT_th"><label for="content_events"><?php echo CONTENT; ?></label></td>

            <td height="350">

<?php



?>

<?php

mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1_D_2 = sprintf("SELECT * FROM events_description WHERE id_events = %s AND id_language = 1", GetSQLValueString($colname_Recordset1_D, "int"));

$Recordset1_D_2 = mysql_query($query_Recordset1_D_2, $wa_coneccion) or die(mysql_error());

$row_Recordset1_D_2 = mysql_fetch_assoc($Recordset1_D_2);

$totalRows_Recordset1_D_2 = mysql_num_rows($Recordset1_D_2);

?>

     

           &nbsp;<?php echo $name_language_array[$language]; ?><br /><textarea name="FCKeditor_1" id="content_events_1" cols="100" rows="20"><?php echo KT_escapeAttribute($row_Recordset1_D_2['content_events']); ?></textarea>

                <?php echo $tNGs->displayFieldHint("content_events");?> <?php echo $tNGs->displayFieldError("events", "content_events", $cnt1); ?><br />



<?php



?>           



</td>

          </tr>

          <tr>

            <td class="KT_th"><label for="image_events"><?php echo IMAGE; ?></label></td>

            <td><input type="file" name="image_events" id="image_events" size="32" /><br />

<br />

            

            



<?php if (!empty($row_rsevents['image_events'])) { // Show if recordset not empty ?>

<img src="<?php echo $objDynamicThumb1->Execute(); ?>" border="0" />&nbsp;<?php echo KT_escapeAttribute($row_rsevents['image_events']); ?>&nbsp;<br />

<br />

<?php } // Show if recordset not empty ?>





<?php echo $tNGs->displayFieldError("events", "image_events", $cnt1); ?>

<span class="alert">

<?php echo TEXTO11; ?>

</span></td>

          </tr>

        </table>



      <div class="KT_bottombuttons">

        <div>

          <?php 

      // Show IF Conditional region1

      if (@$_GET['id_events'] == "") {

      ?>

            <input type="submit" name="KT_Insert1" id="KT_Insert1" value="<?php echo INSERT; ?>" />

            <?php 

      // else Conditional region1

      } else { ?>

            <div class="KT_operations">

              <input type="submit" name="KT_Insert1" value="<?php echo INSERTASNEW; ?>" onclick="nxt_form_insertasnew(this, 'id_events')" />

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