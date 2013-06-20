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



// Load the required classes

require_once('includes/tfi/TFI.php');

require_once('includes/tso/TSO.php');

require_once('includes/nav/NAV.php');



// Make unified connection variable

$conn_wa_coneccion = new KT_connection($wa_coneccion, $database_wa_coneccion);



//Start Restrict Access To Page

//$restrict = new tNG_RestrictAccess($wa_coneccion, "");

//Grand Levels: Any

//$restrict->Execute();

//End Restrict Access To Page



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



// Filter

$tfi_listRecordset1_user1 = new TFI_TableFilter($conn_wa_coneccion, "tfi_listRecordset1_user1");

$tfi_listRecordset1_user1->addColumn("usuario_user_login", "STRING_TYPE", "usuario_user_login", "%");

$tfi_listRecordset1_user1->addColumn("email_users", "STRING_TYPE", "email_users", "%");

$tfi_listRecordset1_user1->addColumn("clave_user_login", "STRING_TYPE", "clave_user_login", "%");

$tfi_listRecordset1_user1->Execute();



// Sorter

$tso_listRecordset1_user1 = new TSO_TableSorter("Recordset1_user", "tso_listRecordset1_user1");

$tso_listRecordset1_user1->addColumn("usuario_user_login");

$tso_listRecordset1_user1->addColumn("email_users");

$tso_listRecordset1_user1->addColumn("clave_user_login");

$tso_listRecordset1_user1->setDefault("usuario_user_login");

$tso_listRecordset1_user1->Execute();



// Navigation

$nav_listRecordset1_user1 = new NAV_Regular("nav_listRecordset1_user1", "Recordset1_user", "", $_SERVER['PHP_SELF'], 10);



//NeXTenesio3 Special List Recordset

$maxRows_Recordset1_user = $_SESSION['max_rows_nav_listRecordset1_user1'];

$pageNum_Recordset1_user = 0;

if (isset($_GET['pageNum_Recordset1_user'])) {

  $pageNum_Recordset1_user = $_GET['pageNum_Recordset1_user'];

}

$startRow_Recordset1_user = $pageNum_Recordset1_user * $maxRows_Recordset1_user;



// Defining List Recordset variable

$NXTFilter_Recordset1_user = "1=1";

if (isset($_SESSION['filter_tfi_listRecordset1_user1'])) {

  $NXTFilter_Recordset1_user = $_SESSION['filter_tfi_listRecordset1_user1'];

}

// Defining List Recordset variable

$NXTSort_Recordset1_user = "usuario_user_login";

if (isset($_SESSION['sorter_tso_listRecordset1_user1'])) {

  $NXTSort_Recordset1_user = $_SESSION['sorter_tso_listRecordset1_user1'];

}

mysql_select_db($database_wa_coneccion, $wa_coneccion);



$query_Recordset1_user = "SELECT * FROM user_login";

$query_limit_Recordset1_user = sprintf("%s LIMIT %d, %d", $query_Recordset1_user, $startRow_Recordset1_user, $maxRows_Recordset1_user);

$Recordset1_user = mysql_query($query_limit_Recordset1_user, $wa_coneccion) or die(mysql_error());

$row_Recordset1_user = mysql_fetch_assoc($Recordset1_user);



if (isset($_GET['totalRows_Recordset1_user'])) {

  $totalRows_Recordset1_user = $_GET['totalRows_Recordset1_user'];

} else {

  $all_Recordset1_user = mysql_query($query_Recordset1_user);

  $totalRows_Recordset1_user = mysql_num_rows($all_Recordset1_user);

}

$totalPages_Recordset1_user = ceil($totalRows_Recordset1_user/$maxRows_Recordset1_user)-1;

//End NeXTenesio3 Special List Recordset



$nav_listRecordset1_user1->checkBoundries();

?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>Admin</title>

<link href="estilosadmin.css" rel="stylesheet" type="text/css" />

<link href="includes/skins/mxkollection3.css" rel="stylesheet" type="text/css" media="all" />

<script src="includes/common/js/base.js" type="text/javascript"></script>

<script src="includes/common/js/utility.js" type="text/javascript"></script>

<script src="includes/skins/style.js" type="text/javascript"></script>

<script src="includes/nxt/scripts/list.js" type="text/javascript"></script>

<script src="includes/nxt/scripts/list.js.php" type="text/javascript"></script>

<script type="text/javascript">

$NXT_LIST_SETTINGS = {

  duplicate_buttons: true,

  duplicate_navigation: true,

  row_effects: true,

  show_as_buttons: true,

  record_counter: true

}

</script>

</head>



<body>





<div class="subtitulo">&nbsp;</div><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/logo2.png"/><br />

<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="titulo">Users</span>





<div class="main">



<br><br>

  <div class="KT_tng" id="listRecordset1_user1">



    <div class="KT_tnglist">

      <form action="<?php echo KT_escapeAttribute(KT_getFullUri()); ?>" method="post" id="form1">

        <div class="KT_options"> <a href="<?php echo $nav_listRecordset1_user1->getShowAllLink(); ?>"><?php echo NXT_getResource("Show"); ?>

          <?php 

  // Show IF Conditional region1

  if (@$_GET['show_all_nav_listRecordset1_user1'] == 1) {

?>

            <?php echo $_SESSION['default_max_rows_nav_listRecordset1_user1']; ?>

            <?php 

  // else Conditional region1

  } else { ?>

            <?php echo NXT_getResource("all"); ?>

            <?php } 

  // endif Conditional region1

?>

              <?php echo NXT_getResource("records"); ?></a> &nbsp;

          &nbsp; </div>

        <table cellpadding="2" cellspacing="0" class="KT_tngtable" width="600">

          <thead>

            <tr class="KT_row_order">

              <th> <input type="checkbox" name="KT_selAll" id="KT_selAll"/>

              </th>

              <th id="usuario_user_login" class="KT_sorter KT_col_usuario_user_login <?php echo $tso_listRecordset1_user1->getSortIcon('usuario_user_login'); ?>"> <a href="<?php echo $tso_listRecordset1_user1->getSortLink('usuario_user_login'); ?>">Name</a> </th>

              <th id="email_users" class="KT_sorter KT_col_email_users <?php echo $tso_listRecordset1_user1->getSortIcon('email_users'); ?>"> <a href="<?php echo $tso_listRecordset1_user1->getSortLink('email_users'); ?>">Email</a> </th>

              <th id="clave_user_login" class="KT_sorter KT_col_clave_user_login <?php echo $tso_listRecordset1_user1->getSortIcon('clave_user_login'); ?>"> <a href="<?php echo $tso_listRecordset1_user1->getSortLink('clave_user_login'); ?>">Password</a> </th>

              <th>&nbsp;</th>

            </tr>

          </thead>

          <tbody>

            <?php if ($totalRows_Recordset1_user == 0) { // Show if recordset empty ?>

              <tr>

                <td colspan="5"><?php echo NXT_getResource("The table is empty or the filter you've selected is too restrictive."); ?></td>

              </tr>

              <?php } // Show if recordset empty ?>

            <?php if ($totalRows_Recordset1_user > 0) { // Show if recordset not empty ?>

              <?php do { ?>

                <tr class="<?php echo @$cnt1++%2==0 ? "" : "KT_even"; ?>">

                  <td><input type="checkbox" name="kt_pk_users" class="id_checkbox" value="<?php echo $row_Recordset1_user['id_user_login']; ?>" />

                      <input type="hidden" name="id_user_login" class="id_field" value="<?php echo $row_Recordset1_user['id_user_login']; ?>" />

                  </td>

                  <td><div class="KT_col_usuario_user_login" style="font-size:13px;"><?php echo KT_FormatForList($row_Recordset1_user['usuario_user_login'], 20); ?></div></td>

                  <td><div class="KT_col_email_users" style="font-size:13px;"><?php echo KT_FormatForList($row_Recordset1_user['email_users'], 20); ?></div></td>

                  <td><div class="KT_col_clave_user_login" style="font-size:13px;"><?php echo KT_FormatForList($row_Recordset1_user['clave_user_login'], 20); ?></div></td>

                  <td><a class="KT_edit_link" href="admin_user_detail.php?id_user_login=<?php echo $row_Recordset1_user['id_user_login']; ?>&amp;KT_back=1"><?php echo NXT_getResource("edit_one"); ?></a> <a class="KT_delete_link" href="#delete"><?php echo NXT_getResource("delete_one"); ?></a> </td>

                </tr>

                <?php } while ($row_Recordset1_user = mysql_fetch_assoc($Recordset1_user)); ?>

              <?php } // Show if recordset not empty ?>

          </tbody>

        </table>

        <div class="KT_bottomnav">

          <div>

            <?php

            $nav_listRecordset1_user1->Prepare();

            require("includes/nav/NAV_Text_Navigation.inc.php");

          ?>

          </div>

        </div>

        <div class="KT_bottombuttons">



<span>&nbsp;</span>

          <select name="no_new" id="no_new">

            <option value="1">1</option>

            <option value="3">3</option>

            <option value="6">6</option>

          </select>

          <a class="KT_additem_op_link" href="admin_user_detail.php?KT_back=1" onclick="return nxt_list_additem(this)"><?php echo NXT_getResource("add new"); ?></a> </div>

      </form>

    </div>

  </div>

  <br class="clearfixplain" />

</div>



</div>





</body>

</html>

<?php

mysql_free_result($Recordset1_user);

?>

