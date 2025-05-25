<?php
/* Smarty version 4.5.3, created on 2025-05-23 12:01:21
  from 'C:\Apache24\htdocs\crm\public\legacy\include\SugarFields\Fields\Currency\ListView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_68306391ac63f5_47217183',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8595d4cb7d173db864ec75ac5477d6c546dc224f' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\SugarFields\\Fields\\Currency\\ListView.tpl',
      1 => 1744976539,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68306391ac63f5_47217183 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_currency_format.php','function'=>'smarty_function_sugar_currency_format',),));
?>

<?php echo smarty_function_sugar_currency_format(array('var'=>$_smarty_tpl->tpl_vars['amount']->value,'currency_id'=>$_smarty_tpl->tpl_vars['currency_id']->value,'currency_symbol'=>$_smarty_tpl->tpl_vars['currency_symbol']->value),$_smarty_tpl);
}
}
