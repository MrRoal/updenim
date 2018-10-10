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
				<td rowspan="2" valign="top" width="50"><img src="{'ico-profile.gif'|@vtiger_imageurl:$THEME}" alt="{$MOD.LBL_MODULE_MANAGER}" title="{$MOD.LBL_MODULE_MANAGER}" border="0" height="48" width="48"></td>
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Accounts and Contacts</b></td>
			</tr>

			<tr>
				<td class="small" valign="top">Mapping VTiger Accounts and Contacts to Quickbooks</td>
			</tr>
			</table>

			<br>
			<table border="0" cellpadding="10" cellspacing="0" width="95%">
			<tr>
				<td>
				<form action="index.php?module=QuickBooks&action=AccountContactSetting&parenttab=Tools" method="post" name="CallServer" id="form">
				<input type="hidden" name="customermap_account_mode">
				<table border=0 cellspacing=0 cellpadding=5 width=100% class="tableHeading">
					<tr>
						<td class="big"><strong></strong></td>
						{if $CUSTOMERMAP_ACCOUNT_MODE neq 'edit'}
						<td class="small" align=right>
							<input class="crmButton small edit" title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" onclick="this.form.action.value='CustomerMapAccount';this.form.customermap_account_mode.value='edit'" type="submit" name="Edit" value="{$APP.LBL_EDIT_BUTTON_LABEL}">
						</td>
						{else}
						<td class="small" align=right>
							<input title="{$APP.LBL_SAVE_BUTTON_LABEL}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="crmButton small save" onclick="this.form.action.value='Save';" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" >&nbsp;&nbsp;
    							<input title="{$APP.LBL_CANCEL_BUTTON_LABEL}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="crmButton small cancel" onclick="window.history.back()" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}">
						</td>
						{/if}
					</tr>
				</table>
				{if $CUSTOMERMAP_ACCOUNT_MODE neq 'edit'}
				<table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td>
					<!-- account view -->
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top ><table width="100%" border="0" cellspacing="0" cellpadding="5">
						<tr>
                            <td colspan="2" class="small cellLabel"><strong>Account Mapping</strong></td>
						</tr>
						<tr>
                            <td width="30%" nowrap class="small cellLabel"><strong><font color="#0000FF" size="">Quickbooks Fields</font></strong></td>
                            <td width="70%" class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
						</tr>
						<tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>First Name</strong></td>
                            <td width="70%" class="small cellText"><strong>{$firstname}</strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Last Name</strong></td>
                            <td width="70%" class="small cellText"><strong>{$lastname}</strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Salutation</strong></td>
                            <td width="70%" class="small cellText"><strong>{$salutation}</strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Customer Name</strong></td>
                            <td width="70%" class="small cellText"><strong>{$customer_name}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Company Name</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$company_name}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Contact</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$contact}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Alt Contact</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$altcontact}</strong></td>
                          </tr>

                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Phone</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$phone}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Alt Phone</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$altphone}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Fax</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$fax}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Email</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$email}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Description</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$description}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Account Number</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$account_number}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Billing Adrress</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$bill_add}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Shipping Adrress</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$ship_add}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Customer Type</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$customer_type}</strong></td>
                          </tr>
                           <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Term</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$customer_term}</strong></td>
                          </tr>
                    </table>
					<!-- end account view -->
					</td><td>
					<!-- contact view -->
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top ><table width="100%"  border="0" cellspacing="0" cellpadding="5">
						<tr>
                            <td colspan="2" class="small cellLabel"><strong>Contact Mapping</strong></td>
						</tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong><font color="#0000FF" size="">Quickbooks Fields</font></strong></td>
                            <td width="70%" class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>First Name</strong></td>
                            <td width="70%" class="small cellText"><strong>{$firstname_contact}</strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Last Name</strong></td>
                            <td width="70%" class="small cellText"><strong>{$lastname_contact}</strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Salutation</strong></td>
                            <td width="70%" class="small cellText"><strong>{$salutation_contact}</strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Customer Name</strong></td>
                            <td width="70%" class="small cellText"><strong>{$customer_name_contact}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Company Name</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$company_name_contact}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Contact</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$contact_contact}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Alt Contact</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$altcontact_contact}</strong></td>
                          </tr>

                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Phone</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$phone_contact}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Alt Phone</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$altphone_contact}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Fax</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$fax_contact}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Email</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$email_contact}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Description</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$description_contact}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Account Number</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$account_number_contact}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Billing Adrress</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$bill_add_contact}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Shipping Adrress</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$ship_add_contact}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Customer Type</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$customer_type_contact}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Term</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$customer_term_contact}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Format of Customer Name</strong></td>
                            <td width="70%" nowrap class="small cellText"><b>{$customer_name_format_label}</b></td>
                          </tr>
						  <!--<tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Send Customer to</strong></td>
                            <td width="70%" nowrap class="small cellText"><b>{$customer_to}</b></td>
                          </tr>-->
                        </table>
					<!-- end contact view -->
					</td></tr></table>
				</td></tr></table>
				{else}
					<table width="100%"><tr><td>
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top ><table width="100%"  border="0" cellspacing="0" cellpadding="5">
						<tr>
                            <td colspan="2" class="small cellLabel"><strong><font>Account Mapping</font></strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong><font color="#0000FF">Quickbooks Fields</font></strong></td>
                            <td width="70%" class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>First Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="firstname" id="firstname">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $firstname}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $firstname}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Last Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="lastname" id="lastname">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $lastname}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $lastname}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Salutation</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="salutation" id="salutation">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $salutation}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $salutation}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Customer Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="customer_name" id="customer_name">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $customer_name}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $customer_name}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Company Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="company_name" id="company_name">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $company_name}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $company_name}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Contact</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="contact" id="contact">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $contact}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>AltContact</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="altcontact" id="altcontact">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $altcontact}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $altcontact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Phone</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="phone" id="phone">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $phone}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $phone}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Alt Phone</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="altphone" id="altphone">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $altphone}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $altphone}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Fax</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="fax" id="fax">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $fax}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $fax}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Email</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="email" id="email">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $email}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $email}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Description</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="description" id="description">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $description}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
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
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Account Number</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="account_number" id="description">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $account_number}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $account_number}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Billing Address</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="bill_add" id="bill_add">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $bill_add}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $bill_add}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Shipping Address</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="ship_add" id="ship_add">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $ship_add}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $ship_add}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Customer Type</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="customer_type" id="customer_type">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $customer_type}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $customer_type}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Term</strong></td>
                            <td width="70%" class="small cellText">
	                        	<select name="customer_term" id="customer_term">
	                            <option value="None">Select</option>
	                            <optgroup label="Account Fields">
	                            {foreach from=$FIELDS_CF key=k item=v}
	                               {if $k eq $customer_term}
	                               		<option value="{$k}" selected="selected">{$v}</option>
	                               {else}
	                               		<option value="{$k}">{$v}</option>
	                               {/if}
	                            {/foreach}
	                            </optgroup>
	                            <optgroup label="Other Fields">
	                            {foreach from=$FIELDS_OPS key=k item=v}
	                               {if $k eq $customer_term}
	                               		<option value="{$k}" selected="selected">{$v}</option>
	                               {else}
	                               		<option value="{$k}">{$v}</option>
	                               {/if}
	                            {/foreach}
	                            </optgroup>
	                            </select> Recommended map with a picklist field 
                            </td>
                          </tr>
                        </table>
						<!-- end account edit -->
					</td><td>
					<!-- contact edit -->
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top ><table width="100%"  border="0" cellspacing="0" cellpadding="5">
						<tr>
                            <td colspan="2" class="small cellLabel"><strong><font>Contact Mapping</font></strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong><font color="#0000FF">Quickbooks Fields</font></strong></td>
                            <td width="70%" class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>First Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="firstname_contact" id="firstname_contact">
                                	<option value="None">Select</option>
                                    <optgroup label="Contact Fields">
                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
                                       {if $k eq $firstname_contact}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
                                       {if $k eq $firstname_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Last Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="lastname_contact" id="lastname_contact">
	                                    <option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $lastname_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $lastname_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Salutation</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="salutation_contact" id="salutation_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $salutation_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $salutation_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Customer Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="customer_name_contact" id="customer_name_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $customer_name_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $customer_name_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Company Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="company_name_contact" id="company_name_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $company_name_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $company_name_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Contact</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="contact_contact" id="contact_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $contact_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $contact_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>AltContact</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="altcontact_contact" id="altcontact_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $altcontact_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $altcontact_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Phone</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="phone_contact" id="phone_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $phone_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $phone_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Alt Phone</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="altphone_contact" id="altphone_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $altphone_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $altphone_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Fax</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="fax_contact" id="fax_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $fax_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $fax_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Email</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="email_contact" id="email_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $email_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $email_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Description</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="description_contact" id="description_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $description_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $description_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Account Number</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="account_number_contact" id="description_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $account_number_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $account_number_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Billing Address</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="bill_add_contact" id="bill_add_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $bill_add_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $bill_add_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Shipping Address</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="ship_add_contact" id="ship_add_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $ship_add_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $ship_add_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Customer Type</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="customer_type_contact" id="customer_type_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
	                                       {if $k eq $customer_type_contact}
	                                       		<option value="{$k}" selected="selected">{$v}</option>
	                                       {else}
	                                       		<option value="{$k}">{$v}</option>
	                                       {/if}
	                                    {/foreach}
	                                    </optgroup>
	                                    <optgroup label="Other Fields">
	                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
	                                       {if $k eq $customer_type_contact}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Term</strong></td>
                            <td width="70%" class="small cellText">
                            	<select name="customer_term_contact" id="customer_term_contact">
                                	<option value="None">Select</option>
                                    <optgroup label="Contact Fields">
                                    {foreach from=$FIELDS_CF_CONTACT key=k item=v}
                                       {if $k eq $customer_term_contact}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Other Fields">
                                    {foreach from=$FIELDS_OPS_CONTACT key=k item=v}
                                       {if $k eq $customer_term_contact}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                </select> Recommended map with a picklist field 
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Format of Customer Name</strong></td>
                            <td width="70%" class="small cellText">
                            	<select name="customer_name_format" id="customer_name_format">
                                	<option value="first_last" {if $customer_name_format eq 'first_last'} selected="selected" {/if}>FirstName LastName</option>
                                	<option value="last_first" {if $customer_name_format eq 'last_first'} selected="selected" {/if}>LastName, FirstName</option>
                                	<option value="first_last_ctid" {if $customer_name_format eq 'first_last_ctid'} selected="selected" {/if}>FirstName LastName, VT Contact ID</option>
                                	<option value="last_first_ctid" {if $customer_name_format eq 'last_first_ctid'} selected="selected" {/if}>LastName, FirstName, VT Contact ID</option>
                                </select>
                            </td>
                          </tr>
							<!--<tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Send Customer to</strong></td>
                            <td width="70%" class="small cellText">
                            	<select name="customer_to" id="customer_to">
                                	<option value="contact" {if $customer_to eq 'contact'} selected="selected" {/if}>Contact</option>
                                	<option value="account" {if $customer_to eq 'account'} selected="selected" {/if}>Account</option>
                                </select>
                            </td>
                          </tr>-->
                        </table>
						<!-- end contact edit -->
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