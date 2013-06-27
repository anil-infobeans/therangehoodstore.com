<?php
/**
 * Magento
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@magentocommerce.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade Magento to newer
 * versions in the future. If you wish to customize Magento for your
 * needs please refer to http://www.magentocommerce.com for more information.
 *
 * @category   Mage
 * @package    Mage
 * @copyright  Copyright (c) 2008 Irubin Consulting Inc. DBA Varien (http://www.varien.com)
 * @license    http://opensource.org/licenses/osl-3.0.php  Open Software License (OSL 3.0)
 */

require 'app/Mage.php';

if (!Mage::isInstalled()) {
    echo "Application is not installed yet, please complete install wizard first.";
    exit;
}

// Only for urls
// Don't remove this
$_SERVER['SCRIPT_NAME'] = str_replace(basename(__FILE__), 'index.php', $_SERVER['SCRIPT_NAME']);
$_SERVER['SCRIPT_FILENAME'] = str_replace(basename(__FILE__), 'index.php', $_SERVER['SCRIPT_FILENAME']);

Mage::app('admin')->setUseSessionInUrl(false);

umask(0);

try {
    Mage::getConfig()->init()->loadEventObservers('crontab');
    Mage::app()->addEventArea('crontab');
    Mage::dispatchEvent('default');
} catch (Exception $e) {
    Mage::printException($e);
}


/********************************************************************************************/
/*  Get an cache the external JS to improve Google PageSpeed Rating                         */
/********************************************************************************************/
$googleAdServices = get_url_content("http://www.googleadservices.com/pagead/conversion.js");
file_put_contents("./js/conversion.js", $googleAdServices);

//$chatService = get_url_content("http://zopim.com/?1HUSTywrBfKF6Rr2hleM4ty9iToVlwo7");
//file_put_contents("./js/zopim.js", $chatService);

//$avidTrakh = get_url_content("http://reducisaurus.appspot.com/js?url=http://avidtrak.com/login/jss/avidh.php?c=1497");
//file_put_contents("./js/avidh.js", $avidTrakh);

//$avidTrakf = get_url_content("http://reducisaurus.appspot.com/js?url=http://avidtrak.com/login/jss/avidf.php");
//file_put_contents("./js/avidf.js", $avidTrakf);
/********************************************************************************************/



/**
 * Helper function for cURL request
 * 
 * @param string $URL  the url of the content you wish to retrieve
 * @return mixed
 */
function get_url_content($URL){
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch, CURLOPT_URL, $URL);
	$data = curl_exec($ch);
	curl_close($ch);
	return $data;
}