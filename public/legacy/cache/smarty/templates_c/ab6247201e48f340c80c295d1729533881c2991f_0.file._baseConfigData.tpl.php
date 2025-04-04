<?php
/* Smarty version 4.5.3, created on 2025-04-03 14:57:05
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\Emails\templates\_baseConfigData.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67eea1c1668452_97284217',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ab6247201e48f340c80c295d1729533881c2991f' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\Emails\\templates\\_baseConfigData.tpl',
      1 => 1743515289,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67eea1c1668452_97284217 (Smarty_Internal_Template $_smarty_tpl) {
?>
SUGAR.email2.composeLayout.charsets = <?php echo $_smarty_tpl->tpl_vars['emailCharsets']->value;?>
;
SUGAR.default_inbound_accnt_id = '<?php echo $_smarty_tpl->tpl_vars['defaultOutID']->value;?>
';
if(!SUGAR.email2.userPrefs) {
    var userPrefs = SUGAR.email2.userPrefs = <?php echo $_smarty_tpl->tpl_vars['userPrefs']->value;?>
;
}
SUGAR.email2.signatures = <?php echo $_smarty_tpl->tpl_vars['defaultSignature']->value;?>
;
<?php echo $_smarty_tpl->tpl_vars['tinyMCE']->value;?>

linkBeans = <?php echo $_smarty_tpl->tpl_vars['linkBeans']->value;?>
;
<?php echo $_smarty_tpl->tpl_vars['lang']->value;?>

<?php }
}
