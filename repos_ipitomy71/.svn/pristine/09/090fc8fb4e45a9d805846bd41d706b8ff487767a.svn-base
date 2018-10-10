<link href="themes/softed/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
<script type="text/javascript" src="jscalendar/calendar.js"></script>
<script type="text/javascript" src="jscalendar/calendar-setup.js"></script>
<script type="text/javascript" src="jscalendar/lang/calendar-en.js"></script>
<body bottommargin="0" class="small" leftmargin="0" marginheight="0" marginwidth="0" onLoad="set_focus()" rightmargin="0" topmargin="0">
<table border="0" cellpadding="0" cellspacing="0" class="mailClient mailClientBg" width="100%">
	<tr>
		<td>
		<div id="status" style="position: absolute; display: none; right: 135px; top: 15px; height: 27px; white-space: nowrap;">
			<img src="themes/softed/images/status.gif"></div>
		<div id="ListViewContents">
			<!-- BEGIN: main -->
			<form method='post' id='authorizenetform'  action = "index.php?module=BoruAuthorizeNet&action=CreateSubscriptionSave&recordid={$recordid}">
				<input type="hidden" id="unit" name="unit" value="{$unit}" />
				<input type="hidden" id="length" name="length"  value="{$length}" />
				<input type="hidden" id="start_date" name="start_date" value="{$start_date}" />
				<input type='hidden' name="recordid" value="{$recordid}" />
				<input type='hidden' name="amount" value="{$amount}" />
				<input type='hidden' name="frequency" value="{$frequency}" />
				<input type='hidden' name="payments" value="{$payments}" />
				<input type='hidden' name='payment_type' value='{$payment_type}' />
				<table border="0" cellpadding="0" cellspacing="0" class="small" width="100%">
					<tr>
						<td>&nbsp;</td>
						<td align="right" style="padding-right: 10px;"></td>
					</tr>
					<tr>
						<td colspan="3" style="padding: 10px;">
						<div style="overflow: auto; height: 300px;">
						<table boruder="0" width="100%"><tr><td width="50%" valign="top">
							<table border="0" cellpadding="5" cellspacing="1" class="small" style="background-color: rgb(204, 204, 204);" width="100%">
								<tr>
									<td class="lvtCol" colspan="2">Payment Information</td>
								</tr>
								<tr bgcolor="white" onMouseOut="this.className='lvtColData'" onMouseOver="this.className='lvtColDataHover'">
									<td style="text-align:right;">Amount to be Billed</td>
									<td>{$recurring_amount}</td>
								</tr>
								<tr bgcolor="white" onMouseOut="this.className='lvtColData'" onMouseOver="this.className='lvtColDataHover'">
									<td style="text-align:right;">Card Number</td>
									<td><input type="text" value="" style="width:150px;" class="detailedViewTextBox" tabindex="" id="card_number" name="card_number"></td>
								</tr>
								<tr bgcolor="white" onMouseOut="this.className='lvtColData'" onMouseOver="this.className='lvtColDataHover'">
									<td style="text-align:right;">Expiration Date (MM :YY)</td>
									<td><input type="text" value="" style="width:30px;" class="detailedViewTextBox" tabindex="" id="expiration_mm" name="expiration_mm" maxlength="2"> : <input type="text" value="" style="width:30px;" class="detailedViewTextBox" tabindex="" id="expiration_yy" name="expiration_yy" maxlength="2"></td>
								</tr>
								<tr bgcolor="white" onMouseOut="this.className='lvtColData'" onMouseOver="this.className='lvtColDataHover'">
									<td style="text-align:right;">CVV Code</td>
									<td><input type="text" value="" style="width:150px;" class="detailedViewTextBox" tabindex="" id="cvv" name="cvv"></td>
								</tr>

							</table></td><td width="50%" valign="top">
							<table border="0" cellpadding="5" cellspacing="1" class="small" style="background-color: rgb(204, 204, 204);" width="100%">
								<tr>
									<td colspan="2" class="lvtCol">Billing Information</td>
								</tr>
								<tr bgcolor="white" onMouseOut="this.className='lvtColData'" onMouseOver="this.className='lvtColDataHover'">
									<td style="text-align:right;">First Name</td>
									<td><input type="text" value="{$first_name}" style="width:150px;" class="detailedViewTextBox" tabindex="" id="first_name" name="first_name"></td>
								</tr>
								<tr bgcolor="white" onMouseOut="this.className='lvtColData'" onMouseOver="this.className='lvtColDataHover'">
									<td style="text-align:right;">Last Name</td>
									<td><input type="text" value="{$last_name}" style="width:150px;" class="detailedViewTextBox" tabindex="" id="last_name" name="last_name"></td>
								</tr>
								<tr bgcolor="white" onMouseOut="this.className='lvtColData'" onMouseOver="this.className='lvtColDataHover'">
									<td style="text-align:right;">Street</td>
									<td><input type="text" value="{$bill_street}" style="width:150px;" class="detailedViewTextBox" tabindex="" id="bill_street" name="bill_street"></td>
								</tr>
								<tr bgcolor="white" onMouseOut="this.className='lvtColData'" onMouseOver="this.className='lvtColDataHover'">
									<td style="text-align:right;">City</td>
									<td><input type="text" value="{$bill_city}" style="width:150px;" class="detailedViewTextBox" tabindex="" id="bill_city" name="bill_city"></td>
								</tr>
								<tr bgcolor="white" onMouseOut="this.className='lvtColData'" onMouseOver="this.className='lvtColDataHover'">
									<td style="text-align:right;">State</td>
									<td><input type="text" value="{$bill_state}" style="width:150px;" class="detailedViewTextBox" tabindex="" id="bill_state" name="bill_state"></td>
								</tr>
								<tr bgcolor="white" onMouseOut="this.className='lvtColData'" onMouseOver="this.className='lvtColDataHover'">
									<td style="text-align:right;">Zip</td>
									<td><input type="text" value="{$bill_zip}" style="width:150px;" class="detailedViewTextBox" tabindex="" id="bill_zip" name="bill_zip"></td>
								</tr>
							</table></td></tr>
							<tr>									
								<td colspan="2" style="text-align:center"><input type="submit" style="width:140px" value="  Process Payment  " name="button" onClick="this.form.action.value='Save'; displaydeleted(); return formValidate() " class="crmButton small save" accesskey="S" title="Pay [Alt+S]"></td>
							</tr>
							</table>
							<div>
							</div>
						</div>
						</td>
					</tr>
				</table>
			</form>
		</div>
		</td>
	</tr>
</table>
</body>
