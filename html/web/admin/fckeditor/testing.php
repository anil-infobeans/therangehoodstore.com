<?php 

	include($_SERVER['DOCUMENT_ROOT'] . "/productos battilana/fckeditor/editor/fckeditor.php");

	

	if (isset($_POST['desc'])) {

		echo $_POST['desc'];

	}

?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

	<head>

		<title>FCKeditor - Sample</title>

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

		<meta name="robots" content="noindex, nofollow" />

	</head>

	<body>

		<form action="editor.php" method="post" target="_blank">

			<?php

			$oFCKeditor = new FCKeditor('desc') ;

			$oFCKeditor->Value = '<strong>Funciona<strong> <q>sin problemas</q>' ;

			$oFCKeditor->Create() ;

			?>

			<input type="submit" value="Submit" />

		</form>

	</body>

</html>