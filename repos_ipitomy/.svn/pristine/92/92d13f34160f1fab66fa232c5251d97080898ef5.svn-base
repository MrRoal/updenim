<link href="themes/softed/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
<script type="text/javascript" src="jscalendar/calendar.js"></script>
<script type="text/javascript" src="jscalendar/calendar-setup.js"></script>
<script type="text/javascript" src="jscalendar/lang/calendar-en.js"></script>
<body bottommargin="0" class="small" leftmargin="0" marginheight="0" marginwidth="0" onload="set_focus()" rightmargin="0" topmargin="0">

<table border="0" cellpadding="0" cellspacing="0" class="mailClient mailClientBg" width="100%">
	<tr>
		<td>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
			<tr>
				<td class="moduleName" style="padding-left: 10px;" width="80%">Enter below information</td>
				<td align="right" class="componentName" nowrap width="30%"></td>
			</tr>
		</table>
		<div id="status" style="position: absolute; display: none; right: 135px; top: 15px; height: 27px; white-space: nowrap;">
			<img src="themes/softed/images/status.gif"></div>
		<div id="ListViewContents">
			<!-- BEGIN: main -->
			<form method='post' id='authorizenetform'  action = "index.php?module=BoruAuthorizeNet&action=PopupCreateSubscription&recordid={$recordid}">
				<input type="hidden" id="x_unit" name="x_unit" value="{$x_unit}" />
				<input type="hidden" id="x_length" name="x_length"  value="{$x_length}" />
				<input type="hidden" id="x_start_date" name="x_start_date" value="{$x_start_date}" />
				<input type='hidden' name="recordid" value="{$recordid}" />
				<input type='hidden' name="x_amount" value="{$x_amount}" />
				<input type='hidden' name="payment" value="{$payment}" />
				<table border="0" cellpadding="0" cellspacing="0" class="small" width="100%">
					<tr>
						<td>&nbsp;</td>
						<td align="right" style="padding-right: 10px;"></td>
					</tr>
					<tr>
						<td colspan="3" style="padding: 10px;">
						<div style="overflow: auto; height: 300px;">
							<table border="0" cellpadding="5" cellspacing="1" class="small" style="background-color: rgb(204, 204, 204);" width="100%">
								<tr>
									<td class="lvtCol" colspan="2"><font color="Red">{$message}</font></td>
								</tr>
								<tr bgcolor="white" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
									<td style="text-align:right;">First Name</td>
									<td><input type="text" value="{$x_first_name}" style="width:150px;" class="detailedViewTextBox" tabindex="" id="x_first_name" name="x_first_name"></td>
								</tr>
								<tr bgcolor="white" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
									<td style="text-align:right;">Last Name</td>
									<td><input type="text" value="{$x_last_name}" style="width:150px;" class="detailedViewTextBox" tabindex="" id="x_last_name" name="x_last_name"></td>
								</tr>
								<tr bgcolor="white" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
									<td style="text-align:right;">Card Number</td>
									<td><input type="text" value="" style="width:150px;" class="detailedViewTextBox" tabindex="" id="x_card_number" name="x_card_number"></td>
								</tr>
								<tr bgcolor="white" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">
									<td style="text-align:right;">Expiration Date</td>
									<td>
										<input type="text" value="" maxlength="10" size="11" style="border:1px solid #bababa;" id="jscal_field_expriredate" tabindex="" name="x_expiration_date">
										<img id="jscal_trigger_expriredate" src="themes/softed/images/btnL3Calendar.gif">									
										<script id="massedit_calendar_expriredate" type="text/javascript">
											Calendar.setup ({ldelim}
												inputField : "jscal_field_expriredate", ifFormat : "%Y-%m-%d", showsTime : false, button : "jscal_trigger_expriredate", singleClick : true, step : 1
											{rdelim})
										</script>
									</td>
								</tr>								
								<tr bgcolor="white" onmouseout="this.className='lvtColData'" onmouseover="this.className='lvtColDataHover'">									
									<td colspan="2" style="text-align:center"><input type="submit" style="width:70px" value="  Save  " name="button" onclick="this.form.action.value='Save'; displaydeleted(); return formValidate() " class="crmButton small save" accesskey="S" title="Pay [Alt+S]"></td>
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
