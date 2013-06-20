<?php  



function actual_date ($mesget){

global $language;



	if( $lang == "english") {

	

			return $mesget;

		

	} else {

	

			$date_array = explode(" ",$mesget);

			$date_array[0];

			$months_0 = array ("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");

			$months_1 = array ("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");

		

			for($inicia_months=0; $inicia_months<= count($months_0)-1;$inicia_months++){		

				if (!strcasecmp ($date_array[0], $months_0[$inicia_months])) {

					$date_cambiado = $months_1[$inicia_months];

				}

			}

						

			for($inicia_date=1; $inicia_date<= count($date_array)-1;$inicia_date++){

			$resultado_date .= $date_array[$inicia_date]." ";

			}

		

			return $date_cambiado." ".$resultado_date; 

		

		}

		

}





?>