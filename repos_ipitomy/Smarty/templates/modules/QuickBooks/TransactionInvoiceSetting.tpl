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
				<td rowspan="2" valign="top" width="50"><img src="{'ico-groups.gif'|@vtiger_imageurl:$THEME}" alt="{$MOD.LBL_MODULE_MANAGER}" title="{$MOD.LBL_MODULE_MANAGER}" border="0" height="48" width="48"></td>
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
						{if $INVOICEMAP_MODE neq 'edit'}	
						<td class="small" align=right>
							<input class="crmButton small edit" title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" onclick="this.form.action.value='CustomerMapAccount';this.form.invoicemap_mode.value='edit'" type="submit" name="Edit" value="{$APP.LBL_EDIT_BUTTON_LABEL}">
						</td>
						{else}
						<td class="small" align=right>
							<input title="{$APP.LBL_SAVE_BUTTON_LABEL}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="crmButton small save" onclick="this.form.action.value='Save';" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" >&nbsp;&nbsp;
    							<input title="{$APP.LBL_CANCEL_BUTTON_LABEL}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="crmButton small cancel" onclick="window.history.back()" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}">
						</td>
						{/if}
					</tr>					
				</table>
				{if $INVOICEMAP_MODE neq 'edit'}
					<table border=0 cellspacing=0 cellpadding=0 width=100%>
						<tr><td>&nbsp;</td></tr>
						<tr>
							<td align="center">
								<table border=0 cellspacing=0 cellpadding=0 width=100%>
									<tr>
										<td class="small" valign=top align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Map VTiger Invoices to Quickbooks Invoices <input type="radio" value="invoice" name="raObjectMap" {if $OBJECT_MAP eq 'invoice'} checked {else} disabled {/if}></td>
										<td class="small" valign=top align="center">&nbsp;&nbsp;&nbsp;&nbsp;Map VTiger Invoices to Quickbooks Sales Orders <input type="radio" value="saleorder" name="raObjectMap" {if $OBJECT_MAP eq 'saleorder'} checked {else} disabled {/if}></td>
										<td class="small" valign=top align="center">Map VTiger Invoices to Quickbooks Sales Receipts <input type="radio" value="salereceipt" name="raObjectMap" {if $OBJECT_MAP eq 'salereceipt'} checked {else} disabled {/if}></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr><td>&nbsp;</td></tr>
					</table>
					{else}
					<table border=0 cellspacing=0 cellpadding=0 width=100%>
						<tr><td>&nbsp;</td></tr>
						<tr>
							<td align="center">
								<table border=0 cellspacing=0 cellpadding=0 width=100%>
									<tr>
										<td class="small" valign=top align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Map VTiger Invoices to Quickbooks Invoices <input type="radio" value="invoice" name="raObjectMap" {if $OBJECT_MAP eq 'invoice'} checked {/if}></td>
										<td class="small" valign=top align="center">&nbsp;&nbsp;&nbsp;&nbsp;Map VTiger Invoices to Quickbooks Sales Orders <input type="radio" value="saleorder" name="raObjectMap" {if $OBJECT_MAP eq 'saleorder'} checked {/if}></td>
										<td class="small" valign=top align="center">Map VTiger Invoices to Quickbooks Sales Receipts <input type="radio" value="salereceipt" name="raObjectMap" {if $OBJECT_MAP eq 'salereceipt'} checked {/if}></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr><td>&nbsp;</td></tr>
					</table>
					{/if}
					
					{if $INVOICEMAP_MODE neq 'edit'}
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
                            <td class="small cellText"><strong>{$customerjob}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Customer Job</strong></td>
                            <td class="small cellText"><strong>{$order_customerjob}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Customer Job</strong></td>                            
                            <td class="small cellText"><strong>{$receipt_customerjob}</strong></td>
                          </tr>                          
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Bill To</strong></td>
                            <td nowrap class="small cellText"><strong>{$bill_to}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Address</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_bill_to}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Address</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_bill_to}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Ship To</strong></td>
                            <td nowrap class="small cellText"><strong>{$ship_to}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_invoice_date}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_invoice_date}</strong></td>
                          </tr>                 
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td nowrap class="small cellText"><strong>{$invoice_date}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>S.O. No</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_invoice}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Sale No</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_invoice}</strong></td>
                          </tr>                       
						  <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Invoice</strong></td>
                            <td nowrap class="small cellText"><strong>{$invoice}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Ship To</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_ship_to}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Ship To</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_ship_to}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>P.O No</strong></td>
                            <td nowrap class="small cellText"><strong>{$po_no}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Customer Message</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_customer_message}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Customer Message</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_customer_message}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Due Date</strong></td>
                            <td nowrap class="small cellText"><strong>{$due_date}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_total}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_total}</strong></td>                     
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Rep</strong></td>
                            <td nowrap class="small cellText"><strong>{$rep}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_memo}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_memo}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td nowrap class="small cellText"><strong>{$total}</strong></td>
                          	<td nowrap class="small cellLabel"><b><!--Class--></b></td>
                            <td nowrap class="small cellText"><b><!--{$order_class}--></b></td>
                            <td nowrap class="small cellLabel"><b><!--Class--></b></td>
                            <td nowrap class="small cellText"><b><!--{$receipt_class}--></b></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Payment Applied</strong></td>
                            <td nowrap class="small cellText"><strong>{$payment_applied}</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Balance Due</strong></td>
                            <td nowrap class="small cellText"><strong>{$balance_due}</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td nowrap class="small cellText"><strong>{$memo}</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Customer Message</strong></td>
                            <td nowrap class="small cellText"><strong>{$customer_message}</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Class</strong></td>
                            <td nowrap class="small cellText"><strong>{$inv_class}</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Ship Via</strong></td>
                            <td nowrap class="small cellText"><strong>{$inv_ship_via}</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>FOB</strong></td>
                            <td nowrap class="small cellText"><strong>{$inv_fob}</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Other</strong></td>
                            <td nowrap class="small cellText"><strong>{$inv_other}</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Account</strong></td>
                            <td nowrap class="small cellText"><strong>{$inv_account}</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Term</strong></td>
                            <td nowrap class="small cellText"><strong>{$inv_term}</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Ship Date</strong></td>
                            <td nowrap class="small cellText"><strong>{$inv_shipdate}</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                        </table>
					</td></tr></table>
			  {else}

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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $customerjob}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $customerjob}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $order_customerjob}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $order_customerjob}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_customerjob}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_customerjob}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $bill_to}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $bill_to}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $order_bill_to}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $order_bill_to}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_bill_to}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_bill_to}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $ship_to}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $ship_to}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $order_invoice_date}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $order_invoice_date}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_invoice_date}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_invoice_date}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $invoice_date}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $invoice_date}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $order_invoice}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $order_invoice}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_invoice}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_invoice}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                {foreach from=$FIELDS_OPS key=k item=v}
                                   {if $k eq $invoice}
                                   		<option value="{$k}" selected="selected">{$v}</option>
                                   {else}
                                   		<option value="{$k}">{$v}</option>
                                   {/if}
                                {/foreach}                                             
                                </optgroup>        
                                <optgroup label="Custom Fields"> 
                                {foreach from=$FIELDS_CF key=k item=v}
                                   {if $k eq $invoice}
                                   		<option value="{$k}" selected="selected">{$v}</option>
                                   {else}
                                   		<option value="{$k}">{$v}</option>
                                   {/if}
                                {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $order_ship_to}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $order_ship_to}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_ship_to}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_ship_to}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $po_no}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $po_no}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $order_customer_message}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $order_customer_message}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                 
                                    </select>
                                 </strong></td>
                            <td nowrap class="small cellLabel"><strong>Customer Message</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_customer_message" id="order_customer_message" style="width: 180px;"> 
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_customer_message}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_customer_message}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $due_date}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $due_date}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $order_total}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $order_total}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                    
                                    </select>
                                </strong></td>
                            <td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_total" id="order_total" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_total}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_total}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                {foreach from=$FIELDS_OPS key=k item=v}
                                   {if $k eq $rep}
                                   		<option value="{$k}" selected="selected">{$v}</option>
                                   {else}
                                   		<option value="{$k}">{$v}</option>
                                   {/if}
                                {/foreach}                                             
                                </optgroup>        
                                <optgroup label="Custom Fields"> 
                                {foreach from=$FIELDS_CF key=k item=v}
                                   {if $k eq $rep}
                                   		<option value="{$k}" selected="selected">{$v}</option>
                                   {else}
                                   		<option value="{$k}">{$v}</option>
                                   {/if}
                                {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $order_memo}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $order_memo}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                    
                                    </select>
                                </strong></td>
                            <td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_memo" id="order_memo" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_memo}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_memo}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $total}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $total}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                  
                                    </select>
                                </strong></td>
                          	<td nowrap class="small cellLabel"><b><!--Class--></b></td>
                            <td class="small cellText">
                            	<!--<select name="order_class" id="order_class" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $order_class}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $order_class}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                     
								</select>-->
                            </td>
                            <td nowrap class="small cellLabel"><b><!--Class--></b></td>    	
                            <td class="small cellText">
                            	<!--<select name="receipt_class" id="receipt_class" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_class}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_class}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $payment_applied}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $payment_applied}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $balance_due}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $balance_due}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $memo}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $memo}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                {foreach from=$FIELDS_OPS key=k item=v}
                                   {if $k eq $customer_message}
                                   		<option value="{$k}" selected="selected">{$v}</option>
                                   {else}
                                   		<option value="{$k}">{$v}</option>
                                   {/if}
                                {/foreach}                                             
                                </optgroup>        
                                <optgroup label="Custom Fields"> 
                                {foreach from=$FIELDS_CF key=k item=v}
                                   {if $k eq $customer_message}
                                   		<option value="{$k}" selected="selected">{$v}</option>
                                   {else}
                                   		<option value="{$k}">{$v}</option>
                                   {/if}
                                {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $inv_class}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $inv_class}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $inv_ship_via}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $inv_ship_via}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $inv_fob}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $inv_fob}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $inv_other}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $inv_other}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $inv_account}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $inv_account}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $inv_term}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $inv_term}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $inv_shipdate}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $inv_shipdate}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
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
               {/if}
			   
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