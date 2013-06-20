<script type="text/javascript" src="126/jqueryslidemenu.js"></script>

<link href='http://fonts.googleapis.com/css?family=Roboto:400,100' rel='stylesheet' type='text/css'>

<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>



<?php

/*

font-family: 'Roboto', sans-serif;

font-family: 'Roboto Condensed', sans-serif;

*/

?>



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



?>



<?php



	/* CLEAN URLS */

	function cleanURL($file_name){

      $find    = array( "á", "é", "í", "ó", "ú"," ", "ñ", "Á", "É", "Í", "Ó", "Ú","Ñ" );

      $replace = array( "a", "e", "i", "o", "u","-", "n", "a", "e", "i", "o", "u","n" );

	  $cadena = str_replace($find, $replace, $file_name);

	  $cadena = strtolower(trim(preg_replace('/[^a-zA-Z0-9]+/','-',$cadena),'-'));



      return $cadena;



    }	

	

	require DIR_WS_CLASSES . 'category_tree_menu.php';

    $osC_CategoryTree_menu = new osC_CategoryTree_menu;



	/* pages */

	function getSqlPagesByParentId($parentId=0){

		global $languages_id;

		$sql = "

   		select pd.pages_title, pd.pages_body, p.pages_id, p.pages_name, p.pages_image, p.pages_status, p.sort_order 

		from " . TABLE_PAGES . " p, 

			" . TABLE_PAGES_DESCRIPTION . " pd 

		where 

			p.pages_id = pd.pages_id 

			and p.pages_status = '1' 

			and p.parent_id = '".(int)$parentId."' 

			and p.m1 = '1'

			and pd.language_id = '" . (int)$languages_id . "' 		

			order by p.sort_order asc";

		//echo $sql;

		return $sql;

	}

	

	$page_query = tep_db_query(getSqlPagesByParentId());

	

	$i=0;

	$page_menu_text .= '';	

	while($page = tep_db_fetch_array($page_query)){

		$subpage_query = tep_db_query(getSqlPagesByParentId($page["pages_id"]));

		

		if($page["pages_id"]!=3):

			$subpage_menu_text = '';

			if(tep_db_num_rows($subpage_query)>0):			

				$subpage_menu_text .= '<ul>';

				

				while($subpage = tep_db_fetch_array($subpage_query)){

					$subpage_menu_text .= '

							<li>

								<a href="'.tep_href_link(FILENAME_PAGES, 'pages_id='.$subpage["pages_id"]).'">

									'.tep_image(DIR_WS_IMAGES.$subpage["pages_image"],'', 150, 103, 'style="border:1px solid #DEDEE2"').' ' . $subpage["pages_title"] . '

								</a>

							</li>';

				}

				$subpage_menu_text .= '</ul>';

				

			else:

				$subpage_menu_text = '';

			endif;

		else:

			$subpage_menu_text = '';

			if(tep_db_num_rows($subpage_query)>0):	

				$subpage_menu_text .= '<div class="intdiv">';	

				$subpage_menu_text .= '<div class="boxmenu">';

				

				while($subpage = tep_db_fetch_array($subpage_query)){

					$subpage_menu_text .= '

							<div>

								<a href="'.tep_href_link(FILENAME_PAGES, 'pages_id='.$subpage["pages_id"]).'">

									'.tep_image(DIR_WS_IMAGES.$subpage["pages_image"],'', 120, 81.99, '').' <span>'.$subpage["pages_title"].'</span>

								</a>

							</div>';

				}

				$subpage_menu_text .= '</div>';

				$subpage_menu_text .= '</div>';				

			else:

				$subpage_menu_text = '';

			endif;

		endif;

		

		

		if($i==1):

			$page_menu_text .= '

				<li>

					<a href="javascript:void(0);">PRODUCTS</a>					

					<ul>

						'.$osC_CategoryTree_menu->buildTree().'

					</ul>

				</li>';

		endif;

		

		if($page["pages_id"]==2){

			$page_menu_text .= '

				<li><a href="'.FILENAME_CONTACT_US.'">'.mb_strtoupper($page["pages_title"],'UTF-8').'</a>'.$subpage_menu_text.'</li>';

				

		}elseif($page["pages_id"]==3){

			$page_menu_text .= '

				<li class="intdiv" style="position:inherit;"><a href="javascript:void(0);">'.mb_strtoupper($page["pages_title"],'UTF-8').'</a>'.$subpage_menu_text.'</li>';

				

		}else{			

			$page_menu_text .= '

				<li>

				<a href="'.tep_href_link(FILENAME_PAGES,'pages_id='.$page["pages_id"]).'">

					'.mb_strtoupper($page["pages_title"],'UTF-8').'

				</a>'.$subpage_menu_text.'

				</li>';		

		}		

		$i++;

	}

?>

<style>

div.intdiv{ background: url(images/navinternaldiv-no.gif) repeat-x #EFEFEF; 

padding:10px; position: absolute; left:0; width:100%; border:#000 0px solid; display:none;}



div.intdiv .boxmenu div{

	float:left;

	width:120px;

	padding:10px;

}



div.intdiv .boxmenu span{ font-family: 'Roboto',sans-serif; font-size:12px; color:#FFF;}

</style>

<script>

	$(document).ready(function(){

		$("li.intdiv").hover(function(){ 

			var div = $(this).find('div.intdiv');

			$(div).slideToggle('fast');

		});

	});

</script>



<link href="126/jqueryslidemenu.css" rel="stylesheet" type="text/css" />

<!--[if lte IE 6]> 

<link rel="StyleSheet" type="text/css" href="ie6only.css" />

<![endif]-->

<!--[if lt IE 7.]>

<script defer type="text/javascript" src="pngfix.js"></script>

<![endif]-->





<div style=" width: <?php echo BOX_TOTAL; ?>px;"> 

 

    <div id="myslidemenu" class="jqueryslidemenu">

    

        <ul style="width:1015px; height:42px; position:inherit;" >

        	<?php echo $page_menu_text;?>

        	<?php /*?><li><a href="http://localhost/smartcollar/home.php">COMPANY</a>

            	<ul>

                	<li>

                        <a href="http://localhost/smartcollar/story-pm-6.html">Story</a>

                    </li>

                    <li>

                        <a href="http://localhost/smartcollar/technology-pm-7.html">Technology</a>

                    </li>

                </ul>

            </li>				

            <li>

                <a href="products-w-481.html" style="padding-right: 14px;">PRODUCTS<img style="border:0;" class="downarrowclass" src="126/down.gif"></a>

                <ul>

                    

                <li>

                    <a href="http://localhost/smartcollar/cat-collar-p-2.html">Cat Collar</a>

                </li>

                <li>

                    <a href="http://localhost/smartcollar/dog-collar-p-1.html">Dog Collar</a>

                </li>

                </ul>

            </li>

            <li><a href="retailers.php">SOLUTIONS</a></li>

            <li><a href="http://localhost/smartcollar/pet-resources-pm-4.html">SUPPORT</a></li>

            <li><a href="http://localhost/smartcollar/testimonials-pm-5.html">CONTACT</a></li><?php */?>

        <?php

            /*require DIR_WS_CLASSES . 'category_tree_menu.php';

            $osC_CategoryTree_menu = new osC_CategoryTree_menu;

            echo $osC_CategoryTree_menu->buildTree();*/

        ?>

        

        </ul>

    

    </div> 

    

</div>