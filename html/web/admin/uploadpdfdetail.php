<?php		session_start();

		if(!isset($_SESSION['MM_Username'])){		

			header('Location: login.php');			

		}

?>

<?php require_once('Connections/comte.php'); ?>

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

$conn_comte = new KT_connection($comte, $database_comte);



// Start trigger

$formValidation = new tNG_FormValidation();

$tNGs->prepareValidation($formValidation);

// End trigger



//start Trigger_FileDelete trigger

//remove this line if you want to edit the code by hand 

function Trigger_FileDelete(&$tNG) {

  $deleteObj = new tNG_FileDelete($tNG);

  $deleteObj->setFolder("pdf/");

  $deleteObj->setDbFieldName("file_uploadpdf");

  return $deleteObj->Execute();

}

//end Trigger_FileDelete trigger



//start Trigger_FileUpload trigger

//remove this line if you want to edit the code by hand 

function Trigger_FileUpload(&$tNG) {

  $uploadObj = new tNG_FileUpload($tNG);

  $uploadObj->setFormFieldName("file_uploadpdf");

  $uploadObj->setDbFieldName("file_uploadpdf");

  $uploadObj->setFolder("../pdf/");

  $uploadObj->setMaxSize(10000);

  $uploadObj->setAllowedExtensions("doc, pdf, xls, docx, xlsx");

  $uploadObj->setRename("auto");

  return $uploadObj->Execute();

}

//end Trigger_FileUpload trigger



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



mysql_select_db($database_comte, $comte);

$query_Recordset1pdfupload = "SELECT * FROM uploadpdf";

$Recordset1pdfupload = mysql_query($query_Recordset1pdfupload, $comte) or die(mysql_error());

$row_Recordset1pdfupload = mysql_fetch_assoc($Recordset1pdfupload);

$totalRows_Recordset1pdfupload = mysql_num_rows($Recordset1pdfupload);



// Make an insert transaction instance

$ins_uploadpdf = new tNG_multipleInsert($conn_comte);

$tNGs->addTransaction($ins_uploadpdf);

// Register triggers

$ins_uploadpdf->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Insert1");

$ins_uploadpdf->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$ins_uploadpdf->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

$ins_uploadpdf->registerTrigger("AFTER", "Trigger_FileUpload", 97);

// Add columns

$ins_uploadpdf->setTable("uploadpdf");

$ins_uploadpdf->addColumn("name_uploadpdf", "STRING_TYPE", "POST", "name_uploadpdf");

$ins_uploadpdf->addColumn("file_uploadpdf", "FILE_TYPE", "FILES", "file_uploadpdf");

$ins_uploadpdf->setPrimaryKey("id_uploadpdf", "NUMERIC_TYPE");



// Make an update transaction instance

$upd_uploadpdf = new tNG_multipleUpdate($conn_comte);

$tNGs->addTransaction($upd_uploadpdf);

// Register triggers

$upd_uploadpdf->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Update1");

$upd_uploadpdf->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$upd_uploadpdf->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

$upd_uploadpdf->registerConditionalTrigger("{file_uploadpdf} != \"\"", "AFTER", "Trigger_FileUpload", 97);

// Add columns

$upd_uploadpdf->setTable("uploadpdf");

$upd_uploadpdf->addColumn("name_uploadpdf", "STRING_TYPE", "POST", "name_uploadpdf");

$upd_uploadpdf->addColumn("file_uploadpdf", "FILE_TYPE", "FILES", "file_uploadpdf");

$upd_uploadpdf->setPrimaryKey("id_uploadpdf", "NUMERIC_TYPE", "GET", "id_uploadpdf");



// Make an instance of the transaction object

$del_uploadpdf = new tNG_multipleDelete($conn_comte);

$tNGs->addTransaction($del_uploadpdf);

// Register triggers

$del_uploadpdf->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Delete1");

$del_uploadpdf->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

$del_uploadpdf->registerTrigger("AFTER", "Trigger_FileDelete", 98);

// Add columns

$del_uploadpdf->setTable("uploadpdf");

$del_uploadpdf->setPrimaryKey("id_uploadpdf", "NUMERIC_TYPE", "GET", "id_uploadpdf");



// Execute all the registered transactions

$tNGs->executeTransactions();



// Get the transaction recordset

$rsuploadpdf = $tNGs->getRecordset("uploadpdf");

$row_rsuploadpdf = mysql_fetch_assoc($rsuploadpdf);

$totalRows_rsuploadpdf = mysql_num_rows($rsuploadpdf);

?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>Untitled Document</title>

<link href="includes/skins/mxkollection3.css" rel="stylesheet" type="text/css" media="all" />

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

<link rel="stylesheet" type="text/css" href="estilosadmin.css">

</head>



<body>

<div class="subtitulo">&nbsp;</div><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/logo2.png"/><br />

<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="titulo">Upload Pdf</span> (add - edit)

<div class="main">

<?php

	echo $tNGs->getErrorMsg();

?>

<div class="KT_tng">

  

  <div class="KT_tngform">

    <form method="post" id="form1" action="<?php echo KT_escapeAttribute(KT_getFullUri()); ?>" enctype="multipart/form-data">

      <?php $cnt1 = 0; ?>

      <?php do { ?>

        <?php $cnt1++; ?>

        <?php 

// Show IF Conditional region1 

if (@$totalRows_rsuploadpdf > 1) {

?>

          <h2><?php echo NXT_getResource("Record_FH"); ?> <?php echo $cnt1; ?></h2>

          <?php } 

// endif Conditional region1

?>

        <table cellpadding="2" cellspacing="0" class="KT_tngtable">

          <tr>

            <td class="KT_th"><label for="name_uploadpdf_<?php echo $cnt1; ?>">Name:</label></td>

            <td><input type="text" name="name_uploadpdf_<?php echo $cnt1; ?>" id="name_uploadpdf_<?php echo $cnt1; ?>" value="<?php echo KT_escapeAttribute($row_rsuploadpdf['name_uploadpdf']); ?>" size="32" maxlength="200" />

                <?php echo $tNGs->displayFieldHint("name_uploadpdf");?> <?php echo $tNGs->displayFieldError("uploadpdf", "name_uploadpdf", $cnt1); ?> </td>

          </tr>

          <tr>

            <td class="KT_th"><label for="file_uploadpdf_<?php echo $cnt1; ?>">File:</label></td>

            <td><input type="file" name="file_uploadpdf_<?php echo $cnt1; ?>" id="file_uploadpdf_<?php echo $cnt1; ?>" size="32" />

                <?php echo $tNGs->displayFieldError("uploadpdf", "file_uploadpdf", $cnt1); ?> </td>

          </tr>

        </table>

        <input type="hidden" name="kt_pk_uploadpdf_<?php echo $cnt1; ?>" class="id_field" value="<?php echo KT_escapeAttribute($row_rsuploadpdf['kt_pk_uploadpdf']); ?>" />

        <?php } while ($row_rsuploadpdf = mysql_fetch_assoc($rsuploadpdf)); ?>

      <div class="KT_bottombuttons">

        <div>

          <?php 

      // Show IF Conditional region1

      if (@$_GET['id_uploadpdf'] == "") {

      ?>

            <input type="submit" name="KT_Insert1" id="KT_Insert1" value="<?php echo NXT_getResource("Insert_FB"); ?>" />

            <?php 

      // else Conditional region1

      } else { ?>



            <input type="submit" name="KT_Update1" value="<?php echo NXT_getResource("Update_FB"); ?>" />

            

            <?php }

      // endif Conditional region1

      ?>

          <input type="button" name="KT_Cancel1" value="<?php echo NXT_getResource("Cancel_FB"); ?>" onclick="return UNI_navigateCancel(event, 'includes/nxt/back.php')" />

        </div>

      </div>

    </form>

  </div>

  <br class="clearfixplain" />

</div>



</div>

</div>



</body>

</html>

<?php

mysql_free_result($Recordset1pdfupload);

?>

