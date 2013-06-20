<?php

 require('../includes/configure.php');

# FileName="Connection_php_mysql.htm"

# Type="MYSQL"

# HTTP="true"

$hostname_comte = DB_SERVER;

$database_comte = DB_DATABASE;

$username_comte = DB_SERVER_USERNAME;

$password_comte = DB_SERVER_PASSWORD;

$comte = mysql_pconnect($hostname_comte, $username_comte, $password_comte) or trigger_error(mysql_error(),E_USER_ERROR); 

?>