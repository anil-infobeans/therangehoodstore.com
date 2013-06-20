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

$tfi_listRecordset3 = new TFI_TableFilter($conn_comte, "tfi_listRecordset3");

$tfi_listRecordset3->addColumn("name_music", "STRING_TYPE", "name_music", "%");

$tfi_listRecordset3->addColumn("band_music", "STRING_TYPE", "band_music", "%");

$tfi_listRecordset3->addColumn("file_music", "STRING_TYPE", "file_music", "%");

$tfi_listRecordset3->Execute();



// Sorter

$tso_listRecordset3 = new TSO_TableSorter("Recordset3", "tso_listRecordset3");

$tso_listRecordset3->addColumn("name_music");

$tso_listRecordset3->addColumn("band_music");

$tso_listRecordset3->addColumn("file_music");

$tso_listRecordset3->setDefault("name_music DESC");

$tso_listRecordset3->Execute();



// Navigation

$nav_listRecordset3 = new NAV_Regular("nav_listRecordset3", "Recordset3", "", $_SERVER['PHP_SELF'], 10);



//NeXTenesio3 Special List Recordset

$maxRows_Recordset3 = $_SESSION['max_rows_nav_listRecordset3'];

$pageNum_Recordset3 = 0;

if (isset($_GET['pageNum_Recordset3'])) {

  $pageNum_Recordset3 = $_GET['pageNum_Recordset3'];

}

$startRow_Recordset3 = $pageNum_Recordset3 * $maxRows_Recordset3;



// Defining List Recordset variable

$NXTFilter_Recordset3 = "1=1";

if (isset($_SESSION['filter_tfi_listRecordset3'])) {

  $NXTFilter_Recordset3 = $_SESSION['filter_tfi_listRecordset3'];

}

// Defining List Recordset variable

$NXTSort_Recordset3 = "name_music DESC";

if (isset($_SESSION['sorter_tso_listRecordset3'])) {

  $NXTSort_Recordset3 = $_SESSION['sorter_tso_listRecordset3'];

}

mysql_select_db($database_comte, $comte);



$query_Recordset3 = "SELECT * FROM music WHERE  {$NXTFilter_Recordset3}  ORDER BY  {$NXTSort_Recordset3} ";

$query_limit_Recordset3 = sprintf("%s LIMIT %d, %d", $query_Recordset3, $startRow_Recordset3, $maxRows_Recordset3);

$Recordset3 = mysql_query($query_limit_Recordset3, $comte) or die(mysql_error());

$row_Recordset3 = mysql_fetch_assoc($Recordset3);



if (isset($_GET['totalRows_Recordset3'])) {

  $totalRows_Recordset3 = $_GET['totalRows_Recordset3'];

} else {

  $all_Recordset3 = mysql_query($query_Recordset3);

  $totalRows_Recordset3 = mysql_num_rows($all_Recordset3);

}

$totalPages_Recordset3 = ceil($totalRows_Recordset3/$maxRows_Recordset3)-1;

//End NeXTenesio3 Special List Recordset



$nav_listRecordset3->checkBoundries();

?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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



<link rel="stylesheet" type="text/css" href="estilosadmin.css">

</head>



<body>



<div class="subtitulo">&nbsp;</div><br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/logo2.png"/><br />

<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="titulo">Music</span>

<div class="main">

<div class="KT_tng" id="listRecordset3">

<div class="KT_tnglist">

    <form action="<?php echo KT_escapeAttribute(KT_getFullUri()); ?>" method="post" id="form1">

      <div class="KT_options"> <a href="<?php echo $nav_listRecordset3->getShowAllLink(); ?>"><?php echo NXT_getResource("Show"); ?>

        <?php 

  // Show IF Conditional region1

  if (@$_GET['show_all_nav_listRecordset3'] == 1) {

?>

          <?php echo $_SESSION['default_max_rows_nav_listRecordset3']; ?>

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

  if (@$_SESSION['has_filter_tfi_listRecordset3'] == 1) {

?>

                  <a href="<?php echo $tfi_listRecordset3->getResetFilterLink(); ?>"><?php echo NXT_getResource("Reset filter"); ?></a>

                  <?php 

  // else Conditional region2

  } else { ?>

                  <a href="<?php echo $tfi_listRecordset3->getShowFilterLink(); ?>"><?php echo NXT_getResource("Show filter"); ?></a>

                  <?php } 

  // endif Conditional region2

?>

      </div>

      <table cellpadding="2" cellspacing="0" class="KT_tngtable" width="800">

        <thead>

          <tr class="KT_row_order">

            <th> <input type="checkbox" name="KT_selAll" id="KT_selAll"/>

            </th>

            <th id="name_music" class="KT_sorter KT_col_name_music <?php echo $tso_listRecordset3->getSortIcon('name_music'); ?>"> <a href="<?php echo $tso_listRecordset3->getSortLink('name_music'); ?>">Name_music</a> </th>

            <th id="band_music" class="KT_sorter KT_col_band_music <?php echo $tso_listRecordset3->getSortIcon('band_music'); ?>"> <a href="<?php echo $tso_listRecordset3->getSortLink('band_music'); ?>">Band_music</a> </th>

            <th id="file_music" class="KT_sorter KT_col_file_music <?php echo $tso_listRecordset3->getSortIcon('file_music'); ?>"> <a href="<?php echo $tso_listRecordset3->getSortLink('file_music'); ?>">File_music</a> </th>

            <th>&nbsp;</th>

          </tr>

          <?php 

  // Show IF Conditional region3

  if (@$_SESSION['has_filter_tfi_listRecordset3'] == 1) {

?>

            <tr class="KT_row_filter">

              <td>&nbsp;</td>

              <td><input type="text" name="tfi_listRecordset3_name_music" id="tfi_listRecordset3_name_music" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listRecordset3_name_music']); ?>" size="20" maxlength="20" /></td>

              <td><input type="text" name="tfi_listRecordset3_band_music" id="tfi_listRecordset3_band_music" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listRecordset3_band_music']); ?>" size="20" maxlength="20" /></td>

              <td><input type="text" name="tfi_listRecordset3_file_music" id="tfi_listRecordset3_file_music" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listRecordset3_file_music']); ?>" size="20" maxlength="20" /></td>

              <td><input type="submit" name="tfi_listRecordset3" value="<?php echo NXT_getResource("Filter"); ?>" /></td>

            </tr>

            <?php } 

  // endif Conditional region3

?>

        </thead>

        <tbody>

          <?php if ($totalRows_Recordset3 == 0) { // Show if recordset empty ?>

            <tr>

              <td colspan="5"><?php echo NXT_getResource("The table is empty or the filter you've selected is too restrictive."); ?></td>

            </tr>

            <?php } // Show if recordset empty ?>

          <?php if ($totalRows_Recordset3 > 0) { // Show if recordset not empty ?>

            <?php do { ?>

              <tr class="<?php echo @$cnt1++%2==0 ? "" : "KT_even"; ?>">

                <td><input type="checkbox" name="kt_pk_music" class="id_checkbox" value="<?php echo $row_Recordset3['id_music']; ?>" />

                    <input type="hidden" name="id_music" class="id_field" value="<?php echo $row_Recordset3['id_music']; ?>" />

                </td>

                <td><div class="KT_col_name_music"><?php echo KT_FormatForList($row_Recordset3['name_music'], 20); ?></div></td>

                <td><div class="KT_col_band_music"><?php echo KT_FormatForList($row_Recordset3['band_music'], 20); ?></div></td>

                <td><div class="KT_col_file_music"><?php echo KT_FormatForList($row_Recordset3['file_music'], 20); ?></div></td>

                <td><a class="KT_edit_link" href="playlistadminedit.php?id_music=<?php echo $row_Recordset3['id_music']; ?>&amp;KT_back=1"><?php echo NXT_getResource("edit_one"); ?></a> <a class="KT_delete_link" href="#delete"><?php echo NXT_getResource("delete_one"); ?></a> </td>

              </tr>

              <?php } while ($row_Recordset3 = mysql_fetch_assoc($Recordset3)); ?>

            <?php } // Show if recordset not empty ?>

        </tbody>

      </table>

      <div class="KT_bottomnav">

        <div>

          <?php

            $nav_listRecordset3->Prepare();

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

        <a class="KT_additem_op_link" href="playlistadminedit.php?KT_back=1" onclick="return nxt_list_additem(this)"><?php echo NXT_getResource("add new"); ?></a> </div>

    </form>

  </div>

  <br class="clearfixplain" />

</div>

</div>

</body>

</html>

<?php

mysql_free_result($Recordset3);

?>

