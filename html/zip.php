<?php

//exec("unzip /var/www/html/demo/mentor/app/webroot/wdCalendar.zip", $out);
	// echo '<pre>';print_r($out);  


 //exec("unzip /home/bmain/public_html/headcovers.zip", $out);
	 //echo '<pre>';print_r($out);  
	 
	 	//$src='/var/www/html/demo/automotive/automotive/*';
	//$dest='/var/www/html/demo/automotive/';
	
	//exec("cp -r $src $dest", $out); 
	//echo '<pre>';print_r($out);
	
	/*Line to change the directory permission starts. Uncomment or comment as required*/
	//echo "entr";
	
	//exec("chmod -R 0777 /var/www/html/demo/mentor/app/webroot/wdCalendar", $out);
	
	//echo "changed";
	
	/*Line to change the directory permission ends*/

?>
<?php
$_SERVER['DOCUMENT_ROOT'];
echo "chmod";

//exec("zip -r /home/rhuser/public_html/latest/app/design/frontend/default/rangehood/template /home/rhuser/public_html/latest/template.zip", $out);
//exec("chmod -R 0777 /home/rhuser/public_html/latest/template.zip", $out);
//exec("cd /home/rhuser/public_html/latest/");
//exec("chmod -R 0777 *");

exec ('cd /home/content/01/10893901/html/;chmod 755 -R *;' );


//find . -type f -exec chmod 644 {} \;
//find . -type d -exec chmod 755 {} \;
echo '<pre>';
exit;
//print_r($out);
?>