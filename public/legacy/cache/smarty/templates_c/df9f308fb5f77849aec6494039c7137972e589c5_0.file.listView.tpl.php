<?php
/* Smarty version 4.5.3, created on 2025-02-25 12:46:30
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\ModuleBuilder\tpls\Preview\listView.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67bdbba6d330c3_48972733',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'df9f308fb5f77849aec6494039c7137972e589c5' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\ModuleBuilder\\tpls\\Preview\\listView.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67bdbba6d330c3_48972733 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.counter.php','function'=>'smarty_function_counter',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.math.php','function'=>'smarty_function_math',),2=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),));
?>
<link rel="stylesheet" type="text/css" href="modules/ModuleBuilder/tpls/ListEditor.css" />
<table class="preview-content">
<td>

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
echo smarty_function_math(array('assign'=>"groupWidth",'equation'=>"100/".((string)$_smarty_tpl->tpl_vars['groupCounter']->value)."-5"),$_smarty_tpl);?>


<?php echo smarty_function_counter(array('start'=>0,'name'=>"slotCounter",'print'=>false,'assign'=>"slotCounter"),$_smarty_tpl);?>

<?php echo smarty_function_counter(array('start'=>0,'name'=>"modCounter",'print'=>false,'assign'=>"modCounter"),$_smarty_tpl);?>


<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['groups']->value, 'list', false, 'label');
$_smarty_tpl->tpl_vars['list']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['label']->value => $_smarty_tpl->tpl_vars['list']->value) {
$_smarty_tpl->tpl_vars['list']->do_else = false;
?>

<div style="float: left; border: 1px gray solid; padding:4px; margin-right:4px; margin-top: 8px; width:<?php echo $_smarty_tpl->tpl_vars['groupWidth']->value;?>
%;">
<h3 ><?php echo $_smarty_tpl->tpl_vars['label']->value;?>
</h3>
<ul>

<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['list']->value, 'value', false, 'key');
$_smarty_tpl->tpl_vars['value']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['value']->value) {
$_smarty_tpl->tpl_vars['value']->do_else = false;
?>

<li name="width=<?php echo $_smarty_tpl->tpl_vars['value']->value['width'];?>
%" class='draggable' style='cursor:default;'>
    <table width='100%'>
    	<tr>
    		<td style="font-weight: bold;"><?php if (!empty($_smarty_tpl->tpl_vars['value']->value['label'])) {
echo smarty_function_sugar_translate(array('label'=>$_smarty_tpl->tpl_vars['value']->value['label'],'module'=>$_smarty_tpl->tpl_vars['language']->value),$_smarty_tpl);
} else {
echo $_smarty_tpl->tpl_vars['key']->value;
}?></td>
    	</tr>
    	<tr class='fieldValue' style='cursor:default;'>
    		<?php if (empty($_smarty_tpl->tpl_vars['hideKeys']->value)) {?><td>[<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
]</td><?php }?>
    		<td align="right" colspan="2"><span><?php echo $_smarty_tpl->tpl_vars['value']->value['width'];?>
</span><span>%</span></td>
    	</tr>
    </table>
</li>
<?php echo smarty_function_counter(array('name'=>"modCounter"),$_smarty_tpl);?>

<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

<li class='noBullet'>&nbsp;</li>

</ul>
</div>

<?php echo smarty_function_counter(array('name'=>"slotCounter"),$_smarty_tpl);?>

<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</td>
</tr></table>


<?php }
}
