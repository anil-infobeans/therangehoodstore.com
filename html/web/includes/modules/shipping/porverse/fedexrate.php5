<?php

class fedexrate{
 var $code, $title, $description, $icon, $enabled;

//Class Constructor
	function fedexrate()
	{
		global $order;
		 global $customer_id;
		 
		$this->code 			= "fedexrate";
		$this->title 			= MODULE_SHIPPING_FEDEX_TEXT_TITLE;
		$this->description		= MODULE_SHIPPING_FEDEX_TEXT_DESCRIPTION;
		$this->sort_order		= MODULE_SHIPPING_FEDEX_SORT_ORDER;
		 $this->icon = DIR_WS_ICONS . 'shipping_fedex.gif';
		//$this->icon				= '';
		$this->enabled			= ((MODULE_SHIPPING_FEDEX_STATUS == 'True') ? true : false);
		$this->fedex_key		= MODULE_SHIPPING_FEDEX_KEY;
		$this->fedex_pwd		= MODULE_SHIPPING_FEDEX_PWD;
		$this->fedex_act_num	= MODULE_SHIPPING_FEDEX_ACT_NUM;
		$this->fedex_meter_num	= MODULE_SHIPPING_FEDEX_METER_NUM;
		
}

//Class Methods

function quote($method = '')
{
	/* FedEx integration starts */
	 global $customer_id;
	 global $shipping_weight, $shipping_num_boxes, $cart, $order, $total_weight;
	 
	require_once(DIR_WS_INCLUDES.'library/fedex-common.php5');
	
	$path_to_wsdl = DIR_WS_INCLUDES."wsdl/RateService_v7.wsdl";
	
	$client = new SoapClient($path_to_wsdl, array('trace' => 1));
	
	//Fetching user details
	//Key
	$key = tep_db_query("SELECT configuration_value FROM ". TABLE_CONFIGURATION ." WHERE configuration_key = 'MODULE_SHIPPING_FEDEX_KEY'");
	$key_value = tep_db_fetch_array($key);
	
	$fedex_key = $key_value['configuration_value'];
	//Password
	$pwd = tep_db_query("SELECT configuration_value FROM ".TABLE_CONFIGURATION ." WHERE configuration_key = 'MODULE_SHIPPING_FEDEX_PWD'");
	$pwd_value = tep_db_fetch_array($pwd);
	
	$fedex_password = $pwd_value['configuration_value'];
	//Account Number
	$act_num = tep_db_query("SELECT configuration_value FROM ".TABLE_CONFIGURATION ." WHERE configuration_key = 'MODULE_SHIPPING_FEDEX_ACT_NUM'");
	$act_num_value = tep_db_fetch_array($act_num);
	$fedex_act_num = $act_num_value['configuration_value'];	
	//Meter Number
	$meter_num = tep_db_query("SELECT configuration_value FROM ".TABLE_CONFIGURATION ." WHERE configuration_key = 'MODULE_SHIPPING_FEDEX_METER_NUM'");
	$meter_num_value = tep_db_fetch_array($meter_num);
	$fedex_meter_num = $meter_num_value['configuration_value'];		
	
	//if ($customer_id) {
	 
	//customer  Details
//	$customers_query = tep_db_query("select customers_default_address_id from customers WHERE customers_id='" . (int)$customer_id . "'");
 //   $customers = tep_db_fetch_array($customers_query);
//	$customers_default_address_id=$customers['customers_default_address_id'];
	
//	 $address_query = tep_db_query("select entry_firstname as firstname, entry_lastname as lastname, entry_company as company, entry_street_address as street_address, entry_suburb as suburb, entry_city as city, entry_postcode as postcode, entry_state as state, entry_zone_id as zone_id, entry_country_id as country_id from " . TABLE_ADDRESS_BOOK . " where customers_id = '" . (int)$customer_id . "' and address_book_id = '" . (int)$customers_default_address_id . "'");
//		$address = tep_db_fetch_array($address_query);
		
	 //$street_address=$address['street_address'];
	 //$city=$address['city'];
	 //$state=$address['state'];
	 //$postcode=$address['postcode'];
	 //$country_id=$address['country_id'];
	 //$zone_id=$address['zone_id'];
	 
	$street_address = $order->delivery['street_address'];
	$city = $order->delivery['city'];	
	//$state = $order->delivery['state'];	
	$postcode = $order->delivery['postcode'];
	$country_id = $order->delivery['country_id'];	
	$zone_id = $order->delivery['zone_id'];	
	
	
	// if($state==""){
	 
		$address_format_query1 = tep_db_query("select zone_code from zones where zone_country_id = '" . (int)$country_id . "' AND zone_id='" . (int)$zone_id . "' ");
		$address_format1 = tep_db_fetch_array($address_format_query1);
	    $state=$address_format1['zone_code'];
	 //}
	 
	 $address_format_query = tep_db_query("select countries_iso_code_2 from " . TABLE_COUNTRIES . " where countries_id = '" . (int)$country_id . "'");
		if (tep_db_num_rows($address_format_query)) {
		  $address_format = tep_db_fetch_array($address_format_query);
		  $CountryCode= $address_format['countries_iso_code_2'];
		 
		 }
	//}
	
$request['WebAuthenticationDetail'] = array('UserCredential' =>
                                      array('Key' => $fedex_key, 'Password' => $fedex_password)); // Replace 'XXX' and 'YYY' with FedEx provided credentials 
$request['ClientDetail'] = array('AccountNumber' => $fedex_act_num, 'MeterNumber' => $fedex_meter_num);// Replace 'XXX' with your account and meter number
$request['TransactionDetail'] = array('CustomerTransactionId' => ' *** Rate Available Services Request v7 using PHP ***');
$request['Version'] = array('ServiceId' => 'crs', 'Major' => '7', 'Intermediate' => '0', 'Minor' => '0');
$request['RequestedShipment']['DropoffType'] = 'REGULAR_PICKUP'; // valid values REGULAR_PICKUP, REQUEST_COURIER, ...
$request['RequestedShipment']['ShipTimestamp'] = date('c');
// Service Type and Packaging Type are not passed in the request
$request['RequestedShipment']['Shipper'] = array('Address' => array(
                                          'StreetLines' => array('308 Mozart Ave E'), // Origin details
                                          'City' => 'Mankato',
                                          'StateOrProvinceCode' => 'MN',
                                          'PostalCode' => '56001',
                                          'CountryCode' => 'US'));
										  
										  
$request['RequestedShipment']['Recipient'] = array('Address' => array (
                                               'StreetLines' => array($street_address), // Destination details
                                               'City' => $city,
                                               'StateOrProvinceCode' => $state,
                                               'PostalCode' => $postcode,
                                               'CountryCode' => $CountryCode));
											   
$request['RequestedShipment']['ShippingChargesPayment'] = array('PaymentType' => 'SENDER',
                                                        'Payor' => array('AccountNumber' => $fedex_act_num, // Replace 'XXX' with payor's account number
                                                                     'CountryCode' => 'US'));
$request['RequestedShipment']['RateRequestTypes'] = 'ACCOUNT'; 
$request['RequestedShipment']['RateRequestTypes'] = 'LIST'; 
$request['RequestedShipment']['PackageCount'] = '1';
$request['RequestedShipment']['PackageDetail'] = 'INDIVIDUAL_PACKAGES';

																																										
$products = $cart->get_products();
$n=sizeof($products);
//echo $n=sizeof($products).'&nbsp;';

for ($i = 0; $i <= $n-1; $i++) {

//echo $order->products[$i]['final_price'].'&nbsp;';
//echo $order->products[$i]['qty'].'&nbsp;';
//echo $order->products[$i]['weight'].'&nbsp;';
//echo tep_get_prid($order->products[$i]['id']);

        $product_dimensional_query = tep_db_query("select products_id, products_length, products_width, products_depth from " . TABLE_PRODUCTS . " where products_id = '" . tep_get_prid($order->products[$i]['id']) . "'");
        $product_dimensional = tep_db_fetch_array($product_dimensional_query);

//echo $product_dimensional['products_length'];
//echo $product_dimensional['products_width'];
//echo $product_dimensional['products_depth'];

$request['RequestedShipment']['RequestedPackageLineItems'][$i] = array('InsuredValue' => array('Amount' => $order->products[$i]['final_price']*$order->products[$i]['qty'],
                                                                                    	'Currency' => 'USD'),
																				'Weight' => array('Value' => $order->products[$i]['weight']*$order->products[$i]['qty'],
                                                                                    	'Units' => 'LB'),
                                                                                'Dimensions' => array('Length' => $product_dimensional['products_length'],
                                                                                        'Width' => $product_dimensional['products_width'],
                                                                                        'Height' => $product_dimensional['products_depth'],
                                                                                        'Units' => 'IN'));
																						
}


																						 
try 
{
		$response = $client ->getRates($request);
        
		if ($response -> HighestSeverity != 'FAILURE' && $response -> HighestSeverity != 'ERROR')
		{
			//echo 'Rates for following service type(s) were returned.'. $newline. $newline; 
			
			foreach ($response -> RateReplyDetails as $rateReply)
			{           
			   $products_price;
			   $title="";
			   /* FedEx integration ends */
				  global $order;
				  if($rateReply -> ServiceType=='FIRST_OVERNIGHT'){
				    $title= "First OverNight";
					$title2= "firstovernight";
				  }else if($rateReply -> ServiceType=='PRIORITY_OVERNIGHT'){
				    $title= "Priority OverNight";
					$title2= "priorityovernight";
				  }else if($rateReply -> ServiceType=='STANDARD_OVERNIGHT'){
				    $title= "Standard OverNight";
				    $title2= "standardovernight";					
				  }else if($rateReply -> ServiceType=='FEDEX_2_DAY'){
				    $title= "2nd Day";
				    $title2= "2ndday";
				  }else if($rateReply -> ServiceType=='FEDEX_EXPRESS_SAVER'){
				    $title= "Express Saver";
				    $title2= "expresssaver";
				  }else if($rateReply -> ServiceType=='FEDEX_GROUND'){
				    $title= "Ground";
				    $title2= "ground";
				  }
				  
				  
				  $methods[]=array('id' => $title2,
								  'title' =>$title,
								  'cost' => $rateReply->RatedShipmentDetails[0]->ShipmentRateDetail->TotalNetCharge->Amount);
			
			   
				  
			}
			
			//for ($ik = 0; $ik <= 5; $ik++) {
			
			$this->quotes=array('id' => $this->code,
										'module' => MODULE_SHIPPING_FEDEX_TEXT_TITLE,
										'methods' =>$methods); 
				//print_r($this->quotes);	
				
									
				//}						
				
		
				return $this->quotes;				
			
			//printRequestResponse($client);
			
		}
		else
		{
			echo 'Error in processing transaction.'. $newline. $newline; 
			foreach ($response -> Notifications as $notification)
			{           
				if(is_array($response -> Notifications))
				{              
				   echo $notification -> Severity;
				   echo ': ';           
				   echo $notification -> Message . $newline;
				}
				else
				{
					echo $notification . $newline;
				}
			} 
		} 
    
		
		writeToLog($client);    // Write to log file   
	
	} catch (SoapFault $exception) {
	   printFault($exception, $client);        
	}									/**/															 
	
	
}

function check()
{
	if(!isset($this->_check))
	{
		$check_query  = tep_db_query("SELECT configuration_value FROM ". TABLE_CONFIGURATION ." WHERE configuration_key = 'MODULE_SHIPPING_FEDEX_STATUS'");
		$this->_check = tep_db_num_rows($check_query);
	}
	return $this->_check;
}

function install()
{
	tep_db_query("INSERT INTO ". TABLE_CONFIGURATION ." (configuration_title,configuration_key,configuration_value,configuration_description,configuration_group_id,
	sort_order,set_function,date_added) VALUES ('Enable FedEx Shipping','MODULE_SHIPPING_FEDEX_STATUS','True','Dou you want to offer FedEx shipping?','6','0',
	'tep_cfg_select_option(array(\'True\',\'False\'),',now())");
	
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, 
	  sort_order, date_added) values ('FedEx Key', 'MODULE_SHIPPING_FEDEX_KEY', '0', 'Enter FedEx Key', '6', '0', now())");
	  
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, 
	  sort_order, date_added) values ('FedEx Password', 'MODULE_SHIPPING_FEDEX_PWD', '0', 'Enter FedEx Password', '6', '0', now())");	  
	  
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, 
	  sort_order, date_added) values ('FedEx Account Number', 'MODULE_SHIPPING_FEDEX_ACT_NUM', '0', 'Enter FedEx Account Number', '6', '0', now())");
	  
	  	tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, 
	  sort_order, date_added) values ('FedEx Meter Number', 'MODULE_SHIPPING_FEDEX_METER_NUM', '0', 'Enter FedEx Meter Number', '6', '0', now())");  
	  
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, 
	  sort_order, date_added) values ('Sort Order', 'MODULE_SHIPPING_FEDEX_SORT_ORDER', '0', 'Sort order of display.', '6', '0', now())");	  
	
}

function remove()
{
	tep_db_query("DELETE FROM ". TABLE_CONFIGURATION ." WHERE configuration_key in ('". implode("','",$this->keys()). "')");
}

function keys()
{
	return array('MODULE_SHIPPING_FEDEX_STATUS','MODULE_SHIPPING_FEDEX_KEY','MODULE_SHIPPING_FEDEX_PWD','MODULE_SHIPPING_FEDEX_ACT_NUM','MODULE_SHIPPING_FEDEX_METER_NUM',
	'MODULE_SHIPPING_FEDEX_SORT_ORDER');
}

}
?>