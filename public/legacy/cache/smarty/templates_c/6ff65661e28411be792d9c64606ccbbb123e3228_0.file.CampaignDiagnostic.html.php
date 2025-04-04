<?php
/* Smarty version 4.5.3, created on 2025-04-02 17:04:09
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\Campaigns\CampaignDiagnostic.html' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67ed6e09d7c910_41492261',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6ff65661e28411be792d9c64606ccbbb123e3228' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\Campaigns\\CampaignDiagnostic.html',
      1 => 1743515289,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67ed6e09d7c910_41492261 (Smarty_Internal_Template $_smarty_tpl) {
?><!--
/**
 *
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
 * Copyright (C) 2011 - 2018 SalesAgility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
 * reasonably feasible for technical reasons, the Appropriate Legal Notices must
 * display the words "Powered by SugarCRM" and "Supercharged by SuiteCRM".
 */

/**

 */
-->
<form id="wizform" name="wizform" method="POST" action="index.php">
	<input type="hidden" name="module" value="Campaigns">
	<input type="hidden" name="action" = "CampaignDiagnostic">
	<input type="hidden" name="return_module" value="<?php echo $_smarty_tpl->tpl_vars['RETURN_MODULE']->value;?>
">
	<input type="hidden" name="return_id" value="<?php echo $_smarty_tpl->tpl_vars['RETURN_ID']->value;?>
">
	<input type="hidden" name="return_action" value="<?php echo $_smarty_tpl->tpl_vars['RETURN_ACTION']->value;?>
">
		


<div id="diagnose" class="contentdiv"> 
<form name="form1" method="post" action="">

<table class="h3Row" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td nowrap="nowrap"><h3><?php echo $_smarty_tpl->tpl_vars['EMAIL_IMAGE']->value;
echo $_smarty_tpl->tpl_vars['EMAIL_COMPONENTS']->value;?>
</h3></td></tr></table>

	<div id="email" >

          <?php echo $_smarty_tpl->tpl_vars['EMAIL_SETTINGS_CONFIGURED_MESSAGE']->value;?>

		  <?php echo $_smarty_tpl->tpl_vars['MAILBOXES_DETECTED_MESSAGE']->value;?>


	</div>
<p><?php echo $_smarty_tpl->tpl_vars['EMAIL_SETUP_WIZ_LINK']->value;?>
</p>

<p>&nbsp;</p>
<table class="h3Row" border="0" cellpadding="0" cellspacing="0" width="100%"><tbody><tr><td nowrap="nowrap"><h3><?php echo $_smarty_tpl->tpl_vars['SCHEDULE_IMAGE']->value;?>
  <?php echo $_smarty_tpl->tpl_vars['SCHEDULER_COMPONENTS']->value;?>
</h3></td></tr></table>

	<div id="schedule">

          <?php echo $_smarty_tpl->tpl_vars['SCHEDULER_EMAILS_MESSAGE']->value;?>


	</div>	
</p>
<p><div id='submit'><input name="Re-Check" onclick="this.form.action.value='CampaignDiagnostic';" class='button' value="<?php echo $_smarty_tpl->tpl_vars['RECHECK_BTN']->value;?>
" type="submit"></div>
</form></div>	



		<?php }
}
