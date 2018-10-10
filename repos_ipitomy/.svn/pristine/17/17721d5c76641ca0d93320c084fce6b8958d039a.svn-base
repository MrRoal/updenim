<link rel="stylesheet" type="text/css" href="{$THEME_PATH}style.css">
<script language="JavaScript" type="text/javascript" src="modules/{$MODULE}/{$MODULE}.js"></script>
<script language="javascript" type="text/javascript" src="include/scriptaculous/prototype.js"></script>
<script type='text/javascript' src='modules/com_vtiger_workflow/resources/jquery-1.2.6.js'></script>
<link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
<script type="text/javascript" src="jscalendar/calendar.js"></script>
<script type="text/javascript" src="jscalendar/lang/calendar-en.js"></script>
<script type="text/javascript" src="jscalendar/calendar-setup.js"></script>

<style type="text/css">
{literal}
	*{padding:0;margin:0}
	.lvtCol{
		font-size: .7em;
		padding: .4em;
	}

	#splitInvoiceTable {
		width: 98%;
		margin: 1%;
	}

    .
{/literal}
</style>

<body class="small">
<form action="index.php?module=QuickBooks&return_module=Invoice&action=PopupAddPayment&mode=savepayment" enctype="multipart/form-data" method="POST" name="EditView" onSubmit="return validateAddPaymentFrom();">
<input type="hidden" value="{$recordid}" name="record">
<input type="hidden" value="{$paymentid}" name="paymentid">
<table border="0" cellspacing="0" cellpadding="3" class="crmTable small" id="splitInvoiceTable">
	<tr>
		<th colspan="6" class="dvInnerHeader" align="center">{$PACTION}{$msg}</th>
	</tr>
	<tr style="height:25px">
		<td class="dvInnerHeader">Date</td>
		<td class="dvInnerHeader">Reference Number</td>
		<td class="dvInnerHeader" >Payment Method</td>
		<td class="dvInnerHeader">Currency</td>
		<td class="dvInnerHeader">Amount</td>
		<td class="dvInnerHeader">Sync to QB</td>
	</tr>

	<tr style="height:25px">
		<td class="dvtCellInfo" valign="middle">
		<input type="text" id="jscal_field_start_date" name="paymentdate" class="small" style="width: 80px;" readonly="" value="{$PAYMENTDATE}"/> 
		<img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_start_date" style="vertical-align:middle">
		</td>
		<td class="dvtCellInfo"><input type="text" name="reference" id="reference" maxlength="20" style="width: 100px;" value="{$PAYMENTNO}"></td>
		<td class="dvtCellInfo">
			<select name="payment_method" id="payment_method" class="small" style="width:100px">
				<option value=""></option>
				{$PAYMENTMETHODS}
			</select>
		</td>
		<td class="dvtCellInfo">
		<select name="inventory_currency" id="inventory_currency" class="small">
		{$CURRENCY_LIST}
		</select></td>
		<td class="dvtCellInfo"><input type="textbox" name="amount" id="amount" maxlength="50" value="{$AMOUNT}"></td>
		<td class="dvtCellInfo">&nbsp; <input type="checkbox"  id="sync_to_qb" name="sync_to_qb" value="1" {if $SYNC_TO_QB eq 1}checked{/if}></td>
	</tr>

</table>

<p style="text-align: center">
	<input type="button" style="background-color:#DDDCDD; width:75px;" class="crmbutton small" value="Cancel" onClick="window.close()">
	<input type="submit" style="background-color:#DDDCDD; width:75px;" class="crmbutton small" value="Submit">
</p>
</form>
</body>
{literal}
<script type="text/javascript" id="massedit_calendar_start_date">
	Calendar.setup ({
		inputField : "jscal_field_start_date", ifFormat : "%Y-%m-%d", showsTime : false, button : "jscal_trigger_start_date", singleClick : true, step : 1
	})
function validateAddPaymentFrom(){
	var date  = $('#jscal_field_start_date').val();
	var amount  = $('#amount').val();
	var reference = $('#reference').val()
	if(date==''){
		alert("Please select Date");
		$('#jscal_field_start_date').focus();
		return false;
	}
	if(reference==''){
		alert("Please enter reference no");
		$('#reference').focus();
		return false;
	}		
	if(amount==''){
		alert("Please enter amount");
		$('#amount').focus();
		return false;
	}	
	return true;
		
}
</script>
{/literal}
