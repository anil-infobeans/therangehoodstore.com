<?php		session_start();

		if(!isset($_SESSION['MM_Username'])){		

			header('Location: login.php');			

		}

?>

<?php require_once('Connections/comte.php'); ?>

<?php

// Load the common classes

require_once('includes/common/KT_common.php');



// Load the required classes

require_once('includes/tfi/TFI.php');

require_once('includes/tso/TSO.php');

require_once('includes/nav/NAV.php');



// Make unified connection variable

$conn_comte = new KT_connection($comte, $database_comte);



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

$tfi_listRecordset1pdf1 = new TFI_TableFilter($conn_comte, "tfi_listRecordset1pdf1");

$tfi_listRecordset1pdf1->addColumn("name_uploadpdf", "STRING_TYPE", "name_uploadpdf", "%");

$tfi_listRecordset1pdf1->addColumn("file_uploadpdf", "STRING_TYPE", "file_uploadpdf", "%");

$tfi_listRecordset1pdf1->Execute();



// Sorter

$tso_listRecordset1pdf1 = new TSO_TableSorter("Recordset1pdf", "tso_listRecordset1pdf1");

$tso_listRecordset1pdf1->addColumn("name_uploadpdf");

$tso_listRecordset1pdf1->addColumn("file_uploadpdf");

$tso_listRecordset1pdf1->addColumn("language_id");

$tso_listRecordset1pdf1->setDefault("name_uploadpdf DESC");

$tso_listRecordset1pdf1->Execute();



// Navigation

$nav_listRecordset1pdf1 = new NAV_Regular("nav_listRecordset1pdf1", "Recordset1pdf", "", $_SERVER['PHP_SELF'], 10);



//NeXTenesio3 Special List Recordset

$maxRows_Recordset1pdf = $_SESSION['max_rows_nav_listRecordset1pdf1'];

$pageNum_Recordset1pdf = 0;

if (isset($_GET['pageNum_Recordset1pdf'])) {

  $pageNum_Recordset1pdf = $_GET['pageNum_Recordset1pdf'];

}

$startRow_Recordset1pdf = $pageNum_Recordset1pdf * $maxRows_Recordset1pdf;



// Defining List Recordset variable

$NXTFilter_Recordset1pdf = "1=1";

if (isset($_SESSION['filter_tfi_listRecordset1pdf1'])) {

  $NXTFilter_Recordset1pdf = $_SESSION['filter_tfi_listRecordset1pdf1'];

}

// Defining List Recordset variable

$NXTSort_Recordset1pdf = "name_uploadpdf DESC";

if (isset($_SESSION['sorter_tso_listRecordset1pdf1'])) {

  $NXTSort_Recordset1pdf = $_SESSION['sorter_tso_listRecordset1pdf1'];

}

mysql_select_db($database_comte, $comte);



$query_Recordset1pdf = "SELECT * FROM uploadpdf WHERE  {$NXTFilter_Recordset1pdf}  ORDER BY  {$NXTSort_Recordset1pdf} ";

$query_limit_Recordset1pdf = sprintf("%s LIMIT %d, %d", $query_Recordset1pdf, $startRow_Recordset1pdf, $maxRows_Recordset1pdf);

$Recordset1pdf = mysql_query($query_limit_Recordset1pdf, $comte) or die(mysql_error());

$row_Recordset1pdf = mysql_fetch_assoc($Recordset1pdf);



if (isset($_GET['totalRows_Recordset1pdf'])) {

  $totalRows_Recordset1pdf = $_GET['totalRows_Recordset1pdf'];

} else {

  $all_Recordset1pdf = mysql_query($query_Recordset1pdf);

  $totalRows_Recordset1pdf = mysql_num_rows($all_Recordset1pdf);

}

$totalPages_Recordset1pdf = ceil($totalRows_Recordset1pdf/$maxRows_Recordset1pdf)-1;

//End NeXTenesio3 Special List Recordset



$nav_listRecordset1pdf1->checkBoundries();

?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<title>Untitled Document</title>

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

<style type="text/css">

  /* Dynamic List row settings */

  .KT_col_name_uploadpdf {width:140px; overflow:hidden;}

  .KT_col_file_uploadpdf {width:140px; overflow:hidden;}

</style>

<link rel="stylesheet" type="text/css" href="estilosadmin.css">

</head>



<body>

<div class="subtitulo">&nbsp;</div><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/logo2.png"/><br />

<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="titulo">Upload Pdf</span>

<div class="main">



<div class="KT_tng" id="listRecordset1pdf1">

  <div class="KT_tnglist">

    <form action="<?php echo KT_escapeAttribute(KT_getFullUri()); ?>" method="post" id="form1">

      <div class="KT_options"> <a href="<?php echo $nav_listRecordset1pdf1->getShowAllLink(); ?>"><?php echo NXT_getResource("Show"); ?>

        <?php 

  // Show IF Conditional region1

  if (@$_GET['show_all_nav_listRecordset1pdf1'] == 1) {

?>

          <?php echo $_SESSION['default_max_rows_nav_listRecordset1pdf1']; ?>

          <?php 

  // else Conditional region1

  } else { ?>

          <?php echo NXT_getResource("all"); ?>

          <?php } 

  // endif Conditional region1

?>

            <?php echo NXT_getResource("records"); ?></a> &nbsp;

        &nbsp;

                <?php 

  // Show IF Conditional region2

  if (@$_SESSION['has_filter_tfi_listRecordset1pdf1'] == 1) {

?>

                  <a href="<?php echo $tfi_listRecordset1pdf1->getResetFilterLink(); ?>"><?php echo NXT_getResource("Reset filter"); ?></a>

                  <?php 

  // else Conditional region2

  } else { ?>

                  <a href="<?php echo $tfi_listRecordset1pdf1->getShowFilterLink(); ?>"><?php echo NXT_getResource("Show filter"); ?></a>

                  <?php } 

  // endif Conditional region2

?>

      </div>

      <table cellpadding="2" cellspacing="0" class="KT_tngtable">

        <thead>

          <tr class="KT_row_order">

            <th> <input type="checkbox" name="KT_selAll" id="KT_selAll"/>

            </th>

            <th id="name_uploadpdf" class="KT_sorter KT_col_name_uploadpdf <?php echo $tso_listRecordset1pdf1->getSortIcon('name_uploadpdf'); ?>"> <a href="<?php echo $tso_listRecordset1pdf1->getSortLink('name_uploadpdf'); ?>">Name</a> </th>

            <th id="file_uploadpdf" class="KT_sorter KT_col_file_uploadpdf <?php echo $tso_listRecordset1pdf1->getSortIcon('file_uploadpdf'); ?>"> <a href="<?php echo $tso_listRecordset1pdf1->getSortLink('file_uploadpdf'); ?>">File</a> </th>

            <th id="language_id" class="KT_sorter KT_col_language_id <?php echo $tso_listRecordset1pdf1->getSortIcon('language_id'); ?>"> <a href="<?php echo $tso_listRecordset1pdf1->getSortLink('language_id'); ?>">Language</a> </th>

            <th>&nbsp;</th>

          </tr>

          <?php 

  // Show IF Conditional region3

  if (@$_SESSION['has_filter_tfi_listRecordset1pdf1'] == 1) {

?>

            <tr class="KT_row_filter">

              <td>&nbsp;</td>

              <td><input type="text" name="tfi_listRecordset1pdf1_name_uploadpdf" id="tfi_listRecordset1pdf1_name_uploadpdf" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listRecordset1pdf1_name_uploadpdf']); ?>" size="20" maxlength="20" /></td>

              <td><input type="text" name="tfi_listRecordset1pdf1_file_uploadpdf" id="tfi_listRecordset1pdf1_file_uploadpdf" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listRecordset1pdf1_file_uploadpdf']); ?>" size="20" maxlength="20" /></td>

              <td><input type="text" name="tfi_listRecordset1pdf1_language_id" id="tfi_listRecordset1pdf1_language_id" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listRecordset1pdf1_language_id']); ?>" size="20" maxlength="20" /></td>

              <td><input type="submit" name="tfi_listRecordset1pdf1" value="<?php echo NXT_getResource("Filter"); ?>" /></td>

            </tr>

            <?php } 

  // endif Conditional region3

?>

        </thead>

        <tbody>

          <?php if ($totalRows_Recordset1pdf == 0) { // Show if recordset empty ?>

            <tr>

              <td colspan="4"><?php echo NXT_getResource("The table is empty or the filter you've selected is too restrictive."); ?></td>

            </tr>

            <?php } // Show if recordset empty ?>

          <?php if ($totalRows_Recordset1pdf > 0) { // Show if recordset not empty ?>

            <?php do { ?>

              <tr class="<?php echo @$cnt1++%2==0 ? "" : "KT_even"; ?>">

                <td><input type="checkbox" name="kt_pk_uploadpdf" class="id_checkbox" value="<?php echo $row_Recordset1pdf['id_uploadpdf']; ?>" />

                    <input type="hidden" name="id_uploadpdf" class="id_field" value="<?php echo $row_Recordset1pdf['id_uploadpdf']; ?>" />

                </td>

                <td><div class="KT_col_name_uploadpdf"><?php echo KT_FormatForList($row_Recordset1pdf['name_uploadpdf'], 20); ?></div></td>

                <td><div class="KT_col_file_uploadpdf"><?php echo KT_FormatForList($row_Recordset1pdf['file_uploadpdf'], 20); ?></div></td>

                <td><div class="KT_col_language_id"><?php echo KT_FormatForList($row_Recordset1pdf['language_id'], 20); ?></div></td>

                <td><a class="KT_edit_link" href="uploadpdfdetail.php?id_uploadpdf=<?php echo $row_Recordset1pdf['id_uploadpdf']; ?>&amp;KT_back=1"><?php echo NXT_getResource("edit_one"); ?></a> <a class="KT_delete_link" href="#delete"><?php echo NXT_getResource("delete_one"); ?></a> </td>

              </tr>

              <?php } while ($row_Recordset1pdf = mysql_fetch_assoc($Recordset1pdf)); ?>

            <?php } // Show if recordset not empty ?>

        </tbody>

      </table>

      <div class="KT_bottomnav">

        <div>

          <?php

            $nav_listRecordset1pdf1->Prepare();

            require("includes/nav/NAV_Text_Navigation.inc.php");

          ?>

        </div>

      </div>

      <div class="KT_bottombuttons">

        <div class="KT_operations"> <a class="KT_edit_op_link" href="#" onclick="nxt_list_edit_link_form(this); return false;"><?php echo NXT_getResource("edit_all"); ?></a> <a class="KT_delete_op_link" href="#" onclick="nxt_list_delete_link_form(this); return false;"><?php echo NXT_getResource("delete_all"); ?></a> </div>

<span>&nbsp;</span>

        <select name="no_new" id="no_new">

          <option value="1">1</option>

          <option value="3">3</option>

          <option value="6">6</option>

        </select>

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

mysql_free_result($Recordset1pdf);

?>

