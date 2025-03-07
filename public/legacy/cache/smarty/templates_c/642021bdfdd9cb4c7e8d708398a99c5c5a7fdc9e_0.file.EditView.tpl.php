<?php
/* Smarty version 4.5.3, created on 2025-03-07 13:50:51
  from 'C:\Apache24\htdocs\crm\public\legacy\include\SugarFields\Fields\Parent\EditView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67caf9bbc858e0_67963641',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '642021bdfdd9cb4c7e8d708398a99c5c5a7fdc9e' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\SugarFields\\Fields\\Parent\\EditView.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67caf9bbc858e0_67963641 (Smarty_Internal_Template $_smarty_tpl) {
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
<select name='parent_type' tabindex="<?php echo $_smarty_tpl->tpl_vars['tabindex']->value;?>
" id='parent_type' title='<?php echo $_smarty_tpl->tpl_vars['vardef']->value['help'];?>
'  <?php if (!empty($_smarty_tpl->tpl_vars['displayParams']->value['accesskey'])) {?> accesskey='<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['accesskey'];?>
' <?php }?>
onchange='document.{$form_name}.<?php echo smarty_function_sugarvar(array('key'=>'name'),$_smarty_tpl);?>
.value="";document.{$form_name}.parent_id.value=""; changeParentQS("<?php echo smarty_function_sugarvar(array('key'=>'name'),$_smarty_tpl);?>
"); checkParentType(document.{$form_name}.parent_type.value, document.{$form_name}.btn_<?php echo smarty_function_sugarvar(array('key'=>'name'),$_smarty_tpl);?>
);'>
{html_options options=<?php echo smarty_function_sugarvar(array('key'=>'options','string'=>true),$_smarty_tpl);?>
 selected=$fields.parent_type.value sortoptions=true}
</select>

<?php if ($_smarty_tpl->tpl_vars['displayParams']->value['split']) {?>
<br>
<?php }?>
{if empty(<?php echo smarty_function_sugarvar(array('key'=>'options','string'=>true),$_smarty_tpl);?>
[$fields.parent_type.value])}
	{assign var="keepParent" value = 0}
{else}
	{assign var="keepParent" value = 1}
{/if}
<input type="text" name="<?php echo smarty_function_sugarvar(array('key'=>'name'),$_smarty_tpl);?>
" id="<?php echo smarty_function_sugarvar(array('key'=>'name'),$_smarty_tpl);?>
" class="sqsEnabled" tabindex="<?php echo $_smarty_tpl->tpl_vars['tabindex']->value;?>
"
    size="<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['size'];?>
" {if $keepParent}value="<?php echo smarty_function_sugarvar(array('key'=>'value'),$_smarty_tpl);?>
"{/if} autocomplete="off"><input type="hidden" name="<?php echo smarty_function_sugarvar(array('memberName'=>'vardef.id_name','key'=>'name'),$_smarty_tpl);?>
" id="<?php echo smarty_function_sugarvar(array('memberName'=>'vardef.id_name','key'=>'name'),$_smarty_tpl);?>
"
{if $keepParent}value="<?php echo smarty_function_sugarvar(array('memberName'=>'vardef.id_name','key'=>'value'),$_smarty_tpl);?>
"{/if}>
<span class="id-ff multiple selectcrossbtn">
<button type="button" name="btn_<?php echo smarty_function_sugarvar(array('key'=>'name'),$_smarty_tpl);?>
" id="btn_<?php echo smarty_function_sugarvar(array('key'=>'name'),$_smarty_tpl);?>
" tabindex="<?php echo $_smarty_tpl->tpl_vars['tabindex']->value;?>
"
title="{sugar_translate label="<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['accessKeySelectTitle'];?>
"}" class="button firstChild" value="{sugar_translate label="<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['accessKeySelectLabel'];?>
"}"
onclick='open_popup(document.{$form_name}.parent_type.value,600, 400, "<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['initial_filter'];?>
", true, false, <?php echo $_smarty_tpl->tpl_vars['displayParams']->value['popupData'];?>
, "single", true);' <?php if ((isset($_smarty_tpl->tpl_vars['displayParams']->value['javascript']['btn']))) {
echo $_smarty_tpl->tpl_vars['displayParams']->value['javascript']['btn'];
}?>><span class="suitepicon suitepicon-action-select"></span></button><?php if (empty($_smarty_tpl->tpl_vars['displayParams']->value['selectOnly'])) {?><button type="button" name="btn_clr_<?php echo smarty_function_sugarvar(array('key'=>'name'),$_smarty_tpl);?>
" id="btn_clr_<?php echo smarty_function_sugarvar(array('key'=>'name'),$_smarty_tpl);?>
" tabindex="<?php echo $_smarty_tpl->tpl_vars['tabindex']->value;?>
" title="{sugar_translate label="<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['accessKeyClearTitle'];?>
"}" class="button lastChild" onclick="this.form.<?php echo smarty_function_sugarvar(array('key'=>'name'),$_smarty_tpl);?>
.value = ''; this.form.<?php echo smarty_function_sugarvar(array('memberName'=>'vardef.id_name','key'=>'name'),$_smarty_tpl);?>
.value = '';" value="{sugar_translate label="<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['accessKeyClearLabel'];?>
"}" <?php if ((isset($_smarty_tpl->tpl_vars['displayParams']->value['javascript']['btn_clear']))) {
echo $_smarty_tpl->tpl_vars['displayParams']->value['javascript']['btn_clear'];
}?>><span class="suitepicon suitepicon-action-clear"></span></button>
</span>
<?php }?>

{literal}
<?php echo '<script'; ?>
 type="text/javascript">
if (typeof(changeParentQS) == 'undefined'){
function changeParentQS(field) {
    if(typeof sqs_objects == 'undefined') {
       return;
    }
	field = YAHOO.util.Dom.get(field);
    var form = field.form;
    var sqsId = form.id + "_" + field.id;
    var typeField =  form.elements.parent_type;
    var new_module = typeField.value;
    //Update the SQS globals to reflect the new module choice
    if (typeof(QSFieldsArray[sqsId]) != 'undefined')
    {
        QSFieldsArray[sqsId].sqs.modules = new Array(new_module);
    }
	if(typeof QSProcessedFieldsArray != 'undefined')
    {
	   QSProcessedFieldsArray[sqsId] = false;
    }
    if(sqs_objects[sqsId] == undefined){
    	return;
    }
    sqs_objects[sqsId]["modules"] = new Array(new_module);
    if(typeof(disabledModules) != 'undefined' && typeof(disabledModules[new_module]) != 'undefined') {
		sqs_objects[sqsId]["disable"] = true;
		field.readOnly = true;
	} else {
		sqs_objects[sqsId]["disable"] = false;
		field.readOnly = false;
    }
    enableQS(false);
}}
<?php echo '</script'; ?>
>
<?php echo $_smarty_tpl->tpl_vars['displayParams']->value['disabled_parent_types'];?>

<?php echo $_smarty_tpl->tpl_vars['quickSearchCode']->value;?>

<?php echo '<script'; ?>
>
//change this in case it wasn't the default on editing existing items.
$(document).ready(function(){
	changeParentQS("parent_name")
});
<?php echo '</script'; ?>
>
{/literal}
<?php }
}
