<?php /* Smarty version 2.6.18, created on 2014-04-15 02:10:42
         compiled from modules/GoogleMap/Settings.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'vtiger_imageurl', 'modules/GoogleMap/Settings.tpl', 16, false),array('modifier', 'lower', 'modules/GoogleMap/Settings.tpl', 98, false),array('modifier', 'replace', 'modules/GoogleMap/Settings.tpl', 98, false),)), $this); ?>
<script src='modules/GoogleMap/jquery.min.js'></script>
<br />
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
			<table border="0" cellspacing="0" cellpadding="20" width="100%" class="settingsUI" style="background-color:#FFFFFF">
				<tr>
					<td width="80%" style="background-color:#FFFFFF">
						<table width="100%" style="background-color:#FFFFFF">
							<tbody><tr><td style="padding-left:10px;">
								<span style="float:right">Google Maps <b style='color:red'><?php echo $this->_tpl_vars['VERSION']; ?>
</b> <a href='javascript:uninstall()'>Uninstall</a></span>
								<!-- vTiger Module Settings -->
								<table width="50%" cellspacing="0" cellpadding="5" border="0" style="background-color:#FFFFFF"><tbody>
									<tr>
										<td style="padding:5px 1px 5px 5px" class="detailedViewHeader">
											<table width="100%">
												<tbody><tr>
													<td width="60%" align="left"><strong><?php echo $this->_tpl_vars['MOD_NEW']['LBL_VTIGER_MODULE_SETTINGS']; ?>
</strong></td>
													<td align="right" style="background:white">
														<select name="select_module" id="select_module" onchange="selectModule(this.value);getPicklistModule(this.value);getFilterField(this.value);getFieldsDisplay(this.value);showCF(this.value);showSF('GoogleMap')" style="width:98%;" class='small'>
															<?php $_from = $this->_tpl_vars['modules']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['value']):
?>
																<option value='<?php echo $this->_tpl_vars['key']; ?>
'<?php if ($this->_tpl_vars['key'] == 'Accounts'): ?> selected='selected'<?php endif; ?>><?php echo $this->_tpl_vars['value']; ?>
</option>
															<?php endforeach; endif; unset($_from); ?>
														</select>
													</td>
												</tr>
											</tbody></table>
										</td>					
									</tr>
								</tbody></table>
								<table width="50%" cellspacing="0" cellpadding="5" border="0" style="background-color:#FFFFFF"><tbody>
									<tr>
										<td align="left" width="60%" style="background:white">
											<?php echo $this->_tpl_vars['MOD_NEW']['LBL_INCLUDED_IN_THE_PANEL']; ?>

										</td>
										<td align="right" style="background:white">
											<select name="included_panel" id="included_panel" style="width:100%;" class='small'>
												<option value="Yes"<?php if ($this->_tpl_vars['cfg']['included_panel'] == 'Yes'): ?> selected="selected"<?php endif; ?>>Yes</option>
												<option value="No"<?php if ($this->_tpl_vars['cfg']['included_panel'] == 'No'): ?> selected="selected"<?php endif; ?>>No</option>
											</select>
										</td>
									</tr>
									<tr>
										<td align="left" style="background:white">
											<?php echo $this->_tpl_vars['MOD_NEW']['LBL_CHECKED_BY_DEFAULT']; ?>

										</td>
										<td align="right" style="background:white">
											<select name="checked_default" id="checked_default" style="width:100%;" class='small'>
												<option value="Yes"<?php if ($this->_tpl_vars['cfg']['checked_default'] == 'Yes'): ?> selected="selected"<?php endif; ?>>Yes</option>
												<option value="No"<?php if ($this->_tpl_vars['cfg']['checked_default'] == 'No'): ?> selected="selected"<?php endif; ?>>No</option>
											</select>
										</td>
									</tr>
									<!-- 
									<tr>
										<td align="left" style="background:white">
											Address Type
										</td>
										<td align="right" style="background:white">
											<select name="address_type" id="address_type" style="width:100%;" class='small'>
												<option value="Billing Address"<?php if ($this->_tpl_vars['cfg']['address_type'] == 'Billing Address'): ?> selected="selected"<?php endif; ?>>Billing Address</option>
												<option value="Shipping Address"<?php if ($this->_tpl_vars['cfg']['address_type'] == 'Shipping Address'): ?> selected="selected"<?php endif; ?>>Shipping Address</option>
											</select>
										</td>
									</tr>
									 -->
									
									<tr>
										<td align="left" width="60%" style="background:white">
											<?php echo $this->_tpl_vars['MOD_NEW']['LBL_PIN_SHAPE']; ?>
 <img id='im' src='modules/GoogleMap/images/<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['cfg']['pin_shape'])) ? $this->_run_mod_handler('lower', true, $_tmp) : smarty_modifier_lower($_tmp)))) ? $this->_run_mod_handler('replace', true, $_tmp, ' ', "-") : smarty_modifier_replace($_tmp, ' ', "-")); ?>
0.png' alt='<?php echo $this->_tpl_vars['cfg']['pin_shape']; ?>
'></img>
										</td>
										<td align="right" style="background:white">
											<select name="pin_shape" id="pin_shape" style="width:100%;" class='small' onchange='pinShape(this.value)'>
												<!--
												<option value="Square"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Square'): ?> selected="selected"<?php endif; ?>>Square</option>
												<option value="Triangle"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Triangle'): ?> selected="selected"<?php endif; ?>>Triangle</option>
												<option value="Circle"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Circle'): ?> selected="selected"<?php endif; ?>>Circle</option>
												<option value="Octagon"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Octagon'): ?> selected="selected"<?php endif; ?>>Octagon</option>
												<option value="Diamond"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Diamond'): ?> selected="selected"<?php endif; ?>>Diamond</option>
												<option value="Hexagon"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Hexagon'): ?> selected="selected"<?php endif; ?>>Hexagon</option>
												<option value="Pentagon"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Pentagon'): ?> selected="selected"<?php endif; ?>>Pentagon</option>
												<option value="Star"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Star'): ?> selected="selected"<?php endif; ?>>Star</option>
												<option value="Oval"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Oval'): ?> selected="selected"<?php endif; ?>>Oval</option>
												<option value="Pear"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Pear'): ?> selected="selected"<?php endif; ?>>Pear</option>
												<option value="Marquise"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Marquise'): ?> selected="selected"<?php endif; ?>>Marquise</option>
												-->
												<option value="Star"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Star'): ?> selected="selected"<?php endif; ?>>Star</option>
												<option value="Google Pin"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Google Pin'): ?> selected="selected"<?php endif; ?>>Google Pin</option>
												<option value="Push Pin"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Push Pin'): ?> selected="selected"<?php endif; ?>>Push Pin</option>
												<option value="Flag"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Flag'): ?> selected="selected"<?php endif; ?>>Flag</option>
												<option value="Round Bubble"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Round Bubble'): ?> selected="selected"<?php endif; ?>>Round Bubble</option>
												<option value="Square Bubble"<?php if ($this->_tpl_vars['cfg']['pin_shape'] == 'Square Bubble'): ?> selected="selected"<?php endif; ?>>Square Bubble</option>
											</select>
										</td>
									</tr>
									
									<tr>
										<td align="left" style="background:white">
											<?php echo $this->_tpl_vars['MOD_NEW']['LBL_ICON_FIELD']; ?>

										</td>
										<td align="right" style="background:white">
											<select name="icon_break_field" id="icon_break_field" style="width:100%;" class='small'>
												<?php echo $this->_tpl_vars['picklists']; ?>

											</select>
										</td>
									</tr>
									<tr>
										<td align="left" valign="top" style="background:white">
											<?php echo $this->_tpl_vars['MOD_NEW']['LBL_FILTER']; ?>

										</td>
										<td align="right" style="background:white">
											<select name="filter_field" id="filter_field" style="width:100%;" class='small' onchange="changeFilterField(this.value);">
												<?php echo $this->_tpl_vars['picklists_filter']; ?>

											</select>
											<div style="padding-top:5px;<?php if ($this->_tpl_vars['filter_field'] == ''): ?>display:none;<?php endif; ?>" id="filter_field_value_div">
												<select name="filter_field_value" id="filter_field_value" multiple style="width:100%;" class='small'>
													<?php echo $this->_tpl_vars['filter_field_values']; ?>

												</select>
											</div>
										</td>
									</tr>
								</tbody></table>
	
								<table width="50%" cellspacing="0" cellpadding="5" border="0" style="background-color:#FFFFFF"><tbody>
									<tr>
										<td align="left" width="60%" style="background:white">
											<?php echo $this->_tpl_vars['MOD_NEW']['LBL_ADDRESS_TYPE']; ?>

										</td>
										<td align="right" style="background:white">
											<select name="address_type" id="address_type" style="width:100%;" class='small' onchange='changeAddress(this.value)'>
												<option value="Billing Address"<?php if ($this->_tpl_vars['cfg']['address_type'] == 'Billing Address'): ?> selected="selected"<?php endif; ?>>Billing Address</option>
												<option value="Shipping Address"<?php if ($this->_tpl_vars['cfg']['address_type'] == 'Shipping Address'): ?> selected="selected"<?php endif; ?>>Shipping Address</option>
											</select>
										</td>
									</tr>
								</tbody></table>
								<span id='address' style="background-color:#FFFFFF"><?php echo $this->_tpl_vars['a']; ?>
</span>
		
								<table width="50%" cellspacing="0" cellpadding="0" border="0" style="background-color:#FFFFFF"><tbody>
									<tr>
										<td align="left" style="background:white" colspan="2">
											<br><?php echo $this->_tpl_vars['MOD_NEW']['LBL_GOOGLE_MAP_TEXT']; ?>

											<input type="hidden" value="<?php echo $this->_tpl_vars['tt']; ?>
" id="field_count" name="field_count">
											<div id="list_fields" style="padding-top:10px;">
												<div id="field_1">
													<table width='100%'><tr><td width='61%' align='right'><img border="0" title="Add more field" alt="Add more field" src="themes/softed/images/select.gif" onclick="addMoreField('list_fields');"></td><td width='39%'>
													<select name="cf[]" id="fields_display" style="width:100%;" class='small'>
														<?php echo $this->_tpl_vars['display']; ?>

													</select>
													</td></tr></table>
												</div>
												<span id='custom_fields'><?php echo $this->_tpl_vars['cf']; ?>
</span>
											</div>
										</td>										
									</tr>
									
									<!-- Sync -->
									<div id='sync'>
										<table width="50%" cellspacing="0" cellpadding="5" border="0" style="background-color:#FFFFFF"><tbody>
											<tr>
												<td style="padding:5px">
													<table width="100%">
														<tbody><tr>
															<td width="60%" align="left" style="background:white"><strong><?php echo $this->_tpl_vars['MOD_NEW']['LBL_UPDATE_GEO_CODES']; ?>
</strong></td>
															<td width="40%"><input type='button' style='width:100%' onclick='Sync()' value='<?php echo $this->_tpl_vars['MOD_NEW']['LBL_SYNC']; ?>
' class='small crmbutton delete'></input></td>
														</tr>
													</tbody></table>
												</td>					
											</tr>
										</tbody></table>
									</div>
									<div id='sync_result' style='padding:4px;margin:4px'></div>
									
									<!-- Google Maps Integration -->
									<table width="50%" cellspacing="0" cellpadding="5" border="0" style="background-color:#FFFFFF"><tbody>
										<tr>
											<td style="padding:5px" class="detailedViewHeader">
												<table width="100%">
													<tbody><tr>
														<td width="100%" align="left"><strong>Google Maps <?php echo $this->_tpl_vars['MOD_NEW']['LBL_DISPLAY_SETTINGS']; ?>
</strong></td>
													</tr>
												</tbody></table>
											</td>					
										</tr>
									</tbody></table>
									
									<table width="50%" cellspacing="0" cellpadding="5" border="0" style="background-color:#FFFFFF"><tbody>
										<tr>
											<td align="left" width="60%" style="background:white">
												<?php echo $this->_tpl_vars['MOD_NEW']['LBL_INCLUDE_SEARCH_FIELDS']; ?>
?
											</td>
											<td align="right" style="background:white">
												<select name="include_search" id="include_search" style="width:100%;" class='small' onchange='changeIncludeSearch(this.value)'>
													<option value="No"<?php if ($this->_tpl_vars['gglmp']['include_search'] == 'No'): ?> selected="selected"<?php endif; ?>>No</option>
													<option value="Yes"<?php if ($this->_tpl_vars['gglmp']['include_search'] == 'Yes'): ?> selected="selected"<?php endif; ?>>Yes</option>
												</select>
											</td>
										</tr>
									</tbody></table>
									<span id='search_fields' style="background-color:#FFFFFF;<?php if ($this->_tpl_vars['gglmp']['include_search'] == 'Yes'): ?>display:inline<?php else: ?>display:none<?php endif; ?>">
										<table width="50%" cellspacing="0" cellpadding="5" border="0"><tbody><tr><td width="10%">&nbsp;</td><td><?php echo $this->_tpl_vars['MOD_NEW']['LBL_ADDRESS']; ?>
</td><td width="40%"><select class="small" style="width:100%;" id="sfaddress" name="sfaddress"><option value="No"<?php if ($this->_tpl_vars['gglmp']['sfaddress'] == 'No'): ?> selected="selected"<?php endif; ?>>No</option><option value="Yes"<?php if ($this->_tpl_vars['gglmp']['sfaddress'] == 'Yes'): ?> selected="selected"<?php endif; ?>>Yes</option></select></td></tr></tbody></table>
										<table width="50%" cellspacing="0" cellpadding="5" border="0"><tbody><tr><td width="10%">&nbsp;</td><td><?php echo $this->_tpl_vars['MOD_NEW']['LBL_CITY']; ?>
</td><td width="40%"><select class="small" style="width:100%;" id="sfcity" name="sfcity"><option value="No"<?php if ($this->_tpl_vars['gglmp']['sfcity'] == 'No'): ?> selected="selected"<?php endif; ?>>No</option><option value="Yes"<?php if ($this->_tpl_vars['gglmp']['sfcity'] == 'Yes'): ?> selected="selected"<?php endif; ?>>Yes</option></select></td></tr></tbody></table>
										<table width="50%" cellspacing="0" cellpadding="5" border="0"><tbody><tr><td width="10%">&nbsp;</td><td><?php echo $this->_tpl_vars['MOD_NEW']['LBL_STATE']; ?>
</td><td width="40%"><select class="small" style="width:100%;" id="sfstate" name="sfstate"><option value="No"<?php if ($this->_tpl_vars['gglmp']['sfstate'] == 'No'): ?> selected="selected"<?php endif; ?>>No</option><option value="Yes"<?php if ($this->_tpl_vars['gglmp']['sfstate'] == 'Yes'): ?> selected="selected"<?php endif; ?>>Yes</option></select></td></tr></tbody></table>
										<table width="50%" cellspacing="0" cellpadding="5" border="0"><tbody><tr><td width="10%">&nbsp;</td><td><?php echo $this->_tpl_vars['MOD_NEW']['LBL_ZIP']; ?>
</td><td width="40%"><select class="small" style="width:100%;" id="sfzip" name="sfzip"><option value="No"<?php if ($this->_tpl_vars['gglmp']['sfzip'] == 'No'): ?> selected="selected"<?php endif; ?>>No</option><option value="Yes"<?php if ($this->_tpl_vars['gglmp']['sfzip'] == 'Yes'): ?> selected="selected"<?php endif; ?>>Yes</option></select></td></tr></tbody></table>
										<table width="50%" cellspacing="0" cellpadding="5" border="0"><tbody><tr><td width="10%">&nbsp;</td><td><?php echo $this->_tpl_vars['MOD_NEW']['LBL_COUNTRY']; ?>
</td><td width="40%"><select class="small" style="width:100%;" id="sfcountry" name="sfcountry"><option value="No"<?php if ($this->_tpl_vars['gglmp']['sfcountry'] == 'No'): ?> selected="selected"<?php endif; ?>>No</option><option value="Yes"<?php if ($this->_tpl_vars['gglmp']['sfcountry'] == 'Yes'): ?> selected="selected"<?php endif; ?>>Yes</option></select></td></tr></tbody></table>
									</span>
									
									<table width="50%" cellspacing="0" cellpadding="5" border="0" style="background-color:#FFFFFF"><tbody>
										<tr>
											<td align="left" width="60%" style="background:white">
												<?php echo $this->_tpl_vars['MOD_NEW']['LBL_DEFAULT_MILE_RADIUS']; ?>

											</td>
											<td align="right" style="background:white">
												<?php echo '<style> #default_radius { width:96% } @media screen and (-webkit-min-device-pixel-ratio:0){ #default_radius { width:98%;margin-right:4px } }</style>'; ?>

												<input name="default_radius" id="default_radius" value="<?php if ($this->_tpl_vars['cfg']['default_radius']): ?><?php echo $this->_tpl_vars['cfg']['default_radius']; ?>
<?php else: ?>10<?php endif; ?>" class='small'>
											</td>
										</tr>
										<tr>
											<td align="left" style="background:white">
												<?php echo $this->_tpl_vars['MOD_NEW']['LBL_ELEVATION_ZOOM_LEVEL']; ?>

											</td>
											<td align="right" style="background:white">
												<select name="zoom_level" id="zoom_level" style="width:100%;" class='small'>

                                                    <option value="-1"<?php if ($this->_tpl_vars['cfg']['zoom_level'] == -1): ?> selected="selected"<?php endif; ?>>Fit Boundary</option>

												<?php unset($this->_sections['zl']);
$this->_sections['zl']['name'] = 'zl';
$this->_sections['zl']['start'] = (int)0;
$this->_sections['zl']['loop'] = is_array($_loop=22) ? count($_loop) : max(0, (int)$_loop); unset($_loop);
$this->_sections['zl']['step'] = ((int)1) == 0 ? 1 : (int)1;
$this->_sections['zl']['show'] = true;
$this->_sections['zl']['max'] = $this->_sections['zl']['loop'];
if ($this->_sections['zl']['start'] < 0)
    $this->_sections['zl']['start'] = max($this->_sections['zl']['step'] > 0 ? 0 : -1, $this->_sections['zl']['loop'] + $this->_sections['zl']['start']);
else
    $this->_sections['zl']['start'] = min($this->_sections['zl']['start'], $this->_sections['zl']['step'] > 0 ? $this->_sections['zl']['loop'] : $this->_sections['zl']['loop']-1);
if ($this->_sections['zl']['show']) {
    $this->_sections['zl']['total'] = min(ceil(($this->_sections['zl']['step'] > 0 ? $this->_sections['zl']['loop'] - $this->_sections['zl']['start'] : $this->_sections['zl']['start']+1)/abs($this->_sections['zl']['step'])), $this->_sections['zl']['max']);
    if ($this->_sections['zl']['total'] == 0)
        $this->_sections['zl']['show'] = false;
} else
    $this->_sections['zl']['total'] = 0;
if ($this->_sections['zl']['show']):

            for ($this->_sections['zl']['index'] = $this->_sections['zl']['start'], $this->_sections['zl']['iteration'] = 1;
                 $this->_sections['zl']['iteration'] <= $this->_sections['zl']['total'];
                 $this->_sections['zl']['index'] += $this->_sections['zl']['step'], $this->_sections['zl']['iteration']++):
$this->_sections['zl']['rownum'] = $this->_sections['zl']['iteration'];
$this->_sections['zl']['index_prev'] = $this->_sections['zl']['index'] - $this->_sections['zl']['step'];
$this->_sections['zl']['index_next'] = $this->_sections['zl']['index'] + $this->_sections['zl']['step'];
$this->_sections['zl']['first']      = ($this->_sections['zl']['iteration'] == 1);
$this->_sections['zl']['last']       = ($this->_sections['zl']['iteration'] == $this->_sections['zl']['total']);
?>
													<option value="<?php echo $this->_sections['zl']['index']; ?>
"<?php if ($this->_sections['zl']['index'] == $this->_tpl_vars['cfg']['zoom_level']): ?> selected="selected"<?php endif; ?>><?php echo $this->_sections['zl']['index']; ?>
</option>
												<?php endfor; endif; ?>
												</select>
											</td>
										</tr>
										<tr>
											<td align="left" style="background:white">
												<?php echo $this->_tpl_vars['MOD_NEW']['LBL_ENABLE_ON_DEMAND_REFRESH']; ?>

											</td>
											<td align="right" style="background:white">
												<select name="on_demand" id="on_demand" style="width:100%;" class='small'>
													<option value="No"<?php if ($this->_tpl_vars['gglmp']['on_demand'] == 'No'): ?> selected="selected"<?php endif; ?>>No</option>
													<option value="Yes"<?php if ($this->_tpl_vars['gglmp']['on_demand'] == 'Yes'): ?> selected="selected"<?php endif; ?>>Yes</option>
												</select>
											</td>
										</tr>

                                        <tr>
                                            <td align="left" width="60%" style="background:white">
                                                <?php echo $this->_tpl_vars['MOD_NEW']['LBL_MAIN_RECORD_ICON']; ?>

                                            </td>
                                            <td align="right" style="background:white">
                                                <?php echo '<style> #main_record_icon { width:96% } @media screen and (-webkit-min-device-pixel-ratio:0){ #main_record_icon { width:98%;margin-right:4px } }</style>'; ?>

                                                <input name="main_record_icon" id="main_record_icon" value="<?php if ($this->_tpl_vars['cfg']['main_record_icon']): ?><?php echo $this->_tpl_vars['cfg']['main_record_icon']; ?>
<?php else: ?>modules/GoogleMap/images/arrow.png<?php endif; ?>" class='small'>
                                            </td>
                                        </tr>

										<tr>
											<td align="left" width="60%" style="background:white">
												<?php echo $this->_tpl_vars['MOD_NEW']['LBL_GOOGLE_API_KEY']; ?>

											</td>
											<td align="right" style="background:white">
												<?php echo '<style>#google_api_key { width:96% } @media screen and (-webkit-min-device-pixel-ratio:0){ #google_api_key { width:98%;margin-right:4px } }</style>'; ?>

												<input name="google_api_key" id="google_api_key" value="<?php echo $this->_tpl_vars['google_api_key']; ?>
" class='small'>
											</td>
										</tr>
									</tbody></table>
									
									<table width="50%" cellspacing="0" cellpadding="5" border="0"><tbody>
									<tr><td align="right" width="60%"><input type="button" style="width: 70px;" onclick="gmConfigSave(1)" value="  <?php echo $this->_tpl_vars['MOD_NEW']['LBL_SAVE']; ?>
  " name="button" class="small crmbutton cancel" accesskey="S" title="Save [Alt+S]" id='button'></td><td>&nbsp;</td></tr>
									</tbody></table>
								</tbody></table>
								   
							</td></tr>
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
<div id="__vtigerjs_dialogbox_olayer__" class="small veil" style="z-index: 2147483647; height: 1093px; width: 100%; display: none; opacity: 0.3;"><img src="themes/images/close.gif" alt="X" style="right: 10px; top: 5px; position: absolute; cursor: pointer;"></div>
<?php echo '
<script>
	function selectModule(val) {

		document.getElementById(\'__vtigerjs_dialogbox_olayer__\').style.display= \'block\';
		
		if(val!= \'Accounts\'&& val!= \'Contacts\'&& val!= \'Leads\'&& 0){
			document.getElementById(\'sync\').style.display= \'none\';
			document.getElementById(\'sync_result\').innerHTML= \'\';
		}
		
		document.getElementById(\'button\').className= \'crmbutton small cancel\';
		
		var obj = document.getElementById(\'address_type\');
		if(val == \'Accounts\') {
			$(\'#address_type\').html(\'<option value="Billing Address">Billing Address</option><option value="Shipping Address">Shipping Address</option>\');
			document.getElementById(\'sync\').style.display= \'inline\';
			document.getElementById(\'sync_result\').innerHTML= \'\';
		} else if(val == \'Contacts\') {
			$(\'#address_type\').html(\'<option value="Mailing Address">Mailing Address</option><option value="Other Address">Other Address</option>\');
			document.getElementById(\'sync\').style.display= \'inline\';
			document.getElementById(\'sync_result\').innerHTML= \'\';
		} else {
			$(\'#address_type\').html(\'<option value="Default Address">Default Address</option>\');
			document.getElementById(\'sync\').style.display= \'inline\';
			document.getElementById(\'sync_result\').innerHTML= \'\';
		}
		// tel me why - begin
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&get_cfg=1&field=default_radius&mod=\'+ val,
	            onComplete: function(response){
	                document.getElementById(\'default_radius\').value= response.responseText != \'No\'? response.responseText: 10;
	            }
	        }
	    );
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&get_cfg=1&field=zoom_level&mod=\'+ val,
	            onComplete: function(response){
	            	zoom_level= document.getElementById(\'zoom_level\');
	            	for(i= 0; i< zoom_level.options.length; i++){
		            	if(zoom_level.options[i].value== response.responseText){
		            		zoom_level.options[i].selected= true;
		            		break;
		            	}
		            	if(zoom_level.options[i].value!= response.responseText&& zoom_level.options[i].value== 14){
		            		zoom_level.options[i].selected= true;
		            		break;
		            	}
	            	}
	            }
	        }
	    );
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&get_cfg=1&field=included_panel&mod=\'+ val,
	            onComplete: function(response){
	            	included_panel= document.getElementById(\'included_panel\');
	            	for(i= 0; i< included_panel.options.length; i++){
		            	if(included_panel.options[i].value== response.responseText){
		            		included_panel.options[i].selected= true;
		            		break;
		            	}
	            	}
	            }
	        }
	    );
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&get_cfg=1&field=checked_default&mod=\'+ val,
	            onComplete: function(response){
	            	checked_default= document.getElementById(\'checked_default\');
	            	for(i= 0; i< checked_default.options.length; i++){
		            	if(checked_default.options[i].value== response.responseText){
		            		checked_default.options[i].selected= true;
		            		break;
		            	}
	            	}
	            }
	        }
	    );
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&get_cfg=1&field=address_type&mod=\'+ val,
	            onComplete: function(response){
	            	address_type= document.getElementById(\'address_type\');
		            if(response.responseText== \'No\'){
						$(\'#address_type\').html("<option value=\'Default Address\'>Default Address</option>");
		            }
		            else{
		            	for(i= 0; i< address_type.options.length; i++){
			            	if(address_type.options[i].value== response.responseText){
			            		address_type.options[i].selected= true;
			            		break;
			            	}
		            	}
		            }
	            }
	        }
	    );
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&get_cfg=1&field=pin_shape&mod=\'+ val,
	            onComplete: function(response){
	            	ps= response.responseText;
	            	if(ps== \'No\'){
	            		ps= \'Star\';
	            	}
            		ps= ps.toLowerCase();
					ps= ps.replace(/ /i, \'-\');
					document.getElementById(\'im\').src= \'modules/GoogleMap/images/\'+ ps+ \'0.png\';
            		document.getElementById(\'im\').alt= ps;
	            	pin_shape= document.getElementById(\'pin_shape\');
	            	for(i= 0; i< pin_shape.options.length; i++){
		            	if(pin_shape.options[i].value== response.responseText){
		            		pin_shape.options[i].selected= true;
		            	}
		            	else{
		            		pin_shape.options[i].selected= false;
		            	}
	            	}
	            	if(response.responseText== \'No\'){
	            		pin_shape.options[0].selected= true;
	            	}
	            }
	        }
	    );
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&a=1&mod=\'+ val,
	            onComplete: function(response){
	            	document.getElementById(\'address\').innerHTML= response.responseText;
	            	document.getElementById(\'__vtigerjs_dialogbox_olayer__\').style.display= \'none\';
	            }
	        }
	    );
		// tel me why - end
	}
	function addMoreField(id) {
	    var obj = document.getElementById(id);
	    var obj_count = document.getElementById(\'field_count\');
	    var cnt = parseInt(obj_count.value) + 1;
	    obj_count.value = cnt;
	    
	    var new_obj = document.createElement(\'div\');
	    new_obj.id = document.getElementById(\'select_module\').value+ cnt;
	    new_obj.style.paddingTop= \'4px\';
		// dnguyen - begin
		module= document.getElementById(\'select_module\').value;
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&ui=0&mod=\'+module,
	            onComplete: function(response){
	                new_obj.innerHTML = \'<table width="100%"><tr><td width="61%" align="right"><img border="0" title="Remove field" alt="Remove field" src="themes/images/clear_field.gif" onclick="deleteMoreField(\\\'list_fields\\\',\\\'\'+ new_obj.id +\'\\\');"></td><td width="39%"><select name="cf[]" id="\'+ module+ \'CF\'+ cnt+ \'" style="width:100%;" class="small">\'+ response.responseText+ \'</select></td></tr></table>\';
	            }
	        }
	    );
	    // dnguyen - end
	    obj.appendChild(new_obj);
	}
	
	function deleteMoreField(id, id_del) {
	    var obj = document.getElementById(id);
	    var obj_del = document.getElementById(id_del);
	    
	    obj.removeChild(obj_del);
	}
	// dnguyen - begin
	function getPicklistModule(module){
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&ui=15&mod=\'+module,
	            onComplete: function(response){
	                $(\'#icon_break_field\').html(response.responseText);
	            }
	        }
	    );
	}
	function getFilterField(module){
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&ui=15&ff=1&mod=\'+module,
	            onComplete: function(response){
	            	var temp = response.responseText.toString();
	            	var arr = temp.split(\'#=#=#\');	            		            	
	                $(\'#filter_field\').html(arr[0]);
	                if(arr[1] == \'\') {
	                	$(\'#filter_field_value_div\').hide();
	                } else {
	                	$(\'#filter_field_value_div\').show();
	                	$(\'#filter_field_value\').html(arr[1]);
	                }
	                
	            }
	        }
	    );	    
	}
	function getFieldsDisplay(module){
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&ui=0&mod=\'+module,
	            onComplete: function(response){
	                document.getElementById(\'fields_display\').innerHTML= response.responseText;
	            }
	        }
	    );
	}
	function gmConfigSave(lrt){
		//VtigerJS_DialogBox._olayer(true);
		document.getElementById(\'__vtigerjs_dialogbox_olayer__\').style.display= \'block\';
		select_module= document.getElementById(\'select_module\').value;
		
		include_search= jQuery(\'#include_search\').val();
		if(include_search== \'Yes\'){
			sf= \'&include_search=Yes&sfaddress=\'+ jQuery(\'#sfaddress\').val()
			+ \'&sfcity=\'+ jQuery(\'#sfcity\').val()
			+ \'&sfstate=\'+ jQuery(\'#sfstate\').val()
			+ \'&sfzip=\'+ jQuery(\'#sfzip\').val()
			+ \'&sfcountry=\'+ jQuery(\'#sfcountry\').val();
		}
		else{
			sf= \'&include_search=No&sfaddress=No&sfcity=No&sfstate=No&sfzip=No&sfcountry=No\';
		}
		
		default_radius= document.getElementById(\'default_radius\').value;
		zoom_level= document.getElementById(\'zoom_level\').value;
		on_demand= document.getElementById(\'on_demand\').value;

        main_record_icon= document.getElementById(\'main_record_icon\').value;

		google_api_key= document.getElementById(\'google_api_key\').value;
		included_panel= document.getElementById(\'included_panel\').value;
		checked_default= document.getElementById(\'checked_default\').value;
		address_type= document.getElementById(\'address_type\').value;
		icon_break_field= document.getElementById(\'icon_break_field\').value;
		filter_field= document.getElementById(\'filter_field\').value;		
		pin_shape= document.getElementById(\'pin_shape\').value;
		tmp= document.getElementsByName(\'cf[]\');
		fields_display= \'\';
		for(i= 0; i< tmp.length; i++){
			fields_display+= \'::\'+ tmp[i].value;
		}
		
		// filter field 
		tmp= document.getElementById(\'filter_field_value\');
		filter_field_value = "";
		for(i = 0;i < tmp.length;i++) {
			if(tmp.options[i].selected) {
				filter_field_value += tmp.options[i].value + \'::\';
			}
		}
		
		str= \'&select_module=\'+ select_module
		+ \'&default_radius=\'+ default_radius
		+ \'&zoom_level=\'+ zoom_level
		+ \'&on_demand=\'+ on_demand

		+ \'&main_record_icon=\'+ main_record_icon

		+ \'&google_api_key=\'+ google_api_key
		+ \'&included_panel=\'+ included_panel
		+ \'&checked_default=\'+ checked_default
		+ \'&address_type=\'+ address_type
		+ \'&icon_break_field=\'+ icon_break_field
		+ \'&filter_field=\'+ filter_field
		+ \'&filter_field_value=\'+ escape(filter_field_value)
		+ \'&pin_shape=\'+ pin_shape
		+ \'&fields_display=\'+ fields_display;
		if(lrt){
			str+= \'&alert=1\';
		}

		// if(select_module!= \'Accounts\'&& select_module!= \'Contacts\'&& select_module!= \'Leads\'){
			address= document.getElementById(\'address12\').value;
			city= document.getElementById(\'city\').value;
			state= document.getElementById(\'state\').value;
			zip= document.getElementById(\'zip\').value;
			country= document.getElementById(\'country\').value;
			str+= \'&address=\'+ address
			+ \'&city=\'+ city
			+ \'&state=\'+ state
			+ \'&zip=\'+ zip
			+ \'&country=\'+ country;
			if(fields_display== \'::::::::\'){
				fields_display= address+ \'::\'+ city+ \'::\'+ state+ \'::\'+ zip+ \'::\'+ country;
			}
		// }
		
		str+= sf;
		
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&cfg=1\'+ str,
	            onComplete: function(response){
	            	document.getElementById(\'button\').className= \'crmbutton small save\';
	            	document.getElementById(\'__vtigerjs_dialogbox_olayer__\').style.display= \'none\';
	            	if(lrt){
	                	alert(response.responseText);
	            	}
	                //VtigerJS_DialogBox._olayer(false);
	            }
	        }
	    );
	}
	function showCF(module){
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&cf=1&mod=\'+ module,
	            onComplete: function(response){
	            	document.getElementById(\'list_fields\').innerHTML= response.responseText;
	            }
	        }
	    );
	}
	function showSF(module){
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&sf=1&mod=\'+ module,
	            onComplete: function(response){
	            	sf= response.responseText.split(\'|\');
	            	if(sf[0]== \'Yes\'){
	            		jQuery(\'#search_fields\').show();
	            	}
	            	if(sf[0]== \'No\'){
	            		jQuery(\'#search_fields\').hide();
	            	}
	            	jQuery(\'#include_search option[value=\'+ sf[0]+ \']\').attr(\'selected\', \'selected\') ;
	            	jQuery(\'#sfaddress option[value=\'+ sf[1]+ \']\').attr(\'selected\', \'selected\') ;
	            	jQuery(\'#sfcity option[value=\'+ sf[2]+ \']\').attr(\'selected\', \'selected\') ;
	            	jQuery(\'#sfstate option[value=\'+ sf[3]+ \']\').attr(\'selected\', \'selected\') ;
					jQuery(\'#sfzip option[value=\'+ sf[4]+ \']\').attr(\'selected\', \'selected\') ;
					jQuery(\'#sfcountry option[value=\'+ sf[5]+ \']\').attr(\'selected\', \'selected\') ;
	            }
	        }
	    );
	}
	function changeFilterField(val){		
		if(val == \'\') {
			document.getElementById(\'filter_field_value_div\').style.display = "none";
		} else {
			document.getElementById(\'filter_field_value_div\').style.display = "block";
			new Ajax.Request(
		        \'index.php\',
		        {
		            method: \'post\',
		            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=GoogleMapFunctions&cff=1&filter_field=\'+ val,
		            onComplete: function(response){
		            	document.getElementById(\'filter_field_value\').innerHTML= response.responseText;	            	
		            }
		        }
		    );
		}
	}
	function Sync(){
		//VtigerJS_DialogBox._olayer(true);
		gmConfigSave(0);
		document.getElementById(\'sync_result\').innerHTML= "<img src=\'themes/softed/images/status.gif\' alt=\'Sync\'></img>";
		module= document.getElementById(\'select_module\').value;
		new Ajax.Request(
	        \'index.php\',
	        {
	            method: \'post\',
	            postBody: \'module=GoogleMap&action=GoogleMapAjax&file=UpdateGeocodes&mod=\'+ module,
	            onComplete: function(response){



	            	document.getElementById(\'sync_result\').innerHTML= response.responseText;

                    eval(document.getElementById("scrpt").innerHTML);

	            	//VtigerJS_DialogBox._olayer(false);
	            }
	        }
	    );
	}
	function changeAddress(type){
		if(type== \'Billing Address\'){
			a= \'bill_street\';
			b= \'bill_city\';
			c= \'bill_state\';
			d= \'bill_code\';
			e= \'bill_country\';
		}
		if(type== \'Shipping Address\'){
			a= \'ship_street\';
			b= \'ship_city\';
			c= \'ship_state\';
			d= \'ship_code\';
			e= \'ship_country\';
		}
		if(type== \'Mailing Address\'){
			a= \'mailingstreet\';
			b= \'mailingcity\';
			c= \'mailingstate\';
			d= \'mailingzip\';
			e= \'mailingcountry\';
		}
		if(type== \'Other Address\'){
			a= \'otherstreet\';
			b= \'othercity\';
			c= \'otherstate\';
			d= \'otherzip\';
			e= \'othercountry\';
		}
		address12= document.getElementById(\'address12\');
    	for(i= 0; i< address12.options.length; i++){
        	if(address12.options[i].value== a){
        		address12.options[i].selected= true;
        		break;
        	}
    	}
    	city= document.getElementById(\'city\');
    	for(i= 0; i< city.options.length; i++){
        	if(city.options[i].value== b){
        		city.options[i].selected= true;
        		break;
        	}
    	}
    	state= document.getElementById(\'state\');
    	for(i= 0; i< state.options.length; i++){
        	if(state.options[i].value== c){
        		state.options[i].selected= true;
        		break;
        	}
    	}
    	zip= document.getElementById(\'zip\');
    	for(i= 0; i< zip.options.length; i++){
        	if(zip.options[i].value== d){
        		zip.options[i].selected= true;
        		break;
        	}
    	}
    	country= document.getElementById(\'country\');
    	for(i= 0; i< country.options.length; i++){
        	if(country.options[i].value== e){
        		country.options[i].selected= true;
        		break;
        	}
    	}
	}
	function pinShape(ps){
		ps= ps.toLowerCase();
		ps= ps.replace(/ /i, \'-\');
		if(ps== \'square-bubble\'){
			document.getElementById(\'im\').width= 32;
			document.getElementById(\'im\').height= 19;
		}
		if(ps== \'round-bubble\'){
			document.getElementById(\'im\').width= 23;
			document.getElementById(\'im\').height= 24;
		}
		if(ps== \'flag\'){
			document.getElementById(\'im\').width= 22;
			document.getElementById(\'im\').height= 24;
		}
		if(ps== \'push-pin\'){
			document.getElementById(\'im\').width= 18;
			document.getElementById(\'im\').height= 24;
		}
		if(ps== \'google-pin\'|| ps== \'star\'){
			document.getElementById(\'im\').width= 16;
			document.getElementById(\'im\').height= 24;
		}
		document.getElementById(\'im\').src= \'modules/GoogleMap/images/\'+ ps+ \'0.png\';
		document.getElementById(\'im\').alt= ps;
	}
	function uninstall(){
		var answer= confirm(\'Are you sure?\')
		if(answer){
			window.location= \'index.php?module=GoogleMap&action=uninstall&parenttab=Settings\';
		}
	}
	function setwh(){
		ps= \''; ?>
<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['cfg']['pin_shape'])) ? $this->_run_mod_handler('lower', true, $_tmp) : smarty_modifier_lower($_tmp)))) ? $this->_run_mod_handler('replace', true, $_tmp, ' ', "-") : smarty_modifier_replace($_tmp, ' ', "-")); ?>
<?php echo '\';
		if(ps== \'square-bubble\'){
			document.getElementById(\'im\').width= 32;
			document.getElementById(\'im\').height= 19;
		}
		if(ps== \'round-bubble\'){
			document.getElementById(\'im\').width= 23;
			document.getElementById(\'im\').height= 24;
		}
		if(ps== \'flag\'){
			document.getElementById(\'im\').width= 22;
			document.getElementById(\'im\').height= 24;
		}
		if(ps== \'push-pin\'){
			document.getElementById(\'im\').width= 18;
			document.getElementById(\'im\').height= 24;
		}
		if(ps== \'google-pin\'|| ps== \'star\'){
			document.getElementById(\'im\').width= 16;
			document.getElementById(\'im\').height= 24;
		}
	}
	setwh();
	
	function changeIncludeSearch(v){
		v== \'Yes\'? jQuery(\'#search_fields\').show(): jQuery(\'#search_fields\').hide();
	}
	
	// dnguyen - end
</script>

'; ?>