<?php
/* Smarty version 4.5.3, created on 2025-03-14 15:46:29
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\ModuleBuilder\tpls\MBPackage\deploy.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67d44f55ad1cb1_46747875',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9f3900e8c76a3c8829ba6b0058083594fd7bb45f' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\ModuleBuilder\\tpls\\MBPackage\\deploy.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67d44f55ad1cb1_46747875 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getimage.php','function'=>'smarty_function_sugar_getimage',),));
echo smarty_function_sugar_getimage(array('name'=>"img_loading",'alt'=>$_smarty_tpl->tpl_vars['mod_strings']->value['LBL_LOADING'],'ext'=>".gif",'other_attributes'=>'align="absmiddle" '),$_smarty_tpl);?>
&nbsp;<?php echo $_smarty_tpl->tpl_vars['message']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['package']->value;?>

<?php echo '<script'; ?>
 type='text/javascript' language='Javascript'>ModuleBuilder.beginDeploy('<?php echo $_smarty_tpl->tpl_vars['package']->value;?>
');<?php echo '</script'; ?>
>	
<?php }
}
