<?php
/* Smarty version 4.5.3, created on 2025-04-23 14:29:38
  from 'C:\Apache24\htdocs\crm\public\legacy\themes\suite8\tpls\_head.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '4.5.3',
  'unifunc' => 'content_6808f9521fe1f5_31328430',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e350cbb3c3d74083555e149990063f55749d63ae' => 
    array (
      0 => 'C:\\Apache24\\htdocs\\crm\\public\\legacy\\themes\\suite8\\tpls\\_head.tpl',
      1 => 1744976541,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_6808f9521fe1f5_31328430 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getimagepath.php','function'=>'smarty_function_sugar_getimagepath',),1=>array('file'=>'C:\\Apache24\\htdocs\\crm\\public\\legacy\\include\\Smarty\\plugins\\function.sugar_getjspath.php','function'=>'smarty_function_sugar_getjspath',),));
?>
<!DOCTYPE html>
<html <?php echo $_smarty_tpl->tpl_vars['langHeader']->value;?>
>
<head>
    <link rel="SHORTCUT ICON" href="<?php echo $_smarty_tpl->tpl_vars['FAVICON_URL']->value;?>
">
    <meta http-equiv="Content-Type" content="text/html; charset=<?php echo $_smarty_tpl->tpl_vars['APP']->value['LBL_CHARSET'];?>
">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1" />
    <!-- Bootstrap -->
    <link href="themes/suite8/css/normalize.css" rel="stylesheet" type="text/css"/>
    <link href='themes/suite8/css/fonts.css' rel='stylesheet' type='text/css'>
    <link href="themes/suite8/css/grid.css" rel="stylesheet" type="text/css"/>
    <link href="themes/suite8/css/footable.core.css" rel="stylesheet" type="text/css"/>
    <title><?php if ($_smarty_tpl->tpl_vars['BROWSER_TITLE']->value) {
echo $_smarty_tpl->tpl_vars['BROWSER_TITLE']->value;
} else {
echo $_smarty_tpl->tpl_vars['APP']->value['LBL_BROWSER_TITLE'];
}?></title>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <?php echo '<script'; ?>
 src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"><?php echo '</script'; ?>
>
    <![endif]-->
    <?php echo $_smarty_tpl->tpl_vars['SUGAR_JS']->value;?>

    
    <?php echo '<script'; ?>
 type="text/javascript">
        <!--
        SUGAR.themes.theme_name = '<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
';
        SUGAR.themes.theme_ie6compat = '<?php echo $_smarty_tpl->tpl_vars['THEME_IE6COMPAT']->value;?>
';
        SUGAR.themes.hide_image = '<?php echo smarty_function_sugar_getimagepath(array('file'=>"hide.gif"),$_smarty_tpl);?>
';
        SUGAR.themes.show_image = '<?php echo smarty_function_sugar_getimagepath(array('file'=>"show.gif"),$_smarty_tpl);?>
';
        SUGAR.themes.loading_image = '<?php echo smarty_function_sugar_getimagepath(array('file'=>"img_loading.gif"),$_smarty_tpl);?>
';

        if (YAHOO.env.ua)
            UA = YAHOO.env.ua;
        -->
    <?php echo '</script'; ?>
>
    
    <?php echo $_smarty_tpl->tpl_vars['SUGAR_CSS']->value;?>

    <link rel="stylesheet" type="text/css" href="themes/suite8/css/colourSelector.php">
    <?php echo '<script'; ?>
 type="text/javascript" src='<?php echo smarty_function_sugar_getjspath(array('file'=>"themes/suite8/js/jscolor.js"),$_smarty_tpl);?>
'><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type="text/javascript" src='<?php echo smarty_function_sugar_getjspath(array('file'=>"cache/include/javascript/sugar_field_grp.js"),$_smarty_tpl);?>
'><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type="text/javascript" src='<?php echo smarty_function_sugar_getjspath(array('file'=>"vendor/tinymce/tinymce/tinymce.min.js"),$_smarty_tpl);?>
'><?php echo '</script'; ?>
>
</head>
<?php }
}
