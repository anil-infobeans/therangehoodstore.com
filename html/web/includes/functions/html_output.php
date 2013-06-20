<?php
/*
  $Id: html_output.php,v 1.56 2003/07/09 01:15:48 hpdl Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce

  Released under the GNU General Public License
*/

////
// Ultimate SEO URLs v2.2d
// The HTML href link wrapper function
 function tep_href_link($page = '', $parameters = '', $connection = 'NONSSL', $add_session_id = true, $search_engine_safe = true) {
   global $seo_urls;                
   if ( !is_object($seo_urls) ){
    if ( !class_exists('SEO_URL') ){
     include_once(DIR_WS_CLASSES . 'seo.class.php');
    }
    global $languages_id;
    $seo_urls = new SEO_URL($languages_id);
   }
   return $seo_urls->href_link($page, $parameters, $connection, $add_session_id);
 }

// The HTML image wrapper function
  function tep_default_image($src, $alt = '', $width = '', $height = '', $parameters = '') {
    if ( (empty($src) || ($src == DIR_WS_IMAGES)) && (IMAGE_REQUIRED == 'false') ) {
      return false;
    }

// alt is added to the img tag even if it is null to prevent browsers from outputting
// the image filename as default
    $image = '<img src="' . tep_output_string($src) . '" border="0" alt="' . tep_output_string($alt) . '"';

    if (tep_not_null($alt)) {
      $image .= ' title=" ' . tep_output_string($alt) . ' "';
    }

    if ( (CONFIG_CALCULATE_IMAGE_SIZE == 'true') && (empty($width) || empty($height)) ) {
      if ($image_size = @getimagesize($src)) {
        if (empty($width) && tep_not_null($height)) {
          $ratio = $height / $image_size[1];
          $width = $image_size[0] * $ratio;
        } elseif (tep_not_null($width) && empty($height)) {
          $ratio = $width / $image_size[0];
          $height = $image_size[1] * $ratio;
        } elseif (empty($width) && empty($height)) {
          $width = $image_size[0];
          $height = $image_size[1];
        }
      } elseif (IMAGE_REQUIRED == 'false') {
        return false;
      }
    }

    if (tep_not_null($width) && tep_not_null($height)) {
      $image .= ' width="' . tep_output_string($width) . '" height="' . tep_output_string($height) . '"';
    }

    if (tep_not_null($parameters)) $image .= ' ' . $parameters;

    $image .= '/>';

    return $image;
  }

////
// The HTML form submit button wrapper function
// Outputs a button in the selected language
  function tep_image_submit($image, $alt = '', $parameters = '') {
    global $language;

    $image_submit = '<input type="image" src="' . tep_output_string(DIR_WS_LANGUAGES . $language . '/images/buttons/' . $image) . '" style="border:none" alt="' . tep_output_string($alt) . '"';

    if (tep_not_null($alt)) $image_submit .= ' title=" ' . tep_output_string($alt) . ' "';

    if (tep_not_null($parameters)) $image_submit .= ' ' . $parameters;

    $image_submit .= '/>';

    return $image_submit;
  }

////
// Output a function button in the selected language
  function tep_image_button($image, $alt = '', $parameters = '') {
    global $language;

    return tep_image(DIR_WS_LANGUAGES . $language . '/images/buttons/' . $image, $alt, '', '', $parameters);
  }

////
// Output a separator either through whitespace, or with an image
  function tep_draw_separator($image = 'pixel_black.gif', $width = '100%', $height = '1') {
    return tep_image(DIR_WS_IMAGES . $image, '', $width, $height);
  }

////
// Output a form
  function tep_draw_form($name, $action, $method = 'post', $parameters = '') {
    $form = '<form name="' . tep_output_string($name) . '" action="' . tep_output_string($action) . '" method="' . tep_output_string($method) . '"';

    if (tep_not_null($parameters)) $form .= ' ' . $parameters;

    $form .= '>';

    return $form;
  }

////
// Output a form input field
  function tep_draw_input_field($name, $value = '', $parameters = '', $type = 'text', $reinsert_value = true) {
    $field = '<input type="' . tep_output_string($type) . '" name="' . tep_output_string($name) . '"';

    if ( (isset($GLOBALS[$name])) && ($reinsert_value == true) ) {
      $field .= ' value="' . tep_output_string(stripslashes($GLOBALS[$name])) . '"';
    } elseif (tep_not_null($value)) {
      $field .= ' value="' . tep_output_string($value) . '"';
    }

    if (tep_not_null($parameters)) $field .= ' ' . $parameters;

    $field .= '/>';

    return $field;
  }

////
// Output a form password field
  function tep_draw_password_field($name, $value = '', $parameters = 'maxlength="40"') {
    return tep_draw_input_field($name, $value, $parameters, 'password', false);
  }

////
// Output a selection field - alias function for tep_draw_checkbox_field() and tep_draw_radio_field()
  function tep_draw_selection_field($name, $type, $value = '', $checked = false, $parameters = '') {
    $selection = '<input type="' . tep_output_string($type) . '" name="' . tep_output_string($name) . '"';

    if (tep_not_null($value)) $selection .= ' value="' . tep_output_string($value) . '"';

    if ( ($checked == true) || ( isset($GLOBALS[$name]) && is_string($GLOBALS[$name]) && ( ($GLOBALS[$name] == 'on') || (isset($value) && (stripslashes($GLOBALS[$name]) == $value)) ) ) ) {
      $selection .= ' CHECKED';
    }

    if (tep_not_null($parameters)) $selection .= ' ' . $parameters;

    $selection .= '/>';

    return $selection;
  }

////
// Output a form checkbox field
  function tep_draw_checkbox_field($name, $value = '', $checked = false, $parameters = '') {
    return tep_draw_selection_field($name, 'checkbox', $value, $checked, $parameters);
  }

////
// Output a form radio field
  function tep_draw_radio_field($name, $value = '', $checked = false, $parameters = '') {
    return tep_draw_selection_field($name, 'radio', $value, $checked, $parameters);
  }

////
// Output a form textarea field
  function tep_draw_textarea_field($name, $wrap, $width, $height, $text = '', $parameters = '', $reinsert_value = true) {
    $field = '<textarea name="' . tep_output_string($name) . '" wrap="' . tep_output_string($wrap) . '" cols="' . tep_output_string($width) . '" rows="' . tep_output_string($height) . '"';

    if (tep_not_null($parameters)) $field .= ' ' . $parameters;

    $field .= '/>';

    if ( (isset($GLOBALS[$name])) && ($reinsert_value == true) ) {
      $field .= tep_output_string_protected(stripslashes($GLOBALS[$name]));
    } elseif (tep_not_null($text)) {
      $field .= tep_output_string_protected($text);
    }

    $field .= '</textarea>';

    return $field;
  }

////
// Output a form hidden field
  function tep_draw_hidden_field($name, $value = '', $parameters = '') {
    $field = '<input type="hidden" name="' . tep_output_string($name) . '"';

    if (tep_not_null($value)) {
      $field .= ' value="' . tep_output_string($value) . '"';
    } elseif (isset($GLOBALS[$name])) {
      $field .= ' value="' . tep_output_string(stripslashes($GLOBALS[$name])) . '"';
    }

    if (tep_not_null($parameters)) $field .= ' ' . $parameters;

    $field .= '/>';

    return $field;
  }

////
// Hide form elements
  function tep_hide_session_id() {
    global $session_started, $SID;

    if (($session_started == true) && tep_not_null($SID)) {
      return tep_draw_hidden_field(tep_session_name(), tep_session_id());
    }
  }

////
// Output a form pull down menu
  function tep_draw_pull_down_menu($name, $values, $default = '', $parameters = '', $required = false) {
    $field = '<select name="' . tep_output_string($name) . '"';

    if (tep_not_null($parameters)) $field .= ' ' . $parameters;

    $field .= '/>';

    if (empty($default) && isset($GLOBALS[$name])) $default = stripslashes($GLOBALS[$name]);

    for ($i=0, $n=sizeof($values); $i<$n; $i++) {
      $field .= '<option value="' . tep_output_string($values[$i]['id']) . '"';
      if ($default == $values[$i]['id']) {
        $field .= ' SELECTED';
      }

      $field .= '/>' . tep_output_string($values[$i]['text'], array('"' => '&quot;', '\'' => '&#039;', '<' => '&lt;', '/>' => '&gt;')) . '</option>';
    }
    $field .= '</select>';

    if ($required == true) $field .= TEXT_FIELD_REQUIRED;

    return $field;
  }

////
// Creates a pull-down list of countries
  function tep_get_country_list($name, $selected = '', $parameters = '') {
    $countries_array = array(array('id' => '', 'text' => PULL_DOWN_DEFAULT));
    $countries = tep_get_countries();

    for ($i=0, $n=sizeof($countries); $i<$n; $i++) {
      $countries_array[] = array('id' => $countries[$i]['countries_id'], 'text' => $countries[$i]['countries_name']);
    }

    return tep_draw_pull_down_menu($name, $countries_array, $selected, $parameters);
  }
////
// Image Resample
  function tep_image($src, $alt = '', $width = '', $height = '', $parameters = '')
    {
	
	$dividir = explode(".",$src); 
   // if no width or height specified or file not found use default function
   if ((!$width) || (!$height) || (!is_file(DIR_FS_CATALOG . '/' . $src))) 
      return tep_default_image($src, $alt, $width, $height, $parameters);

   // Name for the resampled image (always JPEG for decent results in size and quality
   $newName = eregi_replace( '\.([a-z]{3,4})', "-{$width}x{$height}.".$dividir[1], $src );

   // if resampled image exists, no need to create - use existing one.
   // Check to determine whether thumbnail is older than main image. If it is, the main image has been updated. Generate a new thumbnail.
     if( is_file( DIR_FS_CATALOG . '/' . $newName ) && filemtime( DIR_FS_CATALOG . '/' . $src ) < filemtime ( DIR_FS_CATALOG . '/' . $newName) )
      {
      $src = $newName;
      return tep_default_image($src, $alt, $width, $height, $parameters);
      }

   // get the size of the image.  if width or height=0, image is broken. No processing.
   $size = GetImageSize(DIR_FS_CATALOG . '/' . $src);
   if (!$size[0] || !$size[1])
      return tep_default_image($src, $alt, $width, $height, $parameters);

   // Calculate Scaling Factor and x,y pos for centering the thumbnail
   // If scale = 1, image does not need to be resized.
   $scale = min($width/$size[0], $height/$size[1]);
   if ( $scale == 1 )
      return tep_default_image($src, $alt, $width, $height, $parameters);

   $newwidth = (int)($size[0]*$scale);
   $newheight = (int)($size[1]*$scale);
   $xpos = (int)(($width - $newwidth)/2);
   $ypos = (int)(($height - $newheight)/2);

   //create the destination image resource.
   //always use true color here, or you'll get some real bad color shifts

   $destImg = imagecreatetruecolor($width, $height);
   imagealphablending($destImg, false);
   
   if(( $dividir[1] = "JPG") || ( $dividir[1] = "jpg") || ( $dividir[1] = "JPEG") || ( $dividir[1] = "jpeg")) {
   
    $colorr = imagecolorallocatealpha($destImg, 255, 255, 255, 127);
	 
   } else {
   
   $colorr = imagecolorallocatealpha($destImg, 0, 0, 0, 127);
   
   }
   
   imagefill($destImg, 0, 0, $colorr);
   imagesavealpha($destImg, true);

   // Check image format. Only process JPG or PNG. GIF NOT supported by PHP.
   // The results with gifs were no good anyway
   switch ( $size[2] )
      {
      case 2: // JPG
         $sourceImg = ImageCreateFromJPEG (DIR_FS_CATALOG . '/' . $src);
         if (function_exists('ImageCopyResampled'))
            ImageCopyResampled($destImg, $sourceImg, $xpos, $ypos, 0, 0, $newwidth, $newheight, $size[0], $size[1]);
         else
            ImageCopyResized($destImg, $sourceImg, $xpos, $ypos, 0, 0, $newwidth, $newheight, $size[0], $size[1]);
         imagejpeg($destImg, DIR_FS_CATALOG . '/' . $newName, 90);
         $src = $newName;           // Use the resampled image
         $width = $height = "";     // and it's own properties
         break;
      case 3: // PNG
        $sourceImg = ImageCreateFromPNG (DIR_FS_CATALOG . '/' . $src);
        if (function_exists('ImageCopyResampled'))
           ImageCopyResampled($destImg, $sourceImg, $xpos, $ypos, 0, 0, $newwidth, $newheight, $size[0], $size[1]);
        else
           ImageCopyResized($destImg, $sourceImg, $xpos, $ypos, 0, 0, $newwidth, $newheight, $size[0], $size[1]);
        imagepng($destImg, DIR_FS_CATALOG . '/' . $newName, 90);
        $src = $newName;
        $width = $height = "";
        break;
     }
     return tep_default_image($src, $alt, $width, $height, $parameters);
   }
   
  
 
    function tep_image3($src, $alt = '', $width = '', $height = '', $parameters = '')
    {
	
	$dividir = explode(".",$src); 
   // if no width or height specified or file not found use default function
   if ((!$width) || (!$height) || (!is_file(DIR_FS_CATALOG . '/' . $src))) 
      return tep_default_image3($src, $alt, $width, $height, $parameters);

   // Name for the resampled image (always JPEG for decent results in size and quality
   $newName = eregi_replace( '\.([a-z]{3,4})', "-{$width}x{$height}.".$dividir[1], $src );

   // if resampled image exists, no need to create - use existing one.
   // Check to determine whether thumbnail is older than main image. If it is, the main image has been updated. Generate a new thumbnail.
     if( is_file( DIR_FS_CATALOG . '/' . $newName ) && filemtime( DIR_FS_CATALOG . '/' . $src ) < filemtime ( DIR_FS_CATALOG . '/' . $newName) )
      {
      $src = $newName;
      return tep_default_image3($src, $alt, $width, $height, $parameters);
      }

   // get the size of the image.  if width or height=0, image is broken. No processing.
   $size = GetImageSize(DIR_FS_CATALOG . '/' . $src);
   if (!$size[0] || !$size[1])
      return tep_default_image3($src, $alt, $width, $height, $parameters);

   // Calculate Scaling Factor and x,y pos for centering the thumbnail
   // If scale = 1, image does not need to be resized.
   $scale = min($width/$size[0], $height/$size[1]);
   if ( $scale == 1 )
      return tep_default_image3($src, $alt, $width, $height, $parameters);

   $newwidth = (int)($size[0]*$scale);
   $newheight = (int)($size[1]*$scale);
   $xpos = (int)(($width - $newwidth)/2);
   $ypos = (int)(($height - $newheight)/2);

   //create the destination image resource.
   //always use true color here, or you'll get some real bad color shifts

   $destImg = imagecreatetruecolor($width, $height);
   imagealphablending($destImg, false);
   
   if(( $dividir[1] = "JPG") || ( $dividir[1] = "jpg") || ( $dividir[1] = "JPEG") || ( $dividir[1] = "jpeg")) {
   
    $colorr = imagecolorallocatealpha($destImg, 255, 255, 255, 127);
	 
   } else {
   
   $colorr = imagecolorallocatealpha($destImg, 0, 0, 0, 127);
   
   }
   
   imagefill($destImg, 0, 0, $colorr);
   imagesavealpha($destImg, true);

   // Check image format. Only process JPG or PNG. GIF NOT supported by PHP.
   // The results with gifs were no good anyway
   switch ( $size[2] )
      {
      case 2: // JPG
         $sourceImg = ImageCreateFromJPEG (DIR_FS_CATALOG . '/' . $src);
         if (function_exists('ImageCopyResampled'))
            ImageCopyResampled($destImg, $sourceImg, $xpos, $ypos, 0, 0, $newwidth, $newheight, $size[0], $size[1]);
         else
            ImageCopyResized($destImg, $sourceImg, $xpos, $ypos, 0, 0, $newwidth, $newheight, $size[0], $size[1]);
         imagejpeg($destImg, DIR_FS_CATALOG . '/' . $newName, 100);
         $src = $newName;           // Use the resampled image
         $width = $height = "";     // and it's own properties
         break;
      case 3: // PNG
        $sourceImg = ImageCreateFromPNG (DIR_FS_CATALOG . '/' . $src);
        if (function_exists('ImageCopyResampled'))
           ImageCopyResampled($destImg, $sourceImg, $xpos, $ypos, 0, 0, $newwidth, $newheight, $size[0], $size[1]);
        else
           ImageCopyResized($destImg, $sourceImg, $xpos, $ypos, 0, 0, $newwidth, $newheight, $size[0], $size[1]);
        imagepng($destImg, DIR_FS_CATALOG . '/' . $newName, 9);
        $src = $newName;
        $width = $height = "";
        break;
     }
     return tep_default_image3($src, $alt, $width, $height, $parameters);
   }
   
   
   function tep_default_image3($src, $alt = '', $width = '', $height = '', $parameters = '') {
    if ( (empty($src) || ($src == DIR_WS_IMAGES)) && (IMAGE_REQUIRED == 'false') ) {
      return false;
    }

// alt is added to the img tag even if it is null to prevent browsers from outputting
// the image filename as default
    $image =  tep_output_string($src);


    if (tep_not_null($alt)) {
      //$image .= ' title=" ' . tep_output_string($alt) . ' "';
    }

    if ( (CONFIG_CALCULATE_IMAGE_SIZE == 'true') && (empty($width) || empty($height)) ) {
      if ($image_size = @getimagesize($src)) {
        if (empty($width) && tep_not_null($height)) {
          $ratio = $height / $image_size[1];
          $width = $image_size[0] * $ratio;
        } elseif (tep_not_null($width) && empty($height)) {
          $ratio = $width / $image_size[0];
          $height = $image_size[1] * $ratio;
        } elseif (empty($width) && empty($height)) {
          $width = $image_size[0];
          $height = $image_size[1];
        }
      } elseif (IMAGE_REQUIRED == 'false') {
        return false;
      }
    }

    if (tep_not_null($width) && tep_not_null($height)) {
     // $image .= ' width="' . tep_output_string($width) . '" height="' . tep_output_string($height) . '"';
    }

    if (tep_not_null($parameters)) $image .= ' ' . $parameters;

   // $image .= '';

    return $image;
  }
  
?>
