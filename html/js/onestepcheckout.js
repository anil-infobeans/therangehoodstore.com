function $RF(el, radioGroup) {
    if($(el).type && $(el).type.toLowerCase() == 'radio') {
        var radioGroup = $(el).name;
        var el = $(el).form;
    } else if ($(el).tagName.toLowerCase() != 'form') {
        return false;
    }

    var checked = $(el).getInputs('radio', radioGroup).find(
            function(re) {return re.checked;}
    );
    return (checked) ? $F(checked) : null;
}

function $RFF(el, radioGroup) {
    if($(el).type && $(el).type.toLowerCase() == 'radio') {
        var radioGroup = $(el).name;
        var el = $(el).form;
    } else if ($(el).tagName.toLowerCase() != 'form') {
        return false;
    }
    return $(el).getInputs('radio', radioGroup).first();
}

function get_totals_element()
{
    // Search for OSC summary element
    var search_osc = $$('div.onestepcheckout-summary');

    if(search_osc.length > 0)    {
        return search_osc[0];
    }

    var search_cart = $$('div.shopping-cart-totals');

    if(search_cart.length > 0)    {
        return search_cart[0];
    }

    if($('shopping-cart-totals-table'))    {
        return $('shopping-cart-totals-table');
    }

}

function get_save_methods_function(url, update_payments)
{

    if(typeof update_payments == 'undefined')    {
        var update_payments = false;
    }
    return function(e)    {

        if(typeof e != 'undefined')    {
            var element = e.element();

            if(element.name != 'shipping_method')    {
                update_payments = false;
            }            
        }        

        var form = $('onestepcheckout-form');
        var shipping_method = $RF(form, 'shipping_method');
        var payment_method = $RF(form, 'payment[method]');

        var totals = get_totals_element();
        totals.update('<div class="loading-ajax">&nbsp;</div>');

        if(update_payments)    {
            var payment_methods = $$('div.payment-methods')[0];
            payment_methods.update('<div class="loading-ajax">&nbsp;</div>');
        }

        var parameters = {
                shipping_method: shipping_method,
                payment_method: payment_method
        }

        /* Find payment parameters and include */
        var items = $$('input[name^=payment]').concat($$('select[name^=payment]'));
        var names = items.pluck('name');
        var values = items.pluck('value');

        for(var x=0; x < names.length; x++)    {
            if(names[x] != 'payment[method]')    {
                parameters[names[x]] = values[x];    
            }
        }

        new Ajax.Request(url, {
            method: 'post',
            onSuccess: function(transport)    {
            if(transport.status == 200)    {
                var data = transport.responseText.evalJSON();

                totals.update(data.summary);

                if(update_payments)    {

                    payment_methods.update(data.payment_method);

                    $$('div.payment-methods input[name^=payment\[method\]]').invoke('observe', 'click', get_separate_save_methods_function(url));

                    $$('div.payment-methods input[name^=payment\[method\]]').invoke('observe', 'click', function() {
                        $$('div.onestepcheckout-payment-method-error').each(function(item) {
                            new Effect.Fade(item);
                        });                                                
                    });                        

                    if($RF(form, 'payment[method]') != null)    {
                        try    {
                            var payment_method = $RF(form, 'payment[method]');
                            $('container_payment_method_' + payment_method).show();
                            $('payment_form_' + payment_method).show();
                        } catch(err)    {

                        }
                    }

                }
            }
        },
        parameters: parameters
        });
    }
}    

function exclude_unchecked_checkboxes(data)
{
    var items = [];
    for(var x=0; x < data.length; x++)    {
        var item = data[x];
        if(item.type == 'checkbox')    {
            if(item.checked)    {
                items.push(item);
            }
        }
        else    {
            items.push(item);
        }
    }

    return items;
}

function get_save_billing_function(url, set_methods_url, update_payments)
{
    if(typeof update_payments == 'undefined')    {
        var update_payments = false;
    }

    return function()    {
        var form = $('onestepcheckout-form');
        var items = exclude_unchecked_checkboxes($$('input[name^=billing]').concat($$('select[name^=billing]')));
        var names = items.pluck('name');
        var values = items.pluck('value');
        var parameters = {
                shipping_method: $RF(form, 'shipping_method')
        };


        var street_count = 0;
        for(var x=0; x < names.length; x++)    {
            if(names[x] != 'payment[method]')    {

                var current_name = names[x];

                if(names[x] == 'billing[street][]')    {
                    current_name = 'billing[street][' + street_count + ']';
                    street_count = street_count + 1;
                }

                parameters[current_name] = values[x];    
            }
        }

        var use_for_shipping = $('billing:use_for_shipping_yes');




        if(use_for_shipping && use_for_shipping.getValue() != '1')    {
            var items = $$('input[name^=shipping]').concat($$('select[name^=shipping]'));
            var shipping_names = items.pluck('name');
            var shipping_values = items.pluck('value');
            var shipping_parameters = {};
            var street_count = 0;

            for(var x=0; x < shipping_names.length; x++)    {
                if(shipping_names[x] != 'shipping_method')    {
                    var current_name = shipping_names[x];
                    if(shipping_names[x] == 'shipping[street][]')    {
                        current_name = 'shipping[street][' + street_count + ']';
                        street_count = street_count + 1;
                    }

                    parameters[current_name] = shipping_values[x];    
                }
            }
        }


        var shipment_methods = $$('div.onestepcheckout-shipping-method-block')[0];
        var shipment_methods_found = false;

        if(typeof shipment_methods != 'undefined') {
            shipment_methods_found = true;
        }

        if(shipment_methods_found)  {
            shipment_methods.update('<div class="loading-ajax">&nbsp;</div>');
        }

        var payment_method = $RF(form, 'payment[method]');
        parameters['payment_method'] = payment_method;
        parameters['payment[method]'] = payment_method;
        
        var payment_methods = $$('div.payment-methods')[0];
        payment_methods.update('<div class="loading-ajax">&nbsp;</div>');

        var totals = get_totals_element();
        totals.update('<div class="loading-ajax">&nbsp;</div>');


        new Ajax.Request(url, {
            method: 'post',
            onSuccess: function(transport)    {
            if(transport.status == 200)    {    

                var data = transport.responseText.evalJSON();

                // Update shipment methods
                if(shipment_methods_found)  {
                    shipment_methods.update(data.shipping_method);
                }
                payment_methods.update(data.payment_method);
                totals.update(data.summary);

                // Add new event handlers

                if(shipment_methods_found)  {
                    $$('dl.shipment-methods input').invoke('observe', 'click', get_separate_save_methods_function(set_methods_url, update_payments));
                }

                $$('div.payment-methods input[name^=payment\[method\]]').invoke('observe', 'click', get_separate_save_methods_function(set_methods_url));        

                $$('div.payment-methods input[name^=payment\[method\]]').invoke('observe', 'click', function() {
                    $$('div.onestepcheckout-payment-method-error').each(function(item) {
                        new Effect.Fade(item);
                    });
                });

                if(shipment_methods_found)  {
                    $$('dl.shipment-methods input').invoke('observe', 'click', function() {
                        $$('div.onestepcheckout-shipment-method-error').each(function(item) {
                            new Effect.Fade(item);
                        });
                    });
                }

                if($RF(form, 'payment[method]') != null)    {
                    try    {
                        var payment_method = $RF(form, 'payment[method]');
                        $('container_payment_method_' + payment_method).show();
                        $('payment_form_' + payment_method).show();
                    } catch(err)    {

                    }
                }


            }
        },
        parameters: parameters
        });

    }
}

function get_separate_save_methods_function(url, update_payments)
{
    if(typeof update_payments == 'undefined')    {
        var update_payments = false;
    }

    return function(e)    {
        if(typeof e != 'undefined')    {
            var element = e.element();

            if(element.name != 'shipping_method')    {
                update_payments = false;
            }            
        }

        var form = $('onestepcheckout-form');
        var shipping_method = $RF(form, 'shipping_method');
        var payment_method = $RF(form, 'payment[method]');
        var totals = get_totals_element();
        
        totals.update('<div class="loading-ajax">&nbsp;</div>');

        if(update_payments)    {
            var payment_methods = $$('div.payment-methods')[0];
            payment_methods.update('<div class="loading-ajax">&nbsp;</div>');
        }

        var parameters = {
                shipping_method: shipping_method,
                payment_method: payment_method
        }

        /* Find payment parameters and include */
        var items = $$('input[name^=payment]').concat($$('select[name^=payment]'));
        var names = items.pluck('name');
        var values = items.pluck('value');

        for(var x=0; x < names.length; x++)    {
            if(names[x] != 'payment[method]')    {
                parameters[names[x]] = values[x];    
            }
        }

        new Ajax.Request(url, {
            method: 'post',
            onSuccess: function(transport)    {
            if(transport.status == 200)    {
                var data = transport.responseText.evalJSON();
                var form = $('onestepcheckout-form');

                totals.update(data.summary);

                if(update_payments)    {

                    payment_methods.update(data.payment_method);

                    $$('div.payment-methods input[name^=payment\[method\]]').invoke('observe', 'click', get_separate_save_methods_function(url));                            
                    $$('div.payment-methods input[name^=payment\[method\]]').invoke('observe', 'click', function() {
                        $$('div.onestepcheckout-payment-method-error').each(function(item) {
                            new Effect.Fade(item);
                        });
                    });                        

                    if($RF($('onestepcheckout-form'), 'payment[method]') != null)    {
                        try    {
                            var payment_method = $RF(form, 'payment[method]');
                            $('container_payment_method_' + payment_method).show();
                            $('payment_form_' + payment_method).show();
                        } catch(err)    {

                        }
                    }
                }
            }
        },
        parameters: parameters
        });
    }
}

/* Terms and conditions Popup Javascript */

function OneStepCheckout_Popup(popup_id, link_id, close_link_search, close_callback, open_callback)
{
    this.popup_id = popup_id;
    this.popup = $(popup_id);
    this.link_id = link_id;
    this.link = $(link_id);
    this.close_link_search = close_link_search;

    if(typeof close_callback != 'undefined') {
        this.close_callback = close_callback;
    }
    else    {
        this.close_callback = false;
    }

    if(typeof open_callback != 'undefined') {
        this.open_callback = open_callback;
    }
    else    {
        this.open_callback = false;
    }  

    var onestepcheckout_popup = this;

    if(this.link != null)    {
        this.link.observe('click', function(e)    {

            e.preventDefault();
            onestepcheckout_popup.show();
        });
    }

    var close_link = $$(this.close_link_search);
    if(close_link.length > 0)    {
        close_link[0].observe('click', function(e)    {
            e.preventDefault();
            onestepcheckout_popup.hide();
        });
    }

    this.overlay = $('onestepcheckout_popup_overlay');

    this.overlay.observe('click', function(e)   {
        onestepcheckout_popup.hide();
    });

}

OneStepCheckout_Popup.prototype.show_overlay = function()
{
    this.overlay.show();

    var dimensions = document.viewport.getDimensions();
    var offset = document.viewport.getScrollOffsets();

    var dimensions_new = {
            height: (dimensions.height + offset.top) + 'px',
            width: $$('.onestepcheckout-index-index')['0'].getHeight() + 'px'
    }

    this.overlay.setStyle(dimensions_new);

    /* IE Hack */
    var IE6 = Prototype.Browser.IE && parseInt(navigator.userAgent.substring(navigator.userAgent.indexOf('MSIE')+5)) == 6;

    if(IE6)    {
        $$('select').invoke('hide');
    }

}

OneStepCheckout_Popup.prototype.show = function()
{
    this.show_overlay();
    this.popup.show();
    this.center();

    if(this.open_callback) {
        this.open_callback();
    }
}

OneStepCheckout_Popup.prototype.hide = function()
{
    this.overlay.hide();

    /* IE Hack */
    var IE6 = Prototype.Browser.IE && parseInt(navigator.userAgent.substring(navigator.userAgent.indexOf('MSIE')+5)) == 6;

    if(IE6)    {
        $$('select').invoke('show');
    }

    this.popup.hide();

    if(this.close_callback) {
        this.close_callback();
    }
}

OneStepCheckout_Popup.prototype.center = function()
{
    var dimensions = document.viewport.getDimensions();
    var popup_width = this.popup.getWidth();
    var popup_height = this.popup.getHeight();
    var offset = document.viewport.getScrollOffsets();

    var width = dimensions.width;
    var left = (width / 2) - (popup_width / 2);

    var height = dimensions.height;
    var top = (height / 2) - (popup_height / 2) + offset.top;

    this.popup.setStyle({
        top: top + 'px',
        left: left + 'px'
    });
}

var Checkout = Class.create();
    Checkout.prototype = {
        initialize: function(){
        this.accordion = '';
        this.progressUrl = '';
        this.reviewUrl = '';
        this.saveMethodUrl = '';
        this.failureUrl = '';
        this.billingForm = false;
        this.shippingForm= false;
        this.syncBillingShipping = false;
        this.method = '';
        this.payment = '';
        this.loadWaiting = false;
    },
    
    ajaxFailure: function(){
        location.href = this.failureUrl;
    },
    
    setLoadWaiting: function(step, keepDisabled) {
        return true
    }
}

//billing
var Billing = Class.create();
    Billing.prototype = {
            initialize: function(form, addressUrl, saveUrl){
        this.form = form;
    },

    setAddress: function(addressId){
    
    },
    
    newAddress: function(isNew){
        if (isNew) {
            //this.resetSelectedAddress();
            Element.show('billing_address_list');
            if($('billing:use_for_shipping_yes').getValue() != "1" && $('shipping-address-select').getValue() == ''){
                Element.show('shipping_address_list');
            }
    
        } else {
            Element.hide('billing_address_list');
        }
        $$('input[name^=billing]', 'select[id=billing:region_id]').each(function(e){
            if(e.name=='billing[use_for_shipping]' || e.name=='billing[save_in_address_book]'){
                
            } else {
                e.value = '';
            }
        });
    },
    
    resetSelectedAddress: function(){
        var selectElement = $('shipping-address-select')
        if (selectElement) {
            selectElement.value='';
        }
    },
    
    fillForm: function(transport){
    
    },
    
    setUseForShipping: function(flag) {
    
    },
    
    save: function(){
    
    },
    
    resetLoadWaiting: function(transport){
    
    },
    
    nextStep: function(transport){
    
    }
}

//shipping
var Shipping = Class.create();
    Shipping.prototype = {
            initialize: function(form){
        this.form = form;
    },
    
    setAddress: function(addressId){
    
    },
    
    newAddress: function(isNew){
        if (isNew) {
            this.resetSelectedAddress();
            Element.show('shipping_address_list');
        } else {
            Element.hide('shipping_address_list');
        }
        
        $$('#shipping_address input[name^=shipping],#shipping_address select[id=shipping:region_id]').each(function(e){
            if(e.name=='shipping[save_in_address_book]'){
                
            } else {
                e.value = '';
            }
        })
        
    },
    
    resetSelectedAddress: function(){
        var selectElement = $('shipping-address-select')
        if (selectElement) {
            selectElement.value='';
        }
    },
    
    fillForm: function(transport){
    
    },
    
    setSameAsBilling: function(flag) {
    
    },
    
    syncWithBilling: function () {
    
    },
    
    setRegionValue: function(){
        //$('shipping:region').value = $('billing:region').value;
    },
    
    save: function(){
    
    }
}

//payment object
var Payment = Class.create();
    Payment.prototype = {
            beforeInitFunc:$H({}),
            afterInitFunc:$H({}),
            beforeValidateFunc:$H({}),
            afterValidateFunc:$H({}),
            initialize: function(form, saveUrl){
        this.form = form;
        this.saveUrl = saveUrl;
    },
    
    init : function () {
        var elements = Form.getElements(this.form);
        if ($(this.form)) {
            //$(this.form).observe('submit', function(event){this.save();Event.stop(event);}.bind(this));
        }
        var method = null;
        for (var i=0; i<elements.length; i++) {
            if (elements[i].name=='payment[method]') {
                if (elements[i].checked) {
                    method = elements[i].value;
                }
            } else {
                elements[i].disabled = true;
            }
        }
        if (method) this.switchMethod(method);
    },
    
    switchMethod: function(method){
        if (this.currentMethod && $('payment_form_'+this.currentMethod)) {
            var form = $('payment_form_'+this.currentMethod);
            //form.style.display = 'none';
            var elements = form.select('input', 'select', 'textarea');
            for (var i=0; i<elements.length; i++) elements[i].disabled = true;
        }
    
        if ($('payment_form_'+method)){
            var form = $('payment_form_'+method);
            form.style.display = '';
            var elements = form.select('input', 'select', 'textarea');
            for (var i=0; i<elements.length; i++) elements[i].disabled = false;
            this.currentMethod = method;
        }
    },
    
    addBeforeValidateFunction : function(code, func) {
        this.beforeValidateFunc.set(code, func);
    },
    
    beforeValidate : function() {
        var validateResult = true;
        var hasValidation = false;
        (this.beforeValidateFunc).each(function(validate){
            hasValidation = true;
            if ((validate.value)() == false) {
                validateResult = false;
            }
        }.bind(this));
        if (!hasValidation) {
            validateResult = false;
        }
        return validateResult;
    },
    
    validate: function() {
        var methods = document.getElementsByName('payment[method]');
        if (methods.length==0) {
            alert(Translator.translate('Your order can not be completed at this time as there is no payment methods available for it.'));
            return false;
        }
        for (var i=0; i<methods.length; i++) {
            if (methods[i].checked) {
                return true;
            }
        }
        alert(Translator.translate('Please specify payment method.'));
        return false;
    },
    
    save: function(){
    },
    addAfterInitFunction : function(code, func) {
        this.afterInitFunc.set(code, func);
    },
    
    afterInit : function() {
        (this.afterInitFunc).each(function(init){
            (init.value)();
        });
    }
}

var billing = new Billing();
$("billing:region_id").setAttribute("defaultValue",  jQuery("#region_id_default").val() );

document.observe("dom:loaded", 
	function() {
    	$("id_create_account").observe("click", 
    		function(e) {
    			var element = e.element();
		        if(element.checked) {
		            $("onestepcheckout-li-password").show();
		        }
		        else    {
		            $("onestepcheckout-li-password").hide();
		        }
    		}
    	);
    }
);

var shipping = new Shipping();
$("shipping:region_id").setAttribute("defaultValue",  jQuery("#sh_region_id_default").val());

var payment = new Payment('checkout-payment-method-load', '/checkout/onepage/savePayment');

$$('.cvv-what-is-this').each(function(element){
    Event.observe(element, 'click', toggleToolTip);
});

function toggleToolTip(event){
    if($('payment-tool-tip')){
        $('payment-tool-tip').setStyle({
            left: (Event.pointerX(event)-100)+'px',
            top: (Event.pointerY(event)-300)+'px'
        });
        $('payment-tool-tip').toggle();
    }
    Event.stop(event);
}

var checkout = new Checkout();
$$('#checkout-payment-method-load dt input').invoke('observe', 'click', function(e) {

    var element = e.element();
    var name = 'payment_form_' + element.getValue();
    payment.currentMethod = element.getValue();
    /* Hide all other forms */
    $$('dd.payment-method').invoke('hide');

    if(element.checked) {
        var form = $(name);
        var container = $('container_payment_method_' + element.getValue());

        if(element !== null && container !== null)    {
            container.show();
            $(name).show();
        }
    }
});

payment.currentMethod = jQuery("#currentMethod").val();

Event.observe(window, 'load', function() {
    $('onestepcheckout-coupon-add').observe('click', function(e)    {
        var coupon = $('id_couponcode').getValue();
        var couponNotice = $('coupon-notice');
        couponNotice.hide();
        if(coupon == '')    {
            alert('Please enter a valid coupon code.');
            return;
        }

        var url = '/onestepcheckout/ajax/add_coupon/';
        var parameters = {code: coupon};
        var summary = $$('div.onestepcheckout-summary').first();

        summary.update('<div class="loading-ajax">&nbsp;</div>');

        new Ajax.Request(url, {
            method: 'post',
            parameters: parameters,
            onSuccess: function(transport) {
                if(transport.status == 200) {

                    var response = transport.responseText.evalJSON();

                    if(response.success) {
                        summary.update(response.summary);
                        couponNotice.update(response.message);
                        couponNotice.removeClassName('error-msg');
                        couponNotice.addClassName('success-msg');
                        couponNotice.show();
                        /* Show remove button */
                        $('onestepcheckout-coupon-remove').show();
                    }
                    else    {
                        summary.update(response.summary);
                        couponNotice.update(response.message);
                        couponNotice.removeClassName('success-msg');
                        couponNotice.addClassName('error-msg');
                        couponNotice.show();
                        /* Hide remove button */
                        $('onestepcheckout-coupon-remove').hide();
                    }
                }
            }
        });
    });

    $('onestepcheckout-coupon-remove').observe('click', function(e) {
        var coupon = $('id_couponcode').getValue();
        var couponNotice = $('coupon-notice');
        couponNotice.hide();
        var url = '/onestepcheckout/ajax/add_coupon/';
        var parameters = {code: coupon, remove: '1'};
        var summary = $$('div.onestepcheckout-summary').first();

        summary.update('<div class="loading-ajax">&nbsp;</div>');

        new Ajax.Request(url, {
            method: 'post',
            parameters: parameters,
            onSuccess: function(transport)  {
                if(transport.status == 200) {
                    var response = transport.responseText.evalJSON();

                    if(response.success){
                        $('id_couponcode').setValue('')
                        $('onestepcheckout-coupon-remove').hide();
                    }
                    var summary = $$('div.onestepcheckout-summary').first();

                    summary.hide();
                    summary.update(response.summary);
                    summary.show();

                    couponNotice.hide();
                    couponNotice.update(response.message);
                    couponNotice.removeClassName('error-msg');
                    couponNotice.addClassName('success-msg');
                    couponNotice.show();
                }
            }
        });
    });
});

if (jQuery("#showLoginLink").val() == "true") {
	
	var login_popup;
	Event.observe(window, 'load', function() {

	    var button = $('onestepcheckout-login-button');
	    var loginButtonFunction = function(e) {

	        /* Hide form and display loading */
	        var table = $('onestepcheckout-login-table');
	        var loading = $('onestepcheckout-login-loading');
	        var error = $('onestepcheckout-login-error');

	        table.hide();
	        error.hide();
	        loading.show();


	        var form = $('onestepcheckout-login-form');
	        var url = '/onestepcheckout/ajax/login/';
	        new Ajax.Request(url, {
	            parameters: form.serialize(true),
	            method: 'POST',
	            onComplete: function(transport) {
	                if(transport.status == 200) {
	                    var result = transport.responseText.evalJSON();

	                    if(!result.success) {
	                        loading.hide();

	                        error.update(result.error);
	                        error.show();

	                        table.show();
	                    }
	                    else    {
	                        // Successfully logged in user, now reload page
	                        //window.location.reload(true);
	                        window.location=window.location;
	                    }
	                }
	            }
	        })
	    };

	    var onkeypressHandler = function(event) {
	        if(event.keyCode == Event.KEY_RETURN)  {
	           event.preventDefault();
	           loginButtonFunction();
	        }
	    };

	    login_popup = new OneStepCheckout_Popup('onestepcheckout-login-popup','onestepcheckout-login-link', 'div#onestepcheckout-login-popup p.close a', function() {
	        /* Callback for closing the popup */
	        Event.stopObserving(document, 'keypress', onkeypressHandler);
	    }, function() {
	        /* Callback for opening the popup */
	        Event.observe(document, 'keypress', onkeypressHandler);

	        /* Reset error messages and state */
	        $('onestepcheckout-login-error').hide();
	        $('onestepcheckout-forgot-error').hide();
	        $('onestepcheckout-login-popup-contents-forgot').hide();
	        $('onestepcheckout-login-popup-contents-login').show();


	    });

	    button.observe('click', loginButtonFunction);

	    $('onestepcheckout-forgot-password-link').observe('click', function(e)  {
	        Event.stop(e);
	        $('onestepcheckout-login-error').hide();
	        $('onestepcheckout-login-popup-contents-login').hide();
	        $('onestepcheckout-login-popup-contents-forgot').show();

	    });

	    $('onestepcheckout-return-login-link').observe('click', function(e) {
	        Event.stop(e);
	        $('onestepcheckout-forgot-error').hide();
	        $('onestepcheckout-login-popup-contents-forgot').hide();
	        $('onestepcheckout-login-popup-contents-login').show();

	    });

	    var forgot_password_button = $('onestepcheckout-forgot-button');

	    forgot_password_button.observe('click', function(e) {

	        var table = $('onestepcheckout-forgot-table');
	        var loading = $('onestepcheckout-forgot-loading');
	        var error = $('onestepcheckout-forgot-error');
	        var success = $('onestepcheckout-forgot-success');
	        var email = $('id_onestepcheckout_email').getValue();

	        if(email != '') {

	            table.hide();
	            error.hide();
	            loading.show();

	            var url = '/onestepcheckout/ajax/forgotPassword/';
	            var parameters = { email: email };

	            new Ajax.Request(url, {
	                method: 'post',
	                parameters: parameters,
	                onSuccess: function(transport)  {
	                    var result = transport.responseText.evalJSON();

	                    if(result.success)  {
	                         loading.hide();
	                         success.show();
	                    }
	                    else    {
	                        error.update('Please enter a registered email address.');
	                        error.show();
	                        table.show();
	                        loading.hide();
	                    }
	                }
	            });

	        }
	        else    {
	            alert('Please enter a valid email address');
	        }
	    });


	});	
}

if (jQuery("#validEmail").val() == "true") {
	$('billing:email').observe('blur', function(e)    {
	    var url = '/onestepcheckout/ajax/check_email';
	    var email = e.element().getValue();
	    var parameters = { email: email };

	    new Ajax.Request(url, {
	        parameters: parameters,
	        onComplete: function(response)  {
	            if(response.status == 200)  {
	                var result = response.responseText.evalJSON().result;
	                if(result == 'invalid') {
	                    $('onestepcheckout-email-error-message').update('Invalid email address.');
	                    $('onestepcheckout-email-error').show();
	                }
	                else if(result == 'exists') {
	                    if (jQuery("#registration_order_without_password").val() != "0") {
		                    // Remove the password fields if the email exists in database
		                    $('onestepcheckout-li-password').hide();
	                    } else {
		                    $('onestepcheckout-email-error-message').update('Email address already registered. Please <a href="javascript:void(0);" onclick="login_popup.show(); return false;">login now</a> or use a different email address.');;
		                    $('onestepcheckout-email-error').show();
		                    // Ask the user to login or change email address
		                    //login_popup.show();
		                    $('id_onestepcheckout_username').value = email;
	                    }
	                }
	                else    {
	                    $('onestepcheckout-email-error').hide();
	                    $('onestepcheckout-li-password').show();
	                }
	            }
	        }
	    })

	});	
}


var billingRegionUpdater = new RegionUpdater('billing:country_id', 'billing:region', 'billing:region_id', countryRegions, undefined, 'billing:postcode');
var shippingRegionUpdater = new RegionUpdater('shipping:country_id', 'shipping:region', 'shipping:region_id', countryRegions, undefined, 'shipping:postcode');
