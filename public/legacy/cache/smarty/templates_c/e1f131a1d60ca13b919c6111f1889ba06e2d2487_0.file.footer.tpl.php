<?php
/* Smarty version 4.5.3, created on 2025-03-07 13:50:52
  from 'C:\Apache24\htdocs\crm\public\legacy\themes\suite8\include\EditView\footer.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67caf9bc2f8309_17127285',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e1f131a1d60ca13b919c6111f1889ba06e2d2487' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\themes\\suite8\\include\\EditView\\footer.tpl',
      1 => 1730388414,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67caf9bc2f8309_17127285 (Smarty_Internal_Template $_smarty_tpl) {
?>{*
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
*}

<?php echo '<script'; ?>
 language="javascript">
    var _form_id = '{$form_id}';
    {literal}
    SUGAR.util.doWhen(function(){
        _form_id = (_form_id == '') ? 'EditView' : _form_id;
        return document.getElementById(_form_id) != null;
    }, SUGAR.themes.actionMenu);
    {/literal}
<?php echo '</script'; ?>
>
{assign var='place' value="_FOOTER"} <!-- to be used for id for buttons with custom code in def files-->
<?php if (empty($_smarty_tpl->tpl_vars['form']->value['button_location']) || $_smarty_tpl->tpl_vars['form']->value['button_location'] == 'bottom') {?>

<?php }?>
</form>
<?php if ($_smarty_tpl->tpl_vars['externalJSFile']->value) {?>
{sugar_include include=$externalJSFile}
<?php }?>

{$set_focus_block}

<?php if ((isset($_smarty_tpl->tpl_vars['scriptBlocks']->value))) {?>
<!-- Begin Meta-Data Javascript -->
<?php echo $_smarty_tpl->tpl_vars['scriptBlocks']->value;?>

<!-- End Meta-Data Javascript -->
<?php }
echo '<script'; ?>
>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
<?php echo '</script'; ?>
>
<?php }
}
