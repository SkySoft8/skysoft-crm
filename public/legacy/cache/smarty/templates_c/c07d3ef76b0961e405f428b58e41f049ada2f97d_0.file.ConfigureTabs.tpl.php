<?php
/* Smarty version 4.5.3, created on 2025-03-07 13:28:49
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\Administration\templates\ConfigureTabs.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67caf4916a6404_91244784',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c07d3ef76b0961e405f428b58e41f049ada2f97d' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\Administration\\templates\\ConfigureTabs.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67caf4916a6404_91244784 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getjspath.php','function'=>'smarty_function_sugar_getjspath',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_help.php','function'=>'smarty_function_sugar_help',),2=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),));
?>
<link rel="stylesheet" type="text/css" href="<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/Connectors/tpls/tabs.css'),$_smarty_tpl);?>
"/>
<?php echo '<script'; ?>
 type="text/javascript" src="cache/include/javascript/sugar_grp_yui_widgets.js"><?php echo '</script'; ?>
>
<div class="display-modules-config">
<form name="ConfigureTabs" method="GET" action="index.php">
<input type="hidden" name="module" value="Administration">
<input type="hidden" name="action" value="SaveTabs">
<input type="hidden" id="enabled_tabs" name="enabled_tabs" value="">
<input type="hidden" id="disabled_tabs" name="disabled_tabs" value="">
<input type="hidden" name="return_module" value="<?php echo $_smarty_tpl->tpl_vars['RETURN_MODULE']->value;?>
">
<input type="hidden" name="return_action" value="<?php echo $_smarty_tpl->tpl_vars['RETURN_ACTION']->value;?>
">

<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><td colspan='100'><h2><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h2></td></tr>
<tr>
	<td colspan='100'><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_CONFIG_TABS_DESC'];?>
</td>
</tr>
<tr>
	<td><br></td>
</tr>
<tr><td colspan='100'>
	<table border="0" cellspacing="1" cellpadding="1" class="actionsContainer action-button">
		<tr>
			<td>
				<input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_TITLE'];?>
" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_KEY'];?>
" class="button primary" onclick="SUGAR.saveConfigureTabs();this.form.action.value='SaveTabs'; " type="submit" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_LABEL'];?>
" >
				<input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_TITLE'];?>
" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_KEY'];?>
" class="button" onclick="clearQueryParamsAndNavigate();" type="button" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_LABEL'];?>
">
			</td>
		</tr>
	</table>

	<div class='add_table'>
		<table id="ConfigureTabs" class="themeSettings edit view" style='margin-bottom:0px;' border="0" cellspacing="0" cellpadding="0">
			<tr class="config-text">
				<td colspan="2">
				    <input type='checkbox' name='user_edit_tabs' value=1 class='checkbox' <?php if (!empty($_smarty_tpl->tpl_vars['user_can_edit']->value)) {?>CHECKED<?php }?>>&nbsp;
				    <b onclick='document.EditView.user_edit_tabs.checked= !document.EditView.user_edit_tabs.checked' style='cursor:default'><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_ALLOW_USER_TABS'];?>
</b>
				    &nbsp;<?php echo smarty_function_sugar_help(array('text'=>$_smarty_tpl->tpl_vars['MOD']->value['LBL_CONFIG_TABS_ALLOW_USERS_HIDE_TABS_HELP']),$_smarty_tpl);?>

				</td>
			</tr>
			<tr class="enabled-tab mobile-tab-table">
				<td width='1%' class="mobile-enabled">
					<div id="enabled_div" class="enabled_tab_workarea">
					</div>
				</td>
				<td class="mobile-disabled">
					<div id="disabled_div" class="disabled_tab_workarea">
					</div>
				</td>
			</tr>
		</table>
	</div>

	<div class='add_subpanels' style='margin-bottom:5px'>
		<table id="ConfigureSubPanels" class="themeSettings edit view" style='margin-bottom:0px;' border="0" cellspacing="0" cellpadding="0">
			<tr class="enabled-tab mobile-tab-subpanel">
				<td width='1%' class="mobile-enabled">
					<div id="enabled_subpanels_div"></div>
				</td>
				<td class="mobile-disabled">
					<div id="disabled_subpanels_div"></div>
				</td>
			</tr>
		</table>
	</div>

	<table border="0" cellspacing="1" cellpadding="1" class="actionsContainer hide-btn">
		<tr>
			<td>
				<input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_TITLE'];?>
" class="button primary" onclick="SUGAR.saveConfigureTabs();this.form.action.value='SaveTabs'; " type="submit" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_LABEL'];?>
" >
				<input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_TITLE'];?>
" class="button" onclick="this.form.action.value='index'; this.form.module.value='Administration';" type="submit" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_LABEL'];?>
">
			</td>
		</tr>
	</table>
</td></tr>
</table>
</form>
</div>

<?php echo '<script'; ?>
 type="text/javascript">
	var enabled_modules = <?php echo $_smarty_tpl->tpl_vars['enabled_tabs']->value;?>
;
	var disabled_modules = <?php echo $_smarty_tpl->tpl_vars['disabled_tabs']->value;?>
;
	var lblEnabled = '<?php echo smarty_function_sugar_translate(array('label'=>"LBL_VISIBLE_TABS"),$_smarty_tpl);?>
';
	var lblDisabled = '<?php echo smarty_function_sugar_translate(array('label'=>"LBL_HIDDEN_TABS"),$_smarty_tpl);?>
';
	
	function clearQueryParamsAndNavigate() {
		let currentURL = window.location.href;
		let baseURL = currentURL.split('?')[0];
		window.location.href = baseURL + '?module=Administration&action=index';
	}
	SUGAR.enabledTabsTable = new YAHOO.SUGAR.DragDropTable(
		"enabled_div",
		[{key:"label",  label: lblEnabled, width: 200, sortable: false},
		 {key:"module", label: lblEnabled, hidden:true}],
		new YAHOO.util.LocalDataSource(enabled_modules, {
			responseSchema: {
			   resultsList : "modules",
			   fields : [{key : "module"}, {key : "label"}]
			}
		}),
		{
			height: "300px",
			group: ["enabled_div", "disabled_div"]
		}
	);
	SUGAR.disabledTabsTable = new YAHOO.SUGAR.DragDropTable(
		"disabled_div",
		[{key:"label",  label: lblDisabled, width: 200, sortable: false},
		 {key:"module", label: lblDisabled, hidden:true}],
		new YAHOO.util.LocalDataSource(disabled_modules, {
			responseSchema: {
			   resultsList : "modules",
			   fields : [{key : "module"}, {key : "label"}]
			}
		}),
		{
			height: "300px",
		 	group: ["enabled_div", "disabled_div"]
		 }
	);
	SUGAR.enabledTabsTable.disableEmptyRows = true;
    SUGAR.disabledTabsTable.disableEmptyRows = true;
    SUGAR.enabledTabsTable.addRow({module: "", label: ""});
    SUGAR.disabledTabsTable.addRow({module: "", label: ""});
	SUGAR.enabledTabsTable.render();
	SUGAR.disabledTabsTable.render();
	
	var sub_enabled_modules = <?php echo $_smarty_tpl->tpl_vars['enabled_panels']->value;?>
;
	var sub_disabled_modules = <?php echo $_smarty_tpl->tpl_vars['disabled_panels']->value;?>
;
	var lblSubEnabled = '<?php echo smarty_function_sugar_translate(array('label'=>"LBL_VISIBLE_PANELS"),$_smarty_tpl);?>
';
	var lblSubDisabled = '<?php echo smarty_function_sugar_translate(array('label'=>"LBL_HIDDEN_PANELS"),$_smarty_tpl);?>
';
	
	SUGAR.subEnabledTable = new YAHOO.SUGAR.DragDropTable(
		"enabled_subpanels_div",
		[{key:"label",  label: lblSubEnabled, width: 200, sortable: false},
		 {key:"module", label: lblSubEnabled, hidden:true}],
		new YAHOO.util.LocalDataSource(sub_enabled_modules, {
			responseSchema: {
			   fields : [{key : "module"}, {key : "label"}]
			}
		}),
		{
		 	height: "300px",
		 	group: ["enabled_subpanels_div", "disabled_subpanels_div"]
		}
	);
	SUGAR.subDisabledTable = new YAHOO.SUGAR.DragDropTable(
		"disabled_subpanels_div",
		[{key:"label",  label: lblSubDisabled, width: 200, sortable: false},
		 {key:"module", label: lblSubDisabled, hidden:true}],
		new YAHOO.util.LocalDataSource(sub_disabled_modules, {
			responseSchema: {
			   fields : [{key : "module"}, {key : "label"}]
			}
		}),
		{
		 	height: "300px",
		 	group: ["enabled_subpanels_div", "disabled_subpanels_div"]
		}
	);
	SUGAR.subEnabledTable.disableEmptyRows = true;
	SUGAR.subDisabledTable.disableEmptyRows = true;
	SUGAR.subEnabledTable.addRow({module: "", label: ""});
	SUGAR.subDisabledTable.addRow({module: "", label: ""});
	SUGAR.subEnabledTable.render();
	SUGAR.subDisabledTable.render();

	SUGAR.saveConfigureTabs = function()
	{
		var enabledTable = SUGAR.enabledTabsTable;
		var modules = [];
		for(var i=0; i < enabledTable.getRecordSet().getLength(); i++){
			var data = enabledTable.getRecord(i).getData();
			if (data.module && data.module != '')
			    modules[i] = data.module;
		}
		YAHOO.util.Dom.get('enabled_tabs').value = YAHOO.lang.JSON.stringify(modules);

		var disabledTable = SUGAR.subDisabledTable;
		var modules = [];
		for(var i=0; i < disabledTable.getRecordSet().getLength(); i++){
			var data = disabledTable.getRecord(i).getData();
			if (data.module && data.module != '')
			    modules[i] = data.module;
		}
		YAHOO.util.Dom.get('disabled_tabs').value = YAHOO.lang.JSON.stringify(modules);
	}

<?php echo '</script'; ?>
>
<?php }
}
