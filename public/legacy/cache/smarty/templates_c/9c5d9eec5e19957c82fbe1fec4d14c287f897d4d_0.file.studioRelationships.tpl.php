<?php
/* Smarty version 4.5.3, created on 2025-02-05 13:11:15
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\ModuleBuilder\tpls\studioRelationships.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67a36373cd3e75_22701340',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9c5d9eec5e19957c82fbe1fec4d14c287f897d4d' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\ModuleBuilder\\tpls\\studioRelationships.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67a36373cd3e75_22701340 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),));
if ($_smarty_tpl->tpl_vars['view_module']->value != 'KBDocuments') {?>
<input type='button' name='addrelbtn' value='<?php echo $_smarty_tpl->tpl_vars['mod_strings']->value['LBL_BTN_ADD_RELATIONSHIP'];?>
'
	class='button' onclick='ModuleBuilder.moduleLoadRelationship2("");' style="margin-bottom:5px;">
<?php }?>
<div id='relGrid'></div>
<?php if ($_smarty_tpl->tpl_vars['studio']->value) {
echo smarty_function_sugar_translate(array('label'=>'LBL_CUSTOM_RELATIONSHIPS','module'=>'ModuleBuilder'),$_smarty_tpl);?>
</h3><?php }
echo '<script'; ?>
>

//Workaround for YUI bug 2527707: http://yuilibrary.com/projects/yui2/ticket/913efafad48ce433199f3e72e4847b18, should be removed when YUI 2.8+ is used
YAHOO.widget.DataTable.prototype.getColumn = function(column) {
    var oColumn = this._oColumnSet.getColumn(column);

    if(!oColumn) {
        // Validate TD element
        var elCell = column.nodeName.toLowerCase() != "th" ? this.getTdEl(column) : false;
        if(elCell) {
            oColumn = this._oColumnSet.getColumn(elCell.cellIndex);
        }
        // Validate TH element
        else {
            elCell = this.getThEl(column);
            if(elCell) {
                // Find by TH el ID
                var allColumns = this._oColumnSet.flat;
                for(var i=0, len=allColumns.length; i<len; i++) {
                    if(allColumns[i].getThEl().id === elCell.id) {
                        oColumn = allColumns[i];
                    } 
                }
            }
        }
    }
    if(!oColumn) {
        YAHOO.log("Could not get Column for column at " + column, "info", this.toString());
    }
    return oColumn;
};

var relationships = {relationships:<?php echo $_smarty_tpl->tpl_vars['relationships']->value;?>
};
var grid = new YAHOO.widget.ScrollingDataTable('relGrid',
	[
	    {key:'name',       label: SUGAR.language.get('ModuleBuilder','LBL_REL_NAME'),        width: 200, sortable: true},
	    {key:'lhs_module', label: SUGAR.language.get('ModuleBuilder','LBL_LHS_MODULE'),      width: 120, sortable: true},
	    {key:'relationship_type', label: SUGAR.language.get('ModuleBuilder','LBL_REL_TYPE'), width: 120, sortable: true},
	    {key:'rhs_module', label: SUGAR.language.get('ModuleBuilder','LBL_RHS_MODULE'),      width: 120, sortable: true}
	],
	new YAHOO.util.LocalDataSource(relationships, {
	    responseSchema: {
		   resultsList : "relationships",
		   fields : [{key : "name"}, {key: "lhs_module"}, {key: "relationship_type"}, {key: "rhs_module"}]
	    }
	}),
    {MSG_EMPTY: SUGAR.language.get('ModuleBuilder','LBL_NO_RELS'), height:"auto"}
);
grid.subscribe("rowMouseoverEvent", grid.onEventHighlightRow); 
grid.subscribe("rowMouseoutEvent", grid.onEventUnhighlightRow); 
grid.subscribe("rowClickEvent", function(args){
    var rel = this.getRecord(args.target).getData();
    var editTab = ModuleBuilder.findTabById("relEditor");
    if (editTab) ModuleBuilder.tabPanel.removeTab(editTab);
    var name = rel.name.indexOf("*") > -1 ? rel.name.substring(0, rel.name.length-1) : rel.name;
    ModuleBuilder.moduleLoadRelationship2(name);
});
grid.render();


ModuleBuilder.module = '<?php echo $_smarty_tpl->tpl_vars['view_module']->value;?>
';
ModuleBuilder.MBpackage = '<?php echo $_smarty_tpl->tpl_vars['view_package']->value;?>
';
ModuleBuilder.helpRegisterByID('relGrid');
<?php if ($_smarty_tpl->tpl_vars['fromModuleBuilder']->value) {?>
ModuleBuilder.helpSetup('relationshipsHelp','default');
<?php } else { ?>
ModuleBuilder.helpSetup('studioWizard','relationshipsHelp');
<?php }
echo '</script'; ?>
><?php }
}
