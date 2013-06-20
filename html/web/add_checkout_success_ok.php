<?php
//ICW ADDED FOR ORDER_TOTAL CREDIT SYSTEM - Start Addition
 // $gv_query=tep_db_query("select amount from " . TABLE_COUPON_GV_CUSTOMER . " where customer_id='".$customer_id."'");
//  if ($gv_result=tep_db_fetch_array($gv_query)) {
 //   if ($gv_result['amount'] > 0) {
?>
      <tr>
        <td><?php //echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
      <tr>
        <td align="center" class="main"><?php //echo GV_HAS_VOUCHERA; echo tep_href_link(FILENAME_GV_SEND); echo GV_HAS_VOUCHERB; ?></td>
      </tr>
      <tr>
        <td><?php //echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
<?php
//}}
//ICW ADDED FOR ORDER_TOTAL CREDIT SYSTEM - End Addition
?>




      <?php
	  	  
	  $coupon_search1_query=tep_db_query("select customers_email_address,customers_id from customers where customers_id ='".(int)$customer_id."'");
      $coupon_search1=tep_db_fetch_array($coupon_search1_query);
	  
	  $coupon_search_query=tep_db_query("select * from coupon_email_track where emailed_to ='".$coupon_search1['customers_email_address']."'");
	  
	  while ($coupon_search=tep_db_fetch_array($coupon_search_query)) {
	  		
				$coupon_search2_query=tep_db_query("select * from coupons where coupon_id ='".$coupon_search['coupon_id']."'");
				$coupon_search2=tep_db_fetch_array($coupon_search2_query);
	  ?>
      
            <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
      
                  <tr>
                    <td class="main">
					<div style="margin-top:10px; margin-bottom:10px; background-color:#FFEA95; text-align:center; padding:40px; width:734px; font-size:16px;">
					
					<?php echo tep_image(DIR_WS_IMAGES . 'arrow_green.gif'); ?><a href="gv_redeem.php?gv_no=<?php echo $coupon_search2['coupon_code']; ?>">View your Gift Certificate Code - <?php echo $coupon_search2['coupon_code']; ?></a>
                    
                    </div>
                    
                    </td>
                  </tr>
        
              <tr>
        <td><?php echo tep_draw_separator('pixel_trans.gif', '100%', '10'); ?></td>
      </tr>
      
        <?php }?>   