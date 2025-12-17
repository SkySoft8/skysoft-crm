<?php
/* Smarty version 4.5.3, created on 2025-12-17 13:52:34
  from 'C:\Apache\Apache24\htdocs\skysoft-crm\public\legacy\themes\suite8\include\MySugar\tpls\actions_menu.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_6942b5a2288761_07974902',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5dcf2e9bede96fc846d4e4a6da922decb61ea53e' => 
    array (
      0 => 'C:\\Apache\\Apache24\\htdocs\\skysoft-crm\\public\\legacy\\themes\\suite8\\include\\MySugar\\tpls\\actions_menu.tpl',
      1 => 1762424146,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6942b5a2288761_07974902 (Smarty_Internal_Template $_smarty_tpl) {
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
