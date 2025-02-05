<?php
/* Smarty version 4.5.3, created on 2025-02-05 13:38:21
  from 'C:\Apache24\htdocs\crm\public\legacy\include\MVC\View\tpls\Importvcard.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67a369cd6f7b96_80396545',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c552b301757b1cd7859854985e4f6a96a4bb6fa1' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\MVC\\View\\tpls\\Importvcard.tpl',
      1 => 1730388413,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67a369cd6f7b96_80396545 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="import-vcard">
<b><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_IMPORT_VCARDTEXT'];?>
</b>

<?php echo '<script'; ?>
 type="text/javascript" src="cache/include/javascript/sugar_grp_yui_widgets.js"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript">
<!--
function validate_vcard()
{
    if (document.getElementById("vcard_file").value=="") {
        YAHOO.SUGAR.MessageBox.show({msg: '<?php echo $_smarty_tpl->tpl_vars['ERROR_TEXT']->value;?>
'} );
    }
    else
        document.EditView.submit();
}
-->
<?php echo '</script'; ?>
>


    <form name="EditView" method="POST" ENCTYPE="multipart/form-data" action="index.php">
        <input type="hidden" name="max_file_size" value="30000">
        <input type='hidden' name='action' value='ImportVCardSave'>
        <input type='hidden' name='module' value='<?php echo $_smarty_tpl->tpl_vars['MODULE']->value;?>
'>
        <input type='hidden' name='from' value='ImportVCard'>
        <input size="60" name="vcard" id="vcard_file" type="file" />
        <input id="import_vcard_button" class='button' type="button" onclick='validate_vcard()' value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_IMPORT_VCARD_BUTTON_LABEL'];?>
"
               title="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_IMPORT_VCARD_BUTTON_TITLE'];?>
" />
    </form>
    <div class="error"><?php echo $_smarty_tpl->tpl_vars['ERROR']->value;?>
</div>
</div>
<?php }
}
