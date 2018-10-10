function trim (str) {
	return str.replace(/^\s+/g,'').replace(/\s+$/g,'');
}

function addTransaction(type){	
    //$("vtbusy_info").style.display = "inline";    
    
	var element_date_transaction =  document.getElementById('date_transaction');
	if (typeof(element_date_transaction) != 'undefined' && element_date_transaction != null){
		var date_transaction = document.getElementById('date_transaction').value; 
	}
    
	var element_date_transaction_other =  document.getElementById('date_transaction_other');
	if (typeof(element_date_transaction_other) != 'undefined' && element_date_transaction_other != null){
		var date_transaction_other = document.getElementById('date_transaction_other').value; 
	}
	
	var element_date_transaction_item =  document.getElementById('date_transaction_item');
	if (typeof(element_date_transaction_item) != 'undefined' && element_date_transaction_item != null){
		var date_transaction_item = document.getElementById('date_transaction_item').value;
	}
    
    var element =  document.getElementById('date_transaction_payment');    
	if (typeof(element) != 'undefined' && element != null){
		var date_transaction_payment = document.getElementById('date_transaction_payment').value;
	}
	
	var element_vendor =  document.getElementById('date_transaction_vendor');
	if (typeof(element_vendor) != 'undefined' && element_vendor != null){
		var date_transaction_vendor = document.getElementById('date_transaction_vendor').value;
	}
	
	var element_po =  document.getElementById('date_transaction_po');
	if (typeof(element_po) != 'undefined' && element_po != null){
		var date_transaction_po = document.getElementById('date_transaction_po').value;
	}
	
	var element_date_update_address =  document.getElementById('date_update_address');
	if (typeof(element_date_update_address) != 'undefined' && element_date_update_address != null){
		var date_update_address = document.getElementById('date_update_address').value;
	}
	
    if(type =='customer') {
    	var data = "type=" + type + "&date_transaction=" + date_transaction;
    }else if(type =='item'){
    	var data = "type=" + type + "&date_transaction_item=" + date_transaction_item;    	
    }else if(type =='other'){
		var data = "type=" + type + "&date_transaction_other=" + date_transaction_other;
    }else if(type=='payment'){
    	var data = "type=" + type + "&date_transaction_payment=" + date_transaction_payment;
    }else if(type=='CustomerType'){
    	var data = "type=" + type;
    }else if(type=='vendor'){
    	var data = "type=" + type + "&date_transaction_vendor=" + date_transaction_vendor;
    }else if(type=='po'){
    	var data = "type=" + type + "&date_transaction_po=" + date_transaction_po;
    }else if(type=='UpdateCustomerAddress' || type=='UpdateInvoiceAddress' || type=='UpdateEstimateAddress'){
    	var data = "type=" + type + "&date_update_address=" + date_update_address;
    }
	
	new Ajax.Request(
		'modules/QuickBooks/Transaction.php',
			{queue: {position: 'end', scope: 'command'},
					method: 'post',
					postBody: data,
					onComplete: function(response) {
						if(response.responseText.indexOf(":#:FAILURE")>-1) {
							alert(alert_arr.ERROR_WHILE_EDITING);
						} else if (response.responseText.indexOf(":#:EXIST")>-1){																				
							//$("vtbusy_info").style.display = "none";
						}
						else {										
							//$("vtbusy_info").style.display = "none";
						}
					}
			}
	);	
}

function importQB(){	
    //$("vtbusy_info").style.display = "inline";
	var data = "";
	new Ajax.Request(
		'modules/QuickBooks/ImportQB.php',
			{queue: {position: 'end', scope: 'command'},
					method: 'post',
					postBody: data,
					onComplete: function(response) {
						if(response.responseText.indexOf(":#:FAILURE")>-1) {
							alert(alert_arr.ERROR_WHILE_EDITING);
						} else if (response.responseText.indexOf(":#:EXIST")>-1){																				
							//$("vtbusy_info").style.display = "none";
						}
						else {										
							//$("vtbusy_info").style.display = "none";
						}
					}
			}
	);	
}

function AddPaymentAcction(paymentObj){
	
		var paymentName = paymentObj.name;
		var paymentArr = paymentName.split('_');
		var paymentid = paymentArr[3];
		if(paymentObj.checked ==true){
			var data = "type=PaymentAddQueue" + "&paymentid=" + paymentid;
		}else{
			var data = "type=PaymentRemoveQueue" + "&paymentid=" + paymentid;
		}
		new Ajax.Request(
			'modules/QuickBooks/Transaction.php',
				{queue: {position: 'end', scope: 'command'},
						method: 'post',
						postBody: data,
						onComplete: function(response) {
							if(response.responseText.indexOf(":#:FAILURE")>-1) {
								alert(alert_arr.ERROR_WHILE_EDITING);
							} else if (response.responseText.indexOf(":#:EXIST")>-1){
								jQuery("#msg").html(response.responseText);
							}
							else {
								jQuery("#msg").html(response.responseText);
							}
						}
				}
		);	
}