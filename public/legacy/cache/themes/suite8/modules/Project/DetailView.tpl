
<div class="detail-border-bottom"></div>

<script language="javascript">
    {literal}
    SUGAR.util.doWhen(function () {
        return $("#contentTable").length == 0;
    }, SUGAR.themes.actionMenu);
    {/literal}
</script>
<table cellpadding="0" cellspacing="0" border="0" width="100%" id="">
<tr>
<td class="buttons" align="left" NOWRAP width="80%">
<div class="actionsContainer">
<form action="index.php" method="post" name="DetailView" id="formDetailView">
<input type="hidden" name="module" value="{$module}">
<input type="hidden" name="record" value="{$fields.id.value}">
<input type="hidden" name="return_action">
<input type="hidden" name="return_module">
<input type="hidden" name="return_id">
<input type="hidden" name="module_tab">
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="offset" value="{$offset}">
<input type="hidden" name="action" value="EditView">
<input type="hidden" name="sugar_body_only">
{if !$config.enable_action_menu}
<br />
<b>Deprecated</b>:  Using unregistered function "count" in a template is deprecated and will be removed in a future release. Use Smarty::registerPlugin to explicitly register a custom modifier. in <b>C:\Apache24\htdocs\crm\vendor\smarty\smarty\libs\sysplugins\smarty_internal_templatecompilerbase.php</b> on line <b>663</b><br />
<div class="buttons">
<input id="edit_button" class="button" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" name="Edit" onclick="var _form = document.getElementById('formDetailView');{if $IS_TEMPLATE}_form.return_module.value='Project'; _form.return_action.value='ProjectTemplatesDetailView'; _form.return_id.value='{$id}'; _form.action.value='ProjectTemplatesEditView';{else}_form.return_module.value='Project'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView'; {/if};window.location.href='index.php?' + (new URLSearchParams(new FormData(_form)).toString());" type="button" value=" {$APP.LBL_EDIT_BUTTON_LABEL} "/>
<input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" id="delete_button" class="button" onclick="project_delete(this);" type="button" value="{$APP.LBL_DELETE_BUTTON_LABEL}"/>
<input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" name="Duplicate" id="duplicate_button" onclick="var _form = document.getElementById('formDetailView');{if $IS_TEMPLATE}_form.return_module.value='Project'; _form.return_action.value='ProjectTemplatesDetailView'; _form.isDuplicate.value=true; _form.action.value='projecttemplateseditview'; _form.return_id.value='{$id}';{else}_form.return_module.value='Project'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';{/if};window.location.href='index.php?' + (new URLSearchParams(new FormData(_form)).toString());" type="button" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}"/>
<input title="{$APP.LBL_VIEW_GANTT_TITLE}" class="button" type="button" name="view_gantt" id="view_gantt" value="{$APP.LBL_GANTT_BUTTON_LABEL}" onclick="javascript:window.location.href='index.php?module=Project&action=view_GanttChart&record={$id}'" //>
<input title="{$APP.LBL_VIEW_DETAIL}" class="button" type="button" name="view_detail" id="view_detail" value="{$APP.LBL_DETAIL_BUTTON_LABEL}" onclick="javascript:window.location.href='index.php?module=Project&action=DetailView&record={$id}'" //>
{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=Project", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}
</div>
{/if}
</form>
</div>
</td>
<td align="right" width="20%" class="buttons">{$ADMIN_EDIT}
</td>
</tr>
</table>
{sugar_include include=$includes}
<div class="detail-view">
<div class="mobile-pagination">{$PAGINATION}</div>

<ul class="nav nav-tabs">

{if $config.enable_action_menu and $config.enable_action_menu != false}
<li role="presentation" class="active">
<a id="tab0" data-toggle="tab" class="hidden-xs">
{sugar_translate label='LBL_PROJECT_INFORMATION' module='Project'}
</a>
<a id="xstab0" href="#" class="visible-xs first-tab dropdown-toggle" data-toggle="dropdown">
{sugar_translate label='LBL_PROJECT_INFORMATION' module='Project'}
</a>
</li>
{/if}
{if $config.enable_action_menu and $config.enable_action_menu != false}
<li id="tab-actions" class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">Действия<span class="suitepicon suitepicon-action-caret"></span></a>
<br />
<b>Deprecated</b>:  Using unregistered function "count" in a template is deprecated and will be removed in a future release. Use Smarty::registerPlugin to explicitly register a custom modifier. in <b>C:\Apache24\htdocs\crm\vendor\smarty\smarty\libs\sysplugins\smarty_internal_templatecompilerbase.php</b> on line <b>663</b><br />
<ul class="dropdown-menu">
<li><input id="edit_button" class="button" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" name="Edit" onclick="var _form = document.getElementById('formDetailView');{if $IS_TEMPLATE}_form.return_module.value='Project'; _form.return_action.value='ProjectTemplatesDetailView'; _form.return_id.value='{$id}'; _form.action.value='ProjectTemplatesEditView';{else}_form.return_module.value='Project'; _form.return_action.value='DetailView'; _form.return_id.value='{$id}'; _form.action.value='EditView'; {/if};window.location.href='index.php?' + (new URLSearchParams(new FormData(_form)).toString());" type="button" value=" {$APP.LBL_EDIT_BUTTON_LABEL} "/></li>
<li><input title="{$APP.LBL_DELETE_BUTTON_TITLE}" accessKey="{$APP.LBL_DELETE_BUTTON_KEY}" id="delete_button" class="button" onclick="project_delete(this);" type="button" value="{$APP.LBL_DELETE_BUTTON_LABEL}"/></li>
<li><input title="{$APP.LBL_DUPLICATE_BUTTON_TITLE}" accessKey="{$APP.LBL_DUPLICATE_BUTTON_KEY}" class="button" name="Duplicate" id="duplicate_button" onclick="var _form = document.getElementById('formDetailView');{if $IS_TEMPLATE}_form.return_module.value='Project'; _form.return_action.value='ProjectTemplatesDetailView'; _form.isDuplicate.value=true; _form.action.value='projecttemplateseditview'; _form.return_id.value='{$id}';{else}_form.return_module.value='Project'; _form.return_action.value='DetailView'; _form.isDuplicate.value=true; _form.action.value='EditView'; _form.return_id.value='{$id}';{/if};window.location.href='index.php?' + (new URLSearchParams(new FormData(_form)).toString());" type="button" value="{$APP.LBL_DUPLICATE_BUTTON_LABEL}"/></li>
<li><input title="{$APP.LBL_VIEW_GANTT_TITLE}" class="button" type="button" name="view_gantt" id="view_gantt" value="{$APP.LBL_GANTT_BUTTON_LABEL}" onclick="javascript:window.location.href='index.php?module=Project&action=view_GanttChart&record={$id}'" //></li>
<li><input title="{$APP.LBL_VIEW_DETAIL}" class="button" type="button" name="view_detail" id="view_detail" value="{$APP.LBL_DETAIL_BUTTON_LABEL}" onclick="javascript:window.location.href='index.php?module=Project&action=DetailView&record={$id}'" //></li>
<li>{if $bean->aclAccess("detail")}{if !empty($fields.id.value) && $isAuditEnabled}<input id="btn_view_change_log" title="{$APP.LNK_VIEW_CHANGE_LOG}" class="button" onclick='open_popup("Audit", "600", "400", "&record={$fields.id.value}&module_name=Project", true, false,  {ldelim} "call_back_function":"set_return","form_name":"EditView","field_to_name_array":[] {rdelim} ); return false;' type="button" value="{$APP.LNK_VIEW_CHANGE_LOG}">{/if}{/if}</li>
</ul>
</li>
<li class="tab-inline-pagination">
{$PAGINATION}
</li>
{/if}
</ul>
<div class="clearfix"></div>

{if $config.enable_action_menu and $config.enable_action_menu != false}

<div class="tab-content">
{else}

<div class="tab-content" style="padding: 0; border: 0;">
{/if}


{if $config.enable_action_menu and $config.enable_action_menu != false}
<div class="tab-pane-NOBOOTSTRAPTOGGLER active fade in" id='tab-content-0'>
<br />
<b>Deprecated</b>:  Using unregistered function "strpos" in a template is deprecated and will be removed in a future release. Use Smarty::registerPlugin to explicitly register a custom modifier. in <b>C:\Apache24\htdocs\crm\vendor\smarty\smarty\libs\sysplugins\smarty_internal_templatecompilerbase.php</b> on line <b>663</b><br />





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="name">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='Project'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="name" field="name" >

{if !$fields.name.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.name.value) <= 0}
{assign var="value" value=$fields.name.default_value }
{else}
{assign var="value" value=$fields.name.value }
{/if} 
<span class="sugar_field" id="{$fields.name.name}">{$fields.name.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="pencil"}
</div>
</div>
<div class="dotted-border"></div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="status">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='Project'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="enum" field="status" >

{if !$fields.status.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.status.options)}
<input type="hidden" class="sugar_field" id="{$fields.status.name}" value="{ $fields.status.options }">
{ $fields.status.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.status.name}" value="{ $fields.status.value }">
{ $fields.status.options[$fields.status.value]}
{/if}
{/if}

<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="pencil"}
</div>
</div>
<div class="dotted-border"></div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="estimated_start_date">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_START' module='Project'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="date" field="estimated_start_date" >

{if !$fields.estimated_start_date.hidden}
{counter name="panelFieldCount" print=false}


{if !empty($vardef.date_formatted_value) }
{assign var="value" value={$vardef.date_formatted_value} }
{else}
{if strlen($fields.estimated_start_date.value) <= 0}
{assign var="value" value=$fields.estimated_start_date.default_value }
{else}
{assign var="value" value=$fields.estimated_start_date.value }
{/if}
{/if}
<span class="sugar_field" id="{$fields.estimated_start_date.name}">{$value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="pencil"}
</div>
</div>
<div class="dotted-border"></div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="estimated_end_date">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_END' module='Project'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="date" field="estimated_end_date" >

{if !$fields.estimated_end_date.hidden}
{counter name="panelFieldCount" print=false}


{if !empty($vardef.date_formatted_value) }
{assign var="value" value={$vardef.date_formatted_value} }
{else}
{if strlen($fields.estimated_end_date.value) <= 0}
{assign var="value" value=$fields.estimated_end_date.default_value }
{else}
{assign var="value" value=$fields.estimated_end_date.value }
{/if}
{/if}
<span class="sugar_field" id="{$fields.estimated_end_date.name}">{$value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="pencil"}
</div>
</div>
<div class="dotted-border"></div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="assigned_user_name">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO' module='Project'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="relate" field="assigned_user_name" >

{if !$fields.assigned_user_name.hidden}
{counter name="panelFieldCount" print=false}

<span id="assigned_user_id" class="sugar_field" data-id-value="{$fields.assigned_user_id.value}">{$fields.assigned_user_name.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="pencil"}
</div>
</div>
<div class="dotted-border"></div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="description">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='Project'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="text" field="description" >

{if !$fields.description.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.description.name|escape:'html'|url2html|nl2br}">{$fields.description.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="pencil"}
</div>
</div>
<div class="dotted-border"></div>


</div>

</div>

</div>
{else}

<div class="tab-pane-NOBOOTSTRAPTOGGLER panel-collapse"></div>
{/if}
</div>

<div class="panel-content">





{if $config.enable_action_menu and $config.enable_action_menu != false}

{else}

<div class="panel panel-default">
<div class="panel-heading ">
<a class="" role="button" data-toggle="collapse" href="#top-panel--1" aria-expanded="false">
<div class="col-xs-10 col-sm-11 col-md-11">
{sugar_translate label='LBL_PROJECT_INFORMATION' module='Project'}
</div>
</a>
</div>
<div class="panel-body panel-collapse collapse in panelContainer" id="top-panel--1" data-id="LBL_PROJECT_INFORMATION">
<div class="tab-content">
<!-- TAB CONTENT -->





<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="name">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_NAME' module='Project'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="name" field="name" >

{if !$fields.name.hidden}
{counter name="panelFieldCount" print=false}

{if strlen($fields.name.value) <= 0}
{assign var="value" value=$fields.name.default_value }
{else}
{assign var="value" value=$fields.name.value }
{/if} 
<span class="sugar_field" id="{$fields.name.name}">{$fields.name.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="pencil"}
</div>
</div>
<div class="dotted-border"></div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="status">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_STATUS' module='Project'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="enum" field="status" >

{if !$fields.status.hidden}
{counter name="panelFieldCount" print=false}


{if is_string($fields.status.options)}
<input type="hidden" class="sugar_field" id="{$fields.status.name}" value="{ $fields.status.options }">
{ $fields.status.options }
{else}
<input type="hidden" class="sugar_field" id="{$fields.status.name}" value="{ $fields.status.value }">
{ $fields.status.options[$fields.status.value]}
{/if}
{/if}

<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="pencil"}
</div>
</div>
<div class="dotted-border"></div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="estimated_start_date">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_START' module='Project'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="date" field="estimated_start_date" >

{if !$fields.estimated_start_date.hidden}
{counter name="panelFieldCount" print=false}


{if !empty($vardef.date_formatted_value) }
{assign var="value" value={$vardef.date_formatted_value} }
{else}
{if strlen($fields.estimated_start_date.value) <= 0}
{assign var="value" value=$fields.estimated_start_date.default_value }
{else}
{assign var="value" value=$fields.estimated_start_date.value }
{/if}
{/if}
<span class="sugar_field" id="{$fields.estimated_start_date.name}">{$value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="pencil"}
</div>
</div>
<div class="dotted-border"></div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="estimated_end_date">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DATE_END' module='Project'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="date" field="estimated_end_date" >

{if !$fields.estimated_end_date.hidden}
{counter name="panelFieldCount" print=false}


{if !empty($vardef.date_formatted_value) }
{assign var="value" value={$vardef.date_formatted_value} }
{else}
{if strlen($fields.estimated_end_date.value) <= 0}
{assign var="value" value=$fields.estimated_end_date.default_value }
{else}
{assign var="value" value=$fields.estimated_end_date.value }
{/if}
{/if}
<span class="sugar_field" id="{$fields.estimated_end_date.name}">{$value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="pencil"}
</div>
</div>
<div class="dotted-border"></div>


</div>

</div>


<div class="row detail-view-row">



<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="assigned_user_name">


<div class="col-xs-12 col-sm-4 label col-1-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_ASSIGNED_TO' module='Project'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="relate" field="assigned_user_name" >

{if !$fields.assigned_user_name.hidden}
{counter name="panelFieldCount" print=false}

<span id="assigned_user_id" class="sugar_field" data-id-value="{$fields.assigned_user_id.value}">{$fields.assigned_user_name.value}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="pencil"}
</div>
</div>
<div class="dotted-border"></div>


</div>




<div class="col-xs-12 col-sm-6 detail-view-row-item detail-view-bordered" data-field="description">


<div class="col-xs-12 col-sm-4 label col-2-label">


{capture name="label" assign="label"}{sugar_translate label='LBL_DESCRIPTION' module='Project'}{/capture}
{$label|strip_semicolon}:
</div>


<div class="col-xs-12 col-sm-8 detail-view-field d-flex inlineEdit" type="text" field="description" >

{if !$fields.description.hidden}
{counter name="panelFieldCount" print=false}

<span class="sugar_field" id="{$fields.description.name|escape:'html'|url2html|nl2br}">{$fields.description.value|escape:'html'|escape:'html_entity_decode'|url2html|nl2br}</span>
{/if}

<div class="inlineEditIcon col-xs-hidden">
{sugar_getimage name="pencil"}
</div>
</div>
<div class="dotted-border"></div>


</div>

</div>

</div>
</div>
</div>
{/if}
</div>
</div>

</form>
<script>SUGAR.util.doWhen("document.getElementById('form') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>            <script type="text/javascript" src="include/InlineEditing/inlineEditing.js"></script>
<script type="text/javascript" src="modules/Favorites/favorites.js"></script>
{literal}
<script type="text/javascript">

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

                </script>
{/literal}