<?php		

		session_start();

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



// Load the required classes

require_once('includes/tfi/TFI.php');

require_once('includes/tso/TSO.php');

require_once('includes/nav/NAV.php');



// Make unified connection variable

$conn_wa_coneccion = new KT_connection($wa_coneccion, $database_wa_coneccion);



//Start Restrict Access To Page

//$restrict = new tNG_RestrictAccess($conn_wa_coneccion, "");

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

$tfi_listcomments1 = new TFI_TableFilter($conn_wa_coneccion, "tfi_listcomments1");

$tfi_listcomments1->addColumn("comments.name_comments", "STRING_TYPE", "name_comments", "%");

$tfi_listcomments1->addColumn("comments.email_comments", "STRING_TYPE", "email_comments", "%");

$tfi_listcomments1->addColumn("comments.date_comments", "DATE_TYPE", "date_comments", "=");

$tfi_listcomments1->addColumn("comments.text_comments", "STRING_TYPE", "text_comments", "%");

$tfi_listcomments1->addColumn("comments.check_comments", "NUMERIC_TYPE", "check_comments", "=");

$tfi_listcomments1->addColumn("comments.id_news", "NUMERIC_TYPE", "id_news", "=");

$tfi_listcomments1->addColumn("comments.id_events", "NUMERIC_TYPE", "id_events", "=");

$tfi_listcomments1->addColumn("comments.id_promotion", "NUMERIC_TYPE", "id_promotion", "=");

$tfi_listcomments1->addColumn("comments.id", "NUMERIC_TYPE", "id", "=");

$tfi_listcomments1->addColumn("comments.id_language", "NUMERIC_TYPE", "id_language", "=");

$tfi_listcomments1->Execute();



// Sorter

$tso_listcomments1 = new TSO_TableSorter("rscomments1", "tso_listcomments1");

$tso_listcomments1->addColumn("comments.name_comments");

$tso_listcomments1->addColumn("comments.email_comments");

$tso_listcomments1->addColumn("comments.date_comments");

$tso_listcomments1->addColumn("comments.text_comments");

$tso_listcomments1->addColumn("comments.check_comments");

$tso_listcomments1->addColumn("comments.id_news");

$tso_listcomments1->addColumn("comments.id_events");

$tso_listcomments1->addColumn("comments.id_promotion");

$tso_listcomments1->addColumn("comments.id");

$tso_listcomments1->addColumn("comments.id_language");

$tso_listcomments1->setDefault("comments.name_comments");

$tso_listcomments1->Execute();



// Navigation

$nav_listcomments1 = new NAV_Regular("nav_listcomments1", "rscomments1", "", $_SERVER['PHP_SELF'], 10);



mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1_comments = "SELECT co.*, co_d.* FROM comments co, comments_description co_d WHERE  co.id_comments=co_d.id_comments ORDER BY co.id_comments DESC";

$Recordset1_comments = mysql_query($query_Recordset1_comments, $wa_coneccion) or die(mysql_error());

$row_Recordset1_comments = mysql_fetch_assoc($Recordset1_comments);

$totalRows_Recordset1_comments = mysql_num_rows($Recordset1_comments);



//NeXTenesio3 Special List Recordset

$maxRows_rscomments1 = $_SESSION['max_rows_nav_listcomments1'];

$pageNum_rscomments1 = 0;

if (isset($_GET['pageNum_rscomments1'])) {

  $pageNum_rscomments1 = $_GET['pageNum_rscomments1'];

}

$startRow_rscomments1 = $pageNum_rscomments1 * $maxRows_rscomments1;



// Defining List Recordset variable

$NXTFilter_rscomments1 = "1=1";

if (isset($_SESSION['filter_tfi_listcomments1'])) {

  $NXTFilter_rscomments1 = $_SESSION['filter_tfi_listcomments1'];

}

// Defining List Recordset variable

$NXTSort_rscomments1 = "comments.name_comments";

if (isset($_SESSION['sorter_tso_listcomments1'])) {

  $NXTSort_rscomments1 = $_SESSION['sorter_tso_listcomments1'];

}

mysql_select_db($database_wa_coneccion, $wa_coneccion);



$query_rscomments1 = "SELECT co.*, co_d.* FROM comments co, comments_description co_d WHERE  co.id_comments=co_d.id_comments ORDER BY co.id_comments DESC";

$query_limit_rscomments1 = sprintf("%s LIMIT %d, %d", $query_rscomments1, $startRow_rscomments1, $maxRows_rscomments1);

$rscomments1 = mysql_query($query_limit_rscomments1, $wa_coneccion) or die(mysql_error());

$row_rscomments1 = mysql_fetch_assoc($rscomments1);



if (isset($_GET['totalRows_rscomments1'])) {

  $totalRows_rscomments1 = $_GET['totalRows_rscomments1'];

} else {

  $all_rscomments1 = mysql_query($query_rscomments1);

  $totalRows_rscomments1 = mysql_num_rows($all_rscomments1);

}

$totalPages_rscomments1 = ceil($totalRows_rscomments1/$maxRows_rscomments1)-1;

//End NeXTenesio3 Special List Recordset



$nav_listcomments1->checkBoundries();

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

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="titulo">Blog Comments</span>



<div class="main">

<span class="descripcion"><?php echo LISTINGCOMMENTS; ?></span><br>

<br>

<div class="KT_tng" id="listcomments1">



  <div class="KT_tnglist">

    <form action="<?php echo KT_escapeAttribute(KT_getFullUri()); ?>" method="post" id="form1">

      <div class="KT_options"> <a href="<?php echo $nav_listcomments1->getShowAllLink(); ?>">

        <?php 

  // Show IF Conditional region1

  if (@$_GET['show_all_nav_listcomments1'] == 1) {

?>

          <?php echo $_SESSION['default_max_rows_nav_listcomments1']; ?>

          <?php 

  // else Conditional region1

  } else { ?>

          <?php echo ALL; ?>

          <?php } 

  // endif Conditional region1

?>

            <?php echo RECORDS; ?></a> &nbsp;

        &nbsp;



      </div>

      <table cellpadding="2" cellspacing="0" class="KT_tngtable" width="896">

        <thead>

          <tr class="KT_row_order">

            <th>&nbsp;</th>

            <th id="name_comments"><?php echo NAME; ?></th>

            <th id="email_comments">Email</th>

            <th id="date_comments"><?php echo DATE; ?></th>

            <th id="text_comments"><?php echo CONTENT; ?></th>

            <th id="check_comments"><?php echo PUBLISH; ?></th>

            <th id="id_news"><?php echo NEWS; ?></th>

            <th id="id_events"><?php echo EVENTS; ?></th>

            <th id="id_promotion"><?php echo PROMOTIONS; ?></th>

            <th id="id_promotion"><?php echo BUTTON; ?></th>

            <th id="id_language"><?php echo LANGUAGE; ?></th>

            <th>&nbsp;</th>

          </tr>

          <?php 

  // Show IF Conditional region3

  if (@$_SESSION['has_filter_tfi_listcomments1'] == 1) {

?>

            <tr class="KT_row_filter">

              <td>&nbsp;</td>

              <td><input type="text" name="tfi_listcomments1_name_comments" id="tfi_listcomments1_name_comments" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listcomments1_name_comments']); ?>" size="20" maxlength="200" /></td>

              <td><input type="text" name="tfi_listcomments1_email_comments" id="tfi_listcomments1_email_comments" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listcomments1_email_comments']); ?>" size="20" maxlength="200" /></td>

              <td><input type="text" name="tfi_listcomments1_date_comments" id="tfi_listcomments1_date_comments" value="<?php echo @$_SESSION['tfi_listcomments1_date_comments']; ?>" size="10" maxlength="22" /></td>

              <td><input type="text" name="tfi_listcomments1_text_comments" id="tfi_listcomments1_text_comments" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listcomments1_text_comments']); ?>" size="20" maxlength="100" /></td>

              <td><input type="text" name="tfi_listcomments1_check_comments" id="tfi_listcomments1_check_comments" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listcomments1_check_comments']); ?>" size="20" maxlength="100" /></td>

              <td><input type="text" name="tfi_listcomments1_id_news" id="tfi_listcomments1_id_news" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listcomments1_id_news']); ?>" size="20" maxlength="100" /></td>

              <td><input type="text" name="tfi_listcomments1_id_events" id="tfi_listcomments1_id_events" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listcomments1_id_events']); ?>" size="20" maxlength="100" /></td>

              <td><input type="text" name="tfi_listcomments1_id_promotion" id="tfi_listcomments1_id_promotion" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listcomments1_id_promotion']); ?>" size="20" maxlength="100" /></td>

              <td><input type="text" name="tfi_listcomments1_id_categories" id="tfi_listcomments1_id_categories" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listcomments1_id_categories']); ?>" size="20" maxlength="100" /></td>

             <td><input type="text" name="tfi_listcomments1_id_language" id="tfi_listcomments1_id_language" value="<?php echo KT_escapeAttribute(@$_SESSION['tfi_listcomments1_id_language']); ?>" size="20" maxlength="100" /></td>

              <td><input type="submit" name="tfi_listcomments1" value="<?php echo NXT_getResource("Filter"); ?>" /></td>

            </tr>

            <?php } 

  // endif Conditional region3

?>

        </thead>

        <tbody>

          <?php if ($totalRows_rscomments1 == 0) { // Show if recordset empty ?>

            <tr>

              <td colspan="10"><?php echo TEXTO77; ?></td>

            </tr>

            <?php } // Show if recordset empty ?>

          <?php if ($totalRows_rscomments1 > 0) { // Show if recordset not empty ?>

            <?php do { ?>

            

            

            <?php if($row_rscomments1['check_comments']==0){

					$changecheck=NO;

				   } else {

				   $changecheck=YES;

				   }

			

			

			 ?>

            

              <tr class="<?php echo @$cnt1++%2==0 ? "" : "KT_even"; ?>">

                <td>&nbsp;</td>

                <td><div class="KT_col_name_comments"><?php echo KT_FormatForList($row_rscomments1['name_comments'], 20); ?></div></td>

                <td><div class="KT_col_email_comments"><?php echo KT_FormatForList($row_rscomments1['email_comments'], 20); ?></div></td>

                <td><div class="KT_col_date_comments"><?php echo KT_formatDate($row_rscomments1['date_comments']); ?></div></td>

                <td><div class="KT_col_text_comments"><?php echo KT_FormatForList($row_rscomments1['text_comments'], 20); ?></div></td>

                <td><div class="KT_col_check_comments"><?php echo $changecheck; ?></div></td>

                <td><div class="KT_col_id_news"><?php echo KT_FormatForList($row_rscomments1['id_news'], 20); ?></div></td>

                <td><div class="KT_col_id_events"><?php echo KT_FormatForList($row_rscomments1['id_events'], 20); ?></div></td>

                <td><div class="KT_col_id_promotion"><?php echo KT_FormatForList($row_rscomments1['id_promotion'], 20); ?></div></td>

                <td><div class="KT_col_id_categories"><?php echo KT_FormatForList($row_rscomments1['id'], 20); ?></div></td>

                <td><div class="KT_col_id_language"><img src="img_web/<?php echo $image_language_array[$row_rscomments1['id_language']-1]; ?>" /></div></td>

                <td align="right"><a class="KT_edit_link" href="admin_comments_detail.php?id_comments=<?php echo $row_rscomments1['id_comments']; ?>&amp;KT_back=1"><?php echo EDIT; ?></a> </td>

              </tr>

              <?php } while ($row_rscomments1 = mysql_fetch_assoc($rscomments1)); ?>

            <?php } // Show if recordset not empty ?>

        </tbody>

      </table>

      <div class="KT_bottomnav">

        <div>

          <?php

            $nav_listcomments1->Prepare();

            require("includes/nav/NAV_Text_Navigation.inc.php");

          ?>

        </div>

      </div>

      <div class="KT_bottombuttons">

        <div class="KT_operations"> </div>

<span>&nbsp;</span>

       </div>

    </form>

  </div>

  <br class="clearfixplain" />

</div>

</div>





</body>

</html>



<?php

mysql_free_result($Recordset1_comments);



mysql_free_result($rscomments1);

?>

