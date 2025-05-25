<?php
/* Smarty version 4.5.3, created on 2025-05-23 12:01:19
  from 'C:\Apache24\htdocs\crm\public\legacy\modules\Home\Dashlets\JotPadDashlet\JotPadDashletScript.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_6830638fcfbc55_28114392',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '12cf12a53533c2b452470fe7da72e6711e1effc6' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\modules\\Home\\Dashlets\\JotPadDashlet\\JotPadDashletScript.tpl',
      1 => 1744976540,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6830638fcfbc55_28114392 (Smarty_Internal_Template $_smarty_tpl) {
?>

<?php echo '<script'; ?>
>
if(typeof JotPad == 'undefined') { // since the dashlet can be included multiple times a page, don't redefine these functions
	JotPad = function() {
	    return {
	    	/**
	    	 * Called when the textarea is blurred
	    	 */
	        blur: function(ta, id) {
	        	ajaxStatus.showStatus('<?php echo $_smarty_tpl->tpl_vars['saving']->value;?>
'); // show that AJAX call is happening
	        	// what data to post to the dashlet
    	    	var va=YAHOO.lang.JSON.stringify(encodeURIComponent(ta.value));
				va = va.replace(/%0A/g, "%5Cn");
    	    	postData = 'to_pdf=1&module=Home&action=CallMethodDashlet&method=saveText&id=' + id + '&savedText=' + va;
				var cObj = YAHOO.util.Connect.asyncRequest('POST','index.php', 
								  {success: JotPad.saved, failure: JotPad.saved}, postData);
	        },
		    /**
	    	 * Called when the textarea is double clicked on
	    	 */
			edit: function(divObj, id) {
				ta = document.getElementById('jotpad_textarea_' + id);
				if(SUGAR.isIE) ta.value = divObj.innerHTML.replace(/<br>/gi, "\n");
				else ta.value = divObj.innerHTML.replace(/<br>/gi, '');
				ta.value = ta.value.replace(/&amp;/gi, "&");
				divObj.style.display = 'none';
				ta.style.display = '';
				ta.focus();
			},
		    /**
	    	 * handle the response of the saveText method
	    	 */
	        saved: function(data) {
	        	eval(data.responseText);
	           	ajaxStatus.showStatus('<?php echo $_smarty_tpl->tpl_vars['saved']->value;?>
');
	           	if(typeof result != 'undefined') {
					ta = document.getElementById('jotpad_textarea_' + result['id']);
					theDiv = document.getElementById('jotpad_' + result['id']);
					theDiv.innerHTML = result['savedText'];
				}
				ta.style.display = 'none';
				theDiv.style.display = '';
	           	window.setTimeout('ajaxStatus.hideStatus()', 2000);
	        }
	    };
	}();
}
<?php echo '</script'; ?>
>
<?php }
}
