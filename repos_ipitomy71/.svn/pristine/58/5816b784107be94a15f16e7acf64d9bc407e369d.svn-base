<?php /* Smarty version 2.6.18, created on 2014-04-22 02:19:02
         compiled from modules/QuickBooks/Settings.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'vtiger_imageurl', 'modules/QuickBooks/Settings.tpl', 15, false),)), $this); ?>
<br />
<table align="center" border="0" cellpadding="0" cellspacing="0" width="98%">
	<tr>
		<td valign="top"><img src="<?php echo vtiger_imageurl('showPanelTopLeft.gif', $this->_tpl_vars['THEME']); ?>
"></td>
	    <td class="showPanelBg" style="padding: 10px;" valign="top" width="100%">
	    	<br />
	    	<div align=center>
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'SetMenu.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

			<table class="settingsSelUITopLine" align="center" border="0" cellpadding="5" cellspacing="0" width="100%">
				<tr>
			    	
					<td rowspan="2" valign="top" width="50"><img src="<?php echo vtiger_imageurl('vtlib_modmng.gif', $this->_tpl_vars['THEME']); ?>
" alt="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" title="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" border="0" height="48" width="48"></td>
					<td class="heading2" valign="bottom"> <b><a href="index.php?module=Settings&action=ModuleManager&parenttab=Settings"><?php echo $this->_tpl_vars['MOD']['VTLIB_LBL_MODULE_MANAGER']; ?>
</a> &gt; Boru VT-QB </td>
					<td align="right"><a href="index.php?module=QuickBooks&action=VTQBUninstall&parenttab=Tools"><span style="color:red;"><b>Uninstall Module</b></span></a></td>
				</tr>
				<tr>
					<td class="small" valign="top">Manage Data Sync Between Quickbooks and VTiger</td>
				</tr>
				</table>
				
				<br>
				<table border="0" cellspacing="0" cellpadding="20" width="100%" class="settingsUI">
					<tr>
						<td>
							<form action="index.php?module=Settings&action=ModuleManager&module_settings=true&formodule=QuickBooks&parenttab=Settings" method="post" name="formQuickBooksModules" id="formQuickBooksModules">								
                        		Will sync data from 
                        		<select id="sync_priority" name="sync_priority">
                                	<option <?php if ($this->_tpl_vars['SYNC_PRIORITY'] == 'qb'): ?>selected="selected"<?php endif; ?> value="qb">QB->VT</option>
                                	<option <?php if ($this->_tpl_vars['SYNC_PRIORITY'] == 'vt'): ?>selected="selected"<?php endif; ?> value="vt">VT->QB</option>
                        		</select> 
                        		first?
								
								<br><br><br>
								<?php echo $this->_tpl_vars['MSG']; ?>

								<b>Specify Which Quickbooks Items Are Auto Imported/Updated from Quickbooks to VTiger</b>
								<br><br>
								<table width="100%" cellspacing="0" cellpadding="0" border="0">
									<tr>
										<td width="50%" valign="top">
										<!------------------------VTQB Feature BEGIN----------------------->
										<table width="100%" cellspacing="1" cellpadding="4" border="0" class="lvt small">
											<!-- Table Headers -->
											<tr>										
												<td class="lvtCol">Module</td>
												<!--td class="lvtCol" align="center">Always send to QB</td-->
												<td class="lvtCol" align="center">Always Send to VT from QB</td>
											</tr>
											<?php $_from = $this->_tpl_vars['LIST_MODULES']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['val']):
?>
											<tr bgcolor="white" id="row_<?php echo $this->_tpl_vars['val']['module']; ?>
" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
												<td><?php echo $this->_tpl_vars['val']['label']; ?>
</td>
												<!--
												<?php if ($this->_tpl_vars['val']['module'] != 'SalesReceipt'): ?>
													<td width="35%" align="center"><input type="checkbox" value="<?php echo $this->_tpl_vars['val']['module']; ?>
" id="<?php echo $this->_tpl_vars['val']['module']; ?>
" name="modules_checked_qb[]" <?php if ($this->_tpl_vars['val']['qb'] == 1): ?>checked<?php endif; ?>></td>
												<?php else: ?>
													<td width="35%" align="center">&nbsp;</td>
												<?php endif; ?>
												-->
												<?php if ($this->_tpl_vars['val']['module'] != 'Quotes'): ?>
													<td width="20%" align="center"><input type="checkbox" value="<?php echo $this->_tpl_vars['val']['module']; ?>
" id="<?php echo $this->_tpl_vars['val']['module']; ?>
" name="modules_checked_vt[]" <?php if ($this->_tpl_vars['val']['vt'] == 1): ?>checked<?php endif; ?> onchange="checkModule(this);"></td>
												<?php else: ?>
													<td width="20%" align="center">&nbsp;</td>
												<?php endif; ?>
											</tr>		
											<?php endforeach; endif; unset($_from); ?>									
										</table>
										<!------------------------VTQB Feature END----------------------->
										</td>
										<td width="50"></td>
										<td valign="top">
										<!------------------------Config sync QB->VT BEGIN----------------------->
										<table width="100%" cellspacing="1" cellpadding="4" border="0" class="lvt small">
											<tr>										
												<td class="lvtCol">QB Module</td>
												<td class="lvtCol">VT Module</td>
											</tr>
											<tr bgcolor="white" id="row_<?php echo $this->_tpl_vars['val']['module']; ?>
" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
												<td align="right">Sync QB Customers to VT</td>
												<td width="50%">
												<select id="customer_to" name="customer_to" style="width:120px;">
				                                	<option <?php if ($this->_tpl_vars['CUSTOMER_TO'] == 'contact'): ?>selected="selected"<?php endif; ?> value="contact">Contact</option>
				                                	<option <?php if ($this->_tpl_vars['CUSTOMER_TO'] == 'account'): ?>selected="selected"<?php endif; ?> value="account">Account</option>
				                        		</select>
												</td>
											</tr>	
											<tr bgcolor="white" id="row_<?php echo $this->_tpl_vars['val']['module']; ?>
" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
												<td align="right">Sync QB Invoice to VT </td>
												<td width="50%">
												<select id="invoice_to" name="invoice_to" style="width:120px;">
				                                	<option <?php if ($this->_tpl_vars['INVOICE_TO'] == 'Invoice'): ?>selected="selected"<?php endif; ?> value="Invoice">Invoice</option>
				                                	<option <?php if ($this->_tpl_vars['INVOICE_TO'] == 'SalesOrder'): ?>selected="selected"<?php endif; ?> value="SalesOrder">SalesOrder</option>
				                                	<option <?php if ($this->_tpl_vars['INVOICE_TO'] == 'Quotes'): ?>selected="selected"<?php endif; ?> value="Quotes">Quotes</option>
				                        		</select>
												</td>
											</tr>
											<tr bgcolor="white" id="row_<?php echo $this->_tpl_vars['val']['module']; ?>
" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
												<td align="right">Sync QB Sales Orders to VT </td>
												<td width="50%">
												<select id="salesorder_to" name="salesorder_to" style="width:120px;">
													<option <?php if ($this->_tpl_vars['SALESORDER_TO'] == 'SalesOrder'): ?>selected="selected"<?php endif; ?> value="SalesOrder">SalesOrder</option>
				                                	<option <?php if ($this->_tpl_vars['SALESORDER_TO'] == 'Invoice'): ?>selected="selected"<?php endif; ?> value="Invoice">Invoice</option>
				                                	<option <?php if ($this->_tpl_vars['SALESORDER_TO'] == 'Quotes'): ?>selected="selected"<?php endif; ?> value="Quotes">Quotes</option>
				                        		</select>
												</td>
											</tr>
											<tr bgcolor="white" id="row_<?php echo $this->_tpl_vars['val']['module']; ?>
" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
												<td align="right">Sync QB Sales Receipts to VT</td>
												<td width="50%">
												<select id="salesreceipt_to" name="salesreceipt_to" style="width:120px;">
													<option <?php if ($this->_tpl_vars['SALESRECEIPT_TO'] == 'Quotes'): ?>selected="selected"<?php endif; ?> value="Quotes">Quotes</option>
				                                	<option <?php if ($this->_tpl_vars['SALESRECEIPT_TO'] == 'Invoice'): ?>selected="selected"<?php endif; ?> value="Invoice">Invoice</option>
				                                	<option <?php if ($this->_tpl_vars['SALESRECEIPT_TO'] == 'SalesOrder'): ?>selected="selected"<?php endif; ?> value="SalesOrder">SalesOrder</option>
				                        		</select>
												</td>
											</tr>
											<tr bgcolor="white" id="row_<?php echo $this->_tpl_vars['val']['module']; ?>
" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
												<td align="right">Sync QB Estimates to VT</td>
												<td width="50%">
												<select id="estimate_to" name="estimate_to" style="width:120px;">
													<option <?php if ($this->_tpl_vars['ESTIMATE_TO'] == 'Quotes'): ?>selected="selected"<?php endif; ?> value="Quotes">Quotes</option>
				                                	<!--<option <?php if ($this->_tpl_vars['ESTIMATE_TO'] == 'Invoice'): ?>selected="selected"<?php endif; ?> value="Invoice">Invoice</option>
				                                	<option <?php if ($this->_tpl_vars['ESTIMATE_TO'] == 'SalesOrder'): ?>selected="selected"<?php endif; ?> value="SalesOrder">SalesOrder</option>-->
				                        		</select>
												</td>
											</tr>
										</table>
										<!------------------------Config sync QB->VT END----------------------->
										<!------------------------Payment Method BEGIN----------------------->
										<br>
										<input type="hidden" value="<?php echo $this->_tpl_vars['PAYMENTMETHODNUMS']; ?>
" id="paymentMethodNums" name="paymentMethodNums">
										<table width="100%" cellspacing="1" cellpadding="4" border="0" class="lvt small">
											<tr>										
												<td class="lvtCol">Payment Method</td>
											</tr>
											<tr bgcolor="white" id="row_<?php echo $this->_tpl_vars['val']['module']; ?>
" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
												<td>
												<div id="list_fields" style="padding-top:10px;">
												<?php if ($this->_tpl_vars['PAYMENTMETHODS'] != ''): ?>
													<?php echo $this->_tpl_vars['PAYMENTMETHODS']; ?>

												<?php else: ?>
													<div id="field_1">
														<table><tr><td width="20px;"><img border="0" title="Add more field" alt="Add more field" src="themes/softed/images/select.gif" onclick="addMoreField('list_fields');"></td><td width="180px;"><input type="text" value="" id="paymentMethod_1" name="paymentMethod_1" style="width:180px;"></td></tr></table>
													</div>
												<?php endif; ?>
												</div>
												</td>
											</tr>
										</table>
										<!------------------------Payment Method END----------------------->
										<!------------------------Payment Method BEGIN----------------------->
										<br>
										<table width="100%" cellspacing="1" cellpadding="4" border="0" class="lvt small">
											<tr>										
												<td class="lvtCol">Sync Invoice As SalesReceipt</td>
											</tr>
											<tr bgcolor="white">
												<td>
													<input type="checkbox" value="1"> Sync VT.Invoice as QB.SalesReceipt if Invoice's Subject start with
													<input type="text" style="width:180px;" name="aa" id="aa" value="Ubercart Order">
												</td>
											</tr>
										</table>
										<!------------------------Payment Method END----------------------->
										</td>
									</tr>
								</table>
								
								<br><b>Tax Mode Setting</b>
								<table width="50%" cellspacing="1" cellpadding="4" border="0" class="lvt small">
									<tr>										
										<td class="lvtCol"><span style="font-size:13px;">Module</span></td>
										<td align="center" class="lvtCol">Tax Mode</td>
									</tr>								
									<tr bgcolor="white" onmouseover="this.className='lvtColDataHover'" onmouseout="this.className='lvtColData'" id="row_Accounts" class="lvtColData">
										<td>Invoices</td>
										<td width="50%" align="center">
										<select name="inv_taxtype" id="inv_taxtype" class="small">
											<option <?php if ($this->_tpl_vars['INV_TAXTYPE'] == 'individual'): ?>selected="selected"<?php endif; ?> value="individual">Individual</option>
											<option <?php if ($this->_tpl_vars['INV_TAXTYPE'] == 'group'): ?>selected="selected"<?php endif; ?> value="group">Group</option>
										</select>
										</td>
									</tr>
									<tr bgcolor="white" onmouseover="this.className='lvtColDataHover'" onmouseout="this.className='lvtColData'" id="row_Accounts" class="lvtColData">
										<td>Sales Orders</td>
										<td width="50%" align="center">
										<select name="so_taxtype" id="so_taxtype" class="small">
											<option <?php if ($this->_tpl_vars['SO_TAXTYPE'] == 'individual'): ?>selected="selected"<?php endif; ?> value="individual">Individual</option>
											<option <?php if ($this->_tpl_vars['SO_TAXTYPE'] == 'group'): ?>selected="selected"<?php endif; ?> value="group">Group</option>
										</select>
										</td>
									</tr>
									<tr bgcolor="white" onmouseover="this.className='lvtColDataHover'" onmouseout="this.className='lvtColData'" id="row_Accounts" class="lvtColData">
										<td>Quotes</td>
										<td width="50%" align="center">
										<select name="qo_taxtype" id="qo_taxtype" class="small">
											<option <?php if ($this->_tpl_vars['QO_TAXTYPE'] == 'individual'): ?>selected="selected"<?php endif; ?> value="individual">Individual</option>
											<option <?php if ($this->_tpl_vars['QO_TAXTYPE'] == 'group'): ?>selected="selected"<?php endif; ?> value="group">Group</option>
										</select>
										</td>
									</tr>
									<tr bgcolor="white" onmouseover="this.className='lvtColDataHover'" onmouseout="this.className='lvtColData'" id="row_Accounts" class="lvtColData">
										<td>Purchase Order</td>
										<td width="50%" align="center">
										<select name="po_taxtype" id="po_taxtype" class="small">
											<option <?php if ($this->_tpl_vars['PO_TAXTYPE'] == 'individual'): ?>selected="selected"<?php endif; ?> value="individual">Individual</option>
											<option <?php if ($this->_tpl_vars['PO_TAXTYPE'] == 'group'): ?>selected="selected"<?php endif; ?> value="group">Group</option>
										</select>
										</td>
									</tr>
								</table>
								<br>
								<input type="submit" style="width:70px" value="  Save  " name="saveSetting" class="crmbutton small save" accesskey="S" title="Save [Alt+S]">
							</form>
						</td>
					</tr>
				</table>
				
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

			</div>
		</td>
		<td valign="top"><img src="<?php echo vtiger_imageurl('showPanelTopLeft.gif', $this->_tpl_vars['THEME']); ?>
"></td>
	</tr>
</table>
<br>
<script>
<?php echo '
	function checkModule(obj) {
		if(obj.checked == false && obj.value == \'Customers\') {
			document.getElementById(\'Invoice\').checked = false;
			document.getElementById(\'SalesOrder\').checked = false;			
			document.getElementById(\'SalesReceipt\').checked = false;			
		}
	}
'; ?>

</script>
<script>	
	function addMoreField(id) {
	    var obj = document.getElementById(id);
	    var obj_count = document.getElementById('paymentMethodNums');
	    var cnt = parseInt(obj_count.value) + 1;
	    obj_count.value = cnt;
	    
	    var new_obj = document.createElement('div');
	    new_obj.id = "field_"+cnt;
//	    new_obj.style.paddingTop = '1px';
		new_obj.innerHTML = '<table><tr><td width="20px;"><img border="0" title="Remove field" alt="Remove field" src="themes/images/clear_field.gif" onclick="deleteMoreField(\'list_fields\',\''+ new_obj.id +'\');"></td><td width="180px;"><input type="text" value="" id="paymentMethod_' + cnt + '" name="paymentMethod_' + cnt + '" style="width:180px;"></td></tr></table>';	    
	    obj.appendChild(new_obj);
	}
	
	function deleteMoreField(id, id_del) {
	    var obj = document.getElementById(id);
	    var obj_del = document.getElementById(id_del);	    
	    obj.removeChild(obj_del);
	}
</script>