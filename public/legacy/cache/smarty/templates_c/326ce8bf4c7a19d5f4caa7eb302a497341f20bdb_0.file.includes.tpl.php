<?php
/* Smarty version 4.5.3, created on 2025-04-23 15:23:21
  from 'C:\Apache24\htdocs\crm\public\legacy\themes\suite8\modules\ModuleBuilder\tpls\includes.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_680905e971d097_43992763',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '326ce8bf4c7a19d5f4caa7eb302a497341f20bdb' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\themes\\suite8\\modules\\ModuleBuilder\\tpls\\includes.tpl',
      1 => 1744976541,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_680905e971d097_43992763 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getjspath.php','function'=>'smarty_function_sugar_getjspath',),));
echo '<script'; ?>
 type="text/javascript" src="<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/ModuleBuilder/javascript/JSTransaction.js'),$_smarty_tpl);?>
" ><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
>
	var jstransaction = new JSTransaction();
	
	if (SUGAR.themes.tempHideLeftCol){
    	SUGAR.themes.tempHideLeftCol();
    }
    
<?php echo '</script'; ?>
>

<link rel="stylesheet" type="text/css" href="<?php echo smarty_function_sugar_getjspath(array('file'=>"include/ytree/TreeView/css/folders/tree.css"),$_smarty_tpl);?>
" />

<?php echo '<script'; ?>
 type="text/javascript" src='<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/ModuleBuilder/javascript/studio2.js'),$_smarty_tpl);?>
' ><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src='<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/ModuleBuilder/javascript/studio2PanelDD.js'),$_smarty_tpl);?>
' ><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src='<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/ModuleBuilder/javascript/studio2RowDD.js'),$_smarty_tpl);?>
' ><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src='<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/ModuleBuilder/javascript/studio2FieldDD.js'),$_smarty_tpl);?>
' ><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src='<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/ModuleBuilder/javascript/studiotabgroups.js'),$_smarty_tpl);?>
'><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src='<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/ModuleBuilder/javascript/studio2ListDD.js'),$_smarty_tpl);?>
' ><?php echo '</script'; ?>
>

<!--end ModuleBuilder Assistant!-->
<?php echo '<script'; ?>
 type="text/javascript" language="Javascript" src='<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/ModuleBuilder/javascript/ModuleBuilder.js'),$_smarty_tpl);?>
'><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" language="Javascript" src='<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/ModuleBuilder/javascript/SimpleList.js'),$_smarty_tpl);?>
'><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src='<?php echo smarty_function_sugar_getjspath(array('file'=>'modules/ModuleBuilder/javascript/JSTransaction.js'),$_smarty_tpl);?>
' ><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript" src='<?php echo smarty_function_sugar_getjspath(array('file'=>'include/javascript/tiny_mce/tiny_mce.js'),$_smarty_tpl);?>
' ><?php echo '</script'; ?>
>

<link rel="stylesheet" type="text/css" href="<?php echo smarty_function_sugar_getjspath(array('file'=>"modules/ModuleBuilder/tpls/MB.css"),$_smarty_tpl);?>
" /><?php }
}
