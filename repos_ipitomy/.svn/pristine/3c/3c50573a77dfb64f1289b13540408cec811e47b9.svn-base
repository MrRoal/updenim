<link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
<script type="text/javascript" src="jscalendar/calendar.js"></script>
<script type="text/javascript" src="jscalendar/lang/calendar-en.js"></script>
<script type="text/javascript" src="jscalendar/calendar-setup.js"></script>

<script type="text/javascript" src="include/js/reflection.js"></script>
<script type="text/javascript" src="include/js/ListView.js"></script>
<script type="text/javascript" src="include/js/general.js"></script>
<script type="text/javascript" src="include/js/Merge.js"></script>  <!--added by ravish on 9/3/2010-->
<script src="include/scriptaculous/scriptaculous.js" type="text/javascript"></script>
<script language="JavaScript" type="text/javascript" src="include/js/dtlviewajax.js"></script>
<script type="text/javascript" src="include/js/ZeroClipboard.js"></script>


<script>
{literal}
var gVTModule = '{$smarty.request.module|@vtlib_purify}';
function callConvertLeadDiv(id)
{
        new Ajax.Request(
                'index.php',
                {queue: {position: 'end', scope: 'command'},
                        method: 'post',
                        postBody: 'module=Leads&action=LeadsAjax&file=ConvertLead&record='+id,
                        onComplete: function(response) {
                                $("convertleaddiv").innerHTML=response.responseText;
				eval($("conv_leadcal").innerHTML);
                        }
                }
        );
}

<!-- End Of Code modified by SAKTI on 10th Apr, 2008 -->

<!-- Start of code added by SAKTI on 16th Jun, 2008 -->
function setCoOrdinate(elemId){
	oBtnObj = document.getElementById(elemId);
	var tagName = document.getElementById('lstRecordLayout');
	leftpos  = 0;
	toppos = 0;
	aTag = oBtnObj;
	do{
	  leftpos  += aTag.offsetLeft;
	  toppos += aTag.offsetTop;
	} while(aTag = aTag.offsetParent);

	tagName.style.top= toppos + 20 + 'px';
	tagName.style.left= leftpos - 276 + 'px';
}

function getListOfRecords(obj, sModule, iId,sParentTab)
{
		new Ajax.Request(
		'index.php',
		{queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: 'module=Users&action=getListOfRecords&ajax=true&CurModule='+sModule+'&CurRecordId='+iId+'&CurParentTab='+sParentTab,
			onComplete: function(response) {
				sResponse = response.responseText;
				$("lstRecordLayout").innerHTML = sResponse;
				Lay = 'lstRecordLayout';
				var tagName = document.getElementById(Lay);
				var leftSide = findPosX(obj);
				var topSide = findPosY(obj);
				var maxW = tagName.style.width;
				var widthM = maxW.substring(0,maxW.length-2);
				var getVal = parseInt(leftSide) + parseInt(widthM);
				if(getVal  > document.body.clientWidth ){
					leftSide = parseInt(leftSide) - parseInt(widthM);
					tagName.style.left = leftSide + 230 + 'px';
					tagName.style.top = topSide + 20 + 'px';
				}else{
					tagName.style.left = leftSide + 230 + 'px';
				}
				setCoOrdinate(obj.id);

				tagName.style.display = 'block';
				tagName.style.visibility = "visible";
			}
		}
	);
}
<!-- End of code added by SAKTI on 16th Jun, 2008 -->


function Checkaddtopilot()
{

	var accountno 		= document.getElementById('accountno').value;
	var accountname 	= document.getElementById('accountname').value;
	var emailaccount 	= document.getElementById('emailaccount').value;
	var fisrtname 		= document.getElementById('dtlview_First Name').innerHTML;
	var lastname 		= document.getElementById('dtlview_Last Name').innerHTML;
	var accountid 		= document.getElementById('accountid').value;
	var contactid		= document.getElementById('ContactID').value;
	// get home phone.
	var phone			= document.getElementById('dtlview_Home Phone').innerHTML;
	// get mobile phone.
	var mobile 			= document.getElementById('dtlview_Mobile').innerHTML;
	// get title
	var title 			= document.getElementById('dtlview_Title').innerHTML;
	// get fax
	var fax				= document.getElementById('dtlview_Fax').innerHTML;
	// get emailcontact
	var email			= document.getElementById('dtlview_Email').getElementsByTagName('a')[0].innerHTML;
	if(accountno ==''){
		alert('Cannot create Company in Pilot, because this Contact does not have accountno. Please fix and try again');
		return false;
	}
	var path 	= document.getElementById('url').value;
	//var url = 'http://localhost:8888/web2project/trunk/modules/companies/addccompanyajx.php';
	var url = path+'web2project/modules/companies/addccompanyajx.php';
	alert(url);
	return false;
	new Ajax.Request(
                url,
                {
						method: 'get',
						parameters: "action=check&accountid="+accountid+"&contactid="+contactid+"&accountno="+accountno+"&accountname="+accountname,
                        onComplete: function(response) {
								var check = response.responseText;
								if(check=='no'){
									var confnoexists = confirm('This Contact\'s Account does not exist in Pilot, create a new Company from the Account?');
									if(confnoexists == true){
										// process create a new company from Account.
										new Ajax.Request(url,{
											method: 'get',
											parameters: "action=insert&accountid="+accountid+"&contactid="+contactid+"&accountno="+accountno+"&accountname="+accountname+"&title="+title+"&phone="+phone+"&mobile="+mobile+"&email="+email+"&fax="+fax+"&emailaccount="+emailaccount+"&firstname="+fisrtname+"&lastname="+lastname,
											onComplete: function(response){
												alert('Insert company success!.');
											}
										});
									}else{
										return;
									}
								}else{
									var confexists = confirm('Update Company and add this Contact to Pilot');
									if(confexists==true){
										new Ajax.Request(url,
											{
											method: 'get',
											parameters: "action=checkcontact&accountid="+accountid+"&contactid="+contactid+"&accountno="+accountno+"&accountname="+accountname+"&title="+title+"&phone="+phone+"&mobile="+mobile+"&email="+email+"&fax="+fax+"&emailaccount="+emailaccount+"&firstname="+fisrtname+"&lastname="+lastname,
											onComplete: function(response){
												//before check for exists contact.
												var contact_exists = response.responseText;
												if(contact_exists =='no'){
													new Ajax.Request(url,{
														method: 'get',
														parameters: "action=insertcontact&accountid="+accountid+"&contactid="+contactid+"&accountno="+accountno+"&accountname="+accountname+"&title="+title+"&phone="+phone+"&mobile="+mobile+"&email="+email+"&fax="+fax+"&emailaccount="+emailaccount+"&firstname="+fisrtname+"&lastname="+lastname,
														onComplete:function(response){
															alert(response.responseText);
														}
													});
												}else {
													new Ajax.Request(url,{
														method: 'get',
														parameters: "action=updatecontact&accountid="+accountid+"&contactid="+contactid+"&accountno="+accountno+"&accountname="+accountname+"&title="+title+"&phone="+phone+"&mobile="+mobile+"&email="+email+"&fax="+fax+"&emailaccount="+emailaccount+"&firstname="+fisrtname+"&lastname="+lastname,
														onComplete:function(response){
															alert(response.responseText);
														}
													});
												}

											}
										});
									}else {
										return;
									}
								}
                       }
                }
        );

}

function AddEvent(module)
{

 var gettext=document.getElementById('eventtext').value;
 var record=document.getElementById('recordid').value;
 if(gettext!=""){
		new Ajax.Request(
		'index.php',
		{queue: {position: 'end', scope: 'command'},
			method: 'post',

				postBody: 'module=Calendar&action=CalendarAjax&file=ActivityReminderCallbackAjax&ajax=true&ajxaction=QuickCreateEvent&recordid='+record+'&subject='+gettext+'&pmodule='+module,

			//	module=Calendar&action=CalendarAjax&file=ActivityReminderCallbackAjax&ajax=true

				onComplete: function(response) {
				sResponse = response.responseText;
				$("lstRecordLayout").innerHTML = sResponse;
				Lay = 'lstRecordLayout';
				//var tagName = document.getElementById(Lay);

			if(sResponse==":#:SUCCESS"){
			alert("Event added successfully.");
			}
			document.getElementById('eventtext').value='';
				//tagName.style.display = \'block\';
				//tagName.style.visibility = "visible";
			}
		}
	);
 }
}

{/literal}
function tagvalidate()
{ldelim}
	if(trim(document.getElementById('txtbox_tagfields').value) != '')
		SaveTag('txtbox_tagfields','{$ID}','{$MODULE}');
	else
	{ldelim}
		alert("{$APP.PLEASE_ENTER_TAG}");
		return false;
	{rdelim}
{rdelim}
function DeleteTag(id,recordid)
{ldelim}
	$("vtbusy_info").style.display="inline";
	Effect.Fade('tag_'+id);
	new Ajax.Request(
		'index.php',
                {ldelim}queue: {ldelim}position: 'end', scope: 'command'{rdelim},
                        method: 'post',
                        postBody: "file=TagCloud&module={$MODULE}&action={$MODULE}Ajax&ajxaction=DELETETAG&recordid="+recordid+"&tagid=" +id,
                        onComplete: function(response) {ldelim}
						getTagCloud();
						$("vtbusy_info").style.display="none";
                        {rdelim}
                {rdelim}
        );
{rdelim}

//Added to send a file, in Documents module, as an attachment in an email
function sendfile_email()
{ldelim}
	filename = $('dldfilename').value;
    document.DetailView.submit();
	OpenCompose(filename,'Documents');
{rdelim}

</script>

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
<!-- Contents -->
<table border=0 cellspacing=0 cellpadding=0 width=100% align=center>
<tr>
	<td class="" valign=top width=100%>
		<!-- PUBLIC CONTENTS STARTS-->
		<!-- Potential details tabs -->
		<table border=0 cellspacing=0 cellpadding=0 width=100% align=center>
		<tr>
			<td valign=top align=left >
				 <table border=0 cellspacing=0 cellpadding=3 width=100% class="" style="border-bottom:0;">
				<tr>

					<td align=left>
					<!-- content cache -->


				<table border=0 cellspacing=0 cellpadding=0 width=100%>
                <tr>
					<td style="padding:3px">
					<!-- Command Buttons -->
				  	<table border=0 cellspacing=0 cellpadding=0 width=100%>
							 <!-- NOTE: We should avoid form-inside-form condition, which could happen when
								Singlepane view is enabled. -->
							 <form action="index.php" method="post" name="DetailView" id="form">
							{include file='DetailViewHidden.tpl'}

							  <!-- Start of File Include by SAKTI on 10th Apr, 2008 -->
							 {include_php file="./include/DetailViewBlockStatus.php"}
							 <!-- Start of File Include by SAKTI on 10th Apr, 2008 -->

							{foreach key=header item=detail from=$BLOCKS}
							<!-- Detailed View Code starts here-->
							<table border=0 cellspacing=0 cellpadding=0 width=100% class="small">

	{if $header eq 'Potential Information' || $header eq 'Opportunity Information'}

						     <tr>{strip}
						     <td colspan=4 class="dvInnerHeader">

							<div style="float:left;font-weight:bold;">
								<div style="float:left;">
									<a href="javascript:showHideStatusVTCall('tbl{$ContactID}{$header|replace:' ':''}','aid{$ContactID}{$header|replace:' ':''}','{$IMAGE_PATH}');">
							{if $BLOCKINITIALSTATUS[$header] eq 0}
								<img id="aid{$ContactID}{$header|replace:' ':''}" src="{'activate.gif'|@vtiger_imageurl:$THEME}" style="border: 0px solid #000000;" alt="Hide" title="Hide"/>
							{else}
								<img id="aid{$ContactID}{$header|replace:' ':''}" src="{'inactivate.gif'|@vtiger_imageurl:$THEME}" style="border: 0px solid #000000;" alt="Display" title="Display"/>
							{/if}
									</a>
								</div><b>&nbsp;
						        	{$header}
	  			     			</b></div>
						     </td>{/strip}
					             </tr>
{/if}
							</table>
{if $header eq 'Potential Information' || $header eq 'Opportunity Information'}
							{if $BLOCKINITIALSTATUS[$header] eq 0}
							<div style="width:auto;display:block;" id="tbl{$ContactID}{$header|replace:' ':''}" >
							{else}
							<div style="width:auto;display:none;" id="tbl{$ContactID}{$header|replace:' ':''}" >
							{/if}
							<table border=0 cellspacing=0 cellpadding=0 width="100%" class="small">

                                                    <!--counter assign=k start=0-->
                                                    <!--assign var="descSet" value="No"-->
                                                    {foreach item=detail from=$detail}
                                                     <tr style="height:25px">
                                                     <!--math equation="n % 2" n=$k assign="nth"
                                                     if $nth eq 0 and $descSet eq 'No'
                                                         <tr style="height:25px"> de dos en dos
                                                     /if-->
							{foreach key=label item=data from=$detail}
							   {assign var=keyid value=$data.ui}
							   {assign var=keyval value=$data.value}
							   {assign var=keytblname value=$data.tablename}
							   {assign var=keyfldname value=$data.fldname}
							   {assign var=keyfldid value=$data.fldid}
							   {assign var=keyoptions value=$data.options}
							   {assign var=keysecid value=$data.secid}
							   {assign var=keyseclink value=$data.link}
							   {assign var=keycursymb value=$data.cursymb}
							   {assign var=keysalut value=$data.salut}
							   {assign var=keyaccess value=$data.notaccess}
							   {assign var=keycntimage value=$data.cntimage}
							   {assign var=keyadmin value=$data.isadmin}
							   {assign var=display_type value=$data.displaytype}
							   {assign var=keyadminToGo value=$data.isadmin}
                           {if $label ne ''}
                                <!--if $keyfldname eq 'account_no' or $keyfldname eq 'fax' or $keyfldname eq 'phone' or $keyfldname eq 'email1' or $keyfldname eq 'assigned_user_id'-->
                                    {if $keycntimage ne ''}
                                        <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value={$keyadmin}></input>{$keycntimage}</td>
                                    {elseif $keyid eq '71' || $keyid eq '72'}<!-- Currency symbol -->
                                        <td class="dvtCellLabel" align=right width=25%>{$label}<input type="hidden" id="hdtxt_IsAdmin" value={$keyadmin}></input> ({$keycursymb})</td>
                                    {else}
                                        <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value={$keyadmin}></input>{$label}</td>
                                    {/if}

					 {if $keyid eq '2' or $keyid eq '1' or $keyid eq '9' or $keyid eq '71' or $keyid eq '11'}
                                    <td width=25% class="dvtCellInfo" align="left" id="mouseArea_{$ID}_{$EVENTID}_{$label}" onmouseover="hndMouseOverVTCall({$keyid},'{$label}','{$ID}','{$EVENTID}');" onmouseout="fnhide('crmspanid');">
						&nbsp;&nbsp;
						{if $keyid eq 11}
                   				<span id="dtlview_{$ID}_{$EVENTID}_{$label}"><a href='javascript:;' onclick='startCall("{$data.value}", "{$ID}")'>{$data.value}</a></span>
						{else}
				          <span id="dtlview_{$ID}_{$EVENTID}_{$label}">{$data.value}</span>
				       {/if}
						<div id="editarea_{$ID}_{$EVENTID}_{$label}" style="display:none;">
                				    <input class="detailedViewTextBox" onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'" type="text" id="txtbox_{$ID}_{$EVENTID}_{$label}" name="{$keyfldname}" maxlength='100' value="{$keyval}"></input>
				                    <br><input name="button_{$label}" type="button" class="crmbutton small save" value="{$APP.LBL_SAVE_LABEL}" onclick="dtlViewAjaxSaveVTCallPotential('{$label}','{$MODULE}',{$keyid},'{$keytblname}','{$keyfldname}','{$ID}','{$EVENTID}');fnhide('crmspanid');"/> {$APP.LBL_OR}
									 <a href="javascript:;" onclick="hndCancel('dtlview_{$ID}_{$EVENTID}_{$label}','editarea_{$ID}_{$EVENTID}_{$label}','{$label}')" class="link">{$APP.LBL_CANCEL_BUTTON_LABEL}</a>
				                </div>
					{elseif $keyid eq '15' or $keyid eq '16'}
						{foreach item=arr from=$keyoptions}
							{if $arr[0] eq $APP.LBL_NOT_ACCESSIBLE && $arr[2] eq 'selected'}
								{assign var=keyval value=$APP.LBL_NOT_ACCESSIBLE}
								{assign var=fontval value='red'}
							{else}
						        	{assign var=fontval value=''}
							{/if}
						{/foreach}
						 <td width=25% class="dvtCellInfo" align="left" id="mouseArea_{$ID}_{$EVENTID}_{$label}" onmouseover="hndMouseOverVTCall({$keyid},'{$label}','{$ID}','{$EVENTID}');" onmouseout="fnhide('crmspanid');">
							<span id="dtlview_{$ID}_{$EVENTID}_{$label}">
								<font color="{$fontval}">
									{if $APP.$keyval!=''}{$APP.$keyval}{elseif $MOD.$keyval!=''}{$MOD.$keyval}{else}{$keyval}{/if}
								</font>
							</span>
							<div id="editarea_{$ID}_{$EVENTID}_{$label}" style="display:none;">
								<select id="txtbox_{$ID}_{$EVENTID}_{$label}" name="{$keyfldname}" class="small">
							        {foreach item=arr from=$keyoptions}
									{if $arr[0] eq $APP.LBL_NOT_ACCESSIBLE}
							                	<option value="{$arr[0]}" {$arr[2]}>{$arr[0]}</option>
									{else}
							        		<option value="{$arr[1]}" {$arr[2]}>
										{$arr[0]}
										</option>
									{/if}
								{/foreach}
								</select>
							        <br>
								<input name="button_{$label}" type="button" class="crmbutton small save" value="{$APP.LBL_SAVE_LABEL}" onclick="dtlViewAjaxSaveVTCallPotential('{$label}','{$MODULE}',{$keyid},'{$keytblname}','{$keyfldname}','{$ID}','{$EVENTID}');fnhide('crmspanid');"/> {$APP.LBL_OR}
									 <a href="javascript:;" onclick="hndCancel('dtlview_{$ID}_{$EVENTID}_{$label}','editarea_{$ID}_{$EVENTID}_{$label}','{$label}')" class="link">{$APP.LBL_CANCEL_BUTTON_LABEL}</a>
							</div>
					{else}
							<td width=25% class="dvtCellInfo" align="left" id="mouseArea_{$label}">
                                                	&nbsp;&nbsp;
                                                                        {$data.value}
					{/if}
				    </td>
                                <!--/if-->
			   {/if}
                                   {/foreach}
                                   </tr>
                                                      <!--if $nth eq 1  and $descSet eq 'No' hiccup_hover
						      </tr>
                                                        if isset($keyfldnameDescription) and $descSet eq "No" and $keyfldname eq 'email1'
                                                            assign var="descSet" value="Yes"
                                                            <tr style="height:25px">
                                                            <td colspan=4 width='100%'>
                                                            <table border=0 cellspacing=0 cellpadding=0 width="100%" class="small">
                                                            <tr style="height:25px">
                                                            <td class="dvtCellLabel" align=right width=50%><input type="hidden" id="hdtxt_IsAdmin" value={$keyadminToGo}></input>Description</td>
                                                            <td width=50% class="dvtCellInfo" align="left" id="mouseArea_Description">{$keyfldnameDescription}</td>
                                                            </tr>
                                                            </table>
                                                            </td>
                                                            </tr>
                                                        /if
                                                      /if
                                                      counter-->
						   {/foreach}

<!--
/*
*
* THUY@BORU 20110330
* Moving VTCall
*
*/
-->
	</form>
							<tr height="5px"><td>&nbsp;</td></tr>
                                 <tr>{strip}
                                     <td colspan=4 class="dvInnerHeader2">

                                        <div style="float:left;font-weight:bold;">
                                        	<div style="float:left;"><a onclick="javascript:showHideDetailViewActivityDetails('activitydetails{$EVENTID}','imgad{$EVENTID}','{$EVENTID}','{$contactid}','divad{$EVENTID}','{$DATEFORMAT_VTCALL}')" name="{$EVENTID}" href="#{$EVENTID}"><img style="border:0px;" id="imgad{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                                            </div><b>&nbsp;
                                                     {$MOD.LBL_ACTIVITY_DETAILS}
                                                </b>
                                        </div>

                                     </td>{/strip}
                                 </tr>
                                  <tr id="activitydetails{$EVENTID}" bgcolor=white style=" display:none ">
                                    <td colspan="20">
                                        <div id="divad{$EVENTID}">
                                        </div>
                                    </td>
                                  </tr>

							<tr height="5px"><td>&nbsp;</td></tr>
                                 <tr>{strip}
                                     <td colspan=4 class="dvInnerHeader3">

                                        <div style="float:left;font-weight:bold;">
                                        	<div style="float:left;">
						<a href="javascript:showHideDetailViewEmailHistory('emailhistory{$EVENTID}','imgeh{$EVENTID}','{$EVENTID}','{$potentialid}','diveh{$EVENTID}','Potentials')">
							<img style="border:0px;" id="imgeh{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" />
						</a>
                                            </div><b>&nbsp;
                                                    {$MOD.LBL_EMAIL_HISTORY}
                                                </b>
                                        </div>
                                     </td>{/strip}
                                 </tr>
                                  <tr id="emailhistory{$EVENTID}" bgcolor=white style=" display:none ">
                                    <td colspan="20">
                                        <div id="diveh{$EVENTID}">
                                        </div>
                                    </td>
                                  </tr>

							<tr height="5px"><td>&nbsp;</td></tr>
                                 <tr>{strip}
                                     <td colspan=4 class="dvInnerHeader4">

                                        <div style="float:left;font-weight:bold;">
                                        	<div style="float:left;"><a href="javascript:showHideDetailViewPendingActivities('contactpendingactivities{$EVENTID}','imgcpa{$EVENTID}','{$EVENTID}','{$potentialid}','divcpa{$EVENTID}','Potentials')">
							<img style="border:0px;" id="imgcpa{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" />
						</a>
                                            </div><b>&nbsp;
                                                    {'Opportunity'|@getTranslatedString:'Potentials'} {$MOD.LBL_PENDING_ACTIVITIES}
                                                </b>
                                        </div>
                                     </td>{/strip}
                                 </tr>
                                  <tr id="contactpendingactivities{$EVENTID}" bgcolor=white style=" display:none ">
                                    <td colspan="20">
                                        <div id="divcpa{$EVENTID}">
                                        </div>
                                    </td>
                                  </tr>

							<tr height="5px"><td>&nbsp;</td></tr>
                                 <tr>{strip}
                                     <td colspan=4 class="dvInnerHeader4">

                                        <div style="float:left;font-weight:bold;">
						<div style="float:left;">
						<a href="javascript:showHideDetailViewActivityHistory('contactactivityhistory{$EVENTID}','imgcah{$EVENTID}','{$EVENTID}','{$potentialid}','divcah{$EVENTID}','Potentials')">
							<img style="border:0px;" id="imgcah{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" />
						</a>
                                            </div><b>&nbsp;
                                                    {'Opportunity'|@getTranslatedString:'Potentials'} {$MOD.LBL_ACTIVITY_HISTORY}
                                                </b>
                                        </div>
                                     </td>{/strip}
                                 </tr>
				 <tr id="contactactivityhistory{$EVENTID}" bgcolor=white style=" display:none ">
                                    <td colspan="20">
                                        <div id="divcah{$EVENTID}">
                                        </div>
                                    </td>
                                  </tr>
								<tr height="5px"><td>&nbsp;</td></tr>
                                <!-- iEzri ::: April 25th 2012 ::: To display Potentials related to Account
                                {if $HAS_POTENTIALS eq "true"}
                                        <tr>{strip}
                                                <td colspan=4 class="dvInnerHeader4">
                                                        <div style="float:left;font-weight:bold">
                                                                <div style="float:left">
                                                                        <a href="javascript:showHideDetailViewPotentials('{$POTENTIALS}','{$EVENTID}','{$accountid}','Accounts')">
                                                                        <img style="border:0px;" id="imgPt{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                                                                </div>&nbsp;
                                                                <b> Related Potentials</b>
                                                        </div>
                                                </td>{/strip}
                                        </tr>
                                        <tr id="relPotential{$EVENTID}" bgcolor=white style=" display:none ">
                                            <td colspan="20">
                                                <div id="divPt{$EVENTID}">
                                                </div>
                                            </td>
                                        </tr>
                                {/if}
                                End of changes by Ezri On April 25th 2012 -->
                                <!-- Ezri ::: May 9th 2012 ::: To display Accounts/Contacts related to Potential-->
                                {if $HAS_ACCOUNTS eq "true"}
                                        <tr>{strip}
                                                <td colspan=4 class="dvInnerHeader4">
                                                        <div style="float:left;font-weight:bold">
                                                                <div style="float:left">
                                                                        <a href="javascript:showHideDetailViewPotentialAccounts('{$RELACCOUNTS}','{$EVENTID}','{$potentialid}','Potentials')">
                                                                        <img style="border:0px;" id="imgPtA{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                                                                </div>&nbsp;
                                                                <b> {$MOD.LBL_RELATED_ACCOUNTS}</b>
                                                        </div>
                                                </td>{/strip}
                                        </tr>
                                        <tr id="relPotentialAccs{$EVENTID}" bgcolor=white style=" display:none ">
                                            <td colspan="20">
                                                <div id="divPtAccs{$EVENTID}">
                                                </div>
                                            </td>
                                        </tr>
                                {/if}

						<tr height="5px"><td>&nbsp;</td></tr>
				{if $HAS_CONTACTS eq "true" and trim($RELCONTACTS) neq ""}
                                        <tr>{strip}
                                                <td colspan=4 class="dvInnerHeader4">
                                                        <div style="float:left;font-weight:bold">
                                                                <div style="float:left">
                                                                        <a href="javascript:showHideDetailViewPotentialContacts('{$RELCONTACTS}','{$EVENTID}','{$potentialid}','Potentials')">
                                                                        <img style="border:0px;" id="imgPtC{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                                                                </div>&nbsp;
                                                                <b> {$MOD.LBL_RELATED_CONTACT}</b>
                                                        </div>
                                                </td>{/strip}
                                        </tr>
                                        <tr id="relPotentialCons{$EVENTID}" bgcolor=white style=" display:none ">
                                            <td colspan="20">
                                                <div id="divPtCons{$EVENTID}">
                                                </div>
                                            </td>
                                        </tr>
                                {/if}
                                <!--End of changes by Ezri On April 25th 2012 -->

<!--
/*
*
* BLOCK END
*
*/
-->
							<!-- related list -->
                             {foreach from=$RELATED_LIST key=rll item=rli}
                                 <tr height="5px"><td>&nbsp;</td></tr>
                                 <tr>{strip}
                                         <td colspan=4 class="dvInnerHeader2">
                                         <div style="float:left;font-weight:bold;">
                                             <div style="float:left;"> <a href="javascript:showHideDetailViewRelatedList('{$RELCONTACT}','{$EVENTID}','{$potentialid}','Potentials','rel{$rli}{$EVENTID}','img{$rli}{$EVENTID}','div{$rli}{$EVENTID}','{$rli}')">
                                                     <img style="border:0px;" id="img{$rli}{$EVENTID}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
                                             </div><b>&nbsp;
                                                 {if $MOD[$rll] neq ''}{$MOD[$rll]}{else}{$rll}{/if}
                                             </b>
                                         </div>
                                         </td>{/strip}
                                 </tr>
                                 <tr id="rel{$rli}{$EVENTID}" bgcolor=white style=" display:none">
                                     <td colspan="20">
                                         <div id="div{$rli}{$EVENTID}">
                                         </div>
                                     </td>
                                 </tr>
                             {/foreach}
                             <!-- END -->
                             </table>
							 </div>
{/if}
                     	                      </td>
					   </tr>
			{/foreach}
                    {*-- End of Blocks--*}


			<!-- End the form related to detail view -->

		</table>
		</td>
</tr>

</table>

{if $MODULE eq 'Products'}
<script language="JavaScript" type="text/javascript" src="modules/Products/Productsslide.js"></script>
<script language="JavaScript" type="text/javascript">Carousel();</script>
{/if}

<script>

function getTagCloud()
{ldelim}
new Ajax.Request(
        'index.php',
        {ldelim}queue: {ldelim}position: 'end', scope: 'command'{rdelim},
        method: 'post',
        postBody: 'module={$MODULE}&action={$MODULE}Ajax&file=TagCloud&ajxaction=GETTAGCLOUD&recordid={$ID}',
        onComplete: function(response) {ldelim}
                                $("tagfields").innerHTML=response.responseText;
                                $("txtbox_tagfields").value ='';
                        {rdelim}
        {rdelim}
);
{rdelim}
getTagCloud();
</script>
<!-- added for validation -->
<script language="javascript">
  var fieldname = new Array({$VALIDATION_DATA_FIELDNAME});
  var fieldlabel = new Array({$VALIDATION_DATA_FIELDLABEL});
  var fielddatatype = new Array({$VALIDATION_DATA_FIELDDATATYPE});


</script>

<!--
/*
*
* BLOCK END
*
*/
-->

<!--
/*
*
* BLOCK END
*
*/
-->
<!--
/*
*
* BLOCK END
*
*/
-->
