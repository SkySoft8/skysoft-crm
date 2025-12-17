<?php
/* Smarty version 4.5.3, created on 2025-11-07 15:42:15
  from 'C:\Apache\Apache24\htdocs\suitecrm\public\legacy\modules\Emails\templates\displayHasAttachmentField.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_690e1357b37825_06405188',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e0135a9a805158e8a827664455ca5d7c1fa2be2c' => 
    array (
      0 => 'C:\\Apache\\Apache24\\htdocs\\suitecrm\\public\\legacy\\modules\\Emails\\templates\\displayHasAttachmentField.tpl',
      1 => 1762424144,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_690e1357b37825_06405188 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache\\Apache24\\htdocs\\suitecrm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getimagepath.php','function'=>'smarty_function_sugar_getimagepath',),));
?>

<div class="email-has-attachement">
    <?php if (!empty($_smarty_tpl->tpl_vars['bean']->value)) {?>
        <?php if (!empty($_smarty_tpl->tpl_vars['bean']->value['has_attachment'])) {?>
            <div class="email-has-attachment"><span class="glyphicon"><img src="<?php echo smarty_function_sugar_getimagepath(array('directory'=>'','file_name'=>'attachment-indicator','file_extension'=>"svg",'file'=>'attachment-indicator.svg'),$_smarty_tpl);?>
"/></span></div>
        <?php }?>

    <?php }?>
</div>
<?php }
}
