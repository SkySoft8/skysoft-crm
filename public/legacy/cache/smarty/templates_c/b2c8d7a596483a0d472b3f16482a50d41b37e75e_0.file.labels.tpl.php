<?php
/* Smarty version 4.5.3, created on 2025-02-28 17:35:46
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\ModuleBuilder\tpls\labels.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67c1f3f29a3fc9_24330451',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b2c8d7a596483a0d472b3f16482a50d41b37e75e' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\ModuleBuilder\\tpls\\labels.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67c1f3f29a3fc9_24330451 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.html_options.php','function'=>'smarty_function_html_options',),));
?>
<form name = 'editlabels' id = 'editlabels' onsubmit='return false;'>
<input type='hidden' name='module' value='ModuleBuilder'>
<input type='hidden' name='action' value='saveLabels'>
<input type='hidden' name='view_module' value='<?php echo $_smarty_tpl->tpl_vars['view_module']->value;?>
'>
<?php if ($_smarty_tpl->tpl_vars['view_package']->value) {?>
    <input type='hidden' name='view_package' value='<?php echo $_smarty_tpl->tpl_vars['view_package']->value;?>
'>
<?php }
if ($_smarty_tpl->tpl_vars['inPropertiesTab']->value) {?>
<input type='hidden' name='editLayout' value='<?php echo $_smarty_tpl->tpl_vars['editLayout']->value;?>
'>
<?php } elseif ($_smarty_tpl->tpl_vars['mb']->value) {?>
<input class='button' name = 'saveBtn' id = "saveBtn" type='button' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_SAVE'];?>
' onclick='ModuleBuilder.handleSave("editlabels" );'>
<?php } else { ?>
<input class='button' name = 'publishBtn' id = "publishBtn" type='button' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_SAVEPUBLISH'];?>
' onclick='ModuleBuilder.handleSave("editlabels" );'>
<input class='button' name = 'renameModBtn' id = "renameModBtn" type='button' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_RENAME_MODULE'];?>
'
       onclick='document.location.href = "index.php?action=wizard&module=Studio&wizard=StudioWizard&option=RenameTabs"'>
<?php }
if (!empty($_smarty_tpl->tpl_vars['labels_choice']->value)) {?>
<div style="float: right">
            <?php echo smarty_function_html_options(array('name'=>'labels','options'=>$_smarty_tpl->tpl_vars['labels_choice']->value,'selected'=>$_smarty_tpl->tpl_vars['labels_current']->value,'onchange'=>'this.form.action.value="EditLabels";ModuleBuilder.handleSave("editlabels")'),$_smarty_tpl);?>

            </div>
<?php }?>
<hr >
<input type='hidden' name='to_pdf' value='1'>

<table class='mbLBL'>
    <tr>
        <td align="right" style="padding: 0 1em 0 0">
            <?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_LANGUAGE'];?>

        </td>
        <td align='left'>
	<?php echo smarty_function_html_options(array('name'=>'selected_lang','options'=>$_smarty_tpl->tpl_vars['available_languages']->value,'selected'=>$_smarty_tpl->tpl_vars['selected_lang']->value,'onchange'=>'this.form.action.value="EditLabels";ModuleBuilder.handleSave("editlabels")'),$_smarty_tpl);?>

        </td>
	</tr>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['MOD_LABELS']->value, 'label', false, 'key');
$_smarty_tpl->tpl_vars['label']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['label']->value) {
$_smarty_tpl->tpl_vars['label']->do_else = false;
?>
    <tr>
        <td align="right" style="padding: 0 1em 0 0"><?php echo $_smarty_tpl->tpl_vars['key']->value;?>
:</td>
        <td><input type='hidden' name='label_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
' id='label_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
' value='no_change'><input id='input_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
' onchange='document.getElementById("label_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
").value = this.value; ModuleBuilder.state.isDirty=true;' value='<?php echo $_smarty_tpl->tpl_vars['label']->value;?>
' size='60'></td>
    </tr>
    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

</table>
<?php if ($_smarty_tpl->tpl_vars['inPropertiesTab']->value) {?>
    <input class='button' type='button' value='<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_LABEL'];?>
' onclick="ModuleBuilder.hidePropertiesTab();">
<?php }?>
</form>
<?php echo '<script'; ?>
>
    //ModuleBuilder.helpRegisterByID('editlabels', 'a');
    ModuleBuilder.helpRegister('editlabels');
    ModuleBuilder.helpSetup('labelsHelp','default');
<?php echo '</script'; ?>
>
<?php }
}
