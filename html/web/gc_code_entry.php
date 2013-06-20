<?php


  require('includes/application_top.php');

  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_ADVANCED_SEARCH);

  $breadcrumb->add(NAVBAR_TITLE_1, tep_href_link(FILENAME_ADVANCED_SEARCH));

//error_log("cPath=" . $cPath . " PHP_SELF=" . $PHP_SELF . " lastpage=" . $HTTP_GET_VARS['lastpage'] . " cpath=" . $HTTP_GET_VARS['cpath']);
//error_log("before gc code=" . $HTTP_GET_VARS['gc_code'] . "session variable gc_code=" . $gc_code);
if(tep_session_is_registered('gc_code')) tep_session_unregister('gc_code');
$gc_code=$HTTP_GET_VARS['gc_code'];
tep_session_register('gc_code');
//error_log("after gc code=" . $HTTP_GET_VARS['gc_code'] . "session variable gc_code=" . $gc_code);
//tep_redirect(HTTPS_SERVER . '/catalog/index.php?tab=3');
$goback=$HTTP_GET_VARS['lastpage'];
if(strlen($HTTP_GET_VARS['cpath'])>0){
 	$goback = $goback . "?cPath=" . $HTTP_GET_VARS['cpath'];
	//error_log("!is_null(HTTP_GET_VARS['cpath'])");
}
//error_log("goback=" . $goback);
tep_redirect($goback);
?>

