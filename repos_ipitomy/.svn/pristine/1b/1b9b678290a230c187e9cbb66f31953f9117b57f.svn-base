<?php /* Smarty version 2.6.18, created on 2014-05-01 13:42:36
         compiled from modules/QuickBooks/PaymentGatewayFieldMapping.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'vtiger_imageurl', 'modules/QuickBooks/PaymentGatewayFieldMapping.tpl', 18, false),)), $this); ?>
<script language="JavaScript" type="text/javascript" src="modules/QuickBooks/QuickBooks.js"></script>
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
	    <div align="left" style="padding: 20px;">
			<table border="0" cellpadding="5" cellspacing="0" width="95%">
			<tr>
				<td rowspan="2" valign="top" width="50"><img src="<?php echo vtiger_imageurl('terms.gif', $this->_tpl_vars['THEME']); ?>
" alt="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" title="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" border="0" height="48" width="48"></td>
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Field Mapping</b></td>
			</tr>
			<tr>
				<td class="small" valign="top">Set field mapping</td>
			</tr>
			</table>
			<br><br>
			
			<?php if ($this->_tpl_vars['GATEWAYS'] == ''): ?>
				You have to enable a gateway in <a href="index.php?module=QuickBooks&action=PaymentGatewayConfigure&parenttab=Tools">Payment Gateways Configure</a> section
			<?php else: ?>
				<form action="index.php?module=QuickBooks&action=PaymentGatewayFieldMapping&parenttab=Tools" id="formPGC" method="POST" name="formPGC">
				Type&nbsp;
				<select name="gateway" onchange="selectGateway(this.value);">
					<?php $_from = $this->_tpl_vars['GATEWAYS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['gateway']):
?>
					<option value="<?php echo $this->_tpl_vars['gateway']['name']; ?>
" <?php if ($this->_tpl_vars['GATEWAY_SELECTED'] == $this->_tpl_vars['gateway']['name']): ?>selected<?php endif; ?>><?php echo $this->_tpl_vars['gateway']['label']; ?>
</option>
					<?php endforeach; endif; unset($_from); ?>
				</select>
				<input type="hidden" value="<?php echo $this->_tpl_vars['FIELD_COUNT']; ?>
" id="field_count" name="field_count">
				<div id="list_fields" style="padding-top:10px;">
					<div id="field_0">
						<table><tr><td width="20px;">&nbsp;</td><td width="180px;">Vtiger Field</td><td width="10px;">&nbsp;</td><td width="180px;">Quickbooks Field</td></tr></table>
					</div>
					<?php if ($this->_tpl_vars['FIELD_MAPPING'] != ''): ?>
						<?php echo $this->_tpl_vars['FIELD_MAPPING']; ?>

					<?php else: ?>
						<div id="field_1">
							<table><tr><td width="20px;"><img border="0" title="Add more field" alt="Add more field" src="themes/softed/images/select.gif" onclick="addMoreField('list_fields');"></td><td width="180px;"><select style="width:180px;" name="vt_field_1"><?php echo $this->_tpl_vars['VTIGER_FIELD']; ?>
</select></td><td width="10px;">&nbsp;</td><td width="180px;"><select name="qb_field_1" style="width:180px;"><?php echo $this->_tpl_vars['QUICKBOOKS_FIELD']; ?>
</select></td></tr></table>
						</div>
					<?php endif; ?>
				</div>
				<br>
				<input type="submit" style="width:70px" value="  Save  " name="saveGWFM" class="crmbutton small save" accesskey="S" title="Save [Alt+S]">
				</form>
			<?php endif; ?>
		</div>
	</td>
	
</tr>
</table>

<script>	
	function addMoreField(id) {
	    var obj = document.getElementById(id);
	    var obj_count = document.getElementById('field_count');
	    var cnt = parseInt(obj_count.value) + 1;
	    obj_count.value = cnt;
	    
	    var new_obj = document.createElement('div');
	    new_obj.id = "field_"+cnt;
//	    new_obj.style.paddingTop = '1px';
		new_obj.innerHTML = '<table><tr><td width="20px;"><img border="0" title="Remove field" alt="Remove field" src="themes/images/clear_field.gif" onclick="deleteMoreField(\'list_fields\',\''+ new_obj.id +'\');"></td><td width="180px;"><select name="vt_field_' + cnt + '" style="width:180px;"><?php echo $this->_tpl_vars['VTIGER_FIELD']; ?>
</select></td><td width="10px;">&nbsp;</td><td width="180px;"><select name="qb_field_' + cnt + '" style="width:180px;"><?php echo $this->_tpl_vars['QUICKBOOKS_FIELD']; ?>
</select></td></tr></table>';	    
	    obj.appendChild(new_obj);
	}
	
	function deleteMoreField(id, id_del) {
	    var obj = document.getElementById(id);
	    var obj_del = document.getElementById(id_del);
	    
	    obj.removeChild(obj_del);
	}
	
	function selectGateway(gateway) {
	    window.location = "index.php?module=QuickBooks&action=PaymentGatewayFieldMapping&parenttab=Tools&gateway=" + gateway;
	}
</script>