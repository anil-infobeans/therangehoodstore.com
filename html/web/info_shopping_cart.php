<?php


  require("includes/application_top.php");

  $navigation->remove_current_page();

  require(DIR_WS_LANGUAGES . $language . '/' . FILENAME_INFO_SHOPPING_CART);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php echo HTML_PARAMS; ?> xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<?php echo CHARSET; ?>">
<title><?php echo TITLE; ?></title>
<base href="<?php echo (($request_type == 'SSL') ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<link rel="stylesheet" type="text/css" href="stylesheet2.css">
</head>
<body style="background:#FFFFFF">

	<table align="center" width="417" style="height:100%" cellspacing="0" cellpadding="0" border="0">
	  <tr>
		<td width="100%" height="100%" valign="middle">
			<table width="417" style="height:462px" cellspacing="0" cellpadding="0" border="0">
			  <tr>
				<td width="100%" height="100" valign="top">
					<br>
					<div align="right" class="pop_white_text" style="margin-right:20px"><a href="#"   onclick="window.close()"><?php echo TEXT_CLOSE_WINDOW; ?></a></div> 
				</td>
			  </tr>
			  <tr>
				<td width="100%" height="311" valign="top">
					<div class="pop_m_text" style="margin-left:12px; margin-top:15px; margin-right:14px; margin-bottom:10px">
						<span><strong><?php echo HEADING_TITLE; ?></strong></span><br>
						<br style="line-height:3px;">
						<div class="h_l_4"><img alt="" src="images/spacer.gif" width="1" height="1"></div>
						<br style="line-height:18px;">
						<font><strong><?php echo SUB_HEADING_TITLE_1; ?></strong></font><br>
						<br style="line-height:2px;">
						<?php echo SUB_HEADING_TEXT_1; ?><br>
						<br style="line-height:16px;">
						<font><strong><?php echo SUB_HEADING_TITLE_2; ?></strong></font><br>
						<br style="line-height:2px;">
						<?php echo SUB_HEADING_TEXT_2; ?><br>
						<br style="line-height:16px;">
						<font><strong><?php echo SUB_HEADING_TITLE_3; ?></strong></font><br>
						<br style="line-height:2px;">
						<?php echo SUB_HEADING_TEXT_3; ?><br>
						<br style="line-height:14px;">
						<div align="right" class="pop_red_text"><a href="#"  onclick="window.close()"><?php echo TEXT_CLOSE_WINDOW; ?></a></div> 
					</div>
				</td>
			  </tr>
			  <tr>
				<td bgcolor="#1F0000" width="100%" height="2" valign="top"></td>
			  </tr>
			  <tr>
				<td align="center" width="100%" height="49" valign="middle">Copyright &copy;Tienda 10, 2010. Derechos Reservados</td>
			  </tr>
			</table>
		</td>
	  </tr>
	</table>


</body>
</html>
<?php
  require("includes/counter.php");
  require(DIR_WS_INCLUDES . 'application_bottom.php');
?>
