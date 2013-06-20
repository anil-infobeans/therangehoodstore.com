<?php		

		session_start();

		if(!isset($_SESSION['MM_Username'])){		

			header('Location: login.php');			

		}

?>

<?php

$directoriocorrescript = "/home/regaloma/public_html/admin";

?>

<?php require($directoriocorrescript.'/includes/configure.php');?>

<?php require_once($directoriocorrescript.'/Connections/wa_coneccion.php'); ?>

<?php

//el limites es 350 emails por hora por dominio, pero le pondremos 100 para darle aire al servidor y dar 100xnews 100xevents y 100xpromotion 

$maximoporhora = 2;



//news



mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset_noticiasenviar = "SELECT id_news FROM news";

$Recordset_noticiasenviar = mysql_query($query_Recordset_noticiasenviar, $wa_coneccion) or die(mysql_error());

$row_Recordset_noticiasenviar = mysql_fetch_assoc($Recordset_noticiasenviar);

$totalRows_Recordset_noticiasenviar = mysql_num_rows($Recordset_noticiasenviar);

$cuentaemails = 0;

do {





mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset_mensajes = "SELECT id_news, id_registered_user FROM mensajes_enviados WHERE id_news ='".$row_Recordset_noticiasenviar['id_news']."' order by id_registered_user ASC";

$Recordset_mensajes = mysql_query($query_Recordset_mensajes, $wa_coneccion) or die(mysql_error());

$row_Recordset_mensajes = mysql_fetch_assoc($Recordset_mensajes);

$totalRows_Recordset_mensajes = mysql_num_rows($Recordset_mensajes);



unset( $menu_mensajesb );

unset( $menu_registradosb );

$menu_mensajesb = array();

$menu_registradosb = array();



	if($totalRows_Recordset_mensajes==0){

	

			$menu_mensajesb[] = 0;

			

			mysql_select_db($database_wa_coneccion, $wa_coneccion);

			$query_Recordset_registradosb = "SELECT id_registered_user FROM registered_user order by id_registered_user ASC";

			$Recordset_registradosb = mysql_query($query_Recordset_registradosb, $wa_coneccion) or die(mysql_error());

			$row_Recordset_registradosb = mysql_fetch_assoc($Recordset_registradosb);

			$totalRows_Recordset_registradosb = mysql_num_rows($Recordset_registradosb);

			do {

				$menu_registradosb[] = $row_Recordset_registradosb['id_registered_user'];				

			} while ($row_Recordset_registradosb = mysql_fetch_assoc($Recordset_registradosb));

			

			$arreglo_usuarios_registrados = array_diff($menu_registradosb, $menu_mensajesb);

			

	}else{





			mysql_select_db($database_wa_coneccion, $wa_coneccion);

			$query_Recordset_mensajesb = "SELECT id_news, id_registered_user FROM mensajes_enviados WHERE id_news ='".$row_Recordset_noticiasenviar['id_news']."' order by id_registered_user ASC";

			$Recordset_mensajesb = mysql_query($query_Recordset_mensajesb, $wa_coneccion) or die(mysql_error());

			$row_Recordset_mensajesb = mysql_fetch_assoc($Recordset_mensajesb);

			$totalRows_Recordset_mensajesb = mysql_num_rows($Recordset_mensajesb);

			do {			

				$menu_mensajesb[] = $row_Recordset_mensajesb['id_registered_user'];				

			} while ($row_Recordset_mensajesb = mysql_fetch_assoc($Recordset_mensajesb));

			

			

			mysql_select_db($database_wa_coneccion, $wa_coneccion);

			$query_Recordset_registradosb = "SELECT id_registered_user FROM registered_user order by id_registered_user ASC";

			$Recordset_registradosb = mysql_query($query_Recordset_registradosb, $wa_coneccion) or die(mysql_error());

			$row_Recordset_registradosb = mysql_fetch_assoc($Recordset_registradosb);

			$totalRows_Recordset_registradosb = mysql_num_rows($Recordset_registradosb);

			do {

				$menu_registradosb[] = $row_Recordset_registradosb['id_registered_user'];				

			} while ($row_Recordset_registradosb = mysql_fetch_assoc($Recordset_registradosb));

			

			$arreglo_usuarios_registrados = array_diff($menu_registradosb, $menu_mensajesb); 			

		

			

	}

	include("news_send_programado.php");



} while ($row_Recordset_noticiasenviar = mysql_fetch_assoc($Recordset_noticiasenviar));







//events



mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset_noticiasenviar2 = "SELECT id_events FROM events";

$Recordset_noticiasenviar2 = mysql_query($query_Recordset_noticiasenviar2, $wa_coneccion) or die(mysql_error());

$row_Recordset_noticiasenviar2 = mysql_fetch_assoc($Recordset_noticiasenviar2);

$totalRows_Recordset_noticiasenviar2 = mysql_num_rows($Recordset_noticiasenviar2);

$cuentaemails2 = 0;

do {





mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset_mensajes2 = "SELECT id_events, id_registered_user FROM mensajes_enviados WHERE id_events ='".$row_Recordset_noticiasenviar2['id_events']."' order by id_registered_user ASC";

$Recordset_mensajes2 = mysql_query($query_Recordset_mensajes2, $wa_coneccion) or die(mysql_error());

$row_Recordset_mensajes2 = mysql_fetch_assoc($Recordset_mensajes2);

$totalRows_Recordset_mensajes2 = mysql_num_rows($Recordset_mensajes2);



unset( $menu_mensajes2b );

unset( $menu_registrados2b );

$menu_mensajes2b = array();

$menu_registrados2b = array();



	if($totalRows_Recordset_mensajes2==0){

	

			$menu_mensajes2b[] = 0;

			

			mysql_select_db($database_wa_coneccion, $wa_coneccion);

			$query_Recordset_registrados2b = "SELECT id_registered_user FROM registered_user order by id_registered_user ASC";

			$Recordset_registrados2b = mysql_query($query_Recordset_registrados2b, $wa_coneccion) or die(mysql_error());

			$row_Recordset_registrados2b = mysql_fetch_assoc($Recordset_registrados2b);

			$totalRows_Recordset_registrados2b = mysql_num_rows($Recordset_registrados2b);

			do {

				$menu_registrados2b[] = $row_Recordset_registrados2b['id_registered_user'];				

			} while ($row_Recordset_registrados2b = mysql_fetch_assoc($Recordset_registrados2b));

			

			$arreglo_usuarios_registrados2 = array_diff($menu_registrados2b, $menu_mensajes2b);

			

	}else{





			mysql_select_db($database_wa_coneccion, $wa_coneccion);

			$query_Recordset_mensajes2b = "SELECT id_events, id_registered_user FROM mensajes_enviados WHERE id_events ='".$row_Recordset_noticiasenviar2['id_events']."' order by id_registered_user ASC";

			$Recordset_mensajes2b = mysql_query($query_Recordset_mensajes2b, $wa_coneccion) or die(mysql_error());

			$row_Recordset_mensajes2b = mysql_fetch_assoc($Recordset_mensajes2b);

			$totalRows_Recordset_mensajes2b = mysql_num_rows($Recordset_mensajes2b);

			do {			

				$menu_mensajes2b[] = $row_Recordset_mensajes2b['id_registered_user'];				

			} while ($row_Recordset_mensajes2b = mysql_fetch_assoc($Recordset_mensajes2b));

			

			

			mysql_select_db($database_wa_coneccion, $wa_coneccion);

			$query_Recordset_registrados2b = "SELECT id_registered_user FROM registered_user order by id_registered_user ASC";

			$Recordset_registrados2b = mysql_query($query_Recordset_registrados2b, $wa_coneccion) or die(mysql_error());

			$row_Recordset_registrados2b = mysql_fetch_assoc($Recordset_registrados2b);

			$totalRows_Recordset_registrados2b = mysql_num_rows($Recordset_registrados2b);

			do {

				$menu_registrados2b[] = $row_Recordset_registrados2b['id_registered_user'];				

			} while ($row_Recordset_registrados2b = mysql_fetch_assoc($Recordset_registrados2b));

			

			$arreglo_usuarios_registrados2 = array_diff($menu_registrados2b, $menu_mensajes2b); 			

		

			

	}

	include("events_send_programado.php");



} while ($row_Recordset_noticiasenviar2 = mysql_fetch_assoc($Recordset_noticiasenviar2));







//eventos



mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset_noticiasenviar2 = "SELECT id_eventos FROM eventos";

$Recordset_noticiasenviar2 = mysql_query($query_Recordset_noticiasenviar2, $wa_coneccion) or die(mysql_error());

$row_Recordset_noticiasenviar2 = mysql_fetch_assoc($Recordset_noticiasenviar2);

$totalRows_Recordset_noticiasenviar2 = mysql_num_rows($Recordset_noticiasenviar2);

$cuentaemails2 = 0;

do {





mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset_mensajes2 = "SELECT id_eventos, id_registered_user FROM mensajes_enviados2 WHERE id_eventos ='".$row_Recordset_noticiasenviar2['id_eventos']."' order by id_registered_user ASC";

$Recordset_mensajes2 = mysql_query($query_Recordset_mensajes2, $wa_coneccion) or die(mysql_error());

$row_Recordset_mensajes2 = mysql_fetch_assoc($Recordset_mensajes2);

$totalRows_Recordset_mensajes2 = mysql_num_rows($Recordset_mensajes2);



unset( $menu_mensajes2b );

unset( $menu_registrados2b );

$menu_mensajes2b = array();

$menu_registrados2b = array();



	if($totalRows_Recordset_mensajes2==0){

	

			$menu_mensajes2b[] = 0;

			

			mysql_select_db($database_wa_coneccion, $wa_coneccion);

			$query_Recordset_registrados2b = "SELECT id_registered_user FROM registered_user2 order by id_registered_user ASC";

			$Recordset_registrados2b = mysql_query($query_Recordset_registrados2b, $wa_coneccion) or die(mysql_error());

			$row_Recordset_registrados2b = mysql_fetch_assoc($Recordset_registrados2b);

			$totalRows_Recordset_registrados2b = mysql_num_rows($Recordset_registrados2b);

			do {

				$menu_registrados2b[] = $row_Recordset_registrados2b['id_registered_user'];				

			} while ($row_Recordset_registrados2b = mysql_fetch_assoc($Recordset_registrados2b));

			

			$arreglo_usuarios_registrados2 = array_diff($menu_registrados2b, $menu_mensajes2b);

			

	}else{





			mysql_select_db($database_wa_coneccion, $wa_coneccion);

			$query_Recordset_mensajes2b = "SELECT id_eventos, id_registered_user FROM mensajes_enviados2 WHERE id_eventos ='".$row_Recordset_noticiasenviar2['id_eventos']."' order by id_registered_user ASC";

			$Recordset_mensajes2b = mysql_query($query_Recordset_mensajes2b, $wa_coneccion) or die(mysql_error());

			$row_Recordset_mensajes2b = mysql_fetch_assoc($Recordset_mensajes2b);

			$totalRows_Recordset_mensajes2b = mysql_num_rows($Recordset_mensajes2b);

			do {			

				$menu_mensajes2b[] = $row_Recordset_mensajes2b['id_registered_user'];				

			} while ($row_Recordset_mensajes2b = mysql_fetch_assoc($Recordset_mensajes2b));

			

			

			mysql_select_db($database_wa_coneccion, $wa_coneccion);

			$query_Recordset_registrados2b = "SELECT id_registered_user FROM registered_user2 order by id_registered_user ASC";

			$Recordset_registrados2b = mysql_query($query_Recordset_registrados2b, $wa_coneccion) or die(mysql_error());

			$row_Recordset_registrados2b = mysql_fetch_assoc($Recordset_registrados2b);

			$totalRows_Recordset_registrados2b = mysql_num_rows($Recordset_registrados2b);

			do {

				$menu_registrados2b[] = $row_Recordset_registrados2b['id_registered_user'];				

			} while ($row_Recordset_registrados2b = mysql_fetch_assoc($Recordset_registrados2b));

			

			$arreglo_usuarios_registrados2 = array_diff($menu_registrados2b, $menu_mensajes2b); 			

		

			

	}

	include("eventos_send_programado.php");



} while ($row_Recordset_noticiasenviar2 = mysql_fetch_assoc($Recordset_noticiasenviar2));





?>