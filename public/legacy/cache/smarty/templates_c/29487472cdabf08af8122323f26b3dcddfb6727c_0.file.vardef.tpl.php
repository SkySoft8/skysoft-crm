<?php
/* Smarty version 4.5.3, created on 2025-03-14 15:46:30
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\ModuleBuilder\tpls\MBModule\vardef.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67d44f5638a061_06575353',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '29487472cdabf08af8122323f26b3dcddfb6727c' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\ModuleBuilder\\tpls\\MBModule\\vardef.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67d44f5638a061_06575353 (Smarty_Internal_Template $_smarty_tpl) {
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

$dictionary['<?php echo $_smarty_tpl->tpl_vars['class']->value['name'];?>
'] = array(
    'table' => '<?php echo $_smarty_tpl->tpl_vars['class']->value['table_name'];?>
',
    'audited' => <?php echo $_smarty_tpl->tpl_vars['class']->value['audited'];?>
,
    'inline_edit' => true,
<?php if (!(strstr($_smarty_tpl->tpl_vars['class']->value['templates'],"file"))) {?>
    'duplicate_merge' => true,
<?php }?>
    'fields' => <?php echo $_smarty_tpl->tpl_vars['class']->value['fields_string'];?>
,
    'relationships' => <?php echo $_smarty_tpl->tpl_vars['class']->value['relationships'];?>
,
    'optimistic_locking' => true,
<?php if (!empty($_smarty_tpl->tpl_vars['class']->value['table_name']) && !empty($_smarty_tpl->tpl_vars['class']->value['templates'])) {?>
    'unified_search' => true,
<?php }?>
);
if (!class_exists('VardefManager')) {
        require_once('include/SugarObjects/VardefManager.php');
}
VardefManager::createVardef('<?php echo $_smarty_tpl->tpl_vars['class']->value['name'];?>
', '<?php echo $_smarty_tpl->tpl_vars['class']->value['name'];?>
', array(<?php echo $_smarty_tpl->tpl_vars['class']->value['templates'];?>
));
<?php }
}
