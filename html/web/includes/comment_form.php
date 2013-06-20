<script type="text/javascript" >
function valida_envia(){

if (document.form3.message.value.length==0){ 
     alert("<?php echo TEXTO66;?>") 
     document.form3.message.focus() 
     return false; 
    }

var s = document.form3.email.value;
var filter=/^[A-Za-z][A-Za-z0-9_]*@[A-Za-z0-9_]+.[A-Za-z0-9_.]+[A-za-z]$/;
if (s.length == 0 ) {
     alert("<?php echo TEXTO52;?>") 
     document.form3.email.focus() 
     return false;
	 }
if (filter.test(s)){
      return true;
	  }
   else{
     alert("<?php echo TEXTO54;?>");
     document.form3.email.focus();
     return false;
    }

    document.form3.submit(); 
} 
</script>


<form id="form3" name="form3" method="post" action="thanks.php">
<table width="100%" border="0" cellspacing="2" cellpadding="2">
  <tr>
    <td><span class="aviso">*</span></td>
    <td valign="top"><?php echo FULLNAME;?></td>
    <td valign="top">:</td>
    <td><label>
      <input type="text" name="name" id="name" />
    </label></td>
  </tr>
  <tr>
  <td><span class="aviso">*</span></td>
    <td valign="top"><?php echo EMAIL;?></td>
    <td valign="top">:</td>
    <td><label>
      <input type="text" name="email" id="email" />
    </label></td>
  </tr>
  <tr>
  <td></td>
   <td valign="top"><?php echo WEBSITE;?></td>
    <td valign="top">:</td>
    <td><label>
      <input type="text" name="website" id="website" />
    </label></td>
  </tr>
  <tr>
  <td valign="top"><span class="aviso">*</span></td>
    <td valign="top"><?php echo COMMENT;?></td>
    <td valign="top">:</td>
    <td><label>
      <textarea name="message" id="message" cols="80" rows="10"></textarea>
    </label></td>
  </tr>
  <tr>
  <td></td>
    <td valign="top">&nbsp;</td>
    <td valign="top">&nbsp;</td>
    <td><label>
      <input type="submit" name="button" id="button" value="Send" onclick="return valida_envia()"/>
    </label></td>
  </tr>
  <tr>
    <td></td>
    <td valign="top">&nbsp;</td>
    <td valign="top">&nbsp;</td>
    <td><span class="aviso"><?php echo REQUIREDFIELDS;?></span></td>
  </tr>
</table>
<input type="hidden" name="news_form" value="<?php echo $colname_Recordset501; ?>" />
<input type="hidden" name="events_form" value="<?php echo $colname_Recordset601; ?>" />
<input type="hidden" name="promotion_form" value="<?php echo $colname_Recordset701; ?>" />
<input type="hidden" name="pages_form" value="<?php echo $colname_Recordset501_pages_id; ?>" />
<input type="hidden" name="id_language_f" value="<?php echo $languages_id; ?>" />

<input type="hidden" name="MM_insert3" value="form3" />
</form>

