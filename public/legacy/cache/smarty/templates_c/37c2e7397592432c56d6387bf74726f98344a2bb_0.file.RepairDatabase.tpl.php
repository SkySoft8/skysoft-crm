<?php
/* Smarty version 4.5.3, created on 2025-04-23 14:26:10
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\Administration\templates\RepairDatabase.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_6808f882255412_14042720',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '37c2e7397592432c56d6387bf74726f98344a2bb' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\Administration\\templates\\RepairDatabase.tpl',
      1 => 1744976540,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6808f882255412_14042720 (Smarty_Internal_Template $_smarty_tpl) {
?>
<h3 class="error" style="width:100%"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_REPAIR_DATABASE_DIFFERENCES'];?>
</h3>
<p><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_REPAIR_DATABASE_TEXT'];?>
</p>
<form name="RepairDatabaseForm" method="post">
<input type="hidden" name="module" value="Administration"/>
<input type="hidden" name="action" value="repairDatabase"/>
<input type="hidden" name="raction" value="execute"/>
<textarea name="sql" rows="14" cols="150" id="repairsql"><?php echo $_smarty_tpl->tpl_vars['qry_str']->value;?>
</textarea>
<br/>
<input type="button" class="button" value="<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_REPAIR_DATABASE_EXECUTE'];?>
" onClick="document.RepairDatabaseForm.submit();"/> 
<input type="button" class="button" value="<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_REPAIR_DATABASE_EXPORT'];?>
" onClick="document.RepairDatabaseForm.raction.value='export'; document.RepairDatabaseForm.submit();"/>
<?php echo '<script'; ?>
>document.getElementById('repairsql').scrollIntoView(false);<?php echo '</script'; ?>
>
<?php }
}
