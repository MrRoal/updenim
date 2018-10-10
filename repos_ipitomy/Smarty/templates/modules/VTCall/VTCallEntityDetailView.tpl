<link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
<script type="text/javascript" src="jscalendar/calendar.js"></script>
<script type="text/javascript" src="jscalendar/lang/calendar-en.js"></script>
<script type="text/javascript" src="jscalendar/calendar-setup.js"></script>

<script type="text/javascript" src="include/js/reflection.js"></script>
<script type="text/javascript" src="include/js/ListView.js"></script>
<script type="text/javascript" src="include/js/general.js"></script>
<script type="text/javascript" src="include/js/Merge.js"></script>  <!--added by ravish on 9/3/2010-->
<script src="include/scriptaculous/scriptaculous.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript" src="include/js/dtlviewajax.js"></script>
<script type="text/javascript" src="include/js/ZeroClipboard.js"></script>
<script>

var gVTModule = '{$smarty.request.module|@vtlib_purify}';

</script>


<!-- Contents -->
<table border=0 cellspacing=0 cellpadding=0 width=100% align=center>
<tr>
	<td class="" valign=top width=100%>
		<!-- PUBLIC CONTENTS STARTS-->
		<!-- Account details tabs -->
		<table border=0 cellspacing=0 cellpadding=0 width=100% align=center>
		<tr>
			<td valign=top align=left >
				 <table border=0 cellspacing=0 cellpadding=3 width=100% class="" style="border-bottom:0;">
				<tr>

					<td align=left>
					<!-- content cache -->


				<table border=0 cellspacing=0 cellpadding=0 width=100%>
                <tr>
					<td style="padding:3px">
					<!-- Command Buttons -->
				  	<table border=0 cellspacing=0 cellpadding=0 width=100%>
							 <!-- NOTE: We should avoid form-inside-form condition, which could happen when
								Singlepane view is enabled. -->
							 <form action="index.php" method="post" name="DetailView" id="form">
							{include file='DetailViewHidden.tpl'}

							  <!-- Start of File Include by SAKTI on 10th Apr, 2008 -->
							 {include_php file="./include/DetailViewBlockStatus.php"}
							 <!-- Start of File Include by SAKTI on 10th Apr, 2008 -->

							{foreach key=header item=detail from=$BLOCKS}
							<!-- Detailed View Code starts here-->
							{assign var=str_header value=$SINGLE_MOD}
							{assign var=str_header value=$str_header|cat:' Information'}
							<table border=0 cellspacing=0 cellpadding=0 width=100% class="small">

						     <tr>{strip} 
						     <td colspan=4 class="dvInnerHeader">

							<div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatusVTCall('tbl{$ContactID}{$EVENTID}{$header|replace:' ':''}','aid{$ContactID}{$EVENTID}{$header|replace:' ':''}','{$IMAGE_PATH}');">
							{if $BLOCKINITIALSTATUS[$str_header] eq 1}
								<img id="aid{$ContactID}{$EVENTID}{$header|replace:' ':''}" src="{'activate.gif'|@vtiger_imageurl:$THEME}" style="border: 0px solid #000000;" alt="Hide" title="Hide"/>
							{else}
							<img id="aid{$ContactID}{$EVENTID}{$header|replace:' ':''}" src="{'inactivate.gif'|@vtiger_imageurl:$THEME}" style="border: 0px solid #000000;" alt="Display" title="Display"/>
							{/if}
								</a></div><b>&nbsp;
						        	{$header}
	  			     			</b></div>
						     </td>{/strip}
					             </tr>

							</table>

							{if $BLOCKINITIALSTATUS[$str_header] eq 1}
							<div style="width:auto;display:block;" id="tbl{$ContactID}{$EVENTID}{$header|replace:' ':''}" >
							{else}
							<div style="width:auto;display:none;" id="tbl{$ContactID}{$EVENTID}{$header|replace:' ':''}" >
							{/if}
							<table border=0 cellspacing=0 cellpadding=0 width="100%" class="small">

                                                    <!--counter assign=k start=0-->
                                                    <!--assign var="descSet" value="No"-->
                                                    {foreach item=detail from=$detail}
                                                     <tr style="height:25px">
                                                     <!--math equation="n % 2" n=$k assign="nth"
                                                     if $nth eq 0 and $descSet eq 'No'
                                                         <tr style="height:25px">
                                                     /if-->
							{foreach key=label item=data from=$detail}
							   {assign var=keyid value=$data.ui}
							   {assign var=keyval value=$data.value}
							   {assign var=keytblname value=$data.tablename}
							   {assign var=keyfldname value=$data.fldname}
							   {assign var=keyfldid value=$data.fldid}
							   {assign var=keyoptions value=$data.options}
							   {assign var=keysecid value=$data.secid}
							   {assign var=keyseclink value=$data.link}
							   {assign var=keycursymb value=$data.cursymb}
							   {assign var=keysalut value=$data.salut}
							   {assign var=keyaccess value=$data.notaccess}
							   {assign var=keycntimage value=$data.cntimage}
							   {assign var=keyadmin value=$data.isadmin}
							   {assign var=display_type value=$data.displaytype}
							   {assign var=keyadminToGo value=$data.isadmin}
                           {if $label ne ''}
                                <!--if $keyfldname eq 'account_no' or $keyfldname eq 'fax' or $keyfldname eq 'phone' or $keyfldname eq 'email1' or $keyfldname eq 'assigned_user_id'-->
                                    {if $keycntimage ne ''}
                                        <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value={$keyadmin}></input>{$keycntimage}</td>
                                    {elseif $keyid eq '71' || $keyid eq '72'}<!-- Currency symbol -->
                                        <td class="dvtCellLabel" align=right width=25%>{$label}<input type="hidden" id="hdtxt_IsAdmin" value={$keyadmin}></input> ({$keycursymb})</td>
                                    {else}
                                        <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value={$keyadmin}></input>{$label}</td>
                                    {/if}

                                   <!-- <td width=25% class="dvtCellInfo" align="left" id="mouseArea_{$label}">{$data.value}</td>-->
								  {if $keyid eq '1' || $keyid eq 2 || $keyid eq '11' || $keyid eq '7' || $keyid eq '9' || $keyid eq '55' || $keyid eq '71' || $keyid eq '72' || $keyid eq '103' || $keyid eq '255' || $keyid eq '13' || $keyid eq '104' || $keyid eq '21' || $keyid eq '24' || $keyid eq '22'} <!--TextBox-->
									  <td width=25% class="dvtCellInfo" align="left" id="mouseArea_{$ID}_{$EVENTID}_{$label}" onmouseover="hndMouseOverVTCall({$keyid},'{$label}','{$ID}','{$EVENTID}');" onmouseout="fnhide('crmspanid');">&nbsp;
						{if $keyid eq 11}
                   				<span id="dtlview_{$ID}_{$EVENTID}_{$label}"><a href='javascript:;' onclick='startCall("{$data.value}", "{$ID}")'>{$data.value}</a></span>
						{else}
				                  <span id="dtlview_{$ID}_{$EVENTID}_{$label}">{$data.value}</span>
				       {/if}
									 <div id="editarea_{$ID}_{$EVENTID}_{$label}" style="display:none;">
									  {if $keyid eq '13' || $keyid eq '104'} <!--Email-->
									  <input class="detailedViewTextBox" onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'" type="text" id="txtbox_{$ID}_{$EVENTID}_{$label}" name="{$keyfldname}" maxlength='100' value="{$data.value|strip_tags}"></input>
									  {elseif $keyid eq '21' || $keyid eq '24' || $keyid eq '22'} <!--TextArea/Street-->
                                        <textarea id="txtbox_{$ID}_{$EVENTID}_{$label}" name="{$keyfldname}"  class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'"onBlur="this.className='detailedViewTextBox'" rows=2>{$data.value|regex_replace:"/<br\s*\/>/":""}</textarea>
									  {else}
										<input class="detailedViewTextBox" onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'" type="text" id="txtbox_{$ID}_{$EVENTID}_{$label}" name="{$keyfldname}" maxlength='100' value="{$data.value}"></input>
									  {/if}
									  <br><input name="button_{$label}" type="button" class="crmbutton small save" value="{$APP.LBL_SAVE_LABEL}" onclick="dtlViewAjaxSaveVTCallPotential('{$label}','{$MODULE}',{$keyid},'{$keytblname}','{$keyfldname}','{$ID}','{$EVENTID}');fnhide('crmspanid');"/> {$APP.LBL_OR}
									 <a href="javascript:;" onclick="hndCancel('dtlview_{$ID}_{$EVENTID}_{$label}','editarea_{$ID}_{$EVENTID}_{$label}','{$label}')" class="link">{$APP.LBL_CANCEL_BUTTON_LABEL}</a>
                                </div></td>
								{elseif $keyid eq '15' or $keyid eq '16'}
						{foreach item=arr from=$keyoptions}
							{if $arr[0] eq $APP.LBL_NOT_ACCESSIBLE && $arr[2] eq 'selected'}
								{assign var=keyval value=$APP.LBL_NOT_ACCESSIBLE}
								{assign var=fontval value='red'}
							{else}
						        	{assign var=fontval value=''}
							{/if}
						{/foreach}
						 <td width=25% class="dvtCellInfo" align="left" id="mouseArea_{$ID}_{$EVENTID}_{$label}" onmouseover="hndMouseOverVTCall({$keyid},'{$label}','{$ID}','{$EVENTID}');" onmouseout="fnhide('crmspanid');">
							<span id="dtlview_{$ID}_{$EVENTID}_{$label}">
								<font color="{$fontval}">
									{if $APP.$keyval!=''}{$APP.$keyval}{elseif $MOD.$keyval!=''}{$MOD.$keyval}{else}{$keyval}{/if}
								</font>
							</span>
							<div id="editarea_{$ID}_{$EVENTID}_{$label}" style="display:none;">
								<select id="txtbox_{$ID}_{$EVENTID}_{$label}" name="{$keyfldname}" class="small">
							        {foreach item=arr from=$keyoptions}
									{if $arr[0] eq $APP.LBL_NOT_ACCESSIBLE}
							                	<option value="{$arr[0]}" {$arr[2]}>{$arr[0]}</option>
									{else}
							        		<option value="{$arr[1]}" {$arr[2]}>
										{$arr[0]}
										</option>
									{/if}
								{/foreach}
								</select>
							        <br>
								<input name="button_{$label}" type="button" class="crmbutton small save" value="{$APP.LBL_SAVE_LABEL}" onclick="dtlViewAjaxSaveVTCallPotential('{$label}','{$MODULE}',{$keyid},'{$keytblname}','{$keyfldname}','{$ID}','{$EVENTID}');fnhide('crmspanid');"/> {$APP.LBL_OR}
									 <a href="javascript:;" onclick="hndCancel('dtlview_{$ID}_{$EVENTID}_{$label}','editarea_{$ID}_{$EVENTID}_{$label}','{$label}')" class="link">{$APP.LBL_CANCEL_BUTTON_LABEL}</a>
									{$APP.LBL_CANCEL_BUTTON_LABEL}
								</a>
							</div></td>
								{else}
										<td width=25% class="dvtCellInfo" align="left" id="mouseArea_{$label}">{$data.value}</td>
									{/if}






                                <!--/if-->
			   {/if}
                                   {/foreach}
                                   </tr>
                                                      
						   {/foreach}


						</form>
							<tr height="5px"><td colspan="4">&nbsp;</td></tr>
                                 <tr>{strip}
                                     <td colspan=4 class="dvInnerHeader2">

                                        <div style="float:left;font-weight:bold;">
                                        	<div style="float:left;"><a onclick="javascript:showHideDetailViewActivityDetails('activitydetails{$EVENTID}','imgad{$EVENTID}','{$EVENTID}','{$contactid}','divad{$EVENTID}','{$DATEFORMAT_VTCALL}')" name="{$EVENTID}" href="#{$EVENTID}"><img style="border:0px;" id="imgad{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                                            </div><b>&nbsp;
                                                    {$MOD.LBL_ACTIVITY_DETAILS}
                                                </b>
                                        </div>

                                     </td>{/strip}
                                 </tr>
                                  <tr id="activitydetails{$EVENTID}" bgcolor=white style=" display:none ">
                                    <td colspan="20">
                                        <div id="divad{$EVENTID}">
                                        </div>
                                    </td>
                                  </tr>

							<!--<tr height="5px"><td>&nbsp;</td></tr>
                                 <tr>{strip}
                                     <td colspan=4 class="dvInnerHeader3">

                                        <div style="float:left;font-weight:bold;">
                                        	<div style="float:left;"><a href="javascript:showHideDetailViewEmailHistory('emailhistory{$EVENTID}','imgeh{$EVENTID}','{$EVENTID}','{$accountid}','diveh{$EVENTID}','{$MODULE}')"><img style="border:0px;" id="imgeh{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                                            </div><b>&nbsp;
                                                    {$MOD.LBL_EMAIL_HISTORY}
                                                </b>
                                        </div>
                                     </td>{/strip}
                                 </tr>
                                  <tr id="emailhistory{$EVENTID}" bgcolor=white style=" display:none ">
                                    <td colspan="20">
                                        <div id="diveh{$EVENTID}">
                                        </div>
                                    </td>
                                  </tr>

							<tr height="5px"><td>&nbsp;</td></tr>
                                 <tr>{strip}
                                     <td colspan=4 class="dvInnerHeader4">

                                        <div style="float:left;font-weight:bold;">
                                        	<div style="float:left;"><a href="javascript:showHideDetailViewPendingActivities('contactpendingactivities{$EVENTID}','imgcpa{$EVENTID}','{$EVENTID}','{$accountid}','divcpa{$EVENTID}','{$MODULE}')"><img style="border:0px;" id="imgcpa{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                                            </div><b>&nbsp;
                                                    Pending Activities
                                                </b>
                                        </div>
                                     </td>{/strip}
                                 </tr>
                                  <tr id="contactpendingactivities{$EVENTID}" bgcolor=white style=" display:none ">
                                    <td colspan="20">
                                        <div id="divcpa{$EVENTID}">
                                        </div>
                                    </td>
                                  </tr>

							<tr height="5px"><td>&nbsp;</td></tr>
                                 <tr>{strip}
                                     <td colspan=4 class="dvInnerHeader4">

                                        <div style="float:left;font-weight:bold;">
<div style="float:left;"><a href="javascript:showHideDetailViewActivityHistory('contactactivityhistory{$EVENTID}','imgcah{$EVENTID}','{$EVENTID}','{$accountid}','divcah{$EVENTID}','{$MODULE}')">
<img style="border:0px;" id="imgcah{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                                            </div><b>&nbsp;
                                                    Activity History
                                                </b>
                                        </div>
                                     </td>{/strip}
                                 </tr>
				 <tr id="contactactivityhistory{$EVENTID}" bgcolor=white style=" display:none ">
                                    <td colspan="20">
                                        <div id="divcah{$EVENTID}">
                                        </div>
                                    </td>
                                  </tr>-->
								
				<!-- iEzri ::: April 25th 2012 ::: To display Potentials related to Account -->

				<!--{if $related_opportunities eq 1}
					<tr height="5px"><td>&nbsp;</td></tr>
					<tr>{strip}
						<td colspan=4 class="dvInnerHeader4">
							<div style="float:left;font-weight:bold">
								<div style="float:left">
									 <a href="javascript:showHideDetailViewPotentialsRelatedList('relPotential{$EVENTID}','imgPt{$EVENTID}','{$EVENTID}','{$accountid}','divPt{$EVENTID}','{$MODULE}')">
                                     <img style="border:0px;" id="imgPt{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
								</div>&nbsp;
								<b>{$MOD.LBL_RELATED_POTENTIALS}</b>
							</div>
						</td>{/strip}
					</tr>
	                                <tr id="relPotential{$EVENTID}" bgcolor=white style=" display:none ">
                                	    <td colspan="20">
                        	                <div id="divPt{$EVENTID}">
                	                        </div>
        	                            </td>
	                                </tr>
				{/if}
				
				{if $related_quotes eq 1}
					<tr height='5px'><td>&nbsp;</td></tr>
                    <tr>{strip}
                        <td colspan=4 class="dvInnerHeader4">
                                <div style="float:left;font-weight:bold">
                                        <div style="float:left">
                                                <a href="javascript:showHideDetailViewQuotesRelatedList('relQuote{$EVENTID}','imgq{$EVENTID}','{$EVENTID}','{$contactid}','divq{$EVENTID}','{$MODULE}')">
                                                <img style="border:0px;" id="imgq{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                                        </div>&nbsp;
                                        <b> Related {$APP.Quotes}</b>
                                </div>
                        </td>{/strip}
                </tr>
                <tr id="relQuote{$EVENTID}" bgcolor=white style=" display:none ">
                    <td colspan="20">
                        <div id="divq{$EVENTID}">
                        </div>
                    </td>
                </tr>
                {/if}
                <tr height='5px'><td>&nbsp;</td></tr>
				{if $related_wos eq 1}
                    <tr>{strip}
                        <td colspan=4 class="dvInnerHeader4">
                                <div style="float:left;font-weight:bold">
                                        <div style="float:left">
                                                <a href="javascript:showHideDetailViewSORelatedList('relSO{$EVENTID}','imgSO{$EVENTID}','{$EVENTID}','{$contactid}','divSO{$EVENTID}','{$MODULE}')">
                                                <img style="border:0px;" id="imgSO{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                                        </div>&nbsp;
                                        <b> Related {$APP.SalesOrder}</b>
                                </div>
                        </td>{/strip}
                </tr>
                <tr id="relSO{$EVENTID}" bgcolor=white style=" display:none ">
                    <td colspan="20">
                        <div id="divSO{$EVENTID}">
                        </div>
                    </td>
                </tr>
                {/if}-->
				<!-- End of changes by Ezri On April 25th 2012 -->
<!--
/*
*
* BLOCK END
*
*/
-->
<!-- related list -->
                             {foreach from=$RELATED_LIST key=rll item=rli}
                                 <tr height="5px"><td>&nbsp;</td></tr>
                                 <tr>{strip}
                                         <td colspan=4 class="dvInnerHeader3">
                                         <div style="float:left;font-weight:bold;">
                                             <div style="float:left;"> <a href="javascript:showHideDetailViewRelatedList('{$RELCONTACT}','{$EVENTID}','{$accountid}','{$MODULE}','rel{$rli}{$EVENTID}','img{$rli}{$EVENTID}','div{$rli}{$EVENTID}','{$rli}')">
                                                     <img style="border:0px;" id="img{$rli}{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                                             </div><b>&nbsp;
                                                 {if $MOD[$rll] neq ''}{$MOD[$rll]}{else}{$rll}{/if}
                                             </b>
                                         </div>
                                         </td>{/strip}
                                 </tr>
                                 <tr id="rel{$rli}{$EVENTID}" bgcolor=white style=" display:none">
                                     <td colspan="20">
                                         <div id="div{$rli}{$EVENTID}">
                                         </div>
                                     </td>
                                 </tr>
                             {/foreach}
                             <!-- END -->
                             </table>
							 </div>

                     	                      </td>
					   </tr>
			{/foreach}
                    {*-- End of Blocks--*}


			<!-- End the form related to detail view -->

		</table>
		</td>
</tr>

</table>



{if $MODULE eq 'Products'}
<script language="JavaScript" type="text/javascript" src="modules/Products/Productsslide.js"></script>
<script language="JavaScript" type="text/javascript">Carousel();</script>
{/if}

<script>

function getTagCloud()
{ldelim}
new Ajax.Request(
        'index.php',
        {ldelim}queue: {ldelim}position: 'end', scope: 'command'{rdelim},
        method: 'post',
        postBody: 'module={$MODULE}&action={$MODULE}Ajax&file=TagCloud&ajxaction=GETTAGCLOUD&recordid={$ID}',
        onComplete: function(response) {ldelim}
                                $("tagfields").innerHTML=response.responseText;
                                $("txtbox_tagfields").value ='';
                        {rdelim}
        {rdelim}
);
{rdelim}
getTagCloud();
</script>
<!-- added for validation -->
<script language="javascript">
  var fieldname = new Array({$VALIDATION_DATA_FIELDNAME});
  var fieldlabel = new Array({$VALIDATION_DATA_FIELDLABEL});
  var fielddatatype = new Array({$VALIDATION_DATA_FIELDDATATYPE});


</script>

<!--
/*
*
* BLOCK END
*
*/
-->

<!--
/*
*
* BLOCK END
*
*/
-->
<!--
/*
*
* BLOCK END
*
*/
-->
