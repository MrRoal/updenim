<?php /* Smarty version 2.6.18, created on 2014-04-22 02:22:57
         compiled from modules/QuickBooks/TransactionInvoiceSetting.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'vtiger_imageurl', 'modules/QuickBooks/TransactionInvoiceSetting.tpl', 19, false),)), $this); ?>
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
			<br>
			<table border="0" cellpadding="5" cellspacing="0" width="95%">
			<tr>
				<td rowspan="2" valign="top" width="50"><img src="<?php echo vtiger_imageurl('ico-groups.gif', $this->_tpl_vars['THEME']); ?>
" alt="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" title="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" border="0" height="48" width="48"></td>
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Transaction Invoice</b></td>
			</tr>

			<tr>
				<td class="small" valign="top">Mapping VTiger Invoices to Quickbooks</td>
			</tr>
			</table>
					
			<br>
			
			<table border="0" cellpadding="10" cellspacing="0" width="95%">
			<tr>
				<td>
				<form action="index.php?module=QuickBooks&action=TransactionInvoiceSetting&parenttab=Tools" method="post" name="form" id="form">
				<input type="hidden" name="invoicemap_mode">
				<table border=0 cellspacing=0 cellpadding=5 width=100% class="tableHeading">
					<tr>
						<td class="big"><strong></strong></td>
						<?php if ($this->_tpl_vars['INVOICEMAP_MODE'] != 'edit'): ?>	
						<td class="small" align=right>
							<input class="crmButton small edit" title="<?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_KEY']; ?>
" onclick="this.form.action.value='CustomerMapAccount';this.form.invoicemap_mode.value='edit'" type="submit" name="Edit" value="<?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_LABEL']; ?>
">
						</td>
						<?php else: ?>
						<td class="small" align=right>
							<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_KEY']; ?>
" class="crmButton small save" onclick="this.form.action.value='Save';" type="submit" name="button" value="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
" >&nbsp;&nbsp;
    							<input title="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_KEY']; ?>
" class="crmButton small cancel" onclick="window.history.back()" type="button" name="button" value="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
">
						</td>
						<?php endif; ?>
					</tr>					
				</table>
				<?php if ($this->_tpl_vars['INVOICEMAP_MODE'] != 'edit'): ?>
					<table border=0 cellspacing=0 cellpadding=0 width=100%>
						<tr><td>&nbsp;</td></tr>
						<tr>
							<td align="center">
								<table border=0 cellspacing=0 cellpadding=0 width=100%>
									<tr>
										<td class="small" valign=top align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Map VTiger Invoices to Quickbooks Invoices <input type="radio" value="invoice" name="raObjectMap" <?php if ($this->_tpl_vars['OBJECT_MAP'] == 'invoice'): ?> checked <?php else: ?> disabled <?php endif; ?>></td>
										<td class="small" valign=top align="center">&nbsp;&nbsp;&nbsp;&nbsp;Map VTiger Invoices to Quickbooks Sales Orders <input type="radio" value="saleorder" name="raObjectMap" <?php if ($this->_tpl_vars['OBJECT_MAP'] == 'saleorder'): ?> checked <?php else: ?> disabled <?php endif; ?>></td>
										<td class="small" valign=top align="center">Map VTiger Invoices to Quickbooks Sales Receipts <input type="radio" value="salereceipt" name="raObjectMap" <?php if ($this->_tpl_vars['OBJECT_MAP'] == 'salereceipt'): ?> checked <?php else: ?> disabled <?php endif; ?>></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr><td>&nbsp;</td></tr>
					</table>
					<?php else: ?>
					<table border=0 cellspacing=0 cellpadding=0 width=100%>
						<tr><td>&nbsp;</td></tr>
						<tr>
							<td align="center">
								<table border=0 cellspacing=0 cellpadding=0 width=100%>
									<tr>
										<td class="small" valign=top align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Map VTiger Invoices to Quickbooks Invoices <input type="radio" value="invoice" name="raObjectMap" <?php if ($this->_tpl_vars['OBJECT_MAP'] == 'invoice'): ?> checked <?php endif; ?>></td>
										<td class="small" valign=top align="center">&nbsp;&nbsp;&nbsp;&nbsp;Map VTiger Invoices to Quickbooks Sales Orders <input type="radio" value="saleorder" name="raObjectMap" <?php if ($this->_tpl_vars['OBJECT_MAP'] == 'saleorder'): ?> checked <?php endif; ?>></td>
										<td class="small" valign=top align="center">Map VTiger Invoices to Quickbooks Sales Receipts <input type="radio" value="salereceipt" name="raObjectMap" <?php if ($this->_tpl_vars['OBJECT_MAP'] == 'salereceipt'): ?> checked <?php endif; ?>></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr><td>&nbsp;</td></tr>
					</table>
					<?php endif; ?>
					
					<?php if ($this->_tpl_vars['INVOICEMAP_MODE'] != 'edit'): ?>
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign="top">
						<table width="100%"  border="0" cellspacing="0" cellpadding="5">
                          <tr>
                            <td nowrap class="small cellLabel" colspan="2">
							<p align="center"><b>Map Fields</b></td>
                            <td nowrap class="small cellLabel" colspan="2">
							<p align="center"><b>Map Fields</b></td>
							<td nowrap class="small cellLabel" colspan="2">
							<p align="center"><b>Map Fields</b></td>
                          </tr>                          
                          <tr>
                            <td nowrap class="small cellLabel"><strong><font color="#0000FF" size="">Quickbooks Fields</font></strong></td>
                            <td class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
                            <td nowrap class="small cellLabel"><strong><font color="#0000FF" size="">Quickbooks Fields</font></strong></td>
                            <td class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
                            <td nowrap class="small cellLabel"><strong><font color="#0000FF" size="">Quickbooks Fields</font></strong></td>
                            <td class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
                          </tr>                          
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Customer Job</strong></td>
                            <td class="small cellText"><strong><?php echo $this->_tpl_vars['customerjob']; ?>
</strong></td>
                            <td nowrap class="small cellLabel"><strong>Customer Job</strong></td>
                            <td class="small cellText"><strong><?php echo $this->_tpl_vars['order_customerjob']; ?>
</strong></td>
                            <td nowrap class="small cellLabel"><strong>Customer Job</strong></td>                            
                            <td class="small cellText"><strong><?php echo $this->_tpl_vars['receipt_customerjob']; ?>
</strong></td>
                          </tr>                          
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Bill To</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['bill_to']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Address</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['order_bill_to']; ?>
</strong></td>
                            <td nowrap class="small cellLabel"><strong>Address</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['receipt_bill_to']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Ship To</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['ship_to']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['order_invoice_date']; ?>
</strong></td>
                            <td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['receipt_invoice_date']; ?>
</strong></td>
                          </tr>                 
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['invoice_date']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel"><strong>S.O. No</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['order_invoice']; ?>
</strong></td>
                            <td nowrap class="small cellLabel"><strong>Sale No</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['receipt_invoice']; ?>
</strong></td>
                          </tr>                       
						  <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Invoice</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['invoice']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Ship To</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['order_ship_to']; ?>
</strong></td>
                            <td nowrap class="small cellLabel"><strong>Ship To</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['receipt_ship_to']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>P.O No</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['po_no']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Customer Message</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['order_customer_message']; ?>
</strong></td>
                            <td nowrap class="small cellLabel"><strong>Customer Message</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['receipt_customer_message']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Due Date</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['due_date']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['order_total']; ?>
</strong></td>
                            <td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['receipt_total']; ?>
</strong></td>                     
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Rep</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['rep']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['order_memo']; ?>
</strong></td>
                            <td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['receipt_memo']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['total']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel"><b><!--Class--></b></td>
                            <td nowrap class="small cellText"><b><!--<?php echo $this->_tpl_vars['order_class']; ?>
--></b></td>
                            <td nowrap class="small cellLabel"><b><!--Class--></b></td>
                            <td nowrap class="small cellText"><b><!--<?php echo $this->_tpl_vars['receipt_class']; ?>
--></b></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Payment Applied</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['payment_applied']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Balance Due</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['balance_due']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['memo']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Customer Message</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['customer_message']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Class</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['inv_class']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Ship Via</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['inv_ship_via']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>FOB</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['inv_fob']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Other</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['inv_other']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Account</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['inv_account']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Term</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['inv_term']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Ship Date</strong></td>
                            <td nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['inv_shipdate']; ?>
</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                        </table>
					</td></tr></table>
			  <?php else: ?>

					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top ><table width="100%"  border="0" cellspacing="0" cellpadding="5">
                          <tr>
                            <td nowrap class="small cellLabel" colspan="2">
							<p align="center"><b>Map Fields</b></td>
                            <td nowrap class="small cellLabel" colspan="2">
							<p align="center"><b>Map Fields</b></td>
							<td nowrap class="small cellLabel" colspan="2">
							<p align="center"><b>Map Fields</b></td>
                          </tr>                          
                          <tr>
                            <td nowrap class="small cellLabel"><strong><font color="#0000FF">Quickbooks Fields</font></strong></td>
                            <td class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
                            <td nowrap class="small cellLabel"><strong><font color="#0000FF">Quickbooks Fields</font></strong></td>
                            <td class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
                            <td nowrap class="small cellLabel"><strong><font color="#0000FF">Quickbooks Fields</font></strong></td>
                            <td class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
                          </tr>                          
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Customer Job</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="customerjob" id="customerjob" style="width: 180px;"> 
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customerjob']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customerjob']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                   
                                    </select>
                                </strong>
                            </td>
                            <td nowrap class="small cellLabel"><strong>Customer Job</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="order_customerjob" id="order_customerjob" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_customerjob']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_customerjob']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                    
                                    </select>
                                </strong>
                            </td>
                            <td nowrap class="small cellLabel"><strong>Customer Job</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_customerjob" id="order_customerjob" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_customerjob']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_customerjob']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                     
                                    </select>
                                </strong>
                            </td>
                          </tr>                
                                    
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Bill To</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="bill_to" id="bill_to" style="width: 180px;"> 
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['bill_to']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['bill_to']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                   
                                    </select>
                                </strong>
                            </td>
                          	<td nowrap class="small cellLabel"><strong>Address</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="order_bill_to" id="order_bill_to" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_bill_to']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_bill_to']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                     
                                    </select>
                                </strong>
                            </td>
                            <td nowrap class="small cellLabel"><strong>Address</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_bill_to" id="order_bill_to" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_bill_to']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_bill_to']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                   
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Ship To</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="ship_to" id="ship_to" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['ship_to']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['ship_to']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                   
                                    </select>
                                </strong>
                            </td>
                          	<td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="order_invoice_date" id="order_invoice_date" style="width: 180px;"> 
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_invoice_date']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_invoice_date']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                    
                                    </select>
                                </strong>
                            </td>
                            <td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_invoice_date" id="order_invoice_date" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_invoice_date']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_invoice_date']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                     
                                    </select>
                                </strong>
                            </td>
                          </tr>                
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="invoice_date" id="invoice_date" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['invoice_date']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['invoice_date']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                    
                                    </select>
                                </strong>
                            </td>
                          	<td nowrap class="small cellLabel"><strong>S.O. No</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="order_invoice" id="order_invoice" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_invoice']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_invoice']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                    
                                    </select>
                                </strong>
                            </td>
                            <td nowrap class="small cellLabel"><strong>Sale No</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_invoice" id="order_invoice" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_invoice']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_invoice']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                   
                                    </select>
                                </strong>
                            </td>
                          </tr>                          
						  <tr>
                            <td nowrap class="small cellLabel"><strong>Invoice</strong></td>
                            <td class="small cellText">
                            	<select name="invoice" id="invoice" style="width: 180px;">
                                <option value="None">Select</option>
                            	<optgroup label="Main Fields">
                                <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                   <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['invoice']): ?>
                                   		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                   <?php else: ?>
                                   		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                   <?php endif; ?>
                                <?php endforeach; endif; unset($_from); ?>                                             
                                </optgroup>        
                                <optgroup label="Custom Fields"> 
                                <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                   <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['invoice']): ?>
                                   		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                   <?php else: ?>
                                   		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                   <?php endif; ?>
                                <?php endforeach; endif; unset($_from); ?> 
                                </optgroup>
                                </select>
                                <br/>- If the field is not mapped - the system will automatically map "Quickbooks.Invoice No" with "vTiger.QB No" field and "Invoice No" in QuickBooks will be based on the sequence number of your QuickBooks(recommended)
                                <br/>- If You map this field - It is highly recommened to map it with "vTiger.Invoice No", because this will be the Invoice Number in QuickBooks.
                            </td>
                          	<td nowrap class="small cellLabel"><strong>Ship To</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="order_ship_to" id="order_ship_to" style="width: 180px;"> 
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_ship_to']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_ship_to']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                   
                                    </select>
                                </strong>
                            </td>
                            <td nowrap class="small cellLabel"><strong>Ship To</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_ship_to" id="order_ship_to" style="width: 180px;"> 
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_ship_to']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_ship_to']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                   
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>P.O No</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="po_no" id="po_no" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['po_no']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['po_no']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                  
                                    </select>
                                </strong>
                            </td>
                          	<td nowrap class="small cellLabel"><strong>Customer Message</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="order_customer_message" id="order_customer_message" style="width: 180px;">    
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_customer_message']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_customer_message']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                 
                                    </select>
                                 </strong></td>
                            <td nowrap class="small cellLabel"><strong>Customer Message</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_customer_message" id="order_customer_message" style="width: 180px;"> 
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_customer_message']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_customer_message']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                   
                                    </select>
                                </strong></td>        
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Due Date</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="due_date" id="due_date" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['due_date']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['due_date']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                  
                                    </select>
                                </strong>
                            </td>
                          	<td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="order_total" id="order_total" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_total']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_total']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                    
                                    </select>
                                </strong></td>
                            <td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_total" id="order_total" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_total']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_total']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                    
                                    </select>
                               </strong></td> 
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Rep</strong></td>
                            <td class="small cellText">
                            	<select name="rep" id="rep" style="width: 180px;"> 
                                <option value="None">Select</option>
                            	<optgroup label="Main Fields">
                                <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                   <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['rep']): ?>
                                   		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                   <?php else: ?>
                                   		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                   <?php endif; ?>
                                <?php endforeach; endif; unset($_from); ?>                                             
                                </optgroup>        
                                <optgroup label="Custom Fields"> 
                                <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                   <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['rep']): ?>
                                   		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                   <?php else: ?>
                                   		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                   <?php endif; ?>
                                <?php endforeach; endif; unset($_from); ?> 
                                </optgroup>                                   
                                </select>
                                <br>Must be map with field that related with User
                            </td>
                          	<td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="order_memo" id="order_memo" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_memo']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_memo']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                    
                                    </select>
                                </strong></td>
                            <td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_memo" id="order_memo" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_memo']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_memo']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                     
                                    </select>
                                </strong></td>       
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="total" id="total" style="width: 180px;">  
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['total']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['total']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                  
                                    </select>
                                </strong></td>
                          	<td nowrap class="small cellLabel"><b><!--Class--></b></td>
                            <td class="small cellText">
                            	<!--<select name="order_class" id="order_class" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_class']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['order_class']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                     
								</select>-->
                            </td>
                            <td nowrap class="small cellLabel"><b><!--Class--></b></td>    	
                            <td class="small cellText">
                            	<!--<select name="receipt_class" id="receipt_class" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_class']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['receipt_class']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                     
								</select>-->
                            </td>       
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Payment Applied</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="payment_applied" id="payment_applied" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['payment_applied']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['payment_applied']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                    
                                    </select>
                                </strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td class="small cellText">
                                <strong>
                                	&nbsp;</strong></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>    	
                            <td class="small cellText">
                                <strong>
                                	&nbsp;</strong></td>    	
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Balance Due</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="balance_due" id="balance_due" style="width: 180px;">                                    
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['balance_due']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['balance_due']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                    
                                    </select>
                                </strong>
                                <br>Must be map with Balance field</td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td class="small cellText">
                                <strong>
                                	&nbsp;</strong></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>    	
                            <td class="small cellText">
                                <strong>
                                	&nbsp;</strong></td>    	
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="memo" id="memo" style="width: 180px;">   
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['memo']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['memo']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                 
                                    </select>
                                </strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td class="small cellText">
                                <strong>
                                	&nbsp;</strong></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>    	
                            <td class="small cellText">
                                <strong>
                                	&nbsp;</strong></td>    	
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Customer Message</strong></td>
                            <td class="small cellText">
                            	<select name="customer_message" id="customer_message" style="width: 180px;">  
                                <option value="None">Select</option>
                            	<optgroup label="Main Fields">
                                <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                   <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customer_message']): ?>
                                   		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                   <?php else: ?>
                                   		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                   <?php endif; ?>
                                <?php endforeach; endif; unset($_from); ?>                                             
                                </optgroup>        
                                <optgroup label="Custom Fields"> 
                                <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                   <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customer_message']): ?>
                                   		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                   <?php else: ?>
                                   		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                   <?php endif; ?>
                                <?php endforeach; endif; unset($_from); ?> 
                                </optgroup>                                   
                                </select>
                            </td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td class="small cellText"></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>    	
                            <td class="small cellText"></td>    	
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Class</strong></td>
                            <td class="small cellText">
                            	<select name="inv_class" id="inv_class" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['inv_class']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['inv_class']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                     
								</select>
								<br>Recommended map with a date field 
                            </td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td class="small cellText"></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>    	
                            <td class="small cellText"></td>    	
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Ship Via</strong></td>
                            <td class="small cellText">
                            	<select name="inv_ship_via" id="inv_ship_via" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['inv_ship_via']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['inv_ship_via']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                     
								</select>
                            </td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td class="small cellText"></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>    	
                            <td class="small cellText"></td>    	
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>FOB</strong></td>
                            <td class="small cellText">
                            	<select name="inv_fob" id="inv_fob" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['inv_fob']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['inv_fob']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                     
								</select>
                            </td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td class="small cellText"></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>    	
                            <td class="small cellText"></td>    	
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Other</strong></td>
                            <td class="small cellText">
                            	<select name="inv_other" id="inv_other" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['inv_other']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['inv_other']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                     
								</select>
                            </td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td class="small cellText"></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>    	
                            <td class="small cellText"></td>    	
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Account</strong></td>
                            <td class="small cellText">
                            	<select name="inv_account" id="inv_account" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['inv_account']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['inv_account']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                     
								</select>
								<br>Recommended map with a picklist field
                            </td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td class="small cellText"></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>    	
                            <td class="small cellText"></td>    	
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Term</strong></td>
                            <td class="small cellText">
                            	<select name="inv_term" id="inv_term" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['inv_term']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['inv_term']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                     
								</select>
								<br>Recommended map with a picklist field
                            </td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td class="small cellText"></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>    	
                            <td class="small cellText"></td>    	
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Ship Date</strong></td>
                            <td class="small cellText">
                            	<select name="inv_shipdate" id="inv_shipdate" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['inv_shipdate']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['inv_shipdate']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?> 
                                    </optgroup>                                     
								</select>
								<br>Recommended map with a date field
                            </td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td class="small cellText"></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>    	
                            <td class="small cellText"></td>    	
                          </tr>
                        </table>
               <?php endif; ?>
			   
				</form>
					
				<table border="0" cellpadding="5" cellspacing="0" width="100%">
				<tr><td>&nbsp;</td></tr>
				<tr>
				  	<td class="small" align="right" nowrap="nowrap"><a href="#top"><?php echo $this->_tpl_vars['MOD']['LBL_SCROLL']; ?>
</a></td>
				</tr>
				</table>
			</td>
		</tr>
		</table>
		<!-- End of Display -->
		
		</td>
        </tr>
        </table>
        </td>
        </tr>
        </table>
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