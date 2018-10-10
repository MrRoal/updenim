<?php /* Smarty version 2.6.18, created on 2014-05-02 15:35:21
         compiled from modules/QuickBooks/ProductServiceSetting.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'vtiger_imageurl', 'modules/QuickBooks/ProductServiceSetting.tpl', 19, false),)), $this); ?>
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
				<td rowspan="2" valign="top" width="50"><img src="<?php echo vtiger_imageurl('ico-users.gif', $this->_tpl_vars['THEME']); ?>
" alt="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" title="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" border="0" height="48" width="48"></td>
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Price Style</b></td>
			</tr>

			<tr>
				<td class="small" valign="top">User can set price style</td>
			</tr>
			</table>
					
			<br>
			<table border="0" cellpadding="10" cellspacing="0" width="95%">
			<tr>
				<td>
			
<!-- LEE 11292010 - Change display form -->
				<form id="addAccountMapping" name="addAccountMapping" action='index.php?module=QuickBooks&action=ProductServiceSetting&parenttab=Tools' method="post">
					<table border=0 width="100%">
						<!--
						<tr>
							<td colspan="3"><b>Use the seleted Account for Products and Services</b></td>
						</tr>
						<tr>
							<td colspan="2">
								<table width="100%">
									<tr>
										<td>Products</td>
										<td>Services</td>
										<td>Account Name</td>
										<td>Type</td>
										<td>Active</td>
										<td>&nbsp;</td>
									</tr>
									<?php $_from = $this->_tpl_vars['LIST_ACCOUNTS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['account']):
?>
									<tr>
										<td><input type="radio" name="raAccountProduct"  value="<?php echo $this->_tpl_vars['account']['0']; ?>
" <?php if ($this->_tpl_vars['accountProduct'] == $this->_tpl_vars['account']['0']): ?> checked <?php endif; ?>/></td>
										<td><input type="radio" name="raAccountService"  value="<?php echo $this->_tpl_vars['account']['0']; ?>
" <?php if ($this->_tpl_vars['accountService'] == $this->_tpl_vars['account']['0']): ?> checked <?php endif; ?>/></td>
										<td><?php echo $this->_tpl_vars['account']['0']; ?>
</td>
										<td><?php echo $this->_tpl_vars['account']['1']; ?>
</td>
										<td><?php echo $this->_tpl_vars['account']['2']; ?>
</td>
										<td>&nbsp;</td>
									</tr>
									<?php endforeach; endif; unset($_from); ?>									
									<tr>
										<td colspan="6">Add new account to Quickbooks</td>
									</tr>
									<tr>
										<td><input type="radio" name="raAccountProduct"  value="New Account" <?php if ($this->_tpl_vars['AccountName'] == 'Merchandise Sales'): ?> checked <?php endif; ?>/></td>
										<td><input type="radio" name="raAccountService"  value="New Account" <?php if ($this->_tpl_vars['AccountName'] == 'Merchandise Sales'): ?> checked <?php endif; ?>/></td>
										<td><input type="text" name="newAccount" id="newAccount" value="" size="20" /></td>
										<td>
											<select name="accountType" id="accountType">
												<option value="Income" <?php if ($this->_tpl_vars['accountType'] == 'Income'): ?>selected<?php endif; ?>>Income</option>
												<option value="Expense" <?php if ($this->_tpl_vars['accountType'] == 'Expense'): ?>selected<?php endif; ?>>Expense</option>
												<option value="FixedAsset" <?php if ($this->_tpl_vars['accountType'] == 'FixedAsset'): ?>selected<?php endif; ?>>FixedAsset</option>
												<option value="Bank" <?php if ($this->_tpl_vars['accountType'] == 'Bank'): ?>selected<?php endif; ?>>Bank</option>
												<option value="CreditCard" <?php if ($this->_tpl_vars['accountType'] == 'CreditCard'): ?>selected<?php endif; ?>>CreditCard</option>
												<option value="Equity" <?php if ($this->_tpl_vars['accountType'] == 'Equity'): ?>selected<?php endif; ?>>Equity</option>
											</select>
										</td>
										<td>
											<select id="accountStatus" name="accountStatus">
												<option value="1">Yes</option>
												<option value="0">No</option>
											</select>
										</td>
										<td><input name="cmdAccountMapping" id="cmdAccountMapping" class="crmbutton small create" type="submit" value="Add to Quickbooks" /></td>
									</tr>
								</table>								
							</td>
							<td width="20%">&nbsp;</td>
						</tr>
						<tr><td colspan="3">&nbsp;</td></tr>
						<tr>
							<td colspan="3"><b>Item types</b></td>
						</tr>
						-->
						<tr><td colspan="3">
							<table>
							<!--
							<tr><td>
								Products&nbsp;&nbsp;&nbsp;&nbsp;
								<select name="productTypes" id="productTypes">
									<option value="ItemService" <?php if ($this->_tpl_vars['productTypes'] == 'ItemService'): ?>selected<?php endif; ?>>ItemService</option>
									<option value="ItemInventory" <?php if ($this->_tpl_vars['productTypes'] == 'ItemInventory'): ?>selected<?php endif; ?>>ItemInventory</option>
								</select>
							</td></tr>
							<tr><td>
								Services&nbsp;&nbsp;&nbsp;&nbsp;
								<select name="serviceTypes" id="serviceTypes">
									<option value="ItemService" <?php if ($this->_tpl_vars['serviceTypes'] == 'ItemService'): ?>selected<?php endif; ?>>ItemService</option>
									<option value="ItemInventory" <?php if ($this->_tpl_vars['serviceTypes'] == 'ItemInventory'): ?>selected<?php endif; ?>>ItemInventory</option>
								</select>
							</td></tr>
							-->
							<tr><td>
								Price Style&nbsp;
								<select name="priceStyle" id="priceStyle">
									<option value="USA" <?php if ($this->_tpl_vars['priceStyle'] == 'USA'): ?>selected<?php endif; ?>>USA style: 20,000.00</option>
									<option value="International" <?php if ($this->_tpl_vars['priceStyle'] == 'International'): ?>selected<?php endif; ?>>International style: 20.000,00</option>
								</select>
							</td></tr>
							</table>
						</td></tr>
						<tr><td colspan="3">&nbsp;</td></tr>
						<tr><td colspan="3"><input name="cmdSave" id="cmdSave" class="crmbutton small save" type="submit" value="Save" /></td></tr>
					</table>
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