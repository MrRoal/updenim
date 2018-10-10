{*<!--
/*********************************************************************************
  ** The contents of this file are subject to the vtiger CRM Public License Version 1.0
   * ("License"); You may not use this file except in compliance with the License
   * The Original Code is:  vtiger CRM Open Source
   * The Initial Developer of the Original Code is vtiger.
   * Portions created by vtiger are Copyright (C) vtiger.
   * All Rights Reserved.
  *
 ********************************************************************************/
-->*}
<script language="JavaScript" type="text/javascript" src="modules/QuickBooks/QuickBooks.js"></script>

{include file='Buttons_List.tpl'}
<br>
<!-- Shadow table -->
<table align="center" border="0" cellpadding="0" cellspacing="0" width="98%">
<tr>
    <td valign="top"><img src="{'showPanelTopLeft.gif'|@vtiger_imageurl:$THEME}"></td>
    <td class="showPanelBg" style="padding: 10px;" valign="top" width="100%">
	    <br>
	    <div align=center>			
	    	<table width="90%" cellspacing="0" cellpadding="0" border="0">
			<tr><td colspan="2"><h2>Boru VT-QB</h2></td></tr>
	    	<tr>
	    		<td valign="bottom">
	    			<table><tr>
	    				<td><span style="font-weight: bold;">Last Sync Date</span>&nbsp;<input maxlength=10 type="text" class="txtBox" id="date_transaction" name="date_transaction" style=" width:80px;font-size: 14px;" onkeypress="CheckKeyValue(event);" value="{$LAST_SYNC_DATE}" readonly>
	    				</td>	    				
						<td><span style="font-weight: bold;">Last Sync Time</span>&nbsp;<input maxlength=10 type="text" class="txtBox" id="date_transaction" name="date_transaction" style=" width:65px;font-size: 14px;" onkeypress="CheckKeyValue(event);" value="{$LAST_SYNC_TIME}" readonly>
	    				</td>
	    				<td><span style="color:red;padding-left:10px;font-weight: bold;">Note: Reset the sync to an eariler time by updating the</span><span style="color:black;font-weight: bold;"> Last Sync Date<span style="color:red;font-weight: bold;"> Field in "VTQB Sync" Section below </span>
	    				</td>
					</tr></table>
				</td>
				<td align="right"><span style="color:red;font-weight: bold;font-size: 12px;">Version {$VERSION}</span></td>
			</tr>
			</table>
			<br>
			<table width="90%" cellspacing="0" cellpadding="20" border="0" class="settingsUI">
			<tr>
				<td>
				<table width="100%" cellspacing="0" cellpadding="0" border="0">
								
				<tr>
					<td class="settingsTabHeader">
						Settings To Configure Webconnector
					</td>
				</tr>
				<tr>
				<td class="settingsIconDisplay small">
					<table width="100%" cellspacing="0" cellpadding="10" border="0">
						<tr>
							<td valign="top">
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=WebConnectorConfig&parenttab=Tools">
										<img width="48" height="48" border="0" title="Groups" alt="Groups" src="themes/images/terms.gif">
										</a>
									</td>
									<td valign="top" class="big">
										<a href="index.php?module=QuickBooks&action=WebConnectorConfig&parenttab=Tools">
											Web Connector and QBXML version
										</a>
									</td>
								</tr>
								<tr>
									<td valign="top" class="small">
										Add application name, company file path, change QBXML version
									</td>
								</tr>
							</table>
							</td>							
						</tr>
					</table>
				</td>
				</tr>
				<tr>
					<td class="settingsTabHeader">
						Transaction Mapping - Settings: QB->VT/VT->QB
					</td>
				</tr>
				<tr>
				<td class="settingsIconDisplay small">
					<table width="100%" cellspacing="0" cellpadding="10" border="0">
						
						<tr>
							<td width="25%" valign="top">
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=AccountContactSetting&parenttab=Tools">
											<img width="48" height="48" border="0" title="Profiles" alt="Profiles" src="themes/images/ico-profile.gif">
										</a>
									</td>
									<td valign="top" class="big">
										<a href="index.php?module=QuickBooks&action=AccountContactSetting&parenttab=Tools">
											Accounts and Contacts
										</a>
									</td>
								</tr>
								<tr>
									<td valign="top" class="small">
										Field Mapping for Accounts and Contacts
									</td>
								</tr>
							</table>
							</td>
							<td width="25%" valign="top">														
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=TransactionInvoiceSetting&parenttab=Tools">
											<img width="48" height="48" border="0" title="Groups" alt="Groups" src="themes/images/ico-groups.gif">
										</a>
									</td>
									<td valign="top" class="big">
										<a href="index.php?module=QuickBooks&action=TransactionInvoiceSetting&parenttab=Tools">
											Invoices
										</a>
									</td>
								</tr>
								<tr>
									<td valign="top" class="small">
										Mapping VTiger Invoices to Quickbooks
									</td>
								</tr>
							</table>
							</td>
							<td width="25%" valign="top">														
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=TransactionSalesOrderSetting&parenttab=Tools">
											<img width="48" height="48" border="0" title="Groups" alt="Groups" src="themes/images/shareaccess.gif">
										</a>
									</td>
									<td valign="top" class="big">
										<a href="index.php?module=QuickBooks&action=TransactionSalesOrderSetting&parenttab=Tools">
											Sales Orders
										</a>
									</td>
								</tr>
								<tr>
									<td valign="top" class="small">
										Mapping VTiger Sales Orders to Quickbooks
									</td>
								</tr>
							</table>
							</td>
							<td width="25%" valign="top">
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=TransactionSalesReceiptSetting&parenttab=Tools">
											<img width="48" height="48" border="0" title="Groups" alt="Groups" src="themes/images/orgshar.gif">
										</a>
									</td>
									<td valign="top" class="big">
										<a href="index.php?module=QuickBooks&action=TransactionSalesReceiptSetting&parenttab=Tools">
											Quotes
										</a>
									</td>
								</tr>
								<tr>
									<td valign="top" class="small">
										Mapping VTiger Quotes to Quickbooks
									</td>
								</tr>
							</table>
							</td>						
						</tr>
						<tr>
							<td width="25%" valign="top">
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=ProductServiceFieldMapping&parenttab=Tools">
											<img width="48" height="48" border="0" title="Profiles" alt="Profiles" src="themes/images/picklist.gif">
										</a>
									</td>
									<td valign="top" class="big">
										<a href="index.php?module=QuickBooks&action=ProductServiceFieldMapping&parenttab=Tools">
											Products and Services
										</a>
									</td>
								</tr>
								<tr>
									<td valign="top" class="small">
										Field Mapping for Products and Services
									</td>
								</tr>
							</table>
							</td>
							<td width="25%" valign="top">																					
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=VendorsSetting&parenttab=Tools">
											<img width="48" height="48" border="0" title="Profiles" alt="Profiles" src="themes/images/ico-profile.gif">
										</a>
									</td>
									<td valign="top" class="big">
										<a href="index.php?module=QuickBooks&action=VendorsSetting&parenttab=Tools">Vendors</a>
									</td>
								</tr>
								<tr>
									<td valign="top" class="small">
										Field Mapping for Vendors
									</td>
								</tr>
							</table>
							</td>
							<td width="25%" valign="top">														
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=PurchaseOrderSetting&parenttab=Tools">
											<img width="48" height="48" border="0" title="Profiles" alt="Profiles" src="themes/images/ico-profile.gif">
										</a>
									</td>
									<td valign="top" class="big">
										<a href="index.php?module=QuickBooks&action=PurchaseOrderSetting&parenttab=Tools">Purchase Order</a>
									</td>
								</tr>
								<tr>
									<td valign="top" class="small">
										Field Mapping for Purchase Order
									</td>
								</tr>
							</table>
							</td>
							<td width="25%" valign="top">
							
							</td>						
						</tr>
						
					</table>
				</td>
				</tr>
				<tr>
					<td class="settingsTabHeader">
						Taxes, Discounts and Price Settings
					</td>
				</tr>
				<tr>
				<td class="settingsIconDisplay small">
					<table width="100%" cellspacing="0" cellpadding="10" border="0">
						<tr>
							<td width="25%" valign="top">														
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=DiscountTaxSetting&parenttab=Tools">
											<img width="48" height="48" border="0" title="Roles" alt="Roles" src="themes/images/ico-roles.gif">
										</a>
									</td>
									<td valign="top" class="big">
										<a href="index.php?module=QuickBooks&action=DiscountTaxSetting&parenttab=Tools">
											Discounts and Taxes 
										</a>
									</td>
								</tr>
								<tr>
									<td valign="top" class="small">
										User can set accounts for Discounts and Taxes 
									</td>
								</tr>
							</table>
							</td>
							<td width="25%" valign="top">
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
										<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=ProductServiceSetting&parenttab=Tools">
											<img width="48" height="48" border="0" title="Users" alt="Users" src="themes/images/ico-users.gif">
										</a>
									</td>
									<td valign="top" class="big">
										<a href="index.php?module=QuickBooks&action=ProductServiceSetting&parenttab=Tools">
											Price Style
										</a>
									</td>
								</tr>
								<tr>
									<td valign="top" class="small">
										User can set price style to American or European
									</td>
								</tr>
							</table>
							</td>				
						</tr>
					</table>
				</td>
				</tr>
				<tr>
					<td class="settingsTabHeader">
						Import Quickbooks Data Into vTiger
					</td>
				</tr>
				<tr>
					<td class="settingsIconDisplay small">
					<table width="100%">
						<tr>
							<td>
							<table width="100%" cellspacing="0" cellpadding="10" border="0">
								<tr>
									<td valign="top">
									<table width="100%" cellspacing="0" cellpadding="5" border="0">
										<tr>
											<td valign="top" rowspan="2" width="48px">
												<a href="index.php?module=QuickBooks&action=VTQBSync&parenttab=Tools">
												<img width="48" height="48" border="0" title="Groups" alt="Groups" src="themes/images/taxConfiguration.gif">
												</a>
											</td>
											<td valign="top" class="big">
												<a href="index.php?module=QuickBooks&action=VTQBSync&parenttab=Tools">
													VTQB Sync
												</a>
											</td>
										</tr>
										<tr>
											<td valign="top" class="small">
												First sync from QB to VT
											</td>
										</tr>
									</table>
									</td>							
								</tr>
							</table>	
							</td>
							<td>
							<table width="100%" cellspacing="0" cellpadding="10" border="0">
								<tr>
									<td valign="top">
									<table width="100%" cellspacing="0" cellpadding="5" border="0">
										<tr>
											<td valign="top" rowspan="2" width="48px">
												<a href="index.php?module=QuickBooks&action=UpdateAddress&parenttab=Tools">
												<img width="48" height="48" border="0" title="Groups" alt="Groups" src="themes/images/assign.gif">
												</a>
											</td>
											<td valign="top" class="big">
												<a href="index.php?module=QuickBooks&action=UpdateAddress&parenttab=Tools">Update Address</a>
											</td>
										</tr>
										<tr>
											<td valign="top" class="small">
												Update address of Customer, Invoice, Estimate in QB
											</td>
										</tr>
									</table>
									</td>							
								</tr>
							</table>	
							</td>
						</tr>
					</table>
					</td>
				</tr>
				
				<!-- Logs -->
				<tr>
					<td class="settingsTabHeader">
						Logs
					</td>
				</tr>
				<tr>
				<td class="settingsIconDisplay small">
					<table width="100%" cellspacing="0" cellpadding="10" border="0">
						<tr>
							<td valign="top">
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
										<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=TranferHistory&parenttab=Tools">
											<img width="48" height="48" border="0" title="Sharing Access" alt="Sharing Access" src="themes/images/audit.gif">
										</a>
									</td>
									<td valign="top" class="big">
										<a href="index.php?module=QuickBooks&action=TranferHistory&parenttab=Tools">
											Transfer History 
										</a>
									</td>
								</tr>
								<tr>
								<td valign="top" class="small">
										Display all records transferred
									</td>
								</tr>
							</table>
							</td>
							<td valign="top">												
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=ErrorLog&parenttab=Tools">
											<img width="48" height="48" border="0" title="User Login History" alt="User Login History" src="themes/images/set-IcoLoginHistory.gif">
										</a>
									</td>
									<td valign="top" class="big"><a href="index.php?module=QuickBooks&action=ErrorLog&parenttab=Tools">Error Log</a></td>
								</tr>
								<tr>
									<td valign="top" class="small">Display error messages</td>
								</tr>
							</table>							
							</td>		
							<td valign="top">												
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=QuickbooksQueue&parenttab=Tools">
											<img width="48" height="48" border="0" title="User Login History" alt="User Login History" src="themes/images/set-IcoLoginHistory.gif">
										</a>
									</td>
									<td valign="top" class="big"><a href="index.php?module=QuickBooks&action=QuickbooksQueue&parenttab=Tools">Quickbooks Queue</a></td>
								</tr>
								<tr>
									<td valign="top" class="small">All queues of system</td>
								</tr>
							</table>							
							</td>		
							<td valign="top">												
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=QuickbooksQueue&parenttab=Tools">
											<img width="48" height="48" border="0" title="User Login History" alt="User Login History" src="themes/images/set-IcoLoginHistory.gif">
										</a>
									</td>
									<td valign="top" class="big"><a href="index.php?module=QuickBooks&action=QuickbooksCrmMap&parenttab=Tools">Quickbooks CRM Map</a></td>
								</tr>
								<tr>
									<td valign="top" class="small">Map record on QuickBooks with vTiger</td>
								</tr>
							</table>							
							</td>
						</tr>
						<tr>
							<td valign="top">												
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=QuickbooksQueue&parenttab=Tools">
											<img width="48" height="48" border="0" title="User Login History" alt="User Login History" src="themes/images/set-IcoLoginHistory.gif">
										</a>
									</td>
									<td valign="top" class="big"><a href="index.php?module=QuickBooks&action=QuickbooksLog&parenttab=Tools">Quickbooks Log</a></td>
								</tr>
								<tr>
									<td valign="top" class="small">All logs of transaction</td>
								</tr>
							</table>							
							</td>
							<td valign="top">
							{if $EnabledWebconnectorMonitor eq 1}
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=WebconnectorMonitor&parenttab=Tools">
											<img width="48" height="48" border="0" title="Webconnector Monitor" alt="Webconnector Monitor" src="themes/images/orgshar.gif">
										</a>
									</td>
									<td valign="top" class="big"><a href="index.php?module=QuickBooks&action=WebconnectorMonitor&parenttab=Tools">Webconnector Monitor</a></td>
								</tr>
								<tr>
									<td valign="top" class="small">Display Webconnector Info</td>
								</tr>
							</table>
							{/if}
							</td>		
							<td valign="top">												
							&nbsp;							
							</td>
							</td>		
							<td valign="top">												
							&nbsp;							
							</td>	
						</tr>
					</table>
				</td>
				</tr>
				
				<!-- Payment Gateways -->
				<tr>
					<td class="settingsTabHeader">
						Payment Gateways
					</td>
				</tr>
				<tr>
				<td class="settingsIconDisplay small">
					<table width="100%" cellspacing="0" cellpadding="10" border="0">
						<tr>
							<td width="25%" valign="top">
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
										<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=PaymentGatewayConfigure&parenttab=Tools">
											<img width="48" height="48" border="0" title="Sharing Access" alt="Sharing Access" src="themes/images/currency.gif">
										</a>
									</td>
									<td valign="top" class="big">
										<a href="index.php?module=QuickBooks&action=PaymentGatewayConfigure&parenttab=Tools">
											Configure
										</a>
									</td>
								</tr>
								<tr>
								<td valign="top" class="small">
										Turn gateway off and on
									</td>
								</tr>
							</table>
							</td>
							<td width="25%" valign="top">												
							<table width="100%" cellspacing="0" cellpadding="5" border="0">
								<tr>
									<td valign="top" rowspan="2" width="48px">
										<a href="index.php?module=QuickBooks&action=PaymentGatewayFieldMapping&parenttab=Tools">
											<img width="48" height="48" border="0" title="User Login History" alt="User Login History" src="themes/images/picklist.gif">
										</a>
									</td>
									<td valign="top" class="big">
										<a href="index.php?module=QuickBooks&action=PaymentGatewayFieldMapping&parenttab=Tools">
											Field Mapping
										</a>
									</td>
								</tr>
								<tr>
									<td valign="top" class="small">
										Set field mapping
									</td>
								</tr>
							</table>							
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
	
</tr>
</table>
			
</td>
</tr>
</table>

</td>
<td valign="top"><img src="{'showPanelTopRight.gif'|@vtiger_imageurl:$THEME}"></td>			
</tr>
</table>
