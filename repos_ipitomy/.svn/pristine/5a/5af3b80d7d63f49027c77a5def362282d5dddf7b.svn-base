function BAAddWidget(module){
	new Ajax.Request(
		'index.php',
		{   queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: 'action=BoruAuthorizeNetAjax&mode=ajax&file=Settings&module=BoruAuthorizeNet&ajax=true&command=addlink&linkmod='+module,
			onComplete: function(response){
				//alert(response.responseText);
				document.getElementById("ba_message").innerHTML = response.responseText;
				location.href=location.href;
			}
		}
	);
}
function BADelWidget(module){
	new Ajax.Request(
		'index.php',
		{   queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: 'action=BoruAuthorizeNetAjax&mode=ajax&file=Settings&module=BoruAuthorizeNet&ajax=true&command=dellink&linkmod='+module,
			onComplete: function(response){
				//alert(response.responseText);
				document.getElementById("ba_message").innerHTML = response.responseText;
				location.href=location.href;
			}
		}
	);
}

function BASaveSettings(){
	var api_login_id = document.getElementById('api_login_id').value;
	var transaction_key = document.getElementById('transaction_key').value;
	var r_recurring_totals = document.getElementById('recurring_totals');
	var recurring_totals = r_recurring_totals.options[r_recurring_totals.selectedIndex].value;
	var r_recurring_choice = document.getElementById('recurring_choice');
	var recurring_choice = r_recurring_choice.options[r_recurring_choice.selectedIndex].value;
	var r_test_mode = document.getElementById('test_mode');
	var test_mode = r_test_mode.options[r_test_mode.selectedIndex].value;
	new Ajax.Request(
		'index.php',
		{   queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: 'action=BoruAuthorizeNetAjax&mode=ajax&file=Settings&module=BoruAuthorizeNet&ajax=true&command=massset&api_login_id='+api_login_id+'&transaction_key='+transaction_key+'&recurring_totals='+recurring_totals+'&recurring_choice='+recurring_choice+'&test_mode='+test_mode,
			onComplete: function(response){
				//alert(response.responseText);
				document.getElementById("ba_message").innerHTML = response.responseText;
				location.href=location.href;
			}
		}
	);
}

function AuthorizeGetElements() {
	var amount = document.getElementById('x_amount').value;
	amount = prompt("Please enter the amount to be paid",amount);
	var url = 'module=BoruAuthorizeNet&action=BoruAuthorizeNetAjax&file=GetFormElements&amount='+amount;
	//alert(url);
	if(amount != null){
		new Ajax.Request(
	        'index.php',
	        {queue: {position: 'end', scope: 'command'},
	            method: 'post',
	            postBody: url,
	            onComplete: function(response) {
	            	//alert(response.responseText);
	            	var ret = response.responseText.split("###");
	            	//$fp_timestamp###$fp_sequence###$fingerprint
	            	var timestamp = ret[0];
	            	var sequence = ret[1];
	            	var fingerprint = ret[2];
	            	document.getElementById('x_fp_timestamp').value=timestamp;
	            	document.getElementById('x_fp_sequence').value=sequence;
	            	document.getElementById('x_fp_hash').value=fingerprint;
	            	document.getElementById('x_amount').value=amount;
	            	document.getElementById('xx_amount').innerHTML=amount;
	            	CalculateRecurringAmount();
	            }
	        }
	    );

		//obtain variables to save payment settings
		var recordid = document.getElementsByName('record');	
        recordid = recordid[0].value;
		
        var r_recurring = document.getElementById('r_recurring');
		var recurring = r_recurring.options[r_recurring.selectedIndex].value;
		
		var r_frequency = document.getElementById('r_frequency');
		var frequency = r_frequency.options[r_frequency.selectedIndex].value;	        
        
		var startdate = document.getElementById('jscal_field_r_startdate').value;
		
		var x_method = document.getElementById('x_method');
		var method = x_method.options[x_method.selectedIndex].value;
		
		
        //write payment setting options to boru_authorizenet_history
        new Ajax.Request(
				'index.php',
	            {queue: {position: 'end', scope: 'command'},
	                method: 'post',
	                postBody: "file=SavePaymentWidgetSettings&module=BoruAuthorizeNet&action=BoruAuthorizeNetAjax&recordid=" + recordid + "&recurring=" + recurring + "&frequency=" + frequency + "&startdate=" + startdate + "&method=" + method,
	                onComplete: function(response) {
	                    if(response.responseText.indexOf('SUCCESS') != -1){
//	                    	window.location.reload();
	                    }
	            	}
	            }
		);
	}
}

function installAuthorizeRelatedListView(module,whichrow) {
	var ans=confirm("Are you sure you want to\nInstall Transactions Related Lists\non "+module+"s?\nOK for Yes\nCancel to abort");
	if(ans) {
		new Ajax.Request(
			'index.php',
			{   queue: {position: 'end', scope: 'command'},
				method: 'post',
				postBody: 'action=BoruAuthorizeNetAjax&mode=ajax&file=Settings&module=BoruAuthorizeNet&ajax=true&command=addrelatedlist&addmod='+module,
				onComplete: function(response){
					document.getElementById("ba_message").innerHTML = "Installed.";
					document.getElementById(whichrow).style.display='none';
				}
			}
		);
	}
}
function AuthorizeUpdateSetting(setting,value) {
	value = prompt("Enter new value for "+setting+":",value);
	if(value != null) {
		new Ajax.Request(
			'index.php',
			{   queue: {position: 'end', scope: 'command'},
				method: 'post',
				postBody: 'action=BoruAuthorizeNetAjax&mode=ajax&file=Settings&module=BoruAuthorizeNet&ajax=true&item='+setting+'&value='+value+'&command=change',
				onComplete: function(response){
					var message = response.responseText;
					new Ajax.Request(
							'index.php',
							{   queue: {position: 'end', scope: 'command'},
								method: 'post',
								postBody: 'action=BoruAuthorizeNetAjax&mode=ajax&file=Settings&module=BoruAuthorizeNet&ajax=true&item='+setting+'&value='+value+'&command=get',
								onComplete: function(response){
									//alert(response.responseText);
									document.getElementById(setting).innerHTML = response.responseText;
									document.getElementById("ba_message").innerHTML = message;
								}
							}
						);
				}
			}
		);
	}
}
function showRecurringFields() {
	var e = document.getElementById('r_recurring');
	var value = e.options[e.selectedIndex].value;
	$('div_single').style.display='none';
	$('div_recurring').style.display='none';
	if(value != 'single') {
		$('xx_recurring_display').style.display='block';
		$('div_recurring').style.display='block';
		//document.getElementById('final_payment').innerHTML = document.getElementById('recurring_billed_amount').innerHTML;
	} else {
		$('xx_recurring_display').style.display='none';
		$('div_single').style.display='block';
		//document.getElementById('final_payment').innerHTML = document.getElementById('xx_amount').innerHTML;
	}
	updatePaymentType(); // Update Payment type
}

function AuthorizeSumbitForm() {
	var e = document.getElementById('r_recurring');
	var val = e.options[e.selectedIndex].value;
	var form = document.getElementById('authorizenetform');
	var recordid = form.recordid.value;
	var r_frequency = document.getElementById('r_frequency');
	var frequency = r_frequency.options[r_frequency.selectedIndex].value;
	var startdate = document.getElementById('jscal_field_r_startdate').value;
	var recurring_amount = parseFloat(document.getElementById('recurring_billed_amount').innerHTML).toFixed(2);
	//var startdate = r_startdate.substring(5,7) + r_startdate.substring(2,4);
	var payment = document.getElementById('r_payments').value;
	if(payment == null || payment == '') {
		alert('Please Specify # Payments');
		return false;
	}
	if(val != 'single') {
		if(startdate == null || startdate == '') {
			alert('Please Specify a Start Date');
			return false;
		}
	}
	var amount = document.getElementById('x_amount').value;	
	if(val == 'single'){
		recurring_amount = amount;
	}		

	if(frequency == 'weekly'){
		var unit = 'days';
		var length = 7;
	}else if(frequency == 'bi-weekly'){
		var unit = 'days';
		var length = 14;
	}else if(frequency == 'monthly'){
		var unit = 'months';
		var length = 1;
	}else if(frequency == '2mo'){
		var unit = 'months';
		var length = 2;
	}else if(frequency == '3mo'){
		var unit = 'months';
		var length = 4;
	}else if(frequency == '6mo'){
		var unit = 'months';
		var length = 6;
	}else if(frequency == 'yearly'){
		var unit = 'months';
		var length = 12;
	}	
	window.open('index.php?module=BoruAuthorizeNet&action=BoruAuthorizeNetAjax&file=CreateSubscription&recordid='+recordid+'&frequency='+frequency+'&startdate='+startdate+'&payments='+payment+'&amount='+amount+'&recurring_amount='+recurring_amount+'&payment_type='+val,'test','width=640,height=360,resizable=1,scrollbars=1,location=1'); 
	return false;
}


/**
 * this function is used to assign the available picklist values to the assigend picklist values section
 */
function BAmoveRight(){
	var rightElem = $('selectedColumns');
	for (var i=0;i<rightElem.length;i++){
		rightElem.options[i].selected=false;
	}
	
	var leftElem = $('availList');
	
	for (var i=0;i<leftElem.length;i++){
		if(leftElem.options[i].selected==true){            	
			var rowFound=false;
			//check if the value already exists
			for(var j=0;j<rightElem.length;j++){
				if(rightElem.options[j].value==leftElem.options[i].value){
					rowFound=true;
					rightElem.options[j].selected=true;
					break;
				}
			}
			
			//if the value does not exist then create it and set it as selected
			if(rowFound!=true){
				var newColObj=document.createElement("OPTION");
				newColObj.value=leftElem.options[i].value;
				newColObj.innerHTML=leftElem.options[i].innerHTML;
				
				rightElem.appendChild(newColObj);
				leftElem.options[i].selected=false;
				newColObj.selected=true;
			}
		}
	}
}

/**
 * this function is used to remove values from the assigned picklist values section
 */
function BAremoveValue(){
	var elem = $('selectedColumns');
	if(elem.options.selectedIndex>=0){
		for (var i=0;i<elem.options.length;i++){ 
			if(elem.options[i].selected == true){
				elem.removeChild(elem.options[i--]);
			}
		}
	}
}
/**
 * this function is used to move the selected option up in the assigned picklist
 */
function BAmoveUp(){
	var elem = document.getElementById('selectedColumns');
	if(elem.options.selectedIndex>=0){
		for (var i=1;i<elem.options.length;i++){
			if(elem.options[i].selected == true){
				//swap with one up
				var first = elem.options[i-1];
				var second = elem.options[i];
				var temp = new Array();
				
				temp.value = first.value;
				temp.innerHTML = first.innerHTML;
				
				first.value = second.value;
				first.innerHTML = second.innerHTML;
				
				second.value = temp.value;
				second.innerHTML = temp.innerHTML;
				
				first.selected = true;
				second.selected = false;
			}
		}
	}
}

/**
 * this function is used to move the selected option down in the assigned picklist
 */
function BAmoveDown(){
	var elem = document.getElementById('selectedColumns');
	if(elem.options.selectedIndex>=0){
		for (var i=elem.options.length-2;i>=0;i--){
			if(elem.options[i].selected == true){
				//swap with one down
				var first = elem.options[i+1];
				var second = elem.options[i];
				var temp = new Array();
				
				temp.value = first.value;
				temp.innerHTML = first.innerHTML;
				
				first.value = second.value;
				first.innerHTML = second.innerHTML;
				
				second.value = temp.value;
				second.innerHTML = temp.innerHTML;
				
				first.selected = true;
				second.selected = false;
			}
		}
	}
}
function BAsaveColumns(){
	var node = document.getElementById('selectedColumns');
	if(node.length == 0){
		alert("No columns selected");
		return false;
	}
	var arr = new Array();
	var colstring = "";
	for(var i=0;i<node.length;i++){
		arr[i] = node[i].value;
		colstring = colstring + node[i].value + "::";
	}
	new Ajax.Request(
		'index.php',
		{   queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: 'action=BoruAuthorizeNetAjax&mode=ajax&file=Settings&module=BoruAuthorizeNet&ajax=true&command=columnset&cols='+colstring,
			onComplete: function(response){
				//alert(response.responseText);
				document.getElementById("ba_message").innerHTML = response.responseText;
				location.href=location.href;
			}
		}
	);
}

function setUpCalendarPopup(){
	Calendar.setup({
		inputField : "jscal_field_r_startdate", ifFormat : "%Y-%m-%d", showsTime : false, button : "jscal_trigger_r_startdate", singleClick : true, step : 1, align : "tR"
	})
}

function CalculateRecurringAmount(){
	
	var amount = document.getElementById('x_amount').value;
	amount = amount.replace(',','');
	amount = parseFloat(amount);
	
	var r_frequency = document.getElementById('r_frequency');
	var frequency = r_frequency.options[r_frequency.selectedIndex].value;	
	var recurring_totals = document.getElementById('recurring_totals').value
	if(recurring_totals == 'split') {
		if(frequency == 'weekly'){
			var recurringAmount = parseFloat((amount/52).toFixed(2));
			document.getElementById('r_payments').value = 52;
		}else if(frequency == 'bi-weekly'){
			var recurringAmount = parseFloat((amount/26).toFixed(2));
			document.getElementById('r_payments').value = 26;
		}else if(frequency == 'monthly'){
			var recurringAmount = parseFloat((amount/12).toFixed(2));
			document.getElementById('r_payments').value = 12;
		}else if(frequency == '2mo'){
			var recurringAmount = parseFloat((amount/6).toFixed(2));
			document.getElementById('r_payments').value = 6;
		}else if(frequency == '3mo'){
			var recurringAmount = parseFloat((amount/4).toFixed(2));
			document.getElementById('r_payments').value = 4;
		}else if(frequency == '6mo'){
			var recurringAmount =parseFloat((amount/2).toFixed(2));
			document.getElementById('r_payments').value = 2;
		}else{
			var recurringAmount = parseFloat(amount.toFixed(2));
			document.getElementById('r_payments').value = 1;
		}
	} else {
		var recurringAmount = parseFloat(amount.toFixed(2));
	}
	document.getElementById('recurring_billed_amount').innerHTML = recurringAmount.toFixed(2);
	//document.getElementById('final_payment').innerHTML = recurringAmount.toFixed(2);
	var recordid = document.getElementsByName('record');	
	recordid = recordid[0].value;
	var r_recurring = document.getElementById('r_recurring');
	var recurring = r_recurring.options[r_recurring.selectedIndex].value;
	
	new Ajax.Request(
		'index.php',
		{queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: "file=SavePaymentWidgetSettings&module=BoruAuthorizeNet&action=BoruAuthorizeNetAjax&recordid=" + recordid + "&recurring=" + recurring + "&frequency=" + frequency ,
			onComplete: function(response) {
				if(response.responseText.indexOf('SUCCESS') != -1){
				}
			}
		}
	);
}

function ChangeRecurringAmount() {
	
	var recurringAmount = document.getElementById('recurring_billed_amount').innerHTML;
	recurringAmount = prompt("Please enter the Recurring Billed Amount to be paid",recurringAmount);
	recurringAmount = recurringAmount.replace(",","");
	
	if(recurringAmount != null){		
		var r_frequency = document.getElementById('r_frequency');
		var frequency = r_frequency.options[r_frequency.selectedIndex].value;	
		var recurring_totals = document.getElementById('recurring_totals').value
		if(recurring_totals == 'split') {
			if(frequency == 'weekly'){
				var amount = parseFloat((recurringAmount*52)).toFixed(2); 
			}else if(frequency == 'bi-weekly'){
				var amount = parseFloat((recurringAmount*26)).toFixed(2); 
			}else if(frequency == 'monthly'){
				var amount = parseFloat((recurringAmount*12)).toFixed(2); 
			}else if(frequency == '2mo'){
				var amount = parseFloat((recurringAmount*6)).toFixed(2); 
			}else if(frequency == '3mo'){
				var amount = parseFloat((recurringAmount*4)).toFixed(2); 
			}else if(frequency == '6mo'){
				var amount = parseFloat((recurringAmount*2)).toFixed(2); 
			}else{
				var amount = parseFloat(recurringAmount).toFixed(2); 
			}
		} else {
			var amount = parseFloat(recurringAmount).toFixed(2); 
		}
		document.getElementById('recurring_billed_amount').innerHTML = parseFloat(recurringAmount).toFixed(2);
		document.getElementById('x_amount').value = parseFloat(amount).toFixed(2);
		document.getElementById('xx_amount').innerHTML = parseFloat(amount).toFixed(2);
		

		var recordid = document.getElementsByName('record');	
		recordid = recordid[0].value;
        
		var r_recurring = document.getElementById('r_recurring');
		var recurring = r_recurring.options[r_recurring.selectedIndex].value;
		
		var r_frequency = document.getElementById('r_frequency');
		var frequency = r_frequency.options[r_frequency.selectedIndex].value;	        
        
		var startdate = document.getElementById('jscal_field_r_startdate').value;
		
		var x_method = document.getElementById('x_method');
		var method = x_method.options[x_method.selectedIndex].value;
		
		
		//write payment setting options to boru_authorizenet_history
		new Ajax.Request(
				'index.php',
	            {queue: {position: 'end', scope: 'command'},
	                method: 'post',
	                postBody: "file=SavePaymentWidgetSettings&module=BoruAuthorizeNet&action=BoruAuthorizeNetAjax&recordid=" + recordid + "&recurring=" + recurring + "&frequency=" + frequency + "&startdate=" + startdate + "&method=" + method,
	                onComplete: function(response) {
	                    if(response.responseText.indexOf('SUCCESS') != -1){
//	                    	window.location.reload();
	                    }
	            	}
	            }
		);
	}
}

function updatePaymentType(){
		var recurringAmount = document.getElementById('recurring_billed_amount').innerHTML;
		///recurringAmount = prompt("Please enter the Recurring Billed Amount to be paid",recurringAmount);
		recurringAmount = recurringAmount.replace(",","");		
		var r_frequency = document.getElementById('r_frequency');
		var frequency = r_frequency.options[r_frequency.selectedIndex].value;	
		var recurring_totals = document.getElementById('recurring_totals').value
		if(recurring_totals == 'split') {
			if(frequency == 'weekly'){
				var amount = parseFloat((recurringAmount*52)).toFixed(2); 
			}else if(frequency == 'bi-weekly'){
				var amount = parseFloat((recurringAmount*26)).toFixed(2); 
			}else if(frequency == 'monthly'){
				var amount = parseFloat((recurringAmount*12)).toFixed(2); 
			}else if(frequency == '2mo'){
				var amount = parseFloat((recurringAmount*6)).toFixed(2); 
			}else if(frequency == '3mo'){
				var amount = parseFloat((recurringAmount*4)).toFixed(2); 
			}else if(frequency == '6mo'){
				var amount = parseFloat((recurringAmount*2)).toFixed(2); 
			}else{
				var amount = parseFloat(recurringAmount).toFixed(2); 
			}
		} else {
			var amount = parseFloat(recurringAmount).toFixed(2); 
		}
		document.getElementById('recurring_billed_amount').innerHTML = parseFloat(recurringAmount).toFixed(2);
		document.getElementById('x_amount').value = parseFloat(amount).toFixed(2);
		document.getElementById('xx_amount').innerHTML = parseFloat(amount).toFixed(2);

		var recordid = document.getElementsByName('record');	
		recordid = recordid[0].value;
		var r_recurring = document.getElementById('r_recurring');
		var recurring = r_recurring.options[r_recurring.selectedIndex].value;
		var r_frequency = document.getElementById('r_frequency');
		var frequency = r_frequency.options[r_frequency.selectedIndex].value;	        
		var x_method = document.getElementById('x_method');
		var method = x_method.options[x_method.selectedIndex].value;
		var startdate = document.getElementById('jscal_field_r_startdate').value;
		//write payment setting options to boru_authorizenet_history
		new Ajax.Request(
				'index.php',
	            {queue: {position: 'end', scope: 'command'},
	                method: 'post',
	                postBody: "file=SavePaymentWidgetSettings&module=BoruAuthorizeNet&action=BoruAuthorizeNetAjax&recordid=" + recordid + "&recurring=" + recurring + "&frequency=" + frequency + "&startdate=" + startdate + "&method=" + method,
	                onComplete: function(response) {
	                    if(response.responseText.indexOf('SUCCESS') != -1){
//	                    	window.location.reload();
	                    }
	            	}
	            }
		);
}