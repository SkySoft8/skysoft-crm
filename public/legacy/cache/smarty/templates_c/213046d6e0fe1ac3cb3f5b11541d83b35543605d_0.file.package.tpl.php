<?php
/* Smarty version 4.5.3, created on 2025-03-14 15:28:16
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\ModuleBuilder\tpls\MBPackage\package.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67d44b10515d61_59404548',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '213046d6e0fe1ac3cb3f5b11541d83b35543605d' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\ModuleBuilder\\tpls\\MBPackage\\package.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:modules/ModuleBuilder/tpls/assistantJavascript.tpl' => 1,
  ),
),false)) {
function content_67d44b10515d61_59404548 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getimage.php','function'=>'smarty_function_sugar_getimage',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.counter.php','function'=>'smarty_function_counter',),2=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_image.php','function'=>'smarty_function_sugar_image',),3=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getimagepath.php','function'=>'smarty_function_sugar_getimagepath',),));
?>
<form name='CreatePackage' id='CreatePackage'>
<input type='hidden' name='module' value='ModuleBuilder'>
<input type='hidden' name='action' value='SavePackage'>
<input type='hidden' name='duplicate' value='0'>
<input type='hidden' name='to_pdf' value='1'>
<input type='hidden' name='original_name' value='<?php echo (($tmp = $_smarty_tpl->tpl_vars['package']->value->name ?? null)===null||$tmp==='' ? '' ?? null : $tmp);?>
'>

<h2><?php echo (($tmp = $_smarty_tpl->tpl_vars['package']->value->title ?? null)===null||$tmp==='' ? '' ?? null : $tmp);?>
</h2>
<table class='mbTable' >
	<tr><td></td><td><input style="padding-bottom:0px;" type='button' name='savebtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_SAVE'];?>
' class='button' onclick="document.CreatePackage.action.value='SavePackage';ModuleBuilder.handleSave('CreatePackage');">&nbsp;
		<?php if (!empty($_smarty_tpl->tpl_vars['package']->value->name)) {?>
			<input style="padding-bottom:0px;" type='button' name='duplicatebtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_DUPLICATE'];?>
' class='button' onclick="document.CreatePackage.action.value='SavePackage';document.CreatePackage.duplicate.value=1;ModuleBuilder.handleSave('CreatePackage');">
            &nbsp;<input style="padding-bottom:0px;" type='button' name='deploybtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_DEPLOY'];?>
' class='button' onclick="ModuleBuilder.packageDeploy('CreatePackage', <?php echo $_smarty_tpl->tpl_vars['package_already_deployed']->value;?>
);">
			&nbsp;<input style="padding-bottom:0px;" type='button' name='publishbtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_PUBLISH'];?>
' class='button' onclick="ModuleBuilder.packagePublish('CreatePackage');">
			&nbsp;<input style="padding-bottom:0px;" type='button' name='exportbtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_EXP'];?>
' class='button' onclick="ModuleBuilder.packageExport('CreatePackage');">
			&nbsp;<input style="padding-bottom:0px;" type='button' name='deletebtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_DELETE'];?>
' class='button' onclick="ModuleBuilder.packageDelete('<?php echo $_smarty_tpl->tpl_vars['package']->value->name;?>
');"><?php }?></td></tr>
	<tr>
		<td height='100%'>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<?php if (!empty($_smarty_tpl->tpl_vars['package']->value->name)) {?>
	<tr><td class='mbLBL'  ><b><?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_LAST_MODIFIED'];?>
</b></td><td><?php echo $_smarty_tpl->tpl_vars['package']->value->date_modified;?>
</td></tr>
	<?php }?>
	<tr>
		<td class='mbLBL' ><font color="#ff0000"> * </font><b><?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_PACKAGE_NAME'];?>
</b></td><td>
		<input type='text' name='name' size='36' maxlength='36' value='<?php echo $_smarty_tpl->tpl_vars['package']->value->name;?>
'>
		</td>
	</tr>
	<tr>
		<td class='mbLBL' ><b><?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_AUTHOR'];?>
</b></td><td><input type='text' name='author' size='36' maxlength='36' value='<?php echo $_smarty_tpl->tpl_vars['package']->value->author;?>
'></td>
	</tr>

	<tr>

		<td class='mbLBL' ><font color="#ff0000"> * </font><b><?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_KEY'];?>
</b></td>
		<td>
		<?php if (empty($_smarty_tpl->tpl_vars['package']->value->key)) {?>
		<input type='text' name='key' size='5' maxlength='5' value='<?php echo $_smarty_tpl->tpl_vars['package']->value->key;?>
'>
		<?php } else { ?>
			<?php echo $_smarty_tpl->tpl_vars['package']->value->key;?>
<input type='hidden' name='key' size='5' maxlength='5' value='<?php echo $_smarty_tpl->tpl_vars['package']->value->key;?>
'>
		<?php }?>
		</td>
	</tr>

	<tr>
		<td class='mbLBL'  ><b><?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_DESCRIPTION'];?>
</b></td><td><textarea name='description' cols='60' rows='5'><?php echo $_smarty_tpl->tpl_vars['package']->value->description;?>
</textarea></td>
	</tr>

	<tr>
		<td></td><td id='readme'><?php echo smarty_function_sugar_getimage(array('name'=>"advanced_search",'ext'=>".gif",'alt'=>$_smarty_tpl->tpl_vars['mod_strings']->value['LBL_HIDEOPTIONS'],'other_attributes'=>'border="0" id="options" '),$_smarty_tpl);?>
<a style="text-decoration:none" href="javascript: void(0)" onclick ="toggleEl('readmefield');"><b><?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_ADD_README'];?>
</b></a></td>
	</tr>
	<tr>
		<td height='100%'>&nbsp;</td><td>&nbsp;</td>
	</tr>
	<tr id='readmefield' style="display:none;">
		<td></td>
		<td ><textarea name='readme' cols='60' rows='10'><?php echo $_smarty_tpl->tpl_vars['package']->value->readme;?>
</textarea></td>
	</tr>

	<?php if (!empty($_smarty_tpl->tpl_vars['package']->value->name)) {?>

	<tr>
		<td class='mbLBL'><b><?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_MODULES'];?>
</b></td>
		<td >
			<table>
				<tr id="package_modules">
					<?php echo smarty_function_counter(array('name'=>'items','assign'=>'items','start'=>1),$_smarty_tpl);?>

					<td align='center'>
						<table id="new_module" onclick="ModuleBuilder.addModule('<?php echo $_smarty_tpl->tpl_vars['package']->value->name;?>
')" class='wizardButton' onmousedown="ModuleBuilder.buttonDown(this);return false;" onmouseout="ModuleBuilder.buttonOut(this);">
						<tr>
							<td  align='center'>
								<a href="#">
									<span class="suitepicon suitepicon-module-new-module"></span>
								</a>
							</td>
						</tr>
						<tr><td>
						  <a  class='studiolink' href="javascript:void(0)" onclick="ModuleBuilder.addModule('<?php echo $_smarty_tpl->tpl_vars['package']->value->name;?>
')">
						      <?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_NEW_MODULE'];?>
</a>
						</td></tr>
						</table>


					</td>
					<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['package']->value->moduleTypes, 'type', false, 'name');
$_smarty_tpl->tpl_vars['type']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['name']->value => $_smarty_tpl->tpl_vars['type']->value) {
$_smarty_tpl->tpl_vars['type']->do_else = false;
?>
					<?php $_smarty_tpl->_assignInScope('imgurl', ($_smarty_tpl->tpl_vars['type']->value).('_32'));?>
						<?php if ($_smarty_tpl->tpl_vars['items']->value%4 == 0 && $_smarty_tpl->tpl_vars['items']->value != 0) {?>
							</tr><tr>
						<?php }?>
						<td align='center'>
						<table id= "existing_module" onclick="ModuleBuilder.viewModule('<?php echo $_smarty_tpl->tpl_vars['package']->value->name;?>
', '<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
')" class='wizardButton' onmousedown="ModuleBuilder.buttonDown(this);return false;" onmouseout="ModuleBuilder.buttonOut(this);">
						  <tr>
						      <td  align='center'><?php echo smarty_function_sugar_image(array('name'=>$_smarty_tpl->tpl_vars['type']->value,'width'=>48,'height'=>48),$_smarty_tpl);?>
</td>
						  </tr><tr><td align='center'>
						      <a  class='studiolink' href="javascript:void(0)" onclick="ModuleBuilder.viewModule('<?php echo $_smarty_tpl->tpl_vars['package']->value->name;?>
', '<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
')">
				              <?php echo $_smarty_tpl->tpl_vars['name']->value;?>
</a>
				          </td></tr>
				        </table></td>
					<?php echo smarty_function_counter(array('name'=>'items'),$_smarty_tpl);?>

					<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

					</tr>
	</table>
		</td>
	</tr>

	<?php }?>

	<tr>
		<td height='100%'>&nbsp;</td><td>&nbsp;</td>
	</tr>
</table>
</form>

<?php echo '<script'; ?>
>
addForm('CreatePackage');
addToValidate('CreatePackage', 'name', 'DBName', true, '<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_JS_VALIDATE_NAME'];?>
');
addToValidateIsInArray('CreatePackage', 'name', 'in_array', false, '<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_JS_VALIDATE_PACKAGE_NAME'];?>
','<?php echo $_smarty_tpl->tpl_vars['package_labels']->value;?>
', 'u==');
addToValidate('CreatePackage', 'key', 'DBNameRaw', true, '<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_JS_VALIDATE_KEY'];?>
');

ModuleBuilder.helpRegister('CreatePackage');
ModuleBuilder.helpRegisterByID('CreatePackage','td');
if(document.getElementById('package_modules'))
	ModuleBuilder.helpRegisterByID('package_modules', 'table');
ModuleBuilder.helpSetup('<?php echo $_smarty_tpl->tpl_vars['package']->value->help['group'];?>
','<?php echo $_smarty_tpl->tpl_vars['package']->value->help['default'];?>
');
function toggleEl(){
		var display = document.getElementById('readmefield').style.display;
		if(display=='table-row' || display=='inline-block'){
			document.getElementById('options').src = "<?php echo smarty_function_sugar_getimagepath(array('file'=>'advanced_search.gif'),$_smarty_tpl);?>
";
			document.getElementById('readmefield').style.display ='none';
		}else if (display=='none'){
			document.getElementById('options').src = "<?php echo smarty_function_sugar_getimagepath(array('file'=>'basic_search.gif'),$_smarty_tpl);?>
";
			document.getElementById('readmefield').style.display = (navigator.appName=="Microsoft Internet Explorer")? 'inline-block' : 'table-row';
		}
	}
<?php echo '</script'; ?>
>

<?php $_smarty_tpl->_subTemplateRender('file:modules/ModuleBuilder/tpls/assistantJavascript.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
