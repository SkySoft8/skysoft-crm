<?php
/* Smarty version 4.5.3, created on 2025-03-07 13:29:13
  from 'C:\Apache24\htdocs\crm\public\legacy\themes\suite8\modules\Studio\TabGroups\EditViewTabs.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67caf4a9af3bd9_60013654',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6dc8fedb759a3a7a836eafb62c196c8c2a2427a1' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\themes\\suite8\\modules\\Studio\\TabGroups\\EditViewTabs.tpl',
      1 => 1730388414,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67caf4a9af3bd9_60013654 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getjspath.php','function'=>'smarty_function_sugar_getjspath',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.html_options.php','function'=>'smarty_function_html_options',),2=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_help.php','function'=>'smarty_function_sugar_help',),3=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.counter.php','function'=>'smarty_function_counter',),));
?>

<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/Studio/JSTransaction.js'),$_smarty_tpl);?>
" ><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
>
	var jstransaction = new JSTransaction();
<?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/Studio/studiotabgroups.js'),$_smarty_tpl);?>
"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/Studio/ygDDListStudio.js'),$_smarty_tpl);?>
"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/Studio/studiodd.js'),$_smarty_tpl);?>
" ><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/Studio/studio.js'),$_smarty_tpl);?>
" ><?php echo '</script'; ?>
>


<div class='configure-module-menu'>
<h2 ><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h2>
<p style='margin-bottom:1em;'><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_GROUP_TAB_WELCOME'];?>
</p>

<table cellpadding="0" cellspacing="0" border="0" width="100%">
<button id='save-button' class='button' style='cursor:default' onmousedown='this.className="buttonOn";return false;'
            onmouseup='this.className="button"' onmouseout='this.className="button"'
            onclick='studiotabs.generateForm("edittabs");document.edittabs.submit()'>
            <?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_BTN_SAVEPUBLISH'];?>

</button>
</table>

<form name='edittabs' id='edittabs' method='POST' action='index.php'>
<input type="hidden" name="slot_count" id="slot_count" value="" />
<table  cellpadding="0" cellspacing="0" border="0" width="100%" style='margin-bottom:1em;'>
<tr>
	<td width="100%" class='dataLabel' colspan=2>
	<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_TABGROUP_LANGUAGE'];?>
&nbsp;
	<?php echo smarty_function_html_options(array('name'=>'grouptab_lang','options'=>$_smarty_tpl->tpl_vars['available_languages']->value,'selected'=>$_smarty_tpl->tpl_vars['tabGroupSelected_lang']->value,'onchange'=>" tabLanguageChange(this)"),$_smarty_tpl);?>

	<?php echo smarty_function_sugar_help(array('text'=>$_smarty_tpl->tpl_vars['MOD']->value['LBL_TAB_GROUP_LANGUAGE_HELP']),$_smarty_tpl);?>

	</td>
</tr>
</table>
<table><tr><td valign='top' nowrap class="edit view" >
<table  cellpadding="0" cellspacing="0" width="100%"   id='s_field_delete'>
							<tr><td ><ul id='trash' class='listContainer'>
<li class='nobullet' id='trashcan'><table>
  <tr>
	<td><?php echo $_smarty_tpl->tpl_vars['recycleImage']->value;?>
</td>
	<td><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_DELETE_MODULE'];?>
</td>
  </tr>
  </table></li>

</ul>
</td></tr></table>

<div class='noBullet' style="padding-left: 20px;"><h2><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_MODULES'];?>
</h2>
<ul class='listContainer'>
<?php echo smarty_function_counter(array('start'=>0,'name'=>"modCounter",'print'=>false,'assign'=>"modCounter"),$_smarty_tpl);?>

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['availableModuleList']->value, 'value', false, 'key');
$_smarty_tpl->tpl_vars['value']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['value']->value) {
$_smarty_tpl->tpl_vars['value']->do_else = false;
?>


<li id='modSlot<?php echo $_smarty_tpl->tpl_vars['modCounter']->value;?>
'><span class='slotB'><?php echo $_smarty_tpl->tpl_vars['value']->value['label'];?>
</span></li>
<?php echo '<script'; ?>
>
tabLabelToValue['<?php echo $_smarty_tpl->tpl_vars['value']->value['label'];?>
'] = '<?php echo $_smarty_tpl->tpl_vars['value']->value['value'];?>
';
subtabModules['modSlot<?php echo $_smarty_tpl->tpl_vars['modCounter']->value;?>
'] = '<?php echo $_smarty_tpl->tpl_vars['value']->value['label'];?>
'<?php echo '</script'; ?>
>
<?php echo smarty_function_counter(array('name'=>"modCounter"),$_smarty_tpl);?>

<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</ul>
</td>
<td valign='top' nowrap>
<table class='tableContainer' id='groupTable'><tr>
<?php echo smarty_function_counter(array('start'=>0,'name'=>"tabCounter",'print'=>false,'assign'=>"tabCounter"),$_smarty_tpl);?>


<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['tabs']->value, 'tab', false, 'tabName');
$_smarty_tpl->tpl_vars['tab']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['tabName']->value => $_smarty_tpl->tpl_vars['tab']->value) {
$_smarty_tpl->tpl_vars['tab']->do_else = false;
if ($_smarty_tpl->tpl_vars['tabCounter']->value > 0 && $_smarty_tpl->tpl_vars['tabCounter']->value%6 == 0) {?>
</tr><tr>
<?php }?>
<td valign='top' class='tdContainer'>
<div id='slot<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
' class='noBullet'><h2 id='handle<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
' ><span id='tabname_<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
' class='slotB'><?php echo $_smarty_tpl->tpl_vars['tab']->value['labelValue'];?>
</span><span id='tabother_<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
'><span onclick='studiotabs.editTabGroupLabel(<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
, false)'><?php echo $_smarty_tpl->tpl_vars['editImage']->value;?>
</span>&nbsp;
<?php if ($_smarty_tpl->tpl_vars['tab']->value['label'] != $_smarty_tpl->tpl_vars['otherLabel']->value) {?>
	<span onclick='studiotabs.deleteTabGroup(<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
)'><?php echo $_smarty_tpl->tpl_vars['deleteImage']->value;?>
</span>
<?php }?>
</span></h2><input type='hidden' name='tablabelid_<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
' id='tablabelid_<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
'  value='<?php echo $_smarty_tpl->tpl_vars['tab']->value['label'];?>
'><input type='text' name='tablabel_<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
' id='tablabel_<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
' style='display:none' value='<?php echo $_smarty_tpl->tpl_vars['tab']->value['labelValue'];?>
' onblur='studiotabs.editTabGroupLabel(<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
, true)'>
<ul id='ul<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
' class='listContainer'>
<?php echo smarty_function_counter(array('start'=>0,'name'=>"subtabCounter",'print'=>false,'assign'=>"subtabCounter"),$_smarty_tpl);?>

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['tab']->value['modules'], 'name', false, 'list');
$_smarty_tpl->tpl_vars['name']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['list']->value => $_smarty_tpl->tpl_vars['name']->value) {
$_smarty_tpl->tpl_vars['name']->do_else = false;
?>

<li id='subslot<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['subtabCounter']->value;?>
' class='listStyle' name='<?php echo $_smarty_tpl->tpl_vars['list']->value;?>
'><span class='slotB' ><?php echo $_smarty_tpl->tpl_vars['availableModuleList']->value[$_smarty_tpl->tpl_vars['list']->value]['label'];?>
</span></li>
<?php echo '<script'; ?>
>subtabModules['subslot<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['subtabCounter']->value;?>
'] = '<?php echo $_smarty_tpl->tpl_vars['availableModuleList']->value[$_smarty_tpl->tpl_vars['list']->value]['label'];?>
'<?php echo '</script'; ?>
>
<?php echo smarty_function_counter(array('name'=>"subtabCounter"),$_smarty_tpl);?>

<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
<li class='noBullet' id='noselectbottom<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
'>&nbsp;</li>
<?php echo '<script'; ?>
>subtabCount[<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
] = <?php echo $_smarty_tpl->tpl_vars['subtabCounter']->value;?>
;<?php echo '</script'; ?>
>
</ul>
</div>
<div id='slot<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
b'>
<input type='hidden' name='slot_<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
' id='slot_<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
' value ='<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
'>
<input type='hidden' name='delete_<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
' id='delete_<?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
' value ='0'>
</div>
<?php echo smarty_function_counter(array('name'=>"tabCounter"),$_smarty_tpl);?>

</td>
<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

</tr>
<tr>
<td class="add-filter-btn">
	<input type='button' class='button' onclick='addTabGroup()' value='<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_ADD_GROUP'];?>
'>
</td>
</tr>
</table>

</td>
</table>

<span class='error'><?php echo $_smarty_tpl->tpl_vars['error']->value;?>
</span>



		<?php echo '<script'; ?>
>
		function tabLanguageChange(sel){
			var partURL = window.location.href;
			if(partURL.search(/&lang=\w*&/i) != -1){
				partURL = partURL.replace(/&lang=\w*&/i, '&lang='+ sel.value+'&');
			}else if(partURL.search(/&lang=\w*/i) != -1){
				partURL = partURL.replace(/&lang=\w*/i, '&lang='+ sel.value);
			}else{
				partURL = window.location.href + '&lang='+ sel.value;
			}
			window.location.href = partURL;
		}

		function addTabGroup(){
			var table = document.getElementById('groupTable');
		  	var rowIndex = table.rows.length - 1;
		  	var rowExists = false;
		  	for(var i = 0; i < rowIndex;i++){
		  		if(table.rows[i].cells.length < 6){
		  			rowIndex = i;
		  			rowExists = true;
		  		}
		  	}

		  	if(!rowExists)table.insertRow(rowIndex);
		  	cell = table.rows[rowIndex].insertCell(table.rows[rowIndex].cells.length);
		  	cell.className='tdContainer';
		  	cell.vAlign='top';
		  	var slotDiv = document.createElement('div');
		  	slotDiv.id = 'slot'+ slotCount;
		  	var header = document.createElement('h2');
		  	header.id = 'handle' + slotCount;
		  	headerSpan = document.createElement('span');
		  	headerSpan.innerHTML = '<?php echo $_smarty_tpl->tpl_vars['TGMOD']->value['LBL_NEW_GROUP'];?>
';
		  	headerSpan.id = 'tabname_' + slotCount;
		  	header.appendChild(headerSpan);
		  	headerSpan2 = document.createElement('span');
		  	headerSpan2.id = 'tabother_' + slotCount;
		  	subspan1 = document.createElement('span');
		  	subspan1.slotCount=slotCount;
		  	subspan1.innerHTML = '';
		  	subspan1.onclick= function() {
		  		studiotabs.editTabGroupLabel(this.slotCount, false);
		  	};
		  	subspan2 = document.createElement('span');
		  	subspan2.slotCount=slotCount;
		  	subspan2.innerHTML = '<?php echo $_smarty_tpl->tpl_vars['deleteImage']->value;?>
&nbsp;';
		  	subspan2.onclick= function(){
		  		studiotabs.deleteTabGroup(this.slotCount);
		  	};
		  	headerSpan2.appendChild(subspan1);
		  	headerSpan2.appendChild(subspan2);

		  	var editLabel = document.createElement('input');
		  	editLabel.style.display = 'none';
		  	editLabel.type = 'text';
		  	editLabel.value = '<?php echo $_smarty_tpl->tpl_vars['TGMOD']->value['LBL_NEW_GROUP'];?>
';
		  	editLabel.id = 'tablabel_' + slotCount;
		  	editLabel.name = 'tablabel_' + slotCount;
		  	editLabel.slotCount = slotCount;
		  	editLabel.onblur = function(){
		  		studiotabs.editTabGroupLabel(this.slotCount, true);
		  	}

		  	var list = document.createElement('ul');
		  	list.id = 'ul' + slotCount;
		  	list.className = 'listContainer';
		  	header.appendChild(headerSpan2);
		  	var li = document.createElement('li');
		  	li.id = 'noselectbottom' + slotCount;
		  	li.className = 'noBullet';
		  	li.innerHTML = '<?php echo $_smarty_tpl->tpl_vars['TGMOD']->value['LBL_DROP_HERE'];?>
';
		  	list.appendChild(li);

		  	slotDiv.appendChild(header);
		  	slotDiv.appendChild(editLabel);
		  	slotDiv.appendChild(list);
			var slotB = document.createElement('div');
		  	slotB.id = 'slot' + slotCount + 'b';
		  	var slot = document.createElement('input');
		  	slot.type = 'hidden';
		  	slot.id =  'slot_' + slotCount;
		  	slot.name =  'slot_' + slotCount;
		  	slot.value = slotCount;
		  	var deleteSlot = document.createElement('input');
		  	deleteSlot.type = 'hidden';
		  	deleteSlot.id =  'delete_' + slotCount;
		  	deleteSlot.name =  'delete_' + slotCount;
		  	deleteSlot.value = 0;
		  	slotB.appendChild(slot);
		  	slotB.appendChild(deleteSlot);
		  	cell.appendChild(slotDiv);
		  	cell.appendChild(slotB);

		  	yahooSlots["slot" + slotCount] = new ygDDSlot("slot" + slotCount, "mainTabs");
			yahooSlots["slot" + slotCount].setHandleElId("handle" + slotCount);
		  	yahooSlots["noselectbottom"+ slotCount] = new ygDDListStudio("noselectbottom"+ slotCount , "subTabs", -1);
		  	subtabCount[slotCount] = 0;
		  	slotCount++;
		  	ygDDListStudio.prototype.updateTabs();
		}

		var slotCount = <?php echo $_smarty_tpl->tpl_vars['tabCounter']->value;?>
;
		var modCount = <?php echo $_smarty_tpl->tpl_vars['modCounter']->value;?>
;
		var subSlots = [];
		var yahooSlots = [];

		function dragDropInit(){

			YAHOO.util.DDM.mode = YAHOO.util.DDM.POINT;

			for(mj = 0; mj <= slotCount; mj++){
				yahooSlots["slot" + mj] = new ygDDSlot("slot" + mj, "mainTabs");
				yahooSlots["slot" + mj].setHandleElId("handle" + mj);

				yahooSlots["noselectbottom"+ mj] = new ygDDListStudio("noselectbottom"+ mj , "subTabs", -1);
				for(msi = 0; msi <= subtabCount[mj]; msi++){
					yahooSlots["subslot"+ mj + '_' + msi] = new ygDDListStudio("subslot"+ mj + '_' + msi, "subTabs", 0);

				}

			}
			for(msi = 0; msi <= modCount ; msi++){
					yahooSlots["modSlot"+ msi] = new ygDDListStudio("modSlot" + msi, "subTabs", 1);

			}
			var trash1  = new ygDDListStudio("trashcan" , "subTabs", 'trash');
			ygDDListStudio.prototype.updateTabs();

		}

		YAHOO.util.DDM.mode = YAHOO.util.DDM.INTERSECT;
		YAHOO.util.Event.addListener(window, "load", dragDropInit);

<?php echo '</script'; ?>
>

	<input type='hidden' name='action' value='SaveTabs'>
	<input type='hidden' name='module' value='Studio'>
</form>
</div>


<?php }
}
