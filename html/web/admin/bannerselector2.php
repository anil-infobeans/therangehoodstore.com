<?php		session_start();

		if(!isset($_SESSION['MM_Username'])){		

			header('Location: login.php');			

		}

?>

<?php





  require('includes/application_top.php');



  require(DIR_WS_CLASSES . 'currencies.php');

  $currencies = new currencies();

  // BOF Separate Pricing Per Customer

      $customers_groups_query = tep_db_query("select customers_group_name, customers_group_id from " . TABLE_CUSTOMERS_GROUPS . " order by customers_group_id ");

    while ($existing_groups =  tep_db_fetch_array($customers_groups_query)) {

         $input_groups[] = array("id"=>$existing_groups['customers_group_id'], "text"=> $existing_groups['customers_group_name']);

        $all_groups[$existing_groups['customers_group_id']]=$existing_groups['customers_group_name'];

    }

// EOF Separate Pricing Per Customer



  $action = (isset($HTTP_GET_VARS['action']) ? $HTTP_GET_VARS['action'] : '');



  if (tep_not_null($action)) {

    switch ($action) {

      case 'setflag':

        tep_set_bannersreal_status($HTTP_GET_VARS['id'], $HTTP_GET_VARS['flag']);



        tep_redirect(tep_href_link(FILENAME_BANNERSREAL, (isset($HTTP_GET_VARS['page']) ? 'page=' . $HTTP_GET_VARS['page'] . '&' : '') . 'sID=' . $HTTP_GET_VARS['id'], 'NONSSL'));

        break;

      case 'insert':

        $products_id = tep_db_prepare_input($HTTP_POST_VARS['products_id']);

// BOF Separate Pricing Per Customer

/*        tep_db_query("insert into " . TABLE_BANNERSREAL . " (products_id, bannersreal_new_products_price, bannersreal_date_added, expires_date, status) values ('" . (int)$products_id . "', '" . tep_db_input($bannersreal_price) . "', now(), '" . tep_db_input($expires_date) . "', '1')"); */

    tep_db_query("insert into " . TABLE_BANNERSREAL . " (products_id) values ('" . (int)$products_id . "')");

// EOF Separate Pricing Per Customer



        tep_redirect(tep_href_link(FILENAME_BANNERSREAL, 'page=' . $HTTP_GET_VARS['page']));

        break;



      case 'deleteconfirm':

        $id_bannersreal = tep_db_prepare_input($HTTP_GET_VARS['sID']);



        tep_db_query("delete from " . TABLE_BANNERSREAL . " where id_bannersreal = '" . (int)$id_bannersreal . "'");



        tep_redirect(tep_href_link(FILENAME_BANNERSREAL, 'page=' . $HTTP_GET_VARS['page']));

        break;

    }

  }

?>

<!doctype html public "-//W3C//DTD HTML 4.01 Transitional//EN">

<html <?php echo HTML_PARAMS; ?>>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=<?php echo CHARSET; ?>">

<title><?php echo TITLE; ?></title>

<link rel="stylesheet" type="text/css" href="includes/stylesheet.css">

<script language="javascript" src="includes/general.js"></script>

</head>

<body marginwidth="0" marginheight="0" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0" bgcolor="#FFFFFF" onLoad="SetFocus();">

<div id="popupcalendar" class="text"></div>

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

    <td width="100%" valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="0">

      <tr>

        <td width="100%"><table border="0" width="100%" cellspacing="0" cellpadding="0">

          <tr>

            <td class="pageHeading"><?php echo HEADING_TITLE; ?></td>

            <td class="pageHeading" align="right"><?php echo tep_draw_separator('pixel_trans.gif', HEADING_IMAGE_WIDTH, HEADING_IMAGE_HEIGHT); ?></td>

          </tr>

        </table></td>

      </tr>

<?php

  if ( ($action == 'new') || ($action == 'edit') ) {

    $form_action = 'insert';

?>

      <tr><form name="new_special" <?php echo 'action="' . tep_href_link(FILENAME_BANNERSREAL, tep_get_all_get_params(array('action', 'info', 'sID')) . 'action=' . $form_action, 'NONSSL') . '"'; ?> method="post"><?php if ($form_action == 'update') echo tep_draw_hidden_field('id_bannersreal', $HTTP_GET_VARS['sID']); ?>

        <td><br><table border="0" cellspacing="0" cellpadding="2">

          <tr>

            <td class="main"><?php echo TEXT_BANNERSREAL_PRODUCT; ?>&nbsp;</td>

            <td class="main"><?php echo (isset($sInfo->products_name)) ? $sInfo->products_name : tep_draw_products_pull_down('products_id', 'style="font-size:10px"', $bannersreal_array); echo tep_draw_hidden_field('products_price', (isset($sInfo->products_price) ? $sInfo->products_price : '')); ?></td>

            </tr>

<!-- BOF Separate Pricing per Customer -->

          

        </table></td>

      </tr>

      <tr>

        <td><table border="0" width="100%" cellspacing="0" cellpadding="2">

          <tr>

            <td class="main"><br></td>

            <td class="main" align="right" valign="top"><br><?php echo (($form_action == 'insert') ? tep_image_submit('button_insert.gif', IMAGE_INSERT) : tep_image_submit('button_update.gif', IMAGE_UPDATE)). '&nbsp;&nbsp;&nbsp;<a href="' . tep_href_link(FILENAME_BANNERSREAL, 'page=' . $HTTP_GET_VARS['page'] . (isset($HTTP_GET_VARS['sID']) ? '&sID=' . $HTTP_GET_VARS['sID'] : '')) . '">' . tep_image_button('button_cancel.gif', IMAGE_CANCEL) . '</a>'; ?></td>

          </tr>

        </table></td>

      </form></tr>

<?php

  } else {

?>

      <tr>

        <td><table border="0" width="100%" cellspacing="0" cellpadding="0">

          <tr>

            <td valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="2">

              <tr class="dataTableHeadingRow">

                <td class="dataTableHeadingContent"><?php echo TABLE_HEADING_PRODUCTS; ?></td>

                <td class="dataTableHeadingContent" align="right"><?php echo TABLE_HEADING_ACTION; ?>&nbsp;</td>

              </tr>

<?php

// BOF Separate Pricing Per Customer

/*    $bannersreal_query_raw = "select p.products_id, pd.products_name, p.products_price, s.id_bannersreal, s.bannersreal_new_products_price, s.bannersreal_date_added, s.bannersreal_last_modified, s.expires_date, s.date_status_change, s.status from " . TABLE_PRODUCTS . " p, " . TABLE_BANNERSREAL . " s, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_id = pd.products_id and pd.language_id = '" . (int)$languages_id . "' and p.products_id = s.products_id order by pd.products_name"; */

    $all_groups = array();

    $customers_groups_query = tep_db_query("select customers_group_name, customers_group_id from " . TABLE_CUSTOMERS_GROUPS . " order by customers_group_id ");

    while ($existing_groups =  tep_db_fetch_array($customers_groups_query)) {

      $all_groups[$existing_groups['customers_group_id']] = $existing_groups['customers_group_name'];

    }



   $bannersreal_query_raw = "select p.products_id, pd.products_name, p.products_price, p.products_image, s.id_bannersreal from " . TABLE_PRODUCTS . " p, " . TABLE_BANNERSREAL . " s, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_id = pd.products_id and pd.language_id = '" . (int)$languages_id . "' and p.products_id = s.products_id order by pd.products_name";







    $bannersreal_split = new splitPageResults($HTTP_GET_VARS['page'], MAX_DISPLAY_SEARCH_RESULTS, $bannersreal_query_raw, $bannersreal_query_numrows);

    $bannersreal_query = tep_db_query($bannersreal_query_raw);

// BOF Separate Pricing Per Customer

    $no_of_rows_in_bannersreal = tep_db_num_rows($bannersreal_query);

    while ($bannersreal = tep_db_fetch_array($bannersreal_query)) {

    for ($y = 0; $y < $no_of_rows_in_bannersreal; $y++) {

    if (  $customers_group_prices[$y]['products_id'] == $bannersreal['products_id'] && $customers_group_prices[$y]['customers_group_id'] == $bannersreal['customers_group_id']) {

    $bannersreal['products_price'] = $customers_group_prices[$y]['customers_group_price'] ;

    } // end if (tep_not_null($customers_group_prices[$y]['customers_group_price'] etcetera

    } // end for loop

// EOF Separate Pricing Per Customer

      if ((!isset($HTTP_GET_VARS['sID']) || (isset($HTTP_GET_VARS['sID']) && ($HTTP_GET_VARS['sID'] == $bannersreal['id_bannersreal']))) && !isset($sInfo)) {

        $products_query = tep_db_query("select products_image from " . TABLE_PRODUCTS . " where products_id = '" . (int)$bannersreal['products_id'] . "'");

        $products = tep_db_fetch_array($products_query);

        $sInfo_array = array_merge($bannersreal, $products);

        $sInfo = new objectInfo($sInfo_array);

      }



      if (isset($sInfo) && is_object($sInfo) && ($bannersreal['id_bannersreal'] == $sInfo->id_bannersreal)) {

        echo '                  <tr id="defaultSelected" class="dataTableRowSelected" onmouseover="rowOverEffect(this)" onmouseout="rowOutEffect(this)">' . "\n";

      } else {

        echo '                  <tr class="dataTableRow" onmouseover="rowOverEffect(this)" onmouseout="rowOutEffect(this)" onclick="document.location.href=\'' . tep_href_link(FILENAME_BANNERSREAL, 'page=' . $HTTP_GET_VARS['page'] . '&sID=' . $bannersreal['id_bannersreal']) . '\'">' . "\n";

      }

?>

<!-- BOF Separate Pricing Per Customer -->









<td  class="dataTableContent" align="left" width="25%"><?php echo tep_image2(DIR_WS_IMAGES . $bannersreal['products_image'], $bannersreal['products_name'], '48', '48','') .'&nbsp;'. $bannersreal['products_name']; ?></td>

<td  class="dataTableContent" align="right" width="25%">&nbsp;</td>

<!-- EOF Separate Pricing per Customer -->

<td class="dataTableContent" align="right" width="25%"><?php if (isset($sInfo) && is_object($sInfo) && ($bannersreal['id_bannersreal'] == $sInfo->id_bannersreal)) { echo tep_image(DIR_WS_IMAGES . 'icon_arrow_right.gif', ''); } else { echo '<a href="' . tep_href_link(FILENAME_BANNERSREAL, 'page=' . $HTTP_GET_VARS['page'] . '&sID=' . $bannersreal['id_bannersreal']) . '">' . tep_image(DIR_WS_IMAGES . 'icon_info.gif', IMAGE_ICON_INFO) . '</a>'; } ?>&nbsp;</td>

      </tr>

<?php

    }

?>

              <tr>

                <td colspan="3"><table border="0" width="100%" cellpadding="0"cellspacing="2">

                  <tr>

                    <td class="smallText" valign="top"><?php echo $bannersreal_split->display_count($bannersreal_query_numrows, MAX_DISPLAY_SEARCH_RESULTS, $HTTP_GET_VARS['page'], TEXT_DISPLAY_NUMBER_OF_BANNERSREAL); ?></td>

                    <td class="smallText" align="right"><?php echo $bannersreal_split->display_links($bannersreal_query_numrows, MAX_DISPLAY_SEARCH_RESULTS, MAX_DISPLAY_PAGE_LINKS, $HTTP_GET_VARS['page']); ?></td>

                  </tr>

<?php

  if (empty($action)) {

?>

                  <tr>

                    <td colspan="2" align="right"><?php echo '<a href="' . tep_href_link(FILENAME_BANNERSREAL, 'page=' . $HTTP_GET_VARS['page'] . '&action=new') . '">' . tep_image_button('button_new_product.gif', IMAGE_NEW_PRODUCT) . '</a>'; ?></td>

                  </tr>

<?php

  }

?>

                </table></td>

              </tr>

            </table></td>

<?php

  $heading = array();

  $contents = array();



  switch ($action) {

    case 'delete':

      $heading[] = array('text' => '<b>' . TEXT_INFO_HEADING_DELETE_bannersreal . '</b>');



      $contents = array('form' => tep_draw_form('bannersreal', FILENAME_BANNERSREAL, 'page=' . $HTTP_GET_VARS['page'] . '&sID=' . $sInfo->id_bannersreal . '&action=deleteconfirm'));

      $contents[] = array('text' => TEXT_INFO_DELETE_INTRO);

      $contents[] = array('text' => '<br><b>' . $sInfo->products_name . '</b>');

      $contents[] = array('align' => 'center', 'text' => '<br>' . tep_image_submit('button_delete.gif', IMAGE_DELETE) . '&nbsp;<a href="' . tep_href_link(FILENAME_BANNERSREAL, 'page=' . $HTTP_GET_VARS['page'] . '&sID=' . $sInfo->id_bannersreal) . '">' . tep_image_button('button_cancel.gif', IMAGE_CANCEL) . '</a>');

      break;

    default:

      if (is_object($sInfo)) {

        $heading[] = array('text' => '<b>' . $sInfo->products_name . '</b>');



        $contents[] = array('align' => 'center', 'text' => '<a href="' . tep_href_link(FILENAME_BANNERSREAL, 'page=' . $HTTP_GET_VARS['page'] . '&sID=' . $sInfo->id_bannersreal . '&action=delete') . '">' . tep_image_button('button_delete.gif', IMAGE_DELETE) . '</a>');

        $contents[] = array('align' => 'center', 'text' => '<br>' . tep_image2(DIR_WS_IMAGES .$sInfo->products_image, $sInfo->products_name, SMALL_IMAGE_WIDTH, SMALL_IMAGE_HEIGHT));

      }

      break;

  }

  if ( (tep_not_null($heading)) && (tep_not_null($contents)) ) {

    echo '            <td width="25%" valign="top">' . "\n";



    $box = new box;

    echo $box->infoBox($heading, $contents);



    echo '            </td>' . "\n";

  }

}

?>

          </tr>

        </table></td>

      </tr>

    </table></td>

<!-- body_text_eof //-->

  </tr>

</table>

<!-- body_eof //-->



<!-- footer //-->

<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>

<!-- footer_eof //-->

</body>

</html>

<?php require(DIR_WS_INCLUDES . 'application_bottom.php'); ?>

