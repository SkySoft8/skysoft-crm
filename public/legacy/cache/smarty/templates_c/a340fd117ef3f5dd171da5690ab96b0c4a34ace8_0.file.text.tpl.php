<?php
/* Smarty version 4.5.3, created on 2025-03-14 15:32:22
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\DynamicFields\templates\Fields\Forms\text.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67d44c06d113c4_84713782',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a340fd117ef3f5dd171da5690ab96b0c4a34ace8' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\DynamicFields\\templates\\Fields\\Forms\\text.tpl',
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
function content_67d44c06d113c4_84713782 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),));
?>


<?php $_smarty_tpl->_subTemplateRender("file:modules/DynamicFields/templates/Fields/Forms/coreTop.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_LABEL_ROWS"),$_smarty_tpl);?>
:</td>
	<td>
	<?php if ($_smarty_tpl->tpl_vars['hideLevel']->value < 4) {?>
		<input id ="rows" type="text" name="rows" value="<?php echo (($tmp = $_smarty_tpl->tpl_vars['vardef']->value['rows'] ?? null)===null||$tmp==='' ? 4 ?? null : $tmp);?>
">
	<?php } else { ?>
		<input id ="rows" type="hidden" name="rows" value="<?php echo $_smarty_tpl->tpl_vars['vardef']->value['rows'];?>
"><?php echo $_smarty_tpl->tpl_vars['vardef']->value['rows'];?>

	<?php }?>
	</td>
</tr>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_LABEL_COLS"),$_smarty_tpl);?>
:</td>
	<td>
	<?php if ($_smarty_tpl->tpl_vars['hideLevel']->value < 4) {?>
		<input id ="cols" type="text" name="cols" value="<?php echo (($tmp = $_smarty_tpl->tpl_vars['vardef']->value['cols'] ?? null)===null||$tmp==='' ? 20 ?? null : $tmp);?>
">
	<?php } else { ?>
		<input id ="cols" type="hidden" name="cols" value="<?php echo $_smarty_tpl->tpl_vars['vardef']->value['displayParams']['cols'];?>
"><?php echo $_smarty_tpl->tpl_vars['vardef']->value['cols'];?>

	<?php }?>
	</td>
</tr>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_DEFAULT_VALUE"),$_smarty_tpl);?>
:</td>
	<td>
	<?php if ($_smarty_tpl->tpl_vars['hideLevel']->value < 5) {?>
		<textarea name='default' id='default' ><?php echo $_smarty_tpl->tpl_vars['vardef']->value['default'];?>
</textarea>
	<?php } else { ?>
		<textarea name='default' id='default' disabled ><?php echo $_smarty_tpl->tpl_vars['vardef']->value['default'];?>
</textarea>
		<input type='hidden' name='default' value='<?php echo $_smarty_tpl->tpl_vars['vardef']->value['default'];?>
'/>
	<?php }?>
	</td>
</tr>
<?php $_smarty_tpl->_subTemplateRender("file:modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
