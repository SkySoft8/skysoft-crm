<?php
/* Smarty version 4.5.3, created on 2025-04-04 09:31:49
  from 'C:\Apache24\htdocs\crm2\public\legacy\include\SugarFields\Fields\Base\ListView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67efa705efe095_61780332',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c3bb211fe635b6f7a7482d8d180ecd7d2c87f063' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\SugarFields\\Fields\\Base\\ListView.tpl',
      1 => 1743515289,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67efa705efe095_61780332 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_fetch.php','function'=>'smarty_function_sugar_fetch',),));
?>

<?php echo smarty_function_sugar_fetch(array('object'=>$_smarty_tpl->tpl_vars['parentFieldArray']->value,'key'=>$_smarty_tpl->tpl_vars['col']->value),$_smarty_tpl);?>

<?php }
}
