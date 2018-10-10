<?php /* Smarty version 2.6.18, created on 2014-04-10 19:46:21
         compiled from modules/VTCall/ActivityEditViewVTCall.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'vtlib_purify', 'modules/VTCall/ActivityEditViewVTCall.tpl', 30, false),array('modifier', 'getTranslatedString', 'modules/VTCall/ActivityEditViewVTCall.tpl', 190, false),array('modifier', 'count', 'modules/VTCall/ActivityEditViewVTCall.tpl', 366, false),array('modifier', 'vtiger_imageurl', 'modules/VTCall/ActivityEditViewVTCall.tpl', 719, false),)), $this); ?>


<link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
<script type="text/javascript" src="jscalendar/calendar.js"></script>
<script type="text/javascript" src="jscalendar/lang/calendar-<?php echo $this->_tpl_vars['CALENDAR_LANG']; ?>
.js"></script>
<script type="text/javascript" src="jscalendar/calendar-setup.js"></script>
<script type="text/javascript" src="modules/<?php echo $this->_tpl_vars['MODULE']; ?>
/Calendar.js"></script>
<script type="text/javascript">
var gVTModule = '<?php echo vtlib_purify($_REQUEST['module']); ?>
';
</script>


<form name="EditView" method="POST" action="index.php"
	<?php if ($this->_tpl_vars['ACTIVITY_MODE'] != 'Task'): ?> onsubmit="if(vtcall_check_form('<?php echo $this->_tpl_vars['EVENTID']; ?>
')){ VtigerJS_DialogBox.block(); } else { return false; }"
	<?php else: ?> onsubmit="maintask_check_form();if(formValidate()) { VtigerJS_DialogBox.block(); } else { return false; }" <?php endif; ?> >
<input type="hidden" name="time_start" id="time_start_<?php echo $this->_tpl_vars['EVENTID']; ?>
">
<input type="hidden" name="view" value="<?php echo $this->_tpl_vars['view']; ?>
">
<input type="hidden" name="hour" value="<?php echo $this->_tpl_vars['hour']; ?>
">
<input type="hidden" name="day" value="<?php echo $this->_tpl_vars['day']; ?>
">
<input type="hidden" name="month" value="<?php echo $this->_tpl_vars['month']; ?>
">
<input type="hidden" name="year" value="<?php echo $this->_tpl_vars['year']; ?>
">
<input type="hidden" name="viewOption" value="<?php echo $this->_tpl_vars['viewOption']; ?>
">
<input type="hidden" name="subtab" value="<?php echo $this->_tpl_vars['subtab']; ?>
">
<input type="hidden" name="maintab" value="<?php echo $this->_tpl_vars['maintab']; ?>
">
<input type="hidden" name="return_viewname" value="<?php echo $this->_tpl_vars['VIEWID']; ?>
">
<input type="hidden" name="contactidlist" id="contactidlist_<?php echo $this->_tpl_vars['EVENTID']; ?>
" value="<?php echo $this->_tpl_vars['CONTACTSID']; ?>
">
<input name="parent_id" type="hidden" value="<?php echo $this->_tpl_vars['secondvalue']['parent_id']; ?>
">
<table width="100%" cellpadding="2" cellspacing="0" border="0" style="margin-bottom:-40px;">
<tr>
        <td>
                <table cellpadding="0" cellspacing="5" border="0">
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'EditViewHidden.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
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
								<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_KEY']; ?>
" class="crmbutton small save" onClick="checkFUP('<?php echo $this->_tpl_vars['EVENTID']; ?>
');this.form.action.value='Save';"  type="submit" name="button" value="  <?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
  " style="width:70px" >
								</div>
							</td>
						     </tr>
						     </table>
						     <!-- included to handle the edit fields based on ui types -->
						     <?php $_from = $this->_tpl_vars['BLOCKS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['header'] => $this->_tpl_vars['data']):
?>
							     <?php if ($this->_tpl_vars['header'] != $this->_tpl_vars['APP']['LBL_CUSTOM_INFORMATION']): ?>
						     <table border=0 cellspacing=0 cellpadding=0 width=100% class="small">
						     <tr>
							<td colspan=4 class="tableHeading">
								<b><?php echo $this->_tpl_vars['header']; ?>
</b>
							</td>
						     </tr>
						     </table>
							     <?php endif; ?>
						     <?php endforeach; endif; unset($_from); ?>
						     <?php if ($this->_tpl_vars['ACTIVITY_MODE'] != 'Task'): ?>
							<input type="hidden" name="time_end" id="time_end_<?php echo $this->_tpl_vars['EVENTID']; ?>
">
							<input type="hidden" name="followup_due_date" id="followup_due_date">
							<input type="hidden" name="followup_time_start" id="followup_time_start">
                            <input type="hidden" name="followup_time_end" id="followup_time_end">
							<input type=hidden name="inviteesid" id="inviteesid" value="">
							<input type="hidden" name="duration_hours" value="0">
							<input type="hidden" name="duration_minutes" value="0">
							<input type="hidden" id="dateformat" name="dateformat" value="<?php echo $this->_tpl_vars['DATEFORMAT']; ?>
">
							<input type="hidden" id="todaydate" name="todaydate" value="<?php echo $this->_tpl_vars['TODAYDATE']; ?>
">
							<input type="hidden" id="nextdate" name="nextdate" value="<?php echo $this->_tpl_vars['NEXTDATE']; ?>
">
							<input type="hidden" name="vtcall" value="VTCall">

						     <table border=0 cellspacing=0 cellpadding=5 width=100% >
							<?php if ($this->_tpl_vars['LABEL']['activitytype'] != ''): ?>
							<tr>
								<td class="cellLabel" nowrap  width=20% align="right"><b><?php echo $this->_tpl_vars['MOD']['LBL_EVENTTYPE']; ?>
</b></td>
								<td class="cellInfo" width=80% align="left">
									<table>
										<tr>
	                                    <select name="activitytype" class="small">
											<?php $_from = $this->_tpl_vars['ACTIVITYDATA']['activitytype']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['arr']):
?>

                                            This is eventtype: <?php echo $this->_tpl_vars['EVENTTYPE']; ?>
><br/>  <!-- added by ravish -->
                                            This is arr1: <?php echo $this->_tpl_vars['arr'][1]; ?>
<br/>  <!-- added by ravish -->
												<?php if ($this->_tpl_vars['arr'][0] == $this->_tpl_vars['APP']['LBL_NOT_ACCESSIBLE']): ?>
												<option value="<?php echo $this->_tpl_vars['arr'][0]; ?>
" <?php echo $this->_tpl_vars['arr'][2]; ?>
>
													<?php echo $this->_tpl_vars['arr'][0]; ?>

												</option>
												<?php else: ?>
                                                      <option value="<?php echo $this->_tpl_vars['arr'][1]; ?>
" <?php echo $this->_tpl_vars['arr'][2]; ?>
><?php echo $this->_tpl_vars['arr'][1]; ?>
</option>
												<?php endif; ?>

											<?php endforeach; endif; unset($_from); ?>
									   </select>
										</tr>
									</table>
								</td>
							</tr>
							<?php endif; ?>
							<tr>
								<td class="cellLabel" nowrap align="right"><b><font color="red"><?php echo $this->_tpl_vars['TYPEOFDATA']['subject']; ?>
</font><?php echo $this->_tpl_vars['MOD']['LBL_EVENTNAME']; ?>
</b></td>
								<td class="cellInfo" align="left"><input name="subject" type="text" class="textbox" value="<?php echo $this->_tpl_vars['ACTIVITYDATA']['subject']; ?>
" style="width:50%">&nbsp;&nbsp;&nbsp;
								<?php if ($this->_tpl_vars['LABEL']['visibility'] != ''): ?>
								<?php $_from = $this->_tpl_vars['ACTIVITYDATA']['visibility']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key_one'] => $this->_tpl_vars['arr']):
?>
                                                                        <?php if ($this->_tpl_vars['arr'][1] == 'Public' && $this->_tpl_vars['arr'][2] == 'selected'): ?>
                                                                                <?php $this->assign('visiblecheck', 'checked'); ?>
                                                                        <?php else: ?>
                                                                                <?php $this->assign('visiblecheck', ""); ?>
                                                                        <?php endif; ?>
                                                                        <?php endforeach; endif; unset($_from); ?>
                                                                        <input name="visibility" value="Public" type="checkbox" <?php echo $this->_tpl_vars['visiblecheck']; ?>
><?php echo $this->_tpl_vars['MOD']['LBL_PUBLIC']; ?>

								<?php endif; ?>
								</td>
							</tr>
							<?php if ($this->_tpl_vars['LABEL']['description'] != ''): ?>
							<tr>
                        					<td class="cellLabel" valign="top" nowrap align="right"><b><font color="red"><?php echo $this->_tpl_vars['TYPEOFDATA']['description']; ?>
</font><?php echo $this->_tpl_vars['LABEL']['description']; ?>
</b></td>
								<td class="cellInfo" align="left"><textarea style="width:100%; height : 60px;" is="description" name="description"><?php echo $this->_tpl_vars['ACTIVITYDATA']['description']; ?>
</textarea></td>
                					</tr>
							<?php endif; ?>
							<!--
							<?php if ($this->_tpl_vars['LABEL']['location'] != ''): ?>
							<tr>
			                     <td class="cellLabel" align="right" valign="top"><b><font color="red"><?php echo $this->_tpl_vars['TYPEOFDATA']['location']; ?>
</font><?php echo $this->_tpl_vars['MOD']['LBL_APP_LOCATION']; ?>
</b></td>
								<td class="cellInfo" align="left"><input name="location" type="text" class="textbox" value="<?php echo $this->_tpl_vars['ACTIVITYDATA']['location']; ?>
" style="width:50%">
							</tr>
							<?php endif; ?>

							
							<tr>
			                     <td class="cellLabel" align="right" valign="top"><b><font color="red"><?php echo $this->_tpl_vars['TYPEOFDATA']['result']; ?>
</font>Result</b></td>
								<td class="cellInfo" align="left"><input name="result" type="text" class="textbox" value="<?php if ($this->_tpl_vars['LABEL']['result'] != ''): ?> <?php echo $this->_tpl_vars['ACTIVITYDATA']['result']; ?>
 <?php endif; ?>" style="width:50%">
							</tr>
							-->
							<tr>
								<td colspan=2 width=80% align="center">
								<table border=0 cellspacing=0 cellpadding=3 width=80%>
									<!--<tr>
									 	<td><?php if ($this->_tpl_vars['LABEL']['eventstatus'] != ''): ?><b><font color="red"><?php echo $this->_tpl_vars['TYPEOFDATA']['eventstatus']; ?>
</font><?php echo $this->_tpl_vars['LABEL']['eventstatus']; ?>
</b><?php endif; ?></td>
                                     	<td>
                                     		<?php if ($this->_tpl_vars['LABEL']['assigned_user_id'] != ''): ?>
                                     			<b><?php echo $this->_tpl_vars['LABEL']['assigned_user_id']; ?>
</b>
											<?php endif; ?>
										</td>
									</tr>-->
									<tr>
										<td valign=top>
										<?php if ($this->_tpl_vars['LABEL']['eventstatus'] != ''): ?>
											<table>
												<tr><td>
												<b><font color="red"><?php echo $this->_tpl_vars['TYPEOFDATA']['eventstatus']; ?>
</font><?php echo $this->_tpl_vars['LABEL']['eventstatus']; ?>
</b>
												</td></tr>
												<tr><td>
	                                            <select name="eventstatus" id="eventstatus<?php echo $this->_tpl_vars['EVENTID']; ?>
" class=small onChange = "getSelectedStatus('<?php echo $this->_tpl_vars['EVENTID']; ?>
');" >
	                                                <?php $_from = $this->_tpl_vars['ACTIVITYDATA']['eventstatus']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['arr']):
?>
		 												<?php if ($this->_tpl_vars['arr'][0] == $this->_tpl_vars['APP']['LBL_NOT_ACCESSIBLE']): ?>
	                                               		 	<option value="<?php echo $this->_tpl_vars['arr'][0]; ?>
" <?php echo $this->_tpl_vars['arr'][2]; ?>
><?php echo $this->_tpl_vars['arr'][0]; ?>
</option>
		                                                <?php else: ?>
	                                                        <option value="<?php echo $this->_tpl_vars['arr'][1]; ?>
" <?php echo $this->_tpl_vars['arr'][2]; ?>
>
	                                                            <?php echo getTranslatedString($this->_tpl_vars['arr'][0], 'Calendar'); ?>

	                                                        </option>
		                                                <?php endif; ?>
	                                                <?php endforeach; endif; unset($_from); ?>
	                                            </select>
	                                            </td></tr>
                                            </table>
										<?php endif; ?>
                                        </td>
										<td rowspan=2 valign=top>
											<input type="hidden" name="endfmt" id="endfmt" value="<?php echo $this->_tpl_vars['ENDFMT']; ?>
">
											<input type="hidden" name="endhr" id="endhr" value="<?php echo $this->_tpl_vars['ENDHR']; ?>
">
											<input type="hidden" name="endmin" id="endmin" value="<?php echo $this->_tpl_vars['ENDMIN']; ?>
">
											<input type="hidden" name="jscal_field_due_date<?php echo $this->_tpl_vars['EVENTID']; ?>
" id="jscal_field_due_date<?php echo $this->_tpl_vars['EVENTID']; ?>
" value="<?php echo $this->_tpl_vars['date_val']; ?>
">
											<?php if ($this->_tpl_vars['POSTPONE_CALLS'] != '' && $this->_tpl_vars['POSTPONE_CALLS'] == '1'): ?>
												<input type="hidden" name="postpone_calls" id="postpone_calls" value="<?php echo $this->_tpl_vars['POSTPONE_CALLS']; ?>
">
												<table border=0 cellspacing=0 cellpadding=2 width=100% align=center>
													<tr><td colspan=3 align="left"><b>Event starts at </b></td></tr>
													<tr><td colspan=3><?php echo $this->_tpl_vars['STARTHOUR']; ?>
</td></tr>
													<tr><td>
														<?php $_from = $this->_tpl_vars['ACTIVITYDATA']['date_start']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['date_value'] => $this->_tpl_vars['time_value']):
?>
                                                                    <?php $this->assign('date_val', ($this->_tpl_vars['date_value'])); ?>
                                                                    <?php $this->assign('time_val', ($this->_tpl_vars['time_value'])); ?>
                                                        <?php endforeach; endif; unset($_from); ?>
                                                        	<input type="hidden" name="date_start" id="date_start_<?php echo $this->_tpl_vars['EVENTID']; ?>
" value="<?php echo $this->_tpl_vars['date_val']; ?>
">
                                                        	<input type="hidden" name="due_date" id="due_date_<?php echo $this->_tpl_vars['EVENTID']; ?>
" value="<?php echo $this->_tpl_vars['date_val']; ?>
">
                                                        	<input type="hidden" name="calendar_repeat_limit_date" id="calendar_repeat_limit_date" value="<?php echo $this->_tpl_vars['date_val']; ?>
">
                                                        	<input type="hidden" id="dateformat_<?php echo $this->_tpl_vars['EVENTID']; ?>
" name="dateformat" value="<?php echo $this->_tpl_vars['DATEFORMAT']; ?>
">
                                                            <input type="text" name="jscal_field_date_start" id="jscal_field_date_start<?php echo $this->_tpl_vars['EVENTID']; ?>
" class="textbox" style="width:90px" value="<?php echo $this->_tpl_vars['date_val']; ?>
"></td>

                                                            <td width=100%><img border=0 src="<?php echo $this->_tpl_vars['IMAGE_PATH']; ?>
btnL3Calendar.gif" alt="<?php echo $this->_tpl_vars['MOD']['LBL_SET_DATE']; ?>
" title="<?php echo $this->_tpl_vars['MOD']['LBL_SET_DATE']; ?>
" id="jscal_trigger_date_start<?php echo $this->_tpl_vars['EVENTID']; ?>
">
															<script type="text/javascript" id='test'>
//																Calendar.setup ({
//																inputField : "jscal_field_date_start", ifFormat : "<?php echo $this->_tpl_vars['DATEFORMAT']; ?>
", showsTime : false, button : "jscal_trigger_abc", singleClick : true, step : 1
//																})
															</script>

													</td></tr>
												</table>
											<?php else: ?>
												<input type="hidden" name="startfmt" id="startfmt" value="<?php echo $this->_tpl_vars['STARTFMT']; ?>
">
												<input type="hidden" name="starthr" id="starthr" value="<?php echo $this->_tpl_vars['STARTHR']; ?>
">
												<input type="hidden" name="startmin" id="startmin" value="<?php echo $this->_tpl_vars['STARTMIN']; ?>
">
												<?php $_from = $this->_tpl_vars['ACTIVITYDATA']['date_start']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['date_value'] => $this->_tpl_vars['time_value']):
?>
                                                                    <?php $this->assign('date_val', ($this->_tpl_vars['date_value'])); ?>
                                                                    <?php $this->assign('time_val', ($this->_tpl_vars['time_value'])); ?>
                                                        <?php endforeach; endif; unset($_from); ?>
												<input type="hidden" name="date_start" id="date_start_<?php echo $this->_tpl_vars['EVENTID']; ?>
" value="<?php echo $this->_tpl_vars['date_val']; ?>
">
												<input type="hidden" name="jscal_field_date_start" id="jscal_field_date_start" value="<?php echo $this->_tpl_vars['date_val']; ?>
">
											<?php endif; ?>
											</td>
											<td>
											<div style="display:none;" id="date_table_thirdtd<?php echo $this->_tpl_vars['EVENTID']; ?>
">
												<table border=0 cellspacing=0 cellpadding=2 width=100% align=center>
												<!--Ezri to send correct time -->
	                                                <tr><td colspan=3 align="left"><b><input type="checkbox" name="followup" id="followup_<?php echo $this->_tpl_vars['EVENTID']; ?>
"><b>&nbsp;<?php echo $this->_tpl_vars['MOD']['LBL_HOLDFOLLOWUP']; ?>
</b></td></tr>
	                                                <tr><td colspan=3 align="left"><?php echo $this->_tpl_vars['FOLLOWUP']; ?>
</td></tr>
	                                                <tr><td>
	                                                    <?php $_from = $this->_tpl_vars['ACTIVITYDATA']['due_date']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['date_value'] => $this->_tpl_vars['time_value']):
?>
	                                                        <?php $this->assign('date_val', ($this->_tpl_vars['date_value'])); ?>
	                                                        <?php $this->assign('time_val', ($this->_tpl_vars['time_value'])); ?>
	                                                    <?php endforeach; endif; unset($_from); ?>
	                                                    <input type="text" name="followup_date" id="jscal_field_followup_date<?php echo $this->_tpl_vars['EVENTID']; ?>
" class="textbox" style="width:90px" value="<?php echo $this->_tpl_vars['date_val']; ?>
"></td><td width=100%><img border=0 src="<?php echo $this->_tpl_vars['IMAGE_PATH']; ?>
btnL3Calendar.gif" alt="<?php echo $this->_tpl_vars['MOD']['LBL_SET_DATE']; ?>
" title="<?php echo $this->_tpl_vars['MOD']['LBL_SET_DATE']; ?>
" id="jscal_trigger_followup_date<?php echo $this->_tpl_vars['EVENTID']; ?>
">
	                                                    <?php $_from = $this->_tpl_vars['secondvalue']['due_date']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['date_fmt'] => $this->_tpl_vars['date_str']):
?>
	                                                        <?php $this->assign('date_vl', ($this->_tpl_vars['date_fmt'])); ?>
	                                                    <?php endforeach; endif; unset($_from); ?>
														<script type="text/javascript" id='xxx'>
//	                                                    	Calendar.setup ({
//	                                                            inputField : "jscal_field_followup_date", ifFormat : "<?php echo $this->_tpl_vars['date_vl']; ?>
", showsTime : false, button : "jscal_trigger_followup_date", singleClick : true, step : 1
//	                                                        })
	                                                    </script>
	                                                </td></tr>
	                                            </table>
	                                         </div>
                                        </td>
										<td valign=top rowspan=2>
											<?php if ($this->_tpl_vars['ACTIVITYDATA']['assigned_user_id'] != ''): ?>
												<table>
													<tr><td>
														<b><?php echo $this->_tpl_vars['LABEL']['assigned_user_id']; ?>
</b>
													</td></tr>
													<tr><td>
														<?php $this->assign('check', 1); ?>
	                            						<?php $_from = $this->_tpl_vars['ACTIVITYDATA']['assigned_user_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key_one'] => $this->_tpl_vars['arr']):
?>
	                                    					<?php $_from = $this->_tpl_vars['arr']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['sel_value'] => $this->_tpl_vars['value']):
?>
	                                        					<?php if ($this->_tpl_vars['value'] != ''): ?>
	                                            					<?php $this->assign('check', $this->_tpl_vars['check']*0); ?>
	                                        					<?php else: ?>
	                                            					<?php $this->assign('check', $this->_tpl_vars['check']*1); ?>
	                                        					<?php endif; ?>
	                                    					<?php endforeach; endif; unset($_from); ?>
	                            						<?php endforeach; endif; unset($_from); ?>

	                            						<?php if ($this->_tpl_vars['check'] == 0): ?>
	                                						<?php $this->assign('select_user', 'checked'); ?>
	                                						<?php $this->assign('style_user', 'display:block'); ?>
	                                						<?php $this->assign('style_group', 'display:none'); ?>
	                            						<?php else: ?>
	                                						<?php $this->assign('select_group', 'checked'); ?>
	                                						<?php $this->assign('style_user', 'display:none'); ?>
	                                						<?php $this->assign('style_group', 'display:block'); ?>
	                            						<?php endif; ?>
	                            						<input type="radio" name="assigntype" <?php echo $this->_tpl_vars['select_user']; ?>
 value="U" onClick="toggleAssignType(this.value)">&nbsp;<?php echo $this->_tpl_vars['APP']['LBL_USER']; ?>

	                            						<?php if ($this->_tpl_vars['secondvalue']['assigned_user_id'] != ''): ?>
	                                    					<input type="radio" name="assigntype" <?php echo $this->_tpl_vars['select_group']; ?>
 value="T" onClick="toggleAssignType(this.value)">&nbsp;<?php echo $this->_tpl_vars['APP']['LBL_GROUP']; ?>

	                            						<?php endif; ?>
														<span id="assign_user" style="<?php echo $this->_tpl_vars['style_user']; ?>
">
	                     				           			<select name="assigned_user_id">
	                                        					<?php $_from = $this->_tpl_vars['ACTIVITYDATA']['assigned_user_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key_one'] => $this->_tpl_vars['arr']):
?>
	                                                				<?php $_from = $this->_tpl_vars['arr']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['sel_value'] => $this->_tpl_vars['value']):
?>
	                                                        				<option value="<?php echo $this->_tpl_vars['key_one']; ?>
" <?php echo $this->_tpl_vars['value']; ?>
><?php echo $this->_tpl_vars['sel_value']; ?>
</option>
	                                                				<?php endforeach; endif; unset($_from); ?>
	                                        					<?php endforeach; endif; unset($_from); ?>
	                                			   			</select>
	                        			       			</span>

	                            						<?php if ($this->_tpl_vars['secondvalue']['assigned_user_id'] != ''): ?>
	                                    					<span id="assign_team" style="<?php echo $this->_tpl_vars['style_group']; ?>
">
	                                        					<select name="assigned_group_id" >';
	                                                				<?php $_from = $this->_tpl_vars['secondvalue']['assigned_user_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key_one'] => $this->_tpl_vars['arr']):
?>
	                                                        			<?php $_from = $this->_tpl_vars['arr']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['sel_value'] => $this->_tpl_vars['value']):
?>
	                                                                			<option value="<?php echo $this->_tpl_vars['key_one']; ?>
" <?php echo $this->_tpl_vars['value']; ?>
><?php echo $this->_tpl_vars['sel_value']; ?>
</option>
	                                                        			<?php endforeach; endif; unset($_from); ?>
	                                                				<?php endforeach; endif; unset($_from); ?>
	                                        					</select>
	                                    					</span>
	                            						<?php endif; ?>
	                            					</td></tr>
                            					</table>
											<?php else: ?>
											<input name="assigned_user_id" value="<?php echo $this->_tpl_vars['CURRENTUSERID']; ?>
" type="hidden">
											<?php endif; ?>
											<br><?php if ($this->_tpl_vars['LABEL']['sendnotification'] != ''): ?>
												<?php if ($this->_tpl_vars['ACTIVITYDATA']['sendnotification'] == 1): ?>

												<input type="checkbox" name="sendnotification" checked>&nbsp;<?php echo $this->_tpl_vars['LABEL']['sendnotification']; ?>

												<?php else: ?>
												<input type="checkbox" name="sendnotification" >&nbsp;<?php echo $this->_tpl_vars['LABEL']['sendnotification']; ?>

												<?php endif; ?>
											<?php endif; ?>
										</td>
									</tr>
									<?php if ($this->_tpl_vars['LABEL']['taskpriority'] != ''): ?>
									<tr>
										<td valign=top>
											<table>
												<tr><td>
													<b><?php echo $this->_tpl_vars['LABEL']['taskpriority']; ?>
</b>
												</td></tr>
												<tr><td>
													<select name="taskpriority" id="taskpriority">
		                                                <?php $_from = $this->_tpl_vars['ACTIVITYDATA']['taskpriority']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['arr']):
?>
													 		<?php if ($this->_tpl_vars['arr'][0] == $this->_tpl_vars['APP']['LBL_NOT_ACCESSIBLE']): ?>
		                                                    	<option value="<?php echo $this->_tpl_vars['arr'][0]; ?>
" <?php echo $this->_tpl_vars['arr'][2]; ?>
><?php echo $this->_tpl_vars['arr'][0]; ?>
</option>
		                                                    <?php else: ?>
		                                                        <option value="<?php echo $this->_tpl_vars['arr'][1]; ?>
" <?php echo $this->_tpl_vars['arr'][2]; ?>
>
		                                                            <?php echo $this->_tpl_vars['arr'][0]; ?>

		                                                        </option>
		                                                    <?php endif; ?>
		                                                <?php endforeach; endif; unset($_from); ?>
		                                            </select>
		                                         </td></tr>
	                                         </table>
										</td>
									</tr>
									<?php endif; ?>
								</table>
							<!--hiccup save 2 -->
							<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_KEY']; ?>
" class="crmbutton small save" onClick="checkFUP('<?php echo $this->_tpl_vars['EVENTID']; ?>
');this.form.action.value='Save'; " type="submit" name="button" value="  <?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
  " style="width:70px;position:relative;float:right;margin-top:-20px" >
							</td></tr>
						    </table>
						    <hr noshade size=1>




						     <?php if (count($this->_tpl_vars['CUSTOM_FIELDS_DATA']) > 0): ?>
	                             <table border=0 cellspacing=0 cellpadding=5 width=100% >
	                             	<tr><?php echo '<td colspan=4 class="tableHeading"><b>'; ?><?php echo $this->_tpl_vars['APP']['LBL_CUSTOM_INFORMATION']; ?><?php echo '</b></td>'; ?>

						          	</tr>
						          	<tr>
						          		<?php $_from = $this->_tpl_vars['CUSTOM_FIELDS_DATA']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['index'] => $this->_tpl_vars['maindata']):
?>
						          			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "EditViewUI.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
											<?php if (( $this->_tpl_vars['index']+1 ) % 2 == 0): ?>
												</tr><tr>
											<?php endif; ?>
							            <?php endforeach; endif; unset($_from); ?>
							        <?php if (( $this->_tpl_vars['index']+1 ) % 2 != 0): ?>
							        	<td width="20%"></td><td width="30%"></td>
							        <?php endif; ?>
						            </tr>
	                             </table>
                             <?php endif; ?>
						     <br>
						     <?php if ($this->_tpl_vars['PROJECT_ADDR'] != ''): ?>
								<br>
			                     <table border=0 cellspacing=0 cellpadding=5 width=100% >
			                     	<tr><?php echo '<td colspan=4 class="tableHeading"><b>Address Information</b></td>'; ?>

						          	</tr>
						          	<tr>
							        	<td width=20% class="dvtCellLabel" align=right>Project Address</td>
							        	<td width="30%" align=left class="dvtCellInfo"><?php echo $this->_tpl_vars['PROJECT_ADDR']; ?>
</td>
							        	<td width="20%"></td><td width="30%"></td>
						            </tr>
			                     </table>
			                     <br>
			                 <?php endif; ?>





		<?php else: ?>
		<table border="0" cellpadding="5" cellspacing="0" width="100%">
			<tr>
                        	<td class="cellLabel" width="20%" align="right"><b><font color="red"><?php echo $this->_tpl_vars['TYPEOFDATA']['subject']; ?>
</font><?php echo $this->_tpl_vars['MOD']['LBL_TODO']; ?>
</b></td>
                        	<td class="cellInfo" width="80%" align="left"><input name="subject" value="<?php echo $this->_tpl_vars['ACTIVITYDATA']['subject']; ?>
" class="textbox" style="width: 70%;" type="text"></td>
           		</tr>

			<tr>
				<?php if ($this->_tpl_vars['LABEL']['description'] != ''): ?>
				<td class="cellLabel" align="right"><b><font color="red"><?php echo $this->_tpl_vars['TYPEOFDATA']['description']; ?>
</font><?php echo $this->_tpl_vars['LABEL']['description']; ?>
</b></td>
				<td class="cellInfo" align="left"><textarea style="width: 90%; height: 60px;" name="description"><?php echo $this->_tpl_vars['ACTIVITYDATA']['description']; ?>
</textarea>
				<?php endif; ?>

			</tr>
			<tr>
		    		<td colspan="2" align="center" width="100%" style="padding:0px">
					<table border="0" cellpadding="5" cellspacing="1" width="100%">
            					<tr>
							<?php if ($this->_tpl_vars['LABEL']['taskstatus'] != ''): ?>
							<td class="cellLabel" width=33% align="left"><b><font color="red"><?php echo $this->_tpl_vars['TYPEOFDATA']['taskstatus']; ?>
</font><?php echo $this->_tpl_vars['LABEL']['taskstatus']; ?>
</b></td>
							<?php endif; ?>
							<?php if ($this->_tpl_vars['LABEL']['taskpriority'] != ''): ?>
              						<td class="cellLabel" width=33% align="left"><b><font color="red"><?php echo $this->_tpl_vars['TYPEOFDATA']['taskpriority']; ?>
</font><?php echo $this->_tpl_vars['LABEL']['taskpriority']; ?>
</b></td>
							<?php endif; ?>
              						<?php if ($this->_tpl_vars['LABEL']['assigned_user_id'] != ''): ?>
							<td class="cellLabel" width=34% align="left"><b><?php echo $this->_tpl_vars['LABEL']['assigned_user_id']; ?>
</b></td>
							<?php endif; ?>
						</tr>
						<tr>
							<?php if ($this->_tpl_vars['LABEL']['taskstatus'] != ''): ?>
							<td align="left" valign="top">
								<select name="taskstatus" id="taskstatus" class=small>
                                        			<?php $_from = $this->_tpl_vars['ACTIVITYDATA']['taskstatus']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['arr']):
?>
									 <?php if ($this->_tpl_vars['arr'][0] == $this->_tpl_vars['APP']['LBL_NOT_ACCESSIBLE']): ?>
                                                                                        <option value="<?php echo $this->_tpl_vars['arr'][0]; ?>
" <?php echo $this->_tpl_vars['arr'][2]; ?>
><?php echo $this->_tpl_vars['arr'][0]; ?>
</option>
                                                                         <?php else: ?>
                                                                                        <option value="<?php echo $this->_tpl_vars['arr'][1]; ?>
" <?php echo $this->_tpl_vars['arr'][2]; ?>
>
                                                                                                        <?php echo $this->_tpl_vars['arr'][0]; ?>

                                                                                         </option>
                                                                         <?php endif; ?>
                                        			<?php endforeach; endif; unset($_from); ?>
                                				</select>
							</td>
							<?php endif; ?>
							<?php if ($this->_tpl_vars['LABEL']['taskpriority'] != ''): ?>
							<td align="left" valign="top">
								<select name="taskpriority" id="taskpriority" class=small>
        			                                <?php $_from = $this->_tpl_vars['ACTIVITYDATA']['taskpriority']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['arr']):
?>
								 <?php if ($this->_tpl_vars['arr'][0] == $this->_tpl_vars['APP']['LBL_NOT_ACCESSIBLE']): ?>
                                                                                        <option value="<?php echo $this->_tpl_vars['arr'][0]; ?>
" <?php echo $this->_tpl_vars['arr'][2]; ?>
><?php echo $this->_tpl_vars['arr'][0]; ?>
</option>
                                                                                        <?php else: ?>
                                                                                                <option value="<?php echo $this->_tpl_vars['arr'][1]; ?>
" <?php echo $this->_tpl_vars['arr'][2]; ?>
>
                                                                                                        <?php echo $this->_tpl_vars['arr'][0]; ?>

                                                                                                </option>
                                                                                        <?php endif; ?>
                                        			<?php endforeach; endif; unset($_from); ?>
                                				</select>
							</td>
							<?php endif; ?>
							<?php if ($this->_tpl_vars['LABEL']['assigned_user_id'] != ''): ?>
							<td align="left" valign="top">
								<?php $this->assign('check', 1); ?>
                                        			<?php $_from = $this->_tpl_vars['ACTIVITYDATA']['assigned_user_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key_one'] => $this->_tpl_vars['arr']):
?>
			                                        <?php $_from = $this->_tpl_vars['arr']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['sel_value'] => $this->_tpl_vars['value']):
?>
                        		                              	<?php if ($this->_tpl_vars['value'] != ''): ?>
                                        		                      	<?php $this->assign('check', $this->_tpl_vars['check']*0); ?>
                                                        		<?php else: ?>
                                                                		<?php $this->assign('check', $this->_tpl_vars['check']*1); ?>
                                                        		<?php endif; ?>
                                                		<?php endforeach; endif; unset($_from); ?>
                                        			<?php endforeach; endif; unset($_from); ?>
								<?php if ($this->_tpl_vars['check'] == 0): ?>
                                             				<?php $this->assign('select_user', 'checked'); ?>
                                                			<?php $this->assign('style_user', 'display:block'); ?>
                                                			<?php $this->assign('style_group', 'display:none'); ?>
                                        			<?php else: ?>
                                                			<?php $this->assign('select_group', 'checked'); ?>
                                                			<?php $this->assign('style_user', 'display:none'); ?>
                                                			<?php $this->assign('style_group', 'display:block'); ?>
                                        			<?php endif; ?>
				                                <input type="radio" name="assigntype" <?php echo $this->_tpl_vars['select_user']; ?>
 value="U" onClick="toggleAssignType(this.value)">&nbsp;<?php echo $this->_tpl_vars['APP']['LBL_USER']; ?>

				                                <?php if ($this->_tpl_vars['secondvalue']['assigned_user_id'] != ''): ?>
                                			        <input type="radio" name="assigntype" <?php echo $this->_tpl_vars['select_group']; ?>
 value="T" onClick="toggleAssignType(this.value)">&nbsp;<?php echo $this->_tpl_vars['APP']['LBL_GROUP']; ?>

                                        			<?php endif; ?>
                                        			<span id="assign_user" style="<?php echo $this->_tpl_vars['style_user']; ?>
">
                                                		<select name="assigned_user_id" class=small>
                                                        	<?php $_from = $this->_tpl_vars['ACTIVITYDATA']['assigned_user_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key_one'] => $this->_tpl_vars['arr']):
?>
				                                <?php $_from = $this->_tpl_vars['arr']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['sel_value'] => $this->_tpl_vars['value']):
?>
                                		                	<option value="<?php echo $this->_tpl_vars['key_one']; ?>
" <?php echo $this->_tpl_vars['value']; ?>
><?php echo $this->_tpl_vars['sel_value']; ?>
</option>
								<?php endforeach; endif; unset($_from); ?>
                                                        	<?php endforeach; endif; unset($_from); ?>
                                                		</select>
								</span>
								<?php if ($this->_tpl_vars['secondvalue']['assigned_user_id'] != ''): ?>
                                                		<span id="assign_team" style="<?php echo $this->_tpl_vars['style_group']; ?>
">
                                                        		<select name="assigned_group_id" class=small>';
                                                                		<?php $_from = $this->_tpl_vars['secondvalue']['assigned_user_id']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key_one'] => $this->_tpl_vars['arr']):
?>
                                                                       		<?php $_from = $this->_tpl_vars['arr']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['sel_value'] => $this->_tpl_vars['value']):
?>
                                                                               		<option value="<?php echo $this->_tpl_vars['key_one']; ?>
" <?php echo $this->_tpl_vars['value']; ?>
><?php echo $this->_tpl_vars['sel_value']; ?>
</option>
                                                                       		<?php endforeach; endif; unset($_from); ?>
                                                                		<?php endforeach; endif; unset($_from); ?>
                                                        		</select>
				                                </span>
                                				<?php endif; ?>
							</td>
							<?php else: ?>
								<input name="assigned_user_id" value="<?php echo $this->_tpl_vars['CURRENTUSERID']; ?>
" type="hidden">
							<?php endif; ?>
						</tr>
					</table>
				</td>
			</tr>
			</table>
			<table border="0" cellpadding="0" cellspacing="1" width="100%" align=center>
			<tr><td width=50% valign=top>
				<table border=0 cellspacing=0 cellpadding=2 width=100% align=center >
					<tr><td colspan=3  class="mailSubHeader"><b><?php echo $this->_tpl_vars['MOD']['LBL_TODODATETIME']; ?>
</b></td></tr>
					<tr><td colspan=3><?php echo $this->_tpl_vars['STARTHOUR']; ?>
</td></tr>
					<tr><td>
							<?php $_from = $this->_tpl_vars['ACTIVITYDATA']['date_start']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['date_value'] => $this->_tpl_vars['time_value']):
?>
	                                        		<?php $this->assign('date_val', ($this->_tpl_vars['date_value'])); ?>
								<?php $this->assign('time_val', ($this->_tpl_vars['time_value'])); ?>
                                        		<?php endforeach; endif; unset($_from); ?>
							<input name="date_start" id="date_start" class="textbox" style="width: 90px;" onChange="dochange('date_start','due_date');" value="<?php echo $this->_tpl_vars['date_val']; ?>
" type="text"></td><td width=100%><img src="<?php echo $this->_tpl_vars['IMAGE_PATH']; ?>
btnL3Calendar.gif" alt="<?php echo $this->_tpl_vars['MOD']['LBL_SET_DATE']; ?>
" title="<?php echo $this->_tpl_vars['MOD']['LBL_SET_DATE']; ?>
" id="jscal_trigger_date_start" align="middle" border="0">
							<?php $_from = $this->_tpl_vars['secondvalue']['date_start']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['date_fmt'] => $this->_tpl_vars['date_str']):
?>
								<?php $this->assign('date_vl', ($this->_tpl_vars['date_fmt'])); ?>
							<?php endforeach; endif; unset($_from); ?>
							<script type="text/javascript">
								Calendar.setup ({
	        	                                	inputField : "date_start", ifFormat : "<?php echo $this->_tpl_vars['date_vl']; ?>
", showsTime : false, button : "jscal_trigger_date_start", singleClick : true, step : 1
							})
							</script>
						</td></tr>
					</table></td>
					<td width=50% valign="top">
                                                <table border="0" cellpadding="2" cellspacing="0" width="100%" align=center>
							<tr><td class="mailSubHeader" colspan=3><b><?php echo $this->_tpl_vars['LABEL']['due_date']; ?>
</b></td></tr>
							<tr><td>
								<?php $_from = $this->_tpl_vars['ACTIVITYDATA']['due_date']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['date_value'] => $this->_tpl_vars['time_value']):
?>
									<?php $this->assign('date_val', ($this->_tpl_vars['date_value'])); ?>
									<?php $this->assign('time_val', ($this->_tpl_vars['time_value'])); ?>
								<?php endforeach; endif; unset($_from); ?>
								<input name="due_date" id="due_date" class="textbox" style="width: 90px;" value="<?php echo $this->_tpl_vars['date_val']; ?>
" type="text"></td><td width=100%><img src="<?php echo $this->_tpl_vars['IMAGE_PATH']; ?>
btnL3Calendar.gif" alt="<?php echo $this->_tpl_vars['MOD']['LBL_SET_DATE']; ?>
" title="<?php echo $this->_tpl_vars['MOD']['LBL_SET_DATE']; ?>
" id="jscal_trigger_due_date" border="0">
								<?php $_from = $this->_tpl_vars['secondvalue']['due_date']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['date_fmt'] => $this->_tpl_vars['date_str']):
?>
                                                			<?php $this->assign('date_vl', ($this->_tpl_vars['date_fmt'])); ?>
                                        			<?php endforeach; endif; unset($_from); ?>
				      				<script type="text/javascript">
								Calendar.setup ({
	                                        			inputField : "due_date", ifFormat : "<?php echo $this->_tpl_vars['date_vl']; ?>
", showsTime : false, button : "jscal_trigger_due_date", singleClick : true, step : 1
					   			})
								</script>
        						</td></tr>
						</table></td>
					</tr>
				</table>

			     <?php if (count($this->_tpl_vars['CUSTOM_FIELDS_DATA']) > 0): ?>
					<br><br>
                     <table border=0 cellspacing=0 cellpadding=5 width=100% >
                     	<tr><?php echo '<td colspan=4 class="tableHeading"><b>'; ?><?php echo $this->_tpl_vars['APP']['LBL_CUSTOM_INFORMATION']; ?><?php echo '</b></td>'; ?>

			          	</tr>
			          	<tr>
			          		<?php $_from = $this->_tpl_vars['CUSTOM_FIELDS_DATA']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['index'] => $this->_tpl_vars['maindata']):
?>
			          			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "EditViewUI.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
								<?php if (( $this->_tpl_vars['index']+1 ) % 2 == 0): ?>
									</tr><tr>
								<?php endif; ?>
				            <?php endforeach; endif; unset($_from); ?>
				        <?php if (( $this->_tpl_vars['index']+1 ) % 2 != 0): ?>
				        	<td width="20%"></td><td width="30%"></td>
				        <?php endif; ?>
			            </tr>
                     </table>
                 <?php endif; ?>

                 <?php if ($this->_tpl_vars['PROJECT_ADDR'] != ''): ?>
					<br><br>
                     <table border=0 cellspacing=0 cellpadding=5 width=100% >
                     	<tr><?php echo '<td colspan=4 class="tableHeading"><b>Address Information</b></td>'; ?>

			          	</tr>
			          	<tr>
				        	<td width=20% class="dvtCellLabel" align=right>Project Address</td>
				        	<td width="30%" align=left class="dvtCellInfo"><?php echo $this->_tpl_vars['PROJECT_ADDR']; ?>
</td>
				        	<td width="20%"></td><td width="30%"></td>
			            </tr>
                     </table>
                 <?php endif; ?>


				<br><br>
		<?php if ($this->_tpl_vars['LABEL']['sendnotification'] != '' || ( $this->_tpl_vars['LABEL']['parent_id'] != '' ) || ( $this->_tpl_vars['LABEL']['contact_id'] != '' )): ?>
		<table align="center" border="0" cellpadding="0" cellspacing="0" width="95%" bgcolor="#FFFFFF">
			<tr>
				<td>
					<table border="0" cellpadding="3" cellspacing="0" width="100%">
						<tr>
							<td class="dvtTabCache" style="width: 10px;" nowrap="nowrap">&nbsp;</td>
							<?php if ($this->_tpl_vars['LABEL']['sendnotification'] != ''): ?>
                                                                <?php $this->assign('class_val', 'dvtUnSelectedCell'); ?>
								<td id="cellTabInvite" class="dvtSelectedCell" align="center" nowrap="nowrap"><a href="javascript:doNothing()" onClick="switchClass('cellTabInvite','on');switchClass('cellTabRelatedto','off');Taskshow('addTaskAlarmUI','todo',document.EditView.date_start.value,document.EditView.starthr.value,document.EditView.startmin.value,document.EditView.startfmt.value);ghide('addTaskRelatedtoUI');"><?php echo $this->_tpl_vars['MOD']['LBL_NOTIFICATION']; ?>
</a></td>
							<?php else: ?>
                                                                <?php $this->assign('class_val', 'dvtSelectedCell'); ?>
                                                        <?php endif; ?>
							<td class="dvtTabCache" style="width: 10px;" nowrap="nowrap">&nbsp;</td>
							<?php if (( $this->_tpl_vars['LABEL']['parent_id'] != '' ) || ( $this->_tpl_vars['LABEL']['contact_id'] != '' )): ?>
                                                        <td id="cellTabRelatedto" class=<?php echo $this->_tpl_vars['class_val']; ?>
 align=center nowrap><a href="javascript:doNothing()" onClick="switchClass('cellTabInvite','off');switchClass('cellTabRelatedto','on');Taskshow('addTaskRelatedtoUI','todo',document.EditView.date_start.value,document.EditView.starthr.value,document.EditView.startmin.value,document.EditView.startfmt.value);ghide('addTaskAlarmUI');"><?php echo $this->_tpl_vars['MOD']['LBL_RELATEDTO']; ?>
</a></td>
							<?php endif; ?>
                                                        <td class="dvtTabCache" style="width:100%">&nbsp;</td>
						</tr>

					</table>
				</td>
			</tr>
			<tr>
				<td class="dvtContentSpace" style="padding: 10px; height: 120px;" align="left" valign="top" width="100%">
			<!-- Reminder UI -->
			<div id="addTaskAlarmUI" style="display: block; width: 100%;">
			<?php if ($this->_tpl_vars['LABEL']['sendnotification'] != ''): ?>
				<?php $this->assign('vision', 'none'); ?>
                	<table>
				<tr><td><font color="red"><?php echo $this->_tpl_vars['TYPEOFDATA']['sendnotification']; ?>
</font><?php echo $this->_tpl_vars['LABEL']['sendnotification']; ?>
</td>
					<?php if ($this->_tpl_vars['ACTIVITYDATA']['sendnotification'] == 1): ?>
                                        <td>
                                                <input name="sendnotification" type="checkbox" checked>
                                        </td>
                                	<?php else: ?>
                                        <td>
                                                <input name="sendnotification" type="checkbox">
                                        </td>
                                	<?php endif; ?>
				</tr>
			</table>
			<?php else: ?>
                                <?php $this->assign('vision', 'block'); ?>
                        <?php endif; ?>
			</div>
			<div id="addTaskRelatedtoUI" style="display:<?php echo $this->_tpl_vars['vision']; ?>
;width:100%">
           		     <table width="100%" cellpadding="5" cellspacing="0" border="0">
			     <?php if ($this->_tpl_vars['LABEL']['parent_id'] != ''): ?>
                	     <tr>
                        	     <td><b><font color="red"><?php echo $this->_tpl_vars['TYPEOFDATA']['parent_id']; ?>
</font><?php echo $this->_tpl_vars['MOD']['LBL_RELATEDTO']; ?>
</b></td>
                                     <td>

					<input name="del_actparent_rel" type="hidden" >
                                             <select name="parent_type" class="small" id="parent_type" onChange="document.EditView.parent_name.value='';document.EditView.parent_id.value=''">
							<?php unset($this->_sections['combo']);
$this->_sections['combo']['name'] = 'combo';
$this->_sections['combo']['loop'] = is_array($_loop=$this->_tpl_vars['LABEL']['parent_id']) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['combo']['show'] = true;
$this->_sections['combo']['max'] = $this->_sections['combo']['loop'];
$this->_sections['combo']['step'] = 1;
$this->_sections['combo']['start'] = $this->_sections['combo']['step'] > 0 ? 0 : $this->_sections['combo']['loop']-1;
if ($this->_sections['combo']['show']) {
    $this->_sections['combo']['total'] = $this->_sections['combo']['loop'];
    if ($this->_sections['combo']['total'] == 0)
        $this->_sections['combo']['show'] = false;
} else
    $this->_sections['combo']['total'] = 0;
if ($this->_sections['combo']['show']):

            for ($this->_sections['combo']['index'] = $this->_sections['combo']['start'], $this->_sections['combo']['iteration'] = 1;
                 $this->_sections['combo']['iteration'] <= $this->_sections['combo']['total'];
                 $this->_sections['combo']['index'] += $this->_sections['combo']['step'], $this->_sections['combo']['iteration']++):
$this->_sections['combo']['rownum'] = $this->_sections['combo']['iteration'];
$this->_sections['combo']['index_prev'] = $this->_sections['combo']['index'] - $this->_sections['combo']['step'];
$this->_sections['combo']['index_next'] = $this->_sections['combo']['index'] + $this->_sections['combo']['step'];
$this->_sections['combo']['first']      = ($this->_sections['combo']['iteration'] == 1);
$this->_sections['combo']['last']       = ($this->_sections['combo']['iteration'] == $this->_sections['combo']['total']);
?>
								<option value="<?php echo $this->_tpl_vars['fldlabel_combo']['parent_id'][$this->_sections['combo']['index']]; ?>
" <?php echo $this->_tpl_vars['fldlabel_sel']['parent_id'][$this->_sections['combo']['index']]; ?>
><?php echo $this->_tpl_vars['LABEL']['parent_id'][$this->_sections['combo']['index']]; ?>
</option>
							<?php endfor; endif; ?>
					     </select>
                                     </td>
                                     <td>
                              	        <div id="taskrelatedto" align="left">
						<input name="parent_name" readonly type="text" class="calTxt small" value="<?php echo $this->_tpl_vars['ACTIVITYDATA']['parent_id']; ?>
">
						<input type="button" name="selectparent" class="crmButton small edit" value="<?php echo $this->_tpl_vars['APP']['LBL_SELECT']; ?>
" onClick="return window.open('index.php?module='+document.EditView.parent_type.value+'&action=Popup','test','width=640,height=602,resizable=0,scrollbars=0,top=150,left=200');">
						<input type='button' value='<?php echo $this->_tpl_vars['APP']['LNK_DELETE']; ?>
' class="crmButton small edit" onClick="document.EditView.del_actparent_rel.value=document.EditView.parent_id.value;document.EditView.parent_id.value='';document.EditView.parent_name.value='';">
					 </div>
                                     </td>
			     </tr>
			     <?php endif; ?>
			     <?php if ($this->_tpl_vars['LABEL']['contact_id'] != ''): ?>
			     <tr>
                                     <td><b><font color="red"><?php echo $this->_tpl_vars['TYPEOFDATA']['contact_id']; ?>
</font><?php echo $this->_tpl_vars['LABEL']['contact_id']; ?>
</b></td>
				     <td colspan="2">
						<input name="contact_name" id = "contact_name" readonly type="text" class="calTxt" value="<?php echo $this->_tpl_vars['ACTIVITYDATA']['contact_id']; ?>
"><input name="contact_id"  type="hidden" value="<?php echo $this->_tpl_vars['secondvalue']['contact_id']; ?>
">&nbsp;
						<input name="deletecntlist"  id="deletecntlist" type="hidden">
						<input type="button" onClick="selectContact('false','task',document.EditView);" class="crmButton small edit" name="selectcnt" value="<?php echo $this->_tpl_vars['APP']['LBL_SELECT']; ?>
&nbsp;<?php echo $this->_tpl_vars['APP']['SINGLE_Contacts']; ?>
">
						<input type='button' value='<?php echo $this->_tpl_vars['APP']['LNK_DELETE']; ?>
' class="crmButton small edit" onclick='document.EditView.deletecntlist.value =document.EditView.contact_id.value;document.EditView.contact_name.value = "";document.EditView.contact_id.value="";'>
				     </td>
                             </tr>
			     <?php endif; ?>
		</table>
		<?php endif; ?>
              	</div>
                </td></tr></table>

		<?php endif; ?>
			</td></tr>
			<tr>
				<td  colspan=4 style="padding:5px">
					<div align="center">
<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_KEY']; ?>
" class="crmbutton small save" onClick="checkFUP('<?php echo $this->_tpl_vars['EVENTID']; ?>
');this.form.action.value='Save'; " type="submit" name="button" value="  <?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
  " style="width:70px;display:none" >
					</div>
				</td>
			</tr></table>
		</td></tr></table>
		</td></tr></table>
</td></tr>
<input name='search_url' id="search_url" type='hidden' value='<?php echo $this->_tpl_vars['SEARCH']; ?>
'>
<!--<div style="visibility:hidden;">
	<table><tr><td id="date_table_firsttd"></td><td id="date_table_secondtd"></td><td id="date_table_thirdtd"></td></tr></table>
	<?php echo $this->_tpl_vars['STARTHOUR']; ?>

	<input type="text" name="date_start" id="jscal_field_date_start" class="textbox" value="<?php echo $this->_tpl_vars['date_val']; ?>
">
	<?php echo $this->_tpl_vars['ENDHOUR']; ?>

	<input type="text" name="due_date" id="jscal_field_due_date" class="textbox" value="<?php echo $this->_tpl_vars['date_val']; ?>
">
	<?php echo $this->_tpl_vars['FOLLOWUP']; ?>

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
        <td valign=top><img src="<?php echo vtiger_imageurl('showPanelTopRight.gif', $this->_tpl_vars['THEME']); ?>
" style="display:none;"/></td>
        </tr>
        </table>
<script>
<?php if ($this->_tpl_vars['ACTIVITY_MODE'] == 'Task'): ?>
	var fieldname = new Array('subject','date_start','time_start','due_date','taskstatus');
        var fieldlabel = new Array('<?php echo $this->_tpl_vars['MOD']['LBL_LIST_SUBJECT']; ?>
','<?php echo $this->_tpl_vars['MOD']['LBL_START_DATE']; ?>
','<?php echo $this->_tpl_vars['MOD']['LBL_TIME']; ?>
','<?php echo $this->_tpl_vars['MOD']['LBL_DUE_DATE']; ?>
','<?php echo $this->_tpl_vars['MOD']['LBL_STATUS']; ?>
');
        var fielddatatype = new Array('V~M','D~M~time_start','T~O','D~M~OTH~GE~date_start~Start Date & Time','V~O');
<?php else: ?>
	var fieldname = new Array('subject','date_start','time_start','due_date','eventstatus','taskpriority','sendnotification','parent_id','contact_id','reminder_time','recurringtype');
        var fieldlabel = new Array('<?php echo $this->_tpl_vars['MOD']['LBL_LIST_SUBJECT']; ?>
','<?php echo $this->_tpl_vars['MOD']['LBL_START_DATE']; ?>
','<?php echo $this->_tpl_vars['MOD']['LBL_TIME_START']; ?>
','<?php echo $this->_tpl_vars['MOD']['LBL_DUE_DATE']; ?>
','<?php echo $this->_tpl_vars['MOD']['LBL_STATUS']; ?>
','<?php echo $this->_tpl_vars['MOD']['Priority']; ?>
','<?php echo $this->_tpl_vars['MOD']['LBL_SENDNOTIFICATION']; ?>
','<?php echo $this->_tpl_vars['MOD']['LBL_RELATEDTO']; ?>
','<?php echo $this->_tpl_vars['MOD']['LBL_CONTACT_NAME']; ?>
','<?php echo $this->_tpl_vars['MOD']['LBL_SENDREMINDER']; ?>
','<?php echo $this->_tpl_vars['MOD']['Recurrence']; ?>
');
        var fielddatatype = new Array('V~M','D~M','T~O','D~M~OTH~GE~date_start~Start Date','V~O','V~O','C~O','I~O','I~O','I~O','O~O');
<?php endif; ?>
</script>
<script>
	var ProductImages=new Array();
	var count=0;

	function delRowEmt(imagename)
	{
		ProductImages[count++]=imagename;
	}

	function displaydeleted()
	{
		var imagelists='';
		for(var x = 0; x < ProductImages.length; x++)
		{
			imagelists+=ProductImages[x]+'###';
		}

		if(imagelists != '')
			document.EditView.imagelist.value=imagelists
	}

</script>

<!--
/*
*
* BLOCK END
*
*/
-->