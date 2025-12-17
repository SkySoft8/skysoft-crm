<?php
/* Smarty version 4.5.3, created on 2025-11-12 13:05:30
  from 'C:\Apache\Apache24\htdocs\suitecrm\public\legacy\include\SuiteEditor\tpls\SuiteEditorMozaik.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_6914861ac9b831_73555007',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f23cd3181b47528b76f643df44298d1ab298c678' => 
    array (
      0 => 'C:\\Apache\\Apache24\\htdocs\\suitecrm\\public\\legacy\\include\\SuiteEditor\\tpls\\SuiteEditorMozaik.tpl',
      1 => 1762424144,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6914861ac9b831_73555007 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!-- [Mozaik Editor implementation] -->

<?php echo '<script'; ?>
>
    /**
     * Mozaik value getter function
     *
     * @returns string - Mozaik value
     */
    SuiteEditor.getValue = function() {
        return $('#<?php echo $_smarty_tpl->tpl_vars['elementId']->value;?>
').getMozaikValue();
    };

    /**
     * Mozaik value setter function
     *
     * @param htmlCode
     */
    SuiteEditor.apply = function(htmlCode) {
        $('#<?php echo $_smarty_tpl->tpl_vars['elementId']->value;?>
').html(htmlCode ? htmlCode : '');
        $('#<?php echo $_smarty_tpl->tpl_vars['elementId']->value;?>
').mozaik(window.mozaikSettings.<?php echo $_smarty_tpl->tpl_vars['elementId']->value;?>
);
    };

    /**
     * Mozaik value insert function
     *
     * @param text
     * @param elemId
     */
    SuiteEditor.insert = function(text, elemId) {
        if(typeof elemId === 'undefined') {
            elemId = '<?php echo $_smarty_tpl->tpl_vars['elementId']->value;?>
';
        }
        if(elemId != '<?php echo $_smarty_tpl->tpl_vars['elementId']->value;?>
') {
            throw 'incorrect editor element id (Mozaik id: '+elemId+')';
        }
        if($('#'+elemId+' .mozaik-list .mozaik-elem').length > 0) {
            // similar as the original insert_variable_html(text);
            tinyMCE.activeEditor.execCommand('mceInsertRawHTML', false, text);
        }
    };

<?php echo '</script'; ?>
>

<?php echo $_smarty_tpl->tpl_vars['mozaik']->value;
}
}
