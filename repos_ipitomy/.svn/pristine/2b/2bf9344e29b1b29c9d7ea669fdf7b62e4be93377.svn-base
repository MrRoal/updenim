<?php /* Smarty version 2.6.18, created on 2014-04-22 02:22:54
         compiled from modules/QuickBooks/AccountContactSetting.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'vtiger_imageurl', 'modules/QuickBooks/AccountContactSetting.tpl', 19, false),)), $this); ?>
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
				<td class="heading2" valign="bottom"><b><a href="index.php?module=QuickBooks&action=index&parenttab=Tools">Boru VT-QB</a> &gt; Accounts and Contacts</b></td>
			</tr>

			<tr>
				<td class="small" valign="top">Mapping VTiger Accounts and Contacts to Quickbooks</td>
			</tr>
			</table>

			<br>
			<table border="0" cellpadding="10" cellspacing="0" width="95%">
			<tr>
				<td>
				<form action="index.php?module=QuickBooks&action=AccountContactSetting&parenttab=Tools" method="post" name="CallServer" id="form">
				<input type="hidden" name="customermap_account_mode">
				<table border=0 cellspacing=0 cellpadding=5 width=100% class="tableHeading">
					<tr>
						<td class="big"><strong></strong></td>
						<?php if ($this->_tpl_vars['CUSTOMERMAP_ACCOUNT_MODE'] != 'edit'): ?>
						<td class="small" align=right>
							<input class="crmButton small edit" title="<?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_TITLE']; ?>
" accessKey="<?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_KEY']; ?>
" onclick="this.form.action.value='CustomerMapAccount';this.form.customermap_account_mode.value='edit'" type="submit" name="Edit" value="<?php echo $this->_tpl_vars['APP']['LBL_EDIT_BUTTON_LABEL']; ?>
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
				<?php if ($this->_tpl_vars['CUSTOMERMAP_ACCOUNT_MODE'] != 'edit'): ?>
				<table width="100%" border="0" cellspacing="0" cellpadding="0"><tr><td>
					<!-- account view -->
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top ><table width="100%" border="0" cellspacing="0" cellpadding="5">
						<tr>
                            <td colspan="2" class="small cellLabel"><strong>Account Mapping</strong></td>
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Customer Name</strong></td>
                            <td width="70%" class="small cellText"><strong><?php echo $this->_tpl_vars['customer_name']; ?>
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
                          	<td width="30%" nowrap class="small cellLabel"><strong>Account Number</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['account_number']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Billing Adrress</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['bill_add']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Shipping Adrress</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['ship_add']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Customer Type</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['customer_type']; ?>
</strong></td>
                          </tr>
                           <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Term</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['customer_term']; ?>
</strong></td>
                          </tr>
                    </table>
					<!-- end account view -->
					</td><td>
					<!-- contact view -->
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top ><table width="100%"  border="0" cellspacing="0" cellpadding="5">
						<tr>
                            <td colspan="2" class="small cellLabel"><strong>Contact Mapping</strong></td>
						</tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong><font color="#0000FF" size="">Quickbooks Fields</font></strong></td>
                            <td width="70%" class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>First Name</strong></td>
                            <td width="70%" class="small cellText"><strong><?php echo $this->_tpl_vars['firstname_contact']; ?>
</strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Last Name</strong></td>
                            <td width="70%" class="small cellText"><strong><?php echo $this->_tpl_vars['lastname_contact']; ?>
</strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Salutation</strong></td>
                            <td width="70%" class="small cellText"><strong><?php echo $this->_tpl_vars['salutation_contact']; ?>
</strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Customer Name</strong></td>
                            <td width="70%" class="small cellText"><strong><?php echo $this->_tpl_vars['customer_name_contact']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Company Name</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['company_name_contact']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Contact</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['contact_contact']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Alt Contact</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['altcontact_contact']; ?>
</strong></td>
                          </tr>

                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Phone</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['phone_contact']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Alt Phone</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['altphone_contact']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Fax</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['fax_contact']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Email</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['email_contact']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Description</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['description_contact']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Account Number</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['account_number_contact']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Billing Adrress</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['bill_add_contact']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Shipping Adrress</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['ship_add_contact']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Customer Type</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['customer_type_contact']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Term</strong></td>
                            <td width="70%" nowrap class="small cellText"><strong><?php echo $this->_tpl_vars['customer_term_contact']; ?>
</strong></td>
                          </tr>
                          <tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Format of Customer Name</strong></td>
                            <td width="70%" nowrap class="small cellText"><b><?php echo $this->_tpl_vars['customer_name_format_label']; ?>
</b></td>
                          </tr>
						  <!--<tr valign="top">
                          	<td width="30%" nowrap class="small cellLabel"><strong>Send Customer to</strong></td>
                            <td width="70%" nowrap class="small cellText"><b><?php echo $this->_tpl_vars['customer_to']; ?>
</b></td>
                          </tr>-->
                        </table>
					<!-- end contact view -->
					</td></tr></table>
				</td></tr></table>
				<?php else: ?>
					<table width="100%"><tr><td>
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top ><table width="100%"  border="0" cellspacing="0" cellpadding="5">
						<tr>
                            <td colspan="2" class="small cellLabel"><strong><font>Account Mapping</font></strong></td>
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
                                    <optgroup label="Account Fields">
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
                                    <optgroup label="Other Fields">
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
                                    <optgroup label="Account Fields">
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
                                    <optgroup label="Other Fields">
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
                                    <optgroup label="Account Fields">
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
                                    <optgroup label="Other Fields">
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
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Customer Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="customer_name" id="customer_name">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customer_name']): ?>
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
                                    <optgroup label="Other Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customer_name']): ?>
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
                                    <optgroup label="Account Fields">
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
                                    <optgroup label="Other Fields">
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
                                    <optgroup label="Account Fields">
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
                                    <optgroup label="Other Fields">
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
                                    <optgroup label="Account Fields">
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
                                    <optgroup label="Other Fields">
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
                                    <optgroup label="Account Fields">
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
                                    <optgroup label="Other Fields">
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
                                    <optgroup label="Account Fields">
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
                                    <optgroup label="Other Fields">
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
                                    <optgroup label="Account Fields">
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
                                    <optgroup label="Other Fields">
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
                                    <optgroup label="Account Fields">
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
                                    <optgroup label="Other Fields">
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
                                    <optgroup label="Account Fields">
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
                                    <optgroup label="Other Fields">
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
                                    </select>
                                </strong>
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Account Number</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="account_number" id="description">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['account_number']): ?>
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
                                    <optgroup label="Other Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['account_number']): ?>
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Billing Address</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="bill_add" id="bill_add">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['bill_add']): ?>
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
                                    <optgroup label="Other Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['bill_add']): ?>
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Shipping Address</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="ship_add" id="ship_add">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['ship_add']): ?>
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
                                    <optgroup label="Other Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['ship_add']): ?>
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Customer Type</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="customer_type" id="customer_type">
                                    <option value="None">Select</option>
                                    <optgroup label="Account Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customer_type']): ?>
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
                                    <optgroup label="Other Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customer_type']): ?>
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Term</strong></td>
                            <td width="70%" class="small cellText">
	                        	<select name="customer_term" id="customer_term">
	                            <option value="None">Select</option>
	                            <optgroup label="Account Fields">
	                            <?php $_from = $this->_tpl_vars['FIELDS_CF']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                               <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customer_term']): ?>
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
	                            <optgroup label="Other Fields">
	                            <?php $_from = $this->_tpl_vars['FIELDS_OPS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                               <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customer_term']): ?>
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
	                            </select> Recommended map with a picklist field 
                            </td>
                          </tr>
                        </table>
						<!-- end account edit -->
					</td><td>
					<!-- contact edit -->
					<table border=0 cellspacing=0 cellpadding=0 width=100% class="listRow">
					<tr>
					<td class="small" valign=top ><table width="100%"  border="0" cellspacing="0" cellpadding="5">
						<tr>
                            <td colspan="2" class="small cellLabel"><strong><font>Contact Mapping</font></strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong><font color="#0000FF">Quickbooks Fields</font></strong></td>
                            <td width="70%" class="small cellLabel"><strong><font color="#0000FF">vTiger Fields</font></strong></td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>First Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="firstname_contact" id="firstname_contact">
                                	<option value="None">Select</option>
                                    <optgroup label="Contact Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['firstname_contact']): ?>
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
                                    <optgroup label="Other Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['firstname_contact']): ?>
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
                                	<select name="lastname_contact" id="lastname_contact">
	                                    <option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['lastname_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['lastname_contact']): ?>
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
                                	<select name="salutation_contact" id="salutation_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['salutation_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['salutation_contact']): ?>
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Customer Name</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="customer_name_contact" id="customer_name_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customer_name_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customer_name_contact']): ?>
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
                                	<select name="company_name_contact" id="company_name_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['company_name_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['company_name_contact']): ?>
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
                                	<select name="contact_contact" id="contact_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['contact_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['contact_contact']): ?>
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
                                	<select name="altcontact_contact" id="altcontact_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['altcontact_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['altcontact_contact']): ?>
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
                                	<select name="phone_contact" id="phone_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['phone_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['phone_contact']): ?>
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
                                	<select name="altphone_contact" id="altphone_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['altphone_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['altphone_contact']): ?>
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
                                	<select name="fax_contact" id="fax_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['fax_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['fax_contact']): ?>
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
                                	<select name="email_contact" id="email_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['email_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['email_contact']): ?>
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
                                	<select name="description_contact" id="description_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['description_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['description_contact']): ?>
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Account Number</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="account_number_contact" id="description_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['account_number_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['account_number_contact']): ?>
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Billing Address</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="bill_add_contact" id="bill_add_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['bill_add_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['bill_add_contact']): ?>
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Shipping Address</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="ship_add_contact" id="ship_add_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['ship_add_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['ship_add_contact']): ?>
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Customer Type</strong></td>
                            <td width="70%" class="small cellText">
                                <strong>
                                	<select name="customer_type_contact" id="customer_type_contact">
                                    	<option value="None">Select</option>
	                                    <optgroup label="Contact Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customer_type_contact']): ?>
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
	                                    <optgroup label="Other Fields">
	                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
	                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customer_type_contact']): ?>
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
                            <td width="30%" nowrap class="small cellLabel"><strong>Term</strong></td>
                            <td width="70%" class="small cellText">
                            	<select name="customer_term_contact" id="customer_term_contact">
                                	<option value="None">Select</option>
                                    <optgroup label="Contact Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_CF_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customer_term_contact']): ?>
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
                                    <optgroup label="Other Fields">
                                    <?php $_from = $this->_tpl_vars['FIELDS_OPS_CONTACT']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
                                       <?php if ($this->_tpl_vars['k'] == $this->_tpl_vars['customer_term_contact']): ?>
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
                                </select> Recommended map with a picklist field 
                            </td>
                          </tr>
                          <tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Format of Customer Name</strong></td>
                            <td width="70%" class="small cellText">
                            	<select name="customer_name_format" id="customer_name_format">
                                	<option value="first_last" <?php if ($this->_tpl_vars['customer_name_format'] == 'first_last'): ?> selected="selected" <?php endif; ?>>FirstName LastName</option>
                                	<option value="last_first" <?php if ($this->_tpl_vars['customer_name_format'] == 'last_first'): ?> selected="selected" <?php endif; ?>>LastName, FirstName</option>
                                	<option value="first_last_ctid" <?php if ($this->_tpl_vars['customer_name_format'] == 'first_last_ctid'): ?> selected="selected" <?php endif; ?>>FirstName LastName, VT Contact ID</option>
                                	<option value="last_first_ctid" <?php if ($this->_tpl_vars['customer_name_format'] == 'last_first_ctid'): ?> selected="selected" <?php endif; ?>>LastName, FirstName, VT Contact ID</option>
                                </select>
                            </td>
                          </tr>
							<!--<tr>
                            <td width="30%" nowrap class="small cellLabel"><strong>Send Customer to</strong></td>
                            <td width="70%" class="small cellText">
                            	<select name="customer_to" id="customer_to">
                                	<option value="contact" <?php if ($this->_tpl_vars['customer_to'] == 'contact'): ?> selected="selected" <?php endif; ?>>Contact</option>
                                	<option value="account" <?php if ($this->_tpl_vars['customer_to'] == 'account'): ?> selected="selected" <?php endif; ?>>Account</option>
                                </select>
                            </td>
                          </tr>-->
                        </table>
						<!-- end contact edit -->
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