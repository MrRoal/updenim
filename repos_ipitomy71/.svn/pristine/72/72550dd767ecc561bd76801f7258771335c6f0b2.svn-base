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
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Transaction Purchase Order</b></td>
			</tr>

			<tr>
				<td class="small" valign="top">Mapping VTiger Purchase Order to Quickbooks</td>
			</tr>
			</table>
					
			<br>
			
			<table border="0" cellpadding="10" cellspacing="0" width="95%">
			<tr>
				<td>
				<form action="index.php?module=QuickBooks&action=PurchaseOrderSetting&parenttab=Tools" method="post" name="form" id="form">
				<input type="hidden" name="po_map_mode">
				<table border=0 cellspacing=0 cellpadding=5 width=100% class="tableHeading">
					<tr>
						<td class="big"><strong></strong></td>
						{if $PO_MAP_MODE neq 'edit'}	
						<td class="small" align=right>
							<input class="crmButton small edit" title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" onclick="this.form.action.value='PurchaseOrderSetting';this.form.po_map_mode.value='edit'" type="submit" name="Edit" value="{$APP.LBL_EDIT_BUTTON_LABEL}">
						</td>
						{else}
						<td class="small" align=right>
							<input title="{$APP.LBL_SAVE_BUTTON_LABEL}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="crmButton small save" onclick="this.form.action.value='Save';" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" >&nbsp;&nbsp;
    							<input title="{$APP.LBL_CANCEL_BUTTON_LABEL}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="crmButton small cancel" onclick="window.history.back()" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}">
						</td>
						{/if}
					</tr>					
				</table>
					
				{if $PO_MAP_MODE neq 'edit'}
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign="top">
						<table width="100%"  border="0" cellspacing="0" cellpadding="5">
                          <tr>
                            <td nowrap class="small cellLabel" colspan="2" align="center"><b>Purchase Order Mapping</b></td>
                          </tr>                          
                          <tr>
                            <td nowrap class="small cellLabel"><strong><font color="#0000FF" size="">Quickbooks Fields</font></strong></td>
                            <td class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
                          </tr>                          
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Vendor</strong></td>
                            <td class="small cellText"><strong>{$vendor}</strong></td>
                          </tr>
                          <!--<tr>
                            <td nowrap class="small cellLabel"><strong>Class</strong></td>
                            <td class="small cellText"><strong>{$class}</strong></td>
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Ship to</strong></td>
                            <td class="small cellText"><strong>{$ship_to}</strong></td>
                          </tr>-->
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td nowrap class="small cellText"><strong>{$po_date}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>P.O No</strong></td>
                            <td nowrap class="small cellText"><strong>{$po_no}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Vendor Address</strong></td>
                            <td nowrap class="small cellText"><strong>{$vendor_address}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Ship Address</strong></td>
                            <td nowrap class="small cellText"><strong>{$ship_address}</strong></td>
                          </tr>                 
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Due Date</strong></td>
                            <td nowrap class="small cellText"><strong>{$due_date}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Expected Date</strong></td>
                            <td nowrap class="small cellText"><strong>{$expected_date}</strong></td>
                          </tr>
                          <!--<tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Ship Method</strong></td>
                            <td nowrap class="small cellText"><strong>{$ship_method}</strong></td>
                          </tr>-->
                           <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>FOB</strong></td>
                            <td nowrap class="small cellText"><strong>{$fob}</strong></td>
                          </tr>
                           <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td nowrap class="small cellText"><strong>{$memo}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Vendor Message</strong></td>
                            <td nowrap class="small cellText"><strong>{$vendor_msg}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Is To Be Printed</strong></td>
                            <td nowrap class="small cellText"><strong>{$is_to_be_printed}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Is To Be Emailed</strong></td>
                            <td nowrap class="small cellText"><strong>{$is_to_be_emailed}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Is Tax Included</strong></td>
                            <td nowrap class="small cellText"><strong>{$is_tax_included}</strong></td>
                          </tr>
                          <!--<tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Sales Tax Code</strong></td>
                            <td nowrap class="small cellText"><strong>{$sales_tax_code}</strong></td>
                          </tr>-->
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Other1</strong></td>
                            <td nowrap class="small cellText"><strong>{$other1}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Other2</strong></td>
                            <td nowrap class="small cellText"><strong>{$other2}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td nowrap class="small cellLabel"><strong>Customer</strong></td>
                            <td nowrap class="small cellText"><strong>{$customer}</strong></td>
                          </tr>
                        </table>
					</td></tr></table>
			  {else}
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top ><table width="100%"  border="0" cellspacing="0" cellpadding="5">
                          <tr>
                            <td nowrap class="small cellLabel" colspan="2" align="left"><b>Purchase Order Map Fields</b></td>
                          </tr>                          
                          <tr>
                            <td nowrap class="small cellLabel"><strong><font color="#0000FF">Quickbooks Fields</font></strong></td>
                            <td class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
                          </tr>                          
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Vendor</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="vendor" id="vendor" style="width: 180px;"> 
                                    <option value="None">Select</option>
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $vendor}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </select>
                                </strong>
                            </td>
                          </tr>                
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Date</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="po_date" id="po_date" style="width: 180px;"> 
                                    <option value="None">Select</option>
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $po_date}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
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
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $po_no}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </select>
                                </strong>
                            </td>
                          </tr>                
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Vendor Address</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="vendor_address" id="vendor_address" style="width: 180px;">
                                    <option value="None">Select</option>
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $vendor_address}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </select>
                                </strong>
                            </td>
                          </tr>                          
						  <tr>
                            <td nowrap class="small cellLabel"><strong>Ship Address</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="ship_address" id="ship_address" style="width: 180px;">
                                    <option value="None">Select</option>
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $ship_address}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
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
                                	
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $due_date}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Expected Date</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="expected_date" id="expected_date" style="width: 180px;">
                                    <option value="None">Select</option>
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $expected_date}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>FOB</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="fob" id="fob" style="width: 180px;"> 
                                    <option value="None">Select</option>
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $fob}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Memo</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="memo" id="memo" style="width: 180px;">  
                                    <option value="None">Select</option>
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $memo}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </select>
                                </strong></td>
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Vendor Message</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="vendor_msg" id="vendor_msg" style="width: 180px;">
                                    <option value="None">Select</option>
                                	
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $vendor_msg}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </select>
                                </strong></td>
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Is To Be Printed</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="is_to_be_printed" id="is_to_be_printed" style="width: 180px;">                                    
                                    <option value="None">Select</option>
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $is_to_be_printed}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </select>
                                </strong></td>
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Is To Be Emailed</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="is_to_be_emailed" id="is_to_be_emailed" style="width: 180px;">   
                                    <option value="None">Select</option>                                	
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $is_to_be_emailed}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </select>
                                </strong></td>
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Is Tax Included</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="is_tax_included" id="is_tax_included" style="width: 180px;">  
                                    <option value="None">Select</option>
                                	
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $is_tax_included}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </select>
                                </strong></td>
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Other1</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="other1" id="other1" style="width: 180px;">  
                                    <option value="None">Select</option>
                                	
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $other1}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </select>
                                </strong></td>
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Other2</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="other2" id="other2" style="width: 180px;">  
                                    <option value="None">Select</option>
                                	
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $other2}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}                                             
                                    </select>
                                </strong></td>
                          </tr>
                          <tr>
                            <td nowrap class="small cellLabel"><strong>Customer</strong></td>
                            <td class="small cellText">
                                <strong>
                                	<select name="customer" id="customer" style="width: 180px;">  
                                    <option value="None">Select</option>
                                	
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $customer}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </select>
                                </strong></td>
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