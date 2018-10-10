var typeofdata = new Array();
typeofdata['V'] = ['e','n','s','ew','c','k'];
typeofdata['N'] = ['l','g','m','h'];
typeofdata['T'] = ['e','n','l','g','m','h','bw','b','a'];
typeofdata['I'] = ['e','n','l','g','m','h'];
typeofdata['C'] = ['e','n'];
typeofdata['D'] = ['e','n','l','g','m','h','bw','b','a'];
typeofdata['DT'] = ['e','n','l','g','m','h','bw','b','a'];
typeofdata['NN'] = ['e','n','l','g','m','h'];
typeofdata['E'] = ['e','n','s','ew','c','k'];

var fLabels = new Array();
fLabels['e'] = alert_arr.EQUALS;
fLabels['n'] = alert_arr.NOT_EQUALS_TO;
fLabels['s'] = alert_arr.STARTS_WITH;
fLabels['ew'] = alert_arr.ENDS_WITH;
fLabels['c'] = alert_arr.CONTAINS;
fLabels['k'] = alert_arr.DOES_NOT_CONTAINS;
fLabels['l'] = alert_arr.LESS_THAN;
fLabels['g'] = alert_arr.GREATER_THAN;
fLabels['m'] = alert_arr.LESS_OR_EQUALS;
fLabels['h'] = alert_arr.GREATER_OR_EQUALS;
fLabels['bw'] = alert_arr.BETWEEN;
fLabels['b'] = alert_arr.BEFORE;
fLabels['a'] = alert_arr.AFTER;


function getFieldsByModule(select_module, filter_by) {
	new Ajax.Request(
		'index.php',
		{
			queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: "module=GoogleMap&action=GoogleMapAjax&file=index&type=get_fields_by_module&select_module="+select_module+"&filter_by="+filter_by,
			onComplete: function(response) {					
				getObj('filter_by').innerHTML = response.responseText;
				getObj('filter_by_con').innerHTML = '<option value="">None</option>';
			}
		}
	);
}

function selectFilterBy(val) {
	var options = '';
	if(val == '') {
		options = '<option value="">None</option>';
	} else {
		var arr = val.split(':');	
		if(arr[1] == 'N') {
			ops = typeofdata[arr[1]];
			for(var i = 0;i < ops.length;i++) {
				options += '<option value="' + ops[i] + '">' +  fLabels[ops[i]] + '</option>';
			}
			
		} else {
			options = '<option value="e">equals</option><option value="n">not equal to</option><option value="s">starts with</option><option value="ew">ends with</option><option value="c">contains</option><option value="k">does not contains</option>';
		}
	}
	getObj('filter_by_con').innerHTML = options;
}

function validateForm(form) {
	/*
	if(document.getElementById("address")!= null){
		if(document.getElementById("address").value == '') {
			alert("Please enter a address");
			document.getElementById("address").focus();
			return;
		}
	}
	if(document.getElementById("city")!= null){
		if(document.getElementById("city").value == '') {
			alert("Please enter a city");
			document.getElementById("city").focus();
			return;
		}
	}
	if(document.getElementById("state")!= null){
		if(document.getElementById("state").value == '') {
			alert("Please enter a state");
			document.getElementById("state").focus();
			return;
		}
	}
	if(document.getElementById("zip")!= null){
		if(document.getElementById("zip").value == '') {
			alert("Please enter a zip");
			document.getElementById("zip").focus();
			return;
		}
	}
	if(document.getElementById("country")!= null){
		if(document.getElementById("country").value == '') {
			alert("Please enter a country");
			document.getElementById("country").focus();
			return;
		}
	}
	*/
//	if(document.getElementById("select_module").value == '') {
//		alert("Please select a module");
//		return;
//	}		
	var show_all = document.getElementsByName('show_all[]');
	var selected_module = false;
	for(var i = 0;i < show_all.length;i++) {
		if(show_all[i].checked) {
			selected_module = true;
		}
	}
	if(selected_module == false) {
		alert("Please select a module");
		return;
	}
	form.submit();		
}

function ajaxRefresh(onDemand){
	if(onDemand== 'Yes'){
		jQuery('#__vtigerjs_dialogbox_olayer__').show();
		data= 'module=GoogleMap&action=GoogleMapAjax&file=index&mode=ajax&ajax=true';
		jQuery('form#filterform input[type=text]').each(function(){
				data+= '&'+ this.name+ '='+ this.value;
		});
		jQuery('form#filterform input[type=checkbox]').each(function(){
			if(this.checked){
				data+= '&'+ this.name+ '='+ this.value;
			}
		});
		data+= '&expandModule='+ jQuery('#expandModule').val();
		new Ajax.Request(
			'index.php', {
				queue: {
					position: 'end', 
					scope: 'command'
				},
		    	method: 'post',
				postBody: data,
				onComplete: function(response){
					jQuery('#dummies').html(response.responseText);
				}
			}
		);
		jQuery('#__vtigerjs_dialogbox_olayer__').hide();
	}
}
