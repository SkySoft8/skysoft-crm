<?php
/* Smarty version 4.5.3, created on 2025-03-07 13:23:40
  from 'C:\Apache24\htdocs\crm\public\legacy\include\SugarFields\Fields\Datetime\EditView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67caf35c986a17_64022067',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6c931ce57bb9a03fa90f68c351e685df48409c16' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\SugarFields\\Fields\\Datetime\\EditView.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67caf35c986a17_64022067 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugarvar.php','function'=>'smarty_function_sugarvar',),));
?>
{*
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
<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'idname', 'idname', null);
echo smarty_function_sugarvar(array('key'=>'name'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
if (!empty($_smarty_tpl->tpl_vars['displayParams']->value['idName'])) {?>
    <?php $_smarty_tpl->_assignInScope('idname', $_smarty_tpl->tpl_vars['displayParams']->value['idName']);
}?>
<span class="dateTime">
{assign var=date_value value=<?php echo smarty_function_sugarvar(array('key'=>'value','string'=>true),$_smarty_tpl);?>
 }
<input class="date_input" autocomplete="off" type="text" name="<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
" id="<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
" value="{$date_value}" title='<?php echo $_smarty_tpl->tpl_vars['vardef']->value['help'];?>
' <?php echo $_smarty_tpl->tpl_vars['displayParams']->value['field'];?>
 tabindex='<?php echo $_smarty_tpl->tpl_vars['tabindex']->value;?>
' <?php if (!empty($_smarty_tpl->tpl_vars['displayParams']->value['accesskey'])) {?> accesskey='<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['accesskey'];?>
' <?php }?>   size="11" maxlength="10" >
<?php if (!$_smarty_tpl->tpl_vars['displayParams']->value['hiddeCalendar']) {?>
    <span class="datetimeicon" id="<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_trigger" onclick="return false;">
        {sugar_getimage name="calendar" attr='border="0" ' alt="{$APP.LBL_ENTER_DATE}"}
    </span>
<?php }
if ($_smarty_tpl->tpl_vars['displayParams']->value['showFormats']) {?>
&nbsp;(<span class="dateFormat">{$USER_DATEFORMAT}</span>)
<?php }?>
</span>
<?php if (!$_smarty_tpl->tpl_vars['displayParams']->value['hiddeCalendar']) {
echo '<script'; ?>
 type="text/javascript">
Calendar.setup ({ldelim}
inputField : "<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
",
form : "<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['formName'];?>
",
ifFormat : "{$CALENDAR_FORMAT}",
daFormat : "{$CALENDAR_FORMAT}",
button : "<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_trigger",
singleClick : true,
dateStr : "{$date_value}",
startWeekday: {$CALENDAR_FDOW|default:'0'},
step : 1,
weekNumbers:false
{rdelim}
);
<?php echo '</script'; ?>
>
<?php }
}
}
