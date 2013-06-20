<?php


  require('includes/application_top.php');

  $navigation->remove_current_page();

  $products_query = tep_db_query("select pd.products_name, pei.products_extra_image from " . TABLE_PRODUCTS_EXTRA_IMAGES . " pei left join " . TABLE_PRODUCTS_DESCRIPTION . " pd on pei.products_id = pd.products_id where pei.products_extra_images_id = '" . $HTTP_GET_VARS['peiID'] . "' and pd.language_id = '" . $languages_id . "'");
  $products_values = tep_db_fetch_array($products_query);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php echo HTML_PARAMS; ?> xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE><?php echo $products_values['products_name']; ?></TITLE>
<BASE href="<?php echo (($request_type == 'SSL') ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>">
<SCRIPT language="javascript"><!--
var i=0;
function resize() {
  if (navigator.appName == 'Netscape') i=40;
  if (document.images[0]) window.resizeTo(document.images[0].width +30, document.images[0].height+60-i);
  self.focus();
}
//--></SCRIPT>
</HEAD>
<BODY onLoad="resize();">
<div style="position:absolute; z-index:20">
<img src="watermark.png" height="600" width="600">
</div>
<div style="z-index:10">
<?php echo tep_image(DIR_WS_IMAGES . $products_values['products_extra_image'], $products_values['products_name'],550, 550); ?>
</div>
</BODY>
</HTML>
<?php require('includes/application_bottom.php'); ?>
