<?php
/* Smarty version 4.5.3, created on 2025-02-17 11:58:08
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\Studio\wizards\RenameModules.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67b324507e7f51_93951543',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b18728ccb2c6f3bd8e4000674b7eaa3b43f58a56' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\Studio\\wizards\\RenameModules.tpl',
      1 => 1730388414,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67b324507e7f51_93951543 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.html_options.php','function'=>'smarty_function_html_options',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_help.php','function'=>'smarty_function_sugar_help',),2=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.counter.php','function'=>'smarty_function_counter',),3=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getscript.php','function'=>'smarty_function_sugar_getscript',),));
?>



<style type='text/css'>
    .slot
    {
        border-width:1px;border-color:#999999;border-style:solid;padding:0px 1px 0px 1px;margin:2px;cursor:move;
    }

    .slotB
    {
        border-width:0;cursor:move;
    }
    div.moduleTitle
    {
        margin-bottom: 5px;
    }
</style>

<div class="rename-modules">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td>
           <?php echo $_smarty_tpl->tpl_vars['title']->value;?>

<table cellspacing="2">
    <tr>
        <td colspan="3"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_RENAME_MOD_SAVE_HELP'];?>
</td>
    </tr>
    <tr>
        <td colspan="3" class='action-button'>
            <input type="button" class="button primary" value="<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_BTN_SAVE'];?>
" id="renameSaveBttn" onclick='validateForm();'name="<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_BTN_SAVE'];?>
" />
            <input type="button" class="button" value="<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_BTN_CANCEL'];?>
"  id="renameCancelBttn" name="<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_BTN_CANCEL'];?>
" onclick="document.location.href='index.php?module=Administration&action=index'" />
        </td>
    </tr>
</table>
<div style="height:10px">&nbsp;</div>
<table width="100%" border="0" cellspacing="0" cellpadding="0" class='edit view' >
<tr>
    <td>
        <span class='error'><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</span>
        <table class='dropdown-field'>
            <tr>
                <td colspan='2'>
                    <form method='post' action='index.php' name='dropdownsform'>
                        <input type='hidden' name='action' value='wizard'>
                        <input type='hidden' name='wizard' value='RenameModules'>
                        <input type='hidden' name='option' value='EditDropdown'>
                        <input type='hidden' name='module' value='Studio'>
                        <input type='hidden' name='dropdown_name' value='<?php echo $_smarty_tpl->tpl_vars['dropdown_name']->value;?>
'>
                        <?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_TABGROUP_LANGUAGE'];?>
 &nbsp;
                        <?php echo smarty_function_html_options(array('name'=>'dropdown_lang','options'=>$_smarty_tpl->tpl_vars['dropdown_languages']->value,'selected'=>$_smarty_tpl->tpl_vars['dropdown_lang']->value,'onchange'=>"document.dropdownsform.submit();"),$_smarty_tpl);?>

                        <?php echo smarty_function_sugar_help(array('text'=>$_smarty_tpl->tpl_vars['MOD']->value['LBL_LANGUAGE_TOOLTIP']),$_smarty_tpl);?>

                    </form>
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td>
<form method='GET' action='index.php' name='editdropdown'>
<input type='hidden' name='action' value='wizard'>
<input type='hidden' name='wizard' value='RenameModules'>
<input type='hidden' name='option' value='SaveDropDown'>
<input type='hidden' name='module' value='Studio'>
<input type='hidden' name='dropdown_lang' value='<?php echo $_smarty_tpl->tpl_vars['dropdown_lang']->value;?>
'>
<input type='hidden' name='dropdown_name' value='moduleList'>

<table name='tabDropdown' id='tabDropdown' class='dropdown-field'>

<?php echo smarty_function_counter(array('start'=>0,'name'=>"rowCounter",'print'=>false,'assign'=>"rowCounter"),$_smarty_tpl);?>

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['dropdown']->value, 'value', false, 'key');
$_smarty_tpl->tpl_vars['value']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['value']->value) {
$_smarty_tpl->tpl_vars['value']->do_else = false;
?>
<tr>
    <td>
        <div id='slot<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
b'>
            <span class='edit-pencil' onclick='prepChangeDropDownValue(<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
, document.getElementById("slot<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
_value"));'><?php echo $_smarty_tpl->tpl_vars['editImage']->value;?>
</span>
            &nbsp;
            <span id ='slot<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
_value' onclick='prepChangeDropDownValue(<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
, this);'><?php echo $_smarty_tpl->tpl_vars['value']->value['lang'];?>
</span>
            <span id='slot<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
_textspan' style='display:none;'><?php echo $_smarty_tpl->tpl_vars['value']->value['user_lang'];?>

                <table style="margin-left:15px;">
                    <tr>
                        <td align="right" class='edit-field-label'><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_SINGULAR'];?>
</td>
                        <td align="left"><input id='slot<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
_stext' value="<?php echo $_smarty_tpl->tpl_vars['value']->value['singular'];?>
" onchange='setSingularDropDownValue(<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
);' type='text'></td>
                    </tr>
                    <tr>
                        <td align="left" class='edit-field-label'><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_PLURAL'];?>
</td>
                        <td align="left"><input id='slot<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
_text' value="<?php echo $_smarty_tpl->tpl_vars['value']->value['lang'];?>
" type='text'  onchange='setDropDownValue(<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
, this.value, true)' ></td>
                    </tr>
                </table>
                <input name='slot_<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
' id='slot_<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
' value='<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
' type = 'hidden'>
                <input type='hidden' name='key_<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
' id='key_<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
' value='<?php echo (($tmp = $_smarty_tpl->tpl_vars['key']->value ?? null)===null||$tmp==='' ? "BLANK" ?? null : $tmp);?>
'>
                <input type='hidden' id='delete_<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
' name='delete_<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
' value='0'>
                <input type='hidden' id='slot<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
_key' name='slot<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
_key' value='<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
'>
                <input name='value_<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
' id='value_<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
' value='<?php echo $_smarty_tpl->tpl_vars['value']->value['lang'];?>
' type = 'hidden'>
                <input name='svalue_<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
' id='svalue_<?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
' value='<?php echo $_smarty_tpl->tpl_vars['value']->value['singular'];?>
' type = 'hidden'>
            </span>
        </div>
    </td>
</tr>
<?php echo smarty_function_counter(array('name'=>"rowCounter"),$_smarty_tpl);?>

<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

</table>
</table>

<?php echo smarty_function_sugar_getscript(array('file'=>"include/javascript/yui/build/dragdrop/dragdrop-min.js"),$_smarty_tpl);?>


<?php echo '<script'; ?>
>

    var lastField = '';
    var lastRowCount = -1;
    var inputsWithErrors = [];
    function prepChangeDropDownValue(rowCount, field)
    {
        var tempLastField = lastField;
        if(lastRowCount != -1)
        {
            //Check for validation errors first
            if(checkForErrors(lastRowCount))
                return true;

            collapseRow(lastRowCount);
        }
        if(tempLastField == field)
            return;
        lastField = field;
        lastRowCount = rowCount;

        field.style.display="none";

        var textspan =  document.getElementById('slot' + rowCount + '_textspan');
        var text = document.getElementById("slot" + rowCount + "_text");
        textspan.style.display='inline'
        text.focus();
    }

    function checkForErrors(rowCount)
    {
        var foundErrors = false;
        var el1 = document.getElementById("slot" + rowCount + "_text");
        var el2 = document.getElementById("slot" + rowCount + "_stext");

        if( YAHOO.lang.trim(el1.value) == "")
        {
            add_error_style('editdropdown', el1, SUGAR.language.get('app_strings', 'ERR_MISSING_REQUIRED_FIELDS'),true);
            foundErrors = true;
        }
        if( YAHOO.lang.trim(el2.value) == "")
        {
            add_error_style('editdropdown', el2, SUGAR.language.get('app_strings', 'ERR_MISSING_REQUIRED_FIELDS'),true);
            foundErrors = true;
        }

        return foundErrors;
    }

    /*
        scrub input for bug 50607: able to enter HTML/JS and execute through module renaming.
     */
    function cleanModuleName(val)
    {
        return YAHOO.lang.escapeHTML(val);
    }

    /*
        pulled out routine to keep scrubbing from being called multiple times
     */
    function collapseRow(rowCount)
    {
        var text =  document.getElementById('slot' + rowCount + '_text');
        var textspan =  document.getElementById('slot' + rowCount + '_textspan');
        var span = document.getElementById('slot' + rowCount + '_value');
        textspan.style.display = 'none';
        span.style.display = 'inline';
        lastField = '';
        lastRowCount = -1;
    }

    function setSingularDropDownValue(rowCount)
    {
        document.getElementById('svalue_'+ rowCount).value = document.getElementById('slot' + rowCount + '_stext').value;
    }

    function setDropDownValue(rowCount, val, collapse)
    {
        //Check for validation errors first
        if(checkForErrors(rowCount))
            return true;

        document.getElementById('value_' + rowCount).value = val;

        var span = document.getElementById('slot' + rowCount + '_value');
        if(collapse)
        {
            span.innerHTML  = cleanModuleName(val);
            collapseRow(rowCount);
        }

        setSingularDropDownValue(rowCount);
    }

    var slotCount = <?php echo $_smarty_tpl->tpl_vars['rowCounter']->value;?>
;
    var yahooSlots = [];

    function validateForm()
    {
        for(i=0;i<slotCount;i++)
        {
            if( checkForErrors(i) )
            {
                //Highlight dropdown value if we find an error.
                prepChangeDropDownValue(i,  document.getElementById("slot"+i+"_value"));
                return;
            }
        }

        if(check_form("editdropdown"))
        {
            document.editdropdown.submit();
        }

    }
<?php echo '</script'; ?>
>



<div id='logDiv' style='display:none'>
</div>

<input type='hidden' name='use_push' value='1'>
</form>
</td></tr>
</table>
</div>
<?php }
}
