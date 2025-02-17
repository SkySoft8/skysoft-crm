<?php
/* Smarty version 4.5.3, created on 2025-02-17 12:05:38
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\DynamicFields\templates\Fields\Forms\currency.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67b32612454d26_63955216',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f8c4cc028eb6a174aabd10194cbc6163a07fc98f' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\DynamicFields\\templates\\Fields\\Forms\\currency.tpl',
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
function content_67b32612454d26_63955216 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_currency_format.php','function'=>'smarty_function_sugar_currency_format',),));
?>

<?php $_smarty_tpl->_subTemplateRender("file:modules/DynamicFields/templates/Fields/Forms/coreTop.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
if ($_smarty_tpl->tpl_vars['range_search_option_enabled']->value) {?>
<tr>	
    <td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_ENABLE_RANGE_SEARCH"),$_smarty_tpl);?>
:</td>
    <td>
        <input type='checkbox' name='enable_range_search' value=1 <?php if (!empty($_smarty_tpl->tpl_vars['vardef']->value['enable_range_search'])) {?>checked<?php }?> <?php if ($_smarty_tpl->tpl_vars['hideLevel']->value > 5) {?>disabled<?php }?> />
        <?php if ($_smarty_tpl->tpl_vars['hideLevel']->value > 5) {?><input type='hidden' name='enable_range_search' value='<?php echo $_smarty_tpl->tpl_vars['vardef']->value['enable_range_search'];?>
'><?php }?>
    </td>	
</tr>
<?php }?>
<tr><td class='mbLBL'><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_DEFAULT_VALUE"),$_smarty_tpl);?>
:</td><td>
<?php if ($_smarty_tpl->tpl_vars['hideLevel']->value < 5) {?>
<input type='text' id='default' name='default' value='<?php echo smarty_function_sugar_currency_format(array('var'=>$_smarty_tpl->tpl_vars['vardef']->value['default'],'currency_symbol'=>false),$_smarty_tpl);?>
'>
<?php echo '<script'; ?>
>
addToValidate('popup_form', 'default', 'float', false,'<?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_DEFAULT_VALUE"),$_smarty_tpl);?>
' );
<?php echo '</script'; ?>
>
<?php } else { ?>
<input type='hidden' name='default' value='<?php echo smarty_function_sugar_currency_format(array('var'=>$_smarty_tpl->tpl_vars['vardef']->value['default'],'currency_symbol'=>false),$_smarty_tpl);?>
'><?php echo smarty_function_sugar_currency_format(array('var'=>$_smarty_tpl->tpl_vars['vardef']->value['default']),$_smarty_tpl);?>

<?php }?>
</td></tr><?php $_smarty_tpl->_subTemplateRender("file:modules/DynamicFields/templates/Fields/Forms/coreBottom.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
