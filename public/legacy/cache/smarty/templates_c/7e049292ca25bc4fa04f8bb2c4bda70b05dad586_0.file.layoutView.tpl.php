<?php
/* Smarty version 4.5.3, created on 2025-02-17 11:53:46
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\ModuleBuilder\tpls\Preview\layoutView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67b3234a8d1122_70249304',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7e049292ca25bc4fa04f8bb2c4bda70b05dad586' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\ModuleBuilder\\tpls\\Preview\\layoutView.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67b3234a8d1122_70249304 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.counter.php','function'=>'smarty_function_counter',),));
?>

<table id='layoutEditorButtons' cellspacing='2'>
    <tr>
    <?php echo $_smarty_tpl->tpl_vars['buttons']->value;?>

    </tr>
</table>
<div id='layoutEditor' style="width:675px;">

<div id='toolbox' style='display:none;'>
</div>

<div id='panels' style='float:left; overflow-y:auto; overflow-x:hidden'>

<h3><?php echo $_smarty_tpl->tpl_vars['layouttitle']->value;?>
</h3>
<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['layout']->value, 'panel', false, 'panelid');
$_smarty_tpl->tpl_vars['panel']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['panelid']->value => $_smarty_tpl->tpl_vars['panel']->value) {
$_smarty_tpl->tpl_vars['panel']->do_else = false;
?>

    <div class='le_panel' id='<?php echo $_smarty_tpl->tpl_vars['idCount']->value;?>
'>

        <div class='panel_label' id='le_panellabel_<?php echo $_smarty_tpl->tpl_vars['idCount']->value;?>
'>
          <span class='panel_name' id='le_panelname_<?php echo $_smarty_tpl->tpl_vars['idCount']->value;?>
'>
          	<?php $_smarty_tpl->smarty->ext->_capture->open($_smarty_tpl, 'panel_upper', 'panel_upper', null);
echo mb_strtoupper((string) $_smarty_tpl->tpl_vars['panelid']->value ?? '', 'UTF-8');
$_smarty_tpl->smarty->ext->_capture->close($_smarty_tpl);?>
			<?php if ($_smarty_tpl->tpl_vars['panelid']->value == 'default') {?>
          		<?php echo $_smarty_tpl->tpl_vars['mod']->value['LBL_DEFAULT'];?>

			<?php } elseif ($_smarty_tpl->tpl_vars['from_mb']->value && (isset($_smarty_tpl->tpl_vars['current_mod_strings']->value[$_smarty_tpl->tpl_vars['panel_upper']->value]))) {?>
                <?php echo $_smarty_tpl->tpl_vars['current_mod_strings']->value[$_smarty_tpl->tpl_vars['panel_upper']->value];?>

			<?php } elseif (!empty($_smarty_tpl->tpl_vars['translate']->value)) {?>
			    <?php echo smarty_function_sugar_translate(array('label'=>mb_strtoupper((string) $_smarty_tpl->tpl_vars['panelid']->value ?? '', 'UTF-8'),'module'=>$_smarty_tpl->tpl_vars['language']->value),$_smarty_tpl);?>

			<?php } else { ?>
			    <?php echo $_smarty_tpl->tpl_vars['panelid']->value;?>

			<?php }?></span>
          <span class='panel_id' id='le_panelid_<?php echo $_smarty_tpl->tpl_vars['idCount']->value;?>
'><?php echo $_smarty_tpl->tpl_vars['panelid']->value;?>
</span>
        </div>
        <?php if ($_smarty_tpl->tpl_vars['panelid']->value != 'default') {?>
 
        <?php }?>
        <?php echo smarty_function_counter(array('name'=>'idCount','assign'=>'idCount','print'=>false),$_smarty_tpl);?>


        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['panel']->value, 'row', false, 'rid');
$_smarty_tpl->tpl_vars['row']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['rid']->value => $_smarty_tpl->tpl_vars['row']->value) {
$_smarty_tpl->tpl_vars['row']->do_else = false;
?>
            <div class='le_row' id='<?php echo $_smarty_tpl->tpl_vars['idCount']->value;?>
'>
            <?php echo smarty_function_counter(array('name'=>'idCount','assign'=>'idCount','print'=>false),$_smarty_tpl);?>


            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['row']->value, 'col', false, 'cid');
$_smarty_tpl->tpl_vars['col']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['cid']->value => $_smarty_tpl->tpl_vars['col']->value) {
$_smarty_tpl->tpl_vars['col']->do_else = false;
?>
            <?php $_smarty_tpl->_assignInScope('field', $_smarty_tpl->tpl_vars['col']->value['name']);?>
                <div class='le_field' id='<?php echo $_smarty_tpl->tpl_vars['idCount']->value;?>
'>
                    <?php if (!$_smarty_tpl->tpl_vars['fromModuleBuilder']->value && ($_smarty_tpl->tpl_vars['col']->value['name'] != '(filler)')) {?>
                    <?php }?>
                    <?php if ((isset($_smarty_tpl->tpl_vars['col']->value['type'])) && ($_smarty_tpl->tpl_vars['col']->value['type'] == 'address')) {?>
                        <?php echo $_smarty_tpl->tpl_vars['icon_address']->value;?>

                    <?php }?>
                    <?php if ((isset($_smarty_tpl->tpl_vars['col']->value['type'])) && ($_smarty_tpl->tpl_vars['col']->value['type'] == 'phone')) {?>
                        <?php echo $_smarty_tpl->tpl_vars['icon_phone']->value;?>

                    <?php }?>
                    <span id='le_label_<?php echo $_smarty_tpl->tpl_vars['idCount']->value;?>
'>
                    <?php $_template = new Smarty_Internal_Template('eval:'.$_smarty_tpl->tpl_vars['col']->value['label'], $_smarty_tpl->smarty, $_smarty_tpl);$_smarty_tpl->assign('label',$_template->fetch()); ?>
                    <?php if (!empty($_smarty_tpl->tpl_vars['translate']->value) && !empty($_smarty_tpl->tpl_vars['col']->value['label'])) {?>
                        <?php echo smarty_function_sugar_translate(array('label'=>$_smarty_tpl->tpl_vars['label']->value,'module'=>$_smarty_tpl->tpl_vars['language']->value),$_smarty_tpl);?>

                    <?php } else { ?>
		                <?php if (!empty($_smarty_tpl->tpl_vars['current_mod_strings']->value[$_smarty_tpl->tpl_vars['label']->value])) {?>
		                    <?php echo $_smarty_tpl->tpl_vars['current_mod_strings']->value[$_smarty_tpl->tpl_vars['label']->value];?>

		                <?php } elseif (!empty($_smarty_tpl->tpl_vars['mod']->value[$_smarty_tpl->tpl_vars['label']->value])) {?>
		                    <?php echo $_smarty_tpl->tpl_vars['mod']->value[$_smarty_tpl->tpl_vars['label']->value];?>

		                <?php } else { ?>
		                	<?php echo $_smarty_tpl->tpl_vars['label']->value;?>

		                <?php }?>
		            <?php }?></span>
                    <span class='field_name'><?php echo $_smarty_tpl->tpl_vars['col']->value['name'];?>
</span>
                    <span class='field_label'><?php echo $_smarty_tpl->tpl_vars['col']->value['label'];?>
</span>
                    <span id='le_tabindex_<?php echo $_smarty_tpl->tpl_vars['idCount']->value;?>
' class='field_tabindex'><?php echo $_smarty_tpl->tpl_vars['col']->value['tabindex'];?>
</span>
                </div>
                <?php echo smarty_function_counter(array('name'=>'idCount','assign'=>'idCount','print'=>false),$_smarty_tpl);?>

            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

        </div>
    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

    </div>
<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

</div>
<input type='hidden' id='idCount' value='<?php echo $_smarty_tpl->tpl_vars['idCount']->value;?>
'>
</div>
<?php }
}
