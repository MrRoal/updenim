<?php /* Smarty version 2.6.18, created on 2014-04-22 02:23:13
         compiled from modules/QuickBooks/VTQBSync.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'vtiger_imageurl', 'modules/QuickBooks/VTQBSync.tpl', 19, false),)), $this); ?>
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
	    <div align=center>
			<table width="90%" cellspacing="0" cellpadding="20" border="0" class="settingsUI">
			<tbody><tr>
				<td style="font-size:13px;">
					<h2>VTQB SYNC</h2>
					<u><b>Directions</b> - In order to have a successful sync you must follow these directions<br></u>
					<p>
						<b>Step 1</b> - Configure synchronization for modules. Click <a href="index.php?module=Settings&action=ModuleManager&module_settings=true&formodule=QuickBooks&parenttab=Settings"><b><u>here</u></b></a> to configure synchronization data from Quickbooks to vTiger.
					</p>
					<!--<p>
						<b>Step 2</b> - Set a date for import. This date setting will import all transaction, invoices, quotes and sales orders, from date selected to today.<br>
						Example: To import all invoices from 7/1/11 to today you must set the date to 7/1/11
					</p>-->
					<p>
						<b>Step 2</b> - Import Discounts and Taxes<br>
						1. Click <a href="index.php?module=Settings&action=TaxConfig&parenttab=Settings" target="_blank"><b><u>here</u></b></a> for create new Tax Non (Note: Tax Name = 'Tax Non', Tax Value = 0)<br />
						2. Click this button <input type="button" value="Import Discounts and Taxes" name="button" class="crmbutton small create" accesskey="S" title="Save [Alt+S]" onclick="importQB();"><br>
						3. Run web connector manually to allow sync to occur.<br>
						4. Wait a few moments to let sync finish.<br>
						<b><u>Tip</u></b> - <i>Open <a href="index.php?module=QuickBooks&action=DiscountTaxSetting&parenttab=Tools">Discounts and Taxes setting page</a> in a new window refresh to make sure no more information will update</i>
					</p>
					
					<p>
						<b>Step 3</b> - Import Customer Type<br>
						1. Click this button <input type="button" value="Import Customer Type" name="button" class="crmbutton small create" accesskey="S" title="Save [Alt+S]" onclick="addTransaction('CustomerType');"><br>
						3. Run web connector manually to allow sync to occur.<br>
						4. Wait a few moments to let sync finish.<br>
						<b><u>Tip</u></b> - <i>Open <a href="index.php?module=QuickBooks&action=CustomerTypes&parenttab=Tools">Customer Type page</a> in a new window refresh to view Customer Types list</i>
					</p>
					

						<b>Step 4</b> - Import Customers<br>
						<table cellpadding="0" cellspacing="0"><tr><td>
						1. Click this button <input type="button" value="Import Customers" name="button" class="crmbutton small create" accesskey="S" title="Save [Alt+S]" onclick="addTransaction('customer');" style="width:130px;"></td>
						<td>&nbsp;&nbsp;<span style="color:red;font-weight:bold;">Import Date</span></td>
						<td>&nbsp;<input maxlength=10 type="text" class="txtBox" id="date_transaction" name="date_transaction" style=" width:80px;font-size: 14px;" onkeypress="CheckKeyValue(event);" value="<?php echo $this->_tpl_vars['DATE_TRANSACTION']; ?>
" readonly></td>
	    				<td><img src="<?php echo vtiger_imageurl('btnL3Calendar.gif', $this->_tpl_vars['THEME']); ?>
" id="image_date_transaction"></td></tr></table>
						<script language="javascript">
							Calendar.setup (
						    	{
								inputField : 'date_transaction', ifFormat : "%m/%d/%Y", showsTime : false, button : 'image_date_transaction', singleClick : true, step : 1
						    	}
							)
						</script>
						2. Run web connector manually.<br>
						<b><u>Note</u></b> - The time it takes to import all contacts will be determined by how many customers there are in Quickbooks.<br>
						3. Wait for sync to finish before moving on to next step.<br>
						<b><u>Tip</u></b> - <i>Open <a href="index.php?module=QuickBooks&action=TranferHistory&parenttab=Tools">Transfer History</a> and refresh browser frequently. Now the transfer can be monitored and when new pages are not added to the history anymore the sync is complete.</i>
						<br><br>
						<b>Step 5</b> - Import Items<br>
						<table cellpadding="0" cellspacing="0"><tr><td>
						1. Click this button <input type="button" value="Import Items " name="button" class="crmbutton small create" accesskey="S" title="Save [Alt+S]" onclick="addTransaction('item');" style="width:130px;"></td>
						<td style="display:none">&nbsp;&nbsp;<span style="color:red;font-weight:bold;">Import Date</span></td>
						<td style="display:none">&nbsp;<input maxlength=10 type="text" class="txtBox" id="date_transaction_item" name="date_transaction_item" style=" width:80px;font-size: 14px;" onkeypress="CheckKeyValue(event);" value="<?php echo $this->_tpl_vars['DATE_TRANSACTION_ITEM']; ?>
" readonly></td>
	    				<td style="display:none"><img src="<?php echo vtiger_imageurl('btnL3Calendar.gif', $this->_tpl_vars['THEME']); ?>
" id="image_date_transaction_item"></td></tr></table>
						<script language="javascript">
							Calendar.setup (
						    	{
								inputField : 'date_transaction_item', ifFormat : "%m/%d/%Y", showsTime : false, button : 'image_date_transaction_item', singleClick : true, step : 1
						    	}
							)
						</script>

						2. Run web connector manually.<br>
						3. Wait for sync to finish before moving on to next step.<br>
						<b><u>Tip</u></b> - <i>Open <a href="index.php?module=QuickBooks&action=TranferHistory&parenttab=Tools">Transfer History</a> and refresh browser frequently. Now the transfer can be monitored and when new pages are not added to the history anymore the sync is complete.</i>
					</p>

						<b>Step 6</b> - Import Transactions<br>
						<table cellpadding="0" cellspacing="0"><tr><td>
						1. Click this button <input type="button" value="Import Transactions" name="button" class="crmbutton small create" accesskey="S" title="Save [Alt+S]" onclick="addTransaction('other');" style="width:130px;"></td>
						<td>&nbsp;&nbsp;<span style="color:red;font-weight:bold;">Import Date</span></td>
						<td>&nbsp;<input maxlength=10 type="text" class="txtBox" id="date_transaction_other" name="date_transaction_other" style=" width:80px;font-size: 14px;" onkeypress="CheckKeyValue(event);" value="<?php echo $this->_tpl_vars['DATE_TRANSACTION_OTHER']; ?>
" readonly></td>
	    				<td><img src="<?php echo vtiger_imageurl('btnL3Calendar.gif', $this->_tpl_vars['THEME']); ?>
" id="image_date_transaction_other"></td></tr></table>
						<script language="javascript">
							Calendar.setup (
						    	{
								inputField : 'date_transaction_other', ifFormat : "%m/%d/%Y", showsTime : false, button : 'image_date_transaction_other', singleClick : true, step : 1
						    	}
							)
						</script>
						2. Run web connector manually.<br>
						3. Wait for sync to finish.<br>
						4. Congratulations you have synced your Quickbooks to vTiger
						<?php if ($this->_tpl_vars['ENABLED_PAYMENT'] == 1): ?>
						<br/><br/><b>Step 7</b> - Import Receipt Payments<br>
						<table cellpadding="0" cellspacing="0"><tr><td>
						1. Click this button <input type="button" value="Import Receive Payments" name="button" class="crmbutton small create" accesskey="S" title="Save [Alt+S]" onclick="addTransaction('payment');"></td>
						<td>&nbsp;&nbsp;<span style="color:red;font-weight:bold;">Import Date</span></td>
						<td>&nbsp;<input maxlength=10 type="text" class="txtBox" id="date_transaction_payment" name="date_transaction_payment" style=" width:80px;font-size: 14px;" onkeypress="CheckKeyValue(event);" value="<?php echo $this->_tpl_vars['DATE_TRANSACTION_PAYMENT']; ?>
" readonly></td>
	    				<td><img src="<?php echo vtiger_imageurl('btnL3Calendar.gif', $this->_tpl_vars['THEME']); ?>
" id="image_date_transaction_payment"></td></tr></table>
						<script language="javascript">
							Calendar.setup (
						    	{
								inputField : 'date_transaction_payment', ifFormat : "%m/%d/%Y", showsTime : false, button : 'image_date_transaction_payment', singleClick : true, step : 1
						    	}
							)
						</script>
						2. Run web connector manually.<br>
						3. Wait for sync to finish.<br>
						<?php endif; ?>
						
						<?php if ($this->_tpl_vars['ENABLED_VENDOR'] == 1): ?>
						<br/><br/><b>Step 8</b> - Import Vendors<br>
						<table cellpadding="0" cellspacing="0"><tr><td>
						1. Click this button <input type="button" value="Import Vendors" name="button" class="crmbutton small create" accesskey="S" title="Save [Alt+S]" onclick="addTransaction('vendor');"></td>
						<td>&nbsp;&nbsp;<span style="color:red;font-weight:bold;">Import Date</span></td>
						<td>&nbsp;<input maxlength=10 type="text" class="txtBox" id="date_transaction_vendor" name="date_transaction_vendor" style=" width:80px;font-size: 14px;" onkeypress="CheckKeyValue(event);" value="<?php echo $this->_tpl_vars['DATE_TRANSACTION_VENDOR']; ?>
" readonly></td>
	    				<td><img src="<?php echo vtiger_imageurl('btnL3Calendar.gif', $this->_tpl_vars['THEME']); ?>
" id="image_date_transaction_vendor"></td></tr></table>
						<script language="javascript">
							Calendar.setup (
						    	{
								inputField : 'date_transaction_vendor', ifFormat : "%m/%d/%Y", showsTime : false, button : 'image_date_transaction_vendor', singleClick : true, step : 1
						    	}
							)
						</script>
						2. Run web connector manually.<br>
						3. Wait for sync to finish.<br>
						<?php endif; ?>
						
						<?php if ($this->_tpl_vars['ENABLED_PO'] == 1): ?>
						<br/><br/><b>Step 9</b> - Import Purchase Order<br>
						<table cellpadding="0" cellspacing="0"><tr><td>
						1. Click this button <input type="button" value="Import Purchase Order" name="button" class="crmbutton small create" accesskey="S" title="Save [Alt+S]" onclick="addTransaction('po');"></td>
						<td>&nbsp;&nbsp;<span style="color:red;font-weight:bold;">Import Date</span></td>
						<td>&nbsp;<input maxlength=10 type="text" class="txtBox" id="date_transaction_po" name="date_transaction_po" style=" width:80px;font-size: 14px;" onkeypress="CheckKeyValue(event);" value="<?php echo $this->_tpl_vars['DATE_TRANSACTION_PO']; ?>
" readonly></td>
	    				<td><img src="<?php echo vtiger_imageurl('btnL3Calendar.gif', $this->_tpl_vars['THEME']); ?>
" id="image_date_transaction_po"></td></tr></table>
						<script language="javascript">
							Calendar.setup (
						    	{
								inputField : 'date_transaction_po', ifFormat : "%m/%d/%Y", showsTime : false, button : 'image_date_transaction_po', singleClick : true, step : 1
						    	}
							)
						</script>
						2. Run web connector manually.<br>
						3. Wait for sync to finish.<br>
						<?php endif; ?>
				</td>
			</tr>
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