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
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Vendors</b></td>
			</tr>

			<tr>
				<td class="small" valign="top">Mapping VTiger Vendors to Quickbooks</td>
			</tr>
			</table>

			<br>
			<table border="0" cellpadding="10" cellspacing="0" width="95%">
			<tr>
				<td>
				<form action="index.php?module=QuickBooks&action=VendorsSetting&parenttab=Tools" method="post" name="CallServer" id="form">
				<input type="hidden" name="map_vendor_mode">
				<table border=0 cellspacing=0 cellpadding=5 width=100% class="tableHeading">
					<tr>
						<td class="big"><strong></strong></td>
						{if $MAP_VENDOR_MODE neq 'edit'}
						<td class="small" align=right>
							<input class="crmButton small edit" title="{$APP.LBL_EDIT_BUTTON_TITLE}" accessKey="{$APP.LBL_EDIT_BUTTON_KEY}" onclick="this.form.action.value='VendorsSetting';this.form.map_vendor_mode.value='edit'" type="submit" name="Edit" value="{$APP.LBL_EDIT_BUTTON_LABEL}">
						</td>
						{else}
						<td class="small" align=right>
							<input title="{$APP.LBL_SAVE_BUTTON_LABEL}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="crmButton small save" onclick="this.form.action.value='Save';" type="submit" name="button" value="{$APP.LBL_SAVE_BUTTON_LABEL}" >&nbsp;&nbsp;
    							<input title="{$APP.LBL_CANCEL_BUTTON_LABEL}" accessKey="{$APP.LBL_CANCEL_BUTTON_KEY}" class="crmButton small cancel" onclick="window.history.back()" type="button" name="button" value="{$APP.LBL_CANCEL_BUTTON_LABEL}">
						</td>
						{/if}
					</tr>
				</table>
				{if $MAP_VENDOR_MODE neq 'edit'}
				<table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td>
					<!-- Vendors view -->
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top ><table width="100%" border="0" cellspacing="0" cellpadding="5">
						<tr>
                            <td colspan="2" class="small cellLabel"><strong>Vendors Mapping</strong></td>
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Vendor Name</strong></td>
                            <td width="70%" class="small cellText"><strong>{$vendor_name}</strong></td>
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
                          	<td width="30%" nowrap class="small cellLabel"><strong>Vendor Number</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$vendor_number}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Adrress</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$address}</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Vendor Type</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong>{$vendor_type}</strong></td>
                          </tr>
                    </table>
					<!-- end Vendors view -->
					</td></tr></table>
				</td></tr></table>
				{else}
					<table width="100%"><tr><td>
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top >
					<table width="100%"  border="0" cellspacing="0" cellpadding="5">
						<tr>
                            <td colspan="2" class="small cellLabel"><strong><font>Vendors Mapping</font></strong></td>
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
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $firstname}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
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
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $lastname}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
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
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $salutation}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Vendor Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="vendor_name" id="vendor_name">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $vendor_name}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $vendor_name}
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
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $company_name}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
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
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $contact}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
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
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $altcontact}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
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
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $phone}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
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
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $altphone}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
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
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $fax}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
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
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $email}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
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
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Vendor Number</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="vendor_number" id="description">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $vendor_number}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $vendor_number}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Address</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="address" id="address">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $address}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $address}
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Vendor Type</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="vendor_type" id="vendor_type">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    {foreach from=$FIELDS_OPS key=k item=v}
                                       {if $k eq $vendor_type}
                                       		<option value="{$k}" selected="selected">{$v}</option>
                                       {else}
                                       		<option value="{$k}">{$v}</option>
                                       {/if}
                                    {/foreach}
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    {foreach from=$FIELDS_CF key=k item=v}
                                       {if $k eq $vendor_type}
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
                        </table>
						<!-- end vendor edit -->
					</td>
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