<?php
/* Smarty version 4.5.3, created on 2025-01-08 14:31:34
  from 'C:\Apache24\htdocs\SuiteCRM\public\legacy\themes\suite8\include\ListView\ListViewSelectObjects.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_677e8c469f2781_21000442',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '21e8bf3e7614f81e9f402fbdbde8e459565f054c' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\SuiteCRM\\public\\legacy\\themes\\suite8\\include\\ListView\\ListViewSelectObjects.tpl',
      1 => 1730388414,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_677e8c469f2781_21000442 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="selectedRecords label hidden"><?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_LISTVIEW_SELECTED_OBJECTS'];?>
</div><div class="selectedRecords value hidden"><?php echo $_smarty_tpl->tpl_vars['TOTAL_ITEMS_SELECTED']->value;?>
</div>
<input type='hidden' id='selectCountTop' name='selectCount[]' value='<?php echo $_smarty_tpl->tpl_vars['TOTAL_ITEMS_SELECTED']->value;?>
' />

<?php echo '<script'; ?>
>

    $(document).ready(function () {
        setInterval(function () {
            sListView.toggleSelected();
        }, 100);
    });

<?php echo '</script'; ?>
><?php }
}
