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

$query_Recordset6 = "SELECT * FROM videos";

$Recordset6 = mysql_query($query_Recordset6, $comte) or die(mysql_error());

$row_Recordset6 = mysql_fetch_assoc($Recordset6);

$totalRows_Recordset6 = mysql_num_rows($Recordset6);



// Make an insert transaction instance

$ins_videos = new tNG_multipleInsert($conn_comte);

$tNGs->addTransaction($ins_videos);

// Register triggers

$ins_videos->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Insert1");

$ins_videos->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$ins_videos->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

// Add columns

$ins_videos->setTable("videos");

$ins_videos->addColumn("file_videos", "STRING_TYPE", "POST", "file_videos");

$ins_videos->setPrimaryKey("id_videos", "NUMERIC_TYPE");



// Make an update transaction instance

$upd_videos = new tNG_multipleUpdate($conn_comte);

$tNGs->addTransaction($upd_videos);

// Register triggers

$upd_videos->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Update1");

$upd_videos->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$upd_videos->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

// Add columns

$upd_videos->setTable("videos");

$upd_videos->addColumn("file_videos", "STRING_TYPE", "POST", "file_videos");

$upd_videos->setPrimaryKey("id_videos", "NUMERIC_TYPE", "GET", "id_videos");



// Make an instance of the transaction object

$del_videos = new tNG_multipleDelete($conn_comte);

$tNGs->addTransaction($del_videos);

// Register triggers

$del_videos->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Delete1");

$del_videos->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

// Add columns

$del_videos->setTable("videos");

$del_videos->setPrimaryKey("id_videos", "NUMERIC_TYPE", "GET", "id_videos");



// Execute all the registered transactions

$tNGs->executeTransactions();



// Get the transaction recordset

$rsvideos = $tNGs->getRecordset("videos");

$row_rsvideos = mysql_fetch_assoc($rsvideos);

$totalRows_rsvideos = mysql_num_rows($rsvideos);

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

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="titulo">Videos</span>

<div class="main">

<div class="KT_tng">

  

  <div class="KT_tngform">

    <form method="post" id="form1" action="<?php echo KT_escapeAttribute(KT_getFullUri()); ?>">

      <?php $cnt1 = 0; ?>

      <?php do { ?>

        <?php $cnt1++; ?>

        <?php 

// Show IF Conditional region1 

if (@$totalRows_rsvideos > 1) {

?>

          <h2><?php echo NXT_getResource("Record_FH"); ?> <?php echo $cnt1; ?></h2>

          <?php } 

// endif Conditional region1

?>

        <table cellpadding="2" cellspacing="0" class="KT_tngtable" width="800">

          <tr>

            <td class="KT_th"><label for="file_videos_<?php echo $cnt1; ?>">File_videos:</label></td>

            <td><input type="text" name="file_videos_<?php echo $cnt1; ?>" id="file_videos_<?php echo $cnt1; ?>" value="<?php echo KT_escapeAttribute($row_rsvideos['file_videos']); ?>" size="32" maxlength="200" />

                <?php echo $tNGs->displayFieldHint("file_videos");?> <?php echo $tNGs->displayFieldError("videos", "file_videos", $cnt1); ?> </td>

          </tr>

        </table>

        <input type="hidden" name="kt_pk_videos_<?php echo $cnt1; ?>" class="id_field" value="<?php echo KT_escapeAttribute($row_rsvideos['kt_pk_videos']); ?>" />

        <?php } while ($row_rsvideos = mysql_fetch_assoc($rsvideos)); ?>

      <div class="KT_bottombuttons">

        <div>

          <?php 

      // Show IF Conditional region1

      if (@$_GET['id_videos'] == "") {

      ?>

            <input type="submit" name="KT_Insert1" id="KT_Insert1" value="<?php echo NXT_getResource("Insert_FB"); ?>" />

            <?php 

      // else Conditional region1

      } else { ?>

            <div class="KT_operations">

              <input type="submit" name="KT_Insert1" value="<?php echo NXT_getResource("Insert as new_FB"); ?>" onclick="nxt_form_insertasnew(this, 'id_videos')" />

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

mysql_free_result($Recordset6);

?>

