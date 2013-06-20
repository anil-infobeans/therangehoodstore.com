<?php require_once('admin/includes/languages/english/main.php'); ?>
<script type="text/javascript" >
function valida_envia_register(){


var sradio = "no"; 
var envio = "no"; 
with (document.form1){ 

	if(RadioGroup1.length>1){
		for ( var iradio = 0; iradio < RadioGroup1.length; iradio++ ) { 
			if ( RadioGroup1[iradio].checked ) { 
			sradio= "si"; 
			window.alert("<?php echo TEXTO73; ?> \n" + RadioGroup1[iradio].value); 
			break; 
			} 
		} 
		if ( sradio == "no" ){ 
			window.alert("<?php echo TEXTO74; ?>" ) ;
		}
	}
	
var s = document.form1.email_user.value;
var filter=/^[A-Za-z][A-Za-z0-9_]*@[A-Za-z0-9_]+.[A-Za-z0-9_.]+[A-za-z]$/;
if (s.length == 0 ) {
     alert("<?php echo TEXTO52; ?>") 
     document.form1.email_user.focus() 
	 }
if (filter.test(s)){
      envio = "si";
	  }
   else{
     alert("<?php echo TEXTO54; ?>");
     document.form1.email_user.focus();
    }
	
  } 

	if ( envio == "si" ){
    document.form1.submit();
	}
}

</script>
    
	
	
<div style="height:180px; background-image: url(images/healthynews.png); background-repeat:no-repeat; padding-top:213px; padding-left:115px;">
<table cellpadding="0" cellspacing="0" border="0" align="left">
<tr>
<td valign="top" height="100%" align="left">


     <div style="margin-left:12px; margin-top:20px; width:635px">


<form id="form1" name="form1" method="POST" action="thanks.php" >

<input type="text" size="31" name="email_user" id="email_user" style="font-size:18px; border:0px; background-color:#F4F4F4;">
<br />
<?php if($totalRows_Recordset1_language>1){?>
<?php for ($language = 0; $language <= $totalRows_Recordset1_language-1; $language++) {?>

    <img src="images/<?php echo $image_language_array[$language]; ?>" />&nbsp;<input type="radio" name="RadioGroup1" value="<?php echo $name_language_array[$language]; ?>" />
<?php
 }
?>
<?php } else {?>
<input type="hidden" name="RadioGroup1" id="RadioGroup1" value="<?php echo $name_language_array[0]; ?>" />
<?php
}
?>
<br />
<input type="hidden" name="MM_insert_1" value="form1_1" />
</form>
</div>
<a href="javascript:valida_envia_register();"><img src = "images/btn_registration.png"></a>




</td>
</tr>
</table>
<div style="clear:both"></div>
</div>
<br />
