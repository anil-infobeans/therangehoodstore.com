<?php

/*

  $Id: newsletter.php,v 1.1 2002/03/08 18:38:18 hpdl Exp $



  osCommerce, Open Source E-Commerce Solutions

  http://www.oscommerce.com



  Copyright (c) 2002 osCommerce



  Released under the GNU General Public License

*/



						

						

						

  class newsletter {

    var $show_choose_audience, $title, $content;



    function newsletter($title, $content) {

      $this->show_choose_audience = false;

      $this->title = $title;

      $this->content = $content;

    }



    function choose_audience() {

      return false;

    }



    function confirm() {

      global $HTTP_GET_VARS;

      $mail_query2 = tep_db_query("select count(*) as count from customers_newsletters");

	  $mail2 = tep_db_fetch_array($mail_query2);

      $mail_query = tep_db_query("select count(*) as count from " . TABLE_CUSTOMERS . " where customers_newsletter = '1'");

      $mail = tep_db_fetch_array($mail_query);

      $confirm_string = '<table border="0" cellspacing="0" cellpadding="2">' . "\n" .

                        '  <tr>' . "\n" .

                        '    <td class="main"><font color="#ff0000"><b>' . sprintf(TEXT_COUNT_CUSTOMERS, $mail['count']+$mail2['count']) . '</b></font></td>' . "\n" .

                        '  </tr>' . "\n" .

                        '  <tr>' . "\n" .

                        '    <td>' . tep_draw_separator('pixel_trans.gif', '1', '10') . '</td>' . "\n" .

                        '  </tr>' . "\n" .

                        '  <tr>' . "\n" .

                        '    <td class="main"><b>' . $this->title . '</b></td>' . "\n" .

                        '  </tr>' . "\n" .

                        '  <tr>' . "\n" .

                        '    <td>' . tep_draw_separator('pixel_trans.gif', '1', '10') . '</td>' . "\n" .

                        '  </tr>' . "\n" .

                        '  <tr>' . "\n" .

                        '    <td class="main"><tt>' . nl2br($this->content) . '</tt></td>' . "\n" .

                        '  </tr>' . "\n" .

                        '  <tr>' . "\n" .

                        '    <td>' . tep_draw_separator('pixel_trans.gif', '1', '10') . '</td>' . "\n" .

                        '  </tr>' . "\n" .

                        '  <tr>' . "\n" .

                        '    <td align="right"><a href="' . tep_href_link(FILENAME_NEWSLETTERS, 'page=' . $HTTP_GET_VARS['page'] . '&nID=' . $HTTP_GET_VARS['nID'] . '&action=confirm_send') . '">' . tep_image_button('button_send.gif', IMAGE_SEND) . '</a> <a href="' . tep_href_link(FILENAME_NEWSLETTERS, 'page=' . $HTTP_GET_VARS['page'] . '&nID=' . $HTTP_GET_VARS['nID']) . '">' . tep_image_button('button_cancel.gif', IMAGE_CANCEL) . '</a></td>' . "\n" .

                        '  </tr>' . "\n" .

                        '</table>';



      return $confirm_string;

    }



    function send($newsletter_id) {

      $mail_query = tep_db_query("select customers_firstname, customers_lastname, customers_email_address from " . TABLE_CUSTOMERS . " where customers_newsletter = '1'");



      $mimemessage = new email(array('X-Mailer: osCommerce bulk mailer'));

      // MaxiDVD Added WYSIWYG HTML Area Box + Admin Function v1.6.5 Newsletter HTML

      if (HTML_AREA_WYSIWYG_DISABLE_NEWSLETTER == 'Disable') {

	  

      $mimemessage->add_text($this->content);

      } else {

      $mimemessage->add_html('<table width="611" border="0" cellspacing="0" cellpadding="0" align="center" style="background-color:#E9F5C9"><tr><td align="center"><img src="http://www.apolomultimedia.com/TA_package/tienda/images/boletin_header2.jpg" width="611" height="278" /><br><br><h1>' . $this->title . '</h1></td></tr><tr><td> <div style=" margin-left:20px; margin-right:20px; margin-top:10px">' . nl2br($this->content) . '</div></td></tr><td align="center"> <a href="http://www.apolomultimedia.com">http://www.apolomultimedia.com</a><br /><br /></td></tr></table>');

      // MaxiDVD Added HTML is ON when WYSIWYG BOX Enabled, HTML is OFF when WYSIWYG Disabled

      }

      $mimemessage->build_message();

      while ($mail = tep_db_fetch_array($mail_query)) {



        $mimemessage->send($mail['customers_firstname'] . ' ' . $mail['customers_lastname'], $mail['customers_email_address'], '', EMAIL_FROM, $this->title);

      }



      $newsletter_id = tep_db_prepare_input($newsletter_id);

      tep_db_query("update " . TABLE_NEWSLETTERS . " set date_sent = now(), status = '1' where newsletters_id = '" . tep_db_input($newsletter_id) . "'");

	  

	  

	  

	  //////newsletters con solo nombre y email - inicio

      $mail_query2 = tep_db_query("select name_customers_newsletters, email_customers_newsletters from customers_newsletters ");



      $mimemessage2 = new email(array('X-Mailer: osCommerce bulk mailer'));

      // MaxiDVD Added WYSIWYG HTML Area Box + Admin Function v1.6.5 Newsletter HTML

      if (HTML_AREA_WYSIWYG_DISABLE_NEWSLETTER == 'Disable') {

	  

      $mimemessage2->add_text($this->content);

      } else {

      $mimemessage2->add_html('<table width="611" border="0" cellspacing="0" cellpadding="0" align="center" style="background-color:#E9F5C9"><tr><td align="center"><img src="http://www.apolomultimedia.com/TA_package/tienda/images/boletin_header2.jpg" width="611" height="278" /><br><br><h1>' . $this->title . '</h1></td></tr><tr><td> <div style=" margin-left:20px; margin-right:20px; margin-top:10px">' . nl2br($this->content) . '</div></td></tr><td align="center"> <a href="http://www.apolomultimedia.com">http://www.apolomultimedia.com</a><br /><br /></td></tr></table>');

      // MaxiDVD Added HTML is ON when WYSIWYG BOX Enabled, HTML is OFF when WYSIWYG Disabled

      }

      $mimemessage2->build_message();

      while ($mail2 = tep_db_fetch_array($mail_query2)) {

        $mimemessage2->send($mail2['name_customers_newsletters'] , $mail2['email_customers_newsletters'], '', EMAIL_FROM, $this->title);

      }



      $newsletter_id = tep_db_prepare_input($newsletter_id);

      tep_db_query("update " . TABLE_NEWSLETTERS . " set date_sent = now(), status = '1' where newsletters_id = '" . tep_db_input($newsletter_id) . "'");

	  

    }

	//////newsletters con solo nombre y email - fin

  }

?>

