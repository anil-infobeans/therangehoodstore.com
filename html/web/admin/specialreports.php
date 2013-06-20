<?php		session_start();

		if(!isset($_SESSION['MM_Username'])){		

			header('Location: login.php');			

		}

?>

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

//$conn_wa_coneccion = new KT_connection($wa_coneccion, $database_wa_coneccion);



//Start Restrict Access To Page

//$restrict = new tNG_RestrictAccess($conn_wa_coneccion, "");

//Grand Levels: Any

//$restrict->Execute();

//End Restrict Access To Page

?><?php

  require('includes/application_top.php');



  $action = (isset($HTTP_GET_VARS['action']) ? $HTTP_GET_VARS['action'] : '');



  if (tep_not_null($action)) {

    switch($action){

      case 'setflag':

        if ( ($HTTP_GET_VARS['flag'] == '0') || ($HTTP_GET_VARS['flag'] == '1') ) {

          if (isset($HTTP_GET_VARS['pID'])) {

            tep_db_query("update pages set pages_status='".$HTTP_GET_VARS['flag']."' where pages_id='".$HTTP_GET_VARS['pID']."'");

          }

          if (USE_CACHE == 'true') {

            tep_reset_cache_block('pages');

          }

        }



        tep_redirect(tep_href_link(FILENAME_PAGES, 'pID=' . $HTTP_GET_VARS['pID']));

        break;

      case 'insert_page':

      case 'update_page':

        if (isset($HTTP_POST_VARS['edit_x']) || isset($HTTP_POST_VARS['edit_y'])) {

          $action = 'new_page';

        } else {

          if (isset($HTTP_GET_VARS['pID'])) $pages_id = tep_db_prepare_input($HTTP_GET_VARS['pID']);



          $sql_data_array = array('pages_name' => tep_db_prepare_input($HTTP_POST_VARS['pages_name']),

                                  'pages_image' => tep_db_prepare_input($HTTP_POST_VARS['pages_image']),

                                  'pages_status' => tep_db_prepare_input($HTTP_POST_VARS['pages_status']),

                                  'sort_order' => tep_db_prepare_input($HTTP_POST_VARS['sort_order']));



          if ($action == 'insert_page') {

            tep_db_perform(TABLE_PAGES, $sql_data_array);

            $pages_id = tep_db_insert_id();

          }

          elseif ($action == 'update_page') {

            tep_db_perform(TABLE_PAGES, $sql_data_array, 'update', "pages_id = '" . (int)$pages_id . "'");

          }



          $languages = tep_get_languages();

          for ($i=0, $n=sizeof($languages); $i<$n; $i++) {

            $pages_title_array = $HTTP_POST_VARS['pages_title'];

            $pages_body_array = $HTTP_POST_VARS['pages_body'];

            $language_id = $languages[$i]['id'];



            $sql_data_array = array('pages_title' => tep_db_prepare_input($pages_title_array[$language_id]),

                                    'pages_body' => tep_db_prepare_input($pages_body_array[$language_id]));



            if ($action == 'insert_page') {

              $insert_sql_data = array('pages_id' => $pages_id,

                                       'language_id' => $languages[$i]['id']);



              $sql_data_array = array_merge($sql_data_array, $insert_sql_data);



              tep_db_perform(TABLE_PAGES_DESCRIPTION, $sql_data_array);

            }

            elseif ($action == 'update_page') {

              tep_db_perform(TABLE_PAGES_DESCRIPTION, $sql_data_array, 'update', "pages_id = '" . (int)$pages_id . "' and language_id = '" . (int)$languages[$i]['id'] . "'");

            }

          }



          if ($pages_image = new upload('pages_image', DIR_FS_CATALOG_IMAGES)) {

            tep_db_query("update " . TABLE_PAGES . " set pages_image = '" . tep_db_prepare_input($HTTP_POST_VARS['pages_image']) . "' where pages_id = '" . (int)$pages_id . "'"); }



          if (USE_CACHE == 'true') {

            tep_reset_cache_block('pages');

          }



          tep_redirect(tep_href_link(FILENAME_PAGES, 'pID=' . $pages_id));

        }

        break;



      case 'delete_page_confirm':

        if (isset($HTTP_POST_VARS['pages_id'])) {

          $pages_id = tep_db_prepare_input($HTTP_POST_VARS['pages_id']);

          if($pages_id!=1 && $pages_id!=2){

            tep_db_query("delete from " . TABLE_PAGES . " where pages_id = '" . (int)$pages_id . "'");

            tep_db_query("delete from " . TABLE_PAGES_DESCRIPTION . " where pages_id = '" . (int)$pages_id . "'");

          }

        }



        if (USE_CACHE == 'true') {

          tep_reset_cache_block('pages');

        }



        tep_redirect(tep_href_link(FILENAME_PAGES));

        break;

      case 'new_page_preview':

        $pages_image = new upload('pages_image');

        $pages_image->set_destination(DIR_FS_CATALOG_IMAGES);

        if ($pages_image->parse() && $pages_image->save()) {

          $pages_image_name = $pages_image->filename;

        } else {

          $pages_image_name = (isset($HTTP_POST_VARS['pages_previous_image']) ? $HTTP_POST_VARS['pages_previous_image'] : '');

        }

        break;



    }

  }



// check if the catalog image directory exists

  if (is_dir(DIR_FS_CATALOG_IMAGES)) {

    if (!is_writeable(DIR_FS_CATALOG_IMAGES)) $messageStack->add(ERROR_CATALOG_IMAGE_DIRECTORY_NOT_WRITEABLE, 'error');

  } else {

    $messageStack->add(ERROR_CATALOG_IMAGE_DIRECTORY_DOES_NOT_EXIST, 'error');

  }



?>

<!doctype html public "-//W3C//DTD HTML 4.01 Transitional//EN">

<html <?php echo HTML_PARAMS; ?>>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=<?php echo CHARSET; ?>">

<title><?php echo TITLE; ?></title>

<link rel="stylesheet" type="text/css" href="includes/stylesheet.css">

<script language="javascript" src="includes/general.js"></script>

  <script language="Javascript1.2"><!-- // load htmlarea

  //MaxiDVD Added WYSIWYG HTML Area Box + Admin Function v1.6.5 Products Description HTML - Head

        _editor_url = "<?php echo (($request_type == 'SSL') ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_ADMIN; ?>htmlarea/";  // URL to htmlarea files

          var win_ie_ver = parseFloat(navigator.appVersion.split("MSIE")[1]);

           if (navigator.userAgent.indexOf('Mac')        >= 0) { win_ie_ver = 0; }

            if (navigator.userAgent.indexOf('Windows CE') >= 0) { win_ie_ver = 0; }

             if (navigator.userAgent.indexOf('Opera')      >= 0) { win_ie_ver = 0; }

         <?php if (HTML_AREA_WYSIWYG_BASIC_DEFINE == 'Basic'){ ?>  if (win_ie_ver >= 5.5) {

         document.write('<scr' + 'ipt src="' +_editor_url+ 'editor_basic.js"');

         document.write(' language="Javascript1.2"></scr' + 'ipt>');

            } else { document.write('<scr'+'ipt>function editor_generate() { return false; }</scr'+'ipt>'); }

         <?php } else{ ?> if (win_ie_ver >= 5.5) {

         document.write('<scr' + 'ipt src="' +_editor_url+ 'editor_advanced.js"');

         document.write(' language="Javascript1.2"></scr' + 'ipt>');

            } else { document.write('<scr'+'ipt>function editor_generate() { return false; }</scr'+'ipt>'); }

         <?php }?>

  // --></script>



</head>

<body marginwidth="0" marginheight="0" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0" bgcolor="#FFFFFF" onLoad="SetFocus();" >

<div id="spiffycalendar" class="text"></div>

<!-- header //-->

<?php require(DIR_WS_INCLUDES . 'header.php'); ?>

<!-- header_eof //-->



<!-- body //-->

<table border="0" width="100%" cellspacing="0" cellpadding="0">

  <tr>

    <td width="<?php echo BOX_WIDTH; ?>" valign="top"><table border="0" width="<?php echo BOX_WIDTH; ?>" cellspacing="0" cellpadding="0" class="columnLeft">

<!-- left_navigation //-->

<?php require(DIR_WS_INCLUDES . 'column_left.php'); ?>

<!-- left_navigation_eof //-->

    </table></td>

<!-- body_text //-->

    <td width="100%" valign="top" style="padding-left:20px; padding-top:20px">

<?php echo  '<a href="admin_events.php" class="menuBoxContentLink" target="_blank">Special Reports</a><br>';?>

    </td>

<!-- body_text_eof //-->

  </tr>

</table>

<!-- body_eof //-->



<!-- footer //-->

<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>

<!-- footer_eof //-->

<br>

</body>

</html>

<?php require(DIR_WS_INCLUDES . 'application_bottom.php'); ?>