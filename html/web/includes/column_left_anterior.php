

<div  style="background-image:url(images/fondobarra.png); background-repeat:no-repeat; margin-top:0px; height:100%; width:<?php echo BOX_WIDTH_1; ?>px" >
<div align="left" class="h_l_text_left" style="margin-left:25px; padding-top:17px;" >
<strong><?=BOX_HEADING_CATEGORIES?></strong> 
</div>
<br />
<br />
<ul style="margin-left:0px; margin-top:0px;">
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
    $categories_string .= '<br><div style="margin-left:0px"><img src="images/divisor.png" width="'.BOX_WIDTH_1.'" height="3"></div>';

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
</ul><br />
<br />


<?php
/*
  $Id: column_left.php,v 1.15 2003/07/01 14:34:54 hpdl Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce

  Released under the GNU General Public License
*/

?>
<div style="background:url(images/fondobarra2.png) no-repeat;"> 
<div align="left" class="h_l_text_left" style="margin-left:25px; padding-top:15px;">  
<strong><?=IMAGE_BUTTON_SEARCH?></strong>
<br />
<br />
<br />
<br />
<br /> 
<br /> 
<br />
<br />
<br />
<br />
<br />
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo tep_draw_form('search',tep_href_link(FILENAME_ADVANCED_SEARCH_RESULT, '', 'NONSSL', false),'get') ?>
<input name="keywords" type=text class="form1" style="position:relative;top:50px;" />
<span style="position:relative;top:54px;"><?=tep_image_submit('go.gif')?></span>
</form> 
<br><br />
<br><br /> 
</div>
<div class="c_text" style="margin-left:25px; margin-right:25px; text-align:center; margin-top:60px;" >
<?php echo TEXT_SEARCH; ?>
</div>
<br />
<br><br /><br><br />

<? //<div style="background:url(images/fondoboton.png)  no-repeat;" ?>
<div align="left" class="h_l_text_left" style="padding-top:-5px  ">
<div style="margin-left:25px">
<strong><? //=BOX_HEADING_LANGUAGES?></strong>
</div>
<br />
<?php //
  //if (substr(basename($PHP_SELF), 0, 8) != 'checkout') {
    //include(DIR_WS_BOXES . 'languages.php');
  //}
?>
<br />
</div>
</div>
<?php //tell a friend
if (isset($HTTP_GET_VARS['products_id'])) {
echo ' <div style="background:url(images/fondoboton.png)  no-repeat" ><div align="left" class="h_l_text_left" style="margin-left:25px; padding-top:16px;"><strong>' . BOX_HEADING_TELL_A_FRIEND . '</strong></div><br><br style="line-height:8px;">';
echo tep_draw_form('tell_a_friend', tep_href_link(FILENAME_TELL_A_FRIEND, '', 'NONSSL', false), 'get');
echo tep_image_submit('button_tell_a_friend.png', BOX_HEADING_TELL_A_FRIEND) . tep_draw_hidden_field('products_id', $HTTP_GET_VARS['products_id']) . tep_hide_session_id() ;
    echo '</form><div class="c_text" style="margin-left:25px; margin-right:25px; text-align:center">'.TEXT_TELL_A_FRIEND.'</div>';
	}
?>
</div>  
</div>
<br />
</div>
</div>
