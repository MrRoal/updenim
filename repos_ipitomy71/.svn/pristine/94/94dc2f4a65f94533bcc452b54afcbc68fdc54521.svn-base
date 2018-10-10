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
<br />
<script type="text/javascript" src="modules/VTCall/VTCall.js"></script>
<table align="center" border="0" cellpadding="0" cellspacing="0" width="98%">
	<tr>
		<td valign="top"><img src="{'showPanelTopLeft.gif'|@vtiger_imageurl:$THEME}"></td>
	    <td class="showPanelBg" style="padding: 10px;" valign="top" width="100%">
	    	<br />
	    	<div align=center>
			{include file='SetMenu.tpl'}

			<table class="settingsSelUITopLine" align="center" border="0" cellpadding="5" cellspacing="0" width="100%">
				<tr>

					<td rowspan="2" valign="top" width="50"><img src="{'vtlib_modmng.gif'|@vtiger_imageurl:$THEME}" alt="{$MOD.LBL_MODULE_MANAGER}" title="{$MOD.LBL_MODULE_MANAGER}" border="0" height="48" width="48"></td>
					<td class="heading2" valign="bottom"> <b><a href="index.php?module=Settings&action=ModuleManager&parenttab=Settings">{$MOD.VTLIB_LBL_MODULE_MANAGER}</a> &gt; {$MODULE_LBL} </td>
				</tr>
				<tr>
					<td class="small" valign="top">{$MOD.VTLIB_LBL_MODULE_MANAGER_DESCRIPTION}</td>
				</tr>
			</table>

			<br>
			<table border="0" cellspacing="0" cellpadding="20" width="100%" class="settingsUI">
				<tr>
					<td style="background:white">
						<table width="100%">
							<tbody><tr><td style="padding-left:10px;">
								<!-- vTiger Module Settings -->
								<table width="100%" cellspacing="0" cellpadding="5" border="0"><tbody>
									<tr>
										<td style="padding:5px" class="detailedViewHeader">
											<table width="100%">
												<tbody><tr>
													<td width="80%" align="left"><strong>{$MOD_NEW.LBL_SETTING}</strong></td>
													<td style=" color:#FF0000"  align="right">{$MOD_NEW.LBL_VERSION} {$VERSION}</td>
												</tr>
												<tr>
													<td colspan="2" align="right"><a href='javascript:uninstall()'>{$MOD_NEW.LBL_UNINSTALL}</a></td>
												</tr>
											</tbody></table>
										</td>
									</tr>
								</tbody></table>
								<table width="100%" cellspacing="0" cellpadding="5" border="0" style="background:white"><tbody>
								<tr>
									<td width="50%">
										<table width="100%" cellspacing="0" cellpadding="5" border="0"><tbody>
											<tr>
												<td align="left" width="50%" style="background:white; padding:5px;" class="detailedViewHeader">
													{$MOD_NEW.LBL_ALLOW_USERS}?
												</td>
												<td align="left" style="background:white; padding:5px;" class="detailedViewHeader">
													<input type="checkbox" value="1" {if $postpone_calls eq 1} checked {/if} onclick="saveConfig('postpone_calls',this.checked)">
												</td>
											</tr>

											<tr>
												<td align="left" width="50%" style="background:white; padding:5px;" class="dvtCellLabel">
													Show Custom Information Fields?
												</td>
												<td align="left" style="background:white; padding:5px;" class="dvtCellLabel">
													<input type="checkbox" value="1" {if $custom_fields eq 1} checked {/if} onclick="saveConfig('custom_fields',this.checked)">
												</td>
											</tr>
											<!--<tr>
												<td align="left" width="50%" style="background:white; padding:5px;" class="dvtCellLabel">Display Related Opportunities?
												</td>
												<td align="left" style="background:white; padding:5px;" class="dvtCellLabel">
													<input type="checkbox" value="1" {if $related_opportunities eq 1} checked {/if} onclick="saveConfig('related_opportunities',this.checked)">
												</td>
											</tr>
											<tr>
												<td align="left" width="50%" style="background:white; padding:5px;" class="dvtCellLabel">Display Related Quotes?
												</td>
												<td align="left" style="background:white; padding:5px;" class="dvtCellLabel">
													<input type="checkbox" value="1" {if $related_quotes eq 1} checked {/if} onclick="saveConfig('related_quotes',this.checked)">
												</td>
											</tr>
											<tr>
												<td align="left" width="50%" style="background:white; padding:5px;" class="dvtCellLabel">Display related WOs?
												</td>
												<td align="left" style="background:white; padding:5px;" class="dvtCellLabel">
													<input type="checkbox" value="1" {if $related_wos eq 1} checked {/if} onclick="saveConfig('related_wos',this.checked)">
												</td>
											</tr>-->
											<!--Default time for followup call-->
											<tr>
												<td align="left" width="50%" style="background:white; padding:5px;" class="dvtCellLabel">
													{$MOD_NEW.LBL_DEFAULT_FOLLOWUP}
												</td>
												<td align="left" style="background:white; padding:5px;" class="dvtCellLabel">
													{$FLW_HOUR}
													{$FLW_MIN}
													<select id="flw_fmt" name="flw_fmt" onchange="saveFollowupTime('flw_fmt',this.value);">
														<option value="am" {if $FLW_FMT eq 'am'} selected="selected" {/if}>AM</option>
														<option value="pm" {if $FLW_FMT eq 'pm'} selected="selected" {/if}>PM</option>
													</select>
												</td>
											</tr>
										</tbody></table>
									</td>
									<td width="50%" rowspan="2" style="vertical-align:top;">
										<!-- new setting -->
										<table width="100%" cellspacing="0" cellpadding="5" border="0"><tbody>
											<tr>
												<td style="padding:5px" class="detailedViewHeader">
													<table width="100%">
														<tbody><tr>
															<td width="80%" align="left" colspan="2"><strong>Radio Button Filters</strong></td>
														</tr>
													</tbody></table>
												</td>
											</tr>
										</tbody></table>
										<table width="100%" cellspacing="0" cellpadding="5" border="0"><tbody>
											<tr>
												<td align="center" width="50%" style="background:white" class="dvtCellLabel">
													<b>Filter name</b>
												</td>
												<td align="center" style="background:white" class="dvtCellLabel">
													<b>Include in the Panel?</b>
												</td>
											</tr>

											<!--All Dates-->
											<tr>
												<td align="center" width="50%" style="background:white" class="dvtCellLabel">
													All Dates
												</td>
												<td align="center" style="background:white" class="dvtCellLabel">
													<select name="all_dates" id="all_dates" onchange="saveFilterVTCall(this.value,'all_dates');">
														<option value="yes" {if $RADIO_FILTER.all_dates eq 'yes'} selected="selected" {/if}>Yes</option>
														<option value="no" {if $RADIO_FILTER.all_dates eq 'no'} selected="selected" {/if}>No</option>
													</select>
												</td>
											</tr>

											<!--Today-->
											<tr>
												<td align="center" width="50%" style="background:white" class="dvtCellLabel">
													Today
												</td>
												<td align="center" style="background:white" class="dvtCellLabel">
													<select name="today" id="today" onchange="saveFilterVTCall(this.value,'today');">
														<option value="yes" {if $RADIO_FILTER.today eq 'yes'} selected="selected" {/if}>Yes</option>
														<option value="no" {if $RADIO_FILTER.today eq 'no'} selected="selected" {/if}>No</option>
													</select>
												</td>
											</tr>
											
											<!-- Yesterday -->
											<tr>
												<td align="center" width="50%" style="background:white" class="dvtCellLabel">
													Yesterday
												</td>
												<td align="center" style="background:white" class="dvtCellLabel">
													<select name="yesterday" id="yesterday" onchange="saveFilterVTCall(this.value,'yesterday');">
														<option value="yes" {if $RADIO_FILTER.yesterday eq 'yes'} selected="selected" {/if}>Yes</option>
														<option value="no" {if $RADIO_FILTER.yesterday eq 'no'} selected="selected" {/if}>No</option>
													</select>
												</td>
											</tr>
											
											<!-- Yesterday -->
											<tr>
												<td align="center" width="50%" style="background:white" class="dvtCellLabel">
													Yesterday
												</td>
												<td align="center" style="background:white" class="dvtCellLabel">
													<select name="yesterday" id="yesterday" onchange="saveFilterVTCall(this.value,'yesterday');">
														<option value="yes" {if $RADIO_FILTER.yesterday eq 'yes'} selected="selected" {/if}>Yes</option>
														<option value="no" {if $RADIO_FILTER.yesterday eq 'no'} selected="selected" {/if}>No</option>
													</select>
												</td>
											</tr>

											<!--Today And Prior-->
											<tr>
												<td align="center" width="50%" style="background:white" class="dvtCellLabel">
													Today And Prior
												</td>
												<td align="center" style="background:white" class="dvtCellLabel">
													<select name="today_and_prior" id="today_and_prior" onchange="saveFilterVTCall(this.value,'today_and_prior');">
														<option value="yes" {if $RADIO_FILTER.today_and_prior eq 'yes'} selected="selected" {/if}>Yes</option>
														<option value="no" {if $RADIO_FILTER.today_and_prior eq 'no'} selected="selected" {/if}>No</option>
													</select>
												</td>
											</tr>

											<!--Last 7 Days-->
											<tr>
												<td align="center" width="50%" style="background:white" class="dvtCellLabel">
													Last 7 Days
												</td>
												<td align="center" style="background:white" class="dvtCellLabel">
													<select name="last_7_days" id="last_7_days" onchange="saveFilterVTCall(this.value,'last_7_days');">
														<option value="yes" {if $RADIO_FILTER.last_7_days eq 'yes'} selected="selected" {/if}>Yes</option>
														<option value="no" {if $RADIO_FILTER.last_7_days eq 'no'} selected="selected" {/if}>No</option>
													</select>
												</td>
											</tr>

											<!--Tomorrow-->
											<tr>
												<td align="center" width="50%" style="background:white" class="dvtCellLabel">
													Tomorrow
												</td>
												<td align="center" style="background:white" class="dvtCellLabel">
													<select name="tomorrow" id="tomorrow" onchange="saveFilterVTCall(this.value,'tomorrow');">
														<option value="yes" {if $RADIO_FILTER.tomorrow eq 'yes'} selected="selected" {/if}>Yes</option>
														<option value="no" {if $RADIO_FILTER.tomorrow eq 'no'} selected="selected" {/if}>No</option>
													</select>
												</td>
											</tr>


											<!--This Week-->
											<tr>
												<td align="center" width="50%" style="background:white" class="dvtCellLabel">
													This Week
												</td>
												<td align="center" style="background:white" class="dvtCellLabel">
													<select name="this_week" id="this_week" onchange="saveFilterVTCall(this.value,'this_week');">
														<option value="yes" {if $RADIO_FILTER.this_week eq 'yes'} selected="selected" {/if}>Yes</option>
														<option value="no" {if $RADIO_FILTER.this_week eq 'no'} selected="selected" {/if}>No</option>
													</select>
												</td>
											</tr>

											<!--Next Week-->
											<tr>
												<td align="center" width="50%" style="background:white" class="dvtCellLabel">
													Next Week
												</td>
												<td align="center" style="background:white" class="dvtCellLabel">
													<select name="next_week" id="next_week" onchange="saveFilterVTCall(this.value,'next_week');">
														<option value="yes" {if $RADIO_FILTER.next_week eq 'yes'} selected="selected" {/if}>Yes</option>
														<option value="no" {if $RADIO_FILTER.next_week eq 'no'} selected="selected" {/if}>No</option>
													</select>
												</td>
											</tr>
											<!--Default radio button to-->
											<tr>
												<td colspan="2" style="background:white" class="dvtCellLabel"></td>
											</tr>
											<tr>
												<td align="center" width="50%" style="background:white" class="dvtCellLabel">
													Default Radio Button To
												</td>
												<td align="center" style="background:white" class="dvtCellLabel">
													<select name="default_filter" id="default_filter" onchange="saveSelectConfig('default_filter',this.value);">
														<option value=""></option>
														<option value="all_dates" {if $DEFAULT_FILTER eq 'all_dates'} selected="selected" {/if}>All Dates</option>
														<option value="today" {if $DEFAULT_FILTER eq 'today'} selected="selected" {/if}>Today</option>
														<option value="yesterday" {if $DEFAULT_FILTER eq 'yesterday'} selected="selected" {/if}>Yesterday</option>
														<option value="today_and_prior" {if $DEFAULT_FILTER eq 'today_and_prior'} selected="selected" {/if}>Today And Prior</option>
														<option value="last_7_days" {if $DEFAULT_FILTER eq 'last_7_days'} selected="selected" {/if}>Last 7 Days</option>
														<option value="tomorrow" {if $DEFAULT_FILTER eq 'tomorrow'} selected="selected" {/if}>Tomorrow</option>
														<option value="this_week" {if $DEFAULT_FILTER eq 'this_week'} selected="selected" {/if}>This Week</option>
														<option value="next_week" {if $DEFAULT_FILTER eq 'next_week'} selected="selected" {/if}>Next Week</option>

													</select>
												</td>
											</tr>
											<tr>
												<td align="center" width="50%" style="background:white" class="dvtCellLabel">
													Default Radio Button To
												</td>
												<td align="center" style="background:white" class="dvtCellLabel">
													<select name="default_user" id="default_user" onchange="saveSelectConfig('default_user',this.value);">
														<option value=""></option>
														<option value="mine" {if $DEFAULT_USER eq 'mine'} selected="selected" {/if}>Mine Only</option>
														<option value="all" {if $DEFAULT_USER eq 'all'} selected="selected" {/if}>All Users</option>
													</select>
												</td>
											</tr>

										</table>

									</td>
								</tr>
								<tr>
									<td>
										<table width="100%" cellspacing="0" cellpadding="5" border="0"><tbody>
											<tr>
												<td align="left" width="50%" style="background:white; padding:5px;" class="detailedViewHeader">
													{$MOD_NEW.LBL_SELECT_MODULE}
												</td>
												<td align="left" style="background:white; padding:5px;" class="detailedViewHeader">
													<select name="select_module" id="select_module" onchange="selectModule(this.value);getFieldsDisplay(this.value);showCF(this.value);getRelatedList(this.value);">
													{foreach item=module from=$ENTITY_MODULES}
														<option value="{$module}">{if $APP.$module neq ''}{$APP.$module}{else}{$module}{/if}</option>
													{/foreach}
														<!--<option value="Accounts">{$APP.Accounts}</option>
														<option value="Contacts">{$APP.Contacts}</option>
														<option value="Leads">{$APP.Leads}</option>
														<option value="Potentials">{$APP.Potentials}</option>-->
													</select>
												</td>
											</tr>
											
											<tr>
												<td align="left" style="background:white" colspan="2">
													<br><input type="checkbox" value="1" name="enable_module" id="enable_module" {if $cfg.enable_module eq '1'}checked{/if} onchange="showHideConfig(this.checked);"/> &nbsp;
													Show activities linked to <span id="module_fields2">{$APP.Accounts}</span> in VT Call?
												</td>
											</tr>
											
											<tr {if $cfg.enable_module neq '1'}style="display:none;"{/if}  id="module_customfield">
												<td align="left" style="background:white" colspan="2">
													<br>{$MOD_NEW.LBL_FIELD_TO_DISPLAY} <span id="module_fields">{$APP.Accounts}</span> {$MOD_NEW.LBL_INFORMATION_SECTION}
													<input type="hidden" value="1" id="field_count" name="field_count">
													<div id="list_fields" style="padding-top:10px;">
														<div id="field_1">
															<table><tr><td>
															<select name="cf[]" id="fields_display" style="width:175px;">
																{$display}
															</select>
															</td><td>&nbsp;<img border="0" title="Add more field" alt="Add more field" src="themes/softed/images/select.gif" onclick="addMoreField('list_fields');"></td></tr></table>
														</div>
														<span id='custom_fields'>{$cf}</span>
													</div>
												</td>
											</tr>
											<tr {if $cfg.enable_module neq '1'}style="display:none;"{/if} id="module_relatedlist">
												<td align="left" style="background:white" colspan="2">
													<br>Related List
                                                    <div id="related_list_div"">
                                                        {$RELATED_LIST}
                                                    </div>
												</td>
											</tr>
											</div>
										</tbody></table>
									</td>
								</tr>
								</tbody></table>
							</td></tr>
							<tr><td style="background:white"><input type="button" style="width: 70px;margin-left:8px;" onclick="gmConfigSave()" value="{$MOD_NEW.LBL_SETTING_SAVE}" name="button" class="small crmbutton save" accesskey="S" title="Save [Alt+S]"></td></tr>
							<tr><td style="background:white">&nbsp;</td></tr>
							<tr>
								<td style="background:white">
									<table width="50%" cellspacing="0" cellpadding="5" border="0"><tbody>
											<tr>
												<td style="padding:5px" class="detailedViewHeader" colspan="2">
													<table width="100%">
														<tbody><tr>
															<td width="80%" align="left"><strong>Configure Related Lists</strong></td>
															<td>
																<select id='related_section' onchange="reloadFields(this.value);">
																	<option value="email_history">Email History</option>
																	<option value="pending_activities">Pending Activities</option>
																	<option value="activity_history">Activity History</option>
																	<option value="related_potentials">Related {$APP.Potentials}</option>
																	<option value="related_quotes">Related {$APP.Quotes}</option>
																	<option value="related_salesorder">Related {$APP.SalesOrder}</option>
																</select>
															</td>
														</tr>
													</tbody></table>
												</td>
											</tr>
									</tbody></table>
									<div id="related_list_field">
										{include file="modules/VTCall/RelatedFields.tpl"}
									</div>
								</td>
							</tr>

							<!--Shading Lines-->
							<tr><td style="background:white">&nbsp;</td></tr>
							<tr>
								<td style="background:white">
									<table width="100%" cellspacing="0" cellpadding="5" border="0"><tbody>
											<tr>
												<td style="padding:5px" class="detailedViewHeader" colspan="2">
													<table width="100%">
														<tbody><tr>
															<td width="80%" align="left"><strong>Color Shading</strong></td>
														</tr>
													</tbody></table>
												</td>
											</tr>
											<tr>
												<td>
													Use plus sign to create new condition.&nbsp;&nbsp;&nbsp;<img border="0" title="Add more condition" alt="Add more condition" src="themes/softed/images/select.gif" onclick="addShadingCondition();" style="cursor:pointer;">
												</td>
											</tr>
									</tbody></table>
									<div id="shading_lines">
										{include file="modules/VTCall/ShadingLines.tpl"}
									</div>
								</td>
							</tr>
						</tbody></table>
					</td>
				</tr>
			</table>
			</div>
		</td>
		<td valign="top"><img src="{'showPanelTopLeft.gif'|@vtiger_imageurl:$THEME}"></td>
	</tr>
</table>
<br>
{literal}
<script>
var $j = jQuery.noConflict();
$j(document).ready(function(){
$j('.color_dropdown').change(function(){
var selected_color = $j(this).val();
$j(this).css('background-color',selected_color);
});
})


function saveFilterVTCall(value,filter){
	new Ajax.Request(
	'index.php',
	{
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallFunctions&save_config_filter=true&filter='+filter+'&value='+value,
		onComplete: function(response){
		}
	});
}

function selectModule(val) {
	document.getElementById('module_fields').innerHTML = val;
	document.getElementById('module_fields2').innerHTML = val;
	getEnable(val);
}
function addMoreField(id) {
	var obj = document.getElementById(id);
	var obj_count = document.getElementById('field_count');
	var cnt = parseInt(obj_count.value) + 1;
	obj_count.value = cnt;

	var new_obj = document.createElement('div');
	new_obj.id = document.getElementById('select_module').value+ cnt;
	//	    new_obj.style.paddingTop = '1px';
	module= document.getElementById('select_module').value;
	new Ajax.Request(
	'index.php',
	{
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallFunctions&ui=0&mod='+module,
		onComplete: function(response){
			new_obj.innerHTML = '<table><tr><td><select name="cf[]" id="'+ module+ 'CF'+ cnt+ '" style="width:175px;">'+ response.responseText+ '</select></td><td>&nbsp;<img border="0" title="Remove field" alt="Remove field" src="themes/images/clear_field.gif" onclick="deleteMoreField(\'list_fields\',\''+ new_obj.id +'\');"></td></tr></table>';
		}
	}
	);
	obj.appendChild(new_obj);
}

function deleteMoreField(id, id_del) {
	var obj = document.getElementById(id);
	var obj_del = document.getElementById(id_del);

	obj.removeChild(obj_del);
}
function getFieldsDisplay(module){
	new Ajax.Request(
	'index.php',
	{
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallFunctions&ui=0&mod='+module,
		onComplete: function(response){
			document.getElementById('fields_display').innerHTML= response.responseText;
		}
	}
	);
}

function getEnable(module){
	new Ajax.Request(
	'index.php',
	{
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallFunctions&get_enable=1&mod='+module,
		onComplete: function(response){
			if(response.responseText == '1') {
				jQuery('#enable_module').attr('checked', true);
				showHideConfig(true);
			}else{				
				jQuery('#enable_module').attr('checked', false);
				showHideConfig(false);
			}			
		}
	}
	);
}

function showHideConfig(checked) {
	if(checked == false) {
		jQuery('#module_customfield').hide();
		jQuery('#module_relatedlist').hide();
	}else {
		jQuery('#module_customfield').show();
		jQuery('#module_relatedlist').show();
	}
}

function gmConfigSave(){
	select_module= document.getElementById('select_module').value;
	tmp= document.getElementsByName('cf[]');
	fields_display= '';
	for(i= 0; i< tmp.length; i++){
		fields_display+= '::'+ tmp[i].value;
	}
	tmp= document.getElementsByName('related_list[]');
    related_list= '';
	for(i= 0; i< tmp.length; i++){
        related_list+= '::'+ tmp[i].value+ '|'+tmp[i].checked;
	}
	
	var enable_module='0';
	if(document.getElementById('enable_module').checked == true) {
		enable_module='1';
	}
	str= '&select_module='+ select_module + '&fields_display='+ fields_display + '&related_list='+ related_list+'&enable_module='+enable_module;
	
	new Ajax.Request(
	'index.php',
	{
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallFunctions&cfg=1'+ str,
		onComplete: function(response){
			alert(response.responseText);
		}
	}
	);
}
function showCF(module){
	new Ajax.Request(
	'index.php',
	{
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallFunctions&cf=1&mod='+ module,
		onComplete: function(response){
			document.getElementById('list_fields').innerHTML= response.responseText;
		}
	}
	);
}
function uninstall(){
	var answer= confirm('Are you sure?')
	if(answer){
		window.location= 'index.php?module=VTCall&action=uninstall&parenttab=Settings';
	}
}
function saveConfig(field,checked_value){
	if(checked_value==true)
	checked=1;
	else
	checked=0;
	new Ajax.Request(
	'index.php',
	{
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallFunctions&saveconfig=saveconfig&field='+field+'&value='+ checked,
		onComplete: function(response){
		}
	});
}

function saveSelectConfig(field,value){

	new Ajax.Request(
	'index.php',
	{
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallFunctions&saveconfig=saveconfig&field='+field+'&value='+ value,
		onComplete: function(response){
		}
	});
}

function saveFollowupTime(field,value){
	new Ajax.Request(
	'index.php',
	{
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallFunctions&save_followup_time=true&field='+ field+'&value='+value,
		onComplete: function(response){
		}
	});
}

function getRelatedList(module){
    new Ajax.Request(
            'index.php',
            {
                method: 'post',
                postBody: 'module=VTCall&action=VTCallAjax&file=VTCallFunctions&get_related_list=1&mod='+module,
                onComplete: function(response){
                    document.getElementById('related_list_div').innerHTML = response.responseText;
                }
            }
    );
}

</script>

{/literal}
