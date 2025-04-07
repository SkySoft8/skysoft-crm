<?php
/* Smarty version 4.5.3, created on 2025-04-07 09:53:51
  from 'C:\Apache24\htdocs\crm2\public\legacy\themes\suite8\include\MySugar\tpls\addDashletsDialog.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_67f3a0aff092f8_85488072',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c5669f9003dbb6bfda1d04987f700aa22ed71010' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\themes\\suite8\\include\\MySugar\\tpls\\addDashletsDialog.tpl',
      1 => 1743515289,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_67f3a0aff092f8_85488072 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_translate.php','function'=>'smarty_function_sugar_translate',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\Smarty\\plugins\\function.counter.php','function'=>'smarty_function_counter',),2=>array('file'=>'C:\\Apache24\\htdocs\\crm2\\public\\legacy\\include\\Smarty\\plugins\\modifier.replace.php','function'=>'smarty_modifier_replace',),));
?>
<div align="right" id="dashletSearch">
	<table>
		<tr>
			<td><?php echo smarty_function_sugar_translate(array('label'=>'LBL_DASHLET_SEARCH','module'=>'Home'),$_smarty_tpl);?>
: <input id="search_string" type="text" length="15" onKeyPress="javascript:if(event.keyCode==13)SUGAR.mySugar.searchDashlets(this.value,document.getElementById('search_category').value);"  title="<?php echo smarty_function_sugar_translate(array('label'=>'LBL_DASHLET_SEARCH','module'=>'Home'),$_smarty_tpl);?>
"/>
			<input type="button" class="button" value="<?php echo smarty_function_sugar_translate(array('label'=>'LBL_SEARCH','module'=>'Home'),$_smarty_tpl);?>
" onClick="javascript:SUGAR.mySugar.searchDashlets(document.getElementById('search_string').value,document.getElementById('search_category').value);" />
			<input type="button" class="button" value="<?php echo smarty_function_sugar_translate(array('label'=>'LBL_CLEAR','module'=>'Home'),$_smarty_tpl);?>
" onClick="javascript:SUGAR.mySugar.clearSearch();" />			
			<?php if ($_smarty_tpl->tpl_vars['moduleName']->value == 'Home') {?>
			<input type="hidden" id="search_category" value="module" />
			<?php } else { ?>
			<input type="hidden" id="search_category" value="chart" />
			<?php }?>
			</td>
		</tr>
	</table>
	<br>
</div>

<?php if ($_smarty_tpl->tpl_vars['moduleName']->value == 'Home') {?>
 <ul class="subpanelTablist" id="dashletCategories">
	<li id="moduleCategory" class="active"><a href="javascript:SUGAR.mySugar.toggleDashletCategories('module');" class="current" id="moduleCategoryAnchor"><span class="suitepicon suitepicon-module-default"></span><?php echo smarty_function_sugar_translate(array('label'=>'LBL_MODULES','module'=>'Home'),$_smarty_tpl);?>
</a></li>
	<li id="chartCategory" class=""><a href="javascript:SUGAR.mySugar.toggleDashletCategories('chart');" class="" id="chartCategoryAnchor"><span class="suitepicon suitepicon-dashlet-charts-groupby"></span><?php echo smarty_function_sugar_translate(array('label'=>'LBL_CHARTS','module'=>'Home'),$_smarty_tpl);?>
</a></li>
	<li id="toolsCategory" class=""><a href="javascript:SUGAR.mySugar.toggleDashletCategories('tools');" class="" id="toolsCategoryAnchor"><span class="suitepicon suitepicon-dashlet-jotpad"></span><?php echo smarty_function_sugar_translate(array('label'=>'LBL_TOOLS','module'=>'Home'),$_smarty_tpl);?>
</a></li>
	<li id="webCategory" class=""><a href="javascript:SUGAR.mySugar.toggleDashletCategories('web');" class="" id="webCategoryAnchor"><span class="suitepicon suitepicon-action-home"></span><?php echo smarty_function_sugar_translate(array('label'=>'LBL_WEB','module'=>'Home'),$_smarty_tpl);?>
</a></li>
</ul>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['moduleName']->value == 'Home') {?>
<div id="moduleDashlets" style="height:400px;display:;">
	<h3><span class="suitepicon suitepicon-module-default"></span><?php echo smarty_function_sugar_translate(array('label'=>'LBL_MODULES','module'=>'Home'),$_smarty_tpl);?>
</h3>
	<div id="moduleDashletsList" style="height:394px;overflow:auto;display:;">
	<table width="95%">
		<?php echo smarty_function_counter(array('assign'=>'rowCounter','start'=>0,'print'=>false),$_smarty_tpl);?>

		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['modules']->value, 'module');
$_smarty_tpl->tpl_vars['module']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['module']->value) {
$_smarty_tpl->tpl_vars['module']->do_else = false;
?>
		<?php if ($_smarty_tpl->tpl_vars['rowCounter']->value%2 == 0) {?>
		<tr>
		<?php }?>
			<td width="50%" align="left"><a id="<?php echo $_smarty_tpl->tpl_vars['module']->value['id'];?>
_icon" href="javascript:void(0)" onclick="<?php echo $_smarty_tpl->tpl_vars['module']->value['onclick'];?>
" style="text-decoration:none">
					<span class="suitepicon suitepicon-module-<?php echo smarty_modifier_replace(mb_strtolower((string) $_smarty_tpl->tpl_vars['module']->value['module_name'], 'UTF-8'),'_','-');?>
"></span>
					<span id="mbLBLL" class="mbLBLL"><?php echo $_smarty_tpl->tpl_vars['module']->value['title'];?>
</span></a><br /></td>
		<?php if ($_smarty_tpl->tpl_vars['rowCounter']->value%2 == 1) {?>
		</tr>
		<?php }?>
		<?php echo smarty_function_counter(array(),$_smarty_tpl);?>

		<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	</table>
	</div>
</div>
<?php }?>
<div id="chartDashlets" style="<?php if ($_smarty_tpl->tpl_vars['moduleName']->value == 'Home') {?>height:400px;display:none;<?php } else { ?>height:425px;display:;<?php }?>">
	<?php if ($_smarty_tpl->tpl_vars['charts']->value != false) {?>
	<h3><span id="basicChartDashletsExpCol"><a href="javascript:void(0)" onClick="javascript:SUGAR.mySugar.collapseList('basicChartDashlets');"><span class="suitepicon suitepicon-dashlet-charts-groupby"></span></span></a>&nbsp;<?php echo smarty_function_sugar_translate(array('label'=>'LBL_BASIC_CHARTS','module'=>'Home'),$_smarty_tpl);?>
</h3>
	<div id="basicChartDashletsList">
	<table width="100%">
		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['charts']->value, 'chart', false, 'a');
$_smarty_tpl->tpl_vars['chart']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['a']->value => $_smarty_tpl->tpl_vars['chart']->value) {
$_smarty_tpl->tpl_vars['chart']->do_else = false;
?>
		<tr>
			<td align="left"><a href="javascript:void(0)" onclick="<?php echo $_smarty_tpl->tpl_vars['chart']->value['onclick'];?>
"><span class="suitepicon suitepicon-module-<?php echo smarty_modifier_replace(mb_strtolower((string) $_smarty_tpl->tpl_vars['chart']->value['icon'], 'UTF-8'),'_','-');?>
"></span></a>&nbsp;<a class="mbLBLL" href="#" onclick="<?php echo $_smarty_tpl->tpl_vars['chart']->value['onclick'];?>
"><?php echo $_smarty_tpl->tpl_vars['chart']->value['title'];?>
</a><br /></td>
		</tr>
		<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	</table>
	</div>
	<?php }?>
</div>

<?php if ($_smarty_tpl->tpl_vars['moduleName']->value == 'Home') {?>
<div id="toolsDashlets" style="height:400px;display:none;">
	<h3><?php echo smarty_function_sugar_translate(array('label'=>'LBL_TOOLS','module'=>'Home'),$_smarty_tpl);?>
</h3>
	<div id="toolsDashletsList">
	<table width="95%">
		<?php echo smarty_function_counter(array('assign'=>'rowCounter','start'=>0,'print'=>false),$_smarty_tpl);?>

		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['tools']->value, 'tool');
$_smarty_tpl->tpl_vars['tool']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['tool']->value) {
$_smarty_tpl->tpl_vars['tool']->do_else = false;
?>
		<?php if ($_smarty_tpl->tpl_vars['rowCounter']->value%2 == 0) {?>
		<tr>
		<?php }?>
			<td align="left"><a href="javascript:void(0)" onclick="<?php echo $_smarty_tpl->tpl_vars['tool']->value['onclick'];?>
"<span class="suitepicon suitepicon-dashlet-<?php echo smarty_modifier_replace(mb_strtolower((string) $_smarty_tpl->tpl_vars['tool']->value['icon'], 'UTF-8'),'_','-');?>
"></span></a>&nbsp;<a class="mbLBLL" href="#" onclick="<?php echo $_smarty_tpl->tpl_vars['tool']->value['onclick'];?>
"><?php echo $_smarty_tpl->tpl_vars['tool']->value['title'];?>
</a><br /></td>
		<?php if ($_smarty_tpl->tpl_vars['rowCounter']->value%2 == 1) {?>
		</tr>
		<?php }?>
		<?php echo smarty_function_counter(array(),$_smarty_tpl);?>

		<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	</table>
	</div>
</div>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['moduleName']->value == 'Home') {?>
<div id="webDashlets" style="height:400px;display:none;">
	<div id="webDashletsList">
	<table width="95%">
	    <tr>
	        <td scope="row"><?php echo smarty_function_sugar_translate(array('label'=>'LBL_WEBSITE_TITLE','module'=>'Home'),$_smarty_tpl);?>
</td>
	        <td>
				<input type="text" id="web_address" value="http://" style="width: 400px"   title="<?php echo smarty_function_sugar_translate(array('label'=>'LBL_WEBSITE_TITLE','module'=>'Home'),$_smarty_tpl);?>
"/>
				<input type="button" name="create" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_ADD_BUTTON'];?>
" onclick="return SUGAR.mySugar.addDashlet('iFrameDashlet', 'web', document.getElementById('web_address').value);" />
			</td>
        </tr>
		<tr>
			<td scope="row"><?php echo smarty_function_sugar_translate(array('label'=>'LBL_RSS_TITLE','module'=>'Home'),$_smarty_tpl);?>
</td>
			<td>
				<input type="text" id="rss_address" value="http://" style="width: 400px"  title="<?php echo smarty_function_sugar_translate(array('label'=>'LBL_RSS_TITLE','module'=>'Home'),$_smarty_tpl);?>
" />
				<input type="button" name="create" value="<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_ADD_BUTTON'];?>
" onclick="return SUGAR.mySugar.addDashlet('RSSDashlet', 'web', document.getElementById('rss_address').value);" />
			</td>
		</tr>
    </table>
	</div>
</div>
<?php }?>

<div id="searchResults" style="display:none;<?php if ($_smarty_tpl->tpl_vars['moduleName']->value == 'Home') {?>height:400px;<?php } else { ?>height:425px;<?php }?>">
</div>
<?php }
}
