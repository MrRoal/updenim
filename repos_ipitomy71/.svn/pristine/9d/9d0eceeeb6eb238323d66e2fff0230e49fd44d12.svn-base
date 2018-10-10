<link rel="stylesheet" type="text/css" href="{$THEME_PATH}style.css">
<script language="JavaScript" type="text/javascript" src="modules/{$MODULE}/{$MODULE}.js"></script>
<script type='text/javascript' src='modules/com_vtiger_workflow/resources/jquery-1.2.6.js'></script>
<script type="text/javascript" src="include/scriptaculous/prototype.js"></script>

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
<table border="0" cellspacing="0" cellpadding="5" class="crmTable small" id="splitInvoiceTable">
	<tr>
		<th colspan="7" class="dvInnerHeader" align="left">Payments <span id="msg" style="color:red"></span>
		<div style="float:right; padding-right:10px;"><input type="button" style="background-color:#DDDCDD; width:85px; cursor:pointer" class="crmbutton small" value=" Add Payment " onClick="window.open('index.php?module=QuickBooks&return_module=Invoice&action=PopupAddPayment&record={$recordid}','text',' width=900,height=600');self.close();">
		</div></th>
	</tr>
	<tr style="height:25px">
		<td class="dvInnerHeader">Date</td>
		<td class="dvInnerHeader">Reference Number</td>
		<td class="dvInnerHeader">Payment Method</td>
		<td class="dvInnerHeader">Amount (Currency: {$CURRENCY_SYMBOL})</td>
		<td class="dvInnerHeader">Sync to QB</td>
		<td class="dvInnerHeader">Sent to QB</td>
		<td class="dvInnerHeader">Action</td>
	</tr>
	{foreach from=$PAYMENT item=val}
	<tr style="height:25px">
		<td class="dvtCellInfo">&nbsp;{$val.paymentdate}</td>
		<td class="dvtCellInfo">&nbsp;{$val.paymentno}</td>
		<td class="dvtCellInfo">&nbsp;{$val.payment_method}</td>
		<td class="dvtCellInfo"  align="right">&nbsp; {$val.amount}</td>
		<td class="dvtCellInfo">&nbsp; <input type="checkbox"  id="sync_to_qb_{$val.paymentid}" name="sync_to_qb_{$val.paymentid}" value="1" {if $val.sync_to_qb eq 1}checked=""{/if} {if $val.sent_to_qb eq 1}disabled{/if} onClick="AddPaymentAcction(this);"></td>
		<td class="dvtCellInfo">&nbsp; <input type="checkbox"  id="sent_to_qb_{$val.paymentid}" name="sent_to_qb_{$val.paymentid}" value="1" {if $val.sent_to_qb eq 1}checked=""{/if} disabled></td>
		<td class="dvtCellInfo">&nbsp;
		<a href="index.php?module=QuickBooks&return_module=Invoice&action=PopupAddPayment&record={$recordid}&paymentid={$val.paymentid}">Edit</a>
		 - <a href="index.php?module=QuickBooks&return_module=Invoice&action=PopupReviewPayment&record={$recordid}&del={$val.paymentid}">Del</a>
		</td>
	</tr>
	{assign var='balance' value=$val.total}
	{/foreach}

	<tr style="height:25px">
		<td class="dvtCellInfo" colspan="2">&nbsp;</td>
		<td class="dvtCellInfo"  align="right">Balance: </td>
		<td class="dvtCellInfo" align="right">{$BALANCE}</td>
		<td class="dvtCellInfo" colspan="3">&nbsp;</td>
	</tr>

</table>

<p style="text-align: center">
	<input type="button" style="background-color:#DDDCDD; width:75px;" class="crmbutton small" value="Close" onClick="window.close()">
</p>

</body>

