<?php
/* Smarty version 4.5.3, created on 2025-04-08 10:59:54
  from 'C:\Apache24\htdocs\crm2\public\legacy\modules\ModuleBuilder\tpls\editProperty.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67f501aa22ee19_11015101',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cd395766594c4f81b091f42b30760bc198fa0d77' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\modules\\ModuleBuilder\\tpls\\editProperty.tpl',
      1 => 1743515289,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67f501aa22ee19_11015101 (Smarty_Internal_Template $_smarty_tpl) {
?><form name="editProperty" id="editProperty" onsubmit='return false;'>
<input type='hidden' name='module' value='ModuleBuilder'>
<input type='hidden' name='action' value='saveProperty'>
<input type='hidden' name='view_module' value='<?php echo $_smarty_tpl->tpl_vars['view_module']->value;?>
'>
<?php if ((isset($_smarty_tpl->tpl_vars['view_package']->value))) {?><input type='hidden' name='view_package' value='<?php echo $_smarty_tpl->tpl_vars['view_package']->value;?>
'><?php }?>
<input type='hidden' name='subpanel' value='<?php echo $_smarty_tpl->tpl_vars['subpanel']->value;?>
'>
<input type='hidden' name='to_pdf' value='true'>

<?php if ((isset($_smarty_tpl->tpl_vars['MB']->value))) {?>
<input type='hidden' name='MB' value='<?php echo $_smarty_tpl->tpl_vars['MB']->value;?>
'>
<input type='hidden' name='view_package' value='<?php echo $_smarty_tpl->tpl_vars['view_package']->value;?>
'>
<?php }?>


<?php echo '<script'; ?>
>
	function saveAction() {
		for(var i=0;i<document.editProperty.elements.length;i++)
		{
			var field = document.editProperty.elements[i];
			if (field.className.indexOf('save') != -1 )
			{
				if (field.value != 'no_change')
				{
					var property = field.name.substring('editProperty_'.length);
					var id = field.id.substring('editProperty_'.length);
					document.getElementById(id).innerHTML = YAHOO.lang.escapeHTML(field.value);
				}
			}
		}
	}
	

	function switchLanguage( language )
	{

        var request = 'module=ModuleBuilder&action=editProperty&view_module=<?php echo $_smarty_tpl->tpl_vars['editModule']->value;?>
&selected_lang=' + language ;
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['properties']->value, 'property', false, 'key');
$_smarty_tpl->tpl_vars['property']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['property']->value) {
$_smarty_tpl->tpl_vars['property']->do_else = false;
?>
                request += '&id_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
=<?php echo $_smarty_tpl->tpl_vars['property']->value['id'];?>
&name_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
=<?php echo $_smarty_tpl->tpl_vars['property']->value['name'];?>
&title_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
=<?php echo $_smarty_tpl->tpl_vars['property']->value['title'];?>
&label_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
=<?php echo $_smarty_tpl->tpl_vars['property']->value['label'];?>
' ;
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

        ModuleBuilder.getContent( request ) ;
    }

<?php echo '</script'; ?>
>


<table>

	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['properties']->value, 'property', false, 'key');
$_smarty_tpl->tpl_vars['property']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['property']->value) {
$_smarty_tpl->tpl_vars['property']->do_else = false;
?>
	<tr>
		<td width = "50%" align='right'><?php if ((isset($_smarty_tpl->tpl_vars['property']->value['title']))) {
echo $_smarty_tpl->tpl_vars['property']->value['title'];
} else {
echo $_smarty_tpl->tpl_vars['property']->value['name'];
}?>:</td>
		<td>
			<input class='save' type='hidden' name='<?php echo $_smarty_tpl->tpl_vars['property']->value['name'];?>
' id='editProperty_<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['property']->value['id'];?>
' value='no_change'>
			<?php if ((isset($_smarty_tpl->tpl_vars['property']->value['hidden']))) {?>
				<?php echo $_smarty_tpl->tpl_vars['property']->value['value'];?>

			<?php } else { ?>
				<input onchange='document.getElementById("editProperty_<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['property']->value['id'];?>
").value = this.value' value='<?php echo $_smarty_tpl->tpl_vars['property']->value['value'];?>
'>
			<?php }?>
		</td>	
	</tr>
	<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	<tr>
		<td><input class="button" type="Button" name="save" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_LABEL'];?>
" onclick="saveAction(); ModuleBuilder.submitForm('editProperty'); ModuleBuilder.closeAllTabs();"></td>
	</tr>
</table>
</form>

<?php echo '<script'; ?>
>
ModuleBuilder.helpSetup('layoutEditor','property', 'east');
<?php echo '</script'; ?>
>


<?php }
}
