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
{include file='EditViewHidden.tpl'}
<input type="hidden" name="action" value="Save">
<input type="hidden" name="return_action" value="index">
<table width="99%" cellspacing="0" cellpadding="0" border="0" align="center" class="small" bgcolor="white"> 
<tr>
        <td>

					<table border=0 cellspacing=0 cellpadding=0 width=100%>
					  <tr>
					     <td>
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
							<input name="subject" type="hidden" value="{$ACTIVITYDATA.subject}">
							<input name="activitytype" type="hidden" value="Confirmation Call">
							
						     <table border=0 cellspacing=0 cellpadding=5 width=100% >
							
							<tr>
								<td colspan=2 width=80% align="center">
								<table border=0 cellspacing=0 cellpadding=3 width=80%>
									<tr><td><strong>{$MOD.LBL_EVENTNAME}</strong> :</td><td colspan="3"> <input name="subject" type="text" value="{$ACTIVITYDATA.subject}" class="detailedViewTextBox"></td></tr>
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

                                                            <td width=100%><img border=0 src="{$IMAGE_PATH}btnL3Calendar.gif" alt="{$MOD.LBL_SET_DATE}" title="{$MOD.LBL_SET_DATE}" id="jscal_trigger_date_start{$EVENTID}">	</td></tr>
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
		
<input name='search_url' id="search_url" type='hidden' value='{$SEARCH}'>
</form>

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
