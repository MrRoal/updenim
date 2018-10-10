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
			<br>
			<table border="0" cellpadding="5" cellspacing="0" width="95%">
			<tr>
				<td rowspan="2" valign="top" width="50"><img src="{'ico-users.gif'|@vtiger_imageurl:$THEME}" alt="{$MOD.LBL_MODULE_MANAGER}" title="{$MOD.LBL_MODULE_MANAGER}" border="0" height="48" width="48"></td>
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
									{foreach item=account from=$LIST_ACCOUNTS}
									<tr>
										<td><input type="radio" name="raAccountProduct"  value="{$account.0}" {if $accountProduct eq $account.0} checked {/if}/></td>
										<td><input type="radio" name="raAccountService"  value="{$account.0}" {if $accountService eq $account.0} checked {/if}/></td>
										<td>{$account.0}</td>
										<td>{$account.1}</td>
										<td>{$account.2}</td>
										<td>&nbsp;</td>
									</tr>
									{/foreach}									
									<tr>
										<td colspan="6">Add new account to Quickbooks</td>
									</tr>
									<tr>
										<td><input type="radio" name="raAccountProduct"  value="New Account" {if $AccountName eq 'Merchandise Sales'} checked {/if}/></td>
										<td><input type="radio" name="raAccountService"  value="New Account" {if $AccountName eq 'Merchandise Sales'} checked {/if}/></td>
										<td><input type="text" name="newAccount" id="newAccount" value="" size="20" /></td>
										<td>
											<select name="accountType" id="accountType">
												<option value="Income" {if $accountType eq 'Income'}selected{/if}>Income</option>
												<option value="Expense" {if $accountType eq 'Expense'}selected{/if}>Expense</option>
												<option value="FixedAsset" {if $accountType eq 'FixedAsset'}selected{/if}>FixedAsset</option>
												<option value="Bank" {if $accountType eq 'Bank'}selected{/if}>Bank</option>
												<option value="CreditCard" {if $accountType eq 'CreditCard'}selected{/if}>CreditCard</option>
												<option value="Equity" {if $accountType eq 'Equity'}selected{/if}>Equity</option>
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
									<option value="ItemService" {if $productTypes eq 'ItemService'}selected{/if}>ItemService</option>
									<option value="ItemInventory" {if $productTypes eq 'ItemInventory'}selected{/if}>ItemInventory</option>
								</select>
							</td></tr>
							<tr><td>
								Services&nbsp;&nbsp;&nbsp;&nbsp;
								<select name="serviceTypes" id="serviceTypes">
									<option value="ItemService" {if $serviceTypes eq 'ItemService'}selected{/if}>ItemService</option>
									<option value="ItemInventory" {if $serviceTypes eq 'ItemInventory'}selected{/if}>ItemInventory</option>
								</select>
							</td></tr>
							-->
							<tr><td>
								Price Style&nbsp;
								<select name="priceStyle" id="priceStyle">
									<option value="USA" {if $priceStyle eq 'USA'}selected{/if}>USA style: 20,000.00</option>
									<option value="International" {if $priceStyle eq 'International'}selected{/if}>International style: 20.000,00</option>
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
				  	<td class="small" align="right" nowrap="nowrap"><a href="#top">{$MOD.LBL_SCROLL}</a></td>
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
<td valign="top"><img src="{'showPanelTopRight.gif'|@vtiger_imageurl:$THEME}"></td>			
</tr>
</table>