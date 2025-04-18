<?php
/* Smarty version 4.5.3, created on 2025-04-18 14:23:40
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\Home\Dashlets\JotPadDashlet\JotPadDashlet.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_6802606c3118e9_05192438',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd03fce506644ecc67ece93d7dab48fe01cb20c6e' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\Home\\Dashlets\\JotPadDashlet\\JotPadDashlet.tpl',
      1 => 1744976540,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6802606c3118e9_05192438 (Smarty_Internal_Template $_smarty_tpl) {
?>

<div id='jotpad_<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
' ondblclick='JotPad.edit(this, "<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
")' style='overflow: auto; width: 100%; height: <?php echo $_smarty_tpl->tpl_vars['height']->value;?>
px; border: 1px #ddd solid'><?php echo $_smarty_tpl->tpl_vars['savedText']->value;?>
</div>
<textarea id='jotpad_textarea_<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
' rows="5" onblur='JotPad.blur(this, "<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
")' style='display: none; width: 100%; height: <?php echo $_smarty_tpl->tpl_vars['height']->value;?>
px; overflow: auto'></textarea><?php }
}
