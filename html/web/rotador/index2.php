<?php

  if(!tep_session_is_registered('sppc_customer_group_id')) {
  	$customer_group_id = '0';
  } else {
  	$customer_group_id = $sppc_customer_group_id;
  }

?>



<?php
    $product_info_query = tep_db_query("select p.products_id, p.products_status, pd.products_name, pd.products_description, p.products_model, p.products_quantity, p.products_image, pd.products_url, p.products_price, p.products_tax_class_id, p.products_date_added, p.products_date_available, p.manufacturers_id , p.products_length, p.products_width, p.products_depth, s.id_bannersreal, s.products_id  from " . TABLE_PRODUCTS . " p, " . TABLE_BANNERSREAL . " s, " . TABLE_PRODUCTS_DESCRIPTION . " pd where pd.products_id = p.products_id and p.products_id = s.products_id and pd.language_id = '" . (int)$languages_id . "' order by p.products_id DESC LIMIT 22");
    //$product_info = tep_db_fetch_array($product_info_query);

?>





<link rel="stylesheet" type="text/css" href="rotador/wt-rotator.css"/>
    <script type="text/javascript" src="rotador/js/jquery.wt-rotator.js"></script>
	<script type="text/javascript">
    	$(document).ready(	
			function() {
				$(".container").wtRotator({
					width:1024,
					height:354,
					button_width:15,
					button_height:16,
					button_margin:5,
					auto_start:true, 
					delay:8000,
					transition:"fade",
					transition_speed:800,
					cpanel_position:"inside",
					cpanel_align:"BR",
					timer_align:"top",
					display_thumbs:true,
					display_dbuttons:true,
					display_playbutton:false,
					display_numbers:false,
					display_timer:false,
					mouseover_pause:false,
					cpanel_mouseover:false,
					text_mouseover:false,
					text_effect:"fade",
					text_sync:true,
					tooltip_type:"image",
					shuffle:true,
					block_size:75,
					vert_size:55,
					horz_size:50,
					block_delay:25,
					vstripe_delay:75,
					hstripe_delay:180					
				});
			}
		);
		
    </script>     
				 
<div class="container">
<div class="wt-rotator"> 
    	<div class="screen">
            <noscript>
            	<!-- placeholder 1st image when javascript is off -->
                <img src="images/banner2_1.jpg">
            </noscript>
      	</div>
        <div class="c-panel">
       	<div  class="buttons">
			<div class="play-btn"></div>
		</div>
      		<div class="buttons">   
         	</div>
            <div class="thumbnails">
                <ul>
                
                  <?php while ($product_info = tep_db_fetch_array($product_info_query)) {?>

<?php

if($customer_group_id != 0){
  $scustomer_group_price_query = tep_db_query("select customers_group_price from " . TABLE_PRODUCTS_GROUPS . " where products_id = '" . $product_info['products_id']. "' and customers_group_id =  '" . $customer_group_id . "'");
    if ($scustomer_group_price = tep_db_fetch_array($scustomer_group_price_query)) {
        $product_info['products_price'] = $scustomer_group_price['customers_group_price'];
	}
	
}

$specials_query = tep_db_query("select products_id, specials_new_products_price from specials where products_id ='" . $product_info['products_id']. "' and status = '1' and customers_group_id = '" .$customer_group_id. "' ");
    $valuespecial = 0;
    if ($specials_array = tep_db_fetch_array($specials_query)) {
	    $valuespecial = 1;
        $specialproductprice = $specials_array['specials_new_products_price'];
	}
	

?>              



                    <li>
                   	  <a href="<?php echo tep_image3(DIR_WS_IMAGES . $product_info['products_image'], $product_info['products_name'], 362, 238, '');?>"></a>

                        <a href="<?php echo 'product_info.php?products_id='.$product_info['products_id'];?>" ></a>
                        
   <div style="top:10px; height:auto; background:none; padding-left:20px; padding-right:20px; width:100%">
      <div class="titlebannerproduct" ><?php echo $product_info['products_name'];?></div>
      <div class="pricebannerproduct" style="padding-left:380px; padding-top:20px" >

        <?php
        if($valuespecial==1){
			echo '<s style="font-size:20px">'.$currencies->display_price($product_info['products_price'], tep_get_tax_rate($product_info['products_tax_class_id'])).'</s>&nbsp;';
		} else {
			echo $currencies->display_price($product_info['products_price'], tep_get_tax_rate($product_info['products_tax_class_id']));
		}?>
                
      	<?php
        if($valuespecial==1){
	    	echo $currencies->display_price($specialproductprice, tep_get_tax_rate($product_info['products_tax_class_id']));
		}?>
        
        
      <br />
      <a href="<?php echo tep_href_link('product_info.php?products_id='.$product_info['products_id']);?>"><?php echo tep_image_button("button_details.png");?></a>
    </div>
   </div>                             
                  </li>
    			  <?php } ?>
                    
                    
                      
                </ul>
            </div>     
        </div>
    </div>	
</div>