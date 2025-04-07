<?php
/* Smarty version 4.5.3, created on 2025-04-04 09:57:20
  from 'C:\Apache24\htdocs\crm2\public\legacy\modules\Emails\templates\displayIndicatorField.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67efad007617c6_50860743',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd1b001900681b4478eebf33ad67289b0f4a2f5da' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\modules\\Emails\\templates\\displayIndicatorField.tpl',
      1 => 1743515289,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67efad007617c6_50860743 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="email-indicator">
    <?php if (!empty($_smarty_tpl->tpl_vars['bean']->value)) {?>
        <?php if (!empty($_smarty_tpl->tpl_vars['bean']->value['status']) && $_smarty_tpl->tpl_vars['bean']->value['status'] == 'unread') {?>
            <div class="email-new"></div>
        <?php }?>
        <?php if (!empty($_smarty_tpl->tpl_vars['bean']->value['is_imported']) && !empty($_smarty_tpl->tpl_vars['bean']->value['inbound_email_record']) && $_smarty_tpl->tpl_vars['bean']->value['is_imported'] == true && $_smarty_tpl->tpl_vars['bean']->value['inbound_email_record'] == $_REQUEST['inbound_email_record']) {?>
            <div class="email-imported"><span class="glyphicon glyphicon-ok"></span></div>
        <?php }?>
        <?php if (!empty($_smarty_tpl->tpl_vars['bean']->value['flagged']) && $_smarty_tpl->tpl_vars['bean']->value['flagged'] == 1) {?>
            <span class="email-flagged">!</span>
        <?php }?>
    <?php }?>
</div>
<?php }
}
