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
				<td rowspan="2" valign="top" width="50"><img src="{'orgshar.gif'|@vtiger_imageurl:$THEME}" alt="{$MOD.LBL_MODULE_MANAGER}" title="{$MOD.LBL_MODULE_MANAGER}" border="0" height="48" width="48"></td>
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Transaction Quote</b></td>
			</tr>

			<tr>
				<td class="small" valign="top">Mapping VTiger Quotes to Quickbooks</td>
			</tr>
			</table>
					
			<br>
			
			<table border="0" cellpadding="10" cellspacing="0" width="95%">
			<tr>
				<td>
				<form action="index.php?module=QuickBooks&action=TransactionSalesReceiptSetting&parenttab=Tools" method="post" name="form" id="form">
				<input type="hidden" name="mapquotes_mode">
				<table border=0 cellspacing=0 cellpadding=5 width=100% class="tableHeading">
					<tr>
						<td class="big"><strong></strong></td>
						{if $MAPQUOTES_MODE neq 'edit'}	
						<td class="small" align=right>
							<input class="crmButton small edit" title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" onclick="this.form.action.value='CustomerMapAccount';this.form.mapquotes_mode.value='edit'" type="submit" name="Edit" value="{$APP.LBL_EDIT_BUTTON_LABEL}">
						</td>
						{else}
						<td class="small" align=right>
							<input title="{$APP.LBL_SAVE_BUTTON_LABEL}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="crmButton small save" onclick="this.form.action.value='Save';" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" >&nbsp;&nbsp;
    							<input title="{$APP.LBL_CANCEL_BUTTON_LABEL}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="crmButton small cancel" onclick="window.history.back()" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}">
						</td>
						{/if}
					</tr>					
				</table>
				{if $MAPQUOTES_MODE neq 'edit'}
					<table border=0 cellspacing=0 cellpadding=0 width=100%>
						<tr><td>&nbsp;</td></tr>
						<tr>
							<td align="center">
								<table border=0 cellspacing=0 cellpadding=0 width=100%>
									<tr>
										<td class="small" valign=top align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Map VTiger Quotes to Quickbooks Invoices <input type="radio" value="invoice" name="raObjectMap" {if $OBJECT_MAP eq 'invoice'} checked {else} disabled {/if}></td>
										<td class="small" valign=top align="center">&nbsp;&nbsp;&nbsp;&nbsp;Map VTiger Quotes to Quickbooks Sales Orders <input type="radio" value="saleorder" name="raObjectMap" {if $OBJECT_MAP eq 'saleorder'} checked {else} disabled {/if}></td>
										<td class="small" valign=top align="center">Map VTiger Quotes to Quickbooks Sales Receipts <input type="radio" value="salereceipt" name="raObjectMap" {if $OBJECT_MAP eq 'salereceipt'} checked {else} disabled {/if}></td>
										<td class="small" valign=top align="center">Map VTiger Quotes to Quickbooks Estimate <input type="radio" value="estimate" name="raObjectMap" {if $OBJECT_MAP eq 'estimate'} checked {else} disabled {/if}></td>
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
										<td class="small" valign=top align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Map VTiger Quotes to Quickbooks Invoices <input type="radio" value="invoice" name="raObjectMap" {if $OBJECT_MAP eq 'invoice'} checked {/if}></td>
										<td class="small" valign=top align="center">&nbsp;&nbsp;&nbsp;&nbsp;Map VTiger Quotes to Quickbooks Sales Orders <input type="radio" value="saleorder" name="raObjectMap" {if $OBJECT_MAP eq 'saleorder'} checked {/if}></td>
										<td class="small" valign=top align="center">Map VTiger Quotes to Quickbooks Sales Receipts <input type="radio" value="salereceipt" name="raObjectMap" {if $OBJECT_MAP eq 'salereceipt'} checked {/if}></td>
										<td class="small" valign=top align="center">Map VTiger Quotes to Quickbooks Estimate <input type="radio" value="estimate" name="raObjectMap" {if $OBJECT_MAP eq 'estimate'} checked {/if}></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr><td>&nbsp;</td></tr>
					</table>
					{/if}
					
<!--
	TRAVIS 07202010 - Add and change some fields to map Quotes
-->
					{if $MAPQUOTES_MODE neq 'edit'}	

					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top ><table width="100%"  border="0" cellspacing="0" cellpadding="5">
                          <tr>
                            <td nowrap class="small cellLabel" colspan="2"><p align="center"><b>Map Fields</b></td>
                            <td nowrap class="small cellLabel" colspan="2"><p align="center"><b>Map Fields</b></td>
							<td nowrap class="small cellLabel" colspan="2"><p align="center"><b>Map Fields</b></td>
							<td nowrap class="small cellLabel" colspan="2"><p align="center"><b>Map Fields</b></td>
                          </tr>                          
                          <tr>
                            <td nowrap class="small cellLabel"><strong><font color="#0000FF" size="">Quickbooks Fields</font></strong></td>
                            <td class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
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
                             <td nowrap class="small cellLabel"><strong>Customer Job</strong></td>                            
                            <td class="small cellText"><strong>{$estimate_customerjob}</strong></td>
                          </tr>    
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Class</strong></td>
                            <td class="small cellText"><strong>{$class}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Class</strong></td>
                            <td class="small cellText"><strong>{$order_class}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Class</strong></td>                            
                            <td class="small cellText"><strong>{$receipt_class}</strong></td>
                             <td nowrap class="small cellLabel"><strong>Class</strong></td>                            
                            <td class="small cellText"><strong>{$estimate_class}</strong></td>
                          </tr>                      
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Bill To</strong></td>
                            <td nowrap class="small cellText"><strong>{$bill_to}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Address</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_bill_to}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Sold To</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_bill_to}</strong></td>
                             <td nowrap class="small cellLabel"><strong>Address</strong></td>
                            <td nowrap class="small cellText"><strong>{$estimate_bill_to}</strong></td>
                          </tr>

                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Ship To</strong></td>
                            <td nowrap class="small cellText"><strong>{$ship_to}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_invoice_date}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_invoice_date}</strong></td>
                             <td nowrap class="small cellLabel"><strong>Ship To</strong></td>
                            <td nowrap class="small cellText"><strong>{$estimate_ship_to}</strong></td>
                          </tr>
                        
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td nowrap class="small cellText"><strong>{$invoice_date}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>S.O. No</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_so_no}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Sale No</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_sale_no}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Estimate No</strong></td>
                            <td nowrap class="small cellText"><strong>{$estimate_no}</strong></td>
                          </tr>                          
						  <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Invoice</strong></td>
                            <td nowrap class="small cellText"><strong>{$invoice}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Ship To</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_ship_to}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Check No</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_check_no}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td nowrap class="small cellText"><strong>{$estimate_date}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>P.O No</strong></td>
                            <td nowrap class="small cellText"><strong>{$po_no}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Item</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_item}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Payment Method</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_payment_method}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Description</strong></td>
                            <td nowrap class="small cellText"><strong>{$estimate_description}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Terms</strong></td>
                            <td nowrap class="small cellText"><strong>{$terms}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Description</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_description}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Item</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_item}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Qty</strong></td>
                            <td nowrap class="small cellText"><strong>{$estimate_qty}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Due Date</strong></td>
                            <td nowrap class="small cellText"><strong>{$due_date}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Ordered</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_qty}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Description</strong></td>                  	
                            <td nowrap class="small cellText"><strong>{$receipt_description}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Rate</strong></td>                  	
                            <td nowrap class="small cellText"><strong>{$estimate_rate}</strong></td>                        
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Rep</strong></td>
                            <td nowrap class="small cellText"><strong>{$rep}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Rate</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_rate}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Qty</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_qty}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Amount</strong></td>
                            <td nowrap class="small cellText"><strong>{$estimate_amount}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Item</strong></td>
                            <td nowrap class="small cellText"><strong>{$item}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Amount</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_amount}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Rate</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_rate}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Customer Message</strong></td>
                            <td nowrap class="small cellText"><strong>{$estimate_customer_message}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Description</strong></td>
                            <td nowrap class="small cellText"><strong>{$description}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Customer Message</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_customer_message}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Class(line item)</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_class_line_item}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td nowrap class="small cellText"><strong>{$estimate_total}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Qty</strong></td>
                            <td nowrap class="small cellText"><strong>{$qty}</strong></td>
                          	<td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_total}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Amount</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_amount}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td nowrap class="small cellText"><strong>{$estimate_memo}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Rate</strong></td>
                            <td nowrap class="small cellText"><strong>{$rate}</strong></td>                          
                            <td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td nowrap class="small cellText"><strong>{$order_memo}</strong></td>
                            <td nowrap class="small cellLabel"><strong>Customer Message</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_customer_message}</strong></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Amount</strong></td>
                            <td nowrap class="small cellText"><strong>{$amount}</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel"><strong>Customer Tax Code</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_customer_tax_code}</strong></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td nowrap class="small cellText"><strong>{$total}</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_total}</strong></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Customer Tax Code</strong></td>
                            <td nowrap class="small cellText"><strong>{$customer_tax_code}</strong></td>
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                            <td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td nowrap class="small cellText"><strong>{$receipt_memo}</strong></td>
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Payment Applied</strong></td>
                            <td nowrap class="small cellText"><strong>{$payment_applied}</strong></td>                          
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
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
                            <td nowrap class="small cellLabel">&nbsp;</td>
                            <td nowrap class="small cellText">&nbsp;</td>
                          </tr>                          
                      </table>
			  {else}
<!-- LEE 12092010 - Display custom fields -->
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top ><table width="100%"  border="0" cellspacing="0" cellpadding="5">
                          <tr>
                            <td nowrap class="small cellLabel" colspan="2"><p align="center"><b>Map Fields</b></td>
                            <td nowrap class="small cellLabel" colspan="2"><p align="center"><b>Map Fields</b></td>
							<td nowrap class="small cellLabel" colspan="2"><p align="center"><b>Map Fields</b></td>
							<td nowrap class="small cellLabel" colspan="2"><p align="center"><b>Map Fields</b></td>
                          </tr>                          
                          <tr>
                            <td nowrap class="small cellLabel"><strong><font color="#0000FF">Quickbooks Fields</font></strong></td>
                            <td class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
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
                                	<select name="receipt_customerjob" id="receipt_customerjob" style="width: 180px;">
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
                            <td nowrap class="small cellLabel"><strong>Customer Job</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="estimate_customerjob" id="estimate_customerjob" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $estimate_customerjob}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $estimate_customerjob}
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
                            <td nowrap class="small cellLabel"><strong>Class</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="class" id="class" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $class}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $class}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                     
                                    </select>
                                </strong>
                            </td>
                            <td nowrap class="small cellLabel"><strong>Class</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="order_class" id="order_class" style="width: 180px;">
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
                                    </select>
                                </strong>
                            </td>
                            <td nowrap class="small cellLabel"><strong>Class</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_class" id="receipt_class" style="width: 180px;">
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
                                    </select>
                                </strong>
                            </td>
                            <td nowrap class="small cellLabel"><strong>Class</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="estimate_class" id="estimate_class" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $estimate_class}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $estimate_class}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                     
                                    </select>
                                </strong>
                                <br>Recommended map with a picklist field
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
                            <td nowrap class="small cellLabel"><strong>Sold To</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_bill_to" id="receipt_bill_to" style="width: 180px;"> 
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
                            <td nowrap class="small cellLabel"><strong>Address</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="estimate_bill_to" id="estimate_bill_to" style="width: 180px;"> 
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $estimate_bill_to}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $estimate_bill_to}
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
                                	<select name="receipt_invoice_date" id="receipt_invoice_date" style="width: 180px;">
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
                            <td nowrap class="small cellLabel"><strong>Ship To</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="estimate_ship_to" id="estimate_ship_to" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $estimate_ship_to}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $estimate_ship_to}
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
                                       {if $k eq $order_so_no}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $order_so_no}
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
                                	<select name="receipt_invoice" id="receipt_invoice" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_sale_no}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_sale_no}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                    
                                    </select>
                                </strong>
                            </td>
                            <td nowrap class="small cellLabel"><strong>Estimate No</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="estimate_no" id="estimate_no" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $estimate_no}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $estimate_no}
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
                                <strong>
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
                                </strong>
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
                            <td nowrap class="small cellLabel"><strong>Check No</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_check_no" id="receipt_check_no" style="width: 180px;"> 
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_check_no}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_check_no}
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
                                	<select name="estimate_date" id="estimate_date" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $estimate_date}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $estimate_date}
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
                          	<td nowrap class="small cellLabel"><strong>Item</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="order_item" id="order_item" style="width: 180px;"> 
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $order_item}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $order_item}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                   
                                    </select>
                                </strong></td>
                            <td nowrap class="small cellLabel"><strong>Payment Method</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_payment_method" id="receipt_payment_method" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_payment_method}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_payment_method}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                    
                                    </select>
                               	</strong></td>
                            <td nowrap class="small cellLabel"><strong>Item</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="estimate_item" id="estimate_item" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $estimate_item}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $estimate_item}
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
                            <td nowrap class="small cellLabel"><strong>Terms</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="terms" id="terms" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $terms}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $terms}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                    
                                    </select>
                                </strong>
                            </td>
                          	<td nowrap class="small cellLabel"><strong>Description</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="order_description" id="order_description" style="width: 180px;"> 
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $order_description}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $order_description}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                    
                                    </select>
                                </strong></td>
                            <td nowrap class="small cellLabel"><strong>Item</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_item" id="receipt_item" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_item}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_item}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                     
                                    </select>
                                </strong></td>
							<td nowrap class="small cellLabel"><strong>Description</strong></td>
                            <td class="small cellText">
                            	<strong>
                                	<select name="estimate_description" id="estimate_description" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $estimate_description}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $estimate_description}
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
                          	<td nowrap class="small cellLabel"><strong>Ordered</strong></td>
                     
                            <td class="small cellText">
                            	<strong>
                                	<select name="order_qty" id="order_qty" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $order_qty}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $order_qty}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                     
                                    </select>
                                </strong>
                            </td>
                           
                            <td nowrap class="small cellLabel"><strong>Description</strong></td>
                            <td class="small cellText">
                            	<strong>
                                	<select name="receipt_description" id="receipt_description" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_description}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_description}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                     
                                    </select>
                                </strong>
                            </td>
                            <td nowrap class="small cellLabel"><strong>Qty</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="estimate_qty" id="estimate_qty" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $estimate_qty}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $estimate_qty}
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
                                <strong>
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
                                </strong>
                            </td>
                          	<td nowrap class="small cellLabel"><strong>Rate</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="order_rate" id="order_rate" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $order_rate}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $order_rate}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                     
                                    </select>
                                </strong></td>
                            <td nowrap class="small cellLabel"><strong>Qty</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_qty" id="receipt_qty" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_qty}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_qty}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                     
                                    </select>
                                </strong></td>
                            <td nowrap class="small cellLabel"><strong>Rate</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="estimate_rate" id="estimate_rate" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $estimate_rate}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $estimate_rate}
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
                            <td nowrap class="small cellLabel"><strong>Item</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="item" id="item" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $item}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $item}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                    
                                    </select>
                                </strong></td>
                          	<td nowrap class="small cellLabel"><strong>Amount</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="order_amount" id="order_amount" style="width: 180px;">
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
                            <td nowrap class="small cellLabel"><strong>Rate</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_rate" id="receipt_rate" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_rate}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_rate}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach} 
                                    </optgroup>                                     
                                    </select>
                                </strong></td>
                            <td nowrap class="small cellLabel"><strong>Amount</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="estimate_amount" id="estimate_amount" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $estimate_amount}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $estimate_amount}
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
                            <td nowrap class="small cellLabel"><strong>Description</strong></td>
                            
                            <td class="small cellText">
                            	<strong>
                                	<select name="description" id="description" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $description}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $description}
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
                            <td nowrap class="small cellLabel"><strong>Class(line item)</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_class_line_item" id="receipt_class_line_item" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_class_line_item}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_class_line_item}
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
                                	<select name="estimate_customer_message" id="estimate_customer_message" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $estimate_customer_message}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $estimate_customer_message}
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
                            <td nowrap class="small cellLabel"><strong>Qty</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="qty" id="qty" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $qty}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $qty}
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
                            <td nowrap class="small cellLabel"><strong>Amount</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_amount" id="receipt_amount" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_amount}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_amount}
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
                                	<select name="estimate_total" id="estimate_total" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $estimate_total}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $estimate_total}
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
                            <td nowrap class="small cellLabel"><strong>Rate</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="rate" id="rate" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $rate}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $rate}
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
                            <td nowrap class="small cellLabel"><strong>Customer Message</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_customer_message" id="receipt_customer_message" style="width: 180px;">
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
                            <td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="estimate_memo" id="estimate_memo" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $estimate_memo}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $estimate_memo}
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
                            <td nowrap class="small cellLabel"><strong>Amount</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="amount" id="amount" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $amount}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $amount}
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
                            <td nowrap class="small cellLabel"><strong>Customer Tax Code</strong></td>
                            <td class="small cellText">
                            	<strong>
                                	<select name="receipt_customer_tax_code" id="receipt_customer_tax_code" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $receipt_customer_tax_code}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $receipt_customer_tax_code}
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
                          	<td nowrap class="small cellLabel">&nbsp;</td>
                            <td class="small cellText">
                                <strong>
                                	&nbsp;</strong></td>
                            <td nowrap class="small cellLabel"><strong>Total</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_total" id="receipt_total" style="width: 180px;">
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
                            <td nowrap class="small cellLabel"><strong>Customer Tax Code</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="customer_tax_code" id="customer_tax_code" style="width: 180px;">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $customer_tax_code}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </optgroup>        
                                    <optgroup label="Custom Fields"> 
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $customer_tax_code}
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
                            <td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="receipt_memo" id="receipt_memo" style="width: 180px;">
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
                                <strong>
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