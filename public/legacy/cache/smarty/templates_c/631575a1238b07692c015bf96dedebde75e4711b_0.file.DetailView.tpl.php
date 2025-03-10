<?php
/* Smarty version 4.5.3, created on 2025-03-10 08:24:59
  from 'C:\Apache24\htdocs\crm\public\legacy\cache\themes\suite8\modules\Project\DetailView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67cea1dbcefd76_78380332',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '631575a1238b07692c015bf96dedebde75e4711b' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\cache\\themes\\suite8\\modules\\Project\\DetailView.tpl',
      1 => 1741595099,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67cea1dbcefd76_78380332 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_include.php','function'=>'smarty_function_sugar_include',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),2=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\modifier.strip_semicolon.php','function'=>'smarty_modifier_strip_semicolon',),3=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.counter.php','function'=>'smarty_function_counter',),4=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getimage.php','function'=>'smarty_function_sugar_getimage',),5=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\modifier.escape.php','function'=>'smarty_modifier_escape',),));
?>

<div class="detail-border-bottom"></div>

<?php echo '<script'; ?>
 language="javascript">
    
    SUGAR.util.doWhen(function () {
        return $("#contentTable").length == 0;
    }, SUGAR.themes.actionMenu);
    
<?php echo '</script'; ?>
>
<table cellpadding="0" cellspacing="0" border="0" width="100%" id="">
<tr>
<td class="buttons" align="left" NOWRAP width="80%">
<div class="actionsContainer">
<form action="index.php" method="post" name="DetailView" id="formDetailView">
<input type="hidden" name="module" value="<?php echo $_smarty_tpl->tpl_vars['module']->value;?>
">
<input type="hidden" name="record" value="<?php echo $_smarty_tpl->tpl_vars['fields']->value['id']['value'];?>
">
<input type="hidden" name="return_action">
<input type="hidden" name="return_module">
<input type="hidden" name="return_id">
<input type="hidden" name="module_tab">
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="offset" value="<?php echo $_smarty_tpl->tpl_vars['offset']->value;?>
">
<input type="hidden" name="action" value="EditView">
<input type="hidden" name="sugar_body_only">
<?php if (!$_smarty_tpl->tpl_vars['config']->value['enable_action_menu']) {?>
<br />
<b>Deprecated</b>:  Using unregistered function "count" in a template is deprecated and will be removed in a future release. Use Smarty::registerPlugin to explicitly register a custom modifier. in <b>C:\Apache24\htdocs\crm\vendor\smarty\smarty\libs\sysplugins\smarty_internal_templatecompilerbase.php</b> on line <b>663</b><br />
<div class="buttons">
<input id="edit_button" class="button" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_EDIT_BUTTON_KEY'];?>
" name="Edit" onclick="var _form = document.getElementById('formDetailView');<?php if ($_smarty_tpl->tpl_vars['IS_TEMPLATE']->value) {?>_form.return_module.value='Project'; _form.return_action.value='ProjectTemplatesDetailView'; _form.return_id.value='<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
'; _form.action.value='ProjectTemplatesEditView';<?php } else { ?>_form.return_module.value='Project'; _form.return_action.value='DetailView'; _form.return_id.value='<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
'; _form.action.value='EditView'; <?php }?>;window.location.href='index.php?' + (new URLSearchParams(new FormData(_form)).toString());" type="button" value=" <?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_EDIT_BUTTON_LABEL'];?>
 "/>
<input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DELETE_BUTTON_TITLE'];?>
" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DELETE_BUTTON_KEY'];?>
" id="delete_button" class="button" onclick="project_delete(this);" type="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DELETE_BUTTON_LABEL'];?>
"/>
<input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DUPLICATE_BUTTON_TITLE'];?>
" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DUPLICATE_BUTTON_KEY'];?>
" class="button" name="Duplicate" id="duplicate_button" onclick="var _form = document.getElementById('formDetailView');<?php if ($_smarty_tpl->tpl_vars['IS_TEMPLATE']->value) {?>_form.return_module.value='Project'; _form.return_action.value='ProjectTemplatesDetailView'; _form.isDuplicate.value=true; _form.action.value='projecttemplateseditview'; _form.return_id.value='<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
';<?php } else { ?>_form.return_module.value='Project'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
';<?php }?>;window.location.href='index.php?' + (new URLSearchParams(new FormData(_form)).toString());" type="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DUPLICATE_BUTTON_LABEL'];?>
"/>
<input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_VIEW_GANTT_TITLE'];?>
" class="button" type="button" name="view_gantt" id="view_gantt" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_GANTT_BUTTON_LABEL'];?>
" onclick="javascript:window.location.href='index.php?module=Project&action=view_GanttChart&record=<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
'" //>
<input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_VIEW_DETAIL'];?>
" class="button" type="button" name="view_detail" id="view_detail" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DETAIL_BUTTON_LABEL'];?>
" onclick="javascript:window.location.href='index.php?module=Project&action=DetailView&record=<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
'" //>
<?php if ($_smarty_tpl->tpl_vars['bean']->value->aclAccess("detail")) {
if (!empty($_smarty_tpl->tpl_vars['fields']->value['id']['value']) && $_smarty_tpl->tpl_vars['isAuditEnabled']->value) {?><input id="btn_view_change_log" title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LNK_VIEW_CHANGE_LOG'];?>
" class="button" onclick='open_popup("Audit", "600", "400", "&record=<?php echo $_smarty_tpl->tpl_vars['fields']->value['id']['value'];?>
&module_name=Project", true, false,  { "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] } ); return false;' type="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LNK_VIEW_CHANGE_LOG'];?>
"><?php }
}?>
</div>
<?php }?>
</form>
</div>
</td>
<td align="right" width="20%" class="buttons"><?php echo $_smarty_tpl->tpl_vars['ADMIN_EDIT']->value;?>

</td>
</tr>
</table>
<?php echo smarty_function_sugar_include(array('include'=>$_smarty_tpl->tpl_vars['includes']->value),$_smarty_tpl);?>

<div class="detail-view">
<div class="mobile-pagination"><?php echo $_smarty_tpl->tpl_vars['PAGINATION']->value;?>
</div>

<ul class="nav nav-tabs">

<?php if ($_smarty_tpl->tpl_vars['config']->value['enable_action_menu'] && $_smarty_tpl->tpl_vars['config']->value['enable_action_menu'] != false) {?>
<li role="presentation" class="active">
<a id="tab0" data-toggle="tab" class="hidden-xs">
<?php echo smarty_function_sugar_translate(array('label'=>'LBL_PROJECT_INFORMATION','module'=>'Project'),$_smarty_tpl);?>

</a>
<a id="xstab0" href="#" class="visible-xs first-tab dropdown-toggle" data-toggle="dropdown">
<?php echo smarty_function_sugar_translate(array('label'=>'LBL_PROJECT_INFORMATION','module'=>'Project'),$_smarty_tpl);?>

</a>
</li>
<?php }
if ($_smarty_tpl->tpl_vars['config']->value['enable_action_menu'] && $_smarty_tpl->tpl_vars['config']->value['enable_action_menu'] != false) {?>
<li id="tab-actions" class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Действия<span class="suitepicon suitepicon-action-caret"></span></a>
<br />
<b>Deprecated</b>:  Using unregistered function "count" in a template is deprecated and will be removed in a future release. Use Smarty::registerPlugin to explicitly register a custom modifier. in <b>C:\Apache24\htdocs\crm\vendor\smarty\smarty\libs\sysplugins\smarty_internal_templatecompilerbase.php</b> on line <b>663</b><br />
<ul class="dropdown-menu">
<li><input id="edit_button" class="button" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_EDIT_BUTTON_KEY'];?>
" name="Edit" onclick="var _form = document.getElementById('formDetailView');<?php if ($_smarty_tpl->tpl_vars['IS_TEMPLATE']->value) {?>_form.return_module.value='Project'; _form.return_action.value='ProjectTemplatesDetailView'; _form.return_id.value='<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
'; _form.action.value='ProjectTemplatesEditView';<?php } else { ?>_form.return_module.value='Project'; _form.return_action.value='DetailView'; _form.return_id.value='<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
'; _form.action.value='EditView'; <?php }?>;window.location.href='index.php?' + (new URLSearchParams(new FormData(_form)).toString());" type="button" value=" <?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_EDIT_BUTTON_LABEL'];?>
 "/></li>
<li><input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DELETE_BUTTON_TITLE'];?>
" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DELETE_BUTTON_KEY'];?>
" id="delete_button" class="button" onclick="project_delete(this);" type="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DELETE_BUTTON_LABEL'];?>
"/></li>
<li><input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DUPLICATE_BUTTON_TITLE'];?>
" accessKey="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DUPLICATE_BUTTON_KEY'];?>
" class="button" name="Duplicate" id="duplicate_button" onclick="var _form = document.getElementById('formDetailView');<?php if ($_smarty_tpl->tpl_vars['IS_TEMPLATE']->value) {?>_form.return_module.value='Project'; _form.return_action.value='ProjectTemplatesDetailView'; _form.isDuplicate.value=true; _form.action.value='projecttemplateseditview'; _form.return_id.value='<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
';<?php } else { ?>_form.return_module.value='Project'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
';<?php }?>;window.location.href='index.php?' + (new URLSearchParams(new FormData(_form)).toString());" type="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DUPLICATE_BUTTON_LABEL'];?>
"/></li>
<li><input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_VIEW_GANTT_TITLE'];?>
" class="button" type="button" name="view_gantt" id="view_gantt" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_GANTT_BUTTON_LABEL'];?>
" onclick="javascript:window.location.href='index.php?module=Project&action=view_GanttChart&record=<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
'" //></li>
<li><input title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_VIEW_DETAIL'];?>
" class="button" type="button" name="view_detail" id="view_detail" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_DETAIL_BUTTON_LABEL'];?>
" onclick="javascript:window.location.href='index.php?module=Project&action=DetailView&record=<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
'" //></li>
<li><?php if ($_smarty_tpl->tpl_vars['bean']->value->aclAccess("detail")) {
if (!empty($_smarty_tpl->tpl_vars['fields']->value['id']['value']) && $_smarty_tpl->tpl_vars['isAuditEnabled']->value) {?><input id="btn_view_change_log" title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LNK_VIEW_CHANGE_LOG'];?>
" class="button" onclick='open_popup("Audit", "600", "400", "&record=<?php echo $_smarty_tpl->tpl_vars['fields']->value['id']['value'];?>
&module_name=Project", true, false,  { "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] } ); return false;' type="button" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LNK_VIEW_CHANGE_LOG'];?>
"><?php }
}?></li>
</ul>
</li>
<li class="tab-inline-pagination">
<?php echo $_smarty_tpl->tpl_vars['PAGINATION']->value;?>

</li>
<?php }?>
</ul>
<div class="clearfix"></div>

<?php if ($_smarty_tpl->tpl_vars['config']->value['enable_action_menu'] && $_smarty_tpl->tpl_vars['config']->value['enable_action_menu'] != false) {?>

<div class="tab-content">
<?php } else { ?>

<div class="tab-content" style="padding: 0; border: 0;">
<?php }?>


<?php if ($_smarty_tpl->tpl_vars['config']->value['enable_action_menu'] && $_smarty_tpl->tpl_vars['config']->value['enable_action_menu'] != false) {?>
<div class="tab-pane-NOBOOTSTRAPTOGGLER active fade in" id='tab-content-0'>
<br />
<b>Deprecated</b>:  Using unregistered function "strpos" in a template is deprecated and will be removed in a future release. Use Smarty::registerPlugin to explicitly register a custom modifier. in <b>C:\Apache24\htdocs\crm\vendor\smarty\smarty\libs\sysplugins\smarty_internal_templatecompilerbase.php</b> on line <b>663</b><br />





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="name">


<div class="col-xs-12 col-sm-4 label col-1-label">


<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_NAME','module'=>'Project'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="name" field="name" >

<?php if (!$_smarty_tpl->tpl_vars['fields']->value['name']['hidden']) {
echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>


<?php if (strlen($_smarty_tpl->tpl_vars['fields']->value['name']['value']) <= 0) {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['name']['default_value']);
} else {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['name']['value']);
}?> 
<span class="sugar_field" id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['name']['name'];?>
"><?php echo $_smarty_tpl->tpl_vars['fields']->value['name']['value'];?>
</span>
<?php }?>

<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name'=>"pencil"),$_smarty_tpl);?>

</div>
</div>
<div class="dotted-border"></div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="status">


<div class="col-xs-12 col-sm-4 label col-2-label">


<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_STATUS','module'=>'Project'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="enum" field="status" >

<?php if (!$_smarty_tpl->tpl_vars['fields']->value['status']['hidden']) {
echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>



<?php if (is_string($_smarty_tpl->tpl_vars['fields']->value['status']['options'])) {?>
<input type="hidden" class="sugar_field" id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['status']['name'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['fields']->value['status']['options'];?>
">
<?php echo $_smarty_tpl->tpl_vars['fields']->value['status']['options'];?>

<?php } else { ?>
<input type="hidden" class="sugar_field" id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['status']['name'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['fields']->value['status']['value'];?>
">
<?php echo $_smarty_tpl->tpl_vars['fields']->value['status']['options'][$_smarty_tpl->tpl_vars['fields']->value['status']['value']];?>

<?php }
}?>

<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name'=>"pencil"),$_smarty_tpl);?>

</div>
</div>
<div class="dotted-border"></div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="estimated_start_date">


<div class="col-xs-12 col-sm-4 label col-1-label">


<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_DATE_START','module'=>'Project'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="date" field="estimated_start_date" >

<?php if (!$_smarty_tpl->tpl_vars['fields']->value['estimated_start_date']['hidden']) {
echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>



<?php if (!empty($_smarty_tpl->tpl_vars['vardef']->value['date_formatted_value'])) {
ob_start();
echo $_smarty_tpl->tpl_vars['vardef']->value['date_formatted_value'];
$_prefixVariable1 = ob_get_clean();
$_smarty_tpl->_assignInScope('value', $_prefixVariable1);
} else {
if (strlen($_smarty_tpl->tpl_vars['fields']->value['estimated_start_date']['value']) <= 0) {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['estimated_start_date']['default_value']);
} else {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['estimated_start_date']['value']);
}
}?>
<span class="sugar_field" id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['estimated_start_date']['name'];?>
"><?php echo $_smarty_tpl->tpl_vars['value']->value;?>
</span>
<?php }?>

<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name'=>"pencil"),$_smarty_tpl);?>

</div>
</div>
<div class="dotted-border"></div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="estimated_end_date">


<div class="col-xs-12 col-sm-4 label col-2-label">


<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_DATE_END','module'=>'Project'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="date" field="estimated_end_date" >

<?php if (!$_smarty_tpl->tpl_vars['fields']->value['estimated_end_date']['hidden']) {
echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>



<?php if (!empty($_smarty_tpl->tpl_vars['vardef']->value['date_formatted_value'])) {
ob_start();
echo $_smarty_tpl->tpl_vars['vardef']->value['date_formatted_value'];
$_prefixVariable2 = ob_get_clean();
$_smarty_tpl->_assignInScope('value', $_prefixVariable2);
} else {
if (strlen($_smarty_tpl->tpl_vars['fields']->value['estimated_end_date']['value']) <= 0) {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['estimated_end_date']['default_value']);
} else {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['estimated_end_date']['value']);
}
}?>
<span class="sugar_field" id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['estimated_end_date']['name'];?>
"><?php echo $_smarty_tpl->tpl_vars['value']->value;?>
</span>
<?php }?>

<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name'=>"pencil"),$_smarty_tpl);?>

</div>
</div>
<div class="dotted-border"></div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="assigned_user_name">


<div class="col-xs-12 col-sm-4 label col-1-label">


<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_ASSIGNED_TO','module'=>'Project'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="relate" field="assigned_user_name" >

<?php if (!$_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['hidden']) {
echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>


<span id="assigned_user_id" class="sugar_field" data-id-value="<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_id']['value'];?>
"><?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['value'];?>
</span>
<?php }?>

<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name'=>"pencil"),$_smarty_tpl);?>

</div>
</div>
<div class="dotted-border"></div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="description">


<div class="col-xs-12 col-sm-4 label col-2-label">


<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_DESCRIPTION','module'=>'Project'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="text" field="description" >

<?php if (!$_smarty_tpl->tpl_vars['fields']->value['description']['hidden']) {
echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>


<span class="sugar_field" id="<?php echo nl2br((string) url2html(smarty_modifier_escape($_smarty_tpl->tpl_vars['fields']->value['description']['name'],'html')), (bool) 1);?>
"><?php echo nl2br((string) url2html(smarty_modifier_escape(smarty_modifier_escape($_smarty_tpl->tpl_vars['fields']->value['description']['value'],'html'),'html_entity_decode')), (bool) 1);?>
</span>
<?php }?>

<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name'=>"pencil"),$_smarty_tpl);?>

</div>
</div>
<div class="dotted-border"></div>


</div>

</div>

</div>
<?php } else { ?>

<div class="tab-pane-NOBOOTSTRAPTOGGLER panel-collapse"></div>
<?php }?>
</div>

<div class="panel-content">





<?php if ($_smarty_tpl->tpl_vars['config']->value['enable_action_menu'] && $_smarty_tpl->tpl_vars['config']->value['enable_action_menu'] != false) {?>

<?php } else { ?>

<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse" href="#top-panel--1" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
<?php echo smarty_function_sugar_translate(array('label'=>'LBL_PROJECT_INFORMATION','module'=>'Project'),$_smarty_tpl);?>

</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="top-panel--1" data-id="LBL_PROJECT_INFORMATION">
<div class="tab-content">
<!-- TAB CONTENT -->





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="name">


<div class="col-xs-12 col-sm-4 label col-1-label">


<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_NAME','module'=>'Project'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="name" field="name" >

<?php if (!$_smarty_tpl->tpl_vars['fields']->value['name']['hidden']) {
echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>


<?php if (strlen($_smarty_tpl->tpl_vars['fields']->value['name']['value']) <= 0) {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['name']['default_value']);
} else {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['name']['value']);
}?> 
<span class="sugar_field" id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['name']['name'];?>
"><?php echo $_smarty_tpl->tpl_vars['fields']->value['name']['value'];?>
</span>
<?php }?>

<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name'=>"pencil"),$_smarty_tpl);?>

</div>
</div>
<div class="dotted-border"></div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="status">


<div class="col-xs-12 col-sm-4 label col-2-label">


<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_STATUS','module'=>'Project'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="enum" field="status" >

<?php if (!$_smarty_tpl->tpl_vars['fields']->value['status']['hidden']) {
echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>



<?php if (is_string($_smarty_tpl->tpl_vars['fields']->value['status']['options'])) {?>
<input type="hidden" class="sugar_field" id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['status']['name'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['fields']->value['status']['options'];?>
">
<?php echo $_smarty_tpl->tpl_vars['fields']->value['status']['options'];?>

<?php } else { ?>
<input type="hidden" class="sugar_field" id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['status']['name'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['fields']->value['status']['value'];?>
">
<?php echo $_smarty_tpl->tpl_vars['fields']->value['status']['options'][$_smarty_tpl->tpl_vars['fields']->value['status']['value']];?>

<?php }
}?>

<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name'=>"pencil"),$_smarty_tpl);?>

</div>
</div>
<div class="dotted-border"></div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="estimated_start_date">


<div class="col-xs-12 col-sm-4 label col-1-label">


<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_DATE_START','module'=>'Project'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="date" field="estimated_start_date" >

<?php if (!$_smarty_tpl->tpl_vars['fields']->value['estimated_start_date']['hidden']) {
echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>



<?php if (!empty($_smarty_tpl->tpl_vars['vardef']->value['date_formatted_value'])) {
ob_start();
echo $_smarty_tpl->tpl_vars['vardef']->value['date_formatted_value'];
$_prefixVariable3 = ob_get_clean();
$_smarty_tpl->_assignInScope('value', $_prefixVariable3);
} else {
if (strlen($_smarty_tpl->tpl_vars['fields']->value['estimated_start_date']['value']) <= 0) {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['estimated_start_date']['default_value']);
} else {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['estimated_start_date']['value']);
}
}?>
<span class="sugar_field" id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['estimated_start_date']['name'];?>
"><?php echo $_smarty_tpl->tpl_vars['value']->value;?>
</span>
<?php }?>

<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name'=>"pencil"),$_smarty_tpl);?>

</div>
</div>
<div class="dotted-border"></div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="estimated_end_date">


<div class="col-xs-12 col-sm-4 label col-2-label">


<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_DATE_END','module'=>'Project'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="date" field="estimated_end_date" >

<?php if (!$_smarty_tpl->tpl_vars['fields']->value['estimated_end_date']['hidden']) {
echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>



<?php if (!empty($_smarty_tpl->tpl_vars['vardef']->value['date_formatted_value'])) {
ob_start();
echo $_smarty_tpl->tpl_vars['vardef']->value['date_formatted_value'];
$_prefixVariable4 = ob_get_clean();
$_smarty_tpl->_assignInScope('value', $_prefixVariable4);
} else {
if (strlen($_smarty_tpl->tpl_vars['fields']->value['estimated_end_date']['value']) <= 0) {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['estimated_end_date']['default_value']);
} else {
$_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['fields']->value['estimated_end_date']['value']);
}
}?>
<span class="sugar_field" id="<?php echo $_smarty_tpl->tpl_vars['fields']->value['estimated_end_date']['name'];?>
"><?php echo $_smarty_tpl->tpl_vars['value']->value;?>
</span>
<?php }?>

<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name'=>"pencil"),$_smarty_tpl);?>

</div>
</div>
<div class="dotted-border"></div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="assigned_user_name">


<div class="col-xs-12 col-sm-4 label col-1-label">


<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_ASSIGNED_TO','module'=>'Project'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="relate" field="assigned_user_name" >

<?php if (!$_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['hidden']) {
echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>


<span id="assigned_user_id" class="sugar_field" data-id-value="<?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_id']['value'];?>
"><?php echo $_smarty_tpl->tpl_vars['fields']->value['assigned_user_name']['value'];?>
</span>
<?php }?>

<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name'=>"pencil"),$_smarty_tpl);?>

</div>
</div>
<div class="dotted-border"></div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="description">


<div class="col-xs-12 col-sm-4 label col-2-label">


<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, "label", "label", null);
echo smarty_function_sugar_translate(array('label'=>'LBL_DESCRIPTION','module'=>'Project'),$_smarty_tpl);
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);
echo smarty_modifier_strip_semicolon($_smarty_tpl->tpl_vars['label']->value);?>
:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="text" field="description" >

<?php if (!$_smarty_tpl->tpl_vars['fields']->value['description']['hidden']) {
echo smarty_function_counter(array('name'=>"panelFieldCount",'print'=>false),$_smarty_tpl);?>


<span class="sugar_field" id="<?php echo nl2br((string) url2html(smarty_modifier_escape($_smarty_tpl->tpl_vars['fields']->value['description']['name'],'html')), (bool) 1);?>
"><?php echo nl2br((string) url2html(smarty_modifier_escape(smarty_modifier_escape($_smarty_tpl->tpl_vars['fields']->value['description']['value'],'html'),'html_entity_decode')), (bool) 1);?>
</span>
<?php }?>

<div class="inlineEditIcon col-xs-hidden">
<?php echo smarty_function_sugar_getimage(array('name'=>"pencil"),$_smarty_tpl);?>

</div>
</div>
<div class="dotted-border"></div>


</div>

</div>

</div>
</div>
</div>
<?php }?>
</div>
</div>

</form>
<?php echo '<script'; ?>
>SUGAR.util.doWhen("document.getElementById('form') != null",
        function(){SUGAR.util.buildAccessKeyLabels();});
<?php echo '</script'; ?>
>            <?php echo '<script'; ?>
 type="text/javascript" src="include/InlineEditing/inlineEditing.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="modules/Favorites/favorites.js"><?php echo '</script'; ?>
>

<?php echo '<script'; ?>
 type="text/javascript">

                    let selectTabDetailView = function(tab) {
                        $('#content div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').hide();
                        $('#content div.tab-content div.tab-pane-NOBOOTSTRAPTOGGLER').eq(tab).show().addClass('active').addClass('in');
                        $('#content div.detail-view div.panel-content div.panel.panel').hide();
                        $('#content div.panel-content div.panel.tab-panel-' + tab).show();
                    };

                    var selectTabOnError = function(tab) {
                        selectTabDetailView(tab);
                        $('#content ul.nav.nav-tabs > li').removeClass('active');
                        $('#content ul.nav.nav-tabs > li a').css('color', '');

                        $('#content ul.nav.nav-tabs > li').eq(tab).find('a').first().css('color', 'red');
                        $('#content ul.nav.nav-tabs > li').eq(tab).addClass('active');

                    };

                    var selectTabOnErrorInputHandle = function(inputHandle) {
                        var tab = $(inputHandle).closest('.tab-pane-NOBOOTSTRAPTOGGLER').attr('id').match(/^detailpanel_(.*)$/)[1];
                        selectTabOnError(tab);
                    };


                    $(function(){
                        $('#content ul.nav.nav-tabs > li > a[data-toggle="tab"]').click(function(e){
                            if(typeof $(this).parent().find('a').first().attr('id') != 'undefined') {
                                var tab = parseInt($(this).parent().find('a').first().attr('id').match(/^tab(?<number>(.)*)$/)[1]);
                                selectTabDetailView(tab);
                            }
                        });
                    });

                <?php echo '</script'; ?>
>
<?php }
}
