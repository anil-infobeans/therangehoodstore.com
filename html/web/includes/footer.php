<?php


  require(DIR_WS_INCLUDES . 'counter.php');
?>


<table width="<?php echo BOX_TOTAL; ?>" border="0" align="center" cellpadding="0" cellspacing="0" height="220" style="background-image:url(../images/footer_jpg.jpg); background-repeat:no-repeat">
<tr>

<td valign="top" width="256">
<div style="padding-left:24px; padding-right:24px; padding-top:10px;">
    <div class="title_footer">Boletines</div>
    <div class="title_footer2" style="width:112px">
        Registrate para recibir nuestros boletines<br />
<br />

    </div>
<?php require('includes/newsletter_signup.php'); ?> 
</div>
</td>

<td valign="top" width="256">
<div style="padding-left:24px; padding-right:24px; padding-top:10px;">
    <div class="title_footer">Información</div>
    <div class="title_footer2">
		<?php require(DIR_WS_BOXES . 'pages_footer.php');?>
       <br /> <a href="sitemap.php">Mapa del Sitio</a><br />
    </div>
</div>
</td>

<td valign="top" width="256">
<div style="padding-left:24px; padding-right:24px; padding-top:10px;">
    <div class="title_footer">Mi Cuenta</div>
    <div class="title_footer2">
        <a href="create_account.php">Registrate</a><br />
        <a href="password_forgotten.php">¿Olvidaste tu Clave?</a><br />
        <a href="account_history.php">Pedidos</a><br />
        <a href="account_edit.php">Editar tu perfil</a><br />
    </div>
</div>
</td>

<td valign="top" width="256">
<div style="padding-left:24px; padding-right:24px; padding-top:10px;">
    <div class="title_footer">Busqueda</div>
     <div class="title_footer2" style="width:130px">
        Escribe aquí el nombre de producto a buscar en el catalogo<br />
<br />

    </div>
    
    
            <form name="search" action="advanced_search_result.php" method="get" >
			<input name="keywords" type="text" style=" border:1px solid #D7DCDF; background-color:#FFFFFF; color:#666666; font-family:Tahoma; font-size:11px; padding:5px" size="30" placeholder="Buscar"/>
<input type="image" src="<?php echo tep_output_string(DIR_WS_LANGUAGES . $language . '/images/buttons/buscar.jpg');?>" border="0" alt="" style="margin-top:10px;">
			</form>    

</div>
</td>

</tr>

</table>

<table align="center" cellpadding="0" cellspacing="0" border="0" class="main">
<tr>
<td>

<a href="http://www.keomweb.com">Diseñado por KEOM WEB</a><br /><br />

</td>
</tr>
</table>