<?php		

		session_start();

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

  $deleteObj->setFolder("../music/");

  $deleteObj->setDbFieldName("file_music");

  return $deleteObj->Execute();

}

//end Trigger_FileDelete trigger



//start Trigger_FileUpload trigger

//remove this line if you want to edit the code by hand 

function Trigger_FileUpload(&$tNG) {

  $uploadObj = new tNG_FileUpload($tNG);

  $uploadObj->setFormFieldName("file_music");

  $uploadObj->setDbFieldName("file_music");

  $uploadObj->setFolder("../music/");

  $uploadObj->setMaxSize(6000);

  $uploadObj->setAllowedExtensions("mp3");

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

$query_Recordset4 = "SELECT * FROM music";

$Recordset4 = mysql_query($query_Recordset4, $comte) or die(mysql_error());

$row_Recordset4 = mysql_fetch_assoc($Recordset4);

$totalRows_Recordset4 = mysql_num_rows($Recordset4);



// Make an insert transaction instance

$ins_music = new tNG_multipleInsert($conn_comte);

$tNGs->addTransaction($ins_music);

// Register triggers

$ins_music->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Insert1");

$ins_music->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$ins_music->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

$ins_music->registerTrigger("AFTER", "Trigger_FileUpload", 97);

// Add columns

$ins_music->setTable("music");

$ins_music->addColumn("name_music", "STRING_TYPE", "POST", "name_music");

$ins_music->addColumn("band_music", "STRING_TYPE", "POST", "band_music");

$ins_music->addColumn("file_music", "FILE_TYPE", "FILES", "file_music");

$ins_music->setPrimaryKey("id_music", "NUMERIC_TYPE");



// Make an update transaction instance

$upd_music = new tNG_multipleUpdate($conn_comte);

$tNGs->addTransaction($upd_music);

// Register triggers

$upd_music->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Update1");

$upd_music->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$upd_music->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

$upd_music->registerConditionalTrigger("{file_music} != \"\"", "AFTER", "Trigger_FileUpload", 97);

// Add columns

$upd_music->setTable("music");

$upd_music->addColumn("name_music", "STRING_TYPE", "POST", "name_music");

$upd_music->addColumn("band_music", "STRING_TYPE", "POST", "band_music");

$upd_music->addColumn("file_music", "FILE_TYPE", "FILES", "file_music");

$upd_music->setPrimaryKey("id_music", "NUMERIC_TYPE", "GET", "id_music");



// Make an instance of the transaction object

$del_music = new tNG_multipleDelete($conn_comte);

$tNGs->addTransaction($del_music);

// Register triggers

$del_music->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Delete1");

$del_music->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

$del_music->registerTrigger("AFTER", "Trigger_FileDelete", 98);

// Add columns

$del_music->setTable("music");

$del_music->setPrimaryKey("id_music", "NUMERIC_TYPE", "GET", "id_music");



// Execute all the registered transactions

$tNGs->executeTransactions();



// Get the transaction recordset

$rsmusic = $tNGs->getRecordset("music");

$row_rsmusic = mysql_fetch_assoc($rsmusic);

$totalRows_rsmusic = mysql_num_rows($rsmusic);

?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="titulo">Music</span>

<div class="main">

<div class="KT_tng" >





  <div class="KT_tngform">

    <form method="post" id="form1" action="<?php echo KT_escapeAttribute(KT_getFullUri()); ?>" enctype="multipart/form-data">

      <?php $cnt1 = 0; ?>

      <?php do { ?>

        <?php $cnt1++; ?>

        <?php 

// Show IF Conditional region1 

if (@$totalRows_rsmusic > 1) {

?>

          <h2><?php echo NXT_getResource("Record_FH"); ?> <?php echo $cnt1; ?></h2>

          <?php } 

// endif Conditional region1

?>

        <table cellpadding="2" cellspacing="0" class="KT_tngtable" width="800">

          <tr>

            <td class="KT_th"><label for="name_music_<?php echo $cnt1; ?>">Name_music:</label></td>

            <td><input type="text" name="name_music_<?php echo $cnt1; ?>" id="name_music_<?php echo $cnt1; ?>" value="<?php echo KT_escapeAttribute($row_rsmusic['name_music']); ?>" size="32" maxlength="200" />

                <?php echo $tNGs->displayFieldHint("name_music");?> <?php echo $tNGs->displayFieldError("music", "name_music", $cnt1); ?> </td>

          </tr>

          <tr>

            <td class="KT_th"><label for="band_music_<?php echo $cnt1; ?>">Band_music:</label></td>

            <td><input type="text" name="band_music_<?php echo $cnt1; ?>" id="band_music_<?php echo $cnt1; ?>" value="<?php echo KT_escapeAttribute($row_rsmusic['band_music']); ?>" size="32" maxlength="200" />

                <?php echo $tNGs->displayFieldHint("band_music");?> <?php echo $tNGs->displayFieldError("music", "band_music", $cnt1); ?> </td>

          </tr>

          <tr>

            <td class="KT_th"><label for="file_music_<?php echo $cnt1; ?>">File_music:</label></td>

            <td><input type="file" name="file_music_<?php echo $cnt1; ?>" id="file_music_<?php echo $cnt1; ?>" size="32" />

                <?php echo $tNGs->displayFieldError("music", "file_music", $cnt1); ?> </td>

          </tr>

        </table>

        <input type="hidden" name="kt_pk_music_<?php echo $cnt1; ?>" class="id_field" value="<?php echo KT_escapeAttribute($row_rsmusic['kt_pk_music']); ?>" />

        <?php } while ($row_rsmusic = mysql_fetch_assoc($rsmusic)); ?>

      <div class="KT_bottombuttons">

        <div>

          <?php 

      // Show IF Conditional region1

      if (@$_GET['id_music'] == "") {

      ?>

            <input type="submit" name="KT_Insert1" id="KT_Insert1" value="<?php echo NXT_getResource("Insert_FB"); ?>" />

            <?php 

      // else Conditional region1

      } else { ?>

            <div class="KT_operations">

              <input type="submit" name="KT_Insert1" value="<?php echo NXT_getResource("Insert as new_FB"); ?>" onclick="nxt_form_insertasnew(this, 'id_music')" />

            </div>

            <input type="submit" name="KT_Update1" value="<?php echo NXT_getResource("Update_FB"); ?>" />

            <input type="submit" name="KT_Delete1" value="<?php echo NXT_getResource("Delete_FB"); ?>" onclick="return confirm('<?php echo NXT_getResource("Are you sure?"); ?>');" />

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

</body>

</html>

<?php

mysql_free_result($Recordset4);

?>

