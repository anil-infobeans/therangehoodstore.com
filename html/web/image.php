<?php
//watermark program
//Show that a jpeg image is going to be returned
//echo $QUERY_STRING;
//exit;
header("Content-type: image/jpeg");

//File names
$wmark='watermark.png';
$wmarks='watermark_s.png';
$noimg='noimg.png';
$mimage=$QUERY_STRING;

// mod to display default image instead of 404
if (file_exists($QUERY_STRING)) {
  //echo "The file $QUERY_STRING exists";

//Loading
$watermark_img = imagecreatefrompng($wmark);
$watermarks_img = imagecreatefrompng($wmarks);

$wmrk_size = getimagesize($wmark);
$wmrks_size = getimagesize($wmarks);

$main_img = imagecreatefromjpeg($mimage);
//ImageAlphaBlending($main_image, true);

//Merge the 2 buffers
//The figure "300" can be changed to any figure suitable for your situation.

if (ImageSX($main_img) > 300) {
	$posx = (ImageSX($main_img) - ImageSX($watermark_img))/2;
	$posy = (ImageSY($main_img) - ImageSY($watermark_img))/2;
imagecopy($main_img, $watermark_img, $posx, $posy, 0, 0, $wmrk_size[0], $wmrk_size[1]);
	}else{
	$posxs = (ImageSX($main_img) - ImageSX($watermarks_img))/2;
	$posys = (ImageSY($main_img) - ImageSY($watermarks_img))/2;
imagecopy($main_img, $watermarks_img, $posxs, $posys, 0, 0, $wmrks_size[0], $wmrks_size[1]);
	}

//Output file to browser
imagejpeg($main_img);
imagedestroy($watermark_img);
imagedestroy($watermarks_img);
imagedestroy($main_img);

} else {
//echo "The file $QUERY_STRING does not exist";

//Loading
$noimg_show = imagecreatefrompng($noimg);

//Output file to browser
imagejpeg($noimg_show);
imagedestroy($noimg_show);

}
?>
