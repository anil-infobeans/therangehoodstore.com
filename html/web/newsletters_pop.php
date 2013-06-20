<?php
    require('includes/application_top.php');
    $newsletters_query = tep_db_query("select * from " . TABLE_NEWSLETTERS . " where newsletters_id='" . $_GET['newsletters_id']."'");
	$newsletters = tep_db_fetch_array($newsletters_query);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html <?php echo HTML_PARAMS; ?> xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title><?php echo $newsletters['title']?></title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
a:link {
	color: #063;
}
a:visited {
	color: #063;
}
a:hover {
	color: #F90;
}
-->
</style>
<link href="http://www.maciabilloux.com.pe/stylesheet.css" rel="stylesheet" type="text/css" />
</head>

<body>

    
    <table width="611" border="0" cellspacing="0" cellpadding="0" align="center" >
  <tr>
    <td class="h_r_text"><div style="position:absolute; margin-top:285px; z-index:2; width:611px; text-align:center"> <?php echo $newsletters['title']?> </div><img src="images/boletin_header.jpg" width="611" height="316" /></td>
  </tr>
  <tr>
  <td>
  <div style=" margin-left:20px; margin-right:10px; margin-top:10px; float:left">
  <?php echo tep_image(DIR_WS_IMAGES . $newsletters['image'], '', 172, 188,'style="border:1px solid #DCD7B6"');?> 
  </div>
  <div style=" margin-left:10px; margin-right:20px; margin-top:10px; float:right">
   <?php echo $newsletters['content']; ?> 
   <br />
   <script>function fbs_click() {u=location.href;t=document.title;window.open('http://www.facebook.com/sharer.php?u='+encodeURIComponent(u)+'&t='+encodeURIComponent(t),'sharer','toolbar=0,status=0,width=626,height=436');return false;}</script><style> html .fb_share_link { padding:2px 0 0 20px; height:16px; background:url(http://b.static.ak.fbcdn.net/images/share/facebook_share_icon.gif?8:26981) no-repeat top left; }</style><a href="http://www.facebook.com/share.php?u=http://www.maciabilloux.com.pe/newsletters_pop.php?newsletters_id=<?php echo $newsletters['newsletters_id'] ?>" onclick="return fbs_click()" target="_blank" class="fb_share_link">Compartir en Facebook</a>
   
   <br /><br />
   </div>
   </td>
   </tr>
   <tr>
   <td align="center" style="background-color:#D6EBC0;" ><br />
     http://www.maciabilloux.com.pe/<br />     <br />

</td>
   </tr>
</table>

	
</body>
</html>