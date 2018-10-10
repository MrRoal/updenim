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
	    <div align=center>
	    <form action="index.php?module=QuickBooks&action=WebConnectorConfig&parenttab=Tools" id="formWCC" method="POST" name="formWCC">
	    	<br>
			<table border="0" cellpadding="5" cellspacing="0" width="95%">
			<tr>
				<td rowspan="2" valign="top" width="50"><img src="{'terms.gif'|@vtiger_imageurl:$THEME}" alt="{$MOD.LBL_MODULE_MANAGER}" title="{$MOD.LBL_MODULE_MANAGER}" border="0" height="48" width="48"></td>
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Web Connector and QBXML version</b></td>
			</tr>

			<tr>
				<td class="small" valign="top">Add application name and company file path, change Quickbooks SDK version</td>
			</tr>
			</table>

			<br>
			{*
			<table width="95%" cellspacing="0" cellpadding="2" border="0" class="small">
			    <tbody>
			    <tr>
				<td nowrap="" style="padding-right:20px">
					<!--
	             	<input type="button" style="width:70px" value="  Import  " name="button" class="crmbutton small save" accesskey="I" title="Import Commission" onclick="importCommissions();">
	             	-->
	            </td>
	            <td nowrap="" class="small" width="20%">
					Showing Records {$START} - {$END}
				</td>
				<!-- Page Navigation -->
				<td width="55%" nowrap="" align="left">
					<table cellspacing="0" cellpadding="0" border="0" class="small">
						<tbody><tr><td align="right" style="padding: 5px;">
						{if $PAGE == 1}
							<img border="0" align="absmiddle" src="themes/images/start_disabled.gif">&nbsp;<img border="0" align="absmiddle" src="themes/images/previous_disabled.gif">
						{else}
							<a href="javascript:;" onclick="navigatePage(1, 0);"><img border="0" align="absmiddle" src="themes/images/start_disabled.gif"></a>&nbsp;<a href="javascript:;" onclick="navigatePage({$PAGE}, -1);"><img border="0" align="absmiddle" src="themes/images/previous_disabled.gif"></a>
						{/if}
						&nbsp;<input type="text" onchange="navigatePage(this.value, 0);" style="width: 3em;margin-right: 0.7em;" value="{$PAGE}" name="pagenum" class="small"><span style="white-space: nowrap;" class="small" name="Potentials_listViewCountContainerName">of {$TOTAL_PAGES}</span>
						{if $PAGE == $TOTAL_PAGES}
							<img border="0" align="absmiddle" src="themes/images/next.gif">&nbsp;<img border="0" align="absmiddle" src="themes/images/end.gif">&nbsp;
						{else}
							<a title="Next" alt="Next" onclick="navigatePage({$PAGE}, 1);" href="javascript:;"><img border="0" align="absmiddle" src="themes/images/next.gif"></a>&nbsp;<a title="Last" alt="Last" onclick="navigatePage({$TOTAL_PAGES}, 0);" href="javascript:;"><img border="0" align="absmiddle" src="themes/images/end.gif"></a>&nbsp;
						{/if}
						</td></tr>
					</tbody></table>
                </td>
       		    </tr>
			</tbody></table>
			*}
			<table width="95%" cellspacing="1" cellpadding="4" border="0">
				<tr><td><b>Web Connector Configuration</b></td></tr>
			</table>
			<table width="95%" cellspacing="1" cellpadding="4" border="0" class="lvt small">
				<!-- Table Headers -->
				<tbody><tr>
					<!--
					<td class="lvtCol"><input type="checkbox" onclick="toggleSelect_ListView(this.checked,'modules_checked[]')" name="selectall"></td>
					-->
					<!--
					<td class="lvtCol">ID</td>
					<td class="lvtCol">Policy ID</td>
					<td class="lvtCol">Carrier</td>
					<td class="lvtCol">Created Time</td>
					<td class="lvtCol">Premium</td>
					<td class="lvtCol">Amount</td>
					-->
					{foreach from=$COMMHEADER item=val key=i}
					{if $i neq 'ID'}
					<td class="lvtCol">{$i}</td>
					{/if}
					{/foreach}
					<td class="lvtCol" width="10%">Action</td>
				</tr>
				{foreach from=$COMMISSIONS item=data}
				<tr bgcolor="white" id="row_{$val.module}" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
					<!--
					<td width="2%"><input type="checkbox" value="{$val.module}" id="{$val.module}" name="modules_checked[]" {if $val.qb eq 1}checked{/if}></td>
					-->
					{foreach from=$data item=val key=i}
					{if $i neq 'ID'}
						{if $i eq 'Active'}
							{if $val eq '1'}
								<td><b>Active</b></td>
							{else}
								<td>Inactive</td>
							{/if}
						{else}
							<td>{$val}</td>
						{/if}
					{/if}
					{/foreach}
					<td>
						<a href="index.php?module=QuickBooks&action=WebConnectorConfig&parenttab=Tools&id={$data.ID}&cmd=edit">edit</a>
						&nbsp;|&nbsp;
						<a href="index.php?module=QuickBooks&action=WebConnectorConfig&parenttab=Tools&id={$data.ID}&cmd=del">del</a>
						&nbsp;|&nbsp;
						{if $data.Active eq 1}
							<a href="index.php?module=QuickBooks&action=WebConnectorConfig&parenttab=Tools&id={$data.ID}&cmd=disable">disable</a>
						{else}
							<a href="index.php?module=QuickBooks&action=WebConnectorConfig&parenttab=Tools&id={$data.ID}&cmd=enable">enable</a>
						{/if}
					</td>
				</tr>
				{/foreach}
				<tr bgcolor="white" id="row_{$val.module}" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
					<td><input type="text" name="app_name" id="app_name" value="{$APP_NAME}" style="width: 98%"></td>
					<td colspan="2"><input type="text" name="company_file" id="company_file" value="{$COMPANY_FILE}" style="width: 99%"></td>
					<td>
						{if $CMD_ACTION eq 'Add'}
						<input type="submit" value="{$CMD_ACTION}" class="crmbutton small create" name="cmdAction" id="cmdAction">
						{else}
						<input type="hidden" id="id" name="id" value="{$ID}">
						<input type="submit" value="{$CMD_ACTION}" class="crmbutton small edit" name="cmdAction" id="cmdAction">
						<input type="button" value="Cancel" class="crmbutton small cancel" name="cmdCancel" id="cmdCancel" onclick="window.history.back();">
						{/if}
					</td>
				</tr>
			</tbody></table>

			<br><br>
			<table width="100%" border="0">
				<tr>
					<td>
						<table width="95%" cellspacing="1" cellpadding="4" border="0">
							<tr><td><b>QBXML version</b></td></tr>
						</table>
						<table width="95%" cellspacing="1" cellpadding="4" border="0">
							<tr valign="middle"><td>Current version:&nbsp;<input id="sdk_version" name="sdk_version" value="{$SDK_VERSION}" style="width:40px;text-align: left;">&nbsp;<input type="submit" value="Change" class="crmbutton small edit" name="cmdChange" id="cmdChange"></td></tr>
						</table>
					</td>
					<td>
						<table width="95%" cellspacing="1" cellpadding="4" border="0">
							<tr><td><b>Quickbooks Timezone</b></td></tr>
						</table>
						<table width="95%" cellspacing="1" cellpadding="4" border="0">
							<tr valign="middle"><td>Current timezone:&nbsp;<input id="qb_timezone" name="qb_timezone" value="{$QB_TIMEZONE}" style="width:180px;text-align: left;">&nbsp;<input type="submit" value="Change" class="crmbutton small edit" name="cmdChangeTimezone" id="cmdChangeTimezone"></td></tr>
						</table>
					</td>
					<td>
						<table>
							<tr>
								<td><b>Update password for Webconnector</b></td>
							</tr>
							<tr valign="middle">
								<td>New Password:
								<input type="password" id="qb_password" name="qb_password" value="" style="width:180px;text-align: left;">&nbsp;
								<input type="submit" value="Change" class="crmbutton small edit" name="cmdQBPassWord" id="cmdQBPassWord">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
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

{literal}
<script>
	function navigatePage(page, offset) {
		if(offset == 1) {
			page++;
		} else if(offset == -1) {
			page--;
		}
		$("status").style.display="inline";
		var data = "module=QuickBooks&action=QuickBooksAjax&file=ErrorLog&parenttab=Tools&page="+page;

		new Ajax.Request(
			'index.php',
				{
					queue: {position: 'end', scope: 'command'},
					method: 'post',
					postBody: data,
					onComplete: function(response) {
						document.getElementById('ErrorLogListViewContents').innerHTML = response.responseText;
						$("status").style.display="none";
					}
				}
		);
	}
</script>
{/literal}