<?php
  require('includes/application_top.php');





?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php echo HTML_PARAMS; ?> xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title><?php echo TITLE; ?></title>

<base href="<?php echo (getenv('HTTPS') == 'on' ? HTTPS_SERVER : HTTP_SERVER) . DIR_WS_CATALOG; ?>">
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<link rel="stylesheet" type="text/css" href="stylesheet2.css">
</head>
<body marginwidth="0" marginheight="0" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0">
<!-- header //-->
<?php require(DIR_WS_INCLUDES . 'header.php'); ?>
<!-- header_eof //-->

<!-- body //-->

	 	  <tr>
		<td class="tdborde" valign="top" width="<?php echo BOX_WIDTH_1; ?>" height="100%"><?php require(DIR_WS_INCLUDES . 'column_left.php'); ?></td>
	   <td class="tdborde" valign="top" width="<?php echo BOX_WIDTH_2; ?>" style="background-color:#FFFFFF">
			<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" style="height:100%" class="content">
			  <tr>
				<td width="100%" height="100%" valign="top">
					<table width="100%" style="height:100%" cellspacing="0" cellpadding="0" border="0">
					  <tr>
						<td width="100%" height="100%" valign="top" style="background:url(images/r-t-dr.png) repeat-x; padding: 17px 11px 15px 19px">
							<table width="100%" style="height:22px" cellspacing="0" cellpadding="0" border="0">
							  <tr>
								<td width="25" height="100%" valign="top"></td>
								<td class="h_r_text" width="100%" height="100%" valign="top">
									<strong>Fashion News</strong></td>
                                <td align="right"></td>
							  </tr>
							</table>
							<br style="line-height:18px;">
							<table width="100%" cellspacing="0" cellpadding="0" border="0">
							  <tr>
								<td width="100%" height="100%" valign="top">

	<table cellpadding="0" cellspacing="0" border="0" width="100%">
      <tr>
        <td>
 
 
 
         <table border="0" cellspacing="0" cellpadding="0" width="100%">
        <tr>
        
  <?php
    $newsletters_query = tep_db_query("select * from " . TABLE_NEWSLETTERS . " order by newsletters_id DESC");

    $number_of_newsletters = tep_db_num_rows($newsletters_query);
    $rows = 0;
    while ($newsletters = tep_db_fetch_array($newsletters_query)) {
      $rows++;
      $width = (int)(100 / 2) . '%';
	  

// Inicializamos las variables 
$tamano1 = 100; // tamaño máximo 
$contador1 = 0; 
$texto1 = $newsletters['content']; 

// Cortamos la cadena por los espacios 
$arrayTexto1 = split(' ',$texto1); 
$texto1 = ''; 

// Reconstruimos la cadena 
while($tamano1 >= strlen($texto1) + strlen($arrayTexto1[$contador1])){ 
    $texto1 .= ' '.$arrayTexto1[$contador1]; 
    $contador1++; 
} 



	  echo '<td  height="100%" valign="top"><br></td>' . "\n";
      echo '<td align="center" class="h1_r_text" width="' . $width . '" valign="top"><table cellpadding="0" cellspacing="0" border="0" width="260"><tr><td colspan="2"><a href="newsletters_pop.php?newsletters_id=' . $newsletters['newsletters_id'] . '" target="_blank">' . $newsletters['title'] . '</a><br>
<br>
</td></tr><tr><td valign="top" width="120" align="left"><a href="newsletters_pop.php?newsletters_id=' . $newsletters['newsletters_id'] . '" target="_blank">' . tep_image(DIR_WS_IMAGES . $newsletters['image'], $newsletters['title'], 114, 83,'style="border:1px solid #DCD7B6"') . '</a></td><td valign="top"><div align="justify"' .  $texto1. '......</div></td></tr></table><br><br><br></td>' . "\n";
	  echo '<td  height="100%" valign="top"><img alt="" src="images/spacer.gif" width="5" height="1"><br></td>' . "\n";
      if ((($rows / 2) == floor($rows / 2)) && ($rows != $number_of_newsletters)) {
        echo '              </tr>' . "\n";
        echo '              <tr>' . "\n";
		
		}
		}
		
		
	
	
?>
          </tr>
        </table>
        
        
        </td>
      </tr>
      <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
      <tr>
        <td><table border="0" width="100%" cellspacing="1" cellpadding="2">
          <tr>
            <td><table border="0" width="100%" cellspacing="0" cellpadding="2">
              <tr>
                <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
                <td align="right"><?php echo '<a href="' . tep_href_link(FILENAME_DEFAULT) . '">' . tep_image_button('button_continue.gif', IMAGE_BUTTON_CONTINUE) . '</a>'; ?></td>
                <td width="10"><?php echo tep_draw_separator('pixel_trans.gif', '10', '1'); ?></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table>

<!-- body_eof //-->

								</td>
								<td width="20" height="100%" valign="top"><?php echo tep_draw_separator('spacer.gif', '20', '1'); ?></td>
							  </tr>
							</table>							
						</td>
					  </tr>
					  <tr>
						<td width="100%" height="16" valign="top"></td>
					  </tr>
					</table>
				</td>
			  </tr>
		  </table>
</td>
			  </tr>
              


</table>
<?php require(DIR_WS_INCLUDES . 'footer.php'); ?>
</body>
</html>
<?php require(DIR_WS_INCLUDES . 'application_bottom.php'); ?>