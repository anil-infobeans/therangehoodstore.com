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



// Start trigger

$formValidation = new tNG_FormValidation();

$tNGs->prepareValidation($formValidation);

// End trigger



// Start trigger

$formValidation0 = new tNG_FormValidation();

$tNGs->prepareValidation($formValidation0);

// End trigger



function Trigger_LinkTransactions0(&$tNG) {

	global $ins_comments0;

  $linkObj0 = new tNG_LinkedTrans($tNG, $ins_comments0);

  $linkObj0->setLink("id_comments");

  return $linkObj0->Execute();

}



function Trigger_LinkTransactions_D0(&$tNG) {

	global $upd_comments0;

  $linkObj0 = new tNG_LinkedTrans($tNG, $upd_comments0);

  $linkObj0->setLink("id_comments");

  return $linkObj0->Execute();

}



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



$colname_Recordset1_comments_d = "-1";

if (isset($_GET['id_comments'])) {

  $colname_Recordset1_comments_d = $_GET['id_comments'];

}

mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1_comments_d = sprintf("SELECT co.*, co_d.* FROM comments co, comments_description co_d WHERE  co.id_comments = %s AND co_d.id_comments=co.id_comments", GetSQLValueString($colname_Recordset1_comments_d, "int"));

$Recordset1_comments_d = mysql_query($query_Recordset1_comments_d, $wa_coneccion) or die(mysql_error());

$row_Recordset1_comments_d = mysql_fetch_assoc($Recordset1_comments_d);

$totalRows_Recordset1_comments_d = mysql_num_rows($Recordset1_comments_d);









// Make an insert transaction instance

$ins_comments = new tNG_insert($conn_wa_coneccion);

$tNGs->addTransaction($ins_comments);

// Register triggers

$ins_comments->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Insert1");

$ins_comments->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$ins_comments->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");



$ins_comments->registerTrigger("AFTER", "Trigger_LinkTransactions0", 98);

$ins_comments->registerTrigger("ERROR", "Trigger_LinkTransactions0", 98);



// Add columns

$ins_comments->setTable("comments");

$ins_comments->addColumn("name_comments", "STRING_TYPE", "POST", "name_comments");

$ins_comments->addColumn("website_comment", "STRING_TYPE", "POST", "website_comment");

$ins_comments->addColumn("email_comments", "STRING_TYPE", "POST", "email_comments");

$ins_comments->addColumn("date_comments", "DATE_TYPE", "POST", "date_comments");

$ins_comments->addColumn("check_comments", "CHECKBOX_1_0_TYPE", "POST", "check_comments", "0");

$ins_comments->addColumn("id_news", "NUMERIC_TYPE", "POST", "id_news");

$ins_comments->addColumn("id_events", "NUMERIC_TYPE", "POST", "id_events");

$ins_comments->addColumn("id_promotion", "NUMERIC_TYPE", "POST", "id_promotion");

$ins_comments->addColumn("id", "NUMERIC_TYPE", "POST", "id");

$ins_comments->setPrimaryKey("id_comments", "NUMERIC_TYPE");



// Make an update transaction instance

$upd_comments = new tNG_update($conn_wa_coneccion);

$tNGs->addTransaction($upd_comments);

// Register triggers

$upd_comments->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Update1");

$upd_comments->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$upd_comments->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");



$upd_comments->registerTrigger("AFTER", "Trigger_LinkTransactions_D0", 98);

$upd_comments->registerTrigger("ERROR", "Trigger_LinkTransactions_D0", 98);



// Add columns

$upd_comments->setTable("comments");

$upd_comments->addColumn("name_comments", "STRING_TYPE", "POST", "name_comments");

$upd_comments->addColumn("website_comment", "STRING_TYPE", "POST", "website_comment");

$upd_comments->addColumn("email_comments", "STRING_TYPE", "POST", "email_comments");

$upd_comments->addColumn("date_comments", "DATE_TYPE", "POST", "date_comments");

$upd_comments->addColumn("check_comments", "CHECKBOX_1_0_TYPE", "POST", "check_comments");

$upd_comments->addColumn("id_news", "NUMERIC_TYPE", "POST", "id_news");

$upd_comments->addColumn("id_events", "NUMERIC_TYPE", "POST", "id_events");

$upd_comments->addColumn("id_promotion", "NUMERIC_TYPE", "POST", "id_promotion");

$upd_comments->addColumn("id", "NUMERIC_TYPE", "POST", "id");

$upd_comments->setPrimaryKey("id_comments", "NUMERIC_TYPE", "GET", "id_comments");





// Make an insert transaction instance

$ins_comments0 = new tNG_insert($conn_wa_coneccion);

$tNGs->addTransaction($ins_comments0);

// Register triggers

$ins_comments0->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "VALUE", null);

$ins_comments0->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation0);

// Add columns

$ins_comments0->setTable("comments_description");

$ins_comments0->addColumn("text_comments", "STRING_TYPE", "POST", "text_comments");

$ins_comments0->addColumn("id_language", "NUMERIC_TYPE", "POST", "id_language");

$ins_comments0->addColumn("id_comments", "NUMERIC_TYPE", "VALUE", "");

$ins_comments0->setPrimaryKey("id_comments_description", "NUMERIC_TYPE");



// Make an update transaction instance

$upd_comments0 = new tNG_update($conn_wa_coneccion);

$tNGs->addTransaction($upd_comments0);

// Register triggers

$upd_comments0->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "VALUE", null);

$upd_comments0->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation0);

// Add columns

$upd_comments0->setTable("comments_description");

$upd_comments0->addColumn("text_comments", "STRING_TYPE", "POST", "text_comments");

$upd_comments0->addColumn("id_language", "NUMERIC_TYPE", "POST", "id_language");

$upd_comments0->addColumn("id_comments", "NUMERIC_TYPE", "GET", "id_comments");

$upd_comments0->setPrimaryKey("id_comments_description", "NUMERIC_TYPE", "POST", "id_comments_description");



// Make an instance of the transaction object

$del_comments0 = new tNG_delete($conn_wa_coneccion);

$tNGs->addTransaction($del_comments0);

// Register triggers

$del_comments0->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Delete1");

// Add columns

$del_comments0->setTable("comments_description");

$del_comments0->setPrimaryKey("id_comments_description", "NUMERIC_TYPE", "POST", "id_comments_description");





// Make an instance of the transaction object

$del_comments = new tNG_delete($conn_wa_coneccion);

$tNGs->addTransaction($del_comments);

// Register triggers

$del_comments->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Delete1");

$del_comments->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

// Add columns

$del_comments->setTable("comments");

$del_comments->setPrimaryKey("id_comments", "NUMERIC_TYPE", "GET", "id_comments");



// Execute all the registered transactions

$tNGs->executeTransactions();



// Get the transaction recordset

$rscomments = $tNGs->getRecordset("comments");

$row_rscomments = mysql_fetch_assoc($rscomments);

$totalRows_rscomments = mysql_num_rows($rscomments);

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>WA package - Apolomultimedia.com</title>

<link href="estilosadmin.css" rel="stylesheet" type="text/css" />

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

</head>



<body>

<div class="subtitulo">&nbsp;</div><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/logo2.png"/><br />

<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="titulo">Blog Comments</span>





<div class="main">

<span class="descripcion"><?php echo LISTINGCOMMENTS; ?></span><br>

<br>

<?php

	echo $tNGs->getErrorMsg();

?>

<div class="KT_tng">

 

  <div class="KT_tngform">

    <form method="post" id="form1" action="<?php echo KT_escapeAttribute(KT_getFullUri()); ?>">

 

        <table cellpadding="2" cellspacing="0" class="KT_tngtable">

          <tr>

            <td class="KT_th"><label for="name_comments"><?php echo NAME; ?></label></td>

            <td><input type="text" name="name_comments" id="name_comments" value="<?php echo KT_escapeAttribute($row_Recordset1_comments_d['name_comments']); ?>" size="32" maxlength="200" />

                <?php echo $tNGs->displayFieldHint("name_comments");?> <?php echo $tNGs->displayFieldError("comments", "name_comments", $cnt1); ?> </td>

          </tr>

          <tr>

            <td class="KT_th"><label for="website_comment"><?php echo WEBSITE; ?></label></td>

            <td><input type="text" name="website_comment" id="website_comment" value="<?php echo KT_escapeAttribute($row_Recordset1_comments_d['website_comment']); ?>" size="32" maxlength="200" />

                <?php echo $tNGs->displayFieldHint("website_comment");?> <?php echo $tNGs->displayFieldError("comments", "website_comment", $cnt1); ?> </td>

          </tr>

          <tr>

            <td class="KT_th"><label for="email_comments">Email</label></td>

            <td><input type="text" name="email_comments" id="email_comments" value="<?php echo KT_escapeAttribute($row_Recordset1_comments_d['email_comments']); ?>" size="32" maxlength="200" />

                <?php echo $tNGs->displayFieldHint("email_comments");?> <?php echo $tNGs->displayFieldError("comments", "email_comments", $cnt1); ?> </td>

          </tr>

          <tr>

            <td class="KT_th"><label for="date_comments"><?php echo DATE; ?></label></td>

            <td><input type="hidden" name="date_comments" id="date_comments" value="<?php echo KT_formatDate($row_Recordset1_comments_d['date_comments']); ?>" size="10" maxlength="22" /><?php echo KT_formatDate($row_Recordset1_comments_d['date_comments']); ?>

                <?php echo $tNGs->displayFieldHint("date_comments");?> <?php echo $tNGs->displayFieldError("comments", "date_comments", $cnt1); ?> </td>

          </tr>

          <tr>

            <td class="KT_th"><label for="text_comments"><?php echo CONTENT; ?></label></td>

            <td><textarea name="text_comments" id="text_comments" cols="50" rows="5"><?php echo KT_escapeAttribute($row_Recordset1_comments_d['text_comments']); ?></textarea>

                <?php echo $tNGs->displayFieldHint("text_comments");?> <?php echo $tNGs->displayFieldError("comments", "text_comments", $cnt1); ?> </td>

          </tr>

          <tr>

            <td class="KT_th"><label for="check_comments"><?php echo PUBLISH; ?></label></td>

            <td><input  <?php if (!(strcmp(KT_escapeAttribute($row_Recordset1_comments_d['check_comments']),"1"))) {echo "checked";} ?> type="checkbox" name="check_comments" id="check_comments" value="1" />

                <?php echo $tNGs->displayFieldError("comments", "check_comments", $cnt1); ?>

<span class="alert">

<?php echo TEXTO16; ?>

</span>

</td>

          </tr>

          <tr>

            <td class="KT_th"><label for="id_news"><?php echo NEWS; ?></label></td>

            <td><input type="hidden" name="id_news" id="id_news" value="<?php echo KT_escapeAttribute($row_Recordset1_comments_d['id_news']); ?>" size="7" /><?php echo KT_escapeAttribute($row_Recordset1_comments_d['id_news']); ?>

                <?php echo $tNGs->displayFieldHint("id_news");?> <?php echo $tNGs->displayFieldError("comments", "id_news", $cnt1); ?> </td>

          </tr>

          <tr>

            <td class="KT_th"><label for="id_events"><?php echo EVENTS; ?></label></td>

            <td><input type="hidden" name="id_events" id="id_events" value="<?php echo KT_escapeAttribute($row_Recordset1_comments_d['id_events']); ?>" size="7" /><?php echo KT_escapeAttribute($row_Recordset1_comments_d['id_events']); ?>

                <?php echo $tNGs->displayFieldHint("id_events");?> <?php echo $tNGs->displayFieldError("comments", "id_events", $cnt1); ?> </td>

          </tr>

          <tr>

            <td class="KT_th"><label for="id_promotion"><?php echo PROMOTIONS; ?></label></td>

            <td><input type="hidden" name="id_promotion" id="id_promotion" value="<?php echo KT_escapeAttribute($row_Recordset1_comments_d['id_promotion']); ?>" size="7" /><?php echo KT_escapeAttribute($row_Recordset1_comments_d['id_promotion']); ?>

                <?php echo $tNGs->displayFieldHint("id_promotion");?> <?php echo $tNGs->displayFieldError("comments", "id_promotion", $cnt1); ?>

                <input type="hidden" name="id_comments_description" id="id_comments_description" value="<?php echo KT_escapeAttribute($row_Recordset1_comments_d['id_comments_description']); ?>" size="7" />

                <input type="hidden" name="id_language" id="id_language" value="<?php echo KT_escapeAttribute($row_Recordset1_comments_d['id_language']); ?>" size="7" /></td>

          </tr>

                    <tr>

            <td class="KT_th"><label for="id"><?php echo BUTTON; ?></label></td>

            <td><input type="hidden" name="id" id="id" value="<?php echo KT_escapeAttribute($row_Recordset1_comments_d['id']); ?>" size="7" /><?php echo KT_escapeAttribute($row_Recordset1_comments_d['id']); ?>

                <?php echo $tNGs->displayFieldHint("id");?> <?php echo $tNGs->displayFieldError("comments", "id", $cnt1); ?>

                <input type="hidden" name="id_comments_description" id="id_comments_description" value="<?php echo KT_escapeAttribute($row_Recordset1_comments_d['id_comments_description']); ?>" size="7" />

                <input type="hidden" name="id_language" id="id_language" value="<?php echo KT_escapeAttribute($row_Recordset1_comments_d['id_language']); ?>" size="7" /></td>

          </tr>

        </table>



      <div class="KT_bottombuttons">

        <div>

          <?php 

      // Show IF Conditional region1

      if (@$_GET['id_comments'] == "") {

      ?>

            <input type="submit" name="KT_Insert1" id="KT_Insert1" value="<?php echo INSERT; ?>" />

            <?php 

      // else Conditional region1

      } else { ?>

            <div class="KT_operations">

              <input type="submit" name="KT_Insert1" value="<?php echo INSERTASNEW; ?>" onclick="nxt_form_insertasnew(this, 'id_comments')" />

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

mysql_free_result($Recordset1_comments_d);

?>

