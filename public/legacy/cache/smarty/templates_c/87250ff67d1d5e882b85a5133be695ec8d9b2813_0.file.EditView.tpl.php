<?php
/* Smarty version 4.5.3, created on 2025-03-03 15:09:47
  from 'C:\Apache24\htdocs\crm\public\legacy\include\SugarFields\Fields\Datetimecombo\EditView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67c5c63b05e9a4_93460223',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '87250ff67d1d5e882b85a5133be695ec8d9b2813' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\SugarFields\\Fields\\Datetimecombo\\EditView.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67c5c63b05e9a4_93460223 (Smarty_Internal_Template $_smarty_tpl) {
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

<?php $_smarty_tpl->_assignInScope('flag_field', ($_smarty_tpl->tpl_vars['vardef']->value['name']).('_flag'));?>
<table border="0" cellpadding="0" cellspacing="0" class="dateTime">
<tr valign="middle">
<td nowrap class="dateTimeComboColumn datecalendar">
<input autocomplete="off" type="text" id="<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_date" class="datetimecombo_date" value="{$fields[<?php echo smarty_function_sugarvar(array('key'=>'name','stringFormat'=>true),$_smarty_tpl);?>
].value}" size="11" maxlength="10" title='<?php echo $_smarty_tpl->tpl_vars['vardef']->value['help'];?>
' tabindex="<?php echo $_smarty_tpl->tpl_vars['tabindex']->value;?>
" onblur="combo_<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
.update();" onchange="combo_<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
.update(); <?php if ((isset($_smarty_tpl->tpl_vars['displayParams']->value['updateCallback']))) {
echo $_smarty_tpl->tpl_vars['displayParams']->value['updateCallback'];
}?>"   <?php if (!empty($_smarty_tpl->tpl_vars['displayParams']->value['accesskey'])) {?> accesskey='<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['accesskey'];?>
' <?php }?> >
	<button type="button" id="<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_trigger" class="btn calendarstart" onclick="return false;">		
		<span alt="{$APP.LBL_ENTER_DATE}">{sugar_getimage name="calendar"} </span>
	</button>
<?php if (empty($_smarty_tpl->tpl_vars['displayParams']->value['splitDateTime'])) {?>
</td>
<td nowrap class="dateTimeComboColumn dateTimeSection">
<?php } else { ?>
<br>
<?php }?>
<div id="<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_time_section" class="datetimecombo_time_section"></div>
<?php if ($_smarty_tpl->tpl_vars['displayParams']->value['showNoneCheckbox']) {
echo '<script'; ?>
 type="text/javascript">
function set_<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_values(form) {ldelim}
 if(form.<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_flag.checked)  {ldelim}
	form.<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_flag.value=1;
	form.<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
.value="";
	form.<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
.readOnly=true;
 {rdelim} else  {ldelim}
	form.<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_flag.value=0;
	form.<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
.readOnly=false;
 {rdelim}
{rdelim}
<?php echo '</script'; ?>
>
<?php }?>
</td>
</tr>
<?php if ($_smarty_tpl->tpl_vars['displayParams']->value['showFormats']) {?>
<tr valign="middle">
<td nowrap>
<span class="dateFormat">{$USER_DATEFORMAT}</span>
</td>
<td nowrap>
<span class="dateFormat">{$TIME_FORMAT}</span>
</td>
</tr>
<?php }?>
</table>
<?php if (!empty($_smarty_tpl->tpl_vars['displayParams']->value['originalFieldName'])) {?>
<input type="hidden" class="DateTimeCombo" id="<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
" name="<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['originalFieldName'];?>
" value="{$fields[<?php echo smarty_function_sugarvar(array('key'=>'name','stringFormat'=>true),$_smarty_tpl);?>
].value}">
<?php } else { ?>
<input type="hidden" class="DateTimeCombo" id="<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
" name="<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
" value="{$fields[<?php echo smarty_function_sugarvar(array('key'=>'name','stringFormat'=>true),$_smarty_tpl);?>
].value}">
<?php }
echo '<script'; ?>
 type="text/javascript" src="{sugar_getjspath file="include/SugarFields/Fields/Datetimecombo/Datetimecombo.js"}"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript">
var combo_<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
 = new Datetimecombo("{$fields[<?php echo smarty_function_sugarvar(array('key'=>'name','stringFormat'=>true),$_smarty_tpl);?>
].value}", "<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
", "{$TIME_FORMAT}", "<?php echo $_smarty_tpl->tpl_vars['tabindex']->value;?>
", '<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['showNoneCheckbox'];?>
', false, true);
//Render the remaining widget fields
text = combo_<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
.html('<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['updateCallback'];?>
');
document.getElementById('<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_time_section').innerHTML = text;

//Call eval on the update function to handle updates to calendar picker object
eval(combo_<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
.jsscript('<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['updateCallback'];?>
'));

addToValidateBinaryDependency('{$form_name}',"<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_hours", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_HOURS}" ,"<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_date");
addToValidateBinaryDependency('{$form_name}', "<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_minutes", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_MINUTES}" ,"<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_date");
addToValidateBinaryDependency('{$form_name}', "<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_meridiem", 'alpha', false, "{$APP.ERR_MISSING_REQUIRED_FIELDS} {$APP.LBL_MERIDIEM}","<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_date");

YAHOO.util.Event.onDOMReady(function()
{ldelim}

	Calendar.setup ({ldelim}
	onClose : update_<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
,
	inputField : "<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_date",
    form : "<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['formName'];?>
",
	ifFormat : "{$CALENDAR_FORMAT}",
	daFormat : "{$CALENDAR_FORMAT}",
	button : "<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
_trigger",
	singleClick : true,
	step : 1,
	weekNumbers: false,
        startWeekday: {$CALENDAR_FDOW|default:'0'},
	comboObject: combo_<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>

	{rdelim});

	//Call update for first time to round hours and minute values
	combo_<?php echo $_smarty_tpl->tpl_vars['idname']->value;?>
.update(false);

{rdelim}); 
<?php echo '</script'; ?>
>
<?php }
}
