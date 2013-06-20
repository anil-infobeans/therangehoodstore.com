<?php

$directoriocorrescriptbackup = "/home/regaloma/public_html/admin";

?>

<?php require($directoriocorrescriptbackup.'/includes/configure.php');?>

<?php $pieces = explode("_", DB_DATABASE);?>







<?php

require_once($directoriocorrescriptbackup.'/Connections/wa_coneccion.php'); 

mysql_select_db($database_wa_coneccion) ;

include_once ( "SqlBackup_class.php" );



$backup = new SqlBackup;



if ( !$backup->setDB ( $database_wa_coneccion ) )

	die ( "Errore : " . $backup->getError() );

if ( !$backup->setDir ( $directoriocorrescriptbackup."/backups/" ) )

	die ( "Errore : " . $backup->getError() );

if ( !$backup->setFile ( $pieces[0]."_auto_".date("Y_m_d_H_i_s").".sql" ) )

	die ( "Errore : " . $backup->getError() );

if ( !$backup->make() )

	die ( "Errore : " . $backup->getError() );

	

?>