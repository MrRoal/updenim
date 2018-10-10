<?php /* Smarty version 2.6.18, created on 2014-05-01 12:56:01
         compiled from modules/QuickBooks/ErrorLog.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'vtiger_imageurl', 'modules/QuickBooks/ErrorLog.tpl', 19, false),)), $this); ?>
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
	    	<br>
			<table border="0" cellpadding="5" cellspacing="0" width="95%">
			<tr>
				<td rowspan="2" valign="top" width="50"><img src="<?php echo vtiger_imageurl('set-IcoLoginHistory.gif', $this->_tpl_vars['THEME']); ?>
" alt="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" title="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" border="0" height="48" width="48"></td>
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Error Log</b></td>
			</tr>

			<tr>
				<td class="small" valign="top">Display error messages</td>
			</tr>
			</table>
					
			<br>			
			<table width="95%" cellspacing="0" cellpadding="2" border="0" class="small">
			    <tbody><tr>				
				<td nowrap="" style="padding-right:20px">
					<!--
	             	<input type="button" style="width:70px" value="  Import  " name="button" class="crmbutton small save" accesskey="I" title="Import Commission" onclick="importCommissions();">	
	             	-->
	            </td>
	            <td nowrap="" class="small" width="20%">
					Showing Records <?php echo $this->_tpl_vars['START']; ?>
 - <?php echo $this->_tpl_vars['END']; ?>

				</td>
				<!-- Page Navigation -->
				<td width="55%" nowrap="" align="left">
					<table cellspacing="0" cellpadding="0" border="0" class="small">
						<tbody><tr><td align="right" style="padding: 5px;">
						<?php if ($this->_tpl_vars['PAGE'] == 1): ?>
							<img border="0" align="absmiddle" src="themes/images/start_disabled.gif">&nbsp;<img border="0" align="absmiddle" src="themes/images/previous_disabled.gif">
						<?php else: ?>
							<a href="javascript:;" onclick="navigatePage(1, 0);"><img border="0" align="absmiddle" src="themes/images/start_disabled.gif"></a>&nbsp;<a href="javascript:;" onclick="navigatePage(<?php echo $this->_tpl_vars['PAGE']; ?>
, -1);"><img border="0" align="absmiddle" src="themes/images/previous_disabled.gif"></a>
						<?php endif; ?>
						&nbsp;<input type="text" onchange="navigatePage(this.value, 0);" style="width: 3em;margin-right: 0.7em;" value="<?php echo $this->_tpl_vars['PAGE']; ?>
" name="pagenum" class="small"><span style="white-space: nowrap;" class="small" name="Potentials_listViewCountContainerName">of <?php echo $this->_tpl_vars['TOTAL_PAGES']; ?>
</span>
						<?php if ($this->_tpl_vars['PAGE'] == $this->_tpl_vars['TOTAL_PAGES']): ?>
							<img border="0" align="absmiddle" src="themes/images/next.gif">&nbsp;<img border="0" align="absmiddle" src="themes/images/end.gif">&nbsp;
						<?php else: ?>
							<a title="Next" alt="Next" onclick="navigatePage(<?php echo $this->_tpl_vars['PAGE']; ?>
, 1);" href="javascript:;"><img border="0" align="absmiddle" src="themes/images/next.gif"></a>&nbsp;<a title="Last" alt="Last" onclick="navigatePage(<?php echo $this->_tpl_vars['TOTAL_PAGES']; ?>
, 0);" href="javascript:;"><img border="0" align="absmiddle" src="themes/images/end.gif"></a>&nbsp;
						<?php endif; ?>	
						</td></tr>
					</tbody></table>
                </td>					
       		    </tr>
			</tbody></table>
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
					<td class="lvtCol"><?php echo $this->_tpl_vars['i']; ?>
</td>
					<?php endforeach; endif; unset($_from); ?>
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
					<td><?php echo $this->_tpl_vars['val']; ?>
</td>
					<?php endforeach; endif; unset($_from); ?>
				</tr>		
				<?php endforeach; endif; unset($_from); ?>									
			</tbody></table>
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