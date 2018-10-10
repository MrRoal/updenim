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
<div id="ErrorLogListViewContents">
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
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Configure</b></td>
			</tr>
			<tr>
				<td class="small" valign="top">Turn gateway off and on</td>
			</tr>
			</table>
			<br>
			
			<form action="index.php?module=QuickBooks&action=PaymentGatewayConfigure&parenttab=Tools" id="formPGC" method="POST" name="formPGC">
			<table width="30%" cellspacing="1" cellpadding="4" border="0" class="lvt small">
				<!-- Table Headers -->
				<tbody><tr>
					<td class="lvtCol">Gateway</td>
					<td class="lvtCol">Enabled</td>					
				</tr>
				{foreach from=$GATEWAYS item=gateway}				
				<tr bgcolor="white" id="row_{$val.module}" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">		
					<td>{$gateway.label}</td>
					<td><input type="checkbox" name="{$gateway.name}" {if $gateway.enabled neq ''}checked{/if}></td>
				</tr>
				{/foreach}
			</tbody></table>
			<br>
			<input type="submit" style="width:70px" value="  Save  " name="saveGateway" class="crmbutton small save" accesskey="S" title="Save [Alt+S]">
			</form>
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
</div>