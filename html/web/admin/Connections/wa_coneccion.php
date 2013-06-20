<?php

 require('../includes/configure.php');

# FileName="Connection_php_mysql.htm"

# Type="MYSQL"

# HTTP="true"

$hostname_wa_coneccion = DB_SERVER;

$database_wa_coneccion = DB_DATABASE;

$username_wa_coneccion = DB_SERVER_USERNAME;

$password_wa_coneccion = DB_SERVER_PASSWORD;

$wa_coneccion = mysql_pconnect($hostname_wa_coneccion, $username_wa_coneccion, $password_wa_coneccion) or trigger_error(mysql_error(),E_USER_ERROR); 

?>