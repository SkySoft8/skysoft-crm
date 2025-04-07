<?php
/* Smarty version 4.5.3, created on 2025-04-07 10:00:11
  from 'C:\Apache24\htdocs\crm2\public\legacy\modules\ModuleBuilder\tpls\MBModule\module.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67f3a22b0d8298_32394100',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd7d913f9e03e14b327dbba99a52eba76c19ee936' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\modules\\ModuleBuilder\\tpls\\MBModule\\module.tpl',
      1 => 1743515289,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:modules/ModuleBuilder/tpls/assistantJavascript.tpl' => 1,
  ),
),false)) {
function content_67f3a22b0d8298_32394100 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\Smarty\\plugins\\function.counter.php','function'=>'smarty_function_counter',),));
?>
<link rel="stylesheet" type="text/css" href="modules/ModuleBuilder/tpls/MB.css" />
<form name='CreateModule'>
<input type='hidden' name='module' value='ModuleBuilder'>
<input type='hidden' name='action' value='SaveModule'>
<input type='hidden' name='package' value='<?php echo $_smarty_tpl->tpl_vars['package']->value->name;?>
'>
<input type='hidden' name='original_name' value='<?php echo $_smarty_tpl->tpl_vars['module']->value->name;?>
'>
<input type='hidden' name='duplicate' value='0'>
<input type='hidden' name='to_pdf' value='1'>
<table class='mbLBL' >
	<tr><td></td><td colspan=4><input type='button' name='savebtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_SAVE'];?>
' class='button' onclick="ModuleBuilder.handleSave('CreateModule');">&nbsp;
		<?php if (!empty($_smarty_tpl->tpl_vars['module']->value->name)) {?>
			<input type='button' name='duplicatebtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_DUPLICATE'];?>
' class='button' onclick="document.CreateModule.duplicate.value=1;ModuleBuilder.handleSave('CreateModule');">
			<input type='button' name='viewfieldsbtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_VIEW_FIELDS'];?>
' class='button' onclick="ModuleBuilder.handleSave('CreateModule', ModuleBuilder.moduleViewFields);">
			<input type='button' name='viewrelsbtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_VIEW_RELATIONSHIPS'];?>
' class='button' onclick="ModuleBuilder.handleSave('CreateModule', ModuleBuilder.moduleViewRelationships);">
			<input type='button' name='viewlayoutsbtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_VIEW_LAYOUTS'];?>
' class='button' onclick="ModuleBuilder.handleSave('CreateModule', ModuleBuilder.moduleViewLayouts);">
			&nbsp;<input type='button' name='deletebtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_DELETE'];?>
' class='button' onclick="ModuleBuilder.moduleDelete('<?php echo $_smarty_tpl->tpl_vars['package']->value->name;?>
', '<?php echo $_smarty_tpl->tpl_vars['module']->value->name;?>
');"><?php }?></td></tr>
	<tr>
		<td height='100%'>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr>
	<tr><td class='mbLBL'><b><?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_PACKAGE'];?>
</b></td><td colspan='5'><?php echo $_smarty_tpl->tpl_vars['package']->value->name;?>
</td></tr>
	<tr><td class='mbLBL'><font color="#ff0000"> * </font><b><?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_MODULE_NAME'];?>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></td><td colspan='5'><input type='text' name='name' value='<?php echo $_smarty_tpl->tpl_vars['module']->value->name;?>
' size='36' maxlength='36'></td></tr>
	<tr><td class='mbLBL'><font color="#ff0000"> * </font><b><?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_LABEL'];?>
</b></td><td colspan='5'><input type='text' name='label' value='<?php echo $_smarty_tpl->tpl_vars['module']->value->config['label'];?>
' size='36' maxlength='36'></td></tr>
	<tr>
	<tr>
	   <td class='mbLBL' width='5%' nowrap><?php echo smarty_function_sugar_translate(array('label'=>'LBL_MB_IMPORTABLE','module'=>'ModuleBuilder'),$_smarty_tpl);?>
:</td>
       <td>&nbsp;<input type='checkbox' name='importable' value=1 <?php if (!empty($_smarty_tpl->tpl_vars['module']->value->config['importable'])) {?>checked<?php }?>></td>
    </tr>
	<?php echo smarty_function_counter(array('name'=>'items','assign'=>'items','start'=>0),$_smarty_tpl);?>

	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['module']->value->implementable, 'label', false, 'name');
$_smarty_tpl->tpl_vars['label']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['name']->value => $_smarty_tpl->tpl_vars['label']->value) {
$_smarty_tpl->tpl_vars['label']->do_else = false;
?>
	</tr><tr>
	<td class='mbLBL' width='5%' nowrap><?php echo $_smarty_tpl->tpl_vars['label']->value;?>
:</td>
	<td >&nbsp;<input type='checkbox' name='<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
' value=1 <?php if (!empty($_smarty_tpl->tpl_vars['module']->value->config[$_smarty_tpl->tpl_vars['name']->value])) {?>checked<?php }?>></td>
	<?php echo smarty_function_counter(array('name'=>'items'),$_smarty_tpl);?>
	
	<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	</tr>
	<tr>
        <td class='mbLBL'><font color="#ff0000"> * </font><b><?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_TYPE'];?>
</b></td>
        <?php echo smarty_function_counter(array('name'=>'items','assign'=>'items','start'=>0),$_smarty_tpl);?>

        <td>
            <table id="factory-module">
                <tr<?php if (empty($_smarty_tpl->tpl_vars['module']->value->name)) {?> id="factory_modules"<?php }?>>
                <?php if (empty($_smarty_tpl->tpl_vars['module']->value->name)) {?><input type='hidden' name='type'><?php }?>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['types']->value, 'name', false, 'type');
$_smarty_tpl->tpl_vars['name']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['type']->value => $_smarty_tpl->tpl_vars['name']->value) {
$_smarty_tpl->tpl_vars['name']->do_else = false;
?>
					<?php $_smarty_tpl->_assignInScope('imgurl', ($_smarty_tpl->tpl_vars['type']->value).('_32'));?>
                    <?php if (empty($_smarty_tpl->tpl_vars['module']->value->name) || $_smarty_tpl->tpl_vars['type']->value != 'basic' || count($_smarty_tpl->tpl_vars['module']->value->mbvardefs->templates) == 1) {?>
                        <?php if ($_smarty_tpl->tpl_vars['items']->value%6 == 0 && $_smarty_tpl->tpl_vars['items']->value != 0) {?>
                </tr>
                <tr>
                        <?php }?>
                    <td>
                        <?php if (empty($_smarty_tpl->tpl_vars['module']->value->name)) {?>
                    <td align='center'>
                        <table id='type_<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
' onclick='ModuleBuilder.buttonDown(this,"<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
", "type"); ModuleBuilder.buttonToForm("CreateModule", "type", "type");' class='wizardButton' onmousedown='return false;' onmouseout='ModuleBuilder.buttonOut(this,"<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
", "type");'>
							<tr>
							  <td  align='center'>
								  <a href="javascript:void(0)">
									  <span class="suitepicon suitepicon-module-<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
"></span>
								  </a>
							  </td>
							</tr>
							<tr>
								<td>
									<a href="javascript:void(0)"><?php echo $_smarty_tpl->tpl_vars['name']->value;?>
</a>
								</td>
							</tr>
					    </table>
						<?php echo '<script'; ?>
>ModuleBuilder.buttonAdd('type_<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
', 'type');<?php echo '</script'; ?>
>
					</td>
                    <?php } else { ?>
                    <td align='center'><span class="suitepicon suitepicon-module-<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
"></span><br><?php echo $_smarty_tpl->tpl_vars['name']->value;?>

                    <?php }?>
                    </td>
                    <?php }?>
                <?php echo smarty_function_counter(array('name'=>'items'),$_smarty_tpl);?>
  
                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                </tr>
            </table>
        </td>
	</tr>	
	<tr>
		<td height='100%'>&nbsp;</td><td>&nbsp;</td>
	</tr>
</table>

<?php echo '<script'; ?>
>
addForm('CreateModule');
addToValidate('CreateModule', 'name', 'DBName', true, '<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_JS_VALIDATE_NAME'];?>
');
addToValidate('CreateModule', 'label', 'varchar', true, '<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_JS_VALIDATE_LABEL'];?>
');
addToValidate('CreateModule', 'type', 'varchar', true, '<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_JS_VALIDATE_TYPE'];?>
');
ModuleBuilder.helpRegister('CreateModule');
if(document.getElementById('factory_modules'))
	ModuleBuilder.helpRegisterByID('factory_modules', 'table');
ModuleBuilder.helpSetup('<?php echo $_smarty_tpl->tpl_vars['module']->value->help['group'];?>
','<?php echo $_smarty_tpl->tpl_vars['module']->value->help['default'];?>
');
ModuleBuilder.MBpackage = '<?php echo $_smarty_tpl->tpl_vars['module']->value->package;?>
';
ModuleBuilder.module = '<?php echo $_smarty_tpl->tpl_vars['module']->value->name;?>
';	
<?php echo '</script'; ?>
>

<?php $_smarty_tpl->_subTemplateRender('file:modules/ModuleBuilder/tpls/assistantJavascript.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
