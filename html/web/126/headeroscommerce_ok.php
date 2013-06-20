<script type="text/javascript" src="126/jqueryslidemenu.js"></script>



<?php require_once('Connections/wa_coneccion.php'); ?>

<?php

if (!function_exists("GetSQLValueString")) {

function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 

{

  $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;



  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);



  switch ($theType) {

    case "text":

      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";

      break;    

    case "long":

    case "int":

      $theValue = ($theValue != "") ? intval($theValue) : "NULL";

      break;

    case "double":

      $theValue = ($theValue != "") ? "'" . doubleval($theValue) . "'" : "NULL";

      break;

    case "date":

      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";

      break;

    case "defined":

      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;

      break;

  }

  return $theValue;

}

}



mysql_select_db($database_wa_coneccion, $wa_coneccion);

$query_Recordset1000 = "SELECT p.categories_id, p.parent_id, t.categories_name FROM categories p, categories_description t where t.categories_id = p.categories_id ";

$Recordset1000 = mysql_query($query_Recordset1000, $wa_coneccion) or die(mysql_error());

$row_Recordset1000 = mysql_fetch_assoc($Recordset1000);

$totalRows_Recordset1000 = mysql_num_rows($Recordset1000);

?>



    <?php 

	    

		

		$menu = array();

		for ($i = 0; $i <= $totalRows_Recordset1000-1; $i++) {

			

		 $menu[ mysql_result ($Recordset1000, $i, "categories_id")] = array ('text'		=> 	mysql_result ($Recordset1000, $i, "categories_name"),

					      	   								   				  'class'		=> 	'',

					     	  								   				  'link'		=> 	'',

					    									  				  'show_condition'=>	TRUE,

					  	     								  				  'parent'		=>	mysql_result ($Recordset1000, $i, "parent_id"),

																			);



}

$ultimorecord = mysql_result ($Recordset1000, $totalRows_Recordset1000-1, "categories_id");

 //print_r($menu);

//echo $pId;		

//print_r($menu[2]);

//echo count($menu);



?>

<?php

	function build_menu ( $menu )

	{

		global $ultimorecord;

		$out = '<div id="myslidemenu" class="jqueryslidemenu">' . "\n";

		$out .= "\n".'<ul >' . "\n";

		$out .= "\n".'<li><a href="products_new.php">WHAT’S NEW' . "\n";

		$out .= "\n".'</a></li>' . "\n";

		

		for ( $i = 1; $i <= $ultimorecord; $i++ )

		{

			if ( is_array ( $menu [ $i ] ) ) {//must be by construction but let's keep the errors home

				if ( $menu [ $i ] [ 'show_condition' ] && $menu [ $i ] [ 'parent' ] == 0 ) {//are we allowed to see this menu?

				    $t=0;

					$out .= '<li ><a href="index.php?cPath=' . $i . '">';

					$out .= $menu [ $i ] [ 'text' ];

					$out .= '</a>';

					$out .= get_childs ( $menu, $i, $t );

					$out .= '</li>' . "\n";

				}

			}

		}



		$out .= "\n".'<li><a href="specials.php">SALES' . "\n";

		$out .= "\n".'</a></li>' . "\n";		

		$out .= '</ul>'."\n";

		$out .= "\n\t" . '';

		return $out . "\n\t" . '</div>';

	}

	

	function get_childs ( $menu, $el_id, $t)

	{

		global $ultimorecord;

		$has_subcats = FALSE;

		$out = '';

		$out .= "\n".'	<ul>' . "\n";

		

		if ($menu [ $el_id ] [ 'parent' ] == 0 ){

		$t=$el_id;

		}



		for ( $i = 1; $i <= $ultimorecord; $i++ )

		{

			if ( $menu [ $i ] [ 'parent' ] == $el_id ) {//are we allowed to see this menu?

			

				$has_subcats = TRUE;

				$add_class = ( get_childs ( $menu, $i, $t ) != FALSE ) ? ' subsubl' : '';

				if ($el_id == $t) {

				$out .= '<li class="' . $add_class . '"><a href="index.php?cPath=' . $el_id.'_'.$i . '">';

				}

				else {

				$out .= '<li class="' . $add_class . '"><a href="index.php?cPath=' . $t.'_'.$el_id.'_'.$i . '">';

				}

				$out .= $menu [ $i ] [ 'text' ];

				$out .= '</a>';

				$out .= get_childs ( $menu, $i, $t);

				$out .= '</li>' . "\n";

				

			}

		}

		$out .= '	</ul>'."\n";

		return ( $has_subcats ) ? $out : FALSE;

		

		}





?>

<link href="126/jqueryslidemenu.css" rel="stylesheet" type="text/css" />

<!--[if lte IE 6]> 

<link rel="StyleSheet" type="text/css" href="ie6only.css" />

<![endif]-->

<!--[if lt IE 7.]>

<script defer type="text/javascript" src="pngfix.js"></script>

<![endif]-->





<div style=" width: <?php echo BOX_TOTAL; ?>px;"> 



		<?= build_menu ( $menu ) ?>

 

</div>



