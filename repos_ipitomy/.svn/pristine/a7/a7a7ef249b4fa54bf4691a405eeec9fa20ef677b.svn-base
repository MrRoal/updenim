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
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Field Mapping</b></td>
			</tr>
			<tr>
				<td class="small" valign="top">Set field mapping</td>
			</tr>
			</table>
			<br><br>
			
			{if $GATEWAYS eq ''}
				You have to enable a gateway in <a href="index.php?module=QuickBooks&action=PaymentGatewayConfigure&parenttab=Tools">Payment Gateways Configure</a> section
			{else}
				<form action="index.php?module=QuickBooks&action=PaymentGatewayFieldMapping&parenttab=Tools" id="formPGC" method="POST" name="formPGC">
				Type&nbsp;
				<select name="gateway" onchange="selectGateway(this.value);">
					{foreach from=$GATEWAYS item=gateway}
					<option value="{$gateway.name}" {if $GATEWAY_SELECTED eq $gateway.name}selected{/if}>{$gateway.label}</option>
					{/foreach}
				</select>
				<input type="hidden" value="{$FIELD_COUNT}" id="field_count" name="field_count">
				<div id="list_fields" style="padding-top:10px;">
					<div id="field_0">
						<table><tr><td width="20px;">&nbsp;</td><td width="180px;">Vtiger Field</td><td width="10px;">&nbsp;</td><td width="180px;">Quickbooks Field</td></tr></table>
					</div>
					{if $FIELD_MAPPING neq ''}
						{$FIELD_MAPPING}
					{else}
						<div id="field_1">
							<table><tr><td width="20px;"><img border="0" title="Add more field" alt="Add more field" src="themes/softed/images/select.gif" onclick="addMoreField('list_fields');"></td><td width="180px;"><select style="width:180px;" name="vt_field_1">{$VTIGER_FIELD}</select></td><td width="10px;">&nbsp;</td><td width="180px;"><select name="qb_field_1" style="width:180px;">{$QUICKBOOKS_FIELD}</select></td></tr></table>
						</div>
					{/if}
				</div>
				<br>
				<input type="submit" style="width:70px" value="  Save  " name="saveGWFM" class="crmbutton small save" accesskey="S" title="Save [Alt+S]">
				</form>
			{/if}
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
		new_obj.innerHTML = '<table><tr><td width="20px;"><img border="0" title="Remove field" alt="Remove field" src="themes/images/clear_field.gif" onclick="deleteMoreField(\'list_fields\',\''+ new_obj.id +'\');"></td><td width="180px;"><select name="vt_field_' + cnt + '" style="width:180px;">{$VTIGER_FIELD}</select></td><td width="10px;">&nbsp;</td><td width="180px;"><select name="qb_field_' + cnt + '" style="width:180px;">{$QUICKBOOKS_FIELD}</select></td></tr></table>';	    
	    obj.appendChild(new_obj);
	{rdelim}
	
	function deleteMoreField(id, id_del) {ldelim}
	    var obj = document.getElementById(id);
	    var obj_del = document.getElementById(id_del);
	    
	    obj.removeChild(obj_del);
	{rdelim}
	
	function selectGateway(gateway) {ldelim}
	    window.location = "index.php?module=QuickBooks&action=PaymentGatewayFieldMapping&parenttab=Tools&gateway=" + gateway;
	{rdelim}
</script>