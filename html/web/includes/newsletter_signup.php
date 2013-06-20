<?php require_once('includes/languages/'.$language.'/main.php'); ?>
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


<form id="form1" name="form1" method="POST" action="thanks.php" >

<input name="email_user" id="email_user" type="text" style=" border:1px solid #D7DCDF; background-color:#FFFFFF; color:#666666; font-family:Tahoma; font-size:11px; padding:5px;" size="30" placeholder="Email"/>
<input type="hidden" name="RadioGroup1" value="<?php echo $languages_id; ?>" />
<input type="hidden" name="MM_insert" value="form1" />
<input type="image" src="<?php echo tep_output_string(DIR_WS_LANGUAGES . $language . '/images/buttons/buscar.jpg');?>" border="0" alt="" style="margin-top:10px;"  onclick="valida_envia_register()">
</form>

