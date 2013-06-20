<?php


  require('includes/application_top.php');
  global $customer_group_id;
  if(!isset($customer_group_id)) { $customer_group_id = '0'; }

// the following cPath references come from application_top.php
  $category_depth = 'top';
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
<base href="<?php echo (($request_type == 'SSL') ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<link rel="stylesheet" type="text/css" href="stylesheet2.css">
<link rel="stylesheet" type="text/css" href="lightview/css/lightview.css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/prototype/1.6.1/prototype.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/scriptaculous/1.8.2/scriptaculous.js"></script>
<script type="text/javascript" src="lightview/js/lightview.js"></script>
</head>
<body marginwidth="0" marginheight="0" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0">
<!-- header //-->
<?php require(DIR_WS_INCLUDES . 'header.php'); ?>
<!-- header_eof //-->
	  <tr>

	   <td class="tdborde" valign="top" style="background-color:#FFFFFF">
       <div style="z-index:1000; position: absolute; width:1024px; text-align:right; height:27px; padding-top:13px" class="h_r_text_front">
<?php
$categories_query = tep_db_query("select c.categories_id, cd.categories_name, c.parent_id from " . TABLE_CATEGORIES . " c, " . TABLE_CATEGORIES_DESCRIPTION . " cd where c.parent_id = '0' and c.categories_id = cd.categories_id and cd.language_id='" . (int)$languages_id ."' order by sort_order, cd.categories_name");
while ($categories = tep_db_fetch_array($categories_query))  {

echo '<a href="index.php?cPath='.$categories['categories_id'].'">'.$categories['categories_name'].'</a>&nbsp;&nbsp;&nbsp;&nbsp;';

}
?>
</div>
<div style="z-index:999">
<script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0','width','1024','height','446','src','flash_banner','quality','high','wmode','transparent','pluginspage','http://www.macromedia.com/go/getflashplayer','movie','flash_banner' ); //end AC code
</script>
</div>
			</td>
			  </tr>
              <tr>
              <td style="background:url(images/r-t-dr.png) repeat-x; padding: 16px 11px 15px 19px" class="h_r_text">
              
              <?php echo VIDEOS; ?><br /><br />
<br /><br />

              
              <table cellpadding="0" cellspacing="0" border="0" >
<tr>
<?php


  $imgs_query = tep_db_query("select * from videos order by id_videos DESC");




$iii = 0; ?>

<?php while ($imgs_array = tep_db_fetch_array($imgs_query)) { ?>

<?php 

	$iii = $iii +1; 

    $codigovideoa = explode("=", $imgs_array['file_videos']);
    $codigovideob = explode("&", $codigovideoa[1]);
	$codigovideoc = $codigovideob[0].".jpg";

	$numerodecolumnas = 9;
?>

 
<?php if ($iii % $numerodecolumnas != 0) { ?>

<td align="center" valign="top">
<div style="z-index:2; position:absolute; margin-left:33px; margin-top:14px">
<a href='flvplayer.php?codigo_videos=<?php echo $codigovideob[0];?>' class='lightview' rel='set[myset]' title=':: :: width: 660, height: 380'><img src="images/play.png" /></a>
</div>
<div style="width:110px; height:80px" class="img_gallery">
<?php echo tep_image(DIR_WS_IMAGES.$codigovideoc, $codigovideoc,96, 67); ?>
</div>
</td>


<?php } else { ?>
<td align="center" valign="top">
<div style="z-index:2; position:absolute; margin-left:33px; margin-top:14px">
<a href='flvplayer.php?codigo_videos=<?php echo $codigovideob[0];?>' class='lightview' rel='set[myset]' title=':: :: width: 660, height: 380'><img src="images/play.png" /></a>
</div>
<div style="width:110px; height:80px" class="img_gallery">
<?php echo tep_image(DIR_WS_IMAGES.$codigovideoc, $codigovideoc,96, 67); ?>
</div>
</td>

</tr>
<tr>

<?php }?>

<?php } ?>


</tr>
</table>

              
              </td>
              </tr>

</table>
<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>
<!-- footer_eof //-->
</body>
</html>
<?php require(DIR_WS_INCLUDES . 'application_bottom.php'); ?>

