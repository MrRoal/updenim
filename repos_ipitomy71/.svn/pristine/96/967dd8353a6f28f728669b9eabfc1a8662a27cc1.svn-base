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
<br />
<table align="center" border="0" cellpadding="0" cellspacing="0" width="98%">
	<tr>
		<td valign="top"><img src="{'showPanelTopLeft.gif'|@vtiger_imageurl:$THEME}"></td>
	    <td class="showPanelBg" style="padding: 10px;" valign="top" width="100%">
	    	<br />
	    	<div align=center>
			{include file='SetMenu.tpl'}

			<table class="settingsSelUITopLine" align="center" border="0" cellpadding="5" cellspacing="0" width="100%">
				<tr>
			    	
					<td rowspan="2" valign="top" width="50"><img src="{'vtlib_modmng.gif'|@vtiger_imageurl:$THEME}" alt="{$MOD.LBL_MODULE_MANAGER}" title="{$MOD.LBL_MODULE_MANAGER}" border="0" height="48" width="48"></td>
					<td class="heading2" valign="bottom"> <b><a href="index.php?module=Settings&action=ModuleManager&parenttab=Settings">{$MOD.VTLIB_LBL_MODULE_MANAGER}</a> &gt; Boru VT-QB </td>
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
                                	<option {if $SYNC_PRIORITY eq 'qb'}selected="selected"{/if} value="qb">QB->VT</option>
                                	<option {if $SYNC_PRIORITY eq 'vt'}selected="selected"{/if} value="vt">VT->QB</option>
                        		</select> 
                        		first?
								
								<br><br><br>
								{$MSG}
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
											{foreach from=$LIST_MODULES key=i item=val}
											<tr bgcolor="white" id="row_{$val.module}" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
												<td>{$val.label}</td>
												<!--
												{if $val.module neq 'SalesReceipt'}
													<td width="35%" align="center"><input type="checkbox" value="{$val.module}" id="{$val.module}" name="modules_checked_qb[]" {if $val.qb eq 1}checked{/if}></td>
												{else}
													<td width="35%" align="center">&nbsp;</td>
												{/if}
												-->
												{if $val.module neq 'Quotes'}
													<td width="20%" align="center"><input type="checkbox" value="{$val.module}" id="{$val.module}" name="modules_checked_vt[]" {if $val.vt eq 1}checked{/if} onchange="checkModule(this);"></td>
												{else}
													<td width="20%" align="center">&nbsp;</td>
												{/if}
											</tr>		
											{/foreach}									
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
											<tr bgcolor="white" id="row_{$val.module}" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
												<td align="right">Sync QB Customers to VT</td>
												<td width="50%">
												<select id="customer_to" name="customer_to" style="width:120px;">
				                                	<option {if $CUSTOMER_TO eq 'contact'}selected="selected"{/if} value="contact">Contact</option>
				                                	<option {if $CUSTOMER_TO eq 'account'}selected="selected"{/if} value="account">Account</option>
				                        		</select>
												</td>
											</tr>	
											<tr bgcolor="white" id="row_{$val.module}" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
												<td align="right">Sync QB Invoice to VT </td>
												<td width="50%">
												<select id="invoice_to" name="invoice_to" style="width:120px;">
				                                	<option {if $INVOICE_TO eq 'Invoice'}selected="selected"{/if} value="Invoice">Invoice</option>
				                                	<option {if $INVOICE_TO eq 'SalesOrder'}selected="selected"{/if} value="SalesOrder">SalesOrder</option>
				                                	<option {if $INVOICE_TO eq 'Quotes'}selected="selected"{/if} value="Quotes">Quotes</option>
				                        		</select>
												</td>
											</tr>
											<tr bgcolor="white" id="row_{$val.module}" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
												<td align="right">Sync QB Sales Orders to VT </td>
												<td width="50%">
												<select id="salesorder_to" name="salesorder_to" style="width:120px;">
													<option {if $SALESORDER_TO eq 'SalesOrder'}selected="selected"{/if} value="SalesOrder">SalesOrder</option>
				                                	<option {if $SALESORDER_TO eq 'Invoice'}selected="selected"{/if} value="Invoice">Invoice</option>
				                                	<option {if $SALESORDER_TO eq 'Quotes'}selected="selected"{/if} value="Quotes">Quotes</option>
				                        		</select>
												</td>
											</tr>
											<tr bgcolor="white" id="row_{$val.module}" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
												<td align="right">Sync QB Sales Receipts to VT</td>
												<td width="50%">
												<select id="salesreceipt_to" name="salesreceipt_to" style="width:120px;">
													<option {if $SALESRECEIPT_TO eq 'Quotes'}selected="selected"{/if} value="Quotes">Quotes</option>
				                                	<option {if $SALESRECEIPT_TO eq 'Invoice'}selected="selected"{/if} value="Invoice">Invoice</option>
				                                	<option {if $SALESRECEIPT_TO eq 'SalesOrder'}selected="selected"{/if} value="SalesOrder">SalesOrder</option>
				                        		</select>
												</td>
											</tr>
											<tr bgcolor="white" id="row_{$val.module}" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
												<td align="right">Sync QB Estimates to VT</td>
												<td width="50%">
												<select id="estimate_to" name="estimate_to" style="width:120px;">
													<option {if $ESTIMATE_TO eq 'Quotes'}selected="selected"{/if} value="Quotes">Quotes</option>
				                                	<!--<option {if $ESTIMATE_TO eq 'Invoice'}selected="selected"{/if} value="Invoice">Invoice</option>
				                                	<option {if $ESTIMATE_TO eq 'SalesOrder'}selected="selected"{/if} value="SalesOrder">SalesOrder</option>-->
				                        		</select>
												</td>
											</tr>
										</table>
										<!------------------------Config sync QB->VT END----------------------->
										<!------------------------Payment Method BEGIN----------------------->
										<br>
										<input type="hidden" value="{$PAYMENTMETHODNUMS}" id="paymentMethodNums" name="paymentMethodNums">
										<table width="100%" cellspacing="1" cellpadding="4" border="0" class="lvt small">
											<tr>										
												<td class="lvtCol">Payment Method</td>
											</tr>
											<tr bgcolor="white" id="row_{$val.module}" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
												<td>
												<div id="list_fields" style="padding-top:10px;">
												{if $PAYMENTMETHODS neq ''}
													{$PAYMENTMETHODS}
												{else}
													<div id="field_1">
														<table><tr><td width="20px;"><img border="0" title="Add more field" alt="Add more field" src="themes/softed/images/select.gif" onclick="addMoreField('list_fields');"></td><td width="180px;"><input type="text" value="" id="paymentMethod_1" name="paymentMethod_1" style="width:180px;"></td></tr></table>
													</div>
												{/if}
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
											<option {if $INV_TAXTYPE eq 'individual'}selected="selected"{/if} value="individual">Individual</option>
											<option {if $INV_TAXTYPE eq 'group'}selected="selected"{/if} value="group">Group</option>
										</select>
										</td>
									</tr>
									<tr bgcolor="white" onmouseover="this.className='lvtColDataHover'" onmouseout="this.className='lvtColData'" id="row_Accounts" class="lvtColData">
										<td>Sales Orders</td>
										<td width="50%" align="center">
										<select name="so_taxtype" id="so_taxtype" class="small">
											<option {if $SO_TAXTYPE eq 'individual'}selected="selected"{/if} value="individual">Individual</option>
											<option {if $SO_TAXTYPE eq 'group'}selected="selected"{/if} value="group">Group</option>
										</select>
										</td>
									</tr>
									<tr bgcolor="white" onmouseover="this.className='lvtColDataHover'" onmouseout="this.className='lvtColData'" id="row_Accounts" class="lvtColData">
										<td>Quotes</td>
										<td width="50%" align="center">
										<select name="qo_taxtype" id="qo_taxtype" class="small">
											<option {if $QO_TAXTYPE eq 'individual'}selected="selected"{/if} value="individual">Individual</option>
											<option {if $QO_TAXTYPE eq 'group'}selected="selected"{/if} value="group">Group</option>
										</select>
										</td>
									</tr>
									<tr bgcolor="white" onmouseover="this.className='lvtColDataHover'" onmouseout="this.className='lvtColData'" id="row_Accounts" class="lvtColData">
										<td>Purchase Order</td>
										<td width="50%" align="center">
										<select name="po_taxtype" id="po_taxtype" class="small">
											<option {if $PO_TAXTYPE eq 'individual'}selected="selected"{/if} value="individual">Individual</option>
											<option {if $PO_TAXTYPE eq 'group'}selected="selected"{/if} value="group">Group</option>
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
		<td valign="top"><img src="{'showPanelTopLeft.gif'|@vtiger_imageurl:$THEME}"></td>
	</tr>
</table>
<br>
<script>
{literal}
	function checkModule(obj) {
		if(obj.checked == false && obj.value == 'Customers') {
			document.getElementById('Invoice').checked = false;
			document.getElementById('SalesOrder').checked = false;			
			document.getElementById('SalesReceipt').checked = false;			
		}
	}
{/literal}
</script>
<script>	
	function addMoreField(id) {ldelim}
	    var obj = document.getElementById(id);
	    var obj_count = document.getElementById('paymentMethodNums');
	    var cnt = parseInt(obj_count.value) + 1;
	    obj_count.value = cnt;
	    
	    var new_obj = document.createElement('div');
	    new_obj.id = "field_"+cnt;
//	    new_obj.style.paddingTop = '1px';
		new_obj.innerHTML = '<table><tr><td width="20px;"><img border="0" title="Remove field" alt="Remove field" src="themes/images/clear_field.gif" onclick="deleteMoreField(\'list_fields\',\''+ new_obj.id +'\');"></td><td width="180px;"><input type="text" value="" id="paymentMethod_' + cnt + '" name="paymentMethod_' + cnt + '" style="width:180px;"></td></tr></table>';	    
	    obj.appendChild(new_obj);
	{rdelim}
	
	function deleteMoreField(id, id_del) {ldelim}
	    var obj = document.getElementById(id);
	    var obj_del = document.getElementById(id_del);	    
	    obj.removeChild(obj_del);
	{rdelim}
</script>