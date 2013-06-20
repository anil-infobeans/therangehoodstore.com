<?php		

		session_start();

		if(!isset($_SESSION['MM_Username'])){		

			header('Location: login.php');			

		}

?>

<?php

$path = getcwd();

echo "La ruta absoluta es: ";

echo $path;

?>

