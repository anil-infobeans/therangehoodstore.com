<?php
if ($_GET['codigo_videos'] != "") {
	$newid = $_GET['codigo_videos'];
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>flvPlayer</title>
<script src="http://www.google.com/jsapi"></script>

<div class="tdvideo">
	<div id="youtube">&nbsp;</div>
</div>
<script type="text/javascript">
	google.load("swfobject", "2.1");
	google.setOnLoadCallback(function() {
		swfobject.embedSWF("tubeplayer.swf", "youtube", "640", "360", "8.0.0", "", {videoId: "<?php echo $newid; ?>", autoPlay: "true"}, {menu: "false", allowfullscreen: "true"}, {});
	});
</script>
</body>
</html>