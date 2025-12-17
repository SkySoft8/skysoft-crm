<?php
/* Smarty version 4.5.3, created on 2025-11-14 08:52:03
  from 'C:\Apache\Apache24\htdocs\suitecrm\public\legacy\modules\ModuleBuilder\tpls\wizard.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_6916edb3629cb9_17086544',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '709358338611cd883e4df34b456e030573b7eab1' => 
    array (
      0 => 'C:\\Apache\\Apache24\\htdocs\\suitecrm\\public\\legacy\\modules\\ModuleBuilder\\tpls\\wizard.tpl',
      1 => 1762424144,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:modules/ModuleBuilder/tpls/assistantJavascript.tpl' => 1,
  ),
),false)) {
function content_6916edb3629cb9_17086544 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache\\Apache24\\htdocs\\suitecrm\\public\\legacy\\include\\Smarty\\plugins\\function.counter.php','function'=>'smarty_function_counter',),));
?>
<div class='wizard' width='100%' >
	<div align='left' id='export'><?php echo $_smarty_tpl->tpl_vars['actions']->value;?>
</div>

	<div><?php echo $_smarty_tpl->tpl_vars['question']->value;?>
</div>
	<div id="Buttons">

	<table align="center" cellspacing="7" width="90%"><tr>
		<?php echo smarty_function_counter(array('start'=>0,'name'=>"buttonCounter",'print'=>false,'assign'=>"buttonCounter"),$_smarty_tpl);?>

		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['buttons']->value, 'button', false, 'buttonName');
$_smarty_tpl->tpl_vars['button']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['buttonName']->value => $_smarty_tpl->tpl_vars['button']->value) {
$_smarty_tpl->tpl_vars['button']->do_else = false;
?>
			<?php if ($_smarty_tpl->tpl_vars['buttonCounter']->value > 5) {?>
				</tr><tr>
				<?php echo smarty_function_counter(array('start'=>0,'name'=>"buttonCounter",'print'=>false,'assign'=>"buttonCounter"),$_smarty_tpl);?>

			<?php }?>
			<td <?php if ((isset($_smarty_tpl->tpl_vars['button']->value['help']))) {?>id="<?php echo $_smarty_tpl->tpl_vars['button']->value['help'];?>
"<?php }?> width="16%" name=helpable" style="padding: 5px;"  valign="top" align="center">
			     <table onclick='<?php if (call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'substr' ][ 0 ], array( $_smarty_tpl->tpl_vars['button']->value['action'],0,11 )) == "javascript:") {
echo call_user_func_array($_smarty_tpl->registered_plugins[ 'modifier' ][ 'substr' ][ 0 ], array( $_smarty_tpl->tpl_vars['button']->value['action'],11 ));
} else { ?>ModuleBuilder.getContent("<?php echo $_smarty_tpl->tpl_vars['button']->value['action'];?>
");<?php }?>' 
			         class='wizardButton' onmousedown="ModuleBuilder.buttonDown(this);return false;" onmouseout="ModuleBuilder.buttonOut(this);">
			         <tr>
						<td align="center">
							<a class='studiolink' href="javascript:void(0)">
								<span class="suitepicon suitepicon-module-<?php echo $_smarty_tpl->tpl_vars['button']->value['icon'];?>
"></span>
							</a>
						</td>
					 </tr>
					 <tr>
						 <td align="center">
							 <a class='studiolink' id='<?php echo $_smarty_tpl->tpl_vars['button']->value['linkId'];?>
' href="javascript:void(0)">
                                 <?php echo $_smarty_tpl->tpl_vars['buttonName']->value;?>

							 </a>
						 </td>
				     </tr>
				 </table>
			</td>
			<?php echo smarty_function_counter(array('name'=>"buttonCounter"),$_smarty_tpl);?>

		<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	</tr></table>
<!-- Hidden div for hidden content so IE doesn't ignore it -->
<div style="float:left; left:-100px; display: hidden;">&nbsp;
	
	<style type='text/css'>
		.wizard { padding: 5px; text-align:center; font-weight:bold}
		.title{ color:#990033; font-weight:bold; padding: 0px 5px 0px 0px; font-size: 20pt}
		.backButton {position:absolute; left:10px; top:35px}
	</style>
    

	<?php echo '<script'; ?>
>
	ModuleBuilder.helpRegisterByID('export', 'input');
	ModuleBuilder.helpRegisterByID('Buttons', 'td');
	ModuleBuilder.helpSetup('studioWizard','<?php echo $_smarty_tpl->tpl_vars['defaultHelp']->value;?>
');
	<?php echo '</script'; ?>
>
</div>
<?php $_smarty_tpl->_subTemplateRender('file:modules/ModuleBuilder/tpls/assistantJavascript.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
}
}
