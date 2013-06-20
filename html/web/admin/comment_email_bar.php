<html>

<!--        

--------------------------------------------------------------------

Admin Comments Toolbar 2.0 by Skeedo.com Enterprises info@skeedo.com

Released under GNU General Public License for use with OSCommerce

--------------------------------------------------------------------

-->

<head>

   <script language="JavaScript">

   <!--



        var usrdate = '';



   function updateMessage(obj,statusnum) {

                        var textareas = document.getElementsByTagName('textarea');

                        var myTextarea = textareas.item(0);

                        if (myTextarea.value != '') {                        

                        myTextarea.value += '\n' + obj;

                        myTextarea.scrollTop=myTextarea.scrollHeight;

                        }

                        else {

                        myTextarea.value = obj;

                        }



                        var selects = document.getElementsByTagName('select');

                        var theSelect = selects.item(0);

                        theSelect.selectedIndex = statusnum;

                        

   }



   function killbox() {

                        var box = document.getElementsByTagName('textarea');

                        var killbox = box.item(0);

                        killbox.value = '';



        }



        function getdate () {

                        usrdate = prompt("What is the URL for this website Including http://");



        }

   //-->

   </script>



<style type="text/css">

.cbutton { width: 70px; font-family: Verdana; font-size: 9px; padding: 0px; border-bottom: 1px solid #000000; border-right: 1px solid #000000; border-top: 1px solid #000099; border-left: 4px solid #000099; cursor: hand;}

</style>



</head>

<body>



<!--

Edit the following buttons to make the buttons

and text inserts of your liking.



e.g. <button class="cbutton" onClick="updateMessage('Text for button to insert','Order Status #');">Button Text</button>&nbsp;



Orderstatusnumber is the number of the order status option you would like the button to select, 0 being the first. 



e.g.        Paypal Processing

                Pending

                Backordered

                Processed

                Cancelled

                See Invoice



Paypal Processing would be 0, Cancelled would be 4.



Please note that the 'B. order Dte' button uses two functions. This is to prompt the user for a backorder date to insert.

Editing this and the other buttons should be pretty straight forward! 



To add more buttons just copy the first button code line to the end before the reset button. 





-->



<table cellpadding=0 cellspacing=0 border=0>

                <tr>

                        <td colspan="3" align="left" style="font-family: verdana; font-size: 9px; font-weight: bold;">

                        <font color="#0033CC">Comments</font><font color="#0066CC"> Toolbar 2.0&nbsp;</font>

                        </td>

                </tr>

        <tr>

                <td>

<button class="cbutton" onClick="updateMessage('Email Date: <?php echo date("d-m-Y"); ?>','Order Status #');">Issue Date</button>&nbsp;

<button class="cbutton" onClick="updateMessage('Greetings <Name>,\n\nWe would just like to welcome to <?php echo STORE_NAME;?>\n\nI see you created a profile with us but never actually purchased any items, I am just wondering if there was a problem with your shopping experience?','3');">Problem?</button>&nbsp;

<button class="cbutton" onClick="updateMessage('Hi <Name>\nBoy do we have a deal for you!...','6');">Win!</button>&nbsp;

<button class="cbutton" onClick="updateMessage('\nThank you, \n<?php echo STORE_OWNER;?>\n-----------------\nSalesmanager\n<?php echo STORE_NAME;?>\nEmail: <?php echo STORE_OWNER_EMAIL_ADDRESS;?>','6');">Store Email</button>&nbsp;

<button class="cbutton" onClick="updateMessage('\nVisit us today!\n<?php echo HTTP_SERVER; ?>','5');">Store URL</button>&nbsp;

<button class="cbutton" onClick="updateMessage('\n==================================================\nYou have received this email from <?php echo STORE_NAME;?> because you opted to subscribe to our newsletter when you created a profile or made a purchase from our store, <?php echo STORE_NAME;?> does not spam or sell unsolicited emails we respect your rights as a customer and newsletter subscriber, If you no longer wish to recieve this newsletter from <?php echo STORE_NAME;?>, please login to your profile with your email address and password at: <?php echo HTTP_SERVER . DIR_WS_CATALOG;?>account_edit.php and change newsletter :Subscribes: to :Unsubscribe:, if you have forgot your password: <?php echo HTTP_SERVER . DIR_WS_CATALOG;?>password_forgotten.php, if you need furthur assistance please email: <?php echo STORE_OWNER_EMAIL_ADDRESS;?>','5');">Unsubscribe</button>&nbsp;

<button class="cbutton" onClick="updateMessage('\nGOT SOME REPETITIVE TO SAY GOT SOME REPETITIVE TO SAY GOT SOME REPETITIVE TO SAY\nGOT SOME REPETITIVE TO SAY GOT SOME REPETITIVE TO SAY GOT SOME REPETITIVE TO SAY\nGOT SOME REPETITIVE TO SAY GOT SOME REPETITIVE TO SAY GOT SOME REPETITIVE TO SAY\n\nWhy not customize these buttons to your needs I can be found on line 85 and onwards\n\ncatalog/admin/comment_newsletter_bar.php\n\nNOTE: This Macro feature is only available when HTML NEWSLETTER WSIWYG Box is Disabled (If you can see this message your WSIWYG Box is currently Disabled meaning you are not using the full potention of HTML email, HTML is also Disabled!\n\nCheers MaxiDVD','5');">Customize</button>&nbsp;

<button class="cbutton" onClick="killbox();">Reset</button>&nbsp;

                </td>

                </tr>



</table>



</body>

</html>

