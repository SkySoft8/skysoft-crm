<?php
/* Smarty version 4.5.3, created on 2025-04-07 09:49:15
  from 'C:\Apache24\htdocs\crm2\public\legacy\modules\ModuleBuilder\tpls\MBModule\dropdown.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67f39f9bc003a5_00944003',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '881cdac81c3219b6868687eaf1ec23c6e720d554' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\modules\\ModuleBuilder\\tpls\\MBModule\\dropdown.tpl',
      1 => 1743515289,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67f39f9bc003a5_00944003 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\Smarty\\plugins\\function.html_options.php','function'=>'smarty_function_html_options',),));
?>
 <div>&nbsp;
<link rel="stylesheet" type="text/css" href="modules/ModuleBuilder/tpls/ListEditor.css"></link>
<link rel="stylesheet" type="text/css" href="modules/ModuleBuilder/tpls/MBModule/dropdown.css"></link> 
<form name="dropdown_form" onsubmit="return false">
<input type="hidden" name="module" value="ModuleBuilder">
<input type="hidden" name="action" value="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
">
<input type="hidden" name="to_pdf" value="true">
<input type="hidden" name="view_module" value="<?php echo $_smarty_tpl->tpl_vars['module_name']->value;?>
">
<input type="hidden" name="view_package" value="<?php echo $_smarty_tpl->tpl_vars['package_name']->value;?>
">
<input type="hidden" id="list_value" name="list_value" value="">
<?php if (($_smarty_tpl->tpl_vars['refreshTree']->value)) {?>
<input type="hidden" name="refreshTree" value="1">
<?php }?>
<table>
	<tr>
		<td colspan="3">
			<input id="saveBtn" type="button" class="button" onclick="SimpleList.handleSave()" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_LABEL'];?>
">
			<input type="button" class="button" onclick="SimpleList.undo()" value="<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_BTN_UNDO'];?>
">
			<input type="button" class="button" onclick="SimpleList.redo()" value="<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_BTN_REDO'];?>
">
			<input type="button" class="button" name="cancel" value="<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_BTN_CANCEL'];?>
" onclick="ModuleBuilder.tabPanel.get('activeTab').close()">
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<hr/>
		</td>
	</tr>
	<tr>
		<td>
			<span class="mbLBLL"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_DROPDOWN_TITLE_NAME'];?>
:&nbsp;</span>
			<?php if ($_smarty_tpl->tpl_vars['name']->value) {?>
				<input type="hidden" id="dropdown_name" name="dropdown_name" value="<?php echo $_smarty_tpl->tpl_vars['dropdown_name']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['dropdown_name']->value;?>

			<?php } else { ?>
				<input type="text" id="dropdown_name" name="dropdown_name" value="<?php echo $_smarty_tpl->tpl_vars['prepopulated_name']->value;?>
">
			<?php }?>
		</td>
	</tr>
	<tr>
		<td class="mbLBLL">
			<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_DROPDOWN_LANGUAGE'];?>
:&nbsp;
			<?php echo smarty_function_html_options(array('name'=>"dropdown_lang",'options'=>$_smarty_tpl->tpl_vars['available_languages']->value,'selected'=>$_smarty_tpl->tpl_vars['selected_lang']->value,'onchange'=>"this.form.action.value='dropdown'; ModuleBuilder.handleSave('dropdown_form')"),$_smarty_tpl);?>

		</td>
	</tr>
	<tr>
		<td style="padding-top:10px;" class="mbLBLL"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_DROPDOWN_ITEMS'];?>
:</td>
	</tr>
	<tr>
		<td><b><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_DROPDOWN_ITEM_NAME'];?>
</b><span class="fieldValue">[<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_DROPDOWN_ITEM_LABEL'];?>
]<span></td>
	</tr>
	<tr>
		<td colspan="3">
		    <ul id="ul1" class="listContainer">
		    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['options']->value, 'val', false, 'name');
$_smarty_tpl->tpl_vars['val']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['name']->value => $_smarty_tpl->tpl_vars['val']->value) {
$_smarty_tpl->tpl_vars['val']->do_else = false;
?>
                <?php if ((!(isset($_smarty_tpl->tpl_vars['val']->value)) || $_smarty_tpl->tpl_vars['val']->value == '')) {
$_smarty_tpl->_assignInScope('name', $_smarty_tpl->tpl_vars['MOD']->value['LBL_BLANK']);
}?>
		    	<li class="draggable" id="<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
">
			      <table width="100%">
			        <tr>
			           <td>
			               <b><?php echo $_smarty_tpl->tpl_vars['name']->value;?>
</b>
			               <input id="value_<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
" value="<?php echo $_smarty_tpl->tpl_vars['val']->value;?>
" type="hidden">
			               <span class="fieldValue" id="span_<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
">
			                   <?php if ((!(isset($_smarty_tpl->tpl_vars['val']->value)) || $_smarty_tpl->tpl_vars['val']->value == '')) {?>[<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_BLANK'];?>
]<?php } else { ?>[<?php echo $_smarty_tpl->tpl_vars['val']->value;?>
]<?php }?>
			               </span>
			               <span class="fieldValue" id="span_edit_<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
" style="display:none">
			                   <input type="text" id="input_<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
" value="<?php echo $_smarty_tpl->tpl_vars['val']->value;?>
" onBlur="SimpleList.setDropDownValue('<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
', this.value, true)">
			               </span>
			           </td>
			           <td align="right">
			               <a class="editImage" href="javascript:void(0)" onclick="SimpleList.editDropDownValue('<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
', true)"></a>
			               &nbsp;
			               <a href="javascript:void(0)" onclick="SimpleList.deleteDropDownValue('<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
', true)">
			               <?php echo $_smarty_tpl->tpl_vars['deleteImage']->value;?>
</a>
			           </td>
			        </tr>
			      </table>
			    </li>
			<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
		   	</ul>
			
			<?php echo '<script'; ?>
>
				$(function(){
					$('.editImage').html(<?php echo $_smarty_tpl->tpl_vars['editImage']->value;?>
);
				});
			<?php echo '</script'; ?>
>
			
		</td>
	</tr>
	<tr>
		<td colspan="3">
		   <table width="100%">
		    	<tr>
		    		<td class="mbLBLL"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_DROPDOWN_ITEM_NAME'];?>
:</td><td class="mbLBLL"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_DROPDOWN_ITEM_LABEL'];?>
:</td>
		    	</tr>
		    	<tr>
		    		<td><input type="text" id="drop_name" name="drop_name" maxlength="100"></td>
		    		<td><input type="text" id="drop_value" name="drop_value"></td>
		    	</tr>
		    	<tr><td><input type="button" id="dropdownaddbtn" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_ADD_BUTTON'];?>
" class="button"></td></tr>
		    </table>
   		</td>
   	</tr>
   	<tr>
   		<td colspan="3">
   			<input type="button" class="button" value="<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_BTN_SORT_ASCENDING'];?>
" onclick="SimpleList.sortAscending()">
   			<input type="button" class="button" value="<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_BTN_SORT_DESCENDING'];?>
" onclick="SimpleList.sortDescending()">
   		</td>
   	</tr>
  </table>
  </form>
  
<?php echo '<script'; ?>
>
addForm('dropdown_form');
addToValidate('dropdown_form', 'dropdown_name', 'DBName', false, SUGAR.language.get("ModuleBuilder", "LBL_JS_VALIDATE_NAME"));
addToValidate('dropdown_form', 'drop_value', 'varchar', false, SUGAR.language.get("ModuleBuilder", "LBL_JS_VALIDATE_LABEL"));
eval(<?php echo $_smarty_tpl->tpl_vars['ul_list']->value;?>
);
SimpleList.ul_list = list;
SimpleList.init(<?php echo $_smarty_tpl->tpl_vars['editImage']->value;?>
, '<?php echo $_smarty_tpl->tpl_vars['deleteImage']->value;?>
');
ModuleBuilder.helpSetup('dropdowns','editdropdown');

var addListenerFields = ['drop_name','drop_value' ]
YAHOO.util.Event.addListener(addListenerFields,"keydown", function(e){
	if (e.keyCode == 13) {
		YAHOO.util.Event.stopEvent(e);
	}
});

<?php echo '</script'; ?>
>
<?php echo '<script'; ?>
>// Bug in FF4 where it doesn't run the last script. Remove when the bug is fixed.<?php echo '</script'; ?>
>

</div><?php }
}
