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
	    	<br>
			<table border="0" cellpadding="5" cellspacing="0" width="95%">
			<tr>
				<td rowspan="2" valign="top" width="50"><img src="{'set-IcoLoginHistory.gif'|@vtiger_imageurl:$THEME}" alt="{$MOD.LBL_MODULE_MANAGER}" title="{$MOD.LBL_MODULE_MANAGER}" border="0" height="48" width="48"></td>
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Quickbooks CRM Map</b></td>
			</tr>

			<tr>
				<td class="small" valign="top">Map record on QuickBooks with vTiger</td>
			</tr>
			</table>
					
			<br>			
			<table width="95%" cellspacing="0" cellpadding="2" border="0" class="small">
			    <tr>				
					<td nowrap="" style="padding-right:20px"></td>
		            <td nowrap="" class="small" width="20%">Showing Records {$START} - {$END}</td>
					<!-- Page Navigation -->
					<td width="55%" nowrap="" align="left">
						<table cellspacing="0" cellpadding="0" border="0" class="small">
							<tr>
								<td align="right" style="padding: 5px;">
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
								</td>
							</tr>
						</table>
	                </td>					
       		    </tr>
			</table>
			<table width="95%" cellspacing="1" cellpadding="4" border="0" class="lvt small">
				<!-- Table Headers -->
				<tr>
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
					<td class="lvtCol">{$i}</td>
					{/foreach}
				</tr>
				{foreach from=$COMMISSIONS item=data}
				<tr bgcolor="white" id="row_{$val.module}" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
					<!--
					<td width="2%"><input type="checkbox" value="{$val.module}" id="{$val.module}" name="modules_checked[]" {if $val.qb eq 1}checked{/if}></td>
					-->
					{foreach from=$data item=val key=i}
					<td>{$val}</td>
					{/foreach}
				</tr>		
				{/foreach}									
			</table>
			
			<br>			
			<table width="95%" cellspacing="0" cellpadding="2" border="0" class="small">
			    <tr>				
					<td nowrap="" style="padding-right:20px"></td>
		            <td nowrap="" class="small" width="20%">Showing Records {$START} - {$END}</td>
					<!-- Page Navigation -->
					<td width="55%" nowrap="" align="left">
						<table cellspacing="0" cellpadding="0" border="0" class="small">
							<tr>
								<td align="right" style="padding: 5px;">
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
		var data = "module=QuickBooks&action=QuickBooksAjax&file=QuickbooksCrmMap&parenttab=Tools&page="+page;
	
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