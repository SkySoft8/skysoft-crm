<?php
/* Smarty version 4.5.3, created on 2025-02-17 12:05:33
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\DynamicFields\templates\Fields\Forms\phone.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67b3260dc3b5a0_37970336',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c1b9f7316a218dc07ee7e0c21de0d2127290889c' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\DynamicFields\\templates\\Fields\\Forms\\phone.tpl',
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
function content_67b3260dc3b5a0_37970336 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),));
?>


<?php $_smarty_tpl->_subTemplateRender("file:modules/DynamicFields/templates/Fields/Forms/coreTop.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_DEFAULT_VALUE"),$_smarty_tpl);?>
:</td>
	<td>
	<?php if ($_smarty_tpl->tpl_vars['hideLevel']->value < 5) {?>
		<input type='text' name='default' id='default' value='<?php echo $_smarty_tpl->tpl_vars['vardef']->value['default'];?>
' maxlength='<?php echo (($tmp = $_smarty_tpl->tpl_vars['vardef']->value['len'] ?? null)===null||$tmp==='' ? 50 ?? null : $tmp);?>
'>
	<?php } else { ?>
		<input type='hidden' id='default' name='default' value='<?php echo $_smarty_tpl->tpl_vars['vardef']->value['default'];?>
'><?php echo $_smarty_tpl->tpl_vars['vardef']->value['default'];?>

	<?php }?>
	</td>
</tr>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_MAX_SIZE"),$_smarty_tpl);?>
:</td>
	<td>
	<?php if ($_smarty_tpl->tpl_vars['hideLevel']->value < 5) {?>
		<input type='text' name='len' id='field_len' value='<?php echo (($tmp = $_smarty_tpl->tpl_vars['vardef']->value['len'] ?? null)===null||$tmp==='' ? 25 ?? null : $tmp);?>
' onchange="forceRange(this,1,255);changeMaxLength(document.getElementById('default'),this.value);">
		<input type='hidden' id="orig_len" name='orig_len' value='<?php echo $_smarty_tpl->tpl_vars['vardef']->value['len'];?>
'>
		<?php if ($_smarty_tpl->tpl_vars['action']->value == "saveSugarField") {?>
		  <input type='hidden' name='customTypeValidate' id='customTypeValidate' value='<?php echo (($tmp = $_smarty_tpl->tpl_vars['vardef']->value['len'] ?? null)===null||$tmp==='' ? 25 ?? null : $tmp);?>
' 
		      onchange="if (parseInt(document.getElementById('field_len').value) < parseInt(document.getElementById('orig_len').value)) return confirm(SUGAR.language.get('ModuleBuilder', 'LBL_CONFIRM_LOWER_LENGTH')); return true;" > 
		<?php }?>
		
		<?php echo '<script'; ?>
>
		function forceRange(field, min, max){
			field.value = parseInt(field.value);
			if(field.value == 'NaN')field.value = max;
			if(field.value > max) field.value = max;
			if(field.value < min) field.value = min;
		}
		function changeMaxLength(field, length){
			field.maxLength = parseInt(length);
			field.value = field.value.substr(0, field.maxLength);
		}
		<?php echo '</script'; ?>
>
		
	<?php } else { ?>
		<input type='hidden' name='len' value='<?php echo $_smarty_tpl->tpl_vars['vardef']->value['len'];?>
'><?php echo $_smarty_tpl->tpl_vars['vardef']->value['len'];?>

	<?php }?>
	</td>
</tr>



<?php $_smarty_tpl->_subTemplateRender("file:modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
