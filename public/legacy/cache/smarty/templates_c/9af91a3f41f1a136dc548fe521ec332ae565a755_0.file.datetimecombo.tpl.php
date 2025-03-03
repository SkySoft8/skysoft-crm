<?php
/* Smarty version 4.5.3, created on 2025-02-28 17:28:32
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\DynamicFields\templates\Fields\Forms\datetimecombo.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67c1f2405230a8_75546074',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9af91a3f41f1a136dc548fe521ec332ae565a755' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\DynamicFields\\templates\\Fields\\Forms\\datetimecombo.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:modules/DynamicFields/templates/Fields/Forms/coreTop.tpl' => 1,
    'file:modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl' => 1,
  ),
),false)) {
function content_67c1f2405230a8_75546074 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.html_options.php','function'=>'smarty_function_html_options',),));
?>

<?php $_smarty_tpl->_subTemplateRender("file:modules/DynamicFields/templates/Fields/Forms/coreTop.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<?php echo '<script'; ?>
 language="Javascript">
	function timeValueUpdate(){
		var fieldname = 'defaultTime';
		var timeseparator = ':';
		var newtime = '';
		
		id = fieldname + '_hours';
		h = window.document.getElementById(id).value;
		id = fieldname + '_minutes';
		m = window.document.getElementById(id).value;
		
		id = fieldname + '_meridiem';
		ampm = '';
		if(document.getElementById(id)) {
		   ampm = document.getElementById(id).value;
		}
		newtime = h + timeseparator + m + ampm;
		document.getElementById(fieldname).value = newtime;
		
	}
<?php echo '</script'; ?>
>

<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_DEFAULT_VALUE"),$_smarty_tpl);?>
:</td>
	<td>
	<?php if ($_smarty_tpl->tpl_vars['hideLevel']->value < 5) {?>
		<?php echo smarty_function_html_options(array('name'=>'defaultDate','id'=>'defaultDate_date','options'=>$_smarty_tpl->tpl_vars['default_values']->value,'selected'=>$_smarty_tpl->tpl_vars['default_date']->value),$_smarty_tpl);?>

	<?php } else { ?>
		<input type='hidden' name='defaultDate' value='<?php echo $_smarty_tpl->tpl_vars['default_date']->value;?>
'><?php echo $_smarty_tpl->tpl_vars['default_date']->value;?>

	<?php }?>
	</td>
</tr>
<tr>
	<td class='mbLBL'></td>
	<td>
	<?php if ($_smarty_tpl->tpl_vars['hideLevel']->value < 5) {?>
		  <div>
			<?php echo smarty_function_html_options(array('name'=>'defaultHours','size'=>'1','id'=>'defaultTime_hours','options'=>$_smarty_tpl->tpl_vars['default_hours_values']->value,'onchange'=>"timeValueUpdate();",'selected'=>$_smarty_tpl->tpl_vars['default_hours']->value),$_smarty_tpl);?>

		   :
		 <?php echo smarty_function_html_options(array('name'=>'defaultMinutes','size'=>'1','id'=>'defaultTime_minutes','options'=>$_smarty_tpl->tpl_vars['default_minutes_values']->value,'onchange'=>"timeValueUpdate();",'selected'=>$_smarty_tpl->tpl_vars['default_minutes']->value),$_smarty_tpl);?>

		 <?php if ($_smarty_tpl->tpl_vars['show_meridiem']->value === true) {?>
		 <?php echo smarty_function_html_options(array('name'=>'defaultMeridiem','size'=>'1','id'=>'defaultTime_meridiem','options'=>$_smarty_tpl->tpl_vars['default_meridiem_values']->value,'onchange'=>"timeValueUpdate();",'selected'=>$_smarty_tpl->tpl_vars['default_meridiem']->value),$_smarty_tpl);?>

		 <?php }?>
		</div>
		<input type='hidden' name='defaultTime' id='defaultTime' value="<?php echo $_smarty_tpl->tpl_vars['defaultTime']->value;?>
">
	<?php } else { ?>
		<input type='hidden' name='defaultTime' id='defaultTime' value='<?php echo $_smarty_tpl->tpl_vars['defaultTime']->value;?>
'><?php echo $_smarty_tpl->tpl_vars['defaultTime']->value;?>

	<?php }?>
	</td>
</tr>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_MASS_UPDATE"),$_smarty_tpl);?>
:</td>
	<td>
	<?php if ($_smarty_tpl->tpl_vars['hideLevel']->value < 5) {?>
		<input type="checkbox" id="massupdate" name="massupdate" value="1" <?php if (!empty($_smarty_tpl->tpl_vars['vardef']->value['massupdate'])) {?>checked<?php }?>/>
	<?php } else { ?>
		<input type="checkbox" id="massupdate" name="massupdate" value="1" disabled <?php if (!empty($_smarty_tpl->tpl_vars['vardef']->value['massupdate'])) {?>checked<?php }?>/>
	<?php }?>
	</td>
</tr>
<?php if ($_smarty_tpl->tpl_vars['range_search_option_enabled']->value) {?>
<tr>	
    <td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_ENABLE_RANGE_SEARCH"),$_smarty_tpl);?>
:</td>
    <td>
        <input type='checkbox' name='enable_range_search' value=1 <?php if (!empty($_smarty_tpl->tpl_vars['vardef']->value['enable_range_search'])) {?>checked<?php }?> <?php if ($_smarty_tpl->tpl_vars['hideLevel']->value > 5) {?>disabled<?php }?> />
        <?php if ($_smarty_tpl->tpl_vars['hideLevel']->value > 5) {?><input type='hidden' name='enable_range_search' value='<?php echo $_smarty_tpl->tpl_vars['vardef']->value['enable_range_search'];?>
'><?php }?>
    </td>	
</tr>
<?php }
echo '<script'; ?>
>
addToValidateBinaryDependency('popup_form',"defaultDate_date", 'alpha', false, "<?php echo $_smarty_tpl->tpl_vars['APP']->value['ERR_MISSING_REQUIRED_FIELDS'];?>
 <?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DATE'];?>
 <?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_OR'];?>
 <?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_HOURS'];?>
" ,"defaultTime_hours");
addToValidateBinaryDependency('popup_form',"defaultTime_hours", 'alpha', false, "<?php echo $_smarty_tpl->tpl_vars['APP']->value['ERR_MISSING_REQUIRED_FIELDS'];?>
 <?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_HOURS'];?>
 <?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_OR'];?>
 <?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_MINUTES'];?>
" ,"defaultTime_minutes");
addToValidateBinaryDependency('popup_form', "defaultTime_minutes", 'alpha', false, "<?php echo $_smarty_tpl->tpl_vars['APP']->value['ERR_MISSING_REQUIRED_FIELDS'];?>
 <?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_MINUTES'];?>
 <?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_OR'];?>
 <?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_MERIDIEM'];?>
","defaultTime_meridiem");
<?php echo '</script'; ?>
>
<?php $_smarty_tpl->_subTemplateRender("file:modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
