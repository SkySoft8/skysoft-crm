<?php
/* Smarty version 4.5.3, created on 2025-05-23 12:01:23
  from 'C:\Apache24\htdocs\crm\public\legacy\themes\suite8\include\MySugar\tpls\actions_menu.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_683063931a0537_14169906',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1b5c5c80a7523fca3d22f6a55c4041deaf5dbe00' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\themes\\suite8\\include\\MySugar\\tpls\\actions_menu.tpl',
      1 => 1744976541,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_683063931a0537_14169906 (Smarty_Internal_Template $_smarty_tpl) {
?><ul class="dropdown-menu tab-actions">
    <?php if (!$_smarty_tpl->tpl_vars['lock_homepage']->value) {?>

        <li>
            <input class="button addDashlets" type="button" name="Edit"  data-toggle="modal" data-target=".modal-add-dashlet" value="<?php echo $_smarty_tpl->tpl_vars['lblAddDashlets']->value;?>
">
        </li>
        <li>
            <input class="button addDashboard" type="button" name="Edit"  data-toggle="modal" data-target=".modal-add-dashboard" value="<?php echo $_smarty_tpl->tpl_vars['lblAddTab']->value;?>
">
        </li>
        <li>
            <input class="button addDashboard" type="button" name="Edit"  data-toggle="modal" data-target=".modal-edit-dashboard" value="<?php echo $_smarty_tpl->tpl_vars['app']->value['LBL_EDIT_TAB'];?>
">
        </li>
    <?php }?>
</ul>
<?php }
}
