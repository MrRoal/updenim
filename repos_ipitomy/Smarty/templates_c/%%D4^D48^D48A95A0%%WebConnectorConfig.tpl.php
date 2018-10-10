<?php /* Smarty version 2.6.18, created on 2014-04-22 02:19:34
         compiled from modules/QuickBooks/WebConnectorConfig.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'vtiger_imageurl', 'modules/QuickBooks/WebConnectorConfig.tpl', 19, false),)), $this); ?>
<script language="JavaScript" type="text/javascript" src="modules/QuickBooks/QuickBooks.js"></script>
<div id="ErrorLogListViewContents">
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'Buttons_List.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<br>
<!-- Shadow table -->
<table align="center" border="0" cellpadding="0" cellspacing="0" width="98%">
<tr>
    <td valign="top"><img src="<?php echo vtiger_imageurl('showPanelTopLeft.gif', $this->_tpl_vars['THEME']); ?>
"></td>
    <td class="showPanelBg" style="padding: 10px;" valign="top" width="100%">
	    <br>
	    <div align=center>
	    <form action="index.php?module=QuickBooks&action=WebConnectorConfig&parenttab=Tools" id="formWCC" method="POST" name="formWCC">
	    	<br>
			<table border="0" cellpadding="5" cellspacing="0" width="95%">
			<tr>
				<td rowspan="2" valign="top" width="50"><img src="<?php echo vtiger_imageurl('terms.gif', $this->_tpl_vars['THEME']); ?>
" alt="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" title="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" border="0" height="48" width="48"></td>
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Web Connector and QBXML version</b></td>
			</tr>

			<tr>
				<td class="small" valign="top">Add application name and company file path, change Quickbooks SDK version</td>
			</tr>
			</table>

			<br>
						<table width="95%" cellspacing="1" cellpadding="4" border="0">
				<tr><td><b>Web Connector Configuration</b></td></tr>
			</table>
			<table width="95%" cellspacing="1" cellpadding="4" border="0" class="lvt small">
				<!-- Table Headers -->
				<tbody><tr>
					<!--
					<td class="lvtCol"><input type="checkbox" onclick="toggleSelect_ListView(this.checked,'modules_checked[]')" name="selectall"></td>
					-->
					<!--
					<td class="lvtCol">ID</td>
					<td class="lvtCol">Policy ID</td>
					<td class="lvtCol">Carrier</td>
					<td class="lvtCol">Created Time</td>
					<td class="lvtCol">Premium</td>
					<td class="lvtCol">Amount</td>
					-->
					<?php $_from = $this->_tpl_vars['COMMHEADER']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['val']):
?>
					<?php if ($this->_tpl_vars['i'] != 'ID'): ?>
					<td class="lvtCol"><?php echo $this->_tpl_vars['i']; ?>
</td>
					<?php endif; ?>
					<?php endforeach; endif; unset($_from); ?>
					<td class="lvtCol" width="10%">Action</td>
				</tr>
				<?php $_from = $this->_tpl_vars['COMMISSIONS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['data']):
?>
				<tr bgcolor="white" id="row_<?php echo $this->_tpl_vars['val']['module']; ?>
" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
					<!--
					<td width="2%"><input type="checkbox" value="<?php echo $this->_tpl_vars['val']['module']; ?>
" id="<?php echo $this->_tpl_vars['val']['module']; ?>
" name="modules_checked[]" <?php if ($this->_tpl_vars['val']['qb'] == 1): ?>checked<?php endif; ?>></td>
					-->
					<?php $_from = $this->_tpl_vars['data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['val']):
?>
					<?php if ($this->_tpl_vars['i'] != 'ID'): ?>
						<?php if ($this->_tpl_vars['i'] == 'Active'): ?>
							<?php if ($this->_tpl_vars['val'] == '1'): ?>
								<td><b>Active</b></td>
							<?php else: ?>
								<td>Inactive</td>
							<?php endif; ?>
						<?php else: ?>
							<td><?php echo $this->_tpl_vars['val']; ?>
</td>
						<?php endif; ?>
					<?php endif; ?>
					<?php endforeach; endif; unset($_from); ?>
					<td>
						<a href="index.php?module=QuickBooks&action=WebConnectorConfig&parenttab=Tools&id=<?php echo $this->_tpl_vars['data']['ID']; ?>
&cmd=edit">edit</a>
						&nbsp;|&nbsp;
						<a href="index.php?module=QuickBooks&action=WebConnectorConfig&parenttab=Tools&id=<?php echo $this->_tpl_vars['data']['ID']; ?>
&cmd=del">del</a>
						&nbsp;|&nbsp;
						<?php if ($this->_tpl_vars['data']['Active'] == 1): ?>
							<a href="index.php?module=QuickBooks&action=WebConnectorConfig&parenttab=Tools&id=<?php echo $this->_tpl_vars['data']['ID']; ?>
&cmd=disable">disable</a>
						<?php else: ?>
							<a href="index.php?module=QuickBooks&action=WebConnectorConfig&parenttab=Tools&id=<?php echo $this->_tpl_vars['data']['ID']; ?>
&cmd=enable">enable</a>
						<?php endif; ?>
					</td>
				</tr>
				<?php endforeach; endif; unset($_from); ?>
				<tr bgcolor="white" id="row_<?php echo $this->_tpl_vars['val']['module']; ?>
" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
					<td><input type="text" name="app_name" id="app_name" value="<?php echo $this->_tpl_vars['APP_NAME']; ?>
" style="width: 98%"></td>
					<td colspan="2"><input type="text" name="company_file" id="company_file" value="<?php echo $this->_tpl_vars['COMPANY_FILE']; ?>
" style="width: 99%"></td>
					<td>
						<?php if ($this->_tpl_vars['CMD_ACTION'] == 'Add'): ?>
						<input type="submit" value="<?php echo $this->_tpl_vars['CMD_ACTION']; ?>
" class="crmbutton small create" name="cmdAction" id="cmdAction">
						<?php else: ?>
						<input type="hidden" id="id" name="id" value="<?php echo $this->_tpl_vars['ID']; ?>
">
						<input type="submit" value="<?php echo $this->_tpl_vars['CMD_ACTION']; ?>
" class="crmbutton small edit" name="cmdAction" id="cmdAction">
						<input type="button" value="Cancel" class="crmbutton small cancel" name="cmdCancel" id="cmdCancel" onclick="window.history.back();">
						<?php endif; ?>
					</td>
				</tr>
			</tbody></table>

			<br><br>
			<table width="100%" border="0">
				<tr>
					<td>
						<table width="95%" cellspacing="1" cellpadding="4" border="0">
							<tr><td><b>QBXML version</b></td></tr>
						</table>
						<table width="95%" cellspacing="1" cellpadding="4" border="0">
							<tr valign="middle"><td>Current version:&nbsp;<input id="sdk_version" name="sdk_version" value="<?php echo $this->_tpl_vars['SDK_VERSION']; ?>
" style="width:40px;text-align: left;">&nbsp;<input type="submit" value="Change" class="crmbutton small edit" name="cmdChange" id="cmdChange"></td></tr>
						</table>
					</td>
					<td>
						<table width="95%" cellspacing="1" cellpadding="4" border="0">
							<tr><td><b>Quickbooks Timezone</b></td></tr>
						</table>
						<table width="95%" cellspacing="1" cellpadding="4" border="0">
							<tr valign="middle"><td>Current timezone:&nbsp;<input id="qb_timezone" name="qb_timezone" value="<?php echo $this->_tpl_vars['QB_TIMEZONE']; ?>
" style="width:180px;text-align: left;">&nbsp;<input type="submit" value="Change" class="crmbutton small edit" name="cmdChangeTimezone" id="cmdChangeTimezone"></td></tr>
						</table>
					</td>
					<td>
						<table>
							<tr>
								<td><b>Update password for Webconnector</b></td>
							</tr>
							<tr valign="middle">
								<td>New Password:
								<input type="password" id="qb_password" name="qb_password" value="" style="width:180px;text-align: left;">&nbsp;
								<input type="submit" value="Change" class="crmbutton small edit" name="cmdQBPassWord" id="cmdQBPassWord">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			</form>
		</div>
	</td>
</tr>
</table>

</td>
</tr>
</table>

</td>
<td valign="top"><img src="<?php echo vtiger_imageurl('showPanelTopRight.gif', $this->_tpl_vars['THEME']); ?>
"></td>
</tr>
</table>
</div>

<?php echo '
<script>
	function navigatePage(page, offset) {
		if(offset == 1) {
			page++;
		} else if(offset == -1) {
			page--;
		}
		$("status").style.display="inline";
		var data = "module=QuickBooks&action=QuickBooksAjax&file=ErrorLog&parenttab=Tools&page="+page;

		new Ajax.Request(
			\'index.php\',
				{
					queue: {position: \'end\', scope: \'command\'},
					method: \'post\',
					postBody: data,
					onComplete: function(response) {
						document.getElementById(\'ErrorLogListViewContents\').innerHTML = response.responseText;
						$("status").style.display="none";
					}
				}
		);
	}
</script>
'; ?>