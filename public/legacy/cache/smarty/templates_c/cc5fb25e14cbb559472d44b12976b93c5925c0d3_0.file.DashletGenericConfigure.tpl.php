<?php
/* Smarty version 4.5.3, created on 2025-04-07 09:54:19
  from 'C:\Apache24\htdocs\crm2\public\legacy\include\Dashlets\DashletGenericConfigure.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67f3a0cb5506c8_81928370',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cc5fb25e14cbb559472d44b12976b93c5925c0d3' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\Dashlets\\DashletGenericConfigure.tpl',
      1 => 1743515289,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67f3a0cb5506c8_81928370 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\Smarty\\plugins\\function.html_options.php','function'=>'smarty_function_html_options',),));
?>


<div>
    <form action='index.php' id='configure_<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
' method='post'
          onSubmit='SUGAR.mySugar.setChooser(); return SUGAR.dashlets.postForm("configure_<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
", SUGAR.mySugar.uncoverPage);'>
        <input type='hidden' name='id' value='<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
'>
        <input type='hidden' name='module' value='Home'>
        <input type='hidden' name='action' value='ConfigureDashlet'>
        <input type='hidden' name='configure' value='true'>
        <input type='hidden' name='to_pdf' value='true'>
        <input type='hidden' id='displayColumnsDef' name='displayColumnsDef' value=''>
        <input type='hidden' id='hideTabsDef' name='hideTabsDef' value=''>
        <input type='hidden' id='dashletType' name='dashletType' value=''/>

        <table cellpadding="0" cellspacing="0" border="0" width="100%" class="edit view">
            <tr>
                <td scope='row' colspan='4' align='left'>
                    <h2><?php echo $_smarty_tpl->tpl_vars['strings']->value['general'];?>
</h2>
                </td>
            </tr>
            <tr>
                <td scope='row'>
                    <?php echo $_smarty_tpl->tpl_vars['strings']->value['title'];?>

                </td>
                <td>
                    <input type='text' name='dashletTitle' value='<?php echo $_smarty_tpl->tpl_vars['dashletTitle']->value;?>
'>
                </td>
            </tr>
            <tr>
                <td scope='row'>
                    <?php echo $_smarty_tpl->tpl_vars['strings']->value['displayRows'];?>

                </td>
                <td>
                    <select name='displayRows'>
                        <?php echo smarty_function_html_options(array('values'=>$_smarty_tpl->tpl_vars['displayRowOptions']->value,'output'=>$_smarty_tpl->tpl_vars['displayRowOptions']->value,'selected'=>$_smarty_tpl->tpl_vars['displayRowSelect']->value),$_smarty_tpl);?>

                    </select>
                </td>
            </tr>
            <?php if ($_smarty_tpl->tpl_vars['isRefreshable']->value) {?>
                <tr>
                    <td scope='row' align='left'>
                        <?php echo $_smarty_tpl->tpl_vars['strings']->value['autoRefresh'];?>

                    </td>
                    <td >
                        <select name='autoRefresh' >
                            <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['autoRefreshOptions']->value,'selected'=>$_smarty_tpl->tpl_vars['autoRefreshSelect']->value),$_smarty_tpl);?>

                        </select>
                    </td>

                </tr>
            <?php }?>
            <tr>
                <td >
                    <?php echo $_smarty_tpl->tpl_vars['columnChooser']->value;?>

                </td>
            </tr>
            <?php if ($_smarty_tpl->tpl_vars['showMyItemsOnly']->value || !empty($_smarty_tpl->tpl_vars['searchFields']->value)) {?>
                <tr>
                    <td scope='row' colspan='4' align='left'>
                        <br>
                        <h2><?php echo $_smarty_tpl->tpl_vars['strings']->value['filters'];?>
</h2>
                    </td>
                </tr>
                <?php if ($_smarty_tpl->tpl_vars['showMyItemsOnly']->value) {?>
                    <tr>
                        <td scope='row'>
                            <?php echo $_smarty_tpl->tpl_vars['strings']->value['myItems'];?>

                        </td>
                        <td>
                            <input type='checkbox' <?php if ($_smarty_tpl->tpl_vars['myItemsOnly']->value == 'true') {?>checked<?php }?> name='myItemsOnly'
                                   value='true'>
                        </td>
                    </tr>
                <?php }?>
                <tr>
                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['searchFields']->value, 'params', false, 'name', 'searchIteration', array (
  'iteration' => true,
  'last' => true,
  'total' => true,
));
$_smarty_tpl->tpl_vars['params']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['name']->value => $_smarty_tpl->tpl_vars['params']->value) {
$_smarty_tpl->tpl_vars['params']->do_else = false;
$_smarty_tpl->tpl_vars['__smarty_foreach_searchIteration']->value['iteration']++;
$_smarty_tpl->tpl_vars['__smarty_foreach_searchIteration']->value['last'] = $_smarty_tpl->tpl_vars['__smarty_foreach_searchIteration']->value['iteration'] === $_smarty_tpl->tpl_vars['__smarty_foreach_searchIteration']->value['total'];
?>
                    <td  scope='row' valign='top'>
                        <?php echo $_smarty_tpl->tpl_vars['params']->value['label'];?>

                    </td>
                    <td  valign='top' style='padding-bottom: 5px'>
                        <?php echo $_smarty_tpl->tpl_vars['params']->value['input'];?>

                    </td>
                    <?php if ((!(1 & (isset($_smarty_tpl->tpl_vars['__smarty_foreach_searchIteration']->value['iteration']) ? $_smarty_tpl->tpl_vars['__smarty_foreach_searchIteration']->value['iteration'] : null))) && (isset($_smarty_tpl->tpl_vars['__smarty_foreach_searchIteration']->value['iteration']) ? $_smarty_tpl->tpl_vars['__smarty_foreach_searchIteration']->value['iteration'] : null) != (isset($_smarty_tpl->tpl_vars['__smarty_foreach_searchIteration']->value['last']) ? $_smarty_tpl->tpl_vars['__smarty_foreach_searchIteration']->value['last'] : null)) {?>                        </tr>
                        </tr>

                        <tr>
                    <?php }?>
                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

            <?php }?>
            <tr>
                <td colspan='4' align='right'>
                    <input type='submit' class='button' value='<?php echo $_smarty_tpl->tpl_vars['strings']->value['save'];?>
'>
                    <?php if ($_smarty_tpl->tpl_vars['showClearButton']->value) {?>
                        <input type='submit' class='button' value='<?php echo $_smarty_tpl->tpl_vars['strings']->value['clear'];?>
'
                               onclick='SUGAR.searchForm.clear_form(this.form,["dashletTitle","displayRows","autoRefresh"]);return false;'>
                    <?php }?>
                </td>
            </tr>
        </table>
    </form>
</div>
<?php }
}
