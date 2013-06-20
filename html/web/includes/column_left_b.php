
<div align="left" class="h_l_text" style="margin-left:25px; margin-top:12px;  ">
<strong>HERRAMIENTAS</strong><br />
<br /><br /><br />
<strong><?=BOX_HEADING_CURRENCIES?>:</strong><br>
											<br style="line-height:6px;">
<? // CURRENCIES
    echo tep_draw_form('currencies', tep_href_link(basename($PHP_SELF), '', $request_type, false), 'get');
    reset($currencies->currencies);
    $currencies_array = array();
    while (list($key, $value) = each($currencies->currencies)) {
      $currencies_array[] = array('id' => $key, 'text' => $value['title']);
    }
    $hidden_get_variables = '';
    reset($HTTP_GET_VARS);
    while (list($key, $value) = each($HTTP_GET_VARS)) {
      if ( ($key != 'currency') && ($key != tep_session_name()) && ($key != 'x') && ($key != 'y') ) {
        $hidden_get_variables .= tep_draw_hidden_field($key, $value);
      }
    }
    echo tep_draw_pull_down_menu('currency', $currencies_array, $currency, 'onChange="this.form.submit();" class="form1" style="width:132px"') . $hidden_get_variables . tep_hide_session_id();
    echo '</form>';
?>     
<br>
<br>
<strong><?=IMAGE_BUTTON_SEARCH?></strong>
											<br style="line-height:6px;">
<?php echo tep_draw_form('search',tep_href_link(FILENAME_ADVANCED_SEARCH_RESULT, '', 'NONSSL', false),'get') ?>
<input type=text name="keywords" class="form1" value="" style="position:relative;top:2px"/>
<span style="position:relative;top:6px;"><?=tep_image_submit('go.gif')?></span>
</form>
<br>
<br>
<strong><?=BOX_HEADING_LANGUAGES?>:</strong><br>
											<?php echo tep_draw_separator('spacer.gif', '1', '8'); ?><br>

<? // LANGUAGES
  if (!isset($lng) || (isset($lng) && !is_object($lng))) {
    include(DIR_WS_CLASSES . 'language.php');
    $lng = new language;
  }
  $languages_string = '';
  reset($lng->catalog_languages);
  while (list($key, $value) = each($lng->catalog_languages)) {
    $languages_string .= '<a style="margin-left:0px;" href="' . tep_href_link(basename($PHP_SELF), tep_get_all_get_params(array('language', 'currency')) . 'language=' . $key, $request_type) . '">' . tep_image(DIR_WS_LANGUAGES .  $value['directory'] . '/images/' . $value['image'], $value['name']) . '</a>&nbsp;&nbsp;';
  }
  echo $languages_string;
?>
</div>
<br />