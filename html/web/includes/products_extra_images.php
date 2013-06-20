<?php


$products_extra_images_query = tep_db_query("SELECT products_extra_image, products_extra_images_id FROM " . TABLE_PRODUCTS_EXTRA_IMAGES . " WHERE products_id='" . $product_info['products_id'] . "'");
if (tep_db_num_rows($products_extra_images_query) >= 1){
	$rowcount_value=4;  //number of extra images per row	
	$rowcount=1;
?>

	    <table border="0" cellspacing="4" cellpadding="0" align="left" width="180">
	      <tr>
          <td align ="left" width="180">
          
		<?php echo "<div style=' position:absolute; z-index:800;'>&nbsp;<a href='" . tep_href_link(DIR_WS_IMAGES . $product_info['products_image']) . "'  rel='zoom-id:zoom;zoom-width:395px;zoom-height:395px;' rev='".tep_href_link(DIR_WS_IMAGES . $exxtrap[0])."-".PRODUCT_IMAGE_WIDTH."x".PRODUCT_IMAGE_HEIGHT.".".$exxtrap[1]."' >" . '<img src="watermark_sss.png" width="75" height="75" /></a></div><div style="z-index:700">' .tep_image(DIR_WS_IMAGES . $product_info['products_image'], $product_info['products_image'],75, 75, "hspace='0' vspace='0' style='border:1px solid #DCDEDD' " ) . '&nbsp;</div>'; ?> 
          </td>
          
<?php	
					
	//$products_extra_images_query = tep_db_query("SELECT products_extra_image, products_extra_images_id FROM " . TABLE_PRODUCTS_EXTRA_IMAGES . " WHERE products_id='" . $product_info['products_id'] . "'");
	while ($extra_images = tep_db_fetch_array($products_extra_images_query)) {
	$exxtra = explode('.',$extra_images['products_extra_image']);

?>	
<noscript>
<?php
echo tep_image(DIR_WS_IMAGES . $extra_images['products_extra_image'], $extra_images['products_extra_image'], PRODUCT_IMAGE_WIDTH, PRODUCT_IMAGE_HEIGHT);
?>
</noscript>

<td align ="left" width="180">
		<?php echo "<div style=' position:absolute; z-index:800;'>&nbsp;<a href='" . tep_href_link(DIR_WS_IMAGES . $extra_images['products_extra_image']) . "'  rel='zoom-id:zoom;zoom-width:395px;zoom-height:395px;' rev='".tep_href_link(DIR_WS_IMAGES . $exxtra[0])."-".PRODUCT_IMAGE_WIDTH."x".PRODUCT_IMAGE_HEIGHT.".".$exxtra[1]."' >" . '<img src="watermark_sss.png" width="75" height="75" /></a></div><div style="z-index:700">' .tep_image(DIR_WS_IMAGES . $extra_images['products_extra_image'], addslashes($product_info['products_name']),75, 75, "hspace='0' vspace='0' style='border:1px solid #DCDEDD' " ) . '&nbsp;</div>'; ?>
</td>
<?php
	if ($rowcount == $rowcount_value){echo '</tr><tr>'; $rowcount=0;}
	else {$rowcount=$rowcount+1;}
	}
?>	
	   </tr>
	</table>

<?php
}
?>    
