<?php
/* Smarty version 4.5.3, created on 2025-11-07 15:42:36
  from 'C:\Apache\Apache24\htdocs\suitecrm\public\legacy\themes\suite8\include\MySugar\tpls\actions_menu.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_690e136c94cf98_62069900',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6bb9d3b2b687043bdbb542bc19f719f40a057de4' => 
    array (
      0 => 'C:\\Apache\\Apache24\\htdocs\\suitecrm\\public\\legacy\\themes\\suite8\\include\\MySugar\\tpls\\actions_menu.tpl',
      1 => 1762424146,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_690e136c94cf98_62069900 (Smarty_Internal_Template $_smarty_tpl) {
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
