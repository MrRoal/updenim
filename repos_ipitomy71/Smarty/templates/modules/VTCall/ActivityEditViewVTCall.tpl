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

/*
*
* VINCE@BORU 20110129
* Improved Call List
*
*/

-->*}

{*<!-- module header -->*}

<link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
<script type="text/javascript" src="jscalendar/calendar.js"></script>
<script type="text/javascript" src="jscalendar/lang/calendar-{$CALENDAR_LANG}.js"></script>
<script type="text/javascript" src="jscalendar/calendar-setup.js"></script>
<script type="text/javascript" src="modules/{$MODULE}/Calendar.js"></script>
<script type="text/javascript">
var gVTModule = '{$smarty.request.module|@vtlib_purify}';
</script>

{*<!-- Contents -->*}

<form name="EditView" method="POST" action="index.php"
	{if $ACTIVITY_MODE neq 'Task'} onsubmit="if(vtcall_check_form('{$EVENTID}')){ldelim} VtigerJS_DialogBox.block(); {rdelim} else {ldelim} return false; {rdelim}"
	{else} onsubmit="maintask_check_form();if(formValidate()) {ldelim} VtigerJS_DialogBox.block(); {rdelim} else {ldelim} return false; {rdelim}" {/if} >
<input type="hidden" name="time_start" id="time_start_{$EVENTID}">
<input type="hidden" name="view" value="{$view}">
<input type="hidden" name="hour" value="{$hour}">
<input type="hidden" name="day" value="{$day}">
<input type="hidden" name="month" value="{$month}">
<input type="hidden" name="year" value="{$year}">
<input type="hidden" name="viewOption" value="{$viewOption}">
<input type="hidden" name="subtab" value="{$subtab}">
<input type="hidden" name="maintab" value="{$maintab}">
<input type="hidden" name="return_viewname" value="{$VIEWID}">
<input type="hidden" name="contactidlist" id="contactidlist_{$EVENTID}" value="{$CONTACTSID}">
<input name="parent_id" type="hidden" value="{$secondvalue.parent_id}">
<table width="100%" cellpadding="2" cellspacing="0" border="0" style="margin-bottom:-40px;">
<tr>
        <td>
                <table cellpadding="0" cellspacing="5" border="0">
			{include file='EditViewHidden.tpl'}
			<input type="hidden" name="action" value="Save">
			<input type="hidden" name="return_action" value="index">
                </table>
					<!-- content cache -->

					<table border=0 cellspacing=0 cellpadding=0 width=100%>
					  <tr>
					     <td style="padding:10px;">
						     <!-- General details -->
						     <table border=0 cellspacing=0 cellpadding=0 width=100% style='display:none'>
						     <tr>
							<td  colspan=4 style="padding:5px">
								<div align="center">
								<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="crmbutton small save" onClick="checkFUP('{$EVENTID}');this.form.action.value='Save';"  type="submit" name="button" value="  {$APP.LBL_SAVE_BUTTON_LABEL}  " style="width:70px" >
								</div>
							</td>
						     </tr>
						     </table>
						     <!-- included to handle the edit fields based on ui types -->
						     {foreach key=header item=data from=$BLOCKS}
							     {if $header neq $APP.LBL_CUSTOM_INFORMATION}
						     <table border=0 cellspacing=0 cellpadding=0 width=100% class="small">
						     <tr>
							<td colspan=4 class="tableHeading">
								<b>{$header}</b>
							</td>
						     </tr>
						     </table>
							     {/if}
						     {/foreach}
						     {if $ACTIVITY_MODE neq 'Task'}
							<input type="hidden" name="time_end" id="time_end_{$EVENTID}">
							<input type="hidden" name="followup_due_date" id="followup_due_date">
							<input type="hidden" name="followup_time_start" id="followup_time_start">
                            <input type="hidden" name="followup_time_end" id="followup_time_end">
							<input type=hidden name="inviteesid" id="inviteesid" value="">
							<input type="hidden" name="duration_hours" value="0">
							<input type="hidden" name="duration_minutes" value="0">
							<input type="hidden" id="dateformat" name="dateformat" value="{$DATEFORMAT}">
							<input type="hidden" id="todaydate" name="todaydate" value="{$TODAYDATE}">
							<input type="hidden" id="nextdate" name="nextdate" value="{$NEXTDATE}">
							<input type="hidden" name="vtcall" value="VTCall">

						     <table border=0 cellspacing=0 cellpadding=5 width=100% >
							{if $LABEL.activitytype neq ''}
							<tr>
								<td class="cellLabel" nowrap  width=20% align="right"><b>{$MOD.LBL_EVENTTYPE}</b></td>
								<td class="cellInfo" width=80% align="left">
									<table>
										<tr>
	                                    <select name="activitytype" class="small">
											{foreach item=arr from=$ACTIVITYDATA.activitytype}

                                            This is eventtype: {$EVENTTYPE}><br/>  <!-- added by ravish -->
                                            This is arr1: {$arr[1]}<br/>  <!-- added by ravish -->
												{if $arr[0] eq $APP.LBL_NOT_ACCESSIBLE}
												<option value="{$arr[0]}" {$arr[2]}>
													{$arr[0]}
												</option>
												{else}
                                                      <option value="{$arr[1]}" {$arr[2]}>{$arr[1]}</option>
												{/if}

											{/foreach}
									   </select>
										</tr>
									</table>
								</td>
							</tr>
							{/if}
							<tr>
								<td class="cellLabel" nowrap align="right"><b><font color="red">{$TYPEOFDATA.subject}</font>{$MOD.LBL_EVENTNAME}</b></td>
								<td class="cellInfo" align="left"><input name="subject" type="text" class="textbox" value="{$ACTIVITYDATA.subject}" style="width:50%">&nbsp;&nbsp;&nbsp;
								{if $LABEL.visibility neq ''}
								{foreach key=key_one item=arr from=$ACTIVITYDATA.visibility}
                                                                        {if $arr[1] eq 'Public' && $arr[2] eq 'selected'}
                                                                                {assign var="visiblecheck" value="checked"}
                                                                        {else}
                                                                                {assign var="visiblecheck" value=""}
                                                                        {/if}
                                                                        {/foreach}
                                                                        <input name="visibility" value="Public" type="checkbox" {$visiblecheck}>{$MOD.LBL_PUBLIC}
								{/if}
								</td>
							</tr>
							{if $LABEL.description neq ''}
							<tr>
                        					<td class="cellLabel" valign="top" nowrap align="right"><b><font color="red">{$TYPEOFDATA.description}</font>{$LABEL.description}</b></td>
								<td class="cellInfo" align="left"><textarea style="width:100%; height : 60px;" is="description" name="description">{$ACTIVITYDATA.description}</textarea></td>
                					</tr>
							{/if}
							<!--
							{if $LABEL.location neq ''}
							<tr>
			                     <td class="cellLabel" align="right" valign="top"><b><font color="red">{$TYPEOFDATA.location}</font>{$MOD.LBL_APP_LOCATION}</b></td>
								<td class="cellInfo" align="left"><input name="location" type="text" class="textbox" value="{$ACTIVITYDATA.location}" style="width:50%">
							</tr>
							{/if}

							{*
							*
							* VINCE@BORU 2010804
							* Default Meeting
							*}

							<tr>
			                     <td class="cellLabel" align="right" valign="top"><b><font color="red">{$TYPEOFDATA.result}</font>Result</b></td>
								<td class="cellInfo" align="left"><input name="result" type="text" class="textbox" value="{if $LABEL.result neq ''} {$ACTIVITYDATA.result} {/if}" style="width:50%">
							</tr>
							-->
							<tr>
								<td colspan=2 width=80% align="center">
								<table border=0 cellspacing=0 cellpadding=3 width=80%>
									<!--<tr>
									 	<td>{if $LABEL.eventstatus neq ''}<b><font color="red">{$TYPEOFDATA.eventstatus}</font>{$LABEL.eventstatus}</b>{/if}</td>
                                     	<td>
                                     		{if $LABEL.assigned_user_id != ''}
                                     			<b>{$LABEL.assigned_user_id}</b>
											{/if}
										</td>
									</tr>-->
									<tr>
										<td valign=top>
										{if $LABEL.eventstatus neq ''}
											<table>
												<tr><td>
												<b><font color="red">{$TYPEOFDATA.eventstatus}</font>{$LABEL.eventstatus}</b>
												</td></tr>
												<tr><td>
	                                            <select name="eventstatus" id="eventstatus{$EVENTID}" class=small onChange = "getSelectedStatus('{$EVENTID}');" >
	                                                {foreach item=arr from=$ACTIVITYDATA.eventstatus}
		 												{if $arr[0] eq $APP.LBL_NOT_ACCESSIBLE}
	                                               		 	<option value="{$arr[0]}" {$arr[2]}>{$arr[0]}</option>
		                                                {else}
	                                                        <option value="{$arr[1]}" {$arr[2]}>
	                                                            {$arr[0]|@getTranslatedString:'Calendar'}
	                                                        </option>
		                                                {/if}
	                                                {/foreach}
	                                            </select>
	                                            </td></tr>
                                            </table>
										{/if}
                                        </td>
										<td rowspan=2 valign=top>
											<input type="hidden" name="endfmt" id="endfmt" value="{$ENDFMT}">
											<input type="hidden" name="endhr" id="endhr" value="{$ENDHR}">
											<input type="hidden" name="endmin" id="endmin" value="{$ENDMIN}">
											<input type="hidden" name="jscal_field_due_date{$EVENTID}" id="jscal_field_due_date{$EVENTID}" value="{$date_val}">
											{if $POSTPONE_CALLS neq '' && $POSTPONE_CALLS eq '1'}
												<input type="hidden" name="postpone_calls" id="postpone_calls" value="{$POSTPONE_CALLS}">
												<table border=0 cellspacing=0 cellpadding=2 width=100% align=center>
													<tr><td colspan=3 align="left"><b>Event starts at </b></td></tr>
													<tr><td colspan=3>{$STARTHOUR}</td></tr>
													<tr><td>
														{foreach key=date_value item=time_value from=$ACTIVITYDATA.date_start}
                                                                    {assign var=date_val value="$date_value"}
                                                                    {assign var=time_val value="$time_value"}
                                                        {/foreach}
                                                        	<input type="hidden" name="date_start" id="date_start_{$EVENTID}" value="{$date_val}">
                                                        	<input type="hidden" name="due_date" id="due_date_{$EVENTID}" value="{$date_val}">
                                                        	<input type="hidden" name="calendar_repeat_limit_date" id="calendar_repeat_limit_date" value="{$date_val}">
                                                        	<input type="hidden" id="dateformat_{$EVENTID}" name="dateformat" value="{$DATEFORMAT}">
                                                            <input type="text" name="jscal_field_date_start" id="jscal_field_date_start{$EVENTID}" class="textbox" style="width:90px" value="{$date_val}"></td>

                                                            <td width=100%><img border=0 src="{$IMAGE_PATH}btnL3Calendar.gif" alt="{$MOD.LBL_SET_DATE}" title="{$MOD.LBL_SET_DATE}" id="jscal_trigger_date_start{$EVENTID}">
															<script type="text/javascript" id='test'>
//																Calendar.setup ({ldelim}
//																inputField : "jscal_field_date_start", ifFormat : "{$DATEFORMAT}", showsTime : false, button : "jscal_trigger_abc", singleClick : true, step : 1
//																{rdelim})
															</script>

													</td></tr>
												</table>
											{else}
												<input type="hidden" name="startfmt" id="startfmt" value="{$STARTFMT}">
												<input type="hidden" name="starthr" id="starthr" value="{$STARTHR}">
												<input type="hidden" name="startmin" id="startmin" value="{$STARTMIN}">
												{foreach key=date_value item=time_value from=$ACTIVITYDATA.date_start}
                                                                    {assign var=date_val value="$date_value"}
                                                                    {assign var=time_val value="$time_value"}
                                                        {/foreach}
												<input type="hidden" name="date_start" id="date_start_{$EVENTID}" value="{$date_val}">
												<input type="hidden" name="jscal_field_date_start" id="jscal_field_date_start" value="{$date_val}">
											{/if}
											</td>
											<td>
											<div style="display:none;" id="date_table_thirdtd{$EVENTID}">
												<table border=0 cellspacing=0 cellpadding=2 width=100% align=center>
												<!--Ezri to send correct time -->
	                                                <tr><td colspan=3 align="left"><b><input type="checkbox" name="followup" id="followup_{$EVENTID}"><b>&nbsp;{$MOD.LBL_HOLDFOLLOWUP}</b></td></tr>
	                                                <tr><td colspan=3 align="left">{$FOLLOWUP}</td></tr>
	                                                <tr><td>
	                                                    {foreach key=date_value item=time_value from=$ACTIVITYDATA.due_date}
	                                                        {assign var=date_val value="$date_value"}
	                                                        {assign var=time_val value="$time_value"}
	                                                    {/foreach}
	                                                    <input type="text" name="followup_date" id="jscal_field_followup_date{$EVENTID}" class="textbox" style="width:90px" value="{$date_val}"></td><td width=100%><img border=0 src="{$IMAGE_PATH}btnL3Calendar.gif" alt="{$MOD.LBL_SET_DATE}" title="{$MOD.LBL_SET_DATE}" id="jscal_trigger_followup_date{$EVENTID}">
	                                                    {foreach key=date_fmt item=date_str from=$secondvalue.due_date}
	                                                        {assign var=date_vl	value="$date_fmt"}
	                                                    {/foreach}
														<script type="text/javascript" id='xxx'>
//	                                                    	Calendar.setup ({ldelim}
//	                                                            inputField : "jscal_field_followup_date", ifFormat : "{$date_vl}", showsTime : false, button : "jscal_trigger_followup_date", singleClick : true, step : 1
//	                                                        {rdelim})
	                                                    </script>
	                                                </td></tr>
	                                            </table>
	                                         </div>
                                        </td>
										<td valign=top rowspan=2>
											{if $ACTIVITYDATA.assigned_user_id != ''}
												<table>
													<tr><td>
														<b>{$LABEL.assigned_user_id}</b>
													</td></tr>
													<tr><td>
														{assign var=check value=1}
	                            						{foreach key=key_one item=arr from=$ACTIVITYDATA.assigned_user_id}
	                                    					{foreach key=sel_value item=value from=$arr}
	                                        					{if $value ne ''}
	                                            					{assign var=check value=$check*0}
	                                        					{else}
	                                            					{assign var=check value=$check*1}
	                                        					{/if}
	                                    					{/foreach}
	                            						{/foreach}

	                            						{if $check eq 0}
	                                						{assign var=select_user value='checked'}
	                                						{assign var=style_user value='display:block'}
	                                						{assign var=style_group value='display:none'}
	                            						{else}
	                                						{assign var=select_group value='checked'}
	                                						{assign var=style_user value='display:none'}
	                                						{assign var=style_group value='display:block'}
	                            						{/if}
	                            						<input type="radio" name="assigntype" {$select_user} value="U" onClick="toggleAssignType(this.value)">&nbsp;{$APP.LBL_USER}
	                            						{if $secondvalue.assigned_user_id neq ''}
	                                    					<input type="radio" name="assigntype" {$select_group} value="T" onClick="toggleAssignType(this.value)">&nbsp;{$APP.LBL_GROUP}
	                            						{/if}
														<span id="assign_user" style="{$style_user}">
	                     				           			<select name="assigned_user_id">
	                                        					{foreach key=key_one item=arr from=$ACTIVITYDATA.assigned_user_id}
	                                                				{foreach key=sel_value item=value from=$arr}
	                                                        				<option value="{$key_one}" {$value}>{$sel_value}</option>
	                                                				{/foreach}
	                                        					{/foreach}
	                                			   			</select>
	                        			       			</span>

	                            						{if $secondvalue.assigned_user_id neq ''}
	                                    					<span id="assign_team" style="{$style_group}">
	                                        					<select name="assigned_group_id" >';
	                                                				{foreach key=key_one item=arr from=$secondvalue.assigned_user_id}
	                                                        			{foreach key=sel_value item=value from=$arr}
	                                                                			<option value="{$key_one}" {$value}>{$sel_value}</option>
	                                                        			{/foreach}
	                                                				{/foreach}
	                                        					</select>
	                                    					</span>
	                            						{/if}
	                            					</td></tr>
                            					</table>
											{else}
											<input name="assigned_user_id" value="{$CURRENTUSERID}" type="hidden">
											{/if}
											<br>{if $LABEL.sendnotification neq ''}
												{if $ACTIVITYDATA.sendnotification eq 1}

												<input type="checkbox" name="sendnotification" checked>&nbsp;{$LABEL.sendnotification}
												{else}
												<input type="checkbox" name="sendnotification" >&nbsp;{$LABEL.sendnotification}
												{/if}
											{/if}
										</td>
										<!--<td valign=top rowspan=2 align="right">
											<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="crmbutton small save" onClick="openPopUp('xComposeEmail',this,'index.php?module=Emails&action=EmailsAjax&pmodule=Contacts&file=EditView&sendmail=true&idlist={$CONTACTSID}&field_lists=80&activityid={$EVENTID}','createemailWin',820,689,'menubar=no,toolbar=no,location=no,status=no,resizable=no'); " type="button" name="button" value="  Send Email  " style="width:85px;position:relative;" >
											<br />
											<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="crmbutton small save" onClick="checkFUP('{$EVENTID}');this.form.action.value='Save'; " type="submit" name="button" value="  {$APP.LBL_SAVE_BUTTON_LABEL}  " style="width:85px;position:relative;margin-top:50px;" >
										</td>-->
									</tr>
									{if $LABEL.taskpriority neq ''}
									<tr>
										<td valign=top>
											<table>
												<tr><td>
													<b>{$LABEL.taskpriority}</b>
												</td></tr>
												<tr><td>
													<select name="taskpriority" id="taskpriority">
		                                                {foreach item=arr from=$ACTIVITYDATA.taskpriority}
													 		{if $arr[0] eq $APP.LBL_NOT_ACCESSIBLE}
		                                                    	<option value="{$arr[0]}" {$arr[2]}>{$arr[0]}</option>
		                                                    {else}
		                                                        <option value="{$arr[1]}" {$arr[2]}>
		                                                            {$arr[0]}
		                                                        </option>
		                                                    {/if}
		                                                {/foreach}
		                                            </select>
		                                         </td></tr>
	                                         </table>
										</td>
									</tr>
									{/if}
								</table>
							<!--hiccup save 2 -->
							<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="crmbutton small save" onClick="checkFUP('{$EVENTID}');this.form.action.value='Save'; " type="submit" name="button" value="  {$APP.LBL_SAVE_BUTTON_LABEL}  " style="width:70px;position:relative;float:right;margin-top:-20px" >
							</td></tr>
						    </table>
						    <hr noshade size=1>




						     {if $CUSTOM_FIELDS_DATA|@count > 0}
	                             <table border=0 cellspacing=0 cellpadding=5 width=100% >
	                             	<tr>{strip}
							     		<td colspan=4 class="tableHeading">
										<b>{$APP.LBL_CUSTOM_INFORMATION}</b>
										</td>{/strip}
						          	</tr>
						          	<tr>
						          		{foreach key=index item=maindata from=$CUSTOM_FIELDS_DATA}
						          			{include file="EditViewUI.tpl"}
											{if ($index+1)% 2 == 0}
												</tr><tr>
											{/if}
							            {/foreach}
							        {if ($index+1)% 2 != 0}
							        	<td width="20%"></td><td width="30%"></td>
							        {/if}
						            </tr>
	                             </table>
                             {/if}
						     <br>
						     {if $PROJECT_ADDR != ''}
								<br>
			                     <table border=0 cellspacing=0 cellpadding=5 width=100% >
			                     	<tr>{strip}
							     		<td colspan=4 class="tableHeading">
										<b>Address Information</b>
										</td>{/strip}
						          	</tr>
						          	<tr>
							        	<td width=20% class="dvtCellLabel" align=right>Project Address</td>
							        	<td width="30%" align=left class="dvtCellInfo">{$PROJECT_ADDR}</td>
							        	<td width="20%"></td><td width="30%"></td>
						            </tr>
			                     </table>
			                     <br>
			                 {/if}





		{else}
		<table border="0" cellpadding="5" cellspacing="0" width="100%">
			<tr>
                        	<td class="cellLabel" width="20%" align="right"><b><font color="red">{$TYPEOFDATA.subject}</font>{$MOD.LBL_TODO}</b></td>
                        	<td class="cellInfo" width="80%" align="left"><input name="subject" value="{$ACTIVITYDATA.subject}" class="textbox" style="width: 70%;" type="text"></td>
           		</tr>

			<tr>
				{if $LABEL.description != ''}
				<td class="cellLabel" align="right"><b><font color="red">{$TYPEOFDATA.description}</font>{$LABEL.description}</b></td>
				<td class="cellInfo" align="left"><textarea style="width: 90%; height: 60px;" name="description">{$ACTIVITYDATA.description}</textarea>
				{/if}

			</tr>
			<tr>
		    		<td colspan="2" align="center" width="100%" style="padding:0px">
					<table border="0" cellpadding="5" cellspacing="1" width="100%">
            					<tr>
							{if $LABEL.taskstatus != ''}
							<td class="cellLabel" width=33% align="left"><b><font color="red">{$TYPEOFDATA.taskstatus}</font>{$LABEL.taskstatus}</b></td>
							{/if}
							{if $LABEL.taskpriority != ''}
              						<td class="cellLabel" width=33% align="left"><b><font color="red">{$TYPEOFDATA.taskpriority}</font>{$LABEL.taskpriority}</b></td>
							{/if}
              						{if $LABEL.assigned_user_id != ''}
							<td class="cellLabel" width=34% align="left"><b>{$LABEL.assigned_user_id}</b></td>
							{/if}
						</tr>
						<tr>
							{if $LABEL.taskstatus != ''}
							<td align="left" valign="top">
								<select name="taskstatus" id="taskstatus" class=small>
                                        			{foreach item=arr from=$ACTIVITYDATA.taskstatus}
									 {if $arr[0] eq $APP.LBL_NOT_ACCESSIBLE}
                                                                                        <option value="{$arr[0]}" {$arr[2]}>{$arr[0]}</option>
                                                                         {else}
                                                                                        <option value="{$arr[1]}" {$arr[2]}>
                                                                                                        {$arr[0]}
                                                                                         </option>
                                                                         {/if}
                                        			{/foreach}
                                				</select>
							</td>
							{/if}
							{if $LABEL.taskpriority != ''}
							<td align="left" valign="top">
								<select name="taskpriority" id="taskpriority" class=small>
        			                                {foreach item=arr from=$ACTIVITYDATA.taskpriority}
								 {if $arr[0] eq $APP.LBL_NOT_ACCESSIBLE}
                                                                                        <option value="{$arr[0]}" {$arr[2]}>{$arr[0]}</option>
                                                                                        {else}
                                                                                                <option value="{$arr[1]}" {$arr[2]}>
                                                                                                        {$arr[0]}
                                                                                                </option>
                                                                                        {/if}
                                        			{/foreach}
                                				</select>
							</td>
							{/if}
							{if $LABEL.assigned_user_id != ''}
							<td align="left" valign="top">
								{assign var=check value=1}
                                        			{foreach key=key_one item=arr from=$ACTIVITYDATA.assigned_user_id}
			                                        {foreach key=sel_value item=value from=$arr}
                        		                              	{if $value ne ''}
                                        		                      	{assign var=check value=$check*0}
                                                        		{else}
                                                                		{assign var=check value=$check*1}
                                                        		{/if}
                                                		{/foreach}
                                        			{/foreach}
								{if $check eq 0}
                                             				{assign var=select_user value='checked'}
                                                			{assign var=style_user value='display:block'}
                                                			{assign var=style_group value='display:none'}
                                        			{else}
                                                			{assign var=select_group value='checked'}
                                                			{assign var=style_user value='display:none'}
                                                			{assign var=style_group value='display:block'}
                                        			{/if}
				                                <input type="radio" name="assigntype" {$select_user} value="U" onClick="toggleAssignType(this.value)">&nbsp;{$APP.LBL_USER}
				                                {if $secondvalue.assigned_user_id neq ''}
                                			        <input type="radio" name="assigntype" {$select_group} value="T" onClick="toggleAssignType(this.value)">&nbsp;{$APP.LBL_GROUP}
                                        			{/if}
                                        			<span id="assign_user" style="{$style_user}">
                                                		<select name="assigned_user_id" class=small>
                                                        	{foreach key=key_one item=arr from=$ACTIVITYDATA.assigned_user_id}
				                                {foreach key=sel_value item=value from=$arr}
                                		                	<option value="{$key_one}" {$value}>{$sel_value}</option>
								{/foreach}
                                                        	{/foreach}
                                                		</select>
								</span>
								{if $secondvalue.assigned_user_id neq ''}
                                                		<span id="assign_team" style="{$style_group}">
                                                        		<select name="assigned_group_id" class=small>';
                                                                		{foreach key=key_one item=arr from=$secondvalue.assigned_user_id}
                                                                       		{foreach key=sel_value item=value from=$arr}
                                                                               		<option value="{$key_one}" {$value}>{$sel_value}</option>
                                                                       		{/foreach}
                                                                		{/foreach}
                                                        		</select>
				                                </span>
                                				{/if}
							</td>
							{else}
								<input name="assigned_user_id" value="{$CURRENTUSERID}" type="hidden">
							{/if}
						</tr>
					</table>
				</td>
			</tr>
			</table>
			<table border="0" cellpadding="0" cellspacing="1" width="100%" align=center>
			<tr><td width=50% valign=top>
				<table border=0 cellspacing=0 cellpadding=2 width=100% align=center >
					<tr><td colspan=3  class="mailSubHeader"><b>{$MOD.LBL_TODODATETIME}</b></td></tr>
					<tr><td colspan=3>{$STARTHOUR}</td></tr>
					<tr><td>
							{foreach key=date_value item=time_value from=$ACTIVITYDATA.date_start}
	                                        		{assign var=date_val value="$date_value"}
								{assign var=time_val value="$time_value"}
                                        		{/foreach}
							<input name="date_start" id="date_start" class="textbox" style="width: 90px;" onChange="dochange('date_start','due_date');" value="{$date_val}" type="text"></td><td width=100%><img src="{$IMAGE_PATH}btnL3Calendar.gif" alt="{$MOD.LBL_SET_DATE}" title="{$MOD.LBL_SET_DATE}" id="jscal_trigger_date_start" align="middle" border="0">
							{foreach key=date_fmt item=date_str from=$secondvalue.date_start}
								{assign var=date_vl value="$date_fmt"}
							{/foreach}
							<script type="text/javascript">
								Calendar.setup ({ldelim}
	        	                                	inputField : "date_start", ifFormat : "{$date_vl}", showsTime : false, button : "jscal_trigger_date_start", singleClick : true, step : 1
							{rdelim})
							</script>
						</td></tr>
					</table></td>
					<td width=50% valign="top">
                                                <table border="0" cellpadding="2" cellspacing="0" width="100%" align=center>
							<tr><td class="mailSubHeader" colspan=3><b>{$LABEL.due_date}</b></td></tr>
							<tr><td>
								{foreach key=date_value item=time_value from=$ACTIVITYDATA.due_date}
									{assign var=date_val value="$date_value"}
									{assign var=time_val value="$time_value"}
								{/foreach}
								<input name="due_date" id="due_date" class="textbox" style="width: 90px;" value="{$date_val}" type="text"></td><td width=100%><img src="{$IMAGE_PATH}btnL3Calendar.gif" alt="{$MOD.LBL_SET_DATE}" title="{$MOD.LBL_SET_DATE}" id="jscal_trigger_due_date" border="0">
								{foreach key=date_fmt item=date_str from=$secondvalue.due_date}
                                                			{assign var=date_vl value="$date_fmt"}
                                        			{/foreach}
				      				<script type="text/javascript">
								Calendar.setup ({ldelim}
	                                        			inputField : "due_date", ifFormat : "{$date_vl}", showsTime : false, button : "jscal_trigger_due_date", singleClick : true, step : 1
					   			{rdelim})
								</script>
        						</td></tr>
						</table></td>
					</tr>
				</table>

			     {if $CUSTOM_FIELDS_DATA|@count > 0}
					<br><br>
                     <table border=0 cellspacing=0 cellpadding=5 width=100% >
                     	<tr>{strip}
				     		<td colspan=4 class="tableHeading">
							<b>{$APP.LBL_CUSTOM_INFORMATION}</b>
							</td>{/strip}
			          	</tr>
			          	<tr>
			          		{foreach key=index item=maindata from=$CUSTOM_FIELDS_DATA}
			          			{include file="EditViewUI.tpl"}
								{if ($index+1)% 2 == 0}
									</tr><tr>
								{/if}
				            {/foreach}
				        {if ($index+1)% 2 != 0}
				        	<td width="20%"></td><td width="30%"></td>
				        {/if}
			            </tr>
                     </table>
                 {/if}

                 {if $PROJECT_ADDR != ''}
					<br><br>
                     <table border=0 cellspacing=0 cellpadding=5 width=100% >
                     	<tr>{strip}
				     		<td colspan=4 class="tableHeading">
							<b>Address Information</b>
							</td>{/strip}
			          	</tr>
			          	<tr>
				        	<td width=20% class="dvtCellLabel" align=right>Project Address</td>
				        	<td width="30%" align=left class="dvtCellInfo">{$PROJECT_ADDR}</td>
				        	<td width="20%"></td><td width="30%"></td>
			            </tr>
                     </table>
                 {/if}


				<br><br>
		{if $LABEL.sendnotification neq '' || ($LABEL.parent_id neq '') || ($LABEL.contact_id neq '') }
		<table align="center" border="0" cellpadding="0" cellspacing="0" width="95%" bgcolor="#FFFFFF">
			<tr>
				<td>
					<table border="0" cellpadding="3" cellspacing="0" width="100%">
						<tr>
							<td class="dvtTabCache" style="width: 10px;" nowrap="nowrap">&nbsp;</td>
							{if $LABEL.sendnotification neq ''}
                                                                {assign var='class_val' value='dvtUnSelectedCell'}
								<td id="cellTabInvite" class="dvtSelectedCell" align="center" nowrap="nowrap"><a href="javascript:doNothing()" onClick="switchClass('cellTabInvite','on');switchClass('cellTabRelatedto','off');Taskshow('addTaskAlarmUI','todo',document.EditView.date_start.value,document.EditView.starthr.value,document.EditView.startmin.value,document.EditView.startfmt.value);ghide('addTaskRelatedtoUI');">{$MOD.LBL_NOTIFICATION}</a></td>
							{else}
                                                                {assign var='class_val' value='dvtSelectedCell'}
                                                        {/if}
							<td class="dvtTabCache" style="width: 10px;" nowrap="nowrap">&nbsp;</td>
							{if ($LABEL.parent_id neq '') || ($LABEL.contact_id neq '') }
                                                        <td id="cellTabRelatedto" class={$class_val} align=center nowrap><a href="javascript:doNothing()" onClick="switchClass('cellTabInvite','off');switchClass('cellTabRelatedto','on');Taskshow('addTaskRelatedtoUI','todo',document.EditView.date_start.value,document.EditView.starthr.value,document.EditView.startmin.value,document.EditView.startfmt.value);ghide('addTaskAlarmUI');">{$MOD.LBL_RELATEDTO}</a></td>
							{/if}
                                                        <td class="dvtTabCache" style="width:100%">&nbsp;</td>
						</tr>

					</table>
				</td>
			</tr>
			<tr>
				<td class="dvtContentSpace" style="padding: 10px; height: 120px;" align="left" valign="top" width="100%">
			<!-- Reminder UI -->
			<div id="addTaskAlarmUI" style="display: block; width: 100%;">
			{if $LABEL.sendnotification != ''}
				{assign var='vision' value='none'}
                	<table>
				<tr><td><font color="red">{$TYPEOFDATA.sendnotification}</font>{$LABEL.sendnotification}</td>
					{if $ACTIVITYDATA.sendnotification eq 1}
                                        <td>
                                                <input name="sendnotification" type="checkbox" checked>
                                        </td>
                                	{else}
                                        <td>
                                                <input name="sendnotification" type="checkbox">
                                        </td>
                                	{/if}
				</tr>
			</table>
			{else}
                                {assign var='vision' value='block'}
                        {/if}
			</div>
			<div id="addTaskRelatedtoUI" style="display:{$vision};width:100%">
           		     <table width="100%" cellpadding="5" cellspacing="0" border="0">
			     {if $LABEL.parent_id neq ''}
                	     <tr>
                        	     <td><b><font color="red">{$TYPEOFDATA.parent_id}</font>{$MOD.LBL_RELATEDTO}</b></td>
                                     <td>

					<input name="del_actparent_rel" type="hidden" >
                                             <select name="parent_type" class="small" id="parent_type" onChange="document.EditView.parent_name.value='';document.EditView.parent_id.value=''">
							{section name=combo loop=$LABEL.parent_id}
								<option value="{$fldlabel_combo.parent_id[combo]}" {$fldlabel_sel.parent_id[combo]}>{$LABEL.parent_id[combo]}</option>
							{/section}
					     </select>
                                     </td>
                                     <td>
                              	        <div id="taskrelatedto" align="left">
						<input name="parent_name" readonly type="text" class="calTxt small" value="{$ACTIVITYDATA.parent_id}">
						<input type="button" name="selectparent" class="crmButton small edit" value="{$APP.LBL_SELECT}" onClick="return window.open('index.php?module='+document.EditView.parent_type.value+'&action=Popup','test','width=640,height=602,resizable=0,scrollbars=0,top=150,left=200');">
						<input type='button' value='{$APP.LNK_DELETE}' class="crmButton small edit" onClick="document.EditView.del_actparent_rel.value=document.EditView.parent_id.value;document.EditView.parent_id.value='';document.EditView.parent_name.value='';">
					 </div>
                                     </td>
			     </tr>
			     {/if}
			     {if $LABEL.contact_id neq ''}
			     <tr>
                                     <td><b><font color="red">{$TYPEOFDATA.contact_id}</font>{$LABEL.contact_id}</b></td>
				     <td colspan="2">
						<input name="contact_name" id = "contact_name" readonly type="text" class="calTxt" value="{$ACTIVITYDATA.contact_id}"><input name="contact_id"  type="hidden" value="{$secondvalue.contact_id}">&nbsp;
						<input name="deletecntlist"  id="deletecntlist" type="hidden">
						<input type="button" onClick="selectContact('false','task',document.EditView);" class="crmButton small edit" name="selectcnt" value="{$APP.LBL_SELECT}&nbsp;{$APP.SINGLE_Contacts}">
						<input type='button' value='{$APP.LNK_DELETE}' class="crmButton small edit" onclick='document.EditView.deletecntlist.value =document.EditView.contact_id.value;document.EditView.contact_name.value = "";document.EditView.contact_id.value="";'>
				     </td>
                             </tr>
			     {/if}
		</table>
		{/if}
              	</div>
                </td></tr></table>

		{/if}
			</td></tr>
			<tr>
				<td  colspan=4 style="padding:5px">
					<div align="center">
<input title="{$APP.LBL_SAVE_BUTTON_TITLE}" accessKey="{$APP.LBL_SAVE_BUTTON_KEY}" class="crmbutton small save" onClick="checkFUP('{$EVENTID}');this.form.action.value='Save'; " type="submit" name="button" value="  {$APP.LBL_SAVE_BUTTON_LABEL}  " style="width:70px;display:none" >
					</div>
				</td>
			</tr></table>
		</td></tr></table>
		</td></tr></table>
</td></tr>
<input name='search_url' id="search_url" type='hidden' value='{$SEARCH}'>
<!--<div style="visibility:hidden;">
	<table><tr><td id="date_table_firsttd"></td><td id="date_table_secondtd"></td><td id="date_table_thirdtd"></td></tr></table>
	{$STARTHOUR}
	<input type="text" name="date_start" id="jscal_field_date_start" class="textbox" value="{$date_val}">
	{$ENDHOUR}
	<input type="text" name="due_date" id="jscal_field_due_date" class="textbox" value="{$date_val}">
	{$FOLLOWUP}
</div>-->
</form>
</table>
</td></tr></table>
</td></tr></table>
</td></tr></table>
        </td></tr></table>
        </td></tr></table>
        </div>
        </td>
        <td valign=top><img src="{'showPanelTopRight.gif'|@vtiger_imageurl:$THEME}" style="display:none;"/></td>
        </tr>
        </table>
<script>
{if $ACTIVITY_MODE eq 'Task'}
	var fieldname = new Array('subject','date_start','time_start','due_date','taskstatus');
        var fieldlabel = new Array('{$MOD.LBL_LIST_SUBJECT}','{$MOD.LBL_START_DATE}','{$MOD.LBL_TIME}','{$MOD.LBL_DUE_DATE}','{$MOD.LBL_STATUS}');
        var fielddatatype = new Array('V~M','D~M~time_start','T~O','D~M~OTH~GE~date_start~Start Date & Time','V~O');
{else}
	var fieldname = new Array('subject','date_start','time_start','due_date','eventstatus','taskpriority','sendnotification','parent_id','contact_id','reminder_time','recurringtype');
        var fieldlabel = new Array('{$MOD.LBL_LIST_SUBJECT}','{$MOD.LBL_START_DATE}','{$MOD.LBL_TIME_START}','{$MOD.LBL_DUE_DATE}','{$MOD.LBL_STATUS}','{$MOD.Priority}','{$MOD.LBL_SENDNOTIFICATION}','{$MOD.LBL_RELATEDTO}','{$MOD.LBL_CONTACT_NAME}','{$MOD.LBL_SENDREMINDER}','{$MOD.Recurrence}');
        var fielddatatype = new Array('V~M','D~M','T~O','D~M~OTH~GE~date_start~Start Date','V~O','V~O','C~O','I~O','I~O','I~O','O~O');
{/if}
</script>
<script>
	var ProductImages=new Array();
	var count=0;

	function delRowEmt(imagename)
	{ldelim}
		ProductImages[count++]=imagename;
	{rdelim}

	function displaydeleted()
	{ldelim}
		var imagelists='';
		for(var x = 0; x < ProductImages.length; x++)
		{ldelim}
			imagelists+=ProductImages[x]+'###';
		{rdelim}

		if(imagelists != '')
			document.EditView.imagelist.value=imagelists
	{rdelim}

</script>

<!--
/*
*
* BLOCK END
*
*/
-->
