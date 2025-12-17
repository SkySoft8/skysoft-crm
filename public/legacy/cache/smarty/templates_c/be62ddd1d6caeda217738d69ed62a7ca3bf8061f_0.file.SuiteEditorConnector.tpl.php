<?php
/* Smarty version 4.5.3, created on 2025-11-12 13:05:30
  from 'C:\Apache\Apache24\htdocs\suitecrm\public\legacy\include\SuiteEditor\tpls\SuiteEditorConnector.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_6914861af1ac13_01567774',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'be62ddd1d6caeda217738d69ed62a7ca3bf8061f' => 
    array (
      0 => 'C:\\Apache\\Apache24\\htdocs\\suitecrm\\public\\legacy\\include\\SuiteEditor\\tpls\\SuiteEditorConnector.tpl',
      1 => 1762424144,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6914861af1ac13_01567774 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
>
    if(!SuiteEditor) {

        /**
         * Suite Editor interface
         */
        var SuiteEditor = {
            interfaceError: function() {
                throw 'function is not implemented';
            }
        };

        /**
         * connector function for get value from suite editors
         */
        SuiteEditor.getValue = function() { SuiteEditor.interfaceError(); };

        /**
         * connector function for set value in suite editors
         */
        SuiteEditor.apply = function(html) { SuiteEditor.interfaceError(); };

        /**
         * connector function for insert a text value
         * at the current cursor position into suite editors
         */
        SuiteEditor.insert = function(text, elemId) { SuiteEditor.interfaceError(); };
    }
<?php echo '</script'; ?>
>

<?php echo $_smarty_tpl->tpl_vars['editor']->value;
}
}
