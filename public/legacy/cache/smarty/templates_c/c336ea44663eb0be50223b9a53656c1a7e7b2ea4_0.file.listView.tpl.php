<?php
/* Smarty version 4.5.3, created on 2025-04-07 09:51:52
  from 'C:\Apache24\htdocs\crm2\public\legacy\modules\ModuleBuilder\tpls\listView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67f3a0383707b5_16205818',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c336ea44663eb0be50223b9a53656c1a7e7b2ea4' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\modules\\ModuleBuilder\\tpls\\listView.tpl',
      1 => 1743515289,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67f3a0383707b5_16205818 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\Smarty\\plugins\\function.counter.php','function'=>'smarty_function_counter',),2=>array('file'=>'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\Smarty\\plugins\\function.math.php','function'=>'smarty_function_math',),3=>array('file'=>'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\Smarty\\plugins\\modifier.escape.php','function'=>'smarty_modifier_escape',),));
?>
<form name='edittabs' id='edittabs' method='POST' action='index.php'>

<?php echo '<script'; ?>
>
studiotabs.reset();
<?php echo '</script'; ?>
>

<input type='hidden' name='action' value=<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
>
<input type='hidden' name='view' value=<?php echo $_smarty_tpl->tpl_vars['view']->value;?>
>
<input type='hidden' name='module' value='<?php echo $_smarty_tpl->tpl_vars['module']->value;?>
'>
<input type='hidden' name='subpanel' value='<?php echo $_smarty_tpl->tpl_vars['subpanel']->value;?>
'>
<input type='hidden' name='subpanelLabel' value='<?php echo $_smarty_tpl->tpl_vars['subpanelLabel']->value;?>
'>
<input type='hidden' name='local' value='<?php echo $_smarty_tpl->tpl_vars['local']->value;?>
'>
<input type='hidden' name='view_module' value='<?php echo $_smarty_tpl->tpl_vars['view_module']->value;?>
'>
<?php if ($_smarty_tpl->tpl_vars['fromPortal']->value) {?>
    <input type='hidden' name='PORTAL' value='1'>
<?php }?>
<input type='hidden' name='view_package' value='<?php echo $_smarty_tpl->tpl_vars['view_package']->value;?>
'>
<input type='hidden' name='to_pdf' value='1'>
<link rel="stylesheet" type="text/css" href="modules/ModuleBuilder/tpls/ListEditor.css"/>

<table id="editor-content" class="list-editor">
<tr><td colspan=3><?php echo $_smarty_tpl->tpl_vars['buttons']->value;?>
</td></tr>
<?php if ((isset($_smarty_tpl->tpl_vars['subpanel']->value)) && (isset($_smarty_tpl->tpl_vars['subpanel_label']->value))) {?>
<tr>
    <td colspan=3>
    <span class='mbLBL'><?php echo smarty_function_sugar_translate(array('label'=>'LBL_SUBPANEL_TITLE'),$_smarty_tpl);?>
</span>
    <input id ="subpanel_title" type="text" name="subpanel_title" value="<?php echo $_smarty_tpl->tpl_vars['subpanel_title']->value;?>
">
    <input id ="subpanel_title_key" type="hidden" name="subpanel_title_key" value="<?php echo $_smarty_tpl->tpl_vars['subpanel_label']->value;?>
">
    </td>
</tr>
<?php }?>
<tr>

<?php echo smarty_function_counter(array('start'=>0,'name'=>"groupCounter",'print'=>false,'assign'=>"groupCounter"),$_smarty_tpl);?>

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['groups']->value, 'list', false, 'label');
$_smarty_tpl->tpl_vars['list']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['label']->value => $_smarty_tpl->tpl_vars['list']->value) {
$_smarty_tpl->tpl_vars['list']->do_else = false;
?>
    <?php echo smarty_function_counter(array('name'=>"groupCounter"),$_smarty_tpl);?>

<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
echo smarty_function_math(array('assign'=>"groupWidth",'equation'=>"100/".((string)$_smarty_tpl->tpl_vars['groupCounter']->value)."-3"),$_smarty_tpl);?>


<?php echo smarty_function_counter(array('start'=>0,'name'=>"slotCounter",'print'=>false,'assign'=>"slotCounter"),$_smarty_tpl);?>

<?php echo smarty_function_counter(array('start'=>0,'name'=>"modCounter",'print'=>false,'assign'=>"modCounter"),$_smarty_tpl);?>


<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['groups']->value, 'list', false, 'label');
$_smarty_tpl->tpl_vars['list']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['label']->value => $_smarty_tpl->tpl_vars['list']->value) {
$_smarty_tpl->tpl_vars['list']->do_else = false;
?>

<td id=<?php echo $_smarty_tpl->tpl_vars['label']->value;?>
  width="30%" VALIGN="top" style="float: left; border: 1px gray solid; padding:4px; margin-right:4px; margin-top: 8px;  overflow-x: hidden;">
<h3 ><?php echo $_smarty_tpl->tpl_vars['label']->value;?>
</h3>
<ul id='ul<?php echo $_smarty_tpl->tpl_vars['slotCounter']->value;?>
' style="overflow-y: auto; overflow-x: hidden;">

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['list']->value, 'value', false, 'key');
$_smarty_tpl->tpl_vars['value']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['value']->value) {
$_smarty_tpl->tpl_vars['value']->do_else = false;
?>

<li name="width=<?php echo $_smarty_tpl->tpl_vars['value']->value['width'];?>
%" id='subslot<?php echo $_smarty_tpl->tpl_vars['modCounter']->value;?>
' class='draggable' >
    <table width='100%'>
        <tr>
            <td id='subslot<?php echo $_smarty_tpl->tpl_vars['modCounter']->value;?>
label' style="font-weight: bold;">
            <?php if ($_smarty_tpl->tpl_vars['MB']->value) {?>
            <?php if (!empty($_smarty_tpl->tpl_vars['value']->value['label'])) {
echo $_smarty_tpl->tpl_vars['current_mod_strings']->value[$_smarty_tpl->tpl_vars['value']->value['label']];
} elseif (!empty($_smarty_tpl->tpl_vars['value']->value['vname'])) {
echo $_smarty_tpl->tpl_vars['current_mod_strings']->value[$_smarty_tpl->tpl_vars['value']->value['vname']];
} else {
echo $_smarty_tpl->tpl_vars['key']->value;
}?>
            <?php } else { ?>
            <?php if (!empty($_smarty_tpl->tpl_vars['value']->value['label'])) {
echo smarty_function_sugar_translate(array('label'=>$_smarty_tpl->tpl_vars['value']->value['label'],'module'=>$_smarty_tpl->tpl_vars['language']->value),$_smarty_tpl);
} elseif (!empty($_smarty_tpl->tpl_vars['value']->value['vname'])) {
echo smarty_function_sugar_translate(array('label'=>$_smarty_tpl->tpl_vars['value']->value['vname'],'module'=>$_smarty_tpl->tpl_vars['language']->value),$_smarty_tpl);
} else {
echo $_smarty_tpl->tpl_vars['key']->value;
}?>
            <?php }?>
            </td>
            <td></td>
            <td align="right" class="editIcon">
                <button class="suitepicon suitepicon-action-edit" style="cursor: pointer;"
				onclick="var value_label = document.getElementById('subslot<?php echo $_smarty_tpl->tpl_vars['modCounter']->value;?>
label').innerHTML.replace(/^\s+|\s+$/g,''); 
				    <?php if (!(substr($_smarty_tpl->tpl_vars['view']->value,-6) == "search")) {?>
					var value_width = document.getElementById('subslot<?php echo $_smarty_tpl->tpl_vars['modCounter']->value;?>
width').innerHTML;
					<?php }?>
					ModuleBuilder.getContent('module=ModuleBuilder&action=editProperty&view_module=<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['view_module']->value,'url');?>
'+
							'<?php if ((isset($_smarty_tpl->tpl_vars['subpanel']->value))) {?>&subpanel=<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['subpanel']->value,'url');
}?>'+
							'<?php if ($_smarty_tpl->tpl_vars['MB']->value) {?>&MB=<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['MB']->value,'url');?>
&view_package=<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['view_package']->value,'url');
}?>'+
							'&id_label=subslot<?php echo $_smarty_tpl->tpl_vars['modCounter']->value;?>
label'+
							'&name_label=label_'+
							  '<?php if ((isset($_smarty_tpl->tpl_vars['value']->value['label']))) {
echo smarty_modifier_escape($_smarty_tpl->tpl_vars['value']->value['label'],'url');?>
'+
							  '<?php } elseif (!empty($_smarty_tpl->tpl_vars['value']->value['vname'])) {
echo smarty_modifier_escape($_smarty_tpl->tpl_vars['value']->value['vname'],'url');?>
'+
							  '<?php } else {
echo smarty_modifier_escape($_smarty_tpl->tpl_vars['key']->value,'url');
}?>'+
							'&title_label=<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_LABEL_TITLE'];?>
&value_label=' + encodeURIComponent(value_label)
							<?php if ((substr($_smarty_tpl->tpl_vars['view']->value,-6) != "search")) {?>
							+ '&id_width=subslot<?php echo $_smarty_tpl->tpl_vars['modCounter']->value;?>
width&name_width=<?php echo smarty_modifier_escape($_smarty_tpl->tpl_vars['MOD']->value['LBL_WIDTH'],'url');?>
&value_width=' + encodeURIComponent(value_width)
							<?php }?>
					);return false;"
				>
            </td>
            </tr>
            <tr class='fieldValue'>
                <?php if (empty($_smarty_tpl->tpl_vars['hideKeys']->value)) {?><td>[<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
]</td><?php }?>
                <td align="right" colspan="2" class="percentage">
					<?php if (substr($_smarty_tpl->tpl_vars['view']->value,-6) == "search") {?>
					<span style="display:none" id='subslot<?php echo $_smarty_tpl->tpl_vars['modCounter']->value;?>
width'><?php echo $_smarty_tpl->tpl_vars['value']->value['width'];?>
</span>	<span style="display:none">%</span>
					<?php } else { ?>
					<span id='subslot<?php echo $_smarty_tpl->tpl_vars['modCounter']->value;?>
width'><?php echo $_smarty_tpl->tpl_vars['value']->value['width'];?>
</span> <span>%</span>
					<?php }?>
				</td>
        </tr>
    </table>
</li>

<?php echo '<script'; ?>
>
studiotabs.tabLabelToValue['<?php echo $_smarty_tpl->tpl_vars['value']->value['label'];?>
|<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
'] = '<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
';
if(typeof(studiotabs.subtabModules['subslot<?php echo $_smarty_tpl->tpl_vars['modCounter']->value;?>
']) == 'undefined')studiotabs.subtabModules['subslot<?php echo $_smarty_tpl->tpl_vars['modCounter']->value;?>
'] = '<?php echo $_smarty_tpl->tpl_vars['value']->value['label'];?>
|<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
';
<?php echo '</script'; ?>
>

<?php echo smarty_function_counter(array('name'=>"modCounter"),$_smarty_tpl);?>

<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

<li id='topslot<?php echo $_smarty_tpl->tpl_vars['slotCounter']->value;?>
' class='noBullet'>&nbsp;</li>

</ul>
</td>

<?php echo smarty_function_counter(array('name'=>"slotCounter"),$_smarty_tpl);?>

<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</td>
</tr></table>

<?php echo '<script'; ?>
>


function dragDropInit(){
    studiotabs.fields = {};
    studiotabs.slotCount = <?php echo $_smarty_tpl->tpl_vars['slotCounter']->value;?>
;
    studiotabs.modCount = <?php echo $_smarty_tpl->tpl_vars['modCounter']->value;?>
;
    
    for(msi = 0; msi < studiotabs.slotCount ; msi++){
        studiotabs.fields["topslot"+ msi] = new Studio2.ListDD("topslot" + msi, "subTabs", true);
    }
    for(msi = 0; msi < studiotabs.modCount ; msi++){
            studiotabs.fields["subslot"+ msi] = new Studio2.ListDD("subslot" + msi, "subTabs", false);
    }

    if(studiotabs.modCount > 0) {
        studiotabs.fields["subslot" + (msi - 1)].updateTabs();
    }
};

resizeDDLists = function() {
	var Dom = YAHOO.util.Dom;
	if (!Dom.get('ul0'))
            return;
    var body = document.getElementById('mbtabs');
    for(var msi = 0; msi < studiotabs.slotCount ; msi++){
        var targetHeight =  body.offsetHeight - (Dom.getY("ul" + msi) - Dom.getY(body)) - 20;
        if (SUGAR.isIE) {
            targetHeight -= 10;
        }

        if (targetHeight > 0 )
        	Dom.setStyle("ul" + msi, "height", targetHeight + "px");
    }
	Studio2.scrollZones = {}
	for (var i = 0; Dom.get("ul" + i); i++){
		Studio2.scrollZones["ul" + i] = Studio2.getScrollZones("ul" + i);
	}
};

function countListFields() {
	var count = 0;
	var divs = document.getElementById( 'ul0' ).getElementsByTagName( 'li' ) ;		
	for ( var j=0;j<divs.length;j++) {
		if (divs[j].className == 'draggable') count++;
	}
	return count;
};


dragDropInit();
setTimeout(resizeDDLists, 100);
ModuleBuilder.helpRegister('edittabs');
ModuleBuilder.helpRegisterByID('content', 'div');
studiotabs.view = '<?php echo $_smarty_tpl->tpl_vars['view']->value;?>
';
ModuleBuilder.helpSetup('<?php echo $_smarty_tpl->tpl_vars['helpName']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['helpDefault']->value;?>
');
if('<?php echo $_smarty_tpl->tpl_vars['from_mb']->value;?>
')
    ModuleBuilder.helpUnregisterByID('savebtn');
ModuleBuilder.MBpackage = '<?php echo $_smarty_tpl->tpl_vars['view_package']->value;?>
';
<?php echo '</script'; ?>
>



<div id='logDiv' style='display:none'>
</div>

<?php echo $_smarty_tpl->tpl_vars['additionalFormData']->value;?>


</form>


<?php }
}
