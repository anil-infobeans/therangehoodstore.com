<?php
/*
  $Id: ot_giftcertificates.php,v 1.15 2007/07/30$

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce

  Released under the GNU General Public License
*/

  class ot_giftcertificates {
    var $title, $output;

    function ot_giftcertificates() {
      $this->code = 'ot_giftcertificates';
      $this->title = MODULE_ORDER_TOTAL_GIFT_CERTIFICATES_TITLE;
      $this->description = MODULE_ORDER_TOTAL_GIFT_CERTIFICATES_DESCRIPTION;
      $this->enabled = ((MODULE_ORDER_TOTAL_GIFT_CERTIFICATES_STATUS == 'true') ? true : false);
      $this->sort_order = MODULE_ORDER_TOTAL_GIFT_CERTIFICATES_SORT_ORDER;

      $this->output = array();
    }

    function process() {
      global $order, $currencies, $gc, $gc_code, $gc_redeemed, $gc_prod, $gc_price;
//print_r($order);
error_log('X1 gc=' . $gc . ' order->info[total]= ' . $order->info['total'] . ' gc_redeemed= ' . $gc_redeemed . ' gc_code= ' . $gc_code);
/*	if($gc > $order->info['total']){
		error_log('got here!');
		$gc=$order->info['total'];
	}
	$order->info['total']=$order->info['total']-$gc;
error_log('X2 gc_code=' . $gc_code . ' - gc=' . $gc . ' order->info[total]= ' . $order->info['total']);
	$order->info['gc']=$gc;*/
      if (tep_not_null($gc_code)) {
	
        $this->output[] = array('title' => GC_TOTAL . ':',
                                'text' => $currencies->format($gc, true, $order->info['currency'], $order->info['currency_value']),
                                'value' => $gc);
      }
    }


    function check() {
      if (!isset($this->_check)) {
        $check_query = tep_db_query("select configuration_value from " . TABLE_CONFIGURATION . " where configuration_key = 'MODULE_ORDER_TOTAL_GIFT_CERTIFICATES_STATUS'");
        $this->_check = tep_db_num_rows($check_query);
      }

      return $this->_check;
    }

    function keys() {
      return array('MODULE_ORDER_TOTAL_GIFT_CERTIFICATES_STATUS', 'MODULE_ORDER_TOTAL_GIFT_CERTIFICATES_SORT_ORDER');
    }

    function install() {
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, set_function, date_added) values ('Display Gift Certificates', 'MODULE_ORDER_TOTAL_GIFT_CERTIFICATES_STATUS', 'true', 'Do you want to display gift certificates?', '6', '1','tep_cfg_select_option(array(\'true\', \'false\'), ', now())");
      tep_db_query("insert into " . TABLE_CONFIGURATION . " (configuration_title, configuration_key, configuration_value, configuration_description, configuration_group_id, sort_order, date_added) values ('Sort Order', 'MODULE_ORDER_TOTAL_GIFT_CERTIFICATES_SORT_ORDER', '2', 'Sort order of display.', '6', '2', now())");
    }

    function remove() {
      tep_db_query("delete from " . TABLE_CONFIGURATION . " where configuration_key in ('" . implode("', '", $this->keys()) . "')");
    }
  }
?>
