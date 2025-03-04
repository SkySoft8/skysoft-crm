<?php
/* Smarty version 4.5.3, created on 2025-03-04 13:08:08
  from 'C:\Apache24\htdocs\crm\public\legacy\include\MySugar\tpls\dashletsSearchResults.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67c6fb38616324_70094280',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'eed3d9d396216eb851e1fc2a83d7d974b08adb79' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\MySugar\\tpls\\dashletsSearchResults.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67c6fb38616324_70094280 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.counter.php','function'=>'smarty_function_counter',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\modifier.replace.php','function'=>'smarty_modifier_replace',),));
?>
<h4><?php echo $_smarty_tpl->tpl_vars['lblSearchResults']->value;?>
 - <i><?php echo $_smarty_tpl->tpl_vars['searchString']->value;?>
</i>:</h4>
<hr>
<?php if (count($_smarty_tpl->tpl_vars['dashlets']->value)) {?>
<h3><?php echo $_smarty_tpl->tpl_vars['searchCategoryString']->value;?>
</h3>
<table width="95%">
	<?php echo smarty_function_counter(array('assign'=>'rowCounter','start'=>0,'print'=>false),$_smarty_tpl);?>

	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['dashlets']->value, 'module');
$_smarty_tpl->tpl_vars['module']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['module']->value) {
$_smarty_tpl->tpl_vars['module']->do_else = false;
?>
	<?php if ($_smarty_tpl->tpl_vars['rowCounter']->value%2 == 0) {?>
	<tr>
	<?php }?>
		<td width="50%" align="left"><a id="<?php echo $_smarty_tpl->tpl_vars['module']->value['id'];?>
_icon" href="javascript:void(0)" onclick="<?php echo $_smarty_tpl->tpl_vars['module']->value['onclick'];?>
" style="text-decoration:none">
				<span class="suitepicon suitepicon-module-<?php echo smarty_modifier_replace(mb_strtolower((string) $_smarty_tpl->tpl_vars['module']->value['module_name'], 'UTF-8'),'_','-');?>
"></span>&nbsp;
				<span id="mbLBLL" class="mbLBLL"><?php echo $_smarty_tpl->tpl_vars['module']->value['title'];?>
</span></a><br /></td>
	<?php if ($_smarty_tpl->tpl_vars['rowCounter']->value%2 == 1) {?>
	</tr>
	<?php }?>
	<?php echo smarty_function_counter(array(),$_smarty_tpl);?>

	<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</table>
<?php }
}
}
