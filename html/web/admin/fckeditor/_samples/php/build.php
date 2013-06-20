<?php



if (isset( $_POST ))

   $postArray = &$_POST ;			// 4.1.0 or later

else

   $postArray = &$HTTP_POST_VARS ;	// prior to 4.1.0



$fname="pagedemo.html";



$nfile = fopen($fname, "w");



if($nfile != false)

{

	foreach ($postArray as $sForm => $value )

	{

		fwrite($nfile, stripslashes( $value ));

	}



	fclose($nfile);

}	



?>



