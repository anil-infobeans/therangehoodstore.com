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

if (isset($_GET['id_registered_user'])) {

  $colname_Recordset1 = $_GET['id_registered_user'];

}

mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1 = sprintf("SELECT * FROM registered_user WHERE id_registered_user = %s", GetSQLValueString($colname_Recordset1, "int"));

$Recordset1 = mysql_query($query_Recordset1, $wa_coneccion) or die(mysql_error());

$row_Recordset1 = mysql_fetch_assoc($Recordset1);

$totalRows_Recordset1 = mysql_num_rows($Recordset1);



// Make an insert transaction instance

$ins_registered_user = new tNG_insert($conn_wa_coneccion);

$tNGs->addTransaction($ins_registered_user);

// Register triggers

$ins_registered_user->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Insert1");

$ins_registered_user->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$ins_registered_user->registerTrigger("END", "Trigger_Default_Redirect", 99, "insertneweventpromotion.php");

// Add columns

$ins_registered_user->setTable("registered_user");

$ins_registered_user->addColumn("name_registered_user", "STRING_TYPE", "POST", "name_registered_user");

$ins_registered_user->addColumn("email_registered_user", "STRING_TYPE", "POST", "email_registered_user");

$ins_registered_user->addColumn("id_language", "STRING_TYPE", "POST", "RadioGroup1");

$ins_registered_user->setPrimaryKey("id_registered_user", "NUMERIC_TYPE");



// Make an update transaction instance

$upd_registered_user = new tNG_update($conn_wa_coneccion);

$tNGs->addTransaction($upd_registered_user);

// Register triggers

$upd_registered_user->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Update1");

$upd_registered_user->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$upd_registered_user->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

// Add columns

$upd_registered_user->setTable("registered_user");

$upd_registered_user->addColumn("name_registered_user", "STRING_TYPE", "POST", "name_registered_user");

$upd_registered_user->addColumn("email_registered_user", "STRING_TYPE", "POST", "email_registered_user");

$upd_registered_user->addColumn("id_language", "STRING_TYPE", "POST", "RadioGroup1");

$upd_registered_user->setPrimaryKey("id_registered_user", "NUMERIC_TYPE", "GET", "id_registered_user");



// Make an instance of the transaction object

$del_registered_user = new tNG_delete($conn_wa_coneccion);

$tNGs->addTransaction($del_registered_user);

// Register triggers

$del_registered_user->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Delete1");

$del_registered_user->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

// Add columns

$del_registered_user->setTable("registered_user");

$del_registered_user->setPrimaryKey("id_registered_user", "NUMERIC_TYPE", "GET", "id_registered_user");



// Execute all the registered transactions

$tNGs->executeTransactions();



// Get the transaction recordset

$rsregistered_user = $tNGs->getRecordset("registered_user");

$row_rsregistered_user = mysql_fetch_assoc($rsregistered_user);

$totalRows_rsregistered_user = mysql_num_rows($rsregistered_user);

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

</head>



<body>





<div class="subtitulo">&nbsp;</div><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/logo2.png"/><br />

<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="titulo"><?php echo REGISTEREDUSERS; ?></span>







<div class="main">



<br><br>



<?php

	echo $tNGs->getErrorMsg();

?>

<div class="KT_tng">



  <div class="KT_tngform">

    <form method="post" id="form1" action="<?php echo KT_escapeAttribute(KT_getFullUri()); ?>">

    

        <table cellpadding="2" cellspacing="0" class="KT_tngtable">

          <tr>

            <td class="KT_th"><label for="name_registered_user"><?php echo NAME; ?></label></td>

            <td><input type="text" name="name_registered_user" id="name_registered_user" value="<?php echo KT_escapeAttribute($row_rsregistered_user['name_registered_user']); ?>" size="32" maxlength="200" />

                <?php echo $tNGs->displayFieldHint("name_registered_user");?> <?php echo $tNGs->displayFieldError("registered_user", "name_registered_user", $cnt1); ?> </td>

          </tr>

          <tr>

            <td class="KT_th"><label for="email_registered_user">Email</label></td>

            <td><input type="text" name="email_registered_user" id="email_registered_user" value="<?php echo KT_escapeAttribute($row_rsregistered_user['email_registered_user']); ?>" size="32" maxlength="200" />

                <?php echo $tNGs->displayFieldHint("email_registered_user");?> <?php echo $tNGs->displayFieldError("registered_user", "email_registered_user", $cnt1); ?> </td>

                

          </tr>

           <tr>

            <td class="KT_th"><label for="email_registered_user"><?php echo LANGUAGE; ?></label></td>

            <td>



<?php for ($language_i = 0; $language_i < sizeof($languages); $language_i++) {?>    

<?php $language_id = $languages[$language_i]['id'];?>        

<?php echo tep_image(DIR_WS_CATALOG_LANGUAGES . $languages[$language_i]['directory'] . '/images/' . $languages[$language_i]['image'], $languages[$language_i]['name']); ?>&nbsp;<input type="radio" name="RadioGroup1" value="<?php echo $language_id; ?>" <?php if($language_id == $row_Recordset1['id_language']){echo "checked";} ?>/>

<?php

 }

?>  



       

          



            

                </td>

                

          </tr>

        </table>

      <div class="KT_bottombuttons">

        <div>

          <?php 

      // Show IF Conditional region1

      if (@$_GET['id_registered_user'] == "") {

      ?>

            <input type="submit" name="KT_Insert1" id="KT_Insert1" value="<?php echo INSERT; ?>" />

            <?php 

      // else Conditional region1

      } else { ?>

            <div class="KT_operations">

              <input type="submit" name="KT_Insert1" value="<?php echo INSERTASNEW; ?>" onclick="nxt_form_insertasnew(this, 'id_registered_user')" />

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

