<?php /* Smarty version Smarty-3.1.7, created on 2018-10-09 20:21:38
         compiled from "/home/ilogix/Workspace/BoruClientCRM/repos_ipitomy71/includes/runtime/../../layouts/v7/modules/Invoice/DetailViewSummaryContents.tpl" */ ?>
<?php /*%%SmartyHeaderCode:6233765675bbcc07ab15b28-62373620%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1d460d172c8a75d9c5caf91697abed01b058194c' => 
    array (
      0 => '/home/ilogix/Workspace/BoruClientCRM/repos_ipitomy71/includes/runtime/../../layouts/v7/modules/Invoice/DetailViewSummaryContents.tpl',
      1 => 1539074030,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6233765675bbcc07ab15b28-62373620',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MODULE_NAME' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_5bbcc07ab1eb5',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5bbcc07ab1eb5')) {function content_5bbcc07ab1eb5($_smarty_tpl) {?>
<form id="detailView" method="POST"><?php echo $_smarty_tpl->getSubTemplate (vtemplate_path('SummaryViewWidgets.tpl',$_smarty_tpl->tpl_vars['MODULE_NAME']->value), $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
</form><?php }} ?>