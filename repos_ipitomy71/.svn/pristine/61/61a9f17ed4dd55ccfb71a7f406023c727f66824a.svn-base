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
				<td rowspan="2" valign="top" width="50"><img src="{'ico-roles.gif'|@vtiger_imageurl:$THEME}" alt="{$MOD.LBL_MODULE_MANAGER}" title="{$MOD.LBL_MODULE_MANAGER}" border="0" height="48" width="48"></td>
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Discount and Taxes</b></td>
			</tr>

			<tr>
				<td class="small" valign="top">User can set account for Discounts and Taxes </td>
			</tr>
			</table>

			<br>
			<table border="0" cellpadding="10" cellspacing="0" width="95%">
			<tr>
				<td>

<!-- LEE 11292010 - Change display form -->
				<form id="addAccountMapping" name="addAccountMapping" action='index.php?module=QuickBooks&action=DiscountTaxSetting&parenttab=Tools' method="post">
					<table border=0 width="100%">
						<tr>
							<td colspan="3" align="center"><input name="cmdSave" id="cmdSave" class="crmbutton small save" type="submit" value="Save" /></td>
						</tr>
					<tr>
						<td valign="top">
						<p>
							<b>Import Discounts and Taxes</b><br>
							1. Click <a href="index.php?module=Settings&action=TaxConfig&parenttab=Settings" target="_blank"><b><u>here</u></b></a> for create new Tax Non (Note: Tax Name = 'Tax Non', Tax Value = 0)<br />
							2. Click this button <input type="button" value="Import Discounts and Taxes" name="button" class="crmbutton small create" accesskey="S" title="Save [Alt+S]" onclick="importQB();"><br>
							3. Run web connector manually to allow sync to occur.<br>
							4. Wait a few moments to let sync finish.<br>
							<b><u>Tip</u></b> - Open <a href="index.php?module=QuickBooks&action=DiscountTaxSetting&parenttab=Tools">Discounts and Taxes setting page</a> in a new window refresh to make sure no more information will update
						</p>
						</td>
						<td valign="top">
						<!-- vendor for tax -->
						<table border=0 width="100%">
							<tr>
								<td colspan="3"><b>Use the seleted Vendor for Taxes</b></td>
							</tr>
							<tr>
								<td colspan="2">
									<table width="100%">
										<tr>
											<td></td>
											<td>Vendor Name</td>
											<td>&nbsp;</td>
										</tr>
										{foreach item=account from=$LIST_VENDORS}
										<tr>
											<td><input type="radio" name="raTaxes" value="{$account}" {if $vendorTaxes eq $account} checked {/if}/></td>
											<td>{$account}</td>
											<td>&nbsp;</td>
										</tr>
										{/foreach}
										<tr>
											<td colspan="6">Add new vendor to Quickbooks</td>
										</tr>
										<tr>
											<td><input type="radio" name="raTaxes" value="New Vendor" {if $vendorTaxes eq ''} checked {/if}/></td>
											<td valign="center"><input type="text" name="newVendor" id="newVendor" value="" size="20" />&nbsp;<input name="cmdVendorMapping" id="cmdVendorMapping" class="crmbutton small create" type="submit" value="Add to Quickbooks" /></td>
											<td></td>
										</tr>
									</table>
								</td>
								<td width="20%">&nbsp;</td>
							</tr>
						</table>
						<!-- end vendor for tax -->
					</td><td valign="top">
						<!-- account for discount -->
						<table border=0 width="100%">
							<tr>
								<td colspan="3"><b>Use the seleted Account for Discount</b></td>
							</tr>
							<tr>
								<td colspan="2">
									<table width="100%">
										<tr>
											<td></td>
											<td>Account Name</td>
											<td>&nbsp;</td>
										</tr>
										{foreach item=account from=$LIST_ACCOUNTS}
										<tr>
											<td><input type="radio" name="raDiscount" value="{$account.0}" {if $accountDiscount eq $account.0} checked {/if}/></td>
											<td>{$account.0}</td>
											<td>&nbsp;</td>
										</tr>
										{/foreach}
										<tr>
											<td colspan="6">Add new account to Quickbooks</td>
										</tr>
										<tr>
											<td><input type="radio" name="raDiscount" value="New Account" {if $accountDiscount eq ''} checked {/if}/></td>
											<td valign="center"><input type="text" name="newAccount" id="newAccount" value="" size="20" />&nbsp;<input name="cmdAccountMapping" id="cmdAccountMapping" class="crmbutton small create" type="submit" value="Add to Quickbooks" /></td>
											<td></td>
										</tr>
									</table>
								</td>
								<td width="20%">&nbsp;</td>
							</tr>
						</table>
						<!-- end account for discount -->
					</td></tr>
					</table>
					<br>
					<input name="cmdSave" id="cmdSave" class="crmbutton small save" type="submit" value="Save" />
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