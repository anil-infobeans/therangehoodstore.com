<?php


  require('includes/application_top.php');
  global $customer_group_id;
  if(!isset($customer_group_id)) { $customer_group_id = '0'; }

// the following cPath references come from application_top.php
  $category_depth = 'top';
    if (isset($cPath)) {
    $categories_products_query = tep_db_query("select count(*) as total from " . TABLE_PRODUCTS_TO_CATEGORIES . " where categories_id = '" . (int)$current_category_id . "'");
    $cateqories_products = tep_db_fetch_array($categories_products_query);
    if ($cateqories_products['total'] > 0) {
      $category_depth = 'products'; // display products
    } else {
      $category_parent_query = tep_db_query("select count(*) as total from " . TABLE_CATEGORIES . " where parent_id = '" . (int)$current_category_id . "'");
      $category_parent = tep_db_fetch_array($category_parent_query);
      if ($category_parent['total'] > 0) {
        $category_depth = 'nested'; // navigate through the categories
      } else {
        $category_depth = 'products'; // category has no products, but display the 'no products' message
      }
    }
  }
  if (isset($cPath) && tep_not_null($cPath)) {
    $categories_products_query = tep_db_query("select count(*) as total from " . TABLE_PRODUCTS_TO_CATEGORIES . " where categories_id = '" . (int)$current_category_id . "'");
    $cateqories_products = tep_db_fetch_array($categories_products_query);
    if ($cateqories_products['total'] > 0) {
      $category_depth = 'products'; // display products
    } else {
      $category_parent_query = tep_db_query("select count(*) as total from " . TABLE_CATEGORIES . " where parent_id = '" . (int)$current_category_id . "'");
      $category_parent = tep_db_fetch_array($category_parent_query);
      if ($category_parent['total'] > 0) {
        $category_depth = 'nested'; // navigate through the categories
      } else {
        $category_depth = 'products'; // category has no products, but display the 'no products' message
      }
    }
  }

  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_DEFINE_MAINPAGE);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php echo HTML_PARAMS; ?> xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title><?php echo TITLE; ?></title>
<style type="text/css">
#central{    position:absolute;    top:50%; margin-top: -153px;  width:100%}
</style>
<base href="<?php echo (($request_type == 'SSL') ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>">
<link rel="stylesheet" type="text/css" href="stylesheet2.css">
<?php require("includes/google.php"); ?>
</head>
<body marginwidth="0" marginheight="0" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0">
<div id="central">
<div style="text-align:center">
<!-- header //-->
<?php require(DIR_WS_INCLUDES . 'header3.php'); ?>
<!-- header_eof //-->
	  <tr>
	   <td class="tdborde" valign="top" width="781">
<?php
  if ($category_depth == 'nested') {
    $category_query = tep_db_query("select cd.categories_name, c.categories_image from " . TABLE_CATEGORIES . " c, " . TABLE_CATEGORIES_DESCRIPTION . " cd where c.categories_id = '" . (int)$current_category_id . "' and cd.categories_id = '" . (int)$current_category_id . "' and cd.language_id = '" . (int)$languages_id . "'");
    $category = tep_db_fetch_array($category_query);
?>


<!--VER SUB CATEGORIAS CON SUS IMAGENES RESPECTIVAS-->

<table width="100%" style="height:100%" cellspacing="0" cellpadding="0" border="0" >
					  <tr>
						<td width="100%" height="100%" valign="top" style="padding: 16px 11px 15px 0px">
							<table width="100%" cellspacing="0" cellpadding="0" border="0">
							  <tr>
								<td width="25" height="100%" valign="top"></td>
								<td class="h_l_text" height="100%" valign="top" width="100%">
								</td>
								<td height="100%" width="100%" valign="top" ></td>
							  </tr>
							</table>
							<table width="100%" cellspacing="0" cellpadding="0" border="0">
							  <tr>
								<td width="100%" height="100%" valign="top">
                                    <?php echo tep_image(DIR_WS_IMAGES . $category['categories_image'], $category['categories_name'], HEADING_IMAGE_WIDTH, HEADING_IMAGE_HEIGHT); ?>
                                
        </td>
          </tr>
        </table>
        
        
 <table border="0" width="100%" cellspacing="0" cellpadding="0">
          <tr>
          <td>
          <table border="0" width="20%" cellspacing="0" cellpadding="0">
          <tr>
<?php
    if (isset($cPath) && strpos('_', 0)) {
// check to see if there are deeper categories within the current category
      $category_links = array_reverse($cPath_array);
      for($i=0, $n=sizeof($category_links); $i<$n; $i++) {
        $categories_query = tep_db_query("select count(*) as total from " . TABLE_CATEGORIES . " c, " . TABLE_CATEGORIES_DESCRIPTION . " cd where c.parent_id = '" . (int)$category_links[$i] . "' and c.categories_id = cd.categories_id and cd.language_id = '" . (int)$languages_id . "'");
        $categories = tep_db_fetch_array($categories_query);
        if ($categories['total'] < 1) {
          // do nothing, go through the loop
        } else {
          $categories_query = tep_db_query("select c.categories_id, cd.categories_name, c.categories_image, c.parent_id from " . TABLE_CATEGORIES . " c, " . TABLE_CATEGORIES_DESCRIPTION . " cd where c.parent_id = '" . (int)$category_links[$i] . "' and c.categories_id = cd.categories_id and cd.language_id = '" . (int)$languages_id . "' order by sort_order, cd.categories_name");
          break; // we've found the deepest category the customer is in
        }
      }
    } else {
      $categories_query = tep_db_query("select c.categories_id, cd.categories_name, c.categories_image, c.parent_id from " . TABLE_CATEGORIES . " c, " . TABLE_CATEGORIES_DESCRIPTION . " cd where c.parent_id = '" . (int)$current_category_id . "' and c.categories_id = cd.categories_id and cd.language_id = '" . (int)$languages_id . "' order by sort_order, cd.categories_name");
    }

    $number_of_categories = tep_db_num_rows($categories_query);

    $rows = 0;
    while ($categories = tep_db_fetch_array($categories_query)) {
      $rows++;
      $cPath_new = tep_get_path($categories['categories_id']);
      $width = (int)(100 / 6) . '%';
 echo '<noscript>';
	  echo '<td  height="100%" valign="top"><br></td>' . "\n";
      echo '<td align="center" class="h1_r_text" width="' . $width . '" valign="top"><a href="' . tep_href_link(FILENAME_DEFAULT, $cPath_new) . '">' .  $categories['categories_name'] . '<br><br>' . tep_image(DIR_WS_IMAGES . $categories['categories_image'], $categories['categories_name'], 170, 131,'style="border:1px solid #DCD7B6"') . '</a><br><br><br></td>' . "\n";
	  echo '<td  height="100%" valign="top"><img alt="" src="images/spacer.gif" width="5" height="1"><br></td>' . "\n";

      if ((($rows / 3) == floor($rows / 3)) && ($rows != $number_of_categories)) {
        echo '              </tr>' . "\n";
        echo '              <tr>' . "\n";

		
      }

	   echo '</noscript>';
	  

  //le damos salida

    }
	
	// gastoncarozi propio query para el intro flash -inicio
 echo '<noscript>';
$host="localhost"; 
$user="pelucher_usuario"; 
$password="clave"; 
$connect=mysql_connect($host,$user,$password); 
if (! $connect) 
{ 
echo "<h2 align='center'>ERROR: Imposible establecer conexi�n con el servidor</h2>"; 
exit; 
} 
mysql_select_db("pelucher_peluche", $connect); 
$result = mysql_query("SELECT k.categories_name, z.categories_image, z.categories_id FROM categories_description k, categories z WHERE z.categories_id= k.categories_id and z.parent_id='0'",$connect); 


$titulo1=mysql_result ($result, 0, "categories_name"); 
$titulo2=mysql_result ($result, 1, "categories_name"); 
$titulo3=mysql_result ($result, 2, "categories_name"); 
$titulo4=mysql_result ($result, 3, "categories_name"); 
$titulo5=mysql_result ($result, 4, "categories_name"); 
$titulo6=mysql_result ($result, 5, "categories_name"); 
$titulo7=mysql_result ($result, 6, "categories_name"); 
$titulo8=mysql_result ($result, 7, "categories_name");
$imgvideo1=mysql_result ($result, 0, "categories_image");
$imgvideo2=mysql_result ($result, 1, "categories_image");
$imgvideo3=mysql_result ($result, 2, "categories_image");
$imgvideo4=mysql_result ($result, 3, "categories_image");
$imgvideo5=mysql_result ($result, 4, "categories_image");
$imgvideo6=mysql_result ($result, 5, "categories_image");
$imgvideo7=mysql_result ($result, 6, "categories_image");
$imgvideo8=mysql_result ($result, 7, "categories_image");
$link1=mysql_result ($result, 0, "categories_id");
$link2=mysql_result ($result, 1, "categories_id");
$link3=mysql_result ($result, 2, "categories_id");
$link4=mysql_result ($result, 3, "categories_id");
$link5=mysql_result ($result, 4, "categories_id");
$link6=mysql_result ($result, 5, "categories_id");
$link7=mysql_result ($result, 6, "categories_id");
$link8=mysql_result ($result, 7, "categories_id");
print("&titulo1=$titulo1&");
print("&titulo2=$titulo2&");
print("&titulo3=$titulo3&");
print("&titulo4=$titulo4&");
print("&titulo5=$titulo5&");
print("&titulo6=$titulo6&");
print("&titulo7=$titulo7&");
print("&titulo8=$titulo8&");
print("&imgvideo1=$imgvideo1&");
print("&imgvideo2=$imgvideo2&");
print("&imgvideo3=$imgvideo3&");
print("&imgvideo4=$imgvideo4&");
print("&imgvideo5=$imgvideo5&");
print("&imgvideo6=$imgvideo6&");
print("&imgvideo7=$imgvideo7&");
print("&imgvideo8=$imgvideo8&");
print("&link1=$link1&");
print("&link2=$link2&");
print("&link3=$link3&");
print("&link4=$link4&");
print("&link5=$link5&");
print("&link6=$link6&");
print("&link7=$link7&");
print("&link8=$link8&");
 echo '</noscript>';

	// gastoncarozi propio query para el intro flash- fin
	
	
// needed for the new products module shown below
    $new_products_category_id = $current_category_id;
?>
			</tr>
            </table>
            </td>
            </tr>
            </table>
            </td>
            </tr>
            </table>


<!--HASTA AQUI VER SUB CATEGORIAS CON SUS IMAGENES RESPECTIVAS , puedes remover todo esto si quieres-->

<?

  } elseif ($category_depth == 'products' || isset($HTTP_GET_VARS['manufacturers_id'])) {
// create column list
    $define_list = array('PRODUCT_LIST_MODEL' => PRODUCT_LIST_MODEL,
                         'PRODUCT_LIST_NAME' => PRODUCT_LIST_NAME,
                         'PRODUCT_LIST_MANUFACTURER' => PRODUCT_LIST_MANUFACTURER,
                         'PRODUCT_LIST_PRICE' => PRODUCT_LIST_PRICE,
                         'PRODUCT_LIST_QUANTITY' => PRODUCT_LIST_QUANTITY,
                         'PRODUCT_LIST_WEIGHT' => PRODUCT_LIST_WEIGHT,
                         'PRODUCT_LIST_IMAGE' => PRODUCT_LIST_IMAGE,
                         'PRODUCT_LIST_BUY_NOW' => PRODUCT_LIST_BUY_NOW);

    asort($define_list);

    $column_list = array();
    reset($define_list);
    while (list($key, $value) = each($define_list)) {
      if ($value > 0) $column_list[] = $key;
    }
// BOF Separate Pricing Per Customer
   if(!tep_session_is_registered('sppc_customer_group_id')) {
     $customer_group_id = '0';
     } else {
      $customer_group_id = $sppc_customer_group_id;
   }
   // this will build the table with specials prices for the retail group or update it if needed
   // this function should have been added to includes/functions/database.php
   if ($customer_group_id == '0') {
   tep_db_check_age_specials_retail_table();
   }
   $status_product_prices_table = false;
   $status_need_to_get_prices = false;

   // find out if sorting by price has been requested
   if ( (isset($HTTP_GET_VARS['sort'])) && (ereg('[1-8][ad]', $HTTP_GET_VARS['sort'])) && (substr($HTTP_GET_VARS['sort'], 0, 1) <= sizeof($column_list)) && $customer_group_id != '0' ){
    $_sort_col = substr($HTTP_GET_VARS['sort'], 0 , 1);
    if ($column_list[$_sort_col-1] == 'PRODUCT_LIST_PRICE') {
      $status_need_to_get_prices = true;
      }
   }

   if ($status_need_to_get_prices == true && $customer_group_id != '0') {
   $product_prices_table = TABLE_PRODUCTS_GROUP_PRICES.$customer_group_id;
   // the table with product prices for a particular customer group is re-built only a number of times per hour
   // (setting in /includes/database_tables.php called MAXIMUM_DELAY_UPDATE_PG_PRICES_TABLE, in minutes)
   // to trigger the update the next function is called (new function that should have been
   // added to includes/functions/database.php)
   tep_db_check_age_products_group_prices_cg_table($customer_group_id);
   $status_product_prices_table = true;

   } // end if ($status_need_to_get_prices == true && $customer_group_id != '0')
// EOF Separate Pricing Per Customer
    $select_column_list = '';

    for ($i=0, $n=sizeof($column_list); $i<$n; $i++) {
      switch ($column_list[$i]) {
        case 'PRODUCT_LIST_MODEL':
          $select_column_list .= 'p.products_model, ';
          break;
        case 'PRODUCT_LIST_NAME':
          $select_column_list .= 'pd.products_name, ';
          break;
        case 'PRODUCT_LIST_MANUFACTURER':
          $select_column_list .= 'm.manufacturers_name, ';
          break;
        case 'PRODUCT_LIST_QUANTITY':
          $select_column_list .= 'p.products_quantity, ';
          break;
        case 'PRODUCT_LIST_IMAGE':
          $select_column_list .= 'p.products_image, ';
          break;
        case 'PRODUCT_LIST_WEIGHT':
          $select_column_list .= 'p.products_weight, ';
          break;
      }
    }

// show the products of a specified manufacturer
if (isset($HTTP_GET_VARS['manufacturers_id'])) {
if (isset($HTTP_GET_VARS['filter_id']) && tep_not_null($HTTP_GET_VARS['filter_id'])) {
// gastoncarozi aplico distinct a $listing_sql para que no duplicara los registros de specials que hacian un bug y duplicada un producto que tenia precios especiales
// We are asked to show only a specific category
$listing_sql = "select distinct" . $select_column_list . " p.products_id, p.manufacturers_id, p.products_price, p.products_tax_class_id, IF(s.status, s.specials_new_products_price, NULL) as specials_new_products_price, IF(s.status, s.specials_new_products_price, p.products_price) as final_price from (" . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd, " . TABLE_MANUFACTURERS . " m, " . TABLE_PRODUCTS_TO_CATEGORIES . " p2c ) left join " . TABLE_SPECIALS . " s on p.products_id = s.products_id where p.products_status = '1' and p.manufacturers_id = m.manufacturers_id and m.manufacturers_id = '" . (int)$HTTP_GET_VARS['manufacturers_id'] . "' and p.products_id = p2c.products_id and pd.products_id = p2c.products_id and pd.language_id = '" . (int)$languages_id . "' and p2c.categories_id = '" . (int)$HTTP_GET_VARS['filter_id'] . "'";
} else {
// gastoncarozi aplico distinct a $listing_sql para que no duplicara los registros de specials que hacian un bug y duplicada un producto que tenia precios especiales
// We show them all
$listing_sql = "select distinct" . $select_column_list . " p.products_id, p.manufacturers_id, p.products_price, p.products_tax_class_id, IF(s.status, s.specials_new_products_price, NULL) as specials_new_products_price, IF(s.status, s.specials_new_products_price, p.products_price) as final_price from (" . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd, " . TABLE_MANUFACTURERS . " m) left join " . TABLE_SPECIALS . " s on p.products_id = s.products_id where p.products_status = '1' and pd.products_id = p.products_id and pd.language_id = '" . (int)$languages_id . "' and p.manufacturers_id = m.manufacturers_id and m.manufacturers_id = '" . (int)$HTTP_GET_VARS['manufacturers_id'] . "'";
}
} else {
// gastoncarozi aplico distinct a $listing_sql para que no duplicara los registros de specials que hacian un bug y duplicada un producto que tenia precios especiales
// show the products in a given categorie
if (isset($HTTP_GET_VARS['filter_id']) && tep_not_null($HTTP_GET_VARS['filter_id'])) {
// We are asked to show only specific catgeory
$listing_sql = "select distinct " . $select_column_list . " p.products_id, p.manufacturers_id, p.products_price, p.products_tax_class_id, IF(s.status, s.specials_new_products_price, NULL) as specials_new_products_price, IF(s.status, s.specials_new_products_price, p.products_price) as final_price from (" . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd, " . TABLE_MANUFACTURERS . " m, " . TABLE_PRODUCTS_TO_CATEGORIES . " p2c) left join " . TABLE_SPECIALS . " s on p.products_id = s.products_id where p.products_status = '1' and p.manufacturers_id = m.manufacturers_id and m.manufacturers_id = '" . (int)$HTTP_GET_VARS['filter_id'] . "' and p.products_id = p2c.products_id and pd.products_id = p2c.products_id and pd.language_id = '" . (int)$languages_id . "' and p2c.categories_id = '" . (int)$current_category_id . "'";
} else {
// gastoncarozi aplico distinct a $listing_sql para que no duplicara los registros de specials que hacian un bug y duplicada un producto que tenia precios especiales
// We show them all
$listing_sql = "select distinct " . $select_column_list . " p.products_id, p.manufacturers_id, p.products_price, p.products_tax_class_id, IF(s.status, s.specials_new_products_price, NULL) as specials_new_products_price, IF(s.status, s.specials_new_products_price, p.products_price) as final_price from ((" . TABLE_PRODUCTS_DESCRIPTION . " pd, " . TABLE_PRODUCTS . " p) left join " . TABLE_MANUFACTURERS . " m on p.manufacturers_id = m.manufacturers_id, " . TABLE_PRODUCTS_TO_CATEGORIES . " p2c) left join " . TABLE_SPECIALS . " s on p.products_id = s.products_id where p.products_status = '1' and p.products_id = p2c.products_id and pd.products_id = p2c.products_id and pd.language_id = '" . (int)$languages_id . "' and p2c.categories_id = '" . (int)$current_category_id . "'";
}
}

    if ( (!isset($HTTP_GET_VARS['sort'])) || (!ereg('[1-8][ad]', $HTTP_GET_VARS['sort'])) || (substr($HTTP_GET_VARS['sort'], 0, 1) > sizeof($column_list)) ) {
      for ($i=0, $n=sizeof($column_list); $i<$n; $i++) {
        if ($column_list[$i] == 'PRODUCT_LIST_NAME') {
          $HTTP_GET_VARS['sort'] = $i+1 . 'a';
          $listing_sql .= " order by pd.products_name";
          break;
        }
      }
    } else {
      $sort_col = substr($HTTP_GET_VARS['sort'], 0 , 1);
      $sort_order = substr($HTTP_GET_VARS['sort'], 1);
      $listing_sql .= ' order by ';
      switch ($column_list[$sort_col-1]) {
        case 'PRODUCT_LIST_MODEL':
          $listing_sql .= "p.products_model " . ($sort_order == 'd' ? 'desc' : '') . ", pd.products_name";
          break;
        case 'PRODUCT_LIST_NAME':
          $listing_sql .= "pd.products_name " . ($sort_order == 'd' ? 'desc' : '');
          break;
        case 'PRODUCT_LIST_MANUFACTURER':
          $listing_sql .= "m.manufacturers_name " . ($sort_order == 'd' ? 'desc' : '') . ", pd.products_name";
          break;
        case 'PRODUCT_LIST_QUANTITY':
          $listing_sql .= "p.products_quantity " . ($sort_order == 'd' ? 'desc' : '') . ", pd.products_name";
          break;
        case 'PRODUCT_LIST_IMAGE':
          $listing_sql .= "pd.products_name";
          break;
        case 'PRODUCT_LIST_WEIGHT':
          $listing_sql .= "p.products_weight " . ($sort_order == 'd' ? 'desc' : '') . ", pd.products_name";
          break;
        case 'PRODUCT_LIST_PRICE':
          $listing_sql .= "final_price " . ($sort_order == 'd' ? 'desc' : '') . ", pd.products_name";
          break;
      }
    }

	// optional Product List Filter
	$manu1="";
    if (PRODUCT_LIST_FILTER > 0) {
      if (isset($HTTP_GET_VARS['manufacturers_id'])) {
        $filterlist_sql = "select distinct c.categories_id as id, cd.categories_name as name from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_TO_CATEGORIES . " p2c, " . TABLE_CATEGORIES . " c, " . TABLE_CATEGORIES_DESCRIPTION . " cd where p.products_status = '1' and p.products_id = p2c.products_id and p2c.categories_id = c.categories_id and p2c.categories_id = cd.categories_id and cd.language_id = '" . (int)$languages_id . "' and p.manufacturers_id = '" . (int)$HTTP_GET_VARS['manufacturers_id'] . "' order by cd.categories_name";
      } else {
        $filterlist_sql= "select distinct m.manufacturers_id as id, m.manufacturers_name as name from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_TO_CATEGORIES . " p2c, " . TABLE_MANUFACTURERS . " m where p.products_status = '1' and p.manufacturers_id = m.manufacturers_id and p.products_id = p2c.products_id and p2c.categories_id = '" . (int)$current_category_id . "' order by m.manufacturers_name";
      }
      $filterlist_query = tep_db_query($filterlist_sql);
      if (tep_db_num_rows($filterlist_query) > 1) {
        $manu1.= '<table width="100%" bgcolor="#ffffff" style="border:1px dotted #96957E"><tr>            <td align="center" class="main">' . tep_draw_form('filter', FILENAME_DEFAULT, 'get') . TEXT_SHOW . '&nbsp;';
        if (isset($HTTP_GET_VARS['manufacturers_id'])) {
          $manu1.= tep_draw_hidden_field('manufacturers_id', $HTTP_GET_VARS['manufacturers_id']);
          $options = array(array('id' => '', 'text' => TEXT_ALL_CATEGORIES));
        } else {
          $manu1.= tep_draw_hidden_field('cPath', $cPath);
          $options = array(array('id' => '', 'text' => TEXT_ALL_MANUFACTURERS));
        }
        $manu1.= tep_draw_hidden_field('sort', $HTTP_GET_VARS['sort']);
        while ($filterlist = tep_db_fetch_array($filterlist_query)) {
          $options[] = array('id' => $filterlist['id'], 'text' => $filterlist['name']);
        }
        $manu1.= tep_draw_pull_down_menu('filter_id', $options, (isset($HTTP_GET_VARS['filter_id']) ? $HTTP_GET_VARS['filter_id'] : ''), 'onchange="this.form.submit()"');
        $manu1.= '</form></td></tr></table>' . "\n";
      }
    }

// Get the right image for the top-right
    $image = DIR_WS_IMAGES . 'table_background_list.gif';
    if (isset($HTTP_GET_VARS['manufacturers_id'])) {
      $image = tep_db_query("select manufacturers_image from " . TABLE_MANUFACTURERS . " where manufacturers_id = '" . (int)$HTTP_GET_VARS['manufacturers_id'] . "'");
      $image = tep_db_fetch_array($image);
      $image = $image['manufacturers_image'];
    } elseif ($current_category_id) {
      $image = tep_db_query("select categories_image from " . TABLE_CATEGORIES . " where categories_id = '" . (int)$current_category_id . "'");
      $image = tep_db_fetch_array($image);
      $image = $image['categories_image'];
    }
?>
<?php include(DIR_WS_MODULES . FILENAME_PRODUCT_LISTING); ?>
<?

} else {
?>
<?php include(DIR_WS_MODULES . FILENAME_NEW_PRODUCTS); ?>
<? } ?>				</td>
			  </tr>

</table>
<!-- footer_eof //-->
</div>
</div>
</body>
</html>
<?php require(DIR_WS_INCLUDES . 'application_bottom.php'); ?>

