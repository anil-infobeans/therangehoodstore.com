<?php
/*
  $Id: shopping_cart.php,v 1.35 2003/06/25 21:14:33 hpdl Exp $

  osCommerce, Open Source E-Commerce Solutions
  http://www.oscommerce.com

  Copyright (c) 2003 osCommerce

  Released under the GNU General Public License
*/

  class shoppingCart {
    var $contents, $total, $weight, $cartID, $content_type;

    function shoppingCart() {
      $this->reset();
    }

    function restore_contents() {
// ############Added CCGV Contribution ##########
      global $customer_id, $gv_id, $REMOTE_ADDR;
//      global $customer_id;
// ############ End Added CCGV Contribution ##########

      if (!tep_session_is_registered('customer_id')) return false;

// insert current cart contents in database
      if (is_array($this->contents)) {
        reset($this->contents);
        while (list($products_id, ) = each($this->contents)) {
          $qty = $this->contents[$products_id]['qty'];
          $product_query = tep_db_query("select products_id from " . TABLE_CUSTOMERS_BASKET . " where customers_id = '" . (int)$customer_id . "' and products_id = '" . tep_db_input($products_id) . "'");
          if (!tep_db_num_rows($product_query)) {
            tep_db_query("insert into " . TABLE_CUSTOMERS_BASKET . " (customers_id, products_id, customers_basket_quantity, customers_basket_date_added) values ('" . (int)$customer_id . "', '" . tep_db_input($products_id) . "', '" . $qty . "', '" . date('Ymd') . "')");
            if (isset($this->contents[$products_id]['attributes'])) {
              reset($this->contents[$products_id]['attributes']);
              while (list($option, $value) = each($this->contents[$products_id]['attributes'])) {
// BOF Product Type Option
                //tep_db_query("insert into " . TABLE_CUSTOMERS_BASKET_ATTRIBUTES . " (customers_id, products_id, products_options_id, products_options_value_id) values ('" . $customer_id . "', '" . $products_id . "', '" . $option . "', '" . $value . "')");
                $attr_value = $this->contents[$products_id]['attributes_values'][$option];
                $query_raw = "insert into " . TABLE_CUSTOMERS_BASKET_ATTRIBUTES . " (customers_id, products_id, products_options_id, products_options_value_id, products_options_value_text) values ('" . (int)$customer_id . "', '" . tep_db_input($products_id) . "', '" . (int)$option . "', '" . (int)$value . "', '" . tep_db_input($attr_value) . "')";
                tep_db_query($query_raw);
// EOF Product Type Option
              }
            }
          } else {
            tep_db_query("update " . TABLE_CUSTOMERS_BASKET . " set customers_basket_quantity = '" . $qty . "' where customers_id = '" . (int)$customer_id . "' and products_id = '" . tep_db_input($products_id) . "'");
          }
        }
		
		
		// ############ Added CCGV Contribution ##########
        if (tep_session_is_registered('gv_id')) {
          $gv_query = tep_db_query("insert into  " . TABLE_COUPON_REDEEM_TRACK . " (coupon_id, customer_id, redeem_date, redeem_ip) values ('" . $gv_id . "', '" . (int)$customer_id . "', now(),'" . $REMOTE_ADDR . "')");
          $gv_update = tep_db_query("update " . TABLE_COUPONS . " set coupon_active = 'N' where coupon_id = '" . $gv_id . "'");
          tep_gv_account_update($customer_id, $gv_id);
          tep_session_unregister('gv_id');
        }
// ############ End Added CCGV Contribution ##########


      }

// reset per-session cart contents, but not the database contents
      $this->reset(false);

	  $products_query = tep_db_query("select products_id, customers_basket_quantity from " . TABLE_CUSTOMERS_BASKET . " where customers_id = '" . (int)$customer_id . "' order by customers_basket_id ASC");
	  
      while ($products = tep_db_fetch_array($products_query)) {
        $this->contents[$products['products_id']] = array('qty' => $products['customers_basket_quantity']);
// attributes
// BOF Product Type Option
        //$attributes_query = tep_db_query("select products_options_id, products_options_value_id from " . TABLE_CUSTOMERS_BASKET_ATTRIBUTES . " where customers_id = '" . $customer_id . "' and products_id = '" . $products['products_id'] . "'");
        $attributes_query_raw = "select products_options_id, " . 
          "products_options_value_id, products_options_value_text from " . 
          TABLE_CUSTOMERS_BASKET_ATTRIBUTES . " where customers_id = '" . 
          (int)$customer_id . "' and products_id = '" . 
		  tep_db_input($products['products_id']) . "' order by customers_basket_attributes_id ASC";
        $attributes_query = tep_db_query($attributes_query_raw);        

          while ($attributes = tep_db_fetch_array($attributes_query)) {
          $this->contents[$products['products_id']]['attributes'][$attributes['products_options_id']] = $attributes['products_options_value_id'];
		  
		  if ($attributes['products_options_value_id'] == PRODUCTS_OPTIONS_VALUE_TEXT_ID) {
            $this->contents[$products['products_id']]['attributes_values'][$attributes['products_options_id']] = $attributes['products_options_value_text'];
          }      
// EOF Product Type Option
        }
      }

      $this->cleanup();
    }

    function reset($reset_database = false) {
      global $customer_id;

      $this->contents = array();
      $this->total = 0;
      $this->weight = 0;
      $this->content_type = false;

      if (tep_session_is_registered('customer_id') && ($reset_database == true)) {
        tep_db_query("delete from " . TABLE_CUSTOMERS_BASKET . " where customers_id = '" . (int)$customer_id . "'");
        tep_db_query("delete from " . TABLE_CUSTOMERS_BASKET_ATTRIBUTES . " where customers_id = '" . (int)$customer_id . "'");
      }

      unset($this->cartID);
      if (tep_session_is_registered('cartID')) tep_session_unregister('cartID');
    }

    function add_cart($products_id, $qty = '1', $attributes = '', $notify = true) {
      global $new_products_id_in_cart, $customer_id;

// BOF Product Type Option
      //$products_id_string = tep_get_uprid($products_id, $attributes);
      //$products_id = tep_get_prid($products_id_string);
      //
      //$attributes_pass_check = true;
      //
      //if (is_array($attributes)) {
      //  reset($attributes);
      //  while (list($option, $value) = each($attributes)) {
      //    if (!is_numeric($option) || !is_numeric($value)) {
      //      $attributes_pass_check = false;
      //      break;
      //    }
      //  }
      //}
      //
      //if (is_numeric($products_id) && is_numeric($qty) && ($attributes_pass_check == true)) {
      $products_id = tep_get_uprid($products_id, $attributes);
// EOF Product Type Option
        $check_product_query = tep_db_query("select products_status from " . TABLE_PRODUCTS . " where products_id = '" . (int)$products_id . "'");
        $check_product = tep_db_fetch_array($check_product_query);

        if (($check_product !== false) && ($check_product['products_status'] == '1')) {
          if ($notify == true) {
            $new_products_id_in_cart = $products_id;
            tep_session_register('new_products_id_in_cart');
          }

// BOF Product Type Option
          //if ($this->in_cart($products_id_string)) {
          //  $this->update_quantity($products_id_string, $qty, $attributes);
          //} else {
          //  $this->contents[$products_id_string] = array('qty' => $qty);
          if ($this->in_cart($products_id)) {
            $this->update_quantity($products_id, $qty, $attributes);
          } else {
            $this->contents[] = array($products_id);
            $this->contents[$products_id] = array('qty' => $qty);
// EOF Product Type Option
// insert into database
// BOF Product Type Option
            //if (tep_session_is_registered('customer_id')) tep_db_query("insert into " . TABLE_CUSTOMERS_BASKET . " (customers_id, products_id, customers_basket_quantity, customers_basket_date_added) values ('" . (int)$customer_id . "', '" . tep_db_input($products_id_string) . "', '" . (int)$qty . "', '" . date('Ymd') . "')");
            if (tep_session_is_registered('customer_id')) tep_db_query("insert into " . TABLE_CUSTOMERS_BASKET . " (customers_id, products_id, customers_basket_quantity, customers_basket_date_added) values ('" . (int)$customer_id . "', '" . tep_db_input($products_id) . "', '" . $qty . "', '" . date('Ymd') . "')");
// EOF Product Type Option

            if (is_array($attributes)) {
              reset($attributes);
              while (list($option, $value) = each($attributes)) {
// BOF Product Type Option
            //$this->contents[$products_id]['attributes'][$option] = $value;
            $attr_value = NULL;
            $blank_value = FALSE;
            if (strstr($option, TEXT_PREFIX)) {
              if (trim($value) == NULL)
              {
                $blank_value = TRUE;
              } else {
                $option = substr($option, strlen(TEXT_PREFIX));
                $attr_value = htmlspecialchars(stripslashes($value), ENT_QUOTES);
                $value = PRODUCTS_OPTIONS_VALUE_TEXT_ID;
                $this->contents[$products_id]['attributes_values'][$option] = $attr_value;
              }
            }

            if (!$blank_value)
            {
              $this->contents[$products_id]['attributes'][$option] = $value;
// EOF Product Type Option
// insert into database
// BOF Product Type Option
                //if (tep_session_is_registered('customer_id')) tep_db_query("insert into " . TABLE_CUSTOMERS_BASKET_ATTRIBUTES . " (customers_id, products_id, products_options_id, products_options_value_id) values ('" . (int)$customer_id . "', '" . tep_db_input($products_id_string) . "', '" . (int)$option . "', '" . (int)$value . "')");
                  if (tep_session_is_registered('customer_id')) tep_db_query("insert into " . TABLE_CUSTOMERS_BASKET_ATTRIBUTES . " (customers_id, products_id, products_options_id, products_options_value_id, products_options_value_text) values ('" . (int)$customer_id . "', '" . tep_db_input($products_id) . "', '" . (int)$option . "', '" . (int)$value . "', '" . tep_db_input($attr_value) . "')");
                }
// EOF Product Type Option
              }
            }
          }

          $this->cleanup();

// assign a temporary unique ID to the order contents to prevent hack attempts during the checkout procedure
// BOF Product Type Option
    //      $this->cartID = $this->generate_cart_id();
    //    }
    //  }
    //}
        $this->cartID = $this->generate_cart_id();
      }
    }

// EOF Product Type Option

    function update_quantity($products_id, $quantity = '', $attributes = '') {
      global $customer_id;

// BOF Product Type Option
      //$products_id_string = tep_get_uprid($products_id, $attributes);
      //$products_id = tep_get_prid($products_id_string);
      if (empty($quantity)) return true; // nothing needs to be updated if theres no quantity, so we return true..
// EOF Product Type Option

      $attributes_pass_check = true;

      if (is_array($attributes)) {
        reset($attributes);
        while (list($option, $value) = each($attributes)) {
          if (!is_numeric($option) || !is_numeric($value)) {
            $attributes_pass_check = false;
            break;
          }
        }
      }

// BOF Product Type Option
      //if (is_numeric($products_id) && isset($this->contents[$products_id_string]) && is_numeric($quantity) && ($attributes_pass_check == true)) {
      //  $this->contents[$products_id_string] = array('qty' => $quantity);

      $this->contents[$products_id] = array('qty' => $quantity);
// EOF Product Type Option
// update database
// BOF Product Type Option
      //if (tep_session_is_registered('customer_id')) tep_db_query("update " . TABLE_CUSTOMERS_BASKET . " set customers_basket_quantity = '" . $quantity . "' where customers_id = '" . (int)$customer_id . "' and products_id = '" . tep_db_input($products_id_string) . "'");

      if (tep_session_is_registered('customer_id')) tep_db_query("update " . TABLE_CUSTOMERS_BASKET . " set customers_basket_quantity = '" . $quantity . "' where customers_id = '" . (int)$customer_id . "' and products_id = '" . tep_db_input($products_id) . "'");
// EOF Product Type Option

        if (is_array($attributes)) {
          reset($attributes);
          while (list($option, $value) = each($attributes)) {
// BOF Product Type Option
          //$this->contents[$products_id_string]['attributes'][$option] = $value;
          $attr_value = NULL;
          $blank_value = FALSE;
          if (strstr($option, TEXT_PREFIX)) {
            if (trim($value) == NULL)
            {
              $blank_value = TRUE;
            } else {
              $option = substr($option, strlen(TEXT_PREFIX));
              $attr_value = htmlspecialchars(stripslashes($value), ENT_QUOTES);
              $value = PRODUCTS_OPTIONS_VALUE_TEXT_ID;
              $this->contents[$products_id]['attributes_values'][$option] = $attr_value;
            }
          }

          if (!$blank_value)
          {
            $this->contents[$products_id]['attributes'][$option] = $value;
// EOF Product Type Option
// update database
// BOF Product Type Option
            //if (tep_session_is_registered('customer_id')) tep_db_query("update " . TABLE_CUSTOMERS_BASKET_ATTRIBUTES . " set products_options_value_id = '" . (int)$value . "' where customers_id = '" . (int)$customer_id . "' and products_id = '" . tep_db_input($products_id_string) . "' and products_options_id = '" . (int)$option . "'");
            if (tep_session_is_registered('customer_id')) tep_db_query("update " . TABLE_CUSTOMERS_BASKET_ATTRIBUTES . " set products_options_value_id = '" . (int)$value . "', products_options_value_text = '" . tep_db_input($attr_value) . "' where customers_id = '" . (int)$customer_id . "' and products_id = '" . tep_db_input($products_id) . "' and products_options_id = '" . (int)$option . "'"); 
// EOF Product Type Option
          }
        }
      }
    }

    function cleanup() {
      global $customer_id;
// BOF Product Type Option
      $products_id = tep_get_uprid($products_id, $attributes);
// EOF Product Type Option

      reset($this->contents);
      while (list($key,) = each($this->contents)) {
        if ($this->contents[$key]['qty'] < 1) {
          unset($this->contents[$key]);
// remove from database
          if (tep_session_is_registered('customer_id')) {
            tep_db_query("delete from " . TABLE_CUSTOMERS_BASKET . " where customers_id = '" . (int)$customer_id . "' and products_id = '" . tep_db_input($key) . "'");
            tep_db_query("delete from " . TABLE_CUSTOMERS_BASKET_ATTRIBUTES . " where customers_id = '" . (int)$customer_id . "' and products_id = '" . tep_db_input($key) . "'");
          }
        }
      }
    }

    function count_contents() {  // get total number of items in cart 
      $total_items = 0;
      if (is_array($this->contents)) {
        reset($this->contents);
        while (list($products_id, ) = each($this->contents)) {
          $total_items += $this->get_quantity($products_id);
		  
		  // start Get 1 free
          // If this product qualifies for free product(s) add in the number of free products
          if (is_array ($free_product = $this->get1free ($products_id))) {
            $total_items += $free_product['quantity'];
          }
// end Get 1 free

        }
      }

      return $total_items;
    }

    function get_quantity($products_id) {
      if (isset($this->contents[$products_id])) {
        return $this->contents[$products_id]['qty'];
      } else {
        return 0;
      }
    }

    function in_cart($products_id) {
      if (isset($this->contents[$products_id])) {
        return true;
      } else {
        return false;
      }
    }

    function remove($products_id) {
      global $customer_id;

      unset($this->contents[$products_id]);
// remove from database
      if (tep_session_is_registered('customer_id')) {
        tep_db_query("delete from " . TABLE_CUSTOMERS_BASKET . " where customers_id = '" . (int)$customer_id . "' and products_id = '" . tep_db_input($products_id) . "'");
        tep_db_query("delete from " . TABLE_CUSTOMERS_BASKET_ATTRIBUTES . " where customers_id = '" . (int)$customer_id . "' and products_id = '" . tep_db_input($products_id) . "'");
      }


// start Get 1 Free
          // If this product qualifies for free product(s) remove the free products
          if (is_array ($free_product = $this->get1free ($products_id))) {
            $pid = (int)$free_product['id'];
            print '<br>Found Product: ' . $pid;
            unset($this->contents[$pid]);
            // remove from database
            if (tep_session_is_registered('customer_id')) {
              tep_db_query("delete from " . TABLE_CUSTOMERS_BASKET . " where customers_id = '" . (int)$customer_id . "' and products_id = '" . tep_db_input($pid) . "'");
              tep_db_query("delete from " . TABLE_CUSTOMERS_BASKET_ATTRIBUTES . " where customers_id = '" . (int)$customer_id . "' and products_id = '" . tep_db_input($pid) . "'");
            }
          }
// end Get 1 Free



// assign a temporary unique ID to the order contents to prevent hack attempts during the checkout procedure
      $this->cartID = $this->generate_cart_id();
    }

    function remove_all() {
      $this->reset();
    }

    function get_product_id_list() {
      $product_id_list = '';
      if (is_array($this->contents)) {
        reset($this->contents);
        while (list($products_id, ) = each($this->contents)) {
          $product_id_list .= ', ' . $products_id;
        }
      }

      return substr($product_id_list, 2);
    }

    function calculate() {
	// ############ Added CCGV Contribution ##########
      $this->total_virtual = 0; // CCGV Contribution
// ############ End Added CCGV Contribution ##########
      $this->total = 0;
      $this->weight = 0;
      if (!is_array($this->contents)) return 0;

      reset($this->contents);
      while (list($products_id, ) = each($this->contents)) {
        $qty = $this->contents[$products_id]['qty'];
		// BOF Separate Pricing Per Customer
// global variable (session) $sppc_customer_group_id -> class variable cg_id
  global $sppc_customer_group_id;

  if(!tep_session_is_registered('sppc_customer_group_id')) {
  $this->cg_id = '0';
  } else {
   $this->cg_id = $sppc_customer_group_id;
  }
// EOF Separate Pricing Per Customer

// products price
        $product_query = tep_db_query("select products_id, products_price, products_tax_class_id, products_weight from " . TABLE_PRODUCTS . " where products_id = '" . (int)$products_id . "'");
        if ($product = tep_db_fetch_array($product_query)) {
		
		// ############ Added CCGV Contribution ##########
          $no_count = 1;
          $gv_query = tep_db_query("select products_model from " . TABLE_PRODUCTS . " where products_id = '" . (int)$products_id . "'");
          $gv_result = tep_db_fetch_array($gv_query);
          if (ereg('^GIFT', $gv_result['products_model'])) {
            $no_count = 0;
          }
// ############ End Added CCGV Contribution ##########


          $prid = $product['products_id'];
          $products_tax = tep_get_tax_rate($product['products_tax_class_id']);
          $products_price = $product['products_price'];
          $products_weight = $product['products_weight'];

// BOF Separate Pricing Per Customer
 /*         $specials_query = tep_db_query("select specials_new_products_price from " . TABLE_SPECIALS . " where products_id = '" . (int)$prid . "' and status = '1'");
          if (tep_db_num_rows ($specials_query)) {
            $specials = tep_db_fetch_array($specials_query);
$products_price = $specials['specials_new_products_price'];
          } */
   $specials_price = tep_get_products_special_price((int)$prid);
      if (tep_not_null($specials_price)) {
	 $products_price = $specials_price;
      } elseif ($this->cg_id != 0){
        $customer_group_price_query = tep_db_query("select customers_group_price from " . TABLE_PRODUCTS_GROUPS . " where products_id = '" . (int)$prid . "' and customers_group_id =  '" . $this->cg_id . "'");
        if ($customer_group_price = tep_db_fetch_array($customer_group_price_query)) {
        $products_price = $customer_group_price['customers_group_price'];
        }
      }
	  
	  // ############ Added CCGV Contribution ##########
          $this->total_virtual += tep_add_tax($products_price, $products_tax) * $qty * $no_count;// ICW CREDIT CLASS;
          $this->weight_virtual += ($qty * $products_weight) * $no_count;// ICW CREDIT CLASS;
// ############ End Added CCGV Contribution ##########

// EOF Separate Pricing Per Customer
          $this->total += tep_add_tax($products_price, $products_tax) * $qty;
          $this->weight += ($qty * $products_weight);
		  
		  // start Get 1 Free
          // If this product qualifies for free product(s) add in the total weight of free products
          if (is_array ($free_product = $this->get1free ($products_id))) {
            $this->weight += $free_product['quantity'] * $free_product['weight'];
          }
// end Get 1 Free


        }

// attributes price
        if (isset($this->contents[$products_id]['attributes'])) {
          reset($this->contents[$products_id]['attributes']);
          while (list($option, $value) = each($this->contents[$products_id]['attributes'])) {
            $attribute_price_query = tep_db_query("select options_values_price, price_prefix from " . TABLE_PRODUCTS_ATTRIBUTES . " where products_id = '" . (int)$prid . "' and options_id = '" . (int)$option . "' and options_values_id = '" . (int)$value . "'");
            $attribute_price = tep_db_fetch_array($attribute_price_query);
            if ($attribute_price['price_prefix'] == '+') {
              $this->total += $qty * tep_add_tax($attribute_price['options_values_price'], $products_tax);
            } else {
              $this->total -= $qty * tep_add_tax($attribute_price['options_values_price'], $products_tax);
            }
          }
        }
      }
    }

    function attributes_price($products_id) {
      $attributes_price = 0;

      if (isset($this->contents[$products_id]['attributes'])) {
        reset($this->contents[$products_id]['attributes']);
        while (list($option, $value) = each($this->contents[$products_id]['attributes'])) {
          $attribute_price_query = tep_db_query("select options_values_price, price_prefix from " . TABLE_PRODUCTS_ATTRIBUTES . " where products_id = '" . (int)$products_id . "' and options_id = '" . (int)$option . "' and options_values_id = '" . (int)$value . "'");
          $attribute_price = tep_db_fetch_array($attribute_price_query);
          if ($attribute_price['price_prefix'] == '+') {
            $attributes_price += $attribute_price['options_values_price'];
          } else {
            $attributes_price -= $attribute_price['options_values_price'];
          }
        }
      }

      return $attributes_price;
    }

    function get_products() {
      global $languages_id;
	  // BOF Separate Pricing Per Customer
// global variable (session) $sppc_customer_group_id -> class variable cg_id
  global $sppc_customer_group_id;

  if(!tep_session_is_registered('sppc_customer_group_id')) {
  $this->cg_id = '0';
  } else {
   $this->cg_id = $sppc_customer_group_id;
  }
// EOF Separate Pricing Per Customer

      if (!is_array($this->contents)) return false;

      $products_array = array();
      reset($this->contents);
      while (list($products_id, ) = each($this->contents)) {
        $products_query = tep_db_query("select p.products_id, pd.products_name, p.products_model, p.products_image, p.products_price, p.products_weight, p.products_tax_class_id from " . TABLE_PRODUCTS . " p, " . TABLE_PRODUCTS_DESCRIPTION . " pd where p.products_id = '" . (int)$products_id . "' and pd.products_id = p.products_id and pd.language_id = '" . (int)$languages_id . "'");
        if ($products = tep_db_fetch_array($products_query)) {
          $prid = $products['products_id'];
          $products_price = $products['products_price'];

// BOF Separate Pricing Per Customer
/*          $specials_query = tep_db_query("select specials_new_products_price from " . TABLE_SPECIALS . " where products_id = '" . (int)$prid . "' and status = '1'");
          if (tep_db_num_rows($specials_query)) {
            $specials = tep_db_fetch_array($specials_query);
$products_price = $specials['specials_new_products_price'];
          } */
   $specials_price = tep_get_products_special_price($prid);
  if (tep_not_null($specials_price)) {
	 $products_price = $specials_price;
      } elseif ($this->cg_id != 0){
        $customer_group_price_query = tep_db_query("select customers_group_price from " . TABLE_PRODUCTS_GROUPS . " where products_id = '" . (int)$prid . "' and customers_group_id =  '" . $this->cg_id . "'");
        if ($customer_group_price = tep_db_fetch_array($customer_group_price_query)) {
        $products_price = $customer_group_price['customers_group_price'];
        }
  }
// EOF Separate Pricing Per Customer

          $products_array[] = array('id' => $products_id,
                                    'name' => $products['products_name'],
                                    'model' => $products['products_model'],
                                    'image' => $products['products_image'],
                                    'price' => $products_price,
                                    'quantity' => $this->contents[$products_id]['qty'],
                                    'weight' => $products['products_weight'],
                                    'final_price' => ($products_price + $this->attributes_price($products_id)),
                                    'tax_class_id' => $products['products_tax_class_id'],
// BOF Product Type Option
                                    //'attributes' => (isset($this->contents[$products_id]['attributes']) ? $this->contents[$products_id]['attributes'] : ''));
                                    'attributes' => (isset($this->contents[$products_id]['attributes']) ? $this->contents[$products_id]['attributes'] : ''),
                                    'attributes_values' => (isset($this->contents[$products_id]['attributes_values']) ? $this->contents[$products_id]['attributes_values'] : ''));
									
// EOF Product Type Option


// start Get 1 free
          if (is_array ($free_product = $this->get1free ($products_id))) {
            // Add the free product to the shopping cart (Customer cannot alter this)
            $products_array[] = array('id' => $free_product['id'],
                                      'name' => $free_product['name'],
                                      'model' => $free_product['model'],
                                      'image' => $free_product['image'],
                                      'price' => 0,
                                      'quantity' => $free_product['quantity'],
                                      'weight' => $free_product['weight'],
                                      'final_price' => 0,
                                      'tax_class_id' => $products['products_tax_class_id'],
                                      'attributes' => '',
                                      'free' => 1
                                     );
          } //if (is_array
// end Get 1 free



        }
      }

      return $products_array;
    }

    function show_total() {
      $this->calculate();

      return $this->total;
    }

    function show_weight() {
      $this->calculate();

      return $this->weight;
    }


// ############ Added CCGV Contribution ##########
    function show_total_virtual() {
      $this->calculate();

      return $this->total_virtual;
    }

    function show_weight_virtual() {
      $this->calculate();

      return $this->weight_virtual;
    }
// ############ End Added CCGV Contribution ##########


    function generate_cart_id($length = 5) {
      return tep_create_random_value($length, 'digits');
    }

    function get_content_type() {
      $this->content_type = false;

      if ( (DOWNLOAD_ENABLED == 'true') && ($this->count_contents() > 0) ) {
        reset($this->contents);
        while (list($products_id, ) = each($this->contents)) {
          if (isset($this->contents[$products_id]['attributes'])) {
            reset($this->contents[$products_id]['attributes']);
            while (list(, $value) = each($this->contents[$products_id]['attributes'])) {
              $virtual_check_query = tep_db_query("select count(*) as total from " . TABLE_PRODUCTS_ATTRIBUTES . " pa, " . TABLE_PRODUCTS_ATTRIBUTES_DOWNLOAD . " pad where pa.products_id = '" . (int)$products_id . "' and pa.options_values_id = '" . (int)$value . "' and pa.products_attributes_id = pad.products_attributes_id");
              $virtual_check = tep_db_fetch_array($virtual_check_query);

              if ($virtual_check['total'] > 0) {
                switch ($this->content_type) {
                  case 'physical':
                    $this->content_type = 'mixed';

                    return $this->content_type;
                    break;
                  default:
                    $this->content_type = 'virtual';
                    break;
                }
              } else {
                switch ($this->content_type) {
                  case 'virtual':
                    $this->content_type = 'mixed';

                    return $this->content_type;
                    break;
                  default:
                    $this->content_type = 'physical';
                    break;
                }
              }
            }
			
			
			// ############ Added CCGV Contribution ##########
          } elseif ($this->show_weight() == 0) {
            reset($this->contents);
            while (list($products_id, ) = each($this->contents)) {
              $virtual_check_query = tep_db_query("select products_weight from " . TABLE_PRODUCTS . " where products_id = '" . $products_id . "'");
              $virtual_check = tep_db_fetch_array($virtual_check_query);
              if ($virtual_check['products_weight'] == 0) {
                switch ($this->content_type) {
                  case 'physical':
                    $this->content_type = 'mixed';

                    return $this->content_type;
                    break;
                  default:
                    $this->content_type = 'virtual';
                    break;
                }
              } else {
                switch ($this->content_type) {
                  case 'virtual':
                    $this->content_type = 'mixed';

                    return $this->content_type;
                    break;
                  default:
                    $this->content_type = 'physical';
                    break;
                }
              }
            }
// ############ End Added CCGV Contribution ##########


          } else {
            switch ($this->content_type) {
              case 'virtual':
                $this->content_type = 'mixed';

                return $this->content_type;
                break;
              default:
                $this->content_type = 'physical';
                break;
            }
          }
        }
      } else {
        $this->content_type = 'physical';
      }

      return $this->content_type;
    }

    function unserialize($broken) {
      for(reset($broken);$kv=each($broken);) {
        $key=$kv['key'];
        if (gettype($this->$key)!="user function")
        $this->$key=$kv['value'];
      }
    }
	
	
	
	// start Get 1 Free
    function get1free ($products_id) {
      global $languages_id;
      $get_1_free_query = tep_db_query("select products_free_id,
                                               products_free_quantity,
                                               products_qualify_quantity,
                                               products_multiple,
                                               get_1_free_expires_date
                                        from " . TABLE_GET_1_FREE . "
                                        where products_id = '" . (int)$products_id . "'
                                          and status = '1'"
                                      );
      if (tep_db_num_rows($get_1_free_query) > 0) {
        $get_1_free = tep_db_fetch_array($get_1_free_query);
        //Check that the offer has not expired
         //MNK bugfix 13.08.2007
        if (($get_1_free['get_1_free_expires_date'] <= date('Y-m-d H:i:s')) && ($get_1_free['get_1_free_expires_date'] != '0000-00-00 00:00:00')) {
          //offer has expired, so update the database and return false
          tep_db_query("update " . TABLE_GET_1_FREE . "
                        set status = '0',
                            date_status_change = now()
                        where products_id = '" . (int)$products_id . "'"
                      );
          return false;
        } else {
          // Offer is valid, so check if the quantity qualifies
          $products_quantity = $this->contents[$products_id]['qty'];
          if ($products_quantity >= $get_1_free['products_qualify_quantity']) {
            // Qualifies, so get the quantity of free products
            $free_quantity = 1;
            if ($get_1_free['products_multiple'] > 1) {
           //BOF fischo bugfix 10.04.2009
              //$free_quantity = floor ($products_quantity / $get_1_free['products_qualify_quantity']);
              $free_quantity = floor ($products_quantity / $get_1_free['products_qualify_quantity']) * $get_1_free['products_free_quantity'];
           //EOF fischo bugfix 10.04.2009
              if ($free_quantity > $get_1_free['products_multiple']) {
                $free_quantity = $get_1_free['products_multiple'];
              }
            }
            // Get the info on the free product
            $products_free_query = tep_db_query("select pd.products_name,
                                                        p.products_model,
                                                        p.products_image,
                                                        p.products_weight
                                                 from " . TABLE_PRODUCTS . " p,
                                                      " . TABLE_PRODUCTS_DESCRIPTION . " pd
                                                 where p.products_id = '" . (int)$get_1_free['products_free_id'] . "'
                                                   and pd.products_id = p.products_id
                                                   and pd.language_id = '" . (int)$languages_id . "'"
                                               );
            $products_free = tep_db_fetch_array($products_free_query);
            // Return an array of free product values
            $output = array ( 'id' => $get_1_free['products_free_id'],
                              'quantity' => $free_quantity,
                              'name' => $products_free['products_name'],
                              'model' => $products_free['products_model'],
                              'image' => $products_free['products_image'],
                              'weight' => $products_free['products_weight']
                            );
            return $output;
          } //if ($products_quantity
        } //else
      }//if (tep_db_num_rows
      // offer was not valid (disabled or expired)
      return false;
    }//function
// end Get 1 Free



// ############ Added CCGV Contribution ##########
   // amend count_contents to show nil contents for shipping
   // as we don't want to quote for 'virtual' item
   // GLOBAL CONSTANTS if NO_COUNT_ZERO_WEIGHT is true then we don't count any product with a weight
   // which is less than or equal to MINIMUM_WEIGHT
   // otherwise we just don't count gift certificates

    function count_contents_virtual() {  // get total number of items in cart disregard gift vouchers
      $total_items = 0;
      if (is_array($this->contents)) {
        reset($this->contents);
        while (list($products_id, ) = each($this->contents)) {
          $no_count = false;
          $gv_query = tep_db_query("select products_model from " . TABLE_PRODUCTS . " where products_id = '" . $products_id . "'");
          $gv_result = tep_db_fetch_array($gv_query);
          if (ereg('^GIFT', $gv_result['products_model'])) {
            $no_count=true;
          }
          if (NO_COUNT_ZERO_WEIGHT == 1) {
            $gv_query = tep_db_query("select products_weight from " . TABLE_PRODUCTS . " where products_id = '" . tep_get_prid($products_id) . "'");
            $gv_result=tep_db_fetch_array($gv_query);
            if ($gv_result['products_weight']<=MINIMUM_WEIGHT) {
              $no_count=true;
            }
          }
          if (!$no_count) $total_items += $this->get_quantity($products_id);
        }
      }
      return $total_items;
    }
// ############ End Added CCGV Contribution ##########


  }
?>
