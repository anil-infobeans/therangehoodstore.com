<?php







  if ($messageStack->size > 0) {

    echo $messageStack->output();

  }

  

  $languages = tep_get_languages();

  $languages_array = array();

  $languages_selected = DEFAULT_LANGUAGE;

  for ($i = 0, $n = sizeof($languages); $i < $n; $i++) {

    $languages_array[] = array('id' => $languages[$i]['code'],

                               'text' => $languages[$i]['name']);

    if ($languages[$i]['directory'] == $language) {

      $languages_selected = $languages[$i]['code'];

    }

  }

  

?>





                    

      

<table border="0" width="100%" height="76" cellspacing="0" cellpadding="0" style="background-color:#EFEFEF">

<tr>

<td colspan="2" style="background-color:#ACBD54; " align="right" height="26">&nbsp;</td>

</tr>

  <tr>

    <td width="80%"><br />

&nbsp;&nbsp;&nbsp;<?php echo tep_image(DIR_WS_IMAGES . 'logo2.png'); ?> </td>

    <td width="20%" align="right">

	<a href="logout.php">LOG OUT</a>&nbsp;&nbsp;&nbsp;&nbsp;

</td>

  </tr>

  </table>

  <table  cellpadding="0" cellspacing="0" width="100%" style="background:url(images/bfondo.jpg) repeat-x">

  <tr >

    <td  align="left" height="59" valign="top" colspan="2"><?php echo '<a href="' . tep_href_link(FILENAME_DEFAULT, '', 'NONSSL') . '" class="headerLink">' . '<img src="includes/languages/'.$language.'/images/buttons/b1.jpg" />' . '</a>'; ?><?php echo '<a href="http://www.apolomultimedia.com/tutorials-ta-en.php" class="headerLink" target="_blank">' . '<img src="includes/languages/'.$language.'/images/buttons/b2.jpg" />' . '</a>'; ?><?php echo '<a href="' . tep_catalog_href_link() . '"class="headerLink" target="_blank">' . '<img src="includes/languages/'.$language.'/images/buttons/b3.jpg"/>' . '</a>'; ?></td>



  </tr>

</table>