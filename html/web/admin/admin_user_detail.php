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

//$restrict = new tNG_RestrictAccess($wa_coneccion, "");

//Grand Levels: Any

//$restrict->Execute();

//End Restrict Access To Page



//start Trigger_CheckPasswords trigger

//remove this line if you want to edit the code by hand



//end Trigger_CheckPasswords trigger



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



$colname_Recordset1_us_det = "-1";

if (isset($_GET['id_user_login'])) {

  $colname_Recordset1_us_det = $_GET['id_user_login'];

}

mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1_us_det = sprintf("SELECT * FROM user_login WHERE id_user_login = %s", GetSQLValueString($colname_Recordset1_us_det, "int"));

$Recordset1_us_det = mysql_query($query_Recordset1_us_det, $wa_coneccion) or die(mysql_error());

$row_Recordset1_us_det = mysql_fetch_assoc($Recordset1_us_det);

$totalRows_Recordset1_us_det = mysql_num_rows($Recordset1_us_det);



// Make an insert transaction instance



$ins_users = new tNG_insert($conn_wa_coneccion);

$tNGs->addTransaction($ins_users);



// Register triggers

$ins_users->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Insert1");

$ins_users->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$ins_users->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

// Add columns

$ins_users->setTable("user_login");

$ins_users->addColumn("usuario_user_login", "STRING_TYPE", "POST", "usuario_user_login");

$ins_users->addColumn("email_users", "STRING_TYPE", "POST", "email_users");

$ins_users->addColumn("clave_user_login", "STRING_TYPE", "POST", "clave_user_login");

$ins_users->setPrimaryKey("id_user_login", "NUMERIC_TYPE");



// Make an update transaction instance

$upd_users = new tNG_update($conn_wa_coneccion);

$tNGs->addTransaction($upd_users);

// Register triggers

$upd_users->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Update1");

$upd_users->registerTrigger("BEFORE", "Trigger_Default_FormValidation", 10, $formValidation);

$upd_users->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

// Add columns

$upd_users->setTable("user_login");

$upd_users->addColumn("usuario_user_login", "STRING_TYPE", "POST", "usuario_user_login");

$upd_users->addColumn("email_users", "STRING_TYPE", "POST", "email_users");

$upd_users->addColumn("clave_user_login", "STRING_TYPE", "POST", "clave_user_login");

$upd_users->setPrimaryKey("id_user_login", "NUMERIC_TYPE", "GET", "id_user_login");



// Make an instance of the transaction object

$del_users = new tNG_delete($conn_wa_coneccion);

$tNGs->addTransaction($del_users);



// Register triggers

$del_users->registerTrigger("STARTER", "Trigger_Default_Starter", 1, "POST", "KT_Delete1");

$del_users->registerTrigger("END", "Trigger_Default_Redirect", 99, "includes/nxt/back.php");

// Add columns

$del_users->setTable("user_login");

$del_users->setPrimaryKey("id_user_login", "NUMERIC_TYPE", "GET", "id_user_login");



// Execute all the registered transactions

$tNGs->executeTransactions();



// Get the transaction recordset

$rsusers = $tNGs->getRecordset("user_login");

$row_rsusers = mysql_fetch_assoc($rsusers);

$totalRows_rsusers = mysql_num_rows($rsusers);

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>Admin</title>

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

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="titulo">Users</span>





<div class="main">



  <?php

	echo $tNGs->getErrorMsg();

?>

  <div class="KT_tng">

   

    <div class="KT_tngform">

      <form method="post" id="form1" action="<?php echo KT_escapeAttribute(KT_getFullUri()); ?>">

        <?php $cnt1 = 0; ?>

        <?php do { ?>

          <?php $cnt1++; ?>

          <?php 

// Show IF Conditional region1 

if (@$totalRows_rsusers > 1) {

?>

            <h2><?php echo NXT_getResource("Record_FH"); ?> <?php echo $cnt1; ?></h2>

            <?php } 

// endif Conditional region1

?>

          <table cellpadding="2" cellspacing="0" class="KT_tngtable" width="800">

            <tr>

              <td class="KT_th"><label for="usuario_user_login">Name:</label></td>

              <td><input type="text" name="usuario_user_login" id="usuario_user_login" value="<?php echo KT_escapeAttribute($row_rsusers['usuario_user_login']); ?>" size="32" maxlength="200" style="font-size:13px;"/>

                  <?php echo $tNGs->displayFieldHint("usuario_user_login");?> <?php echo $tNGs->displayFieldError("users", "usuario_user_login", $cnt1); ?> </td>

            </tr>

            <tr>

              <td class="KT_th"><label for="email_users">Email:</label></td>

              <td><input type="text" name="email_users" id="email_users" value="<?php echo KT_escapeAttribute($row_rsusers['email_users']); ?>" size="32" maxlength="200" style="font-size:13px;" />

                  <?php echo $tNGs->displayFieldHint("email_users");?> <?php echo $tNGs->displayFieldError("users", "email_users", $cnt1); ?> </td>

            </tr>

            <tr>

              <td class="KT_th"><label for="clave_user_login">Password:</label></td>

              <td><input type="text" name="clave_user_login" id="clave_user_login" value="<?php echo KT_escapeAttribute($row_rsusers['clave_user_login']); ?>" size="32" maxlength="200" style="font-size:13px;" />

                  <?php echo $tNGs->displayFieldHint("clave_user_login");?> <?php echo $tNGs->displayFieldError("users", "clave_user_login", $cnt1); ?> </td>

            </tr>

          </table>

          <input type="hidden" name="kt_pk_users" class="id_field" value="<?php echo KT_escapeAttribute($row_rsusers['kt_pk_users']); ?>" />

          <?php } while ($row_rsusers = mysql_fetch_assoc($rsusers)); ?>

        <div class="KT_bottombuttons">

          <div>

            <?php 

      // Show IF Conditional region1

      if (@$_GET['id_user_login'] == "") {

      ?>

              <input type="submit" name="KT_Insert1" id="KT_Insert1" value="<?php echo NXT_getResource("Insert_FB"); ?>" />

              <?php 

      // else Conditional region1

      } else { ?>



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

  </div>

  <br class="clearfixplain" />

</div>



</div>





</body>

</html>

<?php

mysql_free_result($Recordset1_us_det);

?>

