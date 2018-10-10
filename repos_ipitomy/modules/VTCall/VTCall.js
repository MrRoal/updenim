function getListViewEntriesVTCall_js(module,url)
{
	var showStatus = document.getElementById('showStatus');
	var userget = document.getElementById('userget');

	var select_options  =  document.getElementsByName('selected_id');
	var x = select_options.length;
	var viewid =getviewId();
	idstring = "";

	xx = 0;
	for(i = 0; i < x ; i++)
	{
		if(select_options[i].checked)
		{
			idstring = select_options[i].value +";"+idstring
			xx++
		}
	}
	var all_selected=document.getElementById('allselectedboxes').value;

	$("status").style.display="inline";
	if($('search_url').value!='')
	urlstring = $('search_url').value;
	else
	urlstring = '';
	//alert("URL String: " + urlstring);
	gstart = url;
	var data = "module="+module+"&action="+module+"Ajax&file=vt_call&ajax=true&allselobjs="+all_selected+"&selobjs="+idstring+"&"+url+urlstring;
	if (showStatus != null) data += "&optionstarus="+showStatus.value;
	if (userget != null) data += "&userlist="+userget.value;
	//alert(data);
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',

	postBody: data,
	onComplete: function(response) {
		$("status").style.display="none";
		result = response.responseText.split('&#&#&#');
		$("ListViewContents").innerHTML= result[2];
		date_selected_checkbox();
		if(result[1] != '')
		alert(result[1]);
		$('basicsearchcolumns').innerHTML = '';
	}
	}
	);
}

function ToolTipManagerVTCall(){
	var state = false;
	/**
	* this function creates the tooltip div and adds the information to it
	* @param string text - the text to be added to the tooltip
	*/
	function tip(node, text,id,fieldname){
		state=true;
		var divName = getDivId(id,fieldname);
		var div = document.getElementById(divName)
		if(!div){
			div = document.createElement('div');
			div.id = divName;
			div.style.position = 'absolute';
			if(typeof div.style.opacity == "string"){
				div.style.opacity = 0.8;
			}
			div.className = "tooltipClass";
		}

		div.innerHTML = text;
		document.body.appendChild(div);
		div.style.display = "block";
		positionTooltip(node, divName);
	}

	function getDivId(id,fieldname){
		return '__VT_tooltip_'+id+'_'+fieldname;
	}

	function exists(id,fieldname){
		return (typeof document.getElementById(getDivId(id,fieldname)) != 'undefined' &&
		document.getElementById(getDivId(id,fieldname)) != null);
	}

	function show(node,id,fieldname){
		var div = document.getElementById(getDivId(id,fieldname));
		if(typeof div !='undefined' && div != null){
			div.style.display = '';
			positionTooltip(node, getDivId(id,fieldname));
		}
	}

	/**
	* this function removes the tooltip div
	*/
	function unTip(nodelay,id,fieldname){
		state=false;
		var divName = getDivId(id,fieldname);
		var div = document.getElementById(divName);
		if(typeof div != 'undefined' && div != null ){
			if(typeof nodelay != 'undefined' && nodelay != null){
				div.style.display = "none";
			}else{
				setTimeout(function(){
					if(!state){
						div.style.display = "none";
					}
				}, 700);
			}
		}
	}

	/**
	* this function is used to position the tooltip div
	* @param string obj - the id of the element where the div has to appear
	* @param object div - the div which contains the info
	*/

	/*
	*
	* THUY@BORU 20110414
	* VT Call Update
	*
	*/

	function positionTooltip(obj,div){
		var tooltip = document.getElementById(div);
		var leftSide = findPosX(obj)+50;
		var topSide = findPosY(obj);
		var dimensions = getDimension(tooltip);
		var widthM = dimensions.x;
		var getVal = eval(leftSide) + eval(widthM);
		var tooltipDimensions = getDimension(obj);
		var tooltipWidth = tooltipDimensions.x;
		if(getVal  > document.body.clientWidth ){
			leftSide = eval(getVal) - eval(widthM);
			tooltip.style.left = leftSide + 'px';
		}else{
			leftSide = eval(leftSide) + (eval(tooltipWidth)/4);
			tooltip.style.left = leftSide + 'px';
		}
		var heightTooltip = dimensions.y;
		var bottomSide = eval(topSide) + eval(heightTooltip);
		if(bottomSide > document.body.clientHeight){
			topSide = eval(topSide) - eval(heightTooltip)/5;
			if(topSide<0){
				topSide = 10;
			}
		}else{
			//			alert(heightTooltip);
			topSide = eval(topSide) - eval(heightTooltip)/3;
			//			topSide = findPosY(obj) - 50;
			if(topSide<0){
				topSide = 10;
			}
		}
		var toplimit = findPosY(obj) - 50;
		var bottomlimit = findPosY(obj) + 50;

		if (topSide > toplimit && topSide < bottomlimit){
		}else{
			topSide = toplimit;
		}

		tooltip.style.top= topSide + 'px';
		//		tooltip.style.top= findPosY(obj) + 'px';
	}

	function positionTooltip2(obj,div){
		var tooltip = document.getElementById(div);
		var leftSide = findPosX(obj)+50;
		var topSide = findPosY(obj);
		var dimensions = getDimension(tooltip);
		var widthM = dimensions.x;
		var getVal = eval(leftSide) + eval(widthM);
		var tooltipDimensions = getDimension(obj);
		var tooltipWidth = tooltipDimensions.x;
		if(getVal  > document.body.clientWidth ){
			leftSide = eval(getVal) - eval(widthM);
			tooltip.style.left = leftSide + 'px';
		}else{
			leftSide = eval(leftSide) + (eval(tooltipWidth)/4);
			tooltip.style.left = leftSide + 'px';
		}
		var heightTooltip = dimensions.y;
		var bottomSide = eval(topSide) + eval(heightTooltip);
		if(bottomSide > document.body.clientHeight){
			topSide = eval(topSide) - eval(heightTooltip)/5;
			if(topSide<0){
				topSide = 10;
			}
		}else{
			topSide = eval(topSide) - eval(heightTooltip)/3;
			if(topSide<0){
				topSide = 10;
			}
		}
		//		tooltip.style.top= topSide + 'px';
		tooltip.style.top= findPosY(obj) + 'px';
	}



	function positionTooltip_origin(obj,div){
		var tooltip = document.getElementById(div);
		var leftSide = findPosX(obj);
		//		alert(leftSide);
		var topSide = findPosY(obj);
		var dimensions = getDimension(tooltip);
		var widthM = dimensions.x;
		var getVal = eval(leftSide) + eval(widthM);
		var tooltipDimensions = getDimension(obj);
		var tooltipWidth = tooltipDimensions.x;

		if(getVal  > document.body.clientWidth ){
			leftSide = eval(leftSide) - eval(widthM);
			tooltip.style.left = leftSide + 'px';
		}else{

			leftSide = eval(leftSide) + (eval(tooltipWidth)/4);
			tooltip.style.left = leftSide + 'px';
		}
		//		alert(leftSide);
		var heightTooltip = dimensions.y;
		var bottomSide = eval(topSide) + eval(heightTooltip);
		if(bottomSide > document.body.clientHeight){
			topSide = topSide - (bottomSide - document.body.clientHeight) - 10;
			if(topSide < 0 ){
				topSide = 10;
			}
		}else{
			topSide = eval(topSide) - eval(heightTooltip)/2;
			if(topSide<0){
				topSide = 10;
			}
		}
		tooltip.style.top= topSide + 'px';
	}

	return {tip:tip, untip:unTip,'exists': exists,'show': show,'getDivId':getDivId};
}
if(!tooltipvtcall){
	var tooltipvtcall = ToolTipManagerVTCall();
}


function showHideStatusVTCall(sId,anchorImgId,sImagePath)
{
	oObj = eval(document.getElementById(sId));
	if(oObj.style.display == 'block')
	{
		oObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}
	else
	{
		oObj.style.display = 'block';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
}


// Configure Related Lists

function addRelatedField(related_section) {
	var obj_count = document.getElementById(related_section+'_field_count');
	var cnt = parseInt(obj_count.value) + 1;

	obj_count.value = cnt;


	new Ajax.Request(
	'index.php',
	{
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallSettingAjax&mode=addfield&dep_index='+cnt+'&related_section='+related_section ,
		onComplete: function(response){
			reloadFields(related_section);
		}
	}
	);

}

function deleteRelatedField(id_del,related_section) {
	new Ajax.Request(
	'index.php',
	{
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallSettingAjax&mode=delfield&fieldid='+id_del+'&related_section='+related_section,
		onComplete: function(response){
			reloadFields(related_section);
		}
	});
}

function saveOrder(id,task,order,related_section){
	var url = "module=VTCall&action=VTCallAjax&file=VTCallSettingAjax&mode=order_save&task="+task+"&id="+id+"&ordering="+order+"&related_section="+related_section;
	//alert(url)
	new Ajax.Request('index.php',{
		queue: {position: 'end', scope: 'command'},
		method: 'post',
		postBody:url,
		onComplete: function(response) {
			reloadFields(related_section);
		}
	});
	return false;
}


function saveField(id,value,related_section){
	new Ajax.Request(
	'index.php',
	{
		queue: {position: 'end', scope: 'command'},
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallSettingAjax&mode=savefield&value='+value+"&id="+id+"&related_section="+related_section,
		onComplete: function(response) {

		}
	}
	);
}

function reloadFields(related_section){
	var url = "module=VTCall&action=VTCallAjax&ajax=true&file=RelatedFields&related_section="+related_section;
	//alert(url)
	new Ajax.Request('index.php',{
		queue: {position: 'end', scope: 'command'},
		method: 'post',
		postBody:url,
		onComplete: function(response) {
			document.getElementById('related_list_field').innerHTML=response.responseText;
		}
	});
}


// Shading Color Condition
function addShadingCondition() {
	new Ajax.Request(
	'index.php',
	{
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallSettingAjax&mode=add_shading_condition',
		onComplete: function(response){
			reloadShading();
		}
	}
	);
}

function reloadShading(){
	var url = "module=VTCall&action=VTCallAjax&ajax=true&file=ShadingLines";
	//alert(url)
	new Ajax.Request('index.php',{
		queue: {position: 'end', scope: 'command'},
		method: 'post',
		postBody:url,
		onComplete: function(response) {
			document.getElementById('shading_lines').innerHTML=response.responseText;
		}
	});
}

function saveShading(id,obj,field){
	var value=obj.value;
	if (field =='line_color'){
		obj.style.backgroundColor=value;
	}
	new Ajax.Request(
	'index.php',
	{
		queue: {position: 'end', scope: 'command'},
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallSettingAjax&mode=saveshading&value='+value+"&id="+id+"&field="+field,
		onComplete: function(response) {

		}
	}
	);
}

function deleteShading(id_del) {
	new Ajax.Request(
	'index.php',
	{
		method: 'post',
		postBody: 'module=VTCall&action=VTCallAjax&file=VTCallSettingAjax&mode=deleteshading&id='+id_del,
		onComplete: function(response){
			reloadShading();
		}
	});
}

function confirmDeleteVTCall(url)
{
	// Get user type
	var user_type=document.getElementsByName('usertype');
	var sel_type='';
	for(i=0;i<user_type.length;i++){
		if(user_type[i].checked == true){
			url += "&usertype="+user_type[i].value;
		}
	}
	
	// Get select option
	var selectedOption = document.getElementById("selectedOption").value;
	url += "&seloption="+selectedOption;
	if(confirm(alert_arr.ARE_YOU_SURE))
	{
		document.location.href=url;
	}
}