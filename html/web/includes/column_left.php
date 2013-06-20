

<div  style="background-image:url(images/fondobarra.png); background-repeat:no-repeat; margin-top:0px; height:100%; width:<?php echo BOX_WIDTH_1; ?>px" >

        <div align="left" class="h_r_text" style="margin-left:25px; padding-top:16px; margin-bottom:19px;" >
        <?=BOX_HEADING_CATEGORIES?>
        </div>
		
        <div style="height:21px; background-image:url(images/column_1.png); width:<?php echo BOX_WIDTH_1; ?>px;  background-repeat:no-repeat;">
        &nbsp;
        </div>
        <div style="background-image:url(images/column_2.png); background-repeat:repeat-y; width:<?php echo BOX_WIDTH_1; ?>px" class="columnleft">
            <div style="margin-left:30px;width:<?php echo BOX_WIDTH_1-20; ?>px">
            <?php
            /*
              $Id: categories.php 1739 2007-12-20 00:52:16Z hpdl $
            
              osCommerce, Open Source E-Commerce Solutions
              http://www.oscommerce.com
            
              Copyright (c) 2003 osCommerce
            
              Released under the GNU General Public License
            */
            
              function tep_show_category($counter) {
                global $tree, $categories_string, $cPath_array;
                    $str_classname = 'category_classname';
                    $categories_prefix_string = '';
                for ($i=0; $i<$tree[$counter]['level']; $i++) {
                  $categories_prefix_string .= BOX_CATEGORIES_SUBCATEGORY_PREFIX;
                  $str_classname =  'sub'.$str_classname;
                }
            
                $categories_string .= '<a href="';
            
                if ($tree[$counter]['parent'] == 0) {
                  $cPath_new = 'cPath=' . $counter;
                } else {
                  $cPath_new = 'cPath=' . $tree[$counter]['path'];
                }
            
                $categories_string .= tep_href_link(FILENAME_DEFAULT, $cPath_new) . '" class="'.$str_classname.'" title="'.$tree[$counter]['name'].'">';
                    $categories_string .= $categories_prefix_string;
                if (isset($cPath_array) && in_array($counter, $cPath_array)) {
                  $categories_string .= '<b>';
                }
            
            // display category name
                $categories_string .= $tree[$counter]['name'];
            
                if (isset($cPath_array) && in_array($counter, $cPath_array)) {
                  $categories_string .= '</b>';
                }
            
                if (tep_has_category_subcategories($counter)) {
                  $categories_string .= BOX_CATEGORIES_CATEGORY_HAS_SUBCATEGORY;
                }
            
                $categories_string .= '</a>';
            
                if (SHOW_COUNTS == 'true') {
                  $products_in_category = tep_count_products_in_category($counter);
                  if ($products_in_category > 0) {
                    $categories_string .= ''; 
                  }
                }
                $categories_string .= '<br/><div style="margin-right:50px; background-image:url(images/divisor.png); background-repeat:repeat-x; height:11px"></div>';
            
                if ($tree[$counter]['next_id'] != false) {
                  tep_show_category($tree[$counter]['next_id']);
                }
              }
            ?>
            <?php
              define(TABLE_CATEGORIES, "categories");
              define(TABLE_CATEGORIES_DESCRIPTION, "categories_description");
              $categories_string = '';
              $tree = array();
              $categories_query = tep_db_query("select c.categories_id, cd.categories_name, c.parent_id from " . TABLE_CATEGORIES . " c, " . TABLE_CATEGORIES_DESCRIPTION . " cd where c.parent_id = '0' and c.categories_id = cd.categories_id and cd.language_id='" . (int)$languages_id ."' order by sort_order, cd.categories_name");
              while ($categories = tep_db_fetch_array($categories_query))  {
			  if($categories['categories_name']!= "Gift"){
					$tree[$categories['categories_id']] = array('name' => $categories['categories_name'],
																'parent' => $categories['parent_id'],
																'level' => 0,
																'path' => $categories['categories_id'],
																'next_id' => false);
					if (isset($parent_id)) {
					  $tree[$parent_id]['next_id'] = $categories['categories_id'];
					}
					$parent_id = $categories['categories_id'];
					if (!isset($first_element)) {
					  $first_element = $categories['categories_id'];
					}
				}
              }
              //------------------------
              if (tep_not_null($cPath)) {
                $new_path = '';
                reset($cPath_array);
                while (list($key, $value) = each($cPath_array)) {
                  unset($parent_id);
                  unset($first_id);
                  $categories_query = tep_db_query("select c.categories_id, cd.categories_name, c.parent_id from " . TABLE_CATEGORIES . " c, " . TABLE_CATEGORIES_DESCRIPTION . " cd where c.parent_id = '" . (int)$value . "' and c.categories_id = cd.categories_id and cd.language_id='" . (int)$languages_id ."' order by sort_order, cd.categories_name");
                  if (tep_db_num_rows($categories_query)) {
                    $new_path .= $value;
                    while ($row = tep_db_fetch_array($categories_query)) {
                      $tree[$row['categories_id']] = array('name' => $row['categories_name'],
                                                           'parent' => $row['parent_id'],
                                                           'level' => $key+1,
                                                           'path' => $new_path . '_' . $row['categories_id'],
                                                           'next_id' => false);
                      if (isset($parent_id)) {
                        $tree[$parent_id]['next_id'] = $row['categories_id'];
                      }
                      $parent_id = $row['categories_id'];
                      if (!isset($first_id)) {
                        $first_id = $row['categories_id'];
                      }
                      $last_id = $row['categories_id'];
                    }
                    $tree[$last_id]['next_id'] = $tree[$value]['next_id'];
                    $tree[$value]['next_id'] = $first_id;
                    $new_path .= '_';
                  } else {
                    break;
                  }
                }
              }
              $categories_string .=  '';
              tep_show_category($first_element); 
              $categories_string .=  '';
              echo $categories_string;
            ?>
            </div>
		</div>
        <div style="height:21px; background-image:url(images/column_3.png); width:<?php echo BOX_WIDTH_1; ?>px;  background-repeat:no-repeat; margin-bottom:15px; background-position:bottom left;">
        </div>
        
        
        <div style="width:<?php echo BOX_WIDTH_1; ?>px;  background-repeat:no-repeat; margin-bottom:15px; background-position:bottom left; ">
        <a href="gift-p-2617.html"><img src="<?php echo tep_output_string(DIR_WS_LANGUAGES . $language . '/images/buttons/giftcertificates.png');?>" alt="<?Php echo HTTP_COOKIE_DOMAIN;?>" /></a>
        </div>
        <div style="width:<?php echo BOX_WIDTH_1; ?>px;  background-repeat:no-repeat; margin-bottom:15px; background-position:bottom left; ">
        <a href="news.html"><img src="<?php echo tep_output_string(DIR_WS_LANGUAGES . $language . '/images/buttons/blogarticles.png');?>" alt="<?Php echo HTTP_COOKIE_DOMAIN;?>" /></a>
        </div>
</div>
<?php 
  //require('includes/boxes/gc_code_entry.php');
  ?>
