<?php
/* Smarty version 4.5.3, created on 2025-06-04 17:12:59
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\ModuleBuilder\tpls\MBModule\field.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_68407e9b8a5bc2_78062379',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0584415dd92336a0d9fee724dec0f44f72115512' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\ModuleBuilder\\tpls\\MBModule\\field.tpl',
      1 => 1744976540,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_68407e9b8a5bc2_78062379 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.html_options.php','function'=>'smarty_function_html_options',),2=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_help.php','function'=>'smarty_function_sugar_help',),));
?>
<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000"></div>

<?php echo '<script'; ?>
>
addForm('popup_form');
<?php echo '</script'; ?>
>


<form name='popup_form' id='popup_form_id' onsubmit='return false;'>
<input type='hidden' name='module' value='ModuleBuilder'>
<input type='hidden' name='action' value='<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
'>
<input type='hidden' name='new_dropdown' value=''>
<input type='hidden' name='to_pdf' value='true'>
<input type='hidden' name='view_module' value='<?php echo $_smarty_tpl->tpl_vars['module']->value->name;?>
'>
<?php if ((isset($_smarty_tpl->tpl_vars['package']->value->name))) {?>
    <input type='hidden' name='view_package' value='<?php echo $_smarty_tpl->tpl_vars['package']->value->name;?>
'>
<?php }
if ($_smarty_tpl->tpl_vars['is_update']->value) {?>
	<input type='hidden' name='is_update' value='true'>
<?php } else { ?>
	<input type='hidden' name='is_update' value='false'>
<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['hideLevel']->value < 5) {?>
	    &nbsp;
	    <input type='button' class='button' name='fsavebtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_SAVE'];?>
' 
			onclick='if(validate_type_selection() && check_form("popup_form")){ <?php echo $_smarty_tpl->tpl_vars['preSave']->value;?>
 ModuleBuilder.submitForm("popup_form_id"); }'>
	    <input type='button' name='cancelbtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_CANCEL'];?>
' 
			onclick='ModuleBuilder.tabPanel.removeTab(ModuleBuilder.findTabById("east"));' class='button'>
	    <?php if (!empty($_smarty_tpl->tpl_vars['vardef']->value['name'])) {?>
	        <?php if ($_smarty_tpl->tpl_vars['hideLevel']->value < 3) {?>
	        
	            &nbsp;<input type='button' class='button' name='fdeletebtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_DELETE'];?>
' onclick='if(confirm("<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_CONFIRM_FIELD_DELETE'];?>
")){document.popup_form.action.value="DeleteField";ModuleBuilder.submitForm("popup_form_id");}'>
	        
	        <?php }?>
	        <?php if (!$_smarty_tpl->tpl_vars['no_duplicate']->value) {?>
	        
	        &nbsp;<input type='button' class='button' name='fclonebtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_CLONE'];?>
' onclick='document.popup_form.action.value="CloneField";ModuleBuilder.submitForm("popup_form_id");'>
	        
	    <?php }?>
	    <?php }?>
	
	<?php } else { ?>
	    
	     <input type='button' class='button' name='lsavebtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_SAVE'];?>
' onclick='if(check_form("popup_form")){this.form.action.value = "<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
";ModuleBuilder.submitForm("popup_form_id")};'>
	    
	    
	        &nbsp;<input type='button' class='button' name='fclonebtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_CLONE'];?>
' onclick='document.popup_form.action.value="CloneField";ModuleBuilder.submitForm("popup_form_id");'>
	     
		 
	        &nbsp;<input type='button' class='button' name='cancel' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_CANCEL'];?>
' onclick='ModuleBuilder.tabPanel.get("activeTab").close()'>
	        
	        
<?php }?>
<hr>

<table width="400px" >
<tr>
    <td class="mbLBL" style="width:92px;"><?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"COLUMN_TITLE_DATA_TYPE"),$_smarty_tpl);?>
:</td>
    <td ><?php if (empty($_smarty_tpl->tpl_vars['vardef']->value['name']) && $_smarty_tpl->tpl_vars['isClone']->value == 0) {?>
                <?php echo smarty_function_html_options(array('name'=>"type",'id'=>"type",'options'=>$_smarty_tpl->tpl_vars['field_types']->value,'selected'=>$_smarty_tpl->tpl_vars['vardef']->value['type'],'onchange'=>'ModuleBuilder.moduleLoadField("", this.options[this.selectedIndex].value);'),$_smarty_tpl);?>

                <?php echo smarty_function_sugar_help(array('text'=>$_smarty_tpl->tpl_vars['mod_strings']->value['LBL_POPHELP_FIELD_DATA_TYPE'],'FIXX'=>250,'FIXY'=>80),$_smarty_tpl);?>

            <?php } else { ?>
                <?php echo $_smarty_tpl->tpl_vars['field_types']->value[$_smarty_tpl->tpl_vars['vardef']->value['type']];?>

            <?php }?>
            <?php if (empty($_smarty_tpl->tpl_vars['field_types']->value[$_smarty_tpl->tpl_vars['vardef']->value['type']]) && !empty($_smarty_tpl->tpl_vars['vardef']->value['type'])) {?>(<?php echo $_smarty_tpl->tpl_vars['vardef']->value['type'];?>
)<?php }?>
            <input type='hidden' name='type' value=<?php echo $_smarty_tpl->tpl_vars['vardef']->value['type'];?>
 />
    </td>
</tr>
</table>
<?php echo $_smarty_tpl->tpl_vars['fieldLayout']->value;?>

</form>

<?php echo '<script'; ?>
>

function validate_type_selection(){
    var typeSel = document.getElementById('type');
    if(typeSel && typeSel.options){
        if(typeSel.options[typeSel.selectedIndex].value == ''){
            alert('<?php echo smarty_function_sugar_translate(array('module'=>"DynamicFields",'label'=>"ERR_SELECT_FIELD_TYPE"),$_smarty_tpl);?>
');
            return false;
        }
    }
    if (document.getElementById("customTypeValidate")){
        return document.getElementById("customTypeValidate").onchange(); 
    }
    return true;
}

ModuleBuilder.helpSetup('fieldsEditor','<?php echo $_smarty_tpl->tpl_vars['help_group']->value;?>
');
<?php echo '</script'; ?>
>
<?php }
}
