<?php
/* Smarty version 4.5.3, created on 2025-03-14 15:46:30
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\ModuleBuilder\tpls\MBModule\Menu.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67d44f564aeb28_21960592',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd48a2f51943f154eb0001d066e9c1f33f6898f50' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\ModuleBuilder\\tpls\\MBModule\\Menu.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67d44f564aeb28_21960592 (Smarty_Internal_Template $_smarty_tpl) {
echo '<?php'; ?>

/**
 *
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
 * Copyright (C) 2011 - 2018 SalesAgility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
 * reasonably feasible for technical reasons, the Appropriate Legal Notices must
 * display the words "Powered by SugarCRM" and "Supercharged by SuiteCRM".
 */

 if (!defined('sugarEntry') || !sugarEntry) {
    die('Not A Valid Entry Point');
}

global $mod_strings, $app_strings, $sugar_config;
 
if(ACLController::checkAccess('<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
', 'edit', true)){
    $module_menu[]=array('index.php?module=<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
&action=EditView&return_module=<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
&return_action=DetailView', $mod_strings['LNK_NEW_RECORD'], 'Add', '<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
');
}
<?php if ($_smarty_tpl->tpl_vars['showvCard']->value) {?>if(ACLController::checkAccess('<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
', 'edit', true)){
    $module_menu[]=array('index.php?module=<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
&action=ImportVCard', $mod_strings['LNK_IMPORT_VCARD'], 'Create_Contact_Vcard', '<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
');
}<?php }?>
if(ACLController::checkAccess('<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
', 'list', true)){
    $module_menu[]=array('index.php?module=<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
&action=index&return_module=<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
&return_action=DetailView', $mod_strings['LNK_LIST'],'View', '<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
');
}
<?php if ($_smarty_tpl->tpl_vars['showimport']->value) {?>if(ACLController::checkAccess('<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
', 'import', true)){
    $module_menu[]=array('index.php?module=Import&action=Step1&import_module=<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
&return_module=<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
&return_action=index', $app_strings['LBL_IMPORT'], 'Import', '<?php echo $_smarty_tpl->tpl_vars['moduleName']->value;?>
');
}<?php }
}
}
