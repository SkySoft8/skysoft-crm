<?php
/* Smarty version 4.5.3, created on 2025-02-17 12:05:36
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\DynamicFields\templates\Fields\Forms\bool.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67b326108456b5_51590488',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c5eb740ef1999a77732d9ec7622f71d9d560d450' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\DynamicFields\\templates\\Fields\\Forms\\bool.tpl',
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
function content_67b326108456b5_51590488 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),));
?>


<?php $_smarty_tpl->_subTemplateRender("file:modules/DynamicFields/templates/Fields/Forms/coreTop.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
<tr><td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_DEFAULT_VALUE"),$_smarty_tpl);?>
:</td><td><input type='checkbox' id='default' name='default' value=1 <?php if (!empty($_smarty_tpl->tpl_vars['vardef']->value['default'])) {?>checked<?php }?> <?php if ($_smarty_tpl->tpl_vars['hideLevel']->value > 5) {?>disabled<?php }?> /><?php if ($_smarty_tpl->tpl_vars['hideLevel']->value > 5) {?><input type='hidden' name='default' value='<?php echo $_smarty_tpl->tpl_vars['vardef']->value['default'];?>
'><?php }?></td></tr>
<?php $_smarty_tpl->_subTemplateRender("file:modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
