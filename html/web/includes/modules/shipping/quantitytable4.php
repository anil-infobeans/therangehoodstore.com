<?php
/*
$Id: table.php 3 2006-05-27 04:59:07Z user $

  osCMax Power E-Commerce
  http://oscdox.com

  Copyright 2006 osCMax

  Released under the GNU General Public License
*/

  class quantitytable4 {
    var $code, $title, $description, $icon, $enabled;

// class constructor
    function quantitytable4() {
      global $order;

      $this->code = 'quantitytable4';
      $this->title = MODULE_SHIPPING_QUANTITY_TABLE_TEXT_TITLE_4;
      $this->description = MODULE_SHIPPING_QUANTITY_TABLE_TEXT_DESCRIPTION_4;
      $this->sort_order = MODULE_SHIPPING_QUANTITY_TABLE_SORT_ORDER_4;
      $this->icon = '';
      $this->tax_class = MODULE_SHIPPING_QUANTITY_TABLE_TAX_CLASS_4;
      $this->enabled = ((MODULE_SHIPPING_QUANTITY_TABLE_STATUS_4 == 'True') ? true : false);

      if ( ($this->enabled == true) && ((int)MODULE_SHIPPING_QUANTITY_TABLE_ZONE_4 > 0) ) {
        $check_flag = false;
        $check_query = tep_db_query("select zone_id from " . TABLE_ZONES_TO_GEO_ZONES . " where geo_zone_id = '" . MODULE_SHIPPING_QUANTITY_TABLE_ZONE_4 . "' and zone_country_id = '" . $order->delivery['country']['id'] . "' order by zone_id");
        while ($check = tep_db_fetch_array($check_query)) {
          if ($check['zone_id'] < 1) {
            $check_flag = true;
            break;
          } elseif ($check['zone_id'] == $order->delivery['zone_id']) {
            $check_flag = true;
            break;
          }
        }

        if ($check_flag == false) {
          $this->enabled = false;
        }
      }
    }

// class methods
    function quote($method = '') {
      global $order, $cart, $shipping_weight, $shipping_num_boxes;
	  
	  switch (MODULE_SHIPPING_QUANTITY_TABLE_MODE_4) {
	  case 'price':
	  	$order_total = $cart->show_total();
	  break;
	  case 'quantity':
		// checks for products returns settings
		$products = $cart->get_products();
		$qty_cnt = 0;
			for ($i=0, $n=sizeof($products); $i<$n; $i++) {
			$qty_cnt = $qty_cnt + $products[$i]['quantity'];
			}
		$order_total = $qty_cnt;
	 	break;
	  default:
	  	$order_total = $shipping_weight;
	  }	  

      $table_cost = split("[:,]" , MODULE_SHIPPING_QUANTITY_TABLE_COST_4);
      $size = sizeof($table_cost);
      for ($i=0, $n=$size; $i<$n; $i+=2) {
        if ($order_total <= $table_cost[$i]) {
          $shipping = ($table_cost[1])*1 + ($table_cost[$i+1])*($order_total-1);
          break;
        }
      }

      if (MODULE_SHIPPING_QUANTITY_TABLE_MODE_4 == 'weight') {
        $shipping = $shipping * $shipping_num_boxes;
      }
	  
	  

      $this->quotes = array('id' => $this->code,
                            'module' => MODULE_SHIPPING_QUANTITY_TABLE_TEXT_TITLE_4,
                            'methods' => array(array('id' => $this->code,
                                                     'title' => MODULE_SHIPPING_QUANTITY_TABLE_TEXT_WAY_4,
                                                     'cost' => $shipping + MODULE_SHIPPING_QUANTITY_TABLE_HANDLING_4)));

      if ($this->tax_class > 0) {
        $this->quotes['tax'] = tep_get_tax_rate($this->tax_class, $order->delivery['country']['id'], $order->delivery['zone_id']);
      }

      if (tep_not_null($this->icon)) $this->quotes['icon'] = tep_image($this->icon, $this->title);

      return $this->quotes;
    }

    function check() {
      if (!isset($this->_check)) {
        $check_query = tep_db_query("select configuration_value from " . TABLE_CONFIGURATION . " where configuration_key = 'MODULE_SHIPPING_QUANTITY_TABLE_STATUS_4'");
        $this->_check = tep_db_num_rows($check_query);
      }
      return $this->_check;
    }

    function install() {
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, set_function, date_added) VALUES ('Enable Table Method', 'MODULE_SHIPPING_QUANTITY_TABLE_STATUS_4', 'True', 'Do you want to offer table rate shipping?', '6', '0', 'tep_cfg_select_option(array(\'True\', \'False\'), ', now())");
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) values ('Shipping Table', 'MODULE_SHIPPING_QUANTITY_TABLE_COST_4', '25:8.50,50:5.50,10000:0.00', 'The shipping cost is based on the total cost or weight of items. Example: 25:8.50,50:5.50,etc.. Up to 25 charge 8.50, from there to 50 charge 5.50, etc', '6', '0', now())");
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, set_function, date_added) values ('Table Method', 'MODULE_SHIPPING_QUANTITY_TABLE_MODE_4', 'weight', 'The shipping cost is based on the order total or the total weight of the items ordered.', '6', '0', 'tep_cfg_select_option(array(\'weight\', \'price\',\'quantity\'), ', now())");
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) values ('Handling Fee', 'MODULE_SHIPPING_QUANTITY_TABLE_HANDLING_4', '0', 'Handling fee for this shipping method.', '6', '0', now())");
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, use_function, set_function, date_added) values ('Tax Class', 'MODULE_SHIPPING_QUANTITY_TABLE_TAX_CLASS_4', '0', 'Use the following tax class on the shipping fee.', '6', '0', 'tep_get_tax_class_title', 'tep_cfg_pull_down_tax_classes(', now())");
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, use_function, set_function, date_added) values ('Shipping Zone', 'MODULE_SHIPPING_QUANTITY_TABLE_ZONE_4', '0', 'If a zone is selected, only enable this shipping method for that zone.', '6', '0', 'tep_get_zone_class_title', 'tep_cfg_pull_down_zone_classes(', now())");
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) values ('Sort Order', 'MODULE_SHIPPING_QUANTITY_TABLE_SORT_ORDER_4', '0', 'Sort order of display.', '6', '0', now())");
    }

    function remove() {
      tep_db_query("delete from " . TABLE_CONFIGURATION . " where configuration_key in ('" . implode("', '", $this->keys()) . "')");
    }

    function keys() {
      return array('MODULE_SHIPPING_QUANTITY_TABLE_STATUS_4', 'MODULE_SHIPPING_QUANTITY_TABLE_COST_4', 'MODULE_SHIPPING_QUANTITY_TABLE_MODE_4', 'MODULE_SHIPPING_QUANTITY_TABLE_HANDLING_4', 'MODULE_SHIPPING_QUANTITY_TABLE_TAX_CLASS_4', 'MODULE_SHIPPING_QUANTITY_TABLE_ZONE_4', 'MODULE_SHIPPING_QUANTITY_TABLE_SORT_ORDER_4');
    }
  }
?>
