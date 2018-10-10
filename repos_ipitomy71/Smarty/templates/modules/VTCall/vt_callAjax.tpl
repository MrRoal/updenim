<!--
/*
*
* THUY@BORU 20110217
* Improved Call List
*
*/
-->

     <form name="massdelete" method="POST">
    <input type="hidden" id="showStatus" name="showStatus" value="{$OPTIONSTARTUS}" />
    <input type="hidden" id="userget" name="userget" value="{$USERLIST}" />
     <input name='search_url' id="search_url" type='hidden' value='{$SEARCH_URL}'>
     <input name="idlist" id="idlist" type="hidden">
     <input name="change_owner" type="hidden">
     <input name="change_status" type="hidden">
     <input name="allids" type="hidden" value="{$ALLIDS}">
     <input name="selectedboxes" id="selectedboxes" type="hidden" value="{$SELECTEDIDS}">
     <input name="allselectedboxes" id="allselectedboxes" type="hidden" value="{$ALLSELECTEDIDS}">
     <input name="current_page_boxes" id="current_page_boxes" type="hidden" value="{$CURRENT_PAGE_BOXES}">

               <table border=0 cellspacing=1 cellpadding=0 width=100% class="lvtBg">
			    <!-- Tarang 13/09/2012 -->
			<!-- <tr>
			<td nowrap width="30%" align="center">
			<table border=0 cellspacing=0 cellpadding=0 class="small" style="width:50px;background-color:#CCC;border:1px solid #333;padding:5px;">
				<tr>
						<td width="20%"><input type="radio" name="usertype" id="usertype1" value="mine" onclick="quickFilters('')" {if isset($mineonly)}checked{/if}> {$MOD.LBL_MINE_ONLY}&nbsp;</td>
						<td width="20%"><input type="radio" name="usertype" id="usertype2" value="all"onclick="quickFilters('')" {if isset($allusers)}checked{/if}> {$MOD.LBL_ALL_USERS}&nbsp;</td>
			   </tr>
			</table>
			 </td>
			 </tr>-->
		<!-- End Tarang  13/09/2012 -->
	            <tr>
		      <td>
		         <table border=0 cellspacing=0 cellpadding=2 width=100% class="small">
			      <tr>
				 <td style="padding-right:20px" nowrap>
                                 {foreach key=button_check item=button_label from=$BUTTONS}
                                        {if $button_check eq 'del'}
                                             <input class="crmbutton small delete" type="button" value="{$button_label}" onClick="return massDelete('{$MODULE}')"/>
                                        {elseif $button_check eq 's_mail'}
                                             <input class="crmbutton small edit" type="button" value="{$button_label}" onClick="return eMail('{$MODULE}',this);"/>
                                        {elseif $button_check eq 's_cmail'}
                                             <input class="crmbutton small edit" type="submit" value="{$button_label}" onClick="return massMail('{$MODULE}')"/>
                                        {elseif $button_check eq 'c_status'}
                                             <input class="crmbutton small edit" type="button" value="{$button_label}" onClick="return change(this,'changestatus')"/>
					{elseif $button_check eq 'c_owner'}
						{if $MODULE neq 'Documents' && $MODULE neq 'Products' && $MODULE neq 'Faq' && $MODULE neq 'Vendors' && $MODULE neq 'PriceBooks'}
						     <input class="crmbutton small edit" type="button" value="{$button_label}" onClick="return change(this,'changeowner')"/>
                                                {/if}
                                        {/if}

                                 {/foreach}
                    </td>
					<td class="small" nowrap>
						{$recordListRange}
						{if $LISTENTITY|@count > 0}
							of <input class="crmbutton small create" type="button" value="Total" onClick="get_total_vtcall(this,'{$TOTAL}')"/>
							<select onChange="changeListViewVTCall(this,'{$MODULE}','{$CATEGORY}')" class="small" id="viewnum" name="viewnum">
								<option value="25" {if $VIEWNUM eq '25'} selected="selected" {/if}>25</option>
								<option value="50" {if $VIEWNUM eq '50'} selected="selected" {/if}>50</option>
								<option value="75" {if $VIEWNUM eq '75'} selected="selected" {/if}>75</option>
								<option value="100" {if $VIEWNUM eq '100'} selected="selected" {/if}>100</option>
							</select>
						{/if}
					</td>
					<!-- Page Navigation -->
					<td nowrap width="30%" align="center">
						<table border=0 cellspacing=0 cellpadding=0 class="small">
							<tr>{$NAVIGATION}</tr>
						</table>
	                		</td>
					<!-- Ezri April 2nd 2012, ::: To Print New Options to Filter data --- HICCUP-->
                                        <td>
                                                {if $RF_COUNT > 0}
                                                <table border=0 cellspacing=0 cellpadding=0 class="small" style="width:{$RF_TABLE_WIDTH}px;background-color:#CCC;border:1px solid #333;padding:5px;">
                                                        <tr>
														<input type="hidden" name="callingOption" id="callingOption" value="all_dates"  />
														<input type="hidden" id="selectedOption" value="{$selectedOption}"  />
														{if $RADIO_FILTER.all_dates eq 'yes'}
                                                                <td align="center" width="{$RF_TD_WIDTH}px"><input type="radio" name="dateRange1" id="dateRange1" value="all_dates" onclick="quickFilters('all_dates')" {if isset($optall)}checked{/if}><br>{$MOD.LBL_ALL_DATES}</td>
                                                        {/if}
                                                        {if $RADIO_FILTER.today eq 'yes'}
                                                                <td align="center" width="{$RF_TD_WIDTH}px"><input type="radio" name="dateRange1" id="dateRange2" value="today" onclick="quickFilters('today')" {if isset($opttoday)}checked{/if}><br>{$MOD.LBL_ALL_TODAY}</td>
                                                        {/if}
														{if $RADIO_FILTER.yesterday eq 'yes'}
                                                                <td align="center" width="{$RF_TD_WIDTH}px"><input type="radio" name="dateRange1" id="dateRange3" value="yesterday" onclick="quickFilters('yesterday')" {if isset($optyesterday)}checked{/if}><br>{$MOD.LBL_ALL_YESTERDAY}</td>
                                                        {/if}
                                                        {if $RADIO_FILTER.today_and_prior eq 'yes'}
                                                                <td align="center" width="100px"><input type="radio" name="dateRange1" id="dateRange4" value="today_and_prior" onclick="quickFilters('today_and_prior')" {if isset($opttoday_and_prior)}checked{/if}><br>Today And Prior</td>
                                                        {/if}

                                                        {if $RADIO_FILTER.last_7_days eq 'yes'}
                                                                <td align="center" width="{$RF_TD_WIDTH}px"><input type="radio" name="dateRange1" id="dateRange5" value="last_7_days" onclick="quickFilters('last_7_days')" {if isset($optlast_7_days)}checked{/if}><br>Last 7 Days</td>
                                                        {/if}
                                                        {if $RADIO_FILTER.tomorrow eq 'yes'}
                                                                <td align="center" width="{$RF_TD_WIDTH}px"><input type="radio" name="dateRange1" id="dateRange6" value="tomorrow" onclick="quickFilters('tomorrow')" {if isset($opttomorrow)}checked{/if}><br>{$MOD.LBL_ALL_TOMORROW}</td>
                                                    	{/if}
														{if $RADIO_FILTER.this_week eq 'yes'}
                                                                <td align="center" width="{$RF_TD_WIDTH}px"><input type="radio" name="dateRange1" id="dateRange7" value="thisweek" onclick="quickFilters('thisweek')" {if isset($optthisweek)}checked{/if}><br>{$MOD.LBL_ALL_THIS_WEEK}</td>
                                                        {/if}
                                                        {if $RADIO_FILTER.next_week eq 'yes'}
                                                                <td align="center" width="{$RF_TD_WIDTH}px"><input type="radio" name="dateRange1" id="dateRange8" value="nextweek" onclick="quickFilters('nextweek')" {if isset($optnextweek)}checked{/if}><br>{$MOD.LBL_ALL_NEXT_WEEK}</td>
                                                        {/if}
                                                        </tr>
														<tr><td colspan="5" align="center">
															<div id="radioMessages" style='display:none; width:100%;text-align:center;color:red;font-weight:bold'></div>
														</td></tr>
                                                </table>
                                            {/if}
                                        </td>
                                        <!-- End of changes by Ezri -->
<!--
/*
*
* THUY@BORU 20110221
* Improved Call List
*
*/

-->
				 <td width="100%" align="right">
				   <table border=0 cellspacing=0 cellpadding=0 class="small">
					<tr>
						<td>{$APP.LBL_VIEW}</td>
						<td style="padding-left:5px;padding-right:5px">
                            <SELECT NAME="viewname" id="viewname" class="small" onChange="showDefaultCustomViewVTCall(this,'{$MODULE}','{$CATEGORY}')">{$CUSTOMVIEW_OPTION}</SELECT>
                        </td>
                        <td>
                            {if $ALL eq 'All'}
								<a href="index.php?module={$MODULE}&action=EditCustomView&parenttab={$CATEGORY}">{$APP.LNK_CV_CREATEVIEW}</a>
								<span class="small">|</span>
								<span class="small" disabled>{$APP.LNK_CV_EDIT}</span>
								<span class="small">|</span>
                            	<span class="small" disabled>{$APP.LNK_CV_DELETE}</span></td>
						    {else}
								<a href="index.php?module={$MODULE}&action=EditCustomView&parenttab={$CATEGORY}">{$APP.LNK_CV_CREATEVIEW}</a>
								<span class="small">|</span>
                                <a href="index.php?module={$MODULE}&action=EditCustomView&record={$VIEWID}&parenttab={$CATEGORY}">{$APP.LNK_CV_EDIT}</a>
                                <span class="small">|</span>
								<a href="javascript:confirmdelete('index.php?module={$MODULE}&action=DeleteCustomView&record={$VIEWID}&parenttab={$CATEGORY}')">{$APP.LNK_CV_DELETE}</a>
						    {/if}
							{if $CUSTOMVIEW_PERMISSION.ChangedStatus neq '' && $CUSTOMVIEW_PERMISSION.Label neq ''}
								<span class="small">|</span>
							   		<a href="#" id="customstatus_id" onClick="ChangeCustomViewStatus({$VIEWID},{$CUSTOMVIEW_PERMISSION.Status},{$CUSTOMVIEW_PERMISSION.ChangedStatus},'{$MODULE}','{$CATEGORY}')">{$CUSTOMVIEW_PERMISSION.Label}</a>
							{/if}
						</td>
					</tr>
				   </table>
				 </td>
<!--
/*
*
* BLOCK END
*
*/
-->
       		       </tr>
			 </table>
<!--
/*
*
* THUY@BORU 20110511
* VT Call Filter Issue
*
*/
-->

                         <div  class="calDIV" style="overflow:auto;">
			 <table border=0 cellspacing=1 cellpadding=3 width=100% class="lvt small" class="small">
			      <tr>
             			 <td class="lvtCol"></td>
				 {foreach name="listviewforeach" item=header from=$LISTHEADER}
        			 <td class="lvtCol">{$header}</td>
			         {/foreach}
					  <td class="lvtCol">Action</td>
			      </tr>
			      {foreach item=entity key=entity_id from=$LISTENTITY}

				 {foreach item=value key=check from=$entity}
                                     {if ($check eq 'contactid') and (trim($check) neq "") }
                                        {assign var=contactid value=$value}
                                    {elseif ($check eq 'contactid') and (trim($check) eq "")}
                                        {assign var=contactid value=''}
                                    {/if}

                                    {if ($check eq 'accountid') and (trim($check) neq "") }
                                        {assign var=accountid value=$value}
                                    {elseif ($check eq 'accountid') and (trim($check) eq "")}
                                        {assign var=accountid value=''}
                                    {/if}
                                    {if ($check eq 'entityid') and (trim($check) neq "") }
                                        {assign var=entityid value=$value}
                                    {elseif ($check eq 'entityid') and (trim($check) eq "")}
                                        {assign var=entityid value=''}
                                    {/if}

				    {if ($check eq 'potentialid') and (trim($check) neq "")}
                                        {assign var=potentialid value=$value}
                                    {elseif ($check eq 'potentialid') and (trim($check) eq "")}
                                        {assign var=potentialid value=''}
                                    {/if}

                                    {if ($check eq 'DisplayFor') and (trim($check) neq "") }
                                        {assign var=DisplayFor value=$value}
                                    {elseif ($check eq 'DisplayFor') and (trim($check) eq "")}
                                        {assign var=DisplayFor value=''}
				    {elseif ($check eq 'potentials') and (trim($check) neq "")}
                                        {assign var=Potentials value=$value}
                                    {elseif ($check eq 'potentials') and (trim($check) eq "")}
                                        {assign var=Potentials value=''}
				    {elseif ($check eq 'accounts') and (trim($check) neq "")}
					{assign var=PotentialAccounts value=$value}
				    {elseif ($check eq 'accounts') and (trim($check) eq "")}
					{assign var=PotentialAccounts value=''}
				    {elseif ($check eq 'contacts') and (trim($check) neq "")}
                                        {assign var=PotentialContacts value=$value}
                                    {elseif ($check eq 'contacts') and (trim($check) eq "")}
                                        {assign var=PotentialContacts value=''}
                                    {/if}
                                 {/foreach}
<!--<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_{$entity_id}">-->
{if $entity.line_color.line_color neq '#FFFFFF'}		      
  	<style>
		.vtcall_lv_{$entity_id} a {ldelim}
			color: {$entity.line_color.text_color};
		{rdelim}
	</style>
{/if}

<tr bgcolor="{$entity.line_color.line_color}" class="vtcall_lv_{$entity_id}" {if $entity.line_color.line_color neq '#FFFFFF'} style="color:{$entity.line_color.text_color};" onMouseOut="this.style.color='{$entity.line_color.text_color}';this.className='vtcall_lv_{$entity_id}';" {else}  onMouseOut="this.style.color='#000000';this.className='vtcall_lv_{$entity_id}';"  {/if} onMouseOver="this.className='lvtColDataHover'; this.style.color='#000000';" id="row_{$entity_id}">
{if $DisplayFor neq ''}
	{if $DisplayFor eq 'Accounts'}
		<td width="2%"><input type='hidden' value='{$Potentials}' id='pot_{$entity_id}'><a href="javascript:showHideDetailViewVTCallAccounts('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$accountid}','{$DATEFORMAT_VTCALL}','{$VIEWID}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>
	{elseif $contactid != '' }
		<td width="2%"><input type='hidden' value='{$Potentials}' id='pot_{$entity_id}'><a href="javascript:showHideDetailViewVTCall('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$contactid}','{$DATEFORMAT_VTCALL}','{$VIEWID}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>
	{elseif $DisplayFor eq 'Leads'}
		<td width="2%"><a href="javascript:showHideDetailViewVTCallLeads('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$accountid}','{$DATEFORMAT_VTCALL}','{$VIEWID}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>
	{elseif $DisplayFor eq 'Quotes'}
        <td width="2%"><a href="javascript:showHideDetailViewVTCallQuotes('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$quoteid}','{$DATEFORMAT_VTCALL}','{$VIEWID}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>
    {elseif $DisplayFor eq 'SalesOrder'}
        <td width="2%"><a href="javascript:showHideDetailViewVTCallSalesOrder('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$quoteid}','{$DATEFORMAT_VTCALL}','{$VIEWID}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
    {elseif $DisplayFor eq 'Invoice'}
        <td width="2%"><a href="javascript:showHideDetailViewVTCallInvoice('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$quoteid}','{$DATEFORMAT_VTCALL}','{$VIEWID}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
        </td>
	{elseif $DisplayFor eq 'Potentials'}
		<td width="2%">
			{if $check neq ""}
				<input type='hidden' value='{$PotentialAccounts}' id='potAcc_{$entity_id}'>
			{/if}
			{if $check neq "accounts"}
				<input type='hidden' value='{$PotentialContacts}' id='potCon_{$entity_id}'>
			{else}
			<input type='hidden' value='' id='potCon_{$entity_id}'>
			{/if}
				<a href="javascript:showHideDetailViewVTCallPotentials('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$potentialid}','{$DATEFORMAT_VTCALL}','{$VIEWID}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>
	{else}
		<td width="2%"><a href="javascript:showHideDetailViewVTCall('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$entityid}','{$DATEFORMAT_VTCALL}','{$VIEWID}','{$DisplayFor}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
        </td>
	{/if}
{else}
	<td width="2%">&nbsp;</td>
{/if}
{foreach item=data key=number from=$entity}
{if $number eq '0'}
<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">{$data}&nbsp;</td>
{/if}
{if $number neq 'contactid' }
{if $number eq 'accountid' or $number eq 'DisplayFor' or $number eq 'potentials' or $number eq 'potentialid' or $number eq 'accounts' or $number eq 'contacts' or $number eq 'line_color' or $number eq 'entityid'}
{else}
<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">{$data}&nbsp;</td>
{/if}
{/if}
{/foreach}
   <td><a href='javascript:confirmdelete("index.php?module=Calendar&action=Delete&record={$entity_id}&return_module=VTCall&return_action=index&viewname={$VIEWID}")'>Del</a> <span style="float:right"> <a href="javascript:void(0)" onclick="updateActivityDate('{$entity_id}')">+1</a></span></td>
</tr>
                  <tr id="tbc{$entity_id}" bgcolor=white style=" display:none ">
                    <td colspan="20">
                        <div id="divc{$entity_id}">
                        </div>
                    </td>
                  </tr>
                  <tr id="tbl{$entity_id}" bgcolor=white style=" display:none ">
                    <td colspan="20">
                        <div id="div{$entity_id}">
                        </div>
                    </td>
                  </tr>
                </tr>
			      {foreachelse}
				<tr><td style="background-color:#efefef;height:340px" align="center" colspan="{$smarty.foreach.listviewforeach.iteration+2}">
						<div style="border: 3px solid rgb(153, 153, 153); background-color: rgb(255, 255, 255); width: 45%; position: relative; z-index: 10000000;">
							{assign var=vowel_conf value='LBL_A'}
							{assign var=MODULE_CREATE value=$SINGLE_MOD}

							{if $CHECK.EditView eq 'yes' && $MODULE neq 'Emails' && $MODULE neq 'Webmails'}

							<table border="0" cellpadding="5" cellspacing="0" width="98%">
							<tr>
								<td rowspan="2" width="25%"><img src="{'empty.jpg'|@vtiger_imageurl:$THEME}" height="60" width="61"></td>
								<td style="border-bottom: 1px solid rgb(204, 204, 204);" nowrap="nowrap" width="75%"><span class="genHeaderSmall">{$APP.LBL_NO} {$APP.ACTIVITIES} {$APP.LBL_FOUND} !</span></td>

							</tr>
							<tr>
							<td class="small" align="left" nowrap="nowrap">{$APP.LBL_YOU_CAN_CREATE} {$APP.$vowel_conf} {$APP.$MODULE_CREATE} {$APP.LBL_NOW}. {$APP.LBL_CLICK_THE_LINK}:<br>
									&nbsp;&nbsp;-<a href="index.php?module={$MODULE}&action=EditView&return_module=Calendar&activity_mode=Events&return_action=DetailView&parenttab={$CATEGORY}">{$APP.LBL_CREATE} {$APP.LBL_AN} {$APP.Event}</a><br>
									&nbsp;&nbsp;-<a href="index.php?module={$MODULE}&action=EditView&return_module=Calendar&activity_mode=Task&return_action=DetailView&parenttab={$CATEGORY}">{$APP.LBL_CREATE} {$APP.LBL_A} {$APP.Todo}</a>
								</td>
							</tr>
							</table>
							{else}
							<table border="0" cellpadding="5" cellspacing="0" width="98%">
							<tr>
								<td rowspan="2" width="25%"><img src="{'empty.jpg'|@vtiger_imageurl:$THEME}" height="60" width="61"></td>
								<td style="border-bottom: 1px solid rgb(204, 204, 204);" nowrap="nowrap" width="75%"><span class="genHeaderSmall">{$APP.LBL_NO} {$APP.ACTIVITIES} {$APP.LBL_FOUND} !</span></td>
							</tr>
							<tr>
								<td class="small" align="left" nowrap="nowrap">{$APP.LBL_YOU_ARE_NOT_ALLOWED_TO_CREATE} {$APP.$vowel_conf} {$APP.$MODULE_CREATE}<br>
								</td>
							</tr>
							</table>
							{/if}
						</div>
				</td></tr>
			      {/foreach}
			 </table>
			 </div>
<!--
/*
*
* BLOCK END
*
*/
-->
			 <table border=0 cellspacing=0 cellpadding=2 width=100%>
			      <tr>
				 <td style="padding-right:20px" nowrap>
                                 {foreach key=button_check item=button_label from=$BUTTONS}
                                        {if $button_check eq 'del'}
                                            <input class="crmbutton small delete" type="button" value="{$button_label}" onClick="return massDelete('{$MODULE}')"/>
                                        {elseif $button_check eq 's_mail'}
                                             <input class="crmbutton small edit" type="button" value="{$button_label}" onClick="return eMail('{$MODULE}',this)"/>
                                        {elseif $button_check eq 's_cmail'}
                                             <input class="crmbutton small edit" type="submit" value="{$button_label}" onClick="return massMail('{$MODULE}')"/>
                                        {elseif $button_check eq 'c_status'}
                                             <input class="crmbutton small edit" type="button" value="{$button_label}" onClick="return change(this,'changestatus')"/>
					{elseif $button_check eq 'c_owner'}
				                {if $MODULE neq 'Documents' && $MODULE neq 'Products' && $MODULE neq 'Faq' && $MODULE neq 'Vendors' && $MODULE neq 'PriceBooks'}
                                                     <input class="crmbutton small edit" type="button" value="{$button_label}" onClick="return change(this,'changeowner')"/>
                                                {/if}
                                        {/if}

                                 {/foreach}
                    </td>
					<td class="small" nowrap>
						{$recordListRange}
						{if $LISTENTITY|@count > 0}
							of <input class="crmbutton small create" type="button" value="Total" onClick="get_total_vtcall(this,'{$TOTAL}')"/>
							<select onChange="changeListViewVTCall(this,'{$MODULE}','{$CATEGORY}')" class="small" id="viewnum" name="viewnum">
								<option value="25" {if $VIEWNUM eq '25'} selected="selected" {/if}>25</option>
								<option value="50" {if $VIEWNUM eq '50'} selected="selected" {/if}>50</option>
								<option value="75" {if $VIEWNUM eq '75'} selected="selected" {/if}>75</option>
								<option value="100" {if $VIEWNUM eq '100'} selected="selected" {/if}>100</option>
							</select>
						{/if}
					</td>
					<!-- Page Navigation -->
					<td nowrap width="30%" align="center">
						<table border=0 cellspacing=0 cellpadding=0 class="small">
							<tr>{$NAVIGATION}</tr>
						</table>
	                </td>
				 <td align="right" width=100%>
				   <table border=0 cellspacing=0 cellpadding=0 class="small">
					<tr>
                                           {$WORDTEMPLATEOPTIONS}{$MERGEBUTTON}
					</tr>
				   </table>
				 </td>
			      </tr>
       		    </table>
		       </td>
		   </tr>
	    </table>
</form>

<!--
/*
*
* BLOCK END
*
*/
-->
