<?php
  require('includes/application_top.php');
    $product_ingredients_query = tep_db_query("select p.products_id, pd.products_name, pd.products_title9, pd.products_description9 from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_status = '1' and p.products_id = '".$_GET['products_id']."' and pd.products_id = p.products_id and pd.language_id = '" . (int)$languages_id . "'");
  $product_ingredients = tep_db_fetch_array($product_ingredients_query);  
?>



    <div style="margin:10px; background-color:#FFFFFF; padding:20px;">
        <div class="titlesubcontent" style="text-align:center;">
        Ingredients of <?php echo stripslashes($product_ingredients['products_name']); ?>
        </div><br />
        <div class="subcontent">
        <?php echo stripslashes($product_ingredients['products_description9']); ?>
        </div>
        <div style="text-align:center; padding-top:10px">
                <font style="font-size:10px;"><a href="javascript:ocultardivid();"><img src="includes/languages/english/images/buttons/btn_close.gif" /></a></font><br />
                </div>
    </div>
