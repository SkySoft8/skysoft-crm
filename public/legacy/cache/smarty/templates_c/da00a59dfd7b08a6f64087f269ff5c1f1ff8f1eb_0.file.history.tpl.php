<?php
/* Smarty version 4.5.3, created on 2025-04-07 09:56:45
  from 'C:\Apache24\htdocs\crm2\public\legacy\modules\ModuleBuilder\tpls\history.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67f3a15d34ba79_36647672',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'da00a59dfd7b08a6f64087f269ff5c1f1ff8f1eb' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\modules\\ModuleBuilder\\tpls\\history.tpl',
      1 => 1743515289,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67f3a15d34ba79_36647672 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),));
?>
<table class="tabform" ><tr><th><?php echo smarty_function_sugar_translate(array('label'=>'LBL_HISTORY_TIMESTAMP','module'=>'ModuleBuilder'),$_smarty_tpl);?>
</th><th>&nbsp;</th><th>&nbsp;</th></tr>
<?php if (empty($_smarty_tpl->tpl_vars['snapshots']->value)) {?>
	<tr><td class='mbLBLL'><?php echo smarty_function_sugar_translate(array('label'=>'ERROR_NO_HISTORY','module'=>'ModuleBuilder'),$_smarty_tpl);?>
</td></tr>
<?php }
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['snapshots']->value, 'timestamp', false, 'id');
$_smarty_tpl->tpl_vars['timestamp']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['id']->value => $_smarty_tpl->tpl_vars['timestamp']->value) {
$_smarty_tpl->tpl_vars['timestamp']->do_else = false;
?>
<tr>
	<td class="oddListRowS1"><a onclick="ModuleBuilder.history.preview('<?php echo $_smarty_tpl->tpl_vars['view_module']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['view']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['subpanel']->value;?>
');" href="javascript:void(0);">
	<?php echo $_smarty_tpl->tpl_vars['timestamp']->value;?>
</a></td>
	<td width="1%"><input type='button' value="<?php echo smarty_function_sugar_translate(array('label'=>'LBL_MB_PREVIEW','module'=>'ModuleBuilder'),$_smarty_tpl);?>
" onclick="ModuleBuilder.history.preview('<?php echo $_smarty_tpl->tpl_vars['view_module']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['view']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['subpanel']->value;?>
');"/></td>
	<td width="1%"><input type='button' value="<?php echo smarty_function_sugar_translate(array('label'=>'LBL_MB_RESTORE','module'=>'ModuleBuilder'),$_smarty_tpl);?>
" onclick="ModuleBuilder.history.revert('<?php echo $_smarty_tpl->tpl_vars['view_module']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['view']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['subpanel']->value;?>
');"/></td>
</tr>
<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</table><?php }
}
