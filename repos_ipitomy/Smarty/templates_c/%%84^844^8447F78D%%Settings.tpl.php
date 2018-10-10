<?php /* Smarty version 2.6.18, created on 2014-04-15 18:13:34
         compiled from modules/VTCall/Settings.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'vtiger_imageurl', 'modules/VTCall/Settings.tpl', 16, false),)), $this); ?>
<br />
<script type="text/javascript" src="modules/VTCall/VTCall.js"></script>
<table align="center" border="0" cellpadding="0" cellspacing="0" width="98%">
	<tr>
		<td valign="top"><img src="<?php echo vtiger_imageurl('showPanelTopLeft.gif', $this->_tpl_vars['THEME']); ?>
"></td>
	    <td class="showPanelBg" style="padding: 10px;" valign="top" width="100%">
	    	<br />
	    	<div align=center>
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'SetMenu.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

			<table class="settingsSelUITopLine" align="center" border="0" cellpadding="5" cellspacing="0" width="100%">
				<tr>

					<td rowspan="2" valign="top" width="50"><img src="<?php echo vtiger_imageurl('vtlib_modmng.gif', $this->_tpl_vars['THEME']); ?>
" alt="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" title="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" border="0" height="48" width="48"></td>
					<td class="heading2" valign="bottom"> <b><a href="index.php?module=Settings&action=ModuleManager&parenttab=Settings"><?php echo $this->_tpl_vars['MOD']['VTLIB_LBL_MODULE_MANAGER']; ?>
</a> &gt; <?php echo $this->_tpl_vars['MODULE_LBL']; ?>
 </td>
				</tr>
				<tr>
					<td class="small" valign="top"><?php echo $this->_tpl_vars['MOD']['VTLIB_LBL_MODULE_MANAGER_DESCRIPTION']; ?>
</td>
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
													<td width="80%" align="left"><strong><?php echo $this->_tpl_vars['MOD_NEW']['LBL_SETTING']; ?>
</strong></td>
													<td style=" color:#FF0000"  align="right"><?php echo $this->_tpl_vars['MOD_NEW']['LBL_VERSION']; ?>
 <?php echo $this->_tpl_vars['VERSION']; ?>
</td>
												</tr>
												<tr>
													<td colspan="2" align="right"><a href='javascript:uninstall()'><?php echo $this->_tpl_vars['MOD_NEW']['LBL_UNINSTALL']; ?>
</a></td>
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
													<?php echo $this->_tpl_vars['MOD_NEW']['LBL_ALLOW_USERS']; ?>
?
												</td>
												<td align="left" style="background:white; padding:5px;" class="detailedViewHeader">
													<input type="checkbox" value="1" <?php if ($this->_tpl_vars['postpone_calls'] == 1): ?> checked <?php endif; ?> onclick="saveConfig('postpone_calls',this.checked)">
												</td>
											</tr>

											<tr>
												<td align="left" width="50%" style="background:white; padding:5px;" class="dvtCellLabel">
													Show Custom Information Fields?
												</td>
												<td align="left" style="background:white; padding:5px;" class="dvtCellLabel">
													<input type="checkbox" value="1" <?php if ($this->_tpl_vars['custom_fields'] == 1): ?> checked <?php endif; ?> onclick="saveConfig('custom_fields',this.checked)">
												</td>
											</tr>
											<tr>
												<td align="left" width="50%" style="background:white; padding:5px;" class="dvtCellLabel">Display Related Opportunities?
												</td>
												<td align="left" style="background:white; padding:5px;" class="dvtCellLabel">
													<input type="checkbox" value="1" <?php if ($this->_tpl_vars['related_opportunities'] == 1): ?> checked <?php endif; ?> onclick="saveConfig('related_opportunities',this.checked)">
												</td>
											</tr>
											<tr>
												<td align="left" width="50%" style="background:white; padding:5px;" class="dvtCellLabel">Display Related Quotes?
												</td>
												<td align="left" style="background:white; padding:5px;" class="dvtCellLabel">
													<input type="checkbox" value="1" <?php if ($this->_tpl_vars['related_quotes'] == 1): ?> checked <?php endif; ?> onclick="saveConfig('related_quotes',this.checked)">
												</td>
											</tr>
											<tr>
												<td align="left" width="50%" style="background:white; padding:5px;" class="dvtCellLabel">Display related WOs?
												</td>
												<td align="left" style="background:white; padding:5px;" class="dvtCellLabel">
													<input type="checkbox" value="1" <?php if ($this->_tpl_vars['related_wos'] == 1): ?> checked <?php endif; ?> onclick="saveConfig('related_wos',this.checked)">
												</td>
											</tr>
											<!--Default time for followup call-->
											<tr>
												<td align="left" width="50%" style="background:white; padding:5px;" class="dvtCellLabel">
													<?php echo $this->_tpl_vars['MOD_NEW']['LBL_DEFAULT_FOLLOWUP']; ?>

												</td>
												<td align="left" style="background:white; padding:5px;" class="dvtCellLabel">
													<?php echo $this->_tpl_vars['FLW_HOUR']; ?>

													<?php echo $this->_tpl_vars['FLW_MIN']; ?>

													<select id="flw_fmt" name="flw_fmt" onchange="saveFollowupTime('flw_fmt',this.value);">
														<option value="am" <?php if ($this->_tpl_vars['FLW_FMT'] == 'am'): ?> selected="selected" <?php endif; ?>>AM</option>
														<option value="pm" <?php if ($this->_tpl_vars['FLW_FMT'] == 'pm'): ?> selected="selected" <?php endif; ?>>PM</option>
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
														<option value="yes" <?php if ($this->_tpl_vars['RADIO_FILTER']['all_dates'] == 'yes'): ?> selected="selected" <?php endif; ?>>Yes</option>
														<option value="no" <?php if ($this->_tpl_vars['RADIO_FILTER']['all_dates'] == 'no'): ?> selected="selected" <?php endif; ?>>No</option>
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
														<option value="yes" <?php if ($this->_tpl_vars['RADIO_FILTER']['today'] == 'yes'): ?> selected="selected" <?php endif; ?>>Yes</option>
														<option value="no" <?php if ($this->_tpl_vars['RADIO_FILTER']['today'] == 'no'): ?> selected="selected" <?php endif; ?>>No</option>
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
														<option value="yes" <?php if ($this->_tpl_vars['RADIO_FILTER']['yesterday'] == 'yes'): ?> selected="selected" <?php endif; ?>>Yes</option>
														<option value="no" <?php if ($this->_tpl_vars['RADIO_FILTER']['yesterday'] == 'no'): ?> selected="selected" <?php endif; ?>>No</option>
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
														<option value="yes" <?php if ($this->_tpl_vars['RADIO_FILTER']['today_and_prior'] == 'yes'): ?> selected="selected" <?php endif; ?>>Yes</option>
														<option value="no" <?php if ($this->_tpl_vars['RADIO_FILTER']['today_and_prior'] == 'no'): ?> selected="selected" <?php endif; ?>>No</option>
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
														<option value="yes" <?php if ($this->_tpl_vars['RADIO_FILTER']['last_7_days'] == 'yes'): ?> selected="selected" <?php endif; ?>>Yes</option>
														<option value="no" <?php if ($this->_tpl_vars['RADIO_FILTER']['last_7_days'] == 'no'): ?> selected="selected" <?php endif; ?>>No</option>
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
														<option value="yes" <?php if ($this->_tpl_vars['RADIO_FILTER']['tomorrow'] == 'yes'): ?> selected="selected" <?php endif; ?>>Yes</option>
														<option value="no" <?php if ($this->_tpl_vars['RADIO_FILTER']['tomorrow'] == 'no'): ?> selected="selected" <?php endif; ?>>No</option>
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
														<option value="yes" <?php if ($this->_tpl_vars['RADIO_FILTER']['this_week'] == 'yes'): ?> selected="selected" <?php endif; ?>>Yes</option>
														<option value="no" <?php if ($this->_tpl_vars['RADIO_FILTER']['this_week'] == 'no'): ?> selected="selected" <?php endif; ?>>No</option>
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
														<option value="yes" <?php if ($this->_tpl_vars['RADIO_FILTER']['next_week'] == 'yes'): ?> selected="selected" <?php endif; ?>>Yes</option>
														<option value="no" <?php if ($this->_tpl_vars['RADIO_FILTER']['next_week'] == 'no'): ?> selected="selected" <?php endif; ?>>No</option>
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
														<option value="all_dates" <?php if ($this->_tpl_vars['DEFAULT_FILTER'] == 'all_dates'): ?> selected="selected" <?php endif; ?>>All Dates</option>
														<option value="today" <?php if ($this->_tpl_vars['DEFAULT_FILTER'] == 'today'): ?> selected="selected" <?php endif; ?>>Today</option>
														<option value="yesterday" <?php if ($this->_tpl_vars['DEFAULT_FILTER'] == 'yesterday'): ?> selected="selected" <?php endif; ?>>Yesterday</option>
														<option value="today_and_prior" <?php if ($this->_tpl_vars['DEFAULT_FILTER'] == 'today_and_prior'): ?> selected="selected" <?php endif; ?>>Today And Prior</option>
														<option value="last_7_days" <?php if ($this->_tpl_vars['DEFAULT_FILTER'] == 'last_7_days'): ?> selected="selected" <?php endif; ?>>Last 7 Days</option>
														<option value="tomorrow" <?php if ($this->_tpl_vars['DEFAULT_FILTER'] == 'tomorrow'): ?> selected="selected" <?php endif; ?>>Tomorrow</option>
														<option value="this_week" <?php if ($this->_tpl_vars['DEFAULT_FILTER'] == 'this_week'): ?> selected="selected" <?php endif; ?>>This Week</option>
														<option value="next_week" <?php if ($this->_tpl_vars['DEFAULT_FILTER'] == 'next_week'): ?> selected="selected" <?php endif; ?>>Next Week</option>
														
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
														<option value="mine" <?php if ($this->_tpl_vars['DEFAULT_USER'] == 'mine'): ?> selected="selected" <?php endif; ?>>Mine Only</option>
														<option value="all" <?php if ($this->_tpl_vars['DEFAULT_USER'] == 'all'): ?> selected="selected" <?php endif; ?>>All Users</option>
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
													<?php echo $this->_tpl_vars['MOD_NEW']['LBL_SELECT_MODULE']; ?>

												</td>
												<td align="left" style="background:white; padding:5px;" class="detailedViewHeader">
													<select name="select_module" id="select_module" onchange="selectModule(this.value);getFieldsDisplay(this.value);showCF(this.value)">
														<option value="Accounts"><?php echo $this->_tpl_vars['APP']['Accounts']; ?>
</option>
														<option value="Contacts"><?php echo $this->_tpl_vars['APP']['Contacts']; ?>
</option>
														<option value="Leads"><?php echo $this->_tpl_vars['APP']['Leads']; ?>
</option>
														<option value="Potentials"><?php echo $this->_tpl_vars['APP']['Potentials']; ?>
</option>
													</select>
												</td>
											</tr>
											<tr>
												<td align="left" style="background:white" colspan="2">
													<br><?php echo $this->_tpl_vars['MOD_NEW']['LBL_FIELD_TO_DISPLAY']; ?>
 <span id="module_fields"><?php echo $this->_tpl_vars['APP']['Accounts']; ?>
</span> <?php echo $this->_tpl_vars['MOD_NEW']['LBL_INFORMATION_SECTION']; ?>

													<input type="hidden" value="1" id="field_count" name="field_count">
													<div id="list_fields" style="padding-top:10px;">
														<div id="field_1">
															<table><tr><td>
															<select name="cf[]" id="fields_display">
																<?php echo $this->_tpl_vars['display']; ?>

															</select>
															</td><td>&nbsp;<img border="0" title="Add more field" alt="Add more field" src="themes/softed/images/select.gif" onclick="addMoreField('list_fields');"></td></tr></table>
														</div>
														<span id='custom_fields'><?php echo $this->_tpl_vars['cf']; ?>
</span>
													</div>
												</td>
											</tr>
										</tbody></table>
									</td>
								</tr>
								</tbody></table>
							</td></tr>
							<tr><td style="background:white"><input type="button" style="width: 70px;margin-left:8px;" onclick="gmConfigSave()" value="<?php echo $this->_tpl_vars['MOD_NEW']['LBL_SETTING_SAVE']; ?>
" name="button" class="small crmbutton save" accesskey="S" title="Save [Alt+S]"></td></tr>
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
																	<option value="related_potentials">Related <?php echo $this->_tpl_vars['APP']['Potentials']; ?>
</option>
																	<option value="related_quotes">Related <?php echo $this->_tpl_vars['APP']['Quotes']; ?>
</option>
																	<option value="related_salesorder">Related <?php echo $this->_tpl_vars['APP']['SalesOrder']; ?>
</option>
																</select>
															</td>
														</tr>
													</tbody></table>
												</td>
											</tr>
									</tbody></table>
									<div id="related_list_field">
										<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "modules/VTCall/RelatedFields.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
									</div>
								</td>
							</tr>
						</tbody></table>
					</td>
				</tr>
			</table>
			</div>
		</td>
		<td valign="top"><img src="<?php echo vtiger_imageurl('showPanelTopLeft.gif', $this->_tpl_vars['THEME']); ?>
"></td>
	</tr>
</table>
<br>
<?php echo '
<script>
function saveFilterVTCall(value,filter){
	new Ajax.Request(
	\'index.php\',
	{
		method: \'post\',
		postBody: \'module=VTCall&action=VTCallAjax&file=VTCallFunctions&save_config_filter=true&filter=\'+filter+\'&value=\'+value,
		onComplete: function(response){
		}
	});
}

function selectModule(val) {
	document.getElementById(\'module_fields\').innerHTML = val;
}
function addMoreField(id) {
	var obj = document.getElementById(id);
	var obj_count = document.getElementById(\'field_count\');
	var cnt = parseInt(obj_count.value) + 1;
	obj_count.value = cnt;

	var new_obj = document.createElement(\'div\');
	new_obj.id = document.getElementById(\'select_module\').value+ cnt;
	//	    new_obj.style.paddingTop = \'1px\';
	module= document.getElementById(\'select_module\').value;
	new Ajax.Request(
	\'index.php\',
	{
		method: \'post\',
		postBody: \'module=VTCall&action=VTCallAjax&file=VTCallFunctions&ui=0&mod=\'+module,
		onComplete: function(response){
			new_obj.innerHTML = \'<table><tr><td><select name="cf[]" id="\'+ module+ \'CF\'+ cnt+ \'">\'+ response.responseText+ \'</select></td><td>&nbsp;<img border="0" title="Remove field" alt="Remove field" src="themes/images/clear_field.gif" onclick="deleteMoreField(\\\'list_fields\\\',\\\'\'+ new_obj.id +\'\\\');"></td></tr></table>\';
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
	\'index.php\',
	{
		method: \'post\',
		postBody: \'module=VTCall&action=VTCallAjax&file=VTCallFunctions&ui=0&mod=\'+module,
		onComplete: function(response){
			document.getElementById(\'fields_display\').innerHTML= response.responseText;
		}
	}
	);
}
function gmConfigSave(){
	select_module= document.getElementById(\'select_module\').value;
	tmp= document.getElementsByName(\'cf[]\');
	fields_display= \'\';
	for(i= 0; i< tmp.length; i++){
		fields_display+= \'::\'+ tmp[i].value;
	}
	str= \'&select_module=\'+ select_module
	+ \'&fields_display=\'+ fields_display;
	new Ajax.Request(
	\'index.php\',
	{
		method: \'post\',
		postBody: \'module=VTCall&action=VTCallAjax&file=VTCallFunctions&cfg=1\'+ str,
		onComplete: function(response){
			alert(response.responseText);
		}
	}
	);
}
function showCF(module){
	new Ajax.Request(
	\'index.php\',
	{
		method: \'post\',
		postBody: \'module=VTCall&action=VTCallAjax&file=VTCallFunctions&cf=1&mod=\'+ module,
		onComplete: function(response){
			document.getElementById(\'list_fields\').innerHTML= response.responseText;
		}
	}
	);
}
function uninstall(){
	var answer= confirm(\'Are you sure?\')
	if(answer){
		window.location= \'index.php?module=VTCall&action=uninstall&parenttab=Settings\';
	}
}
function saveConfig(field,checked_value){
	if(checked_value==true)
	checked=1;
	else
	checked=0;
	new Ajax.Request(
	\'index.php\',
	{
		method: \'post\',
		postBody: \'module=VTCall&action=VTCallAjax&file=VTCallFunctions&saveconfig=saveconfig&field=\'+field+\'&value=\'+ checked,
		onComplete: function(response){
		}
	});
}

function saveSelectConfig(field,value){
	
	new Ajax.Request(
	\'index.php\',
	{
		method: \'post\',
		postBody: \'module=VTCall&action=VTCallAjax&file=VTCallFunctions&saveconfig=saveconfig&field=\'+field+\'&value=\'+ value,
		onComplete: function(response){
		}
	});
}

function saveFollowupTime(field,value){
	new Ajax.Request(
	\'index.php\',
	{
		method: \'post\',
		postBody: \'module=VTCall&action=VTCallAjax&file=VTCallFunctions&save_followup_time=true&field=\'+ field+\'&value=\'+value,
		onComplete: function(response){
		}
	});
}
</script>

'; ?>