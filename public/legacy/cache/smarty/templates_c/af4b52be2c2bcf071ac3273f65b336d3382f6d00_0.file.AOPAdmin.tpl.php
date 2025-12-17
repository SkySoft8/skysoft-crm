<?php
/* Smarty version 4.5.3, created on 2025-11-10 09:24:43
  from 'C:\Apache\Apache24\htdocs\suitecrm\public\legacy\modules\Administration\AOPAdmin.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_6911af5b6649b1_29169487',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'af4b52be2c2bcf071ac3273f65b336d3382f6d00' => 
    array (
      0 => 'C:\\Apache\\Apache24\\htdocs\\suitecrm\\public\\legacy\\modules\\Administration\\AOPAdmin.tpl',
      1 => 1762424144,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6911af5b6649b1_29169487 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache\\Apache24\\htdocs\\suitecrm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getimage.php','function'=>'smarty_function_sugar_getimage',),));
?>
<form id="ConfigureSettings" name="ConfigureSettings" enctype='multipart/form-data' method="POST"
      action="index.php?module=Administration&action=AOPAdmin&do=save">

    <span class='error'><?php echo $_smarty_tpl->tpl_vars['error']->value['main'];?>
</span>

    <table width="100%" cellpadding="0" cellspacing="0" border="0" class="actionsContainer">
        <tr>
            <td class="action-button">
                <?php echo $_smarty_tpl->tpl_vars['BUTTONS']->value;?>

                 </td>
        </tr>
    </table>

    <?php echo '<script'; ?>
 type="text/javascript">
        
        $(function() {
            $('#enable_aop').change(function (){

                if($('#enable_aop').is(":checked")){
                    $('#email_settings').show();
                    $('#distribution_settings').show();
                    $('#enable_portal_row').show();
                }else{
                    $('#enable_portal').attr('checked', false);
                    removeFromValidate('ConfigureSettings','joomla_url');
                    $('#email_settings').hide();
                    $('#distribution_settings').hide();
                    $('#enable_portal_row').hide();
                    $('#enable_portal').change();
                }
            });
            $('#enable_aop').change();
            $('#enable_portal').change(function (){
                if($('#enable_portal').is(":checked") && $('#enable_aop').is(":checked")){
                    addToValidate('ConfigureSettings','joomla_url','text',true,"<?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_JOOMLA_URL'];?>
");
                    $('#joomla_url_row').show();
                }else{
                    removeFromValidate('ConfigureSettings','joomla_url');
                    $('#joomla_url_row').hide();
                }
            });
            $('#enable_portal').change();
        });
        
    <?php echo '</script'; ?>
>

    <table id="portal-seetings" width="100%" border="0" cellspacing="1" cellpadding="0" class="edit view">
        <tr>
            <th align="left" scope="row" colspan="4"><h4><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_JOOMLA_SETTINGS'];?>
</h4></th>
        </tr>
        <tr>
            <td  scope="row" width="15%"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_ENABLE_AOP'];?>
: </td>
            <td>
                <input type='checkbox' id='enable_aop' name='enable_aop' <?php if ($_smarty_tpl->tpl_vars['config']->value['enable_aop']) {?>checked='checked'<?php }?> >
            </td>
        </tr>
        <tr id="enable_portal_row">
            <td scope="row" width="15%"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_ENABLE_PORTAL'];?>
: </td>
            <td>
                <input type='checkbox' id='enable_portal' name='enable_portal' <?php if ($_smarty_tpl->tpl_vars['config']->value['enable_portal']) {?>checked='checked'<?php }?> >
            </td>
        </tr>
        <tr id='joomla_url_row'>
            <td scope="row" width="200"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_JOOMLA_URL'];?>
: </td>
            <td>
                <input type='text' name='joomla_url' value='<?php echo $_smarty_tpl->tpl_vars['config']->value['joomla_url'];?>
' >
            </td>
        </tr>
        <!--<tr>
            <td scope="row" width="200"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_JOOMLA_ACCESS_KEY'];?>
: </td>
            <td>
                <input type='text' size='20' name='joomla_access_key' value='<?php echo $_smarty_tpl->tpl_vars['config']->value['joomla_access_key'];?>
' >
            </td>
        </tr>-->
    </table>

    <table id='distribution_settings' width="100%" border="0" cellspacing="1" cellpadding="0" class="edit view">
        <tr><th align="left" scope="row" colspan="4"><h4><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_CASE_ASSIGNMENT'];?>
</h4></th>
        </tr>
        <tr>
            <td scope="row" width="200"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_DISTRIBUTION_METHOD'];?>
: </td>
            <td>
                <select id='distribution_method_select' name='distribution_method' tabindex='241'><?php echo $_smarty_tpl->tpl_vars['DISTRIBUTION_METHOD']->value;?>
</select>
            </td>
        </tr>
        <tr id="distribution_options_row">
            <td  scope="row" width="200"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_ASSIGNMENT_OPTIONS'];?>
: </td>
            <td><?php echo $_smarty_tpl->tpl_vars['DISTRIBUTION_OPTIONS']->value;?>
</td>
        </tr>
        <tr id="distribution_user_row">
            <td scope="row" width="200" style="padding-bottom:1em;"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_ASSIGNMENT_USER'];?>
: </td>
            <td>
                <input type="text" name="distribution_user_name" class="sqsEnabled" tabindex="0" id="distribution_user_name" size="" value="<?php echo $_smarty_tpl->tpl_vars['distribution_user_name']->value;?>
" title='' autocomplete="off"  	 >
                <input type="hidden" name="distribution_user_id" id="distribution_user_id" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['distribution_user_id'];?>
">
<span class="id-ff multiple selectcrossbtn">
<button type="button" name="btn_distribution_user_name" id="btn_distribution_user_name" tabindex="0" title="Select User" class="button firstChild" value="Select User"
        
        onclick='open_popup(
                "Users",
                600,
                400,
                "",
                true,
                false,
        {"call_back_function":"set_return","form_name":"ConfigureSettings","field_to_name_array":{"id":"distribution_user_id","last_name":"distribution_user_name"}},
                "single",
                true
                );' >
    
    <span>
        <?php echo smarty_function_sugar_getimage(array('name'=>"cursor"),$_smarty_tpl);?>

    </span>
    </button>
    <button type="button" name="btn_clr_distribution_user_name" id="btn_clr_distribution_user_name" tabindex="0" title="Clear User"  class="button lastChild"
                                                                                                onclick="SUGAR.clearRelateField(this.form, 'distribution_user_name', 'distribution_user_id');"  value="Clear User" >
        <span>
            <?php echo smarty_function_sugar_getimage(array('name'=>"cross"),$_smarty_tpl);?>

        </span>
    </button>
</span>
                <?php echo '<script'; ?>
 type="text/javascript">
                    
                    if(typeof sqs_objects == 'undefined'){
                        var sqs_objects = new Array;
                    }
                    sqs_objects['ConfigureSettings_distribution_user_name']={
                        "form":"ConfigureSettings",
                        "method":"get_user_array",
                        "field_list":["user_name","id"],
                        "populate_list":["distribution_user_name","distribution_user_id"],
                        "required_list":["distribution_user_id"],
                        "conditions":[{"name":"user_name","op":"like_custom","end":"%","value":""}],
                        "limit":"30",
                        "no_match_text":"No Match"};
                    SUGAR.util.doWhen(
                            "typeof(sqs_objects) != 'undefined' && typeof(sqs_objects['ConfigureSettings_distribution_user_name']) != 'undefined'",
                            enableQS
                    );
                    
                <?php echo '</script'; ?>
>

            </td>
        </tr>
    </table>
    <table id='case_status_settings' width="100%" border="0" cellspacing="1" cellpadding="0" class="edit view">
        <tr>
            <th align="left" scope="row" colspan="6"><h4><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_CASE_STATUS_SETTINGS'];?>
</h4></th>
        </tr>
        <?php echo $_smarty_tpl->tpl_vars['currentStatuses']->value;?>

        <tr><td><button class="button" type='button' id="addStatusButton"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_ADD_STATUS'];?>
</button></td></tr>
    </table>
    <table id='email_settings' width="100%" border="0" cellspacing="1" cellpadding="0" class="edit view">
        <tr>
            <th align="left" scope="row" colspan="4"><h4><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_EMAIL_SETTINGS'];?>
</h4></th>
        </tr>
        <tr>
            <td scope="row" width="20%"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_SUPPORT_FROM_ADDRESS'];?>
: </td>
            <td>
                <input type="text" name="support_from_address" id="support_from_address" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['support_from_address'];?>
">
            </td>
        </tr>
        <tr>
            <td scope="row" width="200"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_SUPPORT_FROM_NAME'];?>
: </td>
            <td>
                <input type="text" name="support_from_name" id="support_from_name" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['support_from_name'];?>
">
            </td>
        </tr>
        <tr>
            <td  scope="row" width="200"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_CASE_MACRO'];?>
: </td>
            <td  >
                <input type="text" name="inbound_email_case_macro" id="inbound_email_case_macro" value="<?php echo $_smarty_tpl->tpl_vars['inbound_email_case_macro']->value;?>
">
                <span>
                    <?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_CASE_MACRO_DESC'];?>

                    <i><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_CASE_MACRO_DESC2'];?>
</i>
                </span>
            </td>
        </tr>
        <tr id="user_email_template_row">
            <td scope="row" width="200"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_USER_EMAIL_TEMPLATE'];?>
: </td>
            <td>
                <select id='user_email_template_id_select' name='user_email_template_id' onchange='show_edit_template_link(this);'><?php echo $_smarty_tpl->tpl_vars['USER_EMAIL_TEMPLATES']->value;?>
</select>

                <a href='javascript:open_email_template_form("user_email_template_id")' ><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_CREATE_EMAIL_TEMPLATE'];?>
</a>
                <span name='edit_template' id='user_email_template_id_edit_template_link' style='visibility: hidden;'>
                <a href='javascript:edit_email_template_form("user_email_template_id")' ><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_EDIT_EMAIL_TEMPLATE'];?>
</a></span>
            </td>
        </tr>

        <tr id="contact_email_template_row">
            <td scope="row" width="200"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_CONTACT_EMAIL_TEMPLATE'];?>
: </td>
            <td>
                <select id='contact_email_template_id_select' name='contact_email_template_id' onchange='show_edit_template_link(this);'><?php echo $_smarty_tpl->tpl_vars['CONTACT_EMAIL_TEMPLATES']->value;?>
</select>

                <a href='javascript:open_email_template_form("contact_email_template_id")' ><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_CREATE_EMAIL_TEMPLATE'];?>
</a>
                <span name='edit_template' id='contact_email_template_id_edit_template_link' style='visibility: hidden;'>
                <a href='javascript:edit_email_template_form("contact_email_template_id")' ><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_EDIT_EMAIL_TEMPLATE'];?>
</a></span>
            </td>
        </tr>
        <tr id="case_creation_email_template_row">
            <td scope="row" width="200"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_CASE_CREATION_EMAIL_TEMPLATE'];?>
: </td>
            <td>
                <select id='case_creation_email_template_id_select' name='case_creation_email_template_id' onchange='show_edit_template_link(this);'><?php echo $_smarty_tpl->tpl_vars['CREATION_EMAIL_TEMPLATES']->value;?>
</select>

                <a href='javascript:open_email_template_form("case_creation_email_template_id")' ><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_CREATE_EMAIL_TEMPLATE'];?>
</a>
                <span name='edit_template' id='case_creation_email_template_id_edit_template_link' style='visibility: hidden;'>
                <a href='javascript:edit_email_template_form("case_creation_email_template_id")' ><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_EDIT_EMAIL_TEMPLATE'];?>
</a></span>
            </td>
        </tr>


        <tr id="case_closure_email_template_row">
            <td scope="row" width="200"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_CASE_CLOSURE_EMAIL_TEMPLATE'];?>
: </td>
            <td>
                <select id='case_closure_email_template_id_select' name='case_closure_email_template_id' onchange='show_edit_template_link(this);'><?php echo $_smarty_tpl->tpl_vars['CLOSURE_EMAIL_TEMPLATES']->value;?>
</select>

                <a href='javascript:open_email_template_form("case_closure_email_template_id")' ><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_CREATE_EMAIL_TEMPLATE'];?>
</a>
                <span name='edit_template' id='case_closure_email_template_id_edit_template_link' style='visibility: hidden;'>
                <a href='javascript:edit_email_template_form("case_closure_email_template_id")' ><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_EDIT_EMAIL_TEMPLATE'];?>
</a></span>
            </td>
        </tr>

        <tr id="joomla_account_creation_email_template_row">
            <td scope="row" width="200"><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_AOP_JOOMLA_ACCOUNT_CREATION_EMAIL_TEMPLATE'];?>
: </td>
            <td>
                <select id='joomla_account_creation_email_template_id_select' name='joomla_account_creation_email_template_id' onchange='show_edit_template_link(this);'><?php echo $_smarty_tpl->tpl_vars['JOOMLA_EMAIL_TEMPLATES']->value;?>
</select>

                <a href='javascript:open_email_template_form("joomla_account_creation_email_template_id")' ><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_CREATE_EMAIL_TEMPLATE'];?>
</a>
                <span name='edit_template' id='joomla_account_creation_email_template_id_edit_template_link' style='visibility: hidden;'>
                <a href='javascript:edit_email_template_form("joomla_account_creation_email_template_id")' ><?php echo $_smarty_tpl->tpl_vars['MOD']->value['LBL_EDIT_EMAIL_TEMPLATE'];?>
</a></span>
            </td>
        </tr>

    </table>

    <div class="hide-btn">
        <?php echo $_smarty_tpl->tpl_vars['BUTTONS']->value;?>

    </div>
    <?php echo $_smarty_tpl->tpl_vars['JAVASCRIPT']->value;?>

</form>
<?php }
}
