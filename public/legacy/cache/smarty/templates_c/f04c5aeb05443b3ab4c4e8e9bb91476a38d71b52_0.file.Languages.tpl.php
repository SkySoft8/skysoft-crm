<?php
/* Smarty version 4.5.3, created on 2025-11-12 12:35:06
  from 'C:\Apache\Apache24\htdocs\suitecrm\public\legacy\modules\Administration\templates\Languages.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_69147efa588cb5_56617067',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f04c5aeb05443b3ab4c4e8e9bb91476a38d71b52' => 
    array (
      0 => 'C:\\Apache\\Apache24\\htdocs\\suitecrm\\public\\legacy\\modules\\Administration\\templates\\Languages.tpl',
      1 => 1762424144,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_69147efa588cb5_56617067 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache\\Apache24\\htdocs\\suitecrm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getjspath.php','function'=>'smarty_function_sugar_getjspath',),1=>array('file'=>'C:\\Apache\\Apache24\\htdocs\\suitecrm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getscript.php','function'=>'smarty_function_sugar_getscript',),2=>array('file'=>'C:\\Apache\\Apache24\\htdocs\\suitecrm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),));
?>
<link rel="stylesheet" type="text/css" href="<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/Connectors/tpls/tabs.css'),$_smarty_tpl);?>
"/>
<?php echo smarty_function_sugar_getscript(array('file'=>"cache/include/javascript/sugar_grp_yui_widgets.js"),$_smarty_tpl);?>

<style>.yui-dt-scrollable .yui-dt-bd {overflow-x: hidden;}</style>
<div class="language">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr><td colspan='100'><h2><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h2></td></tr>
<div class="description">
<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_CONFIG_LANGS_DESC'];?>

</div>
<tr><td><br></td></tr><tr><td colspan='100'>

<form name="ConfigureLangs" method="GET"  method="POST" action="index.php">
	<input type="hidden" name="module" value="Administration">
	<input type="hidden" name="action" value="SaveLanguages">
	<input type="hidden" id="enabled_langs" name="enabled_langs" value="">
	<input type="hidden" id="disabled_langs" name="disabled_langs" value="">
	<input type="hidden" name="return_module" value="<?php echo $_smarty_tpl->tpl_vars['RETURN_MODULE']->value;?>
">
	<input type="hidden" name="return_action" value="<?php echo $_smarty_tpl->tpl_vars['RETURN_ACTION']->value;?>
">

	<table border="0" cellspacing="1" cellpadding="1" class="actionsContainer action-button">
		<tr>
			<td>
				<input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_TITLE'];?>
" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_KEY'];?>
" class="button primary" onclick="SUGAR.saveConfigureLangs();this.form.action.value='SaveLanguages'; " type="submit" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_LABEL'];?>
" >
				<input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_TITLE'];?>
" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_KEY'];?>
" class="button" onclick="clearQueryParamsAndNavigate();" type="button" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_LABEL'];?>
">
			</td>
		</tr>
	</table>

	<div class='add_table'>
		<table id="ConfigureLangs" class="themeSettings edit view" style='margin-bottom:0px;' border="0" cellspacing="0" cellpadding="0">
			<tr class="add-table-mobile">
				<td width='1%' class="desktop-enabled mobile-enabled">
					<div id="enabled_div" class="enabled_tab_workarea">
					</div>
				</td>
				<td class="desktop-disabled mobile-disabled">
					<div id="disabled_div" class="disabled_tab_workarea">
					</div>
				</td>
			</tr>
		</table>
	</div>

	<table border="0" cellspacing="1" cellpadding="1" class="actionsContainer hide-btn">
		<tr>
			<td>
				<input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_TITLE'];?>
" class="button primary" onclick="SUGAR.saveConfigureLangs();this.form.action.value='SaveLanguages'; " type="submit" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_LABEL'];?>
" >
				<input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_TITLE'];?>
" class="button" onclick="this.form.action.value='index'; this.form.module.value='Administration';" type="submit" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_LABEL'];?>
">
			</td>
		</tr>
	</table>
</form>
</div>


<?php echo '<script'; ?>
 type="text/javascript">
(function(){
	var enabled_modules = <?php echo $_smarty_tpl->tpl_vars['enabled_langs']->value;?>
;
	var disabled_modules = <?php echo $_smarty_tpl->tpl_vars['disabled_langs']->value;?>
;
	var lblEnabled = '<?php echo smarty_function_sugar_translate(array('label'=>"LBL_ENABLED_LANGS"),$_smarty_tpl);?>
';
	var lblDisabled = '<?php echo smarty_function_sugar_translate(array('label'=>"LBL_DISABLED_LANGS"),$_smarty_tpl);?>
';
	
	SUGAR.enabledLangsTable = new YAHOO.SUGAR.DragDropTable(
		"enabled_div",
		[{key:"label",  label: lblEnabled, width: 200, sortable: false},
		 {key:"module", label: lblEnabled, hidden:true}],
		new YAHOO.util.LocalDataSource(enabled_modules, {
			responseSchema: {
			   resultsList : "modules",
			   fields : [{key : "module"}, {key : "label"}, {key : "disabled"}]
			}
		}),
		{height: "300px"}
	);
	SUGAR.disabledLangsTable = new YAHOO.SUGAR.DragDropTable(
		"disabled_div",
		[{key:"label",  label: lblDisabled, width: 200, sortable: false},
		 {key:"module", label: lblDisabled, hidden:true}],
		new YAHOO.util.LocalDataSource(disabled_modules, {
			responseSchema: {
			   resultsList : "modules",
			   fields : [{key : "module"}, {key : "label"}]
			}
		}),
		{height: "300px"}
	);
	SUGAR.enabledLangsTable.disableEmptyRows = true;
    SUGAR.disabledLangsTable.disableEmptyRows = true;
    SUGAR.enabledLangsTable.addRow({module: "", label: ""});
    SUGAR.disabledLangsTable.addRow({module: "", label: ""});
	SUGAR.enabledLangsTable.render();
	SUGAR.disabledLangsTable.render();

	SUGAR.saveConfigureLangs = function()
	{
		var enabledTable = SUGAR.enabledLangsTable;
		var modules = [];
		for(var i=0; i < enabledTable.getRecordSet().getLength(); i++){
			var data = enabledTable.getRecord(i).getData();
			if (data.module && data.module != '')
			    modules[i] = data.module;
		}
		YAHOO.util.Dom.get('enabled_langs').value = YAHOO.lang.JSON.stringify(modules);

		var disabledTable = SUGAR.disabledLangsTable;
		var modules = [];
		for(var i=0; i < disabledTable.getRecordSet().getLength(); i++){
			var data = disabledTable.getRecord(i).getData();
			if (data.module && data.module != '')
			    modules[i] = data.module;
		}
		YAHOO.util.Dom.get('disabled_langs').value = YAHOO.lang.JSON.stringify(modules);
	}
})();
function clearQueryParamsAndNavigate() {
	let currentURL = window.location.href;
	let baseURL = currentURL.split('?')[0];
	window.location.href = baseURL + '?module=Administration&action=index';
}

<?php echo '</script'; ?>
>
<?php }
}
