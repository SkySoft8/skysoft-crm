<?php
/* Smarty version 4.5.3, created on 2025-02-17 12:05:41
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\DynamicFields\templates\Fields\Forms\date.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67b32615908497_53694476',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fd1c2a8710b52396050b152929f94f62298f9f06' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\DynamicFields\\templates\\Fields\\Forms\\date.tpl',
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
function content_67b32615908497_53694476 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.html_options.php','function'=>'smarty_function_html_options',),));
$_smarty_tpl->_subTemplateRender("file:modules/DynamicFields/templates/Fields/Forms/coreTop.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_DEFAULT_VALUE"),$_smarty_tpl);?>
:</td>
	<td>
	<?php if ($_smarty_tpl->tpl_vars['hideLevel']->value < 5) {?>
		<?php echo smarty_function_html_options(array('id'=>'default','name'=>'default','options'=>$_smarty_tpl->tpl_vars['default_values']->value,'selected'=>$_smarty_tpl->tpl_vars['vardef']->value['display_default']),$_smarty_tpl);?>

	<?php } else { ?>
		<input type='hidden' id='default' name='default' value='$vardef.display_default'><?php echo $_smarty_tpl->tpl_vars['vardef']->value['display_default'];?>

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
$_smarty_tpl->_subTemplateRender("file:modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
