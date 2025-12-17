<?php
/* Smarty version 4.5.3, created on 2025-11-14 08:52:01
  from 'C:\Apache\Apache24\htdocs\suitecrm\public\legacy\modules\ModuleBuilder\tpls\assistantJavascript.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_6916edb19bd370_53418374',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1829a5d1c304e015796c84e227a8f8c1daabe59d' => 
    array (
      0 => 'C:\\Apache\\Apache24\\htdocs\\suitecrm\\public\\legacy\\modules\\ModuleBuilder\\tpls\\assistantJavascript.tpl',
      1 => 1762424144,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6916edb19bd370_53418374 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
>

if(typeof(Assistant)!="undefined" && Assistant.mbAssistant){
	//Assistant.mbAssistant.render(document.body);

<?php if ($_smarty_tpl->tpl_vars['userPref']->value) {?>
	Assistant.processUserPref("<?php echo $_smarty_tpl->tpl_vars['userPref']->value;?>
");
<?php }
if ((isset($_smarty_tpl->tpl_vars['assistant']->value['key'])) && (isset($_smarty_tpl->tpl_vars['assistant']->value['group']))) {?>
	Assistant.mbAssistant.setBody(SUGAR.language.get('ModuleBuilder','assistantHelp').<?php echo $_smarty_tpl->tpl_vars['assistant']->value['group'];?>
.<?php echo $_smarty_tpl->tpl_vars['assistant']->value['key'];?>
);
<?php }?>

	if(Assistant.mbAssistant.visible){
		Assistant.mbAssistant.show();
		}
}

<?php echo '</script'; ?>
><?php }
}
