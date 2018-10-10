<?php /* Smarty version 2.6.18, created on 2014-04-22 19:36:20
         compiled from modules/QuickBooks/VendorsSetting.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'vtiger_imageurl', 'modules/QuickBooks/VendorsSetting.tpl', 19, false),)), $this); ?>
<script language="JavaScript" type="text/javascript" src="modules/QuickBooks/QuickBooks.js"></script>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'Buttons_List.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
<br>
<!-- Shadow table -->
<table align="center" border="0" cellpadding="0" cellspacing="0" width="98%">
<tr>
    <td valign="top"><img src="<?php echo vtiger_imageurl('showPanelTopLeft.gif', $this->_tpl_vars['THEME']); ?>
"></td>
    <td class="showPanelBg" style="padding: 10px;" valign="top" width="100%">
	    <br>
	    <div align=center>
			<br>
			<table border="0" cellpadding="5" cellspacing="0" width="95%">
			<tr>
				<td rowspan="2" valign="top" width="50"><img src="<?php echo vtiger_imageurl('ico-profile.gif', $this->_tpl_vars['THEME']); ?>
" alt="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" title="<?php echo $this->_tpl_vars['MOD']['LBL_MODULE_MANAGER']; ?>
" border="0" height="48" width="48"></td>
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Vendors</b></td>
			</tr>

			<tr>
				<td class="small" valign="top">Mapping VTiger Vendors to Quickbooks</td>
			</tr>
			</table>

			<br>
			<table border="0" cellpadding="10" cellspacing="0" width="95%">
			<tr>
				<td>
				<form action="index.php?module=QuickBooks&action=VendorsSetting&parenttab=Tools" method="post" name="CallServer" id="form">
				<input type="hidden" name="map_vendor_mode">
				<table border=0 cellspacing=0 cellpadding=5 width=100% class="tableHeading">
					<tr>
						<td class="big"><strong></strong></td>
						<?php if ($this->_tpl_vars['MAP_VENDOR_MODE'] != 'edit'): ?>
						<td class="small" align=right>
							<input class="crmButton small edit" title="<?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_KEY']; ?>
" onclick="this.form.action.value='VendorsSetting';this.form.map_vendor_mode.value='edit'" type="submit" name="Edit" value="<?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_LABEL']; ?>
">
						</td>
						<?php else: ?>
						<td class="small" align=right>
							<input title="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_KEY']; ?>
" class="crmButton small save" onclick="this.form.action.value='Save';" type="submit" name="button" value="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_BUTTON_LABEL']; ?>
" >&nbsp;&nbsp;
    							<input title="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_KEY']; ?>
" class="crmButton small cancel" onclick="window.history.back()" type="button" name="button" value="<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
">
						</td>
						<?php endif; ?>
					</tr>
				</table>
				<?php if ($this->_tpl_vars['MAP_VENDOR_MODE'] != 'edit'): ?>
				<table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td>
					<!-- Vendors view -->
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top ><table width="100%" border="0" cellspacing="0" cellpadding="5">
						<tr>
                            <td colspan="2" class="small cellLabel"><strong>Vendors Mapping</strong></td>
						</tr>
						<tr>
                            <td width="30%" nowrap class="small cellLabel"><strong><font color="#0000FF" size="">Quickbooks Fields</font></strong></td>
                            <td width="70%" class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
						</tr>
						<tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>First Name</strong></td>
                            <td width="70%" class="small cellText"><strong><?php echo $this->_tpl_vars['firstname']; ?>
</strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Last Name</strong></td>
                            <td width="70%" class="small cellText"><strong><?php echo $this->_tpl_vars['lastname']; ?>
</strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Salutation</strong></td>
                            <td width="70%" class="small cellText"><strong><?php echo $this->_tpl_vars['salutation']; ?>
</strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Vendor Name</strong></td>
                            <td width="70%" class="small cellText"><strong><?php echo $this->_tpl_vars['vendor_name']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Company Name</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['company_name']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Contact</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['contact']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Alt Contact</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['altcontact']; ?>
</strong></td>
                          </tr>

                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Phone</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['phone']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Alt Phone</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['altphone']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Fax</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['fax']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Email</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['email']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Description</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['description']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Vendor Number</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['vendor_number']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Adrress</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['address']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Vendor Type</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['vendor_type']; ?>
</strong></td>
                          </tr>
                    </table>
					<!-- end Vendors view -->
					</td></tr></table>
				</td></tr></table>
				<?php else: ?>
					<table width="100%"><tr><td>
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top >
					<table width="100%"  border="0" cellspacing="0" cellpadding="5">
						<tr>
                            <td colspan="2" class="small cellLabel"><strong><font>Vendors Mapping</font></strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong><font color="#0000FF">Quickbooks Fields</font></strong></td>
                            <td width="70%" class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>First Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="firstname" id="firstname">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['firstname']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['firstname']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Last Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="lastname" id="lastname">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['lastname']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['lastname']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Salutation</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="salutation" id="salutation">
                                    	<option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['salutation']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['salutation']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Vendor Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="vendor_name" id="vendor_name">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['vendor_name']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['vendor_name']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>

                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Company Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="company_name" id="company_name">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['company_name']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['company_name']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Contact</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="contact" id="contact">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['contact']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['contact']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>AltContact</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="altcontact" id="altcontact">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['altcontact']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['altcontact']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Phone</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="phone" id="phone">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['phone']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['phone']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Alt Phone</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="altphone" id="altphone">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['altphone']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['altphone']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Fax</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="fax" id="fax">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['fax']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['fax']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Email</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="email" id="email">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['email']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['email']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Description</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="description" id="description">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['description']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['description']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Vendor Number</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="vendor_number" id="description">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['vendor_number']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['vendor_number']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Address</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="address" id="address">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['address']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['address']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Vendor Type</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="vendor_type" id="vendor_type">
                                    <option value="None">Select</option>
                                	<optgroup label="Main Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['vendor_type']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    <optgroup label="Custom Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['vendor_type']): ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
" selected="selected"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php else: ?>
                                       		<option value="<?php echo $this->_tpl_vars['k']; ?>
"><?php echo $this->_tpl_vars['v']; ?>
</option>
                                       <?php endif; ?>
                                    <?php endforeach; endif; unset($_from); ?>
                                    </optgroup>
                                    </select>
                                </strong>
                            </td>
                          </tr>
                        </table>
						<!-- end vendor edit -->
					</td>
					<?php endif; ?>
				</form>

				<table border="0" cellpadding="5" cellspacing="0" width="100%">
				<tr><td>&nbsp;</td></tr>
				<tr>
				  	<td class="small" align="right" nowrap="nowrap"><a href="#top"><?php echo $this->_tpl_vars['MOD']['LBL_SCROLL']; ?>
</a></td>
				</tr>
				</table>
			</td>
		</tr>
		</table>
		<!-- End of Display -->

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
<td valign="top"><img src="<?php echo vtiger_imageurl('showPanelTopRight.gif', $this->_tpl_vars['THEME']); ?>
"></td>
</tr>
</table>