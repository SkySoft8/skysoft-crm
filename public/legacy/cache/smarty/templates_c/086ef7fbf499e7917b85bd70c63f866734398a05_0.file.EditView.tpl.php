<?php
/* Smarty version 4.5.3, created on 2025-03-03 15:09:47
  from 'C:\Apache24\htdocs\crm\public\legacy\cache\themes\suite8\modules\Meetings\EditView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67c5c63beca1c9_80547654',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '086ef7fbf499e7917b85bd70c63f866734398a05' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\cache\\themes\\suite8\\modules\\Meetings\\EditView.tpl',
      1 => 1741014587,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67c5c63beca1c9_80547654 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\modifier.escape.php','function'=>'smarty_modifier_escape',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_include.php','function'=>'smarty_function_sugar_include',),2=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),3=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\block.minify.php','function'=>'smarty_block_minify',),4=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\modifier.strip_semicolon.php','function'=>'smarty_modifier_strip_semicolon',),5=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.counter.php','function'=>'smarty_function_counter',),6=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.html_options.php','function'=>'smarty_function_html_options',),7=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getimage.php','function'=>'smarty_function_sugar_getimage',),8=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getjspath.php','function'=>'smarty_function_sugar_getjspath',),9=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getscript.php','function'=>'smarty_function_sugar_getscript',),));
?>

<div class="edit-border-bottom"></div>


<?php echo '<script'; ?>
>
    
    $(document).ready(function(){
	    $("ul.clickMenu").each(function(index, node){
	        $(node).sugarActionMenu();
	    });

        if($('.edit-view-pagination').children().length == 0) $('.saveAndContinue').remove();
    });
    
<?php echo '</script'; ?>
>
<div class="clear"></div>
<form action="index.php" method="POST" name="<?php echo $_smarty_tpl->tpl_vars['form_name']->value;?>
" id="<?php echo $_smarty_tpl->tpl_vars['form_id']->value;?>
" <?php echo $_smarty_tpl->tpl_vars['enctype']->value;?>
>
<div class="edit-view-pagination-mobile-container">
<div class="edit-view-pagination edit-view-mobile-pagination">
<?php echo $_smarty_tpl->tpl_vars['PAGINATION']->value;?>

</div>
</div>
<table width="100%" cellpadding="0" cellspacing="0" border="0" class="dcQuickEdit">
<tr>
<td class="buttons action-buttons">
<input type="hidden" name="module" value="<?php echo $_smarty_tpl->tpl_vars['module']->value;?>
">
<?php if ((isset($_REQUEST['isDuplicate'])) && $_REQUEST['isDuplicate'] == "true") {?>
<input type="hidden" name="record" value="">
<input type="hidden" name="duplicateSave" value="true">
<input type="hidden" name="duplicateId" value="<?php echo $_smarty_tpl->tpl_vars['fields']->value['id']['value'];?>
">
<?php } else { ?>
<input type="hidden" name="record" value="<?php echo $_smarty_tpl->tpl_vars['fields']->value['id']['value'];?>
">
<?php }?>
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="action">
<input type="hidden" name="return_module" value="<?php echo $_REQUEST['return_module'];?>
">
<input type="hidden" name="return_action" value="<?php echo $_REQUEST['return_action'];?>
">
<input type="hidden" name="return_id" value="<?php echo $_REQUEST['return_id'];?>
">
<input type="hidden" name="module_tab"> 
<input type="hidden" name="contact_role">
<?php if ((!empty($_REQUEST['return_module']) || !empty($_REQUEST['relate_to'])) && !((isset($_REQUEST['isDuplicate'])) && $_REQUEST['isDuplicate'] == "true")) {?>
<input type="hidden" name="relate_to" value="<?php if ($_REQUEST['return_relationship']) {
echo $_REQUEST['return_relationship'];
} elseif ($_REQUEST['relate_to'] && empty($_REQUEST['from_dcmenu'])) {
echo $_REQUEST['relate_to'];
} elseif (empty($_smarty_tpl->tpl_vars['isDCForm']->value) && empty($_REQUEST['from_dcmenu'])) {
echo $_REQUEST['return_module'];
}?>">
<input type="hidden" name="relate_id" value="<?php echo $_REQUEST['return_id'];?>
">
<?php }?>
<input type="hidden" name="offset" value="<?php echo $_smarty_tpl->tpl_vars['offset']->value;?>
">
<?php $_smarty_tpl->_assignInScope('place', "_HEADER");?> <!-- to be used for id for buttons with custom code in def files-->
<input type="hidden" name="isSaveAndNew" value="false">   
<input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_TITLE'];?>
" id="SAVE_HEADER" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_KEY'];?>
" class="button primary" onclick="SUGAR.meetings.fill_invitees();document.EditView.action.value='Save'; document.EditView.return_action.value='DetailView'; <?php if ((isset($_REQUEST['isDuplicate'])) && $_REQUEST['isDuplicate'] == "true") {?>document.EditView.return_id.value=''; <?php }?> formSubmitCheck();" type="button" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_BUTTON_LABEL'];?>
"/>
<?php if (!empty($_REQUEST['return_action']) && ($_REQUEST['return_action'] == "DetailView" && !empty($_REQUEST['return_id']))) {?><input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_TITLE'];?>
" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_KEY'];?>
" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module=<?php echo smarty_modifier_escape($_REQUEST['return_module'],"url");?>
&record=<?php echo smarty_modifier_escape($_REQUEST['return_id'],"url");?>
'); return false;" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_LABEL'];?>
" type="button" id="CANCEL"> <?php } elseif (!empty($_REQUEST['return_action']) && ($_REQUEST['return_action'] == "DetailView" && !empty($_smarty_tpl->tpl_vars['fields']->value['id']['value']))) {?><input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_TITLE'];?>
" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_KEY'];?>
" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=DetailView&module=<?php echo smarty_modifier_escape($_REQUEST['return_module'],"url");?>
&record=<?php echo $_smarty_tpl->tpl_vars['fields']->value['id']['value'];?>
'); return false;" type="button" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_LABEL'];?>
" id="CANCEL"> <?php } elseif (!empty($_REQUEST['return_action']) && ($_REQUEST['return_action'] == "DetailView" && empty($_smarty_tpl->tpl_vars['fields']->value['id']['value'])) && empty($_REQUEST['return_id'])) {?><input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_TITLE'];?>
" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_KEY'];?>
" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=ListView&module=<?php echo smarty_modifier_escape($_REQUEST['return_module'],"url");?>
&record=<?php echo $_smarty_tpl->tpl_vars['fields']->value['id']['value'];?>
'); return false;" type="button" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_LABEL'];?>
" id="CANCEL"> <?php } elseif (!empty($_REQUEST['return_action']) && !empty($_REQUEST['return_module'])) {?><input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_TITLE'];?>
" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_KEY'];?>
" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=<?php echo $_REQUEST['return_action'];?>
&module=<?php echo smarty_modifier_escape($_REQUEST['return_module'],"url");?>
'); return false;" type="button" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_LABEL'];?>
" id="CANCEL"> <?php } elseif (empty($_REQUEST['return_action']) || empty($_REQUEST['return_id']) && !empty($_smarty_tpl->tpl_vars['fields']->value['id']['value'])) {?><input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_TITLE'];?>
" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_KEY'];?>
" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module=Meetings'); return false;" type="button" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_LABEL'];?>
" id="CANCEL"> <?php } else { ?><input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_TITLE'];?>
" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_KEY'];?>
" class="button" onclick="SUGAR.ajaxUI.loadContent('index.php?action=index&module=<?php echo smarty_modifier_escape($_REQUEST['return_module'],"url");?>
&record=<?php echo smarty_modifier_escape($_REQUEST['return_id'],"url");?>
'); return false;" type="button" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CANCEL_BUTTON_LABEL'];?>
" id="CANCEL"> <?php }?>
<input title="<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_SEND_BUTTON_TITLE'];?>
" id="save_and_send_invites_header" class="button" onclick="document.EditView.send_invites.value='1';SUGAR.meetings.fill_invitees();document.EditView.action.value='Save';document.EditView.return_action.value='EditView';document.EditView.return_module.value='<?php echo $_REQUEST['return_module'];?>
'; formSubmitCheck();" type="button" name="button" value="<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_SEND_BUTTON_LABEL'];?>
"/>
<?php if ($_smarty_tpl->tpl_vars['fields']->value['status']['value'] != "Held") {?><input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CLOSE_AND_CREATE_BUTTON_TITLE'];?>
" id="close_and_create_new_header" class="button" onclick="SUGAR.meetings.fill_invitees(); document.EditView.status.value='Held'; document.EditView.action.value='Save'; document.EditView.return_module.value='Meetings'; document.EditView.isDuplicate.value=true; document.EditView.isSaveAndNew.value=true; document.EditView.return_action.value='EditView'; document.EditView.return_id.value='<?php echo $_smarty_tpl->tpl_vars['fields']->value['id']['value'];?>
'; formSubmitCheck();" type="button" name="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CLOSE_AND_CREATE_BUTTON_LABEL'];?>
"/><?php }
if ($_smarty_tpl->tpl_vars['showVCRControl']->value) {?>
<button type="button" id="save_and_continue" class="button saveAndContinue" title="<?php echo $_smarty_tpl->tpl_vars['app_strings']->value['LBL_SAVE_AND_CONTINUE'];?>
" onClick="SUGAR.saveAndContinue(this);">
<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_SAVE_AND_CONTINUE'];?>

</button>
<?php }
if ($_smarty_tpl->tpl_vars['bean']->value->aclAccess("detail")) {
if (!empty($_smarty_tpl->tpl_vars['fields']->value['id']['value']) && $_smarty_tpl->tpl_vars['isAuditEnabled']->value) {?><input id="btn_view_change_log" title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LNK_VIEW_CHANGE_LOG'];?>
" class="button" onclick='open_popup("Audit", "600", "400", "&record=<?php echo $_smarty_tpl->tpl_vars['fields']->value['id']['value'];?>
&module_name=Meetings", true, false,  { "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] } ); return false;' type="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LNK_VIEW_CHANGE_LOG'];?>
"><?php }
}?>
</td>
<td align='right' class="edit-view-pagination-desktop-container">
<div class="edit-view-pagination edit-view-pagination-desktop">
<?php echo $_smarty_tpl->tpl_vars['PAGINATION']->value;?>

</div>
</td>
</tr>
</table>
<input type="hidden" name="send_invites">
<input type="hidden" name="user_invitees">
<input type="hidden" name="contact_invitees">
<input type="hidden" name="lead_invitees">
<?php echo smarty_function_sugar_include(array('include'=>$_smarty_tpl->tpl_vars['includes']->value),$_smarty_tpl);?>

<div id="EditView_tabs">

<ul class="nav nav-tabs">
</ul>
<div class="clearfix"></div>
<div class="tab-content" style="padding: 0; border: 0;">

<div class="tab-pane panel-collapse">&nbsp;</div>
</div>

<div class="panel-content">




<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse-edit" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
<?php echo smarty_function_sugar_translate(array('label'=>'LBL_MEETING_INFORMATION','module'=>'Meetings'),$_smarty_tpl);?>

</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="detailpanel_-1" data-id="LBL_MEETING_INFORMATION">
<div class="tab-content">
<br />
<b>Deprecated</b>:  Using unregistered function "intval" in a template is deprecated and will be removed in a future release. Use Smarty::registerPlugin to explicitly register a custom modifier. in <b>C:\Apache24\htdocs\crm\vendor\smarty\smarty\libs\sysplugins\smarty_internal_templatecompilerbase.php</b> on line <b>663</b><br />
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item edit-view-bordered" data-field="name">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_SUBJECT">

<?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('minify', array());
$_block_repeat=true;
echo smarty_block_minify(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();
$_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_SUBJECT','module'=>'Meetings'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:

<span class="required">*</span>
<?php $_block_repeat=false;
echo smarty_block_minify(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="name" field="name"  >
<?php echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>


<?php if (strlen($_smarty_tpl->tpl_vars['fields']->value['name']['value']) <= 0) {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['name']['default_value']);
} else {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['name']['value']);
}?>
<input type='text' name='<?php echo $_smarty_tpl->tpl_vars['fields']->value['name']['name'];?>
'
id='<?php echo $_smarty_tpl->tpl_vars['fields']->value['name']['name'];?>
' size='30'
maxlength='50'        value='<?php echo $_smarty_tpl->tpl_vars['value']->value;?>
' title=''      >
</div>
<div class="edit-dotted-border"></div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item edit-view-bordered" data-field="status">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_STATUS">

<?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('minify', array());
$_block_repeat=true;
echo smarty_block_minify(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();
$_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_STATUS','module'=>'Meetings'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:

<?php $_block_repeat=false;
echo smarty_block_minify(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="enum" field="status"  >
<?php echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>


<select name="<?php echo $_smarty_tpl->tpl_vars['fields']->value['status']['name'];?>
"
id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['status']['name'];?>
"
title=''  tabindex="-1"              
>
<?php if ((isset($_smarty_tpl->tpl_vars['fields']->value['status']['value']))) {
echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['fields']->value['status']['options'],'selected'=>$_smarty_tpl->tpl_vars['fields']->value['status']['value']),$_smarty_tpl);?>

<?php } else {
echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['fields']->value['status']['options'],'selected'=>$_smarty_tpl->tpl_vars['fields']->value['status']['default']),$_smarty_tpl);?>

<?php }?>
</select>
&nbsp;
</div>
<div class="edit-dotted-border"></div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
<div class="clear"></div>
</div>
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-6 edit-view-row-item edit-view-bordered" data-field="date_end">


<div class="col-xs-12 col-sm-4 label" data-label="LBL_DATE_END">

<?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('minify', array());
$_block_repeat=true;
echo smarty_block_minify(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();
$_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_DATE_END','module'=>'Meetings'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:

<span class="required">*</span>
<?php $_block_repeat=false;
echo smarty_block_minify(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="datetimecombo" field="date_end"  >
<?php echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>


<table border="0" cellpadding="0" cellspacing="0" class="dateTime">
<tr valign="middle">
<td nowrap class="dateTimeComboColumn datecalendar">
<input autocomplete="off" type="text" id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
_date" class="datetimecombo_date" value="<?php echo $_smarty_tpl->tpl_vars['fields']->value[$_smarty_tpl->tpl_vars['fields']->value['date_end']['name']]['value'];?>
" size="11" maxlength="10" title='' tabindex="0" onblur="combo_<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
.update();" onchange="combo_<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
.update(); SugarWidgetScheduler.update_time();"    >
<button type="button" id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
_trigger" class="btn calendarstart" onclick="return false;">		
<span alt="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_ENTER_DATE'];?>
"><?php echo smarty_function_sugar_getimage(array('name'=>"calendar"),$_smarty_tpl);?>
 </span>
</button>
</td>
<td nowrap class="dateTimeComboColumn dateTimeSection">
<div id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
_time_section" class="datetimecombo_time_section"></div>
</td>
</tr>
</table>
<input type="hidden" class="DateTimeCombo" id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
" name="<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['fields']->value[$_smarty_tpl->tpl_vars['fields']->value['date_end']['name']]['value'];?>
">
<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file'=>"include/SugarFields/Fields/Datetimecombo/Datetimecombo.js"),$_smarty_tpl);?>
"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript">
var combo_<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
 = new Datetimecombo("<?php echo $_smarty_tpl->tpl_vars['fields']->value[$_smarty_tpl->tpl_vars['fields']->value['date_end']['name']]['value'];?>
", "<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
", "<?php echo $_smarty_tpl->tpl_vars['TIME_FORMAT']->value;?>
", "0", '', false, true);
//Render the remaining widget fields
text = combo_<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
.html('SugarWidgetScheduler.update_time();');
document.getElementById('<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
_time_section').innerHTML = text;

//Call eval on the update function to handle updates to calendar picker object
eval(combo_<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
.jsscript('SugarWidgetScheduler.update_time();'));

addToValidateBinaryDependency('<?php echo $_smarty_tpl->tpl_vars['form_name']->value;?>
',"<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
_hours", 'alpha', false, "<?php echo $_smarty_tpl->tpl_vars['APP']->value['ERR_MISSING_REQUIRED_FIELDS'];?>
 <?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_HOURS'];?>
" ,"<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
_date");
addToValidateBinaryDependency('<?php echo $_smarty_tpl->tpl_vars['form_name']->value;?>
', "<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
_minutes", 'alpha', false, "<?php echo $_smarty_tpl->tpl_vars['APP']->value['ERR_MISSING_REQUIRED_FIELDS'];?>
 <?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_MINUTES'];?>
" ,"<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
_date");
addToValidateBinaryDependency('<?php echo $_smarty_tpl->tpl_vars['form_name']->value;?>
', "<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
_meridiem", 'alpha', false, "<?php echo $_smarty_tpl->tpl_vars['APP']->value['ERR_MISSING_REQUIRED_FIELDS'];?>
 <?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_MERIDIEM'];?>
","<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
_date");

YAHOO.util.Event.onDOMReady(function()
{

	Calendar.setup ({
	onClose : update_<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
,
	inputField : "<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
_date",
    form : "EditView",
	ifFormat : "<?php echo $_smarty_tpl->tpl_vars['CALENDAR_FORMAT']->value;?>
",
	daFormat : "<?php echo $_smarty_tpl->tpl_vars['CALENDAR_FORMAT']->value;?>
",
	button : "<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
_trigger",
	singleClick : true,
	step : 1,
	weekNumbers: false,
        startWeekday: <?php echo (($tmp = $_smarty_tpl->tpl_vars['CALENDAR_FDOW']->value ?? null)===null||$tmp==='' ? '0' ?? null : $tmp);?>
,
	comboObject: combo_<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>

	});

	//Call update for first time to round hours and minute values
	combo_<?php echo $_smarty_tpl->tpl_vars['fields']->value['date_end']['name'];?>
.update(false);

}); 
<?php echo '</script'; ?>
>
</div>
<div class="edit-dotted-border"></div>

<!-- [/hide] -->
</div>


<div class="col-xs-12 col-sm-6 edit-view-row-item edit-view-bordered" data-field="">
</div>
<div class="clear"></div>
<div class="clear"></div>
</div>
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-12 edit-view-row-item" data-field="description">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_DESCRIPTION">

<?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('minify', array());
$_block_repeat=true;
echo smarty_block_minify(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();
$_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_DESCRIPTION','module'=>'Meetings'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:

<?php $_block_repeat=false;
echo smarty_block_minify(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="text" field="description" colspan='3' >
<?php echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>


<?php if (empty($_smarty_tpl->tpl_vars['fields']->value['description']['value'])) {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['description']['default_value']);
} else {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['description']['value']);
}?>
<textarea  id='<?php echo $_smarty_tpl->tpl_vars['fields']->value['description']['name'];?>
' name='<?php echo $_smarty_tpl->tpl_vars['fields']->value['description']['name'];?>
'
    rows="6"
    cols="80"
    title='' tabindex="0" 
     ><?php echo $_smarty_tpl->tpl_vars['value']->value;?>
</textarea>

</div>
<div class="edit-dotted-border"></div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
</div>
</div>
</div>
</div>




<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse-edit" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
<?php echo smarty_function_sugar_translate(array('label'=>'LBL_PANEL_ASSIGNMENT','module'=>'Meetings'),$_smarty_tpl);?>

</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="detailpanel_0" data-id="LBL_PANEL_ASSIGNMENT">
<div class="tab-content">
<!-- tab_panel_content.tpl -->
<div class="row edit-view-row">



<div class="col-xs-12 col-sm-12 edit-view-row-item" data-field="assigned_user_name">


<div class="col-xs-12 col-sm-2 label" data-label="LBL_ASSIGNED_TO_NAME">

<?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('minify', array());
$_block_repeat=true;
echo smarty_block_minify(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();
$_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_ASSIGNED_TO_NAME','module'=>'Meetings'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:

<?php $_block_repeat=false;
echo smarty_block_minify(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
</div>

<div class="col-xs-12 col-sm-8 edit-view-field " type="relate" field="assigned_user_name" colspan='3' >
<?php echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>


<input type="text" name="<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['name'];?>
" class="sqsEnabled" tabindex="0" id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['name'];?>
" size="" value="<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['value'];?>
" title='' autocomplete="off"  	 >
<input type="hidden" name="<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['id_name'];?>
" 
id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['id_name'];?>
" 
value="<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_id']['value'];?>
">
<span class="id-ff multiple selectcrossbtn">
<button type="button" name="btn_<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['name'];?>
" id="btn_<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['name'];?>
" tabindex="0" title="<?php echo smarty_function_sugar_translate(array('label'=>"LBL_ACCESSKEY_SELECT_USERS_TITLE"),$_smarty_tpl);?>
" class="firstChild" value="<?php echo smarty_function_sugar_translate(array('label'=>"LBL_ACCESSKEY_SELECT_USERS_LABEL"),$_smarty_tpl);?>
"
onclick='open_popup(
"<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['module'];?>
", 
600, 
400, 
"", 
true, 
false, 
{"call_back_function":"set_return","form_name":"EditView","field_to_name_array":{"id":"assigned_user_id","user_name":"assigned_user_name"}}, 
"single", 
true
);' >
<?php echo smarty_function_sugar_getimage(array('name'=>"cursor",'attr'=>'border="0"'),$_smarty_tpl);?>

</button>
<button type="button" name="btn_clr_<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['name'];?>
" id="btn_clr_<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['name'];?>
" tabindex="0" title="<?php echo smarty_function_sugar_translate(array('label'=>"LBL_ACCESSKEY_CLEAR_USERS_TITLE"),$_smarty_tpl);?>
"  class="lastChild"
onclick="SUGAR.clearRelateField(this.form, '<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['name'];?>
', '<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['id_name'];?>
');"  value="<?php echo smarty_function_sugar_translate(array('label'=>"LBL_ACCESSKEY_CLEAR_USERS_LABEL"),$_smarty_tpl);?>
" >
<?php echo smarty_function_sugar_getimage(array('name'=>"cross",'attr'=>'border="0"'),$_smarty_tpl);?>

</button>
</span>
<?php echo '<script'; ?>
 type="text/javascript">
SUGAR.util.doWhen(
		"typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['<?php echo $_smarty_tpl->tpl_vars['form_name']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['name'];?>
']) != 'undefined'",
		enableQS
);
<?php echo '</script'; ?>
>
</div>
<div class="edit-dotted-border"></div>

<!-- [/hide] -->
</div>
<div class="clear"></div>
</div>
</div>
</div>
</div>
</div>
</div>

<div class="h3Row" id="scheduler"></div>
<?php echo '<script'; ?>
 language="javascript">
    var _form_id = '<?php echo $_smarty_tpl->tpl_vars['form_id']->value;?>
';
    
    SUGAR.util.doWhen(function(){
        _form_id = (_form_id == '') ? 'EditView' : _form_id;
        return document.getElementById(_form_id) != null;
    }, SUGAR.themes.actionMenu);
    
<?php echo '</script'; ?>
>
<?php $_smarty_tpl->_assignInScope('place', "_FOOTER");?> <!-- to be used for id for buttons with custom code in def files-->
</form>
<?php echo $_smarty_tpl->tpl_vars['set_focus_block']->value;?>

<!-- Begin Meta-Data Javascript -->
<?php echo '<script'; ?>
 type="text/javascript"><?php echo $_smarty_tpl->tpl_vars['JSON_CONFIG_JAVASCRIPT']->value;
echo '</script'; ?>
>
<?php echo smarty_function_sugar_getscript(array('file'=>"cache/include/javascript/sugar_grp_jsolait.js"),$_smarty_tpl);?>

<?php echo '<script'; ?>
>toggle_portal_flag();function toggle_portal_flag()  { <?php echo $_smarty_tpl->tpl_vars['TOGGLE_JS']->value;?>
 } 
function formSubmitCheck(){if(check_form('EditView')){document.EditView.submit();}}<?php echo '</script'; ?>
>
<!-- End Meta-Data Javascript -->
<?php echo '<script'; ?>
>SUGAR.util.doWhen("document.getElementById('EditView') != null",
            function(){SUGAR.util.buildAccessKeyLabels();});
<?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type='text/javascript' src='<?php echo smarty_function_sugar_getjspath(array('file'=>'include/javascript/popup_helper.js'),$_smarty_tpl);?>
'><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file'=>'cache/include/javascript/sugar_grp_yui2.js'),$_smarty_tpl);?>
"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file'=>'cache/include/javascript/sugar_grp_yui_widgets.js'),$_smarty_tpl);?>
"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript">
    
    SUGAR.meetings = {};
    var meetingsLoader = new YAHOO.util.YUILoader({
        require : ["sugar_grp_jsolait"],
        // Bug #48940 Skin always must be blank
        skin: {
            base: 'blank',
            defaultSkin: ''
        },
        onSuccess: function(){
            SUGAR.meetings.fill_invitees = function() {
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
                    SUGAR.meetings.fill_invitees();
                    eval(oldclick);
                }
            }
        }
    });
    meetingsLoader.addModule({
        name :"sugar_grp_jsolait",
        type : "js",
        fullpath: "cache/include/javascript/sugar_grp_jsolait.js",
        varName: "global_rpcClient",
        requires: []
    });
    meetingsLoader.insert();
    YAHOO.util.Event.onContentReady("EditView",function() {
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
    });
    
<?php echo '</script'; ?>
>
</form>
<?php echo '<script'; ?>
 type="text/javascript">
YAHOO.util.Event.onContentReady("EditView",
    function () { initEditView(document.forms.EditView) });
//window.setTimeout(, 100);
window.onbeforeunload = function () { return onUnloadEditView(); };
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {
$(document).ready(function() {
    $(".collapseLink,.expandLink").click(function (e) { e.preventDefault(); });
  });
}
<?php echo '</script'; ?>
>

<?php echo '<script'; ?>
 type="text/javascript">

    var selectTab = function(tab) {
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').hide();
        $('#EditView_tabs div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').eq(tab).show().addClass('active').addClass('in');
        $('#EditView_tabs div.panel-content div.panel').hide();
        $('#EditView_tabs div.panel-content div.panel.tab-panel-' + tab).show()
    };

    var selectTabOnError = function(tab) {
        selectTab(tab);
        $('#EditView_tabs ul.nav.nav-tabs li').removeClass('active');
        $('#EditView_tabs ul.nav.nav-tabs li a').css('color', '');

        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).find('a').first().css('color', 'red');
        $('#EditView_tabs ul.nav.nav-tabs li').eq(tab).addClass('active');

    };

    var selectTabOnErrorInputHandle = function(inputHandle) {
        var tab = $(inputHandle).closest('.tab-pane-NOBOOTSTRAPTOGGLER').attr('id').match(/^tab-content-(.*)$/)[1];
        selectTabOnError(tab);
    };


    $(function(){
        $('#EditView_tabs ul.nav.nav-tabs li > a[data-toggle="tab"]').click(function(e){
            if(typeof $(this).parent().find('a').first().attr('id') != 'undefined') {
                var tab = parseInt($(this).parent().find('a').first().attr('id').match(/^tab(?<number>(.)*)$/)[1]);
                selectTab(tab);
            }
        });

        $('a[data-toggle="collapse-edit"]').click(function(e){
            if($(this).hasClass('collapsed')) {
              // Expand panel
                // Change style of .panel-header
                $(this).removeClass('collapsed');
                // Expand .panel-body
                $(this).parents('.panel').find('.panel-body').removeClass('in').addClass('in');
            } else {
              // Collapse panel
                // Change style of .panel-header
                $(this).addClass('collapsed');
                // Collapse .panel-body
                $(this).parents('.panel').find('.panel-body').removeClass('in').removeClass('in');
            }
        });
    });

    <?php echo '</script'; ?>
>

<?php echo '<script'; ?>
 type="text/javascript">
addForm('EditView');addToValidate('EditView', 'name', 'name', true,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_SUBJECT','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'date_entered_date', 'date', false,'Дата создания' );
addToValidate('EditView', 'date_modified_date', 'date', false,'Дата изменения' );
addToValidate('EditView', 'modified_user_id', 'assigned_user_name', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_MODIFIED','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'modified_by_name', 'relate', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_MODIFIED_NAME','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'created_by', 'assigned_user_name', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_CREATED','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'created_by_name', 'relate', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_CREATED','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'description', 'text', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_DESCRIPTION','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'deleted', 'bool', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_DELETED','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'assigned_user_id', 'relate', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_ASSIGNED_TO_ID','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'assigned_user_name', 'relate', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_ASSIGNED_TO_NAME','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'accept_status', 'varchar', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_ACCEPT_STATUS','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'set_accept_links', 'varchar', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_ACCEPT_LINK','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'location', 'varchar', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_LOCATION','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'password', 'varchar', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_PASSWORD','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'join_url', 'varchar', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_URL','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'host_url', 'varchar', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_HOST_URL','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'displayed_url', 'url', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_DISPLAYED_URL','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'creator', 'varchar', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_CREATOR','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'external_id', 'varchar', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_EXTERNALID','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'duration_hours', 'int', true,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_DURATION_HOURS','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'duration_minutes', 'int', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_DURATION_MINUTES','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'date_start_date', 'date', true,'Дата начала' );
addToValidateDateBefore('EditView', 'date_start', 'datetimecombo', true,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_DATE','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
', 'date_end' );
addToValidate('EditView', 'date_end_date', 'date', true,'Дата окончания' );
addToValidate('EditView', 'parent_type', 'parent_type', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_PARENT_TYPE','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'status', 'enum', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_STATUS','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'type', 'enum', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_TYPE','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'direction', 'enum', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_DIRECTION','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'parent_id', 'id', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_PARENT_ID','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'reminder_checked', 'bool', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_REMINDER','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'reminder_time', 'enum', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_REMINDER_TIME','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'email_reminder_checked', 'bool', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_EMAIL_REMINDER','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'email_reminder_time', 'enum', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_EMAIL_REMINDER_TIME','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'email_reminder_sent', 'bool', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_EMAIL_REMINDER_SENT','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'reminders', 'function', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_REMINDERS','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'outlook_id', 'varchar', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_OUTLOOK_ID','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'sequence', 'int', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_SEQUENCE','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'contact_name', 'relate', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_CONTACT_NAME','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'parent_name', 'parent', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_LIST_RELATED_TO','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'repeat_type', 'enum', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_REPEAT_TYPE','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'repeat_interval', 'int', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_REPEAT_INTERVAL','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'repeat_dow', 'varchar', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_REPEAT_DOW','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'repeat_until', 'date', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_REPEAT_UNTIL','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'repeat_count', 'int', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_REPEAT_COUNT','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'repeat_parent_id', 'id', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_REPEAT_PARENT_ID','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'recurring_source', 'varchar', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_RECURRING_SOURCE','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'duration', 'enum', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_DURATION','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'gsync_id', 'varchar', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_GSYNC_ID','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'gsync_lastsync', 'int', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_GSYNC_LASTSYNC','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'jjwg_maps_address_c', 'varchar', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_JJWG_MAPS_ADDRESS','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'jjwg_maps_geocode_status_c', 'varchar', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_JJWG_MAPS_GEOCODE_STATUS','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'jjwg_maps_lat_c', 'float', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_JJWG_MAPS_LAT','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidate('EditView', 'jjwg_maps_lng_c', 'float', false,'<?php echo smarty_function_sugar_translate(array('label'=>'LBL_JJWG_MAPS_LNG','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
' );
addToValidateBinaryDependency('EditView', 'assigned_user_name', 'alpha', false,'<?php echo smarty_function_sugar_translate(array('label'=>'ERR_SQS_NO_MATCH_FIELD','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
: <?php echo smarty_function_sugar_translate(array('label'=>'LBL_ASSIGNED_TO','module'=>'Meetings','for_js'=>true),$_smarty_tpl);?>
', 'assigned_user_id' );
<?php echo '</script'; ?>
><?php echo '<script'; ?>
 language="javascript">if(typeof sqs_objects == 'undefined'){var sqs_objects = new Array;}sqs_objects['EditView_assigned_user_name']={"form":"EditView","method":"get_user_array","field_list":["user_name","id"],"populate_list":["assigned_user_name","assigned_user_id"],"required_list":["assigned_user_id"],"conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],"limit":"30","no_match_text":"\u041d\u0435 \u0432\u044b\u0431\u0440\u0430\u043d\u043e"};<?php echo '</script'; ?>
>
<?php }
}
