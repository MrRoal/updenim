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
	    <div align="left" style="padding: 20px;">
			<table border="0" cellpadding="5" cellspacing="0" width="95%">
			<tr>
				<td rowspan="2" valign="top" width="50"><img src="{'terms.gif'|@vtiger_imageurl:$THEME}" alt="{$MOD.LBL_MODULE_MANAGER}" title="{$MOD.LBL_MODULE_MANAGER}" border="0" height="48" width="48"></td>
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Update Address</b></td>
			</tr>
			<tr>
				<td class="small" valign="top">Update address of Customer, Invoice, Estimate in QB</td>
			</tr>
			</table>
			<br><br>
			
			<table width="100%">
				<tr>
					<td>
					<form action="index.php?module=QuickBooks&action=UpdateAddress&parenttab=Tools" id="formPGC" method="POST" name="formPGC">Type&nbsp;
					<select name="gateway" onchange="selectGateway(this.value);">
						{foreach from=$GATEWAYS item=gateway}
						<option value="{$gateway.name}" {if $GATEWAY_SELECTED eq $gateway.name}selected{/if}>{$gateway.label}</option>
						{/foreach}
					</select>
					<input type="hidden" value="{$FIELD_COUNT}" id="field_count" name="field_count">
					<div id="list_fields" style="padding-top:10px;">
						<div id="field_0">
							<table><tr><td width="20px;">&nbsp;</td><td width="180px;">Replace from</td><td width="10px;">&nbsp;</td><td width="180px;">Replace to</td></tr></table>
						</div>
						{if $FIELD_MAPPING neq ''}
							{$FIELD_MAPPING}
						{else}
							<div id="field_1">
								<table><tr><td width="20px;"><img border="0" title="Add more field" alt="Add more field" src="themes/softed/images/select.gif" onclick="addMoreField('list_fields');"></td><td width="180px;"><input type="text" value="" id="vt_field_1" name="vt_field_1" style="width:180px;"></td><td width="10px;">&nbsp;</td><td width="180px;"><input type="text" value="" id="qb_field_1" name="qb_field_1" style="width:180px;"></td></tr></table>
							</div>
						{/if}
					</div>
					<br>
					<input type="submit" style="width:70px" value="  Save  " name="saveGWFM" class="crmbutton small save" accesskey="S" title="Save [Alt+S]">
					</form>
					</td>
					<td>
					<table>
						<tr>
							<td>
							<br><b>Update Address</b><br>
								<table cellpadding="0" cellspacing="0"><tr><td>
								1. Click this button <input type="button" value="Update Address" name="button" class="crmbutton small create" accesskey="S" title="Save [Alt+S]" onclick="addTransaction('{$TRANSACTIONTYPE}');" style="width:130px;"></td>
								<td>&nbsp;&nbsp;<span style="color:red;font-weight:bold;">Import Date</span></td>
								<td>&nbsp;<input maxlength=10 type="text" class="txtBox" id="date_update_address" name="date_update_address" style=" width:80px;font-size: 14px;" onkeypress="CheckKeyValue(event);" value="{$DATE_UPDATE_ADDRESS}" readonly></td>
			    				<td><img src="{'btnL3Calendar.gif'|@vtiger_imageurl:$THEME}" id="image_date_update_address"></td></tr></table>
								<script language="javascript">
									Calendar.setup (
								    	{ldelim}
										inputField : 'date_update_address', ifFormat : "%m/%d/%Y", showsTime : false, button : 'image_date_update_address', singleClick : true, step : 1
								    	{rdelim}
									)
								</script>
								2. Run web connector manually.<br>
								3. Wait for sync to finish before moving on to next step.<br>
								4. Check new address on QB.<br>
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

<script>	
	function addMoreField(id) {ldelim}
	    var obj = document.getElementById(id);
	    var obj_count = document.getElementById('field_count');
	    var cnt = parseInt(obj_count.value) + 1;
	    obj_count.value = cnt;
	    
	    var new_obj = document.createElement('div');
	    new_obj.id = "field_"+cnt;
//	    new_obj.style.paddingTop = '1px';
		new_obj.innerHTML = '<table><tr><td width="20px;"><img border="0" title="Remove field" alt="Remove field" src="themes/images/clear_field.gif" onclick="deleteMoreField(\'list_fields\',\''+ new_obj.id +'\');"></td><td width="180px;"><input type="text" value="" id="vt_field_' + cnt + '" name="vt_field_' + cnt + '" style="width:180px;"></td><td width="10px;">&nbsp;</td><td width="180px;"><input type="text" value="" id="qb_field_' + cnt + '" name="qb_field_' + cnt + '" style="width:180px;"></td></tr></table>';	    
	    obj.appendChild(new_obj);
	{rdelim}
	
	function deleteMoreField(id, id_del) {ldelim}
	    var obj = document.getElementById(id);
	    var obj_del = document.getElementById(id_del);
	    
	    obj.removeChild(obj_del);
	{rdelim}
	
	function selectGateway(gateway) {ldelim}
	    window.location = "index.php?module=QuickBooks&action=UpdateAddress&parenttab=Tools&gateway=" + gateway;
	{rdelim}
</script>