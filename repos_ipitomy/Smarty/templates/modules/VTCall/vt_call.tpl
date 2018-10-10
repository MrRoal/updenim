{*<!--
/*+********************************************************************************
 * The contents of this file are subject to the vtiger CRM Public License Version 1.0
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
 ********************************************************************************/
-->*}

{*<!-- module header -->*}
<script language="JavaScript" type="text/javascript" src="include/js/general.js"></script>
<script language="JavaScript" type="text/javascript" src="include/js/ListView.js"></script>
<script language="JavaScript" type="text/javascript" src="include/js/search.js"></script>
<link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
<link rel="stylesheet" type="text/css" media="all" href="modules/VTCall/styleVTCall.css" >


<script language="JavaScript" type="text/javascript" src="include/js/dtlviewajax.js"></script>

<script type="text/javascript" src="jscalendar/calendar.js"></script>
<script type="text/javascript" src="jscalendar/lang/calendar-en.js"></script>
<script type="text/javascript" src="jscalendar/calendar-setup.js"></script>
<script type="text/javascript" src="modules/Calendar/Calendar.js"></script>
<script type="text/javascript" src="modules/VTCall/TooltipHeaderScriptVTCall.js"></script>
<script type="text/javascript" src="modules/VTCall/VTCall.js"></script>
<script type="text/javascript" src="modules/VTCall/script.js"></script>
<script language="JavaScript" type="text/javascript" src="include/js/smoothscroll.js"></script>


{literal}


<script type="text/javascript">

function ChangeCustomViewStatus_NoStandard(filterid,current_status,new_status,parentTab){

	url = "module=VTCall&action=VTCallAjax&file=VTCall_setFilterStatus&record="+filterid+"&current_status="+current_status+"&new_status="+new_status;

	new Ajax.Request(

	'index.php',

	{queue: {position: 'end', scope: 'command'},

	method: 'post',

	postBody: url,

	onComplete: function(response) {

		if (response.responseText == "|#|~Success") {

			location.reload(true);

		}

	}

	}

	);

}

</script>

{/literal}

{literal}
<script type="text/javascript">

function hndMouseOverVTCall(uitype,fieldLabel,tdid,evetnid)
{
	var mouseArea="";
	mouseArea="mouseArea_"+ tdid +"_"+ evetnid +"_"+ fieldLabel;
	if(itsonview)
	{
		return;
	}

	show("crmspanid");
	globaluitype = uitype;
	globaldtlviewspanid= "dtlview_"+ tdid +"_" +evetnid +"_"+ fieldLabel;//valuespanid;
	globaleditareaspanid="editarea_"+ tdid +"_" +evetnid +"_" + fieldLabel;//textareapanid;
	globalfieldlabel = fieldLabel;
	if(globaluitype == 53)
	{
		if(typeof(document.DetailView.assigntype[0]) != 'undefined')
		{
			var assign_type_U = document.DetailView.assigntype[0].checked;
			var assign_type_G = document.DetailView.assigntype[1].checked;
			if(assign_type_U == true)
			globaltxtboxid= 'txtbox_U'+tdid;//fieldLabel;
			else if(assign_type_G == true)
			globaltxtboxid= 'txtbox_G'+tdid;//fieldLabel;
		}else
		{
			globaltxtboxid= 'txtbox_U'+tdid;//fieldLabel;
		}
	}else
	{
		globaltxtboxid="txtbox_"+ tdid +"_"+ evetnid + "_"+ fieldLabel;//textboxpanid;
	}
	divObj = getObj('crmspanid');
	crmy = findPosY(getObj(mouseArea));
	crmx = findPosX(getObj(mouseArea));
	if(document.all)
	{
		divObj.onclick=handleEdit;
	}
	else
	{
		divObj.setAttribute('onclick','handleEditVTCall();');
	}
	divObj.style.left=(crmx+getObj(mouseArea).offsetWidth -divObj.offsetWidth)+"px";
	divObj.style.top=crmy+"px";
}

function handleEditVTCall()
{
	show(globaleditareaspanid) ;
	fnhide(globaldtlviewspanid);
	if(globaluitype != 53)
	{
		globaltempvalue = getObj(globaltxtboxid).value;
		if(getObj(globaltxtboxid).type != 'hidden')
		getObj(globaltxtboxid).focus();
	}
	fnhide('crmspanid');
	itsonview=true;
	return false;
}

function dtlViewAjaxSaveVTCallPotential(fieldLabel,module,uitype,tableName,fieldName,crmId,eventid)
{
	var dtlView = "dtlview_"+ crmId +"_"+eventid+"_"+ fieldLabel;
	var editArea = "editarea_"+ crmId +"_"+eventid+"_"+ fieldLabel;
	var groupurl = "";

	if(globaluitype == 53)
	{
		if(typeof(document.DetailView.assigntype[0]) != 'undefined')
		{
			var assign_type_U = document.DetailView.assigntype[0].checked;
			var assign_type_G = document.DetailView.assigntype[1].checked;
		}else
		{
			var assign_type_U = document.DetailView.assigntype.checked;
		}
		if(assign_type_U == true)
		{
			var txtBox= 'txtbox_U'+fieldLabel;
		}
		else if(assign_type_G == true)
		{
			var txtBox= 'txtbox_G'+fieldLabel;
			var group_id = encodeURIComponent($(txtBox).options[$(txtBox).selectedIndex].text);
			var groupurl = "&assigned_group_id="+group_id+"&assigntype=T"
		}

	}
	else if(uitype == 15 || uitype == 16)
	{
		var txtBox= "txtbox_"+ crmId +"_"+eventid+"_"+ fieldLabel;
		var not_access =document.getElementById(txtBox);
		pickval = not_access.options[not_access.selectedIndex].value;
		if(pickval == alert_arr.LBL_NOT_ACCESSIBLE)
		{
			document.getElementById(editArea).style.display='none';
			document.getElementById(dtlView).style.display='block';
			itsonview=false; //to show the edit link again after hiding the editdiv.
			return false;
		}
	}
	else if(globaluitype == 33)
	{
		var txtBox= "txtbox_"+ fieldLabel;
		var oMulSelect = $(txtBox);
		var r = new Array();
		var notaccess_label = new Array();
		for (iter=0;iter < oMulSelect.options.length ; iter++)
		{
			if (oMulSelect.options[iter].selected)
			{
				r[r.length] = oMulSelect.options[iter].value;
				notaccess_label[notaccess_label.length] = oMulSelect.options[iter].text;
			}
		}
	}else
	{
		var txtBox= "txtbox_"+ crmId +"_"+eventid+"_"+ fieldLabel;
	}

	var popupTxt= "popuptxt_"+ fieldLabel;
	var hdTxt = "hdtxt_"+ fieldLabel;

	if(formValidate() == false)
	{
		return false;
	}


	$("vtbusy_info").style.display="inline";
	var isAdmin = document.getElementById("hdtxt_IsAdmin").value;


	//overriden the tagValue based on UI Type for checkbox
	if(uitype == '56')
	{
		if(document.getElementById(txtBox).checked == true)
		{
			if(module == "Contacts")
			{
				var obj = getObj("email");
				if((fieldName == "portal") && (obj == null || obj.value == ''))
				{
					tagValue = "0";
					alert(alert_arr.PORTAL_PROVIDE_EMAILID);
					return false;
				}
				else
				tagValue = "1";

			}
			else
			tagValue = "1";
		}else
		{
			tagValue = "0";
		}
	}else	if(uitype == '156')
	{
		if(document.getElementById(txtBox).checked == true)
		{
			tagValue = "on";
		}else
		{
			tagValue = "off";
		}
	}else if(uitype == '33')
	{
		tagValue = r.join(" |##| ");
	}else if(uitype == '24' || uitype == '21')
	{
		tagValue = document.getElementById(txtBox).value.replace(/<br\s*\/>/g, " ");

	}else
	{
		tagValue = trim(document.getElementById(txtBox).value);
		if(module == "Contacts")
		{
			if(getObj('portal'))
			{
				var port_obj = getObj('portal').checked;
				if(fieldName == "email" && tagValue == '' && port_obj == true)
				{
					alert(alert_arr.PORTAL_PROVIDE_EMAILID);
					return false;
				}
			}
		}
	}

	var data = "file=DetailViewAjax&module=" + module + "&action=" + module + "Ajax&record=" + crmId+"&recordid=" + crmId ;
	data = data + "&fldName=" + fieldName + "&fieldValue=" + escapeAll(tagValue) + "&ajxaction=DETAILVIEW"+groupurl;
	if(module == 'Users') {
		data += "&form_token=" + (document.getElementsByName('form_token')[0].value);
	}
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: data,
	onComplete: function(response) {
		if(response.responseText.indexOf(":#:FAILURE")>-1) {
			alert(alert_arr.ERROR_WHILE_EDITING);
		}
		else if(response.responseText.indexOf(":#:ERR")>-1) {
			alert_str = response.responseText.replace(":#:ERR","");
			alert(alert_str);
			$("vtbusy_info").style.display="none";
		}
		else if(response.responseText.indexOf(":#:SUCCESS")>-1) {
			//For HD & FAQ - comments, we should empty the field value
			if((module == "HelpDesk" || module == "Faq") && fieldName == "comments") {
				var comments = response.responseText.replace(":#:SUCCESS","");
				if(getObj("comments_div") != null) getObj("comments_div").innerHTML = comments;
				if(getObj(dtlView) != null) getObj(dtlView).innerHTML = "";
				if(getObj("comments") != null) getObj("comments").value = "";
			}
			$("vtbusy_info").style.display="none";
		}
	}
	}
	);
	tagValue = get_converted_html(tagValue);
	if(uitype == '13' || uitype == '104')
	{
		var temp_fieldname = 'internal_mailer_'+fieldName;
		if($(temp_fieldname))
		{
			var mail_chk_arr = $(temp_fieldname).innerHTML.split("####");
			var fieldId = mail_chk_arr[0];
			var internal_mailer_flag = mail_chk_arr[1];
			if(internal_mailer_flag == 1)
			var email_link = "<a href=\"javascript:InternalMailer("+crmId+","+fieldId+",'"+fieldName+"','"+module+"','record_id');\">"+tagValue+"&nbsp;</a>";
			else
			var email_link = "<a href=\"mailto:"+ tagValue+"\" target=\"_blank\">"+tagValue+"&nbsp;</a>";
		}

		getObj(dtlView).innerHTML = email_link;
		if(fieldName == "email" || fieldName == "email1"){
			var priEmail = getObj("pri_email");
			if(priEmail)
			priEmail.value = tagValue;
		}else{
			var secEmail = getObj("sec_email");
			if(secEmail)
			secEmail.value = tagValue;
		}
	}else if(uitype == '11'){
		if(typeof(use_asterisk) != 'undefined' && use_asterisk == true){
			getObj(dtlView).innerHTML = "<a href=\"javascript:;\" onclick=\"startCall('"+tagValue+"','"+crmId+"')\">"+tagValue+"</a>";
		}else{
			getObj(dtlView).innerHTML = tagValue;
		}
	}else if(uitype == '17')
	{
		getObj(dtlView).innerHTML = "<a href=\"http://"+ tagValue+"\" target=\"_blank\">"+tagValue+"&nbsp;</a>";
	}else if(uitype == '85')
	{
		getObj(dtlView).innerHTML = "<a href=\"skype://"+ tagValue+"?call\">"+tagValue+"&nbsp;</a>";
	}else if(uitype == '53')
	{
		var hdObj = getObj(hdTxt);
		if(typeof(document.DetailView.assigntype[0]) != 'undefined')
		{
			var assign_type_U = document.DetailView.assigntype[0].checked;
			var assign_type_G = document.DetailView.assigntype[1].checked;
		}else
		{
			var assign_type_U = document.DetailView.assigntype.checked;
		}
		if(isAdmin == "0")
		{
			getObj(dtlView).innerHTML = hdObj.value;
		}else if(isAdmin == "1" && assign_type_U == true)
		{
			getObj(dtlView).innerHTML = "<a href=\"index.php?module=Users&action=DetailView&record="+tagValue+"\">"+hdObj.value+"&nbsp;</a>";
		}else if(isAdmin == "1" && assign_type_G == true)
		{
			getObj(dtlView).innerHTML = "<a href=\"index.php?module=Settings&action=GroupDetailView&groupId="+tagValue+"\">"+hdObj.value+"&nbsp;</a>";
		}
	}
	else if(uitype == '52' || uitype == '77')
	{
		if(isAdmin == "1")
		getObj(dtlView).innerHTML = "<a href=\"index.php?module=Users&action=DetailView&record="+tagValue+"\">"+document.getElementById(txtBox).options[document.getElementById(txtBox).selectedIndex].text+"&nbsp;</a>";
		else
		getObj(dtlView).innerHTML = document.getElementById(txtBox).options[document.getElementById(txtBox).selectedIndex].text;
	}
	else if(uitype == '56')
	{
		if(tagValue == '1')
		{
			getObj(dtlView).innerHTML = alert_arr.YES;
		}else
		{
			getObj(dtlView).innerHTML = alert_arr.NO;
		}

	}else if(uitype == 116 || uitype == 117)
	{
		getObj(dtlView).innerHTML = document.getElementById(txtBox).options[document.getElementById(txtBox).selectedIndex].text;
	}
	else if(getObj(popupTxt))
	{
		var popObj = getObj(popupTxt);
		if(uitype == '50' || uitype == '73' || uitype == '51')
		{
			getObj(dtlView).innerHTML = "<a href=\"index.php?module=Accounts&action=DetailView&record="+tagValue+"\">"+popObj.value+"&nbsp;</a>";
		}
		else if(uitype == '57')
		{
			getObj(dtlView).innerHTML = "<a href=\"index.php?module=Contacts&action=DetailView&record="+tagValue+"\">"+popObj.value+"&nbsp;</a>";
		}
		else if(uitype == '59')
		{
			getObj(dtlView).innerHTML = "<a href=\"index.php?module=Products&action=DetailView&record="+tagValue+"\">"+popObj.value+"&nbsp;</a>";
		}
		else if(uitype == '75' || uitype == '81' )
		{
			getObj(dtlView).innerHTML = "<a href=\"index.php?module=Vendors&action=DetailView&record="+tagValue+"\">"+popObj.value+"&nbsp;</a>";

		}
		else if(uitype == '76')
		{
			getObj(dtlView).innerHTML = "<a href=\"index.php?module=Potentials&action=DetailView&record="+tagValue+"\">"+popObj.value+"&nbsp;</a>";
		}
		else if(uitype == '78')
		{
			getObj(dtlView).innerHTML = "<a href=\"index.php?module=Quotes&action=DetailView&record="+tagValue+"\">"+popObj.value+"&nbsp;</a>";
		}
		else if(uitype == '80')
		{
			getObj(dtlView).innerHTML = "<a href=\"index.php?module=SalesOrder&action=DetailView&record="+tagValue+"\">"+popObj.value+"&nbsp;</a>";
		}
		else if(uitype == '53')
		{
			var hdObj = getObj(hdTxt);
			if(isAdmin == "0")
			{
				getObj(dtlView).innerHTML = hdObj.value;
			}else if(isAdmin == "1")
			{
				getObj(dtlView).innerHTML = "<a href=\"index.php?module=Users&action=DetailView&record="+tagValue+"\">"+hdObj.value+"&nbsp;</a>";;
			}
		}
		else if(uitype == '56')
		{
			if(tagValue == '1')
			{
				getObj(dtlView).innerHTML = alert_arr.YES;
			}else
			{
				getObj(dtlView).innerHTML = "";
			}

		}
		else
		{
			getObj(dtlView).innerHTML = popObj.value;
		}
	}
	else if(uitype == '15' || uitype == '16' )
	{
		var notaccess =document.getElementById(txtBox);
		tagValue = notaccess.options[notaccess.selectedIndex].text;
		if(tagValue == alert_arr.LBL_NOT_ACCESSIBLE)
		getObj(dtlView).innerHTML = "<font color='red'>"+get_converted_html(tagValue)+"</font>";
		else
		getObj(dtlView).innerHTML = get_converted_html(tagValue);
	}
	else if(uitype == '33')
	{
		/* Wordwrap a long list of multi-select combo box items at the
		* item separator string */
		var DETAILVIEW_WORDWRAP_WIDTH = "70"; // must match value in DetailViewUI.tpl.

		var lineLength = 0;
		for(var i=0; i < notaccess_label.length; i++) {
			lineLength += notaccess_label[i].length + 2; // + 2 for item separator string
			/*if(lineLength > DETAILVIEW_WORDWRAP_WIDTH && i > 0) {
			lineLength = notaccess_label[i].length + 2; // reset.
			notaccess_label[i] = '<br/>&nbsp;' + notaccess_label[i]; // prepend newline.
			}*/
			notaccess_label[i] = get_converted_html(notaccess_label[i]);
			// Prevent a browser splitting multiword items:
			//notaccess_label[i] = notaccess_label[i].replace(/ /g, '&nbsp;');
			notaccess_label[i] = notaccess_label[i].replace(alert_arr.LBL_NOT_ACCESSIBLE,"<font color='red'>"+alert_arr.LBL_NOT_ACCESSIBLE+"</font>"); // for Not accessible label.
		}
		/* Join items with item separator string (which must match string in DetailViewUI.tpl,
		* EditViewUtils.php and CRMEntity.php)!!
		*/
		getObj(dtlView).innerHTML = notaccess_label.join(", ");
	}else if(uitype == '19'){
		var desc = tagValue.replace(/(^|[\n ])([\w]+?:\/\/.*?[^ \"\n\r\t<]*)/g, "$1<a href=\"$2\" target=\"_blank\">$2</a>");
		desc = desc.replace(/(^|[\n ])((www|ftp)\.[\w\-]+\.[\w\-.\~]+(?:\/[^ \"\t\n\r<]*)?)/g, "$1<a href=\"http://$2\" target=\"_blank\">$2</a>");
		desc = desc.replace(/(^|[\n ])([a-z0-9&\-_.]+?)@([\w\-]+\.([\w\-\.]+\.)*[\w]+)/i, "$1<a href=\"mailto:$2@$3\">$2@$3</a>");
		desc = desc.replace(/,\"|\.\"|\)\"|\)\.\"|\.\)\"/, "\"");
		desc = desc.replace(/[\n\r]+/g, "<br>&nbsp;");
		getObj(dtlView).innerHTML = desc;
	}
	else
	{
		getObj(dtlView).innerHTML = tagValue.replace(/[\n\r]+/g, "<br>&nbsp;");
	}
	showHide(dtlView,editArea);  //show,hide
	itsonview=false;
}


//----------------------------------------END OF CHANGES MADE TO MAKE POTENTIALS HOVER EDITABLE

function showHideDetailViewVTCallContact(cId,sId,anchorImgId,entity_id,contactid,dateformat_vtcall,viewid)
{
	//function showHideDetailViewActivityDetails(sId,anchorImgId,entity_id,contactid,div, dateformat_vtcall)
	//	alert('{$MODULE}');
	//	alert(div);
	$('status').style.display = 'inline';
	oObj = eval(document.getElementById(sId));
	cObj = eval(document.getElementById(cId));
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		cObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		cObj.style.display = '';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}
	// Ezri April 25th ::: To fetch Potential hidden field and check if has related ids
	potName = "pot_"+entity_id;
	relatedPotentials = document.getElementById(potName).value;
	if (relatedPotentials != "") {
		hasPotentials = "true";
	} else {
		hasPotentials = "false";
	}
	//alert(hasPotentials+" -> "+relatedPotentials);
	// End of changes by Ezri

	// action=DetailView&module=Calendar&record=51&activity_mode=Events&parenttab=My Home Page
	divc = 'divc'+entity_id;
	url = "module=VTCall&action=VTCallAjax&file=VTCallContactDetailView&record="+contactid+"&eventid="+entity_id+"&hasPotentials="+hasPotentials+"&potentials="+relatedPotentials;
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(divc).innerHTML = response.responseText;
		$('status').style.display = 'none';
		ss.fixAllLinks();
		var div = 'divad'+entity_id;
		var sId = 'activitydetails'+entity_id;
		var anchorImgId = 'imgad'+entity_id;
		PreLoadActivityDetails(sId,anchorImgId,entity_id,contactid,div, dateformat_vtcall, viewid)
	}
	}
	);

	divid = 'div'+entity_id;
	//	url = "module=Calendar&action=CalendarAjax&file=VTCallDetailView&recordid="+entity_id;


	url = "module=VTCall&action=VTCallAjax&file=VTCallDetailView&record="+entity_id;


}




function showHideDetailViewVTCallAccounts(cId,sId,anchorImgId,entity_id,accountid,dateformat_vtcall,viewid)
{
	//alert(cId+" - "+sId+" - "+anchorImgId+" - "+entity_id+" - "+accountid+" - "+dateformat_vtcall+" - "+viewid);
	$('status').style.display = 'inline';
	oObj = eval(document.getElementById(sId));
	cObj = eval(document.getElementById(cId));
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		cObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		cObj.style.display = '';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}
	// Ezri April 25th ::: To fetch Potential hidden field and check if has related ids
	potName = "pot_"+entity_id;
	relatedPotentials = document.getElementById(potName).value;
	if (relatedPotentials != "") {
		hasPotentials = "true";
	} else {
		hasPotentials = "false";
	}
	//alert(hasPotentials+" -> "+relatedPotentials);
	// End of changes by Ezri

	// action=DetailView&module=Calendar&record=51&activity_mode=Events&parenttab=My Home Page
	divc = 'divc'+entity_id;
	url = "module=VTCall&action=VTCallAjax&file=VTCallAccountDetailView&record="+accountid+"&eventid="+entity_id+"&viewid="+viewid+"&hasPotentials="+hasPotentials+"&potentials="+relatedPotentials;
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(divc).innerHTML = response.responseText;
		$('status').style.display = 'none';
		ss.fixAllLinks();
		var div = 'divad'+entity_id;
		var sId = 'activitydetails'+entity_id;
		var anchorImgId = 'imgad'+entity_id;
		PreLoadActivityDetails(sId,anchorImgId,entity_id,accountid,div, dateformat_vtcall, viewid)
	}
	}
	);

	divid = 'div'+entity_id;
	//	url = "module=Calendar&action=CalendarAjax&file=VTCallDetailView&recordid="+entity_id;


	url = "module=VTCall&action=VTCallAjax&file=VTCallDetailView&record="+entity_id;


}
function showHideDetailViewVTCallLeads(cId,sId,anchorImgId,entity_id,leadid,dateformat_vtcall,viewid)
{
	$('status').style.display = 'inline';
	oObj = eval(document.getElementById(sId));
	cObj = eval(document.getElementById(cId));
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		cObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		cObj.style.display = '';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}
	// action=DetailView&module=Calendar&record=51&activity_mode=Events&parenttab=My Home Page
	divc = 'divc'+entity_id;
	url = "module=VTCall&action=VTCallAjax&file=VTCallLeadDetailView&record="+leadid+"&eventid="+entity_id;
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(divc).innerHTML = response.responseText;
		$('status').style.display = 'none';
		ss.fixAllLinks();
		var div = 'divad'+entity_id;
		var sId = 'activitydetails'+entity_id;
		var anchorImgId = 'imgad'+entity_id;
		PreLoadActivityDetails(sId,anchorImgId,entity_id,leadid,div, dateformat_vtcall,viewid)
	}
	}
	);

	divid = 'div'+entity_id;
	//	url = "module=Calendar&action=CalendarAjax&file=VTCallDetailView&recordid="+entity_id;


	url = "module=VTCall&action=VTCallAjax&file=VTCallDetailView&record="+entity_id;


}

function showHideDetailViewVTCallPotentials(cId,sId,anchorImgId,entity_id,accountid,dateformat_vtcall,viewid)

{

	//alert(cId+" - "+sId+" - "+anchorImgId+" - "+entity_id+" - "+accountid+" - "+dateformat_vtcall+" - "+viewid);

	$('status').style.display = 'inline';

	oObj = eval(document.getElementById(sId));

	cObj = eval(document.getElementById(cId));

	if(oObj.style.display == '')

	{

		oObj.style.display = 'none';

		cObj.style.display = 'none';

		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';

		eval(document.getElementById(anchorImgId)).alt = 'Hide';

		eval(document.getElementById(anchorImgId)).title = 'Hide';

	}

	else

	{

		oObj.style.display = '';

		cObj.style.display = '';

		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';

		eval(document.getElementById(anchorImgId)).alt = 'Display';

		eval(document.getElementById(anchorImgId)).title = 'Display';

	}
	//alert('before');
	// Ezri May 9th ::: To fetch Potential hidden fields and check if has related ids
	potAccName = "potAcc_"+entity_id;
	relatedAccsPotentials = document.getElementById(potAccName).value;
	if (relatedAccsPotentials != "") {
		hasAccsPotentials = "true";
	} else {
		hasAccsPotentials = "false";
	}

	potConName = "potCon_"+entity_id;
	relatedConsPotentials = document.getElementById(potConName).value;
	if (relatedConsPotentials != "") {
		hasConsPotentials = "true";
	} else {
		hasConsPotentials = "false";
	}
	//alert('hiddens');//(hasPotentials+" -> "+relatedPotentials);
	// End of changes by Ezri

	// action=DetailView&module=Calendar&record=51&activity_mode=Events&parenttab=My Home Page

	divc = 'divc'+entity_id;
	//alert('url to be formed');
	url = "module=VTCall&action=VTCallAjax&file=VTCallPotentialDetailView&record="+accountid+"&eventid="+entity_id+"&viewid="+viewid+"&hasAccs="+hasAccsPotentials+"&hasCons="+hasConsPotentials+"&relAccs="+relatedAccsPotentials+"&relCons="+relatedConsPotentials;
	//alert(url);
	new Ajax.Request(

	'index.php',

	{queue: {position: 'end', scope: 'command'},

	method: 'post',

	postBody: url,

	onComplete: function(response) {

		$(divc).innerHTML = response.responseText;

		$('status').style.display = 'none';

		ss.fixAllLinks();

		var div = 'divad'+entity_id;

		var sId = 'activitydetails'+entity_id;

		var anchorImgId = 'imgad'+entity_id;

		PreLoadActivityDetails(sId,anchorImgId,entity_id,accountid,div, dateformat_vtcall, viewid)

	}

	}

	);

	divid = 'div'+entity_id;

	//	url = "module=Calendar&action=CalendarAjax&file=VTCallDetailView&recordid="+entity_id;

	url = "module=VTCall&action=VTCallAjax&file=VTCallDetailView&record="+entity_id;
}

// Start tarang 17th May 2013
function showHideDetailViewVTCallQuotes(cId,sId,anchorImgId,entity_id,quoteid,dateformat_vtcall,viewid)
{
	$('status').style.display = 'inline';
	oObj = eval(document.getElementById(sId));
	cObj = eval(document.getElementById(cId));
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		cObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		cObj.style.display = '';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}
	// action=DetailView&module=Calendar&record=51&activity_mode=Events&parenttab=My Home Page
	divc = 'divc'+entity_id;
	url = "module=VTCall&action=VTCallAjax&file=VTCallQuoteDetailView&record="+quoteid+"&eventid="+entity_id;
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(divc).innerHTML = response.responseText;
		$('status').style.display = 'none';
		ss.fixAllLinks();
		var div = 'divad'+entity_id;
		var sId = 'activitydetails'+entity_id;
		var anchorImgId = 'imgad'+entity_id;
		var open_by_default = document.getElementById('open_by_default').value;
		if(open_by_default=='Contacts')
		showHideDetailViewQuotesContacts('', entity_id, quoteid, 'Quotes','relQCon'+entity_id,'imgQCon'+entity_id,'divQCon'+entity_id);
		else if(open_by_default=='Activities')
		showHideDetailViewActivitiesList('activitydetailsQ'+entity_id,'imgq'+entity_id,entity_id,quoteid,'divq'+entity_id,'');
		else if(open_by_default=='Activity History')
		showHideDetailViewActivityHistory('qActhistory'+entity_id,'imgcah'+entity_id,entity_id,quoteid,'qdiveh'+entity_id,'Quotes');
		else if(open_by_default=='Email History')
		showHideDetailViewEmailHistory('emailhistory'+entity_id,'imgeh'+entity_id, entity_id,quoteid,'diveh'+entity_id,'Quotes');
	}
	}
	);

	divid = 'div'+entity_id;
	//	url = "module=Calendar&action=CalendarAjax&file=VTCallDetailView&recordid="+entity_id;


	url = "module=VTCall&action=VTCallAjax&file=VTCallDetailView&record="+entity_id;


}
function showHideDetailViewVTCallSalesOrder(cId,sId,anchorImgId,entity_id,salesorderid,dateformat_vtcall,viewid)
{
	$('status').style.display = 'inline';
	oObj = eval(document.getElementById(sId));
	cObj = eval(document.getElementById(cId));
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		cObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		cObj.style.display = '';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}
	divc = 'divc'+entity_id;
	url = "module=VTCall&action=VTCallAjax&file=VTCallSalesOrderDetailView&record="+salesorderid+"&eventid="+entity_id;
	//alert(url);

	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(divc).innerHTML = response.responseText;
		$('status').style.display = 'none';
		ss.fixAllLinks();
		var div = 'divad'+entity_id;
		var sId = 'activitydetails'+entity_id;
		var anchorImgId = 'imgad'+entity_id;
		var open_by_default = document.getElementById('open_by_default').value;
		if(open_by_default=='Contacts')
		showHideDetailViewQuotesContacts('', entity_id, salesorderid, 'SalesOrder','relSOCon'+entity_id,'imgSOCon'+entity_id,'divSOCon'+entity_id);
		else if(open_by_default=='Activities')
		showHideDetailViewActivitiesList('activitydetailsso'+entity_id,'imgaso'+entity_id,entity_id,salesorderid,'divso'+entity_id,'');
		else if(open_by_default=='Activity History')
		showHideDetailViewActivityHistory('qActhistory'+entity_id,'imgcah'+entity_id,entity_id,salesorderid,'qdiveh'+entity_id,'SalesOrder');
		else if(open_by_default=='Email History')
		showHideDetailViewEmailHistory('emailhistory'+entity_id,'imgeh'+entity_id, entity_id,salesorderid,'diveh'+entity_id,'SalesOrder');
	}
	}

	);
	divid = 'div'+entity_id;
	url = "module=VTCall&action=VTCallAjax&file=VTCallDetailView&record="+entity_id;
}

function showHideDetailViewVTCallInvoice(cId,sId,anchorImgId,entity_id,invoiceid,dateformat_vtcall,viewid)
{
	$('status').style.display = 'inline';
	oObj = eval(document.getElementById(sId));
	cObj = eval(document.getElementById(cId));
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		cObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		cObj.style.display = '';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}
	divc = 'divc'+entity_id;
	url = "module=VTCall&action=VTCallAjax&file=VTCallInvoiceDetailView&record="+invoiceid+"&eventid="+entity_id;
	//alert(url);

	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(divc).innerHTML = response.responseText;
		$('status').style.display = 'none';
		ss.fixAllLinks();
		var div = 'divad'+entity_id;
		var sId = 'activitydetails'+entity_id;
		var anchorImgId = 'imgad'+entity_id;
		var open_by_default = document.getElementById('open_by_default').value;
		if(open_by_default=='Contacts')
		showHideDetailViewQuotesContacts('', entity_id, salesorderid, 'SalesOrder','relSOCon'+entity_id,'imgSOCon'+entity_id,'divSOCon'+entity_id);
		else if(open_by_default=='Activities')
		showHideDetailViewActivitiesList('activitydetailsso'+entity_id,'imgaso'+entity_id,entity_id,salesorderid,'divso'+entity_id,'');
		else if(open_by_default=='Activity History')
		showHideDetailViewActivityHistory('qActhistory'+entity_id,'imgcah'+entity_id,entity_id,salesorderid,'qdiveh'+entity_id,'SalesOrder');
		else if(open_by_default=='Email History')
		showHideDetailViewEmailHistory('emailhistory'+entity_id,'imgeh'+entity_id, entity_id,salesorderid,'diveh'+entity_id,'SalesOrder');
	}
	}

	);
	divid = 'div'+entity_id;
	url = "module=VTCall&action=VTCallAjax&file=VTCallDetailView&record="+entity_id;
}

function showHideDetailViewVTCall(cId,sId,anchorImgId,entity_id,recordid,dateformat_vtcall,viewid,module)
{
	$('status').style.display = 'inline';
	oObj = eval(document.getElementById(sId));
	cObj = eval(document.getElementById(cId));
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		cObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		cObj.style.display = '';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}
	
	divc = 'divc'+entity_id;
	url = "module=VTCall&action=VTCallAjax&file=VTCallEntityDetailView&rel_module="+module+"&record="+recordid+"&eventid="+entity_id;
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(divc).innerHTML = response.responseText;
		$('status').style.display = 'none';
//		ss.fixAllLinks();
		var div = 'divad'+entity_id;
		var sId = 'activitydetails'+entity_id;
		var anchorImgId = 'imgad'+entity_id;
		PreLoadActivityDetails(sId,anchorImgId,entity_id,recordid,div, dateformat_vtcall, viewid)
	}
	}
	);

}
function PreLoadActivityDetails(sId,anchorImgId,entity_id,contactid,div, dateformat_vtcall,viewid)
{
	/*
	oObj = eval(document.getElementById(sId));
	if(oObj.style.display == '')
	{
	oObj.style.display = 'none';
	eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
	eval(document.getElementById(anchorImgId)).alt = 'Hide';
	eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
	oObj.style.display = '';
	eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
	eval(document.getElementById(anchorImgId)).alt = 'Display';
	eval(document.getElementById(anchorImgId)).title = 'Display';
	}
	*/
	// action=DetailView&module=Calendar&record=51&activity_mode=Events&parenttab=My Home Page
	//	divid = div;
	//	url = "module=Calendar&action=CalendarAjax&file=VTCallDetailView&recordid="+entity_id;
	url = "module=VTCall&action=VTCallAjax&file=VTCallEditView&record="+entity_id+"&viewid="+viewid;
	//console.log(url);
	//	alert(dateformat_vtcall);
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		//alert(response.responseText);
		$(div).innerHTML = response.responseText;
		Calendar.setup ({
			inputField : "jscal_field_date_start"+entity_id, ifFormat : dateformat_vtcall, showsTime : false, button : "jscal_trigger_date_start"+entity_id, singleClick : true, step : 1, align : "tR"
		})
		//
		//				Calendar.setup ({
		//				inputField : "jscal_field_due_date", ifFormat : dateformat_vtcall, showsTime : false, button : "jscal_trigger_due_date", singleClick : true, step : 1, align : "tR"
		//				})

		Calendar.setup ({
			inputField : "jscal_field_followup_date"+entity_id, ifFormat : dateformat_vtcall, showsTime : false, button : "jscal_trigger_followup_date"+entity_id, singleClick : true, step : 1, align : "tR"
		})


		//ss.smoothScroll();

		//			alert(entity_id);
		//			smoothScroll(entity_id);

	}
	}
	);


}
function showHideDetailViewActivityDetails(sId,anchorImgId,entity_id,contactid,div, dateformat_vtcall)
{
	oObj = eval(document.getElementById(sId));
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}
	// action=DetailView&module=Calendar&record=51&activity_mode=Events&parenttab=My Home Page
	//	divid = div;
	//	url = "module=Calendar&action=CalendarAjax&file=VTCallDetailView&recordid="+entity_id;
	/*
	url = "module=Calendar&action=CalendarAjax&file=VTCallEditView&record="+entity_id;
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
	$(div).innerHTML = response.responseText;
	Calendar.setup ({
	inputField : "jscal_field_date_start", ifFormat : dateformat_vtcall, showsTime : false, button : "jscal_trigger_date_start", singleClick : true, step : 1, align : "tR"
	})

	Calendar.setup ({
	inputField : "jscal_field_due_date", ifFormat : dateformat_vtcall, showsTime : false, button : "jscal_trigger_due_date", singleClick : true, step : 1, align : "tR"
	})

	Calendar.setup ({
	inputField : "jscal_field_followup_date", ifFormat : dateformat_vtcall, showsTime : false, button : "jscal_trigger_followup_date", singleClick : true, step : 1, align : "tR"
	})


	//ss.smoothScroll();

	//			alert(entity_id);
	//			smoothScroll(entity_id);

	}
	}
	);

	*/
}



function showHideDetailViewEmailHistory(sId,anchorImgId,entity_id,contactid,div,module)
{
	oObj = eval(document.getElementById(sId));
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}

	if(module == 'Leads') {
		url = "module=VTCall&action=VTCallAjax&file=EmailHistory&leadid="+contactid+"&eventid="+entity_id;
	} else if(module == 'Accounts') {
		url = "module=VTCall&action=VTCallAjax&file=EmailHistory&accountid="+contactid+"&eventid="+entity_id;
	} else {
		url = "module=VTCall&action=VTCallAjax&file=EmailHistory&contactid="+contactid+"&eventid="+entity_id;
	}
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(div).innerHTML = response.responseText;
	}
	}
	);


}

function showHideDetailViewPendingActivities(sId,anchorImgId,entity_id,contactid,div,module)
{
	oObj = eval(document.getElementById(sId));
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}

	if(module == 'Leads') {
		url = "module=VTCall&action=VTCallAjax&file=ContactPendingActivities&leadid="+contactid;
	} else if(module == 'Accounts') {
		url = "module=VTCall&action=VTCallAjax&file=ContactPendingActivities&accountid="+contactid;
	} else if(module == 'Potentials') {
		url = "module=VTCall&action=VTCallAjax&file=ContactPendingActivities&potentialid="+contactid;
	} else {
		url = "module=VTCall&action=VTCallAjax&file=ContactPendingActivities&contactid="+contactid;
	}
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(div).innerHTML = response.responseText;
	}
	}
	);


}

function showHideDetailViewPotentials(potentials,entity_id,recordid,module){
	//alert(potentials);
	//alert(entity_id);
	//alert(recordid);
	//alert(module);
	trName = "relPotential"+entity_id;
	imgName = "imgPt"+entity_id;
	oObj = document.getElementById(trName);
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		eval(document.getElementById(imgName)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(imgName)).alt = 'Hide';
		eval(document.getElementById(imgName)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		eval(document.getElementById(imgName)).src = 'themes/images/activate.gif';
		eval(document.getElementById(imgName)).alt = 'Display';
		eval(document.getElementById(imgName)).title = 'Display';
	}
	// Ajax Call
	div = "divPt"+entity_id;
	url = "module=VTCall&action=VTCallAjax&file=LoadPotentials&recordid="+recordid+"&about_module="+module+"&potentials="+potentials;
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(div).innerHTML = response.responseText;
	}
	}
	);
}

// Ezri ::: May 10th 2012 ::: To Communicate new Accounts/Contacts headers with their detail View Processes at backend through Ajax

function showHideDetailViewPotentialContacts(relCons,entity_id,recordid,module){
	//alert(potentials);
	//alert(entity_id);
	//alert(recordid);
	//alert(module);
	trName = "relPotentialCons"+entity_id;
	imgName = "imgPtC"+entity_id;
	oObj = document.getElementById(trName);
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		eval(document.getElementById(imgName)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(imgName)).alt = 'Hide';
		eval(document.getElementById(imgName)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		eval(document.getElementById(imgName)).src = 'themes/images/activate.gif';
		eval(document.getElementById(imgName)).alt = 'Display';
		eval(document.getElementById(imgName)).title = 'Display';
	}
	// Ajax Call
	div = "divPtCons"+entity_id;
	url = "module=VTCall&action=VTCallAjax&file=LoadPotentialsContacts&recordid="+recordid+"&about_module="+module+"&contacts="+relCons;
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(div).innerHTML = response.responseText;
	}
	}
	);
}

function showHideDetailViewPotentialAccounts(relAccs,entity_id,recordid,module){
	//alert(potentials);
	//alert(entity_id);
	//alert(recordid);
	//alert(module);
	trName = "relPotentialAccs"+entity_id;
	imgName = "imgPtA"+entity_id;
	oObj = document.getElementById(trName);
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		eval(document.getElementById(imgName)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(imgName)).alt = 'Hide';
		eval(document.getElementById(imgName)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		eval(document.getElementById(imgName)).src = 'themes/images/activate.gif';
		eval(document.getElementById(imgName)).alt = 'Display';
		eval(document.getElementById(imgName)).title = 'Display';
	}
	// Ajax Call
	div = "divPtAccs"+entity_id;
	url = "module=VTCall&action=VTCallAjax&file=LoadPotentialsAccounts&recordid="+recordid+"&about_module="+module+"&accounts="+relAccs;
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(div).innerHTML = response.responseText;
	}
	}
	);
}

// End of changes by Ezri May 10th 2012---------------------------------------------------------------------------------------------

function showHideDetailViewActivityHistory(sId,anchorImgId,entity_id,contactid,div,module)
{
	oObj = eval(document.getElementById(sId));
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}

	if(module == 'Leads') {
		url = "module=VTCall&action=VTCallAjax&file=ActivityHistory&leadid="+contactid;
	} else if(module == 'Accounts') {
		url = "module=VTCall&action=VTCallAjax&file=ActivityHistory&accountid="+contactid;
	} else {
		url = "module=VTCall&action=VTCallAjax&file=ActivityHistory&contactid="+contactid;
	}
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(div).innerHTML = response.responseText;
	}
	}
	);


}

/***** Start Function to List Related Potentials ******************/
function showHideDetailViewPotentialsRelatedList(sId,anchorImgId,entity_id,contactid,div,module)
{
	oObj = eval(document.getElementById(sId));
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}

	if(module == 'Leads') {
		url = "module=VTCall&action=VTCallAjax&file=RelatedPotentialsList&leadid="+contactid;
	} else if(module == 'Accounts') {
		url = "module=VTCall&action=VTCallAjax&file=RelatedPotentialsList&accountid="+contactid;
	} else {
		url = "module=VTCall&action=VTCallAjax&file=RelatedPotentialsList&contactid="+contactid;
	}
	//url ="module=Contacts&action=ContactsAjax&file=DetailViewAjax&record=124&ajxaction=LOADRELATEDLIST&header=Potentials&relation_id=18&actions=add&&order_by=potentialname&sorder=ASC";
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(div).innerHTML = response.responseText;
	}
	}
	);
}

//showHideDetailViewQuotesRelatedList
function showHideDetailViewQuotesRelatedList(sId,anchorImgId,entity_id,contactid,div,module)
{
	oObj = eval(document.getElementById(sId));
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}

	if(module == 'Leads') {
		url = "module=VTCall&action=VTCallAjax&file=RelatedQuotesList&leadid="+contactid;
	} else if(module == 'Accounts') {
		url = "module=VTCall&action=VTCallAjax&file=RelatedQuotesList&accountid="+contactid;
	} else {
		url = "module=VTCall&action=VTCallAjax&file=RelatedQuotesList&contactid="+contactid;
	}
	//url ="module=Contacts&action=ContactsAjax&file=DetailViewAjax&record=124&ajxaction=LOADRELATEDLIST&header=Potentials&relation_id=18&actions=add&&order_by=potentialname&sorder=ASC";
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(div).innerHTML = response.responseText;
	}
	}
	);
}

//showHideDetailViewSORelatedList
function showHideDetailViewSORelatedList(sId,anchorImgId,entity_id,contactid,div,module)
{
	oObj = eval(document.getElementById(sId));
	if(oObj.style.display == '')
	{
		oObj.style.display = 'none';
		eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
	else
	{
		oObj.style.display = '';
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Display';
		eval(document.getElementById(anchorImgId)).title = 'Display';
	}

	if(module == 'Leads') {
		url = "module=VTCall&action=VTCallAjax&file=RelatedSalesOrderList&leadid="+contactid;
	} else if(module == 'Accounts') {
		url = "module=VTCall&action=VTCallAjax&file=RelatedSalesOrderList&accountid="+contactid;
	} else {
		url = "module=VTCall&action=VTCallAjax&file=RelatedSalesOrderList&contactid="+contactid;
	}
	//url ="module=Contacts&action=ContactsAjax&file=DetailViewAjax&record=124&ajxaction=LOADRELATEDLIST&header=Potentials&relation_id=18&actions=add&&order_by=potentialname&sorder=ASC";
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: url,
	onComplete: function(response) {
		$(div).innerHTML = response.responseText;
	}
	}
	);
}

function showHideDetailViewRelatedList(relCons,entity_id,recordid,relmodule,trName,imgName,div,relationId) {
    oObj = document.getElementById(trName);
    if(oObj.style.display == '')
    {
        oObj.style.display = 'none';
        eval(document.getElementById(imgName)).src =  'themes/images/inactivate.gif';
        eval(document.getElementById(imgName)).alt = 'Hide';
        eval(document.getElementById(imgName)).title = 'Hide';
    }
    else
    {
        oObj.style.display = '';
        eval(document.getElementById(imgName)).src = 'themes/images/activate.gif';
        eval(document.getElementById(imgName)).alt = 'Display';
        eval(document.getElementById(imgName)).title = 'Display';
    }
    // Ajax Call
    // div = "divQCon"+entity_id;
    url = "module=VTCall&action=VTCallAjax&file=LoadRelatedList&recordid="+recordid+"&relationId="+relationId+"&relmodule="+relmodule ;
    new Ajax.Request(
            'index.php',
            {queue: {position: 'end', scope: 'command'},
                method: 'post',
                postBody: url,
                onComplete: function(response) {
                    $(div).innerHTML = response.responseText;
                }
            }
    );
}

/******  End  Function to List Related Potentials *************************/
function getSelectedStatus(eventid)
{
	var chosen = document.getElementById('eventstatus'+eventid).value ;
	if(chosen == "Held")
	{
		//    		alert(document.getElementById('datetoday').value);
		now=new Date();
		hours=(now.getHours());
		mins=(now.getMinutes());
		//			alert(hours);
		var selectedFMT=document.getElementById('startfmt');
		var endFMT=document.getElementById('endfmt');

		//			var followFMT=document.getElementById('followup_startfmt');
		//
		//			for (i=0;i<followFMT.options.length;i++)
		//			{
		//				if(followFMT.options[i].value=='am'){
		//					followFMT.options[i].selected=true;
		//	        	}else{
		//	        		followFMT.options[i].selected=false;
		//	        	}
		//			}
		//
		//			var selectedColumnsObj=document.getElementById('followup_starthr');
		//			for (i=0;i<selectedColumnsObj.options.length;i++)
		//			{
		//				if(selectedColumnsObj.options[i].value=='09'){
		//					selectedColumnsObj.options[i].selected=true;
		//	        	}else{
		//	        		selectedColumnsObj.options[i].selected=false;
		//	        	}
		//			}
		//
		//			var selectedMinObj=document.getElementById('followup_startmin');
		//			for (i=0;i<selectedMinObj.options.length;i++)
		//			{
		//				if(selectedMinObj.options[i].value=='00'){
		//					selectedMinObj.options[i].selected=true;
		//	        	}else{
		//	        		selectedMinObj.options[i].selected=false;
		//	        	}
		//			}

		if(hours==0 || hours==1 || hours==3 || hours==4 || hours==5 || hours==6 || hours==7 || hours==8 || hours==9 || hours==10 || hours==11){
			//				for (i=0;i<endFMT.options.length;i++)
			//				{
			//					if(endFMT.options[i].value=='am'){
			//						endFMT.options[i].selected=true;
			//		        	}else{
			//		        		endFMT.options[i].selected=false;
			//		        	}
			//				}
			endFMT.value = 'am';
		} else {
			//				for (i=0;i<endFMT.options.length;i++)
			//				{
			//					if(endFMT.options[i].value=='pm'){
			//						endFMT.options[i].selected=true;
			//		        	}else{
			//		        		endFMT.options[i].selected=false;
			//		        	}
			//				}
			endFMT.value = 'pm';
		}

		if(mins%5<3){
			min=mins-(mins%5);
		}else{
			min=mins+5-(mins%5);
		}
		startmin=min-15;
		if(startmin<0){
			startmin=60+startmin;
			starthours=hours-1;
		}else{
			starthours=hours;
		}


		if(starthours==0 || starthours==1 || starthours==3 || starthours==4 || starthours==5 || starthours==6 || starthours==7 || starthours==8 || starthours==9 || starthours==10 || starthours==11){
			//				for (i=0;i<selectedFMT.options.length;i++)
			//				{
			//					if(selectedFMT.options[i].value=='am'){
			//						selectedFMT.options[i].selected=true;
			//		        	}else{
			//		        		selectedFMT.options[i].selected=false;
			//		        	}
			//				}
			selectedFMT.value = 'am';
		} else {
			//				for (i=0;i<selectedFMT.options.length;i++)
			//				{
			//					if(selectedFMT.options[i].value=='pm'){
			//						selectedFMT.options[i].selected=true;
			//		        	}else{
			//		        		selectedFMT.options[i].selected=false;
			//		        	}
			//				}
			selectedFMT.value = 'pm';
		}

		if(min<10){
			min='0'+min;
		}
		//  			alert(startmin);
		var selectedMinObj=document.getElementById('startmin');
		if(startmin !='0'){
			if(startmin<10){
				startmin='0'+startmin;
			}
			selectedMinObj.value = startmin;
		}
		//			for (i=0;i<selectedMinObj.options.length;i++)
		//			{
		//				if(selectedMinObj.options[i].value==startmin){
		//					selectedMinObj.options[i].selected=true;
		//	        	}else{
		//	        		selectedMinObj.options[i].selected=false;
		//	        	}
		//			}
		var selectedMinObj=document.getElementById('endmin');
		selectedMinObj.value = min;
		//			for (i=0;i<selectedMinObj.options.length;i++)
		//			{
		//				if(selectedMinObj.options[i].value==min){
		//					selectedMinObj.options[i].selected=true;
		//	        	}else{
		//	        		selectedMinObj.options[i].selected=false;
		//	        	}
		//			}
		//
		switch(starthours)
		{
			case 0:
			case 12 :
			{
				var selectedColumnsObj=document.getElementById('starthr');
				selectedColumnsObj.value = 12;
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='12'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 1:
			case 13:
			{
				var selectedColumnsObj=document.getElementById('starthr');
				selectedColumnsObj.value = '01';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='01'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 2:
			case 14:
			{
				var selectedColumnsObj=document.getElementById('starthr');
				selectedColumnsObj.value = '02';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='02'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 3:
			case 15:
			{
				var selectedColumnsObj=document.getElementById('starthr');
				selectedColumnsObj.value = '03';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='03'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 4:
			case 16:
			{
				var selectedColumnsObj=document.getElementById('starthr');
				selectedColumnsObj.value = '04';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='04'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 5:
			case 17:
			{
				var selectedColumnsObj=document.getElementById('starthr');
				selectedColumnsObj.value = '05';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='05'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 6:
			case 18:
			{
				var selectedColumnsObj=document.getElementById('starthr');
				selectedColumnsObj.value = '06';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='06'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 7:
			case 19:
			{
				var selectedColumnsObj=document.getElementById('starthr');
				selectedColumnsObj.value = '07';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='07'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 8:
			case 20:
			{
				var selectedColumnsObj=document.getElementById('starthr');
				selectedColumnsObj.value = '08';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='08'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 9:
			case 21:
			{
				var selectedColumnsObj=document.getElementById('starthr');
				selectedColumnsObj.value = '09';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='09'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 10:
			case 22:
			{
				var selectedColumnsObj=document.getElementById('starthr');
				selectedColumnsObj.value = '10';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='10'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 11:
			case 23:
			{
				var selectedColumnsObj=document.getElementById('starthr');
				selectedColumnsObj.value = '11';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='11'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			default:
		}

		// end hours
		switch(hours)
		{
			case 0:
			case 12 :
			{
				var selectedColumnsObj=document.getElementById('endhr');
				selectedColumnsObj.value = '12';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='12'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 1:
			case 13:
			{
				var selectedColumnsObj=document.getElementById('endhr');
				selectedColumnsObj.value = '01';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='01'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 2:
			case 14:
			{
				var selectedColumnsObj=document.getElementById('endhr');
				selectedColumnsObj.value = '02';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='02'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 3:
			case 15:
			{
				var selectedColumnsObj=document.getElementById('endhr');
				selectedColumnsObj.value = '03';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='03'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 4:
			case 16:
			{
				var selectedColumnsObj=document.getElementById('endhr');
				selectedColumnsObj.value = '04';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='04'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 5:
			case 17:
			{
				var selectedColumnsObj=document.getElementById('endhr');
				selectedColumnsObj.value = '05';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='05'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 6:
			case 18:
			{
				var selectedColumnsObj=document.getElementById('endhr');
				selectedColumnsObj.value = '06';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='06'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 7:
			case 19:
			{
				var selectedColumnsObj=document.getElementById('endhr');
				selectedColumnsObj.value = '07';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='07'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 8:
			case 20:
			{
				var selectedColumnsObj=document.getElementById('endhr');
				selectedColumnsObj.value = '08';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='08'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 9:
			case 21:
			{
				var selectedColumnsObj=document.getElementById('endhr');
				selectedColumnsObj.value = '09';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='09'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 10:
			case 22:
			{
				var selectedColumnsObj=document.getElementById('endhr');
				selectedColumnsObj.value = '10';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='10'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			case 11:
			case 23:
			{
				var selectedColumnsObj=document.getElementById('endhr');
				selectedColumnsObj.value = '11';
				//						for (i=0;i<selectedColumnsObj.options.length;i++)
				//						{
				//							if(selectedColumnsObj.options[i].value=='11'){
				//								selectedColumnsObj.options[i].selected=true;
				//				        	}else{
				//				        		selectedColumnsObj.options[i].selected=false;
				//				        	}
				//						}
			}
			break;
			default:
		}

		if(eventid!=''){
			document.getElementById('jscal_field_date_start'+eventid).value=document.getElementById('todaydate').value;
			document.getElementById('jscal_field_due_date'+eventid).value=document.getElementById('todaydate').value;
			document.getElementById('jscal_field_followup_date'+eventid).value=document.getElementById('nextdate').value;
		}else{
			document.getElementById('jscal_field_date_start').value=document.getElementById('todaydate').value;
			document.getElementById('jscal_field_due_date').value=document.getElementById('todaydate').value;
			document.getElementById('jscal_field_followup_date').value=document.getElementById('nextdate').value;
		}

		//            document.getElementById('date_table_firsttd').style.width = "33%";
		//            document.getElementById('date_table_secondtd').style.width = "33%";
		document.getElementById('date_table_thirdtd'+eventid).style.display = 'block';
	}
	else
	{
		//            document.getElementById('date_table_firsttd').style.width = "50%";
		//            document.getElementById('date_table_secondtd').style.width = "50%";
		document.getElementById('date_table_thirdtd'+eventid).style.display = 'none';
	}

}

function checkFUP(evid){
	var boxName = "followup_" + evid;
	var isChecked = document.getElementById(boxName).checked;
	//alert(isChecked);
	if(isChecked == true){
		//Update time_start hidden field
		var timeName = "time_start_" + evid;
		var tHrs = document.getElementById("followup_starthr").value;
		var tMins = document.getElementById("followup_startmin").value;
		var tFmt = document.getElementById("followup_startfmt").value;

		if (tFmt == "am") {
			if(parseInt(tHrs) == 12 || tHrs == '12'){
				tHrs = '00';
			}
		} else {
			if(parseInt(tHrs) == 12 || tHrs == '12'){
				tHrs = '12'
			} else {
				tHrs = parseInt(tHrs) + 12;
			}
		}
		//hiccup
		document.getElementById(timeName).value = tHrs + ':' + tMins;
		document.getElementById('followup_time_start').value = tHrs + ':' + tMins;
		document.getElementById('followup_time_end').value = tHrs + ':' + tMins;
		document.getElementById('followup_due_date').value = document.getElementById('jscal_field_followup_date'+evid).value;

		//alert(document.getElementById(timeName).value);
	}
	//	else{
	if(document.getElementById('postpone_calls').value== '1')
	{
		var selectedColumnsObj=document.getElementById('starthr');
		var starthours=selectedColumnsObj.value;
		var selectedMinObj=document.getElementById('startmin');
		var startmin=selectedMinObj.value;

		var dateName="date_start_"+evid;
		var date_startObj=document.getElementById('jscal_field_date_start'+evid);
		document.getElementById(dateName).value=date_startObj.value;


		var timeName = "time_start_" + evid;

		var tFmt = document.getElementById("startfmt").value;

		var dateval1=date_startObj.value.replace(/^\s+/g, '').replace(/\s+$/g, '');
		var dateelements1=splitDateVal(dateval1);
		var dd1=parseInt(dateelements1[0],10);
		var mm1=dateelements1[1];
		var yyyy1=dateelements1[2];
		var date1=new Date();

		date1.setYear(yyyy1);
		date1.setMonth(mm1-1,dd1+1);
		var datefmt=document.getElementById("dateformat_" + evid).value
		var tempdate = getdispDate(date1,datefmt);

		var hour=parseInt(starthours);
		var min=parseInt(startmin) + 15;
		if (tFmt == "am") {
			if(parseInt(starthours) == 12 || starthours == '12'){
				hour = '00';
			}
		} else {
			if(parseInt(starthours) == 12 || starthours == '12'){
				hour = '12'
			} else {
				hour = parseInt(starthours) + 12;
			}
		}
		//hiccup
		document.getElementById(timeName).value = hour + ':' + startmin

		var fmt=tFmt;
		var date=date_startObj.value;
		if(fmt == 'pm')
		{
			if(min >= 60){
				if(hour == 11){
					hour = 12;
					fmt = 'am';
					date = tempdate;
				}else if(hour == 12){
					hour = 13;
					fmt = 'pm';
				}else{
					hour = hour + 1;
				}
				min = min - 60;
			}else {
				min = min;
			}
		}else if(fmt == 'am')
		{
			if(min >= 60){
				if(hour == 11){
					hour = 12;fmt = 'pm';
				}else if(hour == 12){
					hour = 1;fmt = 'am';
				}else{
					hour = hour + 1;
				}
				min = min - 60;
			}else {
				min = min;
			}

		}
		//			alert(fmt);
		if(hour == 24)
		{
			hour = 0;
			date =  tempdate;
			fmt = 'am';
		}
		hour = _2digit(hour);
		min = _2digit(min);
		due_date="due_date_"+evid;
		time_end="time_end_"+evid;
		document.getElementById(due_date).value = date;
		document.getElementById(time_end).value = hour + ':' + min;
		if(hour>12){
			hour = hour - 12;
		}

		document.EditView.endhr.value = hour;
		document.EditView.endmin.value = min;
		document.EditView.endfmt.value = fmt;

	}
	//	}
}

/*
* Vince 06/21/2011 - Create popup to send mail with Gmail Compose
* Begin
*/
function showPopup(mylink, windowname)
{
	if (! window.focus)return true;
	var href;
	if (typeof(mylink) == 'string')
	href=mylink;
	else
	href=mylink.href;
	window.open(href, windowname, 'width=900,height=600,scrollbars=yes');
	return false;
}

/*
* Vince 06/21/2011 - Create popup to send mail with Gmail Compose
* End
*/

function currentYPosition() {
	if (self.pageYOffset)
	return self.pageYOffset;
	if (document.documentElement && document.documentElement.scrollTop)
	return document.documentElement.scrollTop;
	if (document.body.scrollTop)
	return document.body.scrollTop;
	return 0;
}
function elmYPosition(eID) {
	var elm  = document.getElementById(eID);
	var y    = elm.offsetTop;
	alert(y);
	var node = elm;
	while (node.offsetParent && node.offsetParent != document.body) {
		node = node.offsetParent;
		y   += node.offsetTop;
	} return y;
}
function smoothScroll(eID) {
	var startY   = currentYPosition();
	var stopY    = elmYPosition(eID);
	alert("eID = "+eID+" start = "+startY +" stop = "+stopY);
	var distance = stopY > startY ? stopY - startY : startY - stopY;
	if (distance < 100) {
		scrollTo(0, stopY); return;
	}
	var speed = Math.round(distance / 100);
	if (speed >= 20) speed = 20;
	var step  = Math.round(distance / 25);
	var leapY = stopY > startY ? startY + step : startY - step;
	var timer = 0;
	if (stopY > startY) {
		for ( var i=startY; i<stopY; i+=step ) {
			setTimeout("window.scrollTo(0, "+leapY+")", timer * speed);
			leapY += step; if (leapY > stopY) leapY = stopY; timer++;
		} return;
	}
	for ( var i=startY; i>stopY; i-=step ) {
		setTimeout("window.scrollTo(0, "+leapY+")", timer * speed);
		leapY -= step; if (leapY < stopY) leapY = stopY; timer++;
	}
}

/**
* Ezri April 2nd 2012 ::: To call Ajax refreshing results with new quick filter optionbox --- HICCUP
* @params: --NONE--
* @result: Refreshed List using filter if allowed by rules.
*/
function quickFilters(callingOption){
	currentFilter = document.getElementById("viewname");
	$("status").style.display="inline";
	var viewId = encodeURIComponent(currentFilter.options[currentFilter.options.selectedIndex].value);
	var viewName = encodeURIComponent(currentFilter.options[currentFilter.options.selectedIndex].text);

	var usertype1 = document.getElementById('usertype1');
	var usertype2 = document.getElementById('usertype2');
	var usertype='';
	if(usertype1.checked)
	usertype = usertype1.value;
	else if(usertype2.checked)
	usertype = usertype2.value;
	if(callingOption=='')
	callingOption = document.getElementById('callingOption').value;
	if(viewName.toLowerCase() == 'all'){
		new Ajax.Request(
		'index.php',
		{
			queue: { position: 'end', scope: 'command' },
			method: 'post',
			postBody: 'index.php?query=true&file=vt_call&module=VTCall&action=VTCallAjax&ajax=true&start=1&viewname='+viewId+'&seloption='+callingOption+'&usertype='+usertype,
			onComplete: function(response) {
				$("status").style.display="none";
				//result = response.responseText.split('&#&#&#');
				result = response.responseText;
				if(result == "~:|:~NOT_ALLOWED"){
					document.getElementById("radioMessages").innerHTML = "Filter 'All' must be selected to use these options.";
					document.getElementById("radioMessages").style.display = "block";
					return;
				}
				$("ListViewContents").innerHTML= result;
				$('basicsearchcolumns').innerHTML = '';
			}
		}
		);
	}else{
		var or = document.getElementsByName("dateRange1");
		for (var i = 0; i < or.length; i++) {
			or[i].checked = false;
		}
		document.getElementById("radioMessages").innerHTML = "Filter 'All' must be selected to use these options.";
		document.getElementById("radioMessages").style.display = "block";
		return;
	}
}
// End of changes by Ezri

</script>
{/literal}
<script language="javascript" type="text/javascript">
var typeofdata = new Array();
typeofdata['V'] = ['is','isn','bwt','ewt','cts','dcts'];
typeofdata['N'] = ['is','isn','lst','grt','lsteq','grteq'];
typeofdata['T'] = ['is','isn','lst','grt','lsteq','grteq'];
typeofdata['I'] = ['is','isn','lst','grt','lsteq','grteq'];
typeofdata['C'] = ['is','isn'];
typeofdata['DT'] = ['is','isn','lst','grt','lsteq','grteq'];
typeofdata['D'] = ['is','isn','lst','grt','lsteq','grteq'];
var fLabels = new Array();
fLabels['is'] = "{$APP.is}";
fLabels['isn'] = "{$APP.is_not}";
fLabels['bwt'] = "{$APP.begins_with}";
fLabels['ewt'] = "{$APP.ends_with}";
fLabels['cts'] = "{$APP.contains}";
fLabels['dcts'] = "{$APP.does_not_contains}";
fLabels['lst'] = "{$APP.less_than}";
fLabels['grt'] = "{$APP.greater_than}";
fLabels['lsteq'] = "{$APP.less_or_equal}";
fLabels['grteq'] = "{$APP.greater_or_equal}";
var noneLabel;
{literal}

function trimfValues(value)
{
	var string_array;
	string_array = value.split(":");
	return string_array[4];
}

function updatefOptions(sel, opSelName) {
	var selObj = document.getElementById(opSelName);
	var fieldtype = null ;

	var currOption = selObj.options[selObj.selectedIndex];
	var currField = sel.options[sel.selectedIndex];

	var fld = currField.value.split(":");
	var tod = fld[4];
	/*  if(fld[4] == 'D' || (fld[4] == 'T' && fld[1] != 'time_start' && fld[1] != 'time_end') || fld[4] == 'DT')
	{
	$("and"+sel.id).innerHTML =  "";
	if(sel.id != "fcol5")
	$("and"+sel.id).innerHTML =  "<em old='(yyyy-mm-dd)'>("+$("user_dateformat").value+")</em>&nbsp;"+alert_arr.LBL_AND;
	else
	$("and"+sel.id).innerHTML =  "<em old='(yyyy-mm-dd)'>("+$("user_dateformat").value+")</em>&nbsp;";
	}
	else {
	$("and"+sel.id).innerHTML =  "";
	if(sel.id != "fcol5")
	$("and"+sel.id).innerHTML =  "&nbsp;"+alert_arr.LBL_AND;
	else
	$("and"+sel.id).innerHTML =  "&nbsp;";
	}
	*/
	if(currField.value != null && currField.value.length != 0)
	{
		fieldtype = trimfValues(currField.value);
		fieldtype = fieldtype.replace(/\\'/g,'');
		ops = typeofdata[fieldtype];
		var off = 0;
		if(ops != null)
		{

			var nMaxVal = selObj.length;
			for(nLoop = 0; nLoop < nMaxVal; nLoop++)
			{
				selObj.remove(0);
			}
			/*	selObj.options[0] = new Option ('None', '');
			if (currField.value == '') {
			selObj.options[0].selected = true;
			}*/
			for (var i = 0; i < ops.length; i++)
			{
				var label = fLabels[ops[i]];
				if (label == null) continue;
				var option = new Option (fLabels[ops[i]], ops[i]);
				selObj.options[i] = option;
				if (currOption != null && currOption.value == option.value)
				{
					option.selected = true;
				}
			}
		}
	}else
	{
		var nMaxVal = selObj.length;
		for(nLoop = 0; nLoop < nMaxVal; nLoop++)
		{
			selObj.remove(0);
		}
		selObj.options[0] = new Option ('None', '');
		if (currField.value == '') {
			selObj.options[0].selected = true;
		}
	}

}
{/literal}
</script>

<script language="javascript">
function checkgroup()
{ldelim}

if(document.change_ownerform_name.user_lead_owner[1].checked)
{ldelim}
document.change_ownerform_name.lead_group_owner.style.display = "block";
document.change_ownerform_name.lead_owner.style.display = "none";
{rdelim}
else
{ldelim}
document.change_ownerform_name.lead_owner.style.display = "block";
document.change_ownerform_name.lead_group_owner.style.display = "none";
{rdelim}

{rdelim}
function callSearch(searchtype)
{ldelim}
for(i=1;i<=26;i++)
{ldelim}
var data_td_id = 'alpha_'+ eval(i);
getObj(data_td_id).className = 'searchAlph';
{rdelim}
gPopupAlphaSearchUrl = '';
search_fld_val= document.basicSearch.search_field[document.basicSearch.search_field.selectedIndex].value;
search_txt_val=encodeURIComponent(document.basicSearch.search_text.value);
var urlstring = '';
if(searchtype == 'Basic')
{ldelim}
urlstring = 'search_field='+search_fld_val+'&searchtype=BasicSearch&search_text='+search_txt_val+'&';
{rdelim}
else if(searchtype == 'Advanced')
{ldelim}
var no_rows = document.basicSearch.search_cnt.value;
for(jj = 0 ; jj < no_rows; jj++)
{ldelim}
var sfld_name = getObj("Fields"+jj);
var scndn_name= getObj("Condition"+jj);
var srchvalue_name = getObj("Srch_value"+jj);
urlstring = urlstring+'Fields'+jj+'='+sfld_name[sfld_name.selectedIndex].value+'&';
urlstring = urlstring+'Condition'+jj+'='+scndn_name[scndn_name.selectedIndex].value+'&';
urlstring = urlstring+'Srch_value'+jj+'='+encodeURIComponent(srchvalue_name.value)+'&';

{rdelim}
for (i=0;i<getObj("matchtype").length;i++){ldelim}
if (getObj("matchtype")[i].checked==true)
urlstring += 'matchtype='+getObj("matchtype")[i].value+'&';
{rdelim}
urlstring += 'search_cnt='+no_rows+'&';
urlstring += 'searchtype=advance&'
{rdelim}
$("status").style.display="inline";
new Ajax.Request(
'index.php',
{ldelim}queue: {ldelim}position: 'end', scope: 'command'{rdelim},
method: 'post',
postBody:urlstring +'query=true&file=ListView&module={$MODULE}&action={$MODULE}Ajax&ajax=true&search=true',
onComplete: function(response) {ldelim}
$("status").style.display="none";
result = response.responseText.split('&#&#&#');
$("ListViewContents").innerHTML= result[2];
if(result[1] != '')
alert(result[1]);
$('basicsearchcolumns').innerHTML = '';
{rdelim}
{rdelim}
);
return false;

{rdelim}
function alphabetic(module,url,dataid)
{ldelim}
for(i=1;i<=26;i++)
{ldelim}
var data_td_id = 'alpha_'+ eval(i);
getObj(data_td_id).className = 'searchAlph';

{rdelim}
getObj(dataid).className = 'searchAlphselected';
$("status").style.display="inline";
new Ajax.Request(
'index.php',
{ldelim}queue: {ldelim}position: 'end', scope: 'command'{rdelim},
method: 'post',
postBody: 'module='+module+'&action='+module+'Ajax&file=ListView&ajax=true&search=true&'+url,
onComplete: function(response) {ldelim}
$("status").style.display="none";
result = response.responseText.split('&#&#&#');
$("ListViewContents").innerHTML= result[2];
if(result[1] != '')
alert(result[1]);
$('basicsearchcolumns').innerHTML = '';
{rdelim}
{rdelim}
);
{rdelim}
/*
** Tarang 20130509 task: 13675
** Added Activity Start/End Date by 1 business day
*/
{literal}
function updateActivityDate(eventid){
	currentFilter = document.getElementById("viewname");
	$("status").style.display="inline";
	var viewId = encodeURIComponent(currentFilter.options[currentFilter.options.selectedIndex].value);
	var viewName = encodeURIComponent(currentFilter.options[currentFilter.options.selectedIndex].text);

	var usertype1 = document.getElementById('usertype1');
	var usertype2 = document.getElementById('usertype2');
	var usertype='';
	if(usertype1.checked)
	usertype = usertype1.value;
	else if(usertype2.checked)
	usertype = usertype2.value;
	//if(callingOption=='')
	callingOption = document.getElementById('callingOption').value;
	var radios = document.getElementsByName("dateRange1");
	for (var i = 0; i < radios.length; i++) {
		if (radios[i].checked) {
			callingOption = radios[i].value;
			break;
		}
	}

	new Ajax.Request(
	'index.php',
	{
		queue: { position: 'end', scope: 'command' },
		method: 'post',
		postBody: 'index.php?query=true&file=vt_call&module=VTCall&action=VTCallAjax&ajax=true&start=1&viewname='+viewId+'&seloption='+callingOption+'&usertype='+usertype+"&eventid="+eventid,
		onComplete: function(response) {
			$("status").style.display="none";
			//result = response.responseText.split('&#&#&#');
			result = response.responseText;
			if(result == "~:|:~NOT_ALLOWED"){
				document.getElementById("radioMessages").innerHTML = "Filter 'All' must be selected to use these options.";
				document.getElementById("radioMessages").style.display = "block";
				return;
			}
			$("ListViewContents").innerHTML= result;
			$('basicsearchcolumns').innerHTML = '';
		}
	}
	);
}
{/literal}
</script>

<!-- Ezri ::: 09-05-2012 ::: to add validation block needed for on hover edit on potentials -->
<script language="javascript">
var fieldname = new Array({$VALIDATION_DATA_FIELDNAME});
var fieldlabel = new Array({$VALIDATION_DATA_FIELDLABEL});
var fielddatatype = new Array({$VALIDATION_DATA_FIELDDATATYPE});
</script>
<!-- End of changes by Ezri -->

<!-- Ravish, Code for outlook integration., 10/28/2010 -->
{if $OUTLOOKPOPUP neq ''}
    <script type = 'text/javascript'>
    var id = '{$OUTLOOKPOPUP}';
    var data = "index.php?module=Calendar&action=CalendarAjax&file=AjaxOutlook&ajax=true";
    data += "&recordid="+id;
    window.open(data);
    </script>
{/if}

<!-- Ravish, End code., 10/28/2010-->
		{*include file='Buttons_List.tpl'*}
<br>
<td style="padding-left:10px;padding-right:50px" class="moduleName" nowrap><span style="color: #33338C; font-family: Arial,Helvetica,sans-serif; font-size: 16px; font-weight: bold;">&nbsp;&nbsp;My Home Page > </span> <a class="hdrLink" href="index.php?action=index&module=VTCall&parenttab={$CATEGORY}">VT Call</a></td>
                                <div id="searchingUI" style="display:none;">
                                        <table border=0 cellspacing=0 cellpadding=0 width=100%>
                                        <tr>
                                                <td align=center>
                                                <img src="{'searching.gif'|@vtiger_imageurl:$THEME}" alt="{$APP.LBL_SEARCHING}"  title="{$APP.LBL_SEARCHING}">
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

{*<!-- Contents -->*}
<table border=0 cellspacing=0 cellpadding=0 width=98% align=center>
     <tr>
        <td valign=top><img src="{'showPanelTopLeft.gif'|@vtiger_imageurl:$THEME}"></td>

	<td class="showPanelBg" valign="top" width=100% style="padding:10px;">
	 <!-- SIMPLE SEARCH -->
<div id="searchAcc" style="z-index:1;display:none;position:relative;">
<form name="basicSearch" method="post" action="index.php" onSubmit="return callSearch('Basic');">
<table width="80%" cellpadding="5" cellspacing="0"  class="searchUIBasic small" align="center" border=0>
	<tr>
		<td class="searchUIName small" nowrap align="left">
		<span class="moduleName">{$APP.LBL_SEARCH}</span><br><span class="small"><a href="#" onClick="fnhide('searchAcc');show('advSearch');updatefOptions(document.getElementById('Fields0'), 'Condition0');document.basicSearch.searchtype.value='advance';">{$APP.LBL_GO_TO} {$APP.LNK_ADVANCED_SEARCH}</a></span>
		<!-- <img src="{'basicSearchLens.gif'|@vtiger_imageurl:$THEME}" align="absmiddle" alt="{$APP.LNK_BASIC_SEARCH}" title="{$APP.LNK_BASIC_SEARCH}" border=0>&nbsp;&nbsp;-->
		</td>
		<td class="small" nowrap align=right><b>{$APP.LBL_SEARCH_FOR}</b></td>
		<td class="small"><input type="text"  class="txtBox" style="width:120px" name="search_text"></td>
		<td class="small" nowrap><b>{$APP.LBL_IN}</b>&nbsp;</td>
		<td class="small" nowrap>
			<div id="basicsearchcolumns_real">
                        <select name="search_field" id="bas_searchfield" class="txtBox" style="width:150px">
                         {html_options  options=$SEARCHLISTHEADER }
                        </select>
                        </div>
                        <input type="hidden" name="searchtype" value="BasicSearch">
                        <input type="hidden" name="module" value="{$MODULE}">
                        <input type="hidden" name="parenttab" value="{$CATEGORY}">
			<input type="hidden" name="action" value="index">
                        <input type="hidden" name="query" value="true">
			<input type="hidden" name="search_cnt">
		</td>
		<td class="small" nowrap width=40% >
			  <input name="submit" type="button" class="crmbutton small create" onClick="callSearch('Basic');" value=" {$APP.LBL_SEARCH_NOW_BUTTON} ">&nbsp;

		</td>
		<td class="small" valign="top" onMouseOver="this.style.cursor='pointer';" onClick="moveMe('searchAcc');searchshowhide('searchAcc','advSearch')">[x]</td>
	</tr>
	<tr>
		<td colspan="7" align="center" class="small">
			<table border=0 cellspacing=0 cellpadding=0 width=100%>
				<tr>
                                                {$ALPHABETICAL}
                                </tr>
                        </table>
		</td>
	</tr>
</table>
</form>
</div>
<!-- ADVANCED SEARCH -->
<div id="advSearch" style="display:none;">
<form name="advSearch" method="post" action="index.php" onSubmit="totalnoofrows();return callSearch('Advanced');">
		<table  cellspacing=0 cellpadding=5 width=80% class="searchUIAdv1 small" align="center" border=0>
			<tr>
					<td class="searchUIName small" nowrap align="left"><span class="moduleName">{$APP.LBL_SEARCH}</span><br><span class="small"><a href="#" onClick="show('searchAcc');fnhide('advSearch')">{$APP.LBL_GO_TO} {$APP.LNK_BASIC_SEARCH}</a></span></td>
					<td nowrap class="small"><b><input name="matchtype" type="radio" value="all">&nbsp;{$APP.LBL_ADV_SEARCH_MSG_ALL}</b></td>
					<td nowrap width=60% class="small" ><b><input name="matchtype" type="radio" value="any" checked>&nbsp;{$APP.LBL_ADV_SEARCH_MSG_ANY}</b></td>
					<td class="small" valign="top" onMouseOver="this.style.cursor='pointer';" onClick="moveMe('searchAcc');searchshowhide('searchAcc','advSearch')">[x]</td>
			</tr>
		</table>
		<table cellpadding="2" cellspacing="0" width="80%" align="center" class="searchUIAdv2 small" border=0>
			<tr>
				<td align="center" class="small" width=90%>
				<div id="fixed" style="position:relative;width:95%;height:80px;padding:0px; overflow:auto;border:1px solid #CCCCCC;background-color:#ffffff" class="small">
					<table border=0 width=95%>
					<tr>
					<td align=left>
						<table width="100%"  border="0" cellpadding="2" cellspacing="0" id="adSrc" align="left">
						<tr  >
							<td width="31%"><select name="Fields0" id="Fields0" class="detailedViewTextBox" onChange="updatefOptions(this, 'Condition0')">{$FIELDNAMES}</select>
							</td>
							<td width="32%"><select name="Condition0" id="Condition0" class="detailedViewTextBox">{$CRITERIA}</select>
							</td>
							<td width="32%"><input type="text" name="Srch_value0" class="detailedViewTextBox"></td>
						</tr>
						</table>
					</td>
					</tr>
				</table>
				</div>
				</td>
			</tr>
		</table>

		<table border=0 cellspacing=0 cellpadding=5 width=80% class="searchUIAdv3 small" align="center">
		<tr>
			<td align=left width=40%>
						<input type="button" name="more" value=" {$APP.LBL_MORE} " onClick="fnAddSrch('{$FIELDNAMES}','{$CRITERIA}')" class="crmbuttom small edit" >
						<input name="button" type="button" value=" {$APP.LBL_FEWER_BUTTON} " onClick="delRow()" class="crmbuttom small edit" >
			</td>
			<td align=left class="small"><input type="button" class="crmbutton small create" value=" {$APP.LBL_SEARCH_NOW_BUTTON} " onClick="totalnoofrows();callSearch('Advanced');">
			</td>
		</tr>
	</table>
</form>
</div>
{*<!-- Searching UI -->*}


<div class="small" style="padding: 10px;">
	<table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td>
				<table class="small" border="0" cellpadding="3" cellspacing="0" width="100%">
				<tr>
					<!-- NOT REQUIRED
					<td class="dvtTabCache" style="width: 10px;" nowrap="nowrap">&nbsp;</td>
					<td class="dvtUnSelectedCell" align="center" nowrap="nowrap">
						<a href="index.php?action=index&module=Calendar&parenttab={$CATEGORY}">{$APP.Calendar}</a>
					</td>
					<td class="dvtTabCache" style="width: 10px;">&nbsp;</td>
					<td class="dvtUnSelectedCell" align="center" nowrap="nowrap">
						<a href="index.php?action=ListView&module=Calendar&parenttab={$CATEGORY}">{$MOD.LBL_ALL_EVENTS_TODOS}</a>
                    			</td>
					-->
					<td class="dvtTabCache" style="width: 10px;" nowrap="nowrap">&nbsp;</td>
					<td class="dvtSelectedCell" align="center" nowrap="nowrap">VT Call</td>
					<td class="dvtTabCache" style="width: 10px;">&nbsp;</td>
					<td class="dvtTabCache"  align="right" width=100%>
					<input type="radio" name="usertype" id="usertype1" value="mine" onclick="quickFilters('')" {if isset($mineonly)}checked{/if}> {$MOD.LBL_MINE_ONLY}&nbsp;
					<input type="radio" name="usertype" id="usertype2" value="all"onclick="quickFilters('')" {if isset($allusers)}checked{/if}> {$MOD.LBL_ALL_USERS}&nbsp;
{*<!--							{include file='modules/Calendar/LoadShowCalendar.tpl'}-->*}

					</td>
                                        {if $VTPANEL eq "on"}
                                        <td><a href="index.php?module=VTCall&action=vt_callPanel"><input type="button" value="{$MOD.LBL_SELECT_EVENT_TYPE}" class="crmbutton small edit"></a></td>
                                        {/if}
					<td class="dvtTabCache" style="width: 10px;">&nbsp;</td>

				</tr>
                                </table>
                        </td>
                </tr>
		<tr>
			<td align="left" valign="top">
				<table class="dvtContentSpace" border="0" cellpadding="3" cellspacing="0" width="100%">
					<tr>
						<td align="left">
							<!-- content cache -->
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
								<tr>
									<td style="padding: 10px;">

	   <!-- PUBLIC CONTENTS STARTS-->
	   <div id="ListViewContents" class="small" style="width:100%;position:relative;">
     <!--<form name="massdelete" method="POST">-->
    <!--
            /*
            *
            * TRAVIS@BORU 20100527
            * Add these lines to get value for Filter data by "History, Pending or All"
            * 999_059
            *
            */
    -->
    <input type="hidden" id="showStatus" name="showStatus" value="{$OPTIONSTARTUS}" />
    <input type="hidden" id="userget" name="userget" value="{$USERLIST}" />
    <!--
            /*
            *
            * CODE END
            *
            */
    -->
     <input name='search_url' id="search_url" type='hidden' value='{$SEARCH_URL}'>
     <input name="idlist" id="idlist" type="hidden">
     <input name="change_owner" type="hidden">
     <input name="change_status" type="hidden">
     <input name="allids" type="hidden" value="{$ALLIDS}">
     <input name="selectedboxes" id="selectedboxes" type="hidden" value="{$SELECTEDIDS}">
     <input name="allselectedboxes" id="allselectedboxes" type="hidden" value="{$ALLSELECTEDIDS}">
     <input name="current_page_boxes" id="current_page_boxes" type="hidden" value="{$CURRENT_PAGE_BOXES}">
               <table border=0 cellspacing=1 cellpadding=0 width=100% class="lvtBg">

			 <!-- Tarang 13/09/2012 -->
			 <!--<tr>
			<td nowrap width="30%" align="center">
			<table border=0 cellspacing=0 cellpadding=0 class="small" style="width:50px;background-color:#CCC;border:1px solid #333;padding:5px;">
				<tr>
						<td width="20%"><input type="radio" name="usertype" id="usertype1" value="mine" onclick="quickFilters('')" {if isset($mineonly)}checked{/if}> {$MOD.LBL_MINE_ONLY}&nbsp;</td>
						<td width="20%"><input type="radio" name="usertype" id="usertype2" value="all"onclick="quickFilters('')" {if isset($allusers)}checked{/if}> {$MOD.LBL_ALL_USERS}&nbsp;</td>
			   </tr>
			</table>
			 </td>
			 </tr>-->
		<!-- End Tarang  13/09/2012 -->
	            <tr >
		      <td>
		         <table border=0 cellspacing=0 cellpadding=2 width=100% class="small">
			      <tr>
				 <td style="padding-right:20px" nowrap>
                                 {foreach key=button_check item=button_label from=$BUTTONS}
                                        {if $button_check eq 'del'}
                                             <input class="crmbutton small delete" type="button" value="{$button_label}" onClick="return massDelete('{$MODULE}')"/>
                                        {elseif $button_check eq 's_mail'}
                                             <input class="crmbutton small edit" type="button" value="{$button_label}" onClick="return eMail('{$MODULE}',this);"/>
                                        {elseif $button_check eq 's_cmail'}
                                             <input class="crmbutton small edit" type="submit" value="{$button_label}" onClick="return massMail('{$MODULE}')"/>
                                        {elseif $button_check eq 'c_status'}
                                             <input class="crmbutton small edit" type="button" value="{$button_label}" onClick="return change(this,'changestatus')"/>
					{elseif $button_check eq 'c_owner'}
						{if $MODULE neq 'Documents' && $MODULE neq 'Products' && $MODULE neq 'Faq' && $MODULE neq 'Vendors' && $MODULE neq 'PriceBooks'}
						     <input class="crmbutton small edit" type="button" value="{$button_label}" onClick="return change(this,'changeowner')"/>
                                                {/if}
                                        {/if}

                                 {/foreach}
                    </td>
					<td class="small" nowrap>
						{$recordListRange}
						{if $LISTENTITY|@count > 0}
							of <input class="crmbutton small create" type="button" value="Total" onClick="get_total_vtcall(this,'{$TOTAL}')"/>
							<select onChange="changeListViewVTCall(this,'{$MODULE}','{$CATEGORY}')" class="small" id="viewnum" name="viewnum">
								<option value="25" {if $VIEWNUM eq '25'} selected="selected" {/if}>25</option>
								<option value="50" {if $VIEWNUM eq '50'} selected="selected" {/if}>50</option>
								<option value="75" {if $VIEWNUM eq '75'} selected="selected" {/if}>75</option>
								<option value="100" {if $VIEWNUM eq '100'} selected="selected" {/if}>100</option>
							</select>
						{/if}
					</td>
					<!-- Page Navigation -->
					<td nowrap width="30%" align="center">
						<table border=0 cellspacing=0 cellpadding=0 class="small">
							<tr>{$NAVIGATION}</tr>
						</table>
	                		</td>
					<!-- Ezri April 2nd 2012, ::: To Print New Options to Filter data --- HICCUP-->
                                        <td>
                                        	{if $RF_COUNT > 0}
                                                <table border=0 cellspacing=0 cellpadding=0 class="small" style="width:{$RF_TABLE_WIDTH}px;background-color:#CCC;border:1px solid #333;padding:5px;">
                                                        <tr>
														<input type="hidden" name="callingOption" id="callingOption" value="all_dates"  />
														<input type="hidden" name="selectedOption" id="selectedOption" value="{$selectedOption}"  />
														{if $RADIO_FILTER.all_dates eq 'yes'}
                                                                <td align="center" width="{$RF_TD_WIDTH}px"><input type="radio" name="dateRange1" id="dateRange1" value="all_dates" onclick="quickFilters('all_dates')" {if isset($optall)}checked{/if}><br>{$MOD.LBL_ALL_DATES}</td>
                                                        {/if}
                                                        {if $RADIO_FILTER.today eq 'yes'}
                                                                <td align="center" width="{$RF_TD_WIDTH}px"><input type="radio" name="dateRange1" id="dateRange2" value="today"onclick="quickFilters('today')" {if isset($opttoday)}checked{/if}><br>{$MOD.LBL_ALL_TODAY}</td>
                                                        {/if}
														{if $RADIO_FILTER.yesterday eq 'yes'}
                                                                <td align="center" width="{$RF_TD_WIDTH}px"><input type="radio" name="dateRange1" id="dateRange3" value="yesterday"onclick="quickFilters('yesterday')" {if isset($optyesterday)}checked{/if}><br>{$MOD.LBL_ALL_YESTERDAY}</td>
                                                        {/if}
                                                        {if $RADIO_FILTER.today_and_prior eq 'yes'}
                                                                <td align="center" width="100px"><input type="radio" name="dateRange1" id="dateRange4" value="today_and_prior"onclick="quickFilters('today_and_prior')" {if isset($opttoday_and_prior)}checked{/if}><br>Today And Prior</td>
                                                        {/if}

                                                        {if $RADIO_FILTER.last_7_days eq 'yes'}
                                                                <td align="center" width="{$RF_TD_WIDTH}px"><input type="radio" name="dateRange1" id="dateRange5" value="last_7_days"onclick="quickFilters('last_7_days')" {if isset($optlast_7_days)}checked{/if}><br>Last 7 Days</td>
                                                        {/if}
                                                        {if $RADIO_FILTER.tomorrow eq 'yes'}
                                                                <td align="center" width="{$RF_TD_WIDTH}px"><input type="radio" name="dateRange1" id="dateRange6" value="tomorrow" onclick="quickFilters('tomorrow')" {if isset($opttomorrow)}checked{/if}><br>{$MOD.LBL_ALL_TOMORROW}</td>
                                                    	{/if}
														{if $RADIO_FILTER.this_week eq 'yes'}
                                                                <td align="center" width="{$RF_TD_WIDTH}px"><input type="radio" name="dateRange1" id="dateRange7" value="thisweek" onclick="quickFilters('thisweek')" {if isset($optthisweek)}checked{/if}><br>{$MOD.LBL_ALL_THIS_WEEK}</td>
                                                        {/if}
                                                        {if $RADIO_FILTER.next_week eq 'yes'}
                                                                <td align="center" width="{$RF_TD_WIDTH}px"><input type="radio" name="dateRange1" id="dateRange8" value="nextweek" onclick="quickFilters('nextweek')" {if isset($optnextweek)}checked{/if}><br>{$MOD.LBL_ALL_NEXT_WEEK}</td>
                                                        {/if}
                                                        </tr>
														<tr><td colspan="5" align="center">
															<div id="radioMessages" style='display:none; width:100%;text-align:center;color:red;font-weight:bold'></div>
														</td></tr>
                                                </table>
                                            {/if}
											<span id="vtbusy_info" style="display:none;" valign="bottom"><img src="{'vtbusy.gif'|@vtiger_imageurl:$THEME}" border="0"></span>
                                        </td>
                                        <!-- End of changes by Ezri -->
<!--
/*
*
* THUY@BORU 20110221
* Improved Call List
*
*/
-->

				 <td width="100%" align="right">
				   <table border=0 cellspacing=0 cellpadding=0 class="small">
					<tr>
						<td>{$APP.LBL_VIEW}</td>
						<td style="padding-left:5px;padding-right:5px">
                            <SELECT NAME="viewname" id="viewname" class="small" onChange="showDefaultCustomViewVTCall(this,'{$MODULE}','{$CATEGORY}')">{$CUSTOMVIEW_OPTION}</SELECT>
                        </td>
                        <td>
                            {if $ALL eq 'All'}
								<a href="index.php?module=VTCall&action=EditCustomView&parenttab={$CATEGORY}">{$APP.LNK_CV_CREATEVIEW}</a>
								<span class="small">|</span>
								<span class="small" disabled>{$APP.LNK_CV_EDIT}</span>
								<span class="small">|</span>
                            	<span class="small" disabled>{$APP.LNK_CV_DELETE}</span></td>
						    {else}
								<a href="index.php?module=VTCall&action=EditCustomView&parenttab={$CATEGORY}">{$APP.LNK_CV_CREATEVIEW}</a>
								<span class="small">|</span>
                                <a href="index.php?module=VTCall&action=EditCustomView&record={$VIEWID}&parenttab={$CATEGORY}">{$APP.LNK_CV_EDIT}</a>
                                <span class="small">|</span>
								<a href="javascript:confirmdelete('index.php?module={$MODULE}&action=DeleteCustomView&record={$VIEWID}&parenttab={$CATEGORY}')">{$APP.LNK_CV_DELETE}</a>
						    {/if}
							{if $CUSTOMVIEW_PERMISSION.ChangedStatus neq '' && $CUSTOMVIEW_PERMISSION.Label neq ''}
								<span class="small">|</span>
							   		<a href="#" id="customstatus_id" onClick="ChangeCustomViewStatus_NoStandard({$VIEWID},{$CUSTOMVIEW_PERMISSION.Status},{$CUSTOMVIEW_PERMISSION.ChangedStatus},'{$MODULE}','{$CATEGORY}')">{$CUSTOMVIEW_PERMISSION.Label}</a>
							{/if}
						</td>
					</tr>
				   </table>
				 </td>
<!--
/*
*
* BLOCK END
*
*/
-->
       		       </tr>
			 </table>
<!--
/*
*
* THUY@BORU 20101228
* VT Call Process
*
*/
-->
<!--
/*
*
* THUY@BORU 20101229
* VT Call Process
*
*/
-->
<!--
/*
*
* THUY@BORU 20110107
*  VT Call Process
*
*/
-->
<!--
/*
*
* THUY@BORU 20110511
* VT Call Filter Issue
*
*/
-->
                         <div  class="calDIV" style="overflow:auto;">
			 <table border=0 cellspacing=1 cellpadding=3 width=100% class="lvt small" class="small">
			      <tr>
             			 <td class="lvtCol"></td>
				 {foreach name="listviewforeach" item=header from=$LISTHEADER}
        			 <td class="lvtCol">{$header}</td>

			         {/foreach}
					 <td class="lvtCol">Action</td>
			      </tr>
			      {foreach item=entity key=entity_id from=$LISTENTITY}	
			      {if $entity.line_color.line_color neq '#FFFFFF'}		      
			      	<style>
						.vtcall_lv_{$entity_id} a {ldelim}
							color: {$entity.line_color.text_color};
						{rdelim}
					</style>
			      {/if}
			      
			      <!--<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_{$entity_id}">-->
			      <tr bgcolor="{$entity.line_color.line_color}" class="vtcall_lv_{$entity_id}" {if $entity.line_color.line_color neq '#FFFFFF'} style="color:{$entity.line_color.text_color};" onMouseOut="this.style.color='{$entity.line_color.text_color}';this.className='vtcall_lv_{$entity_id}';" {else}  onMouseOut="this.style.color='#000000';this.className='vtcall_lv_{$entity_id}';"  {/if} onMouseOver="this.className='lvtColDataHover'; this.style.color='#000000';" id="row_{$entity_id}">
<!--				 <td width="2%"><input type="checkbox" NAME="selected_id" id="{$entity_id}" value= '{$entity_id}' onClick=check_object(this); toggleSelectAll(this.name,"selectall")></td>-->

                                  {foreach item=value key=check from=$entity}
                                     {if ($check eq 'contactid') and (trim($check) neq "") }
                                        {assign var=contactid value=$value}
                                    {elseif ($check eq 'contactid') and (trim($check) eq "")}
                                        {assign var=contactid value=''}
                                    {/if}
                                    
                                    {if ($check eq 'entityid') and (trim($check) neq "") }
                                        {assign var=entityid value=$value}
                                    {elseif ($check eq 'entityid') and (trim($check) eq "")}
                                        {assign var=entityid value=''}
                                    {/if}
                                    

                                    {if ($check eq 'accountid') and (trim($check) neq "") }
                                        {assign var=accountid value=$value}
                                    {elseif ($check eq 'accountid') and (trim($check) eq "")}
                                        {assign var=accountid value=''}
                                    {/if} <!-- HICCUP_REV -->

				    {if ($check eq 'potentialid') and (trim($check) neq "")}
					{assign var=potentialid value=$value}
				    {elseif ($check eq 'potentialid') and (trim($check) eq "")}
					{assign var=potentialid value=''}
				    {/if}

                                    {if ($check eq 'DisplayFor') and (trim($check) neq "") }
                                        {assign var=DisplayFor value=$value}
                                    {elseif ($check eq 'DisplayFor') and (trim($check) eq "")}
                                        {assign var=DisplayFor value=''}
				    {elseif ($check eq 'potentials') and (trim($check) neq "")}
					{assign var=Potentials value=$value}
				    {elseif ($check eq 'potentials') and (trim($check) eq "")}
					{assign var=Potentials value=''}
				    {elseif ($check eq 'accounts') and (trim($check) neq "")}
					{assign var=PotentialAccounts value=$value}
				    {elseif ($check eq 'accounts') and (trim($check) eq "")}
					{assign var=PotentialAccounts value=''}
				    {elseif ($check eq 'contacts') and (trim($check) neq "")}
                                        {assign var=PotentialContacts value=$value}
                                    {elseif ($check eq 'contacts') and (trim($check) eq "")}
                                        {assign var=PotentialContacts value=''}
                                    {/if}
                                {/foreach}
                {if $DisplayFor neq ''}
                 {if $DisplayFor eq 'Accounts'}<!--$contactid == '' or -->
                                         <!-- Ezri Feb 29th 2012 ::: Replaced to call DetailView for Accounts.
					 <td width="2%"></td>
                                         -->
                                         <td width="2%">
					<input type='hidden' value='{$Potentials}' id='pot_{$entity_id}'>
					 <a href="javascript:showHideDetailViewVTCallAccounts('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$accountid}','{$DATEFORMAT_VTCALL}','{$VIEWID}')">
						<img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>
                 {elseif $contactid != '' and $DisplayFor eq "Contacts"}
					 <td width="2%">
					<!--if $Potentials neq ""-->
						<input type='hidden' value='{$Potentials}' id='pot_{$entity_id}'>
					<!--/if-->
					 <a href="javascript:showHideDetailViewVTCallContact('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$contactid}','{$DATEFORMAT_VTCALL}','{$VIEWID}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>

	 			{elseif $DisplayFor eq 'Leads'}
					 <td width="2%"><a href="javascript:showHideDetailViewVTCallLeads('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$accountid}','{$DATEFORMAT_VTCALL}','{$VIEWID}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>				
                {elseif $DisplayFor eq 'Quotes'}
                    <td width="2%"><a href="javascript:showHideDetailViewVTCallQuotes('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$quoteid}','{$DATEFORMAT_VTCALL}','{$VIEWID}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>
                {elseif $DisplayFor eq 'SalesOrder'}
                    <td width="2%"><a href="javascript:showHideDetailViewVTCallSalesOrder('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$quoteid}','{$DATEFORMAT_VTCALL}','{$VIEWID}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                {elseif $DisplayFor eq 'Invoice'}
                    <td width="2%"><a href="javascript:showHideDetailViewVTCallInvoice('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$quoteid}','{$DATEFORMAT_VTCALL}','{$VIEWID}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                    </td>
                 {elseif $DisplayFor eq 'Potentials'}
					<td width="2%">
					{if $check neq ""}
						<input type='hidden' value='{$PotentialAccounts}' id='potAcc_{$entity_id}'>
					{/if}
					{if $check neq "accounts"}
						<input type='hidden' value='{$PotentialContacts}' id='potCon_{$entity_id}'>
					{else}
						<input type='hidden' value='' id='potCon_{$entity_id}'>
					{/if}
					<a href="javascript:showHideDetailViewVTCallPotentials('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$potentialid}','{$DATEFORMAT_VTCALL}','{$VIEWID}')">
						<img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>
				{else}
					<td width="2%"><a href="javascript:showHideDetailViewVTCall('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$entityid}','{$DATEFORMAT_VTCALL}','{$VIEWID}','{$DisplayFor}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                    </td>
				{/if}
			{else}
                                 <td width="2%"></td>
        	 {/if}
				 {foreach item=data key=number from=$entity}
                 {if $number eq '0'}
				<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">{$data} </td>
                 {/if}
                 {if $number neq 'contactid' }
                     {if $number eq 'accountid' or $number eq 'DisplayFor' or $number eq 'potentials' or $number eq 'potentialid' or $number eq 'accounts' or $number eq 'contacts' or $number eq 'line_color' or $number eq 'entityid'}
                         <!-- HHIICCUUPP -->
                     {else}
                     <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">{$data}</td>
                     {/if}
                 {/if}
	                         {/foreach}

				  <td><a href='javascript:confirmdelete("index.php?module=Calendar&action=Delete&record={$entity_id}&return_module=VTCall&return_action=index&viewname={$VIEWID}")'>Del</a> <span style="float:right"> <a href="javascript:void(0)" onclick="updateActivityDate('{$entity_id}')">+1</a></span></td>
			      </tr>
                  <tr id="tbc{$entity_id}" bgcolor=white style=" display:none ">
                    <td colspan="20">
                        <div id="divc{$entity_id}">
                        </div>
                    </td>
                  </tr>
                  <tr id="tbl{$entity_id}" bgcolor=white style=" display:none ">
                    <td colspan="20">
                        <div id="div{$entity_id}">
                        </div>
                    </td>
                  </tr>
   			      {foreachelse}
				<tr><td style="background-color:#efefef;height:340px" align="center" colspan="{$smarty.foreach.listviewforeach.iteration+2}">
						<div style="border: 3px solid rgb(153, 153, 153); background-color: rgb(255, 255, 255); width: 45%; position: relative; z-index: 10000000;">
							{assign var=vowel_conf value='LBL_A'}
							{assign var=MODULE_CREATE value=$SINGLE_MOD}

							{if $CHECK.EditView eq 'yes' && $MODULE neq 'Emails' && $MODULE neq 'Webmails'}

							<table border="0" cellpadding="5" cellspacing="0" width="98%">
							<tr>
								<td rowspan="2" width="25%"><img src="{'empty.jpg'|@vtiger_imageurl:$THEME}" height="60" width="61"></td>
								<td style="border-bottom: 1px solid rgb(204, 204, 204);" nowrap="nowrap" width="75%"><span class="genHeaderSmall">{$APP.LBL_NO} {$APP.ACTIVITIES} {$APP.LBL_FOUND} !</span></td>
							</tr>
							<tr>
							<td class="small" align="left" nowrap="nowrap">{$APP.LBL_YOU_CAN_CREATE} {$APP.$vowel_conf} {$APP.$MODULE_CREATE} {$APP.LBL_NOW}. {$APP.LBL_CLICK_THE_LINK}:<br>
									&nbsp;&nbsp;-<a href="index.php?module={$MODULE}&action=EditView&return_module=Calendar&activity_mode=Events&return_action=DetailView&parenttab={$CATEGORY}">{$APP.LBL_CREATE} {$APP.LBL_AN} {$APP.Event}</a><br>
									&nbsp;&nbsp;-<a href="index.php?module={$MODULE}&action=EditView&return_module=Calendar&activity_mode=Task&return_action=DetailView&parenttab={$CATEGORY}">{$APP.LBL_CREATE} {$APP.LBL_A} {$APP.Todo}</a>
								</td>
							</tr>
							</table>
							{else}
							<table border="0" cellpadding="5" cellspacing="0" width="98%">
							<tr>
								<td rowspan="2" width="25%"><img src="{'empty.jpg'|@vtiger_imageurl:$THEME}" height="60" width="61"></td>
								<td style="border-bottom: 1px solid rgb(204, 204, 204);" nowrap="nowrap" width="75%"><span class="genHeaderSmall">{$APP.LBL_NO} {$APP.ACTIVITIES} {$APP.LBL_FOUND} !</span></td>
							</tr>
							<tr>
								<td class="small" align="left" nowrap="nowrap">{$APP.LBL_YOU_ARE_NOT_ALLOWED_TO_CREATE} {$APP.$vowel_conf} {$APP.$MODULE_CREATE}<br>
								</td>
							</tr>
							</table>
							{/if}
						</div>
				</td></tr>
			      {/foreach}
			 </table>
			 </div>

			 <table border=0 cellspacing=0 cellpadding=2 width=100%>
			      <tr>
				 <td style="padding-right:20px" nowrap>
                                 {foreach key=button_check item=button_label from=$BUTTONS}
                                        {if $button_check eq 'del'}
                                            <input class="crmbutton small delete" type="button" value="{$button_label}" onClick="return massDelete('{$MODULE}')"/>
                                        {elseif $button_check eq 's_mail'}
                                             <input class="crmbutton small edit" type="button" value="{$button_label}" onClick="return eMail('{$MODULE}',this)"/>
                                        {elseif $button_check eq 's_cmail'}
                                             <input class="crmbutton small edit" type="submit" value="{$button_label}" onClick="return massMail('{$MODULE}')"/>
                                        {elseif $button_check eq 'c_status'}
                                             <input class="crmbutton small edit" type="button" value="{$button_label}" onClick="return change(this,'changestatus')"/>
					{elseif $button_check eq 'c_owner'}
				                {if $MODULE neq 'Documents' && $MODULE neq 'Products' && $MODULE neq 'Faq' && $MODULE neq 'Vendors' && $MODULE neq 'PriceBooks'}
                                                     <input class="crmbutton small edit" type="button" value="{$button_label}" onClick="return change(this,'changeowner')"/>
                                                {/if}
                                        {/if}

                                 {/foreach}
                    </td>
<!--
/*
*
* THUY@BORU 20101228
* VT Call Process
*
*/
-->
					<td class="small" nowrap>
						{$recordListRange}
						{if $LISTENTITY|@count > 0}
							of <input class="crmbutton small create" type="button" value="Total" onClick="get_total_vtcall(this,'{$TOTAL}')"/>
							<select onChange="changeListViewVTCall(this,'{$MODULE}','{$CATEGORY}')" class="small" id="viewnum" name="viewnum">
								<option value="25" {if $VIEWNUM eq '25'} selected="selected" {/if}>25</option>
								<option value="50" {if $VIEWNUM eq '50'} selected="selected" {/if}>50</option>
								<option value="75" {if $VIEWNUM eq '75'} selected="selected" {/if}>75</option>
								<option value="100" {if $VIEWNUM eq '100'} selected="selected" {/if}>100</option>
							</select>
						{/if}
					</td>
<!--
/*
*
* BLOCK END
*
*/
-->
					<!-- Page Navigation -->
					<td nowrap width="30%" align="center">
						<table border=0 cellspacing=0 cellpadding=0 class="small">
							<tr>{$NAVIGATION}</tr>
						</table>
	                </td>
				 <td align="right" width=100%>
				   <table border=0 cellspacing=0 cellpadding=0 class="small">
					<tr>
                                           {$WORDTEMPLATEOPTIONS}{$MERGEBUTTON}
					</tr>
				   </table>
				 </td>
			      </tr>
       		    </table>
		       </td>
		   </tr>
	    </table>

   <!--</form>-->
{$SELECT_SCRIPT}
	</div>
	 </td></tr></table>
	 </td></tr></table>
         </td></tr></table>
        </div>

     </td>
        <td valign=top><img src="{'showPanelTopRight.gif'|@vtiger_imageurl:$THEME}"></td>
   </tr>
</table>


<div id="changeowner" class="statechange">
<table width="100%" border="0" cellpadding="3" cellspacing="0">
<tr>
	<td class="genHeaderSmall" align="left" style="border-bottom:1px solid #CCCCCC;" width="60%">{$APP.LBL_CHANGE_OWNER}</td>
	<td style="border-bottom: 1px solid rgb(204, 204, 204);">&nbsp;</td>
	<td align="right" style="border-bottom:1px solid #CCCCCC;" width="40%"><a href="javascript:fninvsh('changeowner')">{$APP.LBL_CLOSE}</a></td>
</tr>
<tr>
	<td colspan="3">&nbsp;</td>
</tr>
<tr>
	<td width="50%"><b>{$APP.LBL_TRANSFER_OWNERSHIP}</b></td>
	<td width="2%"><b>:</b></td>
	<td width="48%">
	        <form name="change_ownerform_name">
		        <input type = "radio" id= "user_checkbox" name = "user_lead_owner"  {if $CHANGE_GROUP_OWNER neq ''} onclick=checkgroup();{/if}  checked>{$APP.LBL_USER}&nbsp;
			{if $CHANGE_GROUP_OWNER neq ''}
			<input type = "radio" id = "group_checkbox" name = "user_lead_owner" onclick=checkgroup(); >{$APP.LBL_GROUP}<br>
			<select name="lead_group_owner" id="lead_group_owner" class="detailedViewTextBox" style="display:none;">
                                {$CHANGE_GROUP_OWNER}
                        </select>
			{/if}
			<select name="lead_owner" id="lead_owner" class="detailedViewTextBox">
				{$CHANGE_OWNER}
			</select>
		</form>
	</td>
</tr>
<tr><td colspan="3" style="border-bottom:1px dashed #CCCCCC;">&nbsp;</td></tr>
<tr>
	<td colspan="3" align="center">
	&nbsp;&nbsp;
	<input type="button" name="button" class="crmbutton small edit" value="{$APP.LBL_UPDATE_OWNER}" onClick="ajaxChangeStatus('owner')">
	<input type="button" name="button" class="crmbutton small cancel" value="{$APP.LBL_CANCEL_BUTTON_LABEL}" onClick="fninvsh('changeowner')">
</td>
</tr>
</table>
</div>


<script>
{literal}

<!--
/*
*
* THUY@BORU 20110126
* Improved Call List
*
*/
-->
function ajaxChangeStatus(statusname)
{
	$("status").style.display="inline";
	var viewid = document.massdelete.viewname.value;
	var idstring = document.getElementById('idlist').value;
	if(statusname == 'status')
	{
		fninvsh('changestatus');
		var url='&leadval='+document.getElementById('lead_status').options[document.getElementById('lead_status').options.selectedIndex].value;
		var urlstring ="module=Users&action=updateLeadDBStatus&return_module=Leads"+url+"&viewname="+viewid+"&idlist="+idstring;
	}
	else if(statusname == 'owner')
	{

		if($("user_checkbox").checked)
		{
			fninvsh('changeowner');
			var url='&owner_id='+document.getElementById('lead_owner').options[document.getElementById('lead_owner').options.selectedIndex].value+'&owner_type=User';
			{/literal}
			var urlstring ="module=Users&action=updateLeadDBStatus&return_module={$MODULE}"+url+"&viewname="+viewid+"&idlist="+idstring;
			{literal}
		}
		else
		{
			fninvsh('changeowner');
			var url='&owner_id='+document.getElementById('lead_group_owner').options[document.getElementById('lead_group_owner').options.selectedIndex].value+'&owner_type=Group';
			{/literal}
			var urlstring ="module=Users&action=updateLeadDBStatus&return_module={$MODULE}"+url+"&viewname="+viewid+"&idlist="+idstring;
			{literal}
		}

	}
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: urlstring,
	onComplete: function(response) {
		$("status").style.display="none";
		result = response.responseText.split('&#&#&#');
		$("ListViewContents").innerHTML= result[2];
		if(result[1] != '')
		alert(result[1]);
		$('basicsearchcolumns').innerHTML = '';
	}
	}
	);

}
</script>
{/literal}

<div class="fixedLay1" id="vtigerShowListTotal" style="display: none; height: 50px; z-index: 1000; font-weight: normal;" align="left">
</div>
<script type="text/javascript">
{literal}
function get_total(obj,mod) {
	$('status').style.display = 'inline';
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: 'module=Home&action=HomeAjax&file=GetTotal&list=' + mod,
	onComplete: function(response) {
		$("vtigerShowListTotal").innerHTML=response.responseText;
		fnvshobj(obj, 'vtigerShowListTotal');
		$('status').style.display = 'none';
	}
	}
	);

}

/*
*
* THUY@BORU 20110414
* VT Call Update
*
*/
/*
*
* THUY@BORU 20110415
* VT Call Update
*
*/



//WAS HERE showHideDetailViewVTCall
//WAS HERE showHideDetailViewVTCallAccounts
//WAS HERE showHideDetailViewVTCallLeads
//WAS HERE showHideDetailViewVTCall2

/*
*
* BLOCK END
*
*/

/*
*
* THUY@BORU 20101228
* VT Call Process
*
*/
/*
*
* THUY@BORU 20101229
* VT Call Process
*
*/
/*
*
* THUY@BORU 20110107
* VT Call Process
*
*/


/*
*
* BLOCK END
*
*/
/*
*
* BLOCK END
*
*/









function getListViewEntriesEmailHistory_js(module,url,original_eventid,contactid)
{
	/*
	*
	* TRAVIS@BORU 20100527
	* Add these lines to get value filter data by "History, Pending or All"
	* 999_059
	*
	*/
	//alert('URL from ListView.js function getListViewEntries_js: ' + url);
	//		alert(url);
	var showStatus = document.getElementById('showStatus');
	var userget = document.getElementById('userget');
	/*
	*
	* CODE END
	*
	*/
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
	var data = "module="+module+"&action="+module+"Ajax&file=EmailHistory&ajax=true&allselobjs="+all_selected+"&selobjs="+idstring+"&"+url+urlstring+"&contactid="+contactid+"&eventid="+original_eventid;
	if (showStatus != null) data += "&optionstarus="+showStatus.value;
	if (userget != null) data += "&userlist="+userget.value;

	//alert({/literal}{$entity_id}{literal});

	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	/*
	*
	* TRAVIS@BORU 20100527
	* Change this line to pass data for Filter by "History, Pending or All"
	* 999_059
	*
	*/

	postBody: data,
	onComplete: function(response) {
		$("status").style.display="none";
		result = response.responseText.split('&#&#&#');
		result = response.responseText;
		//alert(result);
		document.getElementById('diveh'+original_eventid).innerHTML= result;
		date_selected_checkbox();
		if(result[1] != '')
		alert(result[1]);
		$('basicsearchcolumns').innerHTML = '';
	}
	}
	);
}


/*
*
* BLOCK END
*
*/
/*
*
* BLOCK END
*
*/

/*
*
* THUY@BORU 20110217
* Improved Call List
*
*/

function get_total_vtcall(obj,total){
	$('status').style.display = 'inline';
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody: 'module=VTCall&action=VTCallAjax&file=GetTotal&total=' + total,
	onComplete: function(response) {
		$("vtigerShowListTotal").innerHTML=response.responseText;
		fnvshobj(obj, 'vtigerShowListTotal');
		$('status').style.display = 'none';
	}
	}
	);

}

function getListViewEntriesVTCall_js(module,url,filename)
{

	/*
	*
	* TRAVIS@BORU 20100527
	* Add these lines to get value filter data by "History, Pending or All"
	* 999_059
	*
	*/
	//alert('URL from ListView.js function getListViewEntries_js: ' + url);
	var showStatus = document.getElementById('showStatus');
	var userget = document.getElementById('userget');
	/*
	*
	* CODE END
	*
	*/
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
	//alert(url);
	if(filename=='Emails')
	var data = "module="+module+"&action="+module+"Ajax&file=EmailHistory&ajax=true&allselobjs="+all_selected+"&selobjs="+idstring+"&"+url+urlstring;
	else
	var data = "module="+module+"&action="+module+"Ajax&file=vt_call&ajax=true&allselobjs="+all_selected+"&selobjs="+idstring+"&"+url+urlstring;
	//	if (showStatus != null) data += "&optionstarus="+showStatus.value;
	//	if (userget != null) data += "&userlist="+userget.value;
	//   alert(data);


	// Ezri Apr 5th 2012 ::: To include top quick filters [All | today | tomorrow | this week | next week]
	quickFilter1 = document.getElementById("dateRange1");
	quickFilter2 = document.getElementById("dateRange2");
	quickFilter3 = document.getElementById("dateRange3");
	quickFilter4 = document.getElementById("dateRange4");
	quickFilter5 = document.getElementById("dateRange5");
	quickFilter6 = document.getElementById("dateRange6");
	quickFilter7 = document.getElementById("dateRange7");
	quickFilter8 = document.getElementById("dateRange8");
	currentFilter = document.getElementById("viewname");
	var viewName = encodeURIComponent(currentFilter.options[currentFilter.options.selectedIndex].value);

	if((quickFilter1) != null && quickFilter1.checked == true){
		data = data + '&seloption=all_dates&viewname='+viewName;
	}
	if((quickFilter2) != null && quickFilter2.checked == true){
		data = data + '&seloption=today&viewname='+viewName;
	}
	if((quickFilter3) != null && quickFilter3.checked == true){
		data = data + '&seloption=yesterday&viewname='+viewName;
	}
	if((quickFilter4) != null && quickFilter4.checked == true){
		data = data + '&seloption=today_and_prior&viewname='+viewName;
	}
	if((quickFilter5) != null && quickFilter5.checked == true){
		data = data + '&seloption=last_7_days&viewname='+viewName;
	}
	if((quickFilter6) != null && quickFilter6.checked == true){
		data = data + '&seloption=tomorrow&viewname='+viewName;
	}
	if((quickFilter7) != null && quickFilter7.checked == true){
		data = data + '&seloption=thisweek&viewname='+viewName;
	}
	if((quickFilter8) != null && quickFilter8.checked == true){
		data = data + '&seloption=nextweek&viewname='+viewName;
	}

	var usertype1 = document.getElementById('usertype1');
	var usertype2 = document.getElementById('usertype2');
	var usertype='';
	if(usertype1.checked){
		usertype = usertype1.value;
	}
	else if(usertype2.checked){
		usertype = usertype2.value;
	}
	data = data + '&usertype='+usertype;
	//alert(data);
	// end of changes by Ezri


	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	/*
	*
	* TRAVIS@BORU 20100527
	* Change this line to pass data for Filter by "History, Pending or All"
	* 999_059
	*
	*/

	postBody: data,
	onComplete: function(response) {
		$("status").style.display="none";
		result = response.responseText;
		//alert(result);
		if(filename=='Emails')
		$("ListViewContentsEmails").innerHTML= result;
		else
		$("ListViewContents").innerHTML= result;
		date_selected_checkbox();
		if(result[1] != '')
		alert(result[1]);
		$('basicsearchcolumns').innerHTML = '';
	}
	}
	);
}

function changeListViewVTCall(selectNum,module,parenttab)
{
	$("status").style.display="inline";
	var viewnum = selectNum.options[selectNum.options.selectedIndex].value;
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody:"module="+module+"&action="+module+"Ajax&file=vt_call&ajax=true&start=1&viewnum="+viewnum+"&parenttab="+parenttab,
	onComplete: function(response) {
		$("status").style.display="none";
		result = response.responseText;
		$("ListViewContents").innerHTML= result;

		//	                        if(result[1] != '')	alert(result[1]);
		//							$('basicsearchcolumns_real').innerHTML = $('basicsearchcolumns').innerHTML
		//							$('basicsearchcolumns').innerHTML = '';
		//							document.basicSearch.search_text.value = '';
	}
	}
	);
}

/*
*
* BLOCK END
*
*/


/*
*
* THUY@BORU 20110218
* Improved Call List
*
*/

function callSearch(searchtype){
	for(i=1;i<=26;i++){
		var data_td_id = 'alpha_'+ eval(i);
		getObj(data_td_id).className = 'searchAlph';
	}


	gPopupAlphaSearchUrl = '';
	search_fld_val= document.basicSearch.search_field[document.basicSearch.search_field.selectedIndex].value;
	search_txt_val=encodeURIComponent(document.basicSearch.search_text.value);

	var urlstring = '';
	if(searchtype == 'Basic'){
		urlstring = 'search_field='+search_fld_val+'&searchtype=BasicSearch&search_text='+search_txt_val+'&';
	}else if(searchtype == 'Advanced'){
		var no_rows = document.basicSearch.search_cnt.value;
		for(jj = 0 ; jj < no_rows; jj++){
			var sfld_name = getObj("Fields"+jj);
			var scndn_name= getObj("Condition"+jj);
			var srchvalue_name = getObj("Srch_value"+jj);
			urlstring = urlstring+'Fields'+jj+'='+sfld_name[sfld_name.selectedIndex].value+'&';
			urlstring = urlstring+'Condition'+jj+'='+scndn_name[scndn_name.selectedIndex].value+'&';
			urlstring = urlstring+'Srch_value'+jj+'='+encodeURIComponent(srchvalue_name.value)+'&';

		}
		for (i=0;i<getObj("matchtype").length;i++){
			if (getObj("matchtype")[i].checked==true)
			urlstring += 'matchtype='+getObj("matchtype")[i].value+'&';
		}
		urlstring += 'search_cnt='+no_rows+'&';
		urlstring += 'searchtype=advance&'
	}

	$("status").style.display="inline";
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody:urlstring +'query=true&file=vt_call&module=Calendar&action=CalendarAjax&ajax=true&search=true',
	onComplete: function(response) {
		$("status").style.display="none";
		//                                result = response.responseText.split('&#&#&#');
		result = response.responseText;
		$("ListViewContents").innerHTML= result;
		//                                if(result[1] != '')
		//                                  alert(result[1]);
		$('basicsearchcolumns').innerHTML = '';
	}
	}
	);
	return false;
}

/*
*
* BLOCK END
*
*/

/*
*
* THUY@BORU 20110221
* Improved Call List
*
*/
function showDefaultCustomViewVTCall(selectView,module,parenttab)
{
	$("status").style.display="inline";
	var viewName = encodeURIComponent(selectView.options[selectView.options.selectedIndex].value);
	new Ajax.Request(
	'index.php',
	{queue: {position: 'end', scope: 'command'},
	method: 'post',
	postBody:"module="+module+"&action="+module+"Ajax&file=vt_call&ajax=true&start=1&viewname="+viewName+"&parenttab="+parenttab+"&noradio=on",
	onComplete: function(response) {
		$("status").style.display="none";
		//                                result = response.responseText.split('&#&#&#');
		result = response.responseText;
		$("ListViewContents").innerHTML= result;
		//                                if(result[1] != '')
		//                                  alert(result[1]);
		$('basicsearchcolumns').innerHTML = '';
	}
	}
	);
}

/*
*
* BLOCK END
*
*/


{/literal}
</script>
<!-- Ezri May 8th 2012 ::: to make Potential Basic Info Block Hover Editable. -->
<span id="crmspanid" style="display:none;position:absolute;"  onmouseover="show('crmspanid');">
   <a class="link"  align="right" href="javascript:;">{$APP.LBL_EDIT_BUTTON}</a>
</span>
<!-- End of changes by Ezri -->
