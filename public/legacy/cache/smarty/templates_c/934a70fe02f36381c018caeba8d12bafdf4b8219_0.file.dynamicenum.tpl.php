<?php
/* Smarty version 4.5.3, created on 2025-02-17 12:02:58
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\DynamicFields\templates\Fields\Forms\dynamicenum.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67b32572035e66_95511004',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '934a70fe02f36381c018caeba8d12bafdf4b8219' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\DynamicFields\\templates\\Fields\\Forms\\dynamicenum.tpl',
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
function content_67b32572035e66_95511004 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.html_options.php','function'=>'smarty_function_html_options',),));
?>

 <?php $_smarty_tpl->_subTemplateRender("file:modules/DynamicFields/templates/Fields/Forms/coreTop.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<tr>
	<td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"LBL_DROP_DOWN_LIST"),$_smarty_tpl);?>
:</td>
	<td>
	<?php if ($_smarty_tpl->tpl_vars['hideLevel']->value < 5 && empty($_smarty_tpl->tpl_vars['vardef']->value['function'])) {?>
		<?php echo smarty_function_html_options(array('name'=>"options",'id'=>"options",'selected'=>$_smarty_tpl->tpl_vars['selected_dropdown']->value,'values'=>$_smarty_tpl->tpl_vars['dropdowns']->value,'output'=>$_smarty_tpl->tpl_vars['dropdowns']->value,'onChange'=>"ModuleBuilder.dropdownChanged(this.value);"),$_smarty_tpl);
if (!$_smarty_tpl->tpl_vars['uneditable']->value) {?><br><input type='button' value='<?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"LBL_BTN_EDIT"),$_smarty_tpl);?>
' class='button' onclick="ModuleBuilder.moduleDropDown(this.form.options.value, this.form.options.value);">&nbsp;<input type='button' value='<?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"LBL_BTN_ADD"),$_smarty_tpl);?>
' class='button' onclick="ModuleBuilder.moduleDropDown('', this.form.name.value);"><?php }?>
	<?php } else { ?>
		<input type='hidden' name='options' value='<?php echo $_smarty_tpl->tpl_vars['selected_dropdown']->value;?>
'><?php echo $_smarty_tpl->tpl_vars['selected_dropdown']->value;?>

	<?php }?>
	</td>
</tr>
<tr>
    <td class='mbLBL' ><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_PARENT_ENUM"),$_smarty_tpl);?>
:</td>
    <td>
           <input type="text" id="parentenum"  name="parentenum" value="<?php echo $_smarty_tpl->tpl_vars['vardef']->value['parentenum'];?>
" />
    </td>
</tr>
<tr>
	<td class='mbLBL' ><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_MASS_UPDATE"),$_smarty_tpl);?>
:</td>
	<td>
	<?php if ($_smarty_tpl->tpl_vars['hideLevel']->value < 5) {?>
		<input type="checkbox" id="massupdate"  name="massupdate" value="1" <?php if (!empty($_smarty_tpl->tpl_vars['vardef']->value['massupdate'])) {?>checked<?php }?>/>
	<?php } else { ?>
		<input type="checkbox" id="massupdate"  name="massupdate" value="1" disabled <?php if (!empty($_smarty_tpl->tpl_vars['vardef']->value['massupdate'])) {?>checked<?php }?>/>
	<?php }?>
	</td>
</tr>
<?php $_smarty_tpl->_subTemplateRender("file:modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
