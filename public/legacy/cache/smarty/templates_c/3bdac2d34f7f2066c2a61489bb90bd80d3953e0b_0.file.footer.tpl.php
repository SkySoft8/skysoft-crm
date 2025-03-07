<?php
/* Smarty version 4.5.3, created on 2025-03-07 13:23:41
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\Project\tpls\footer.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67caf35d051939_78320820',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3bdac2d34f7f2066c2a61489bb90bd80d3953e0b' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\Project\\tpls\\footer.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67caf35d051939_78320820 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_button.php','function'=>'smarty_function_sugar_button',),));
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
</form>

<?php if ($_smarty_tpl->tpl_vars['externalJSFile']->value) {?>
	require_once("'".$externalJSFile."'");
<?php }?>

{$set_focus_block}

<?php if ((isset($_smarty_tpl->tpl_vars['scriptBlocks']->value))) {?>
	<!-- Begin Meta-Data Javascript -->
	<?php echo $_smarty_tpl->tpl_vars['scriptBlocks']->value;?>

	<!-- End Meta-Data Javascript -->
<?php }?>

<div class="h3Row" id="scheduler"></div>

<?php echo '<script'; ?>
 type='text/javascript' src='{sugar_getjspath file='include/javascript/popup_helper.js'}'><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="{sugar_getjspath file='cache/include/javascript/sugar_grp_yui2.js'}"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="{sugar_getjspath file='cache/include/javascript/sugar_grp_yui_widgets.js'}"><?php echo '</script'; ?>
>

<?php echo '<script'; ?>
 type="text/javascript">
{literal}

document.getElementById("date_start").value = new Date().toLocaleString();

SUGAR.projects = {};
var projectsLoader = new YAHOO.util.YUILoader({
    require : ["sugar_grp_project"],
    // Bug #48940 Skin always must be blank
    skin: {
        base: 'blank',
        defaultSkin: ''
    },
    onSuccess: function(){

		SUGAR.projects.fill_invitees = function() {
			if (typeof(GLOBAL_REGISTRY) != 'undefined')  {
				SugarWidgetScheduler.fill_invitees(document.EditView);
			}
		}
		var root_div = document.getElementById('scheduler');
		var sugarContainer_instance = new SugarContainer(document.getElementById('scheduler'));
		sugarContainer_instance.start(SugarWidgetScheduler);
		if ( document.getElementById('save_and_continue') ) {
			var oldclick = document.getElementById('save_and_continue').attributes['onclick'].nodeValue;
			document.getElementById('save_and_continue').onclick = function(){
				SUGAR.projects.fill_invitees();
				eval(oldclick);
			}
		}
	}
});
projectsLoader.addModule({
    name :"sugar_grp_project",
    type : "js",
    fullpath: "cache/include/javascript/sugar_grp_project.js",
    varName: "global_rpcClient",
    requires: []
});
projectsLoader.insert();
YAHOO.util.Event.onContentReady("{/literal}<?php echo $_smarty_tpl->tpl_vars['form_name']->value;?>
{literal}",function() {
    /*
    var durationHours = document.getElementById('duration_hours');
    if (durationHours) {
        document.getElementById('duration_minutes').tabIndex = durationHours.tabIndex;
    }

    var reminderChecked = document.getElementsByName('reminder_checked');
    for(i=0;i<reminderChecked.length;i++) {
        if (reminderChecked[i].type == 'checkbox' && document.getElementById('reminder_list')) {
            YAHOO.util.Dom.getFirstChild('reminder_list').tabIndex = reminderChecked[i].tabIndex;
        }
    }
    */
});
{/literal}
<?php echo '</script'; ?>
>
</form>
<div class="buttons">
<?php if (!empty($_smarty_tpl->tpl_vars['form']->value) && !empty($_smarty_tpl->tpl_vars['form']->value['buttons'])) {?>
   <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['form']->value['buttons'], 'button', false, 'val');
$_smarty_tpl->tpl_vars['button']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['val']->value => $_smarty_tpl->tpl_vars['button']->value) {
$_smarty_tpl->tpl_vars['button']->do_else = false;
?>
      <?php echo smarty_function_sugar_button(array('module'=>((string)$_smarty_tpl->tpl_vars['module']->value),'id'=>$_smarty_tpl->tpl_vars['button']->value,'location'=>"FOOTER",'view'=>((string)$_smarty_tpl->tpl_vars['view']->value)),$_smarty_tpl);?>

   <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
} else { ?>
	<?php echo smarty_function_sugar_button(array('module'=>((string)$_smarty_tpl->tpl_vars['module']->value),'id'=>"SAVE",'view'=>((string)$_smarty_tpl->tpl_vars['view']->value)),$_smarty_tpl);?>

	<?php echo smarty_function_sugar_button(array('module'=>((string)$_smarty_tpl->tpl_vars['module']->value),'id'=>"CANCEL",'view'=>((string)$_smarty_tpl->tpl_vars['view']->value)),$_smarty_tpl);?>

<?php }?>

<?php echo smarty_function_sugar_button(array('module'=>((string)$_smarty_tpl->tpl_vars['module']->value),'id'=>"Audit",'view'=>((string)$_smarty_tpl->tpl_vars['view']->value)),$_smarty_tpl);?>

</div>
<?php }
}
