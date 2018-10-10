{*<!--
/*+********************************************************************************
 * The contents of this file are subject to the vtiger CRM Public License Version 1.0
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
 ********************************************************************************/

/*
*
* THUY@BORU 20110106
*  VT Call Process
* 
*/
 
/*
*
* THUY@BORU 20110127
* Improved Call List
* 
*/
 
/*
*
* THUY@BORU 20110210
* Improved Call List
* 
*/

-->*}

{*<!-- module header -->*}
<script language="JavaScript" type="text/javascript" src="include/js/general.js"></script>
<script language="JavaScript" type="text/javascript" src="include/js/ListView.js"></script>
<script language="JavaScript" type="text/javascript" src="include/js/search.js"></script>
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
                        </td>
                </tr>
                </table>
        </td>
</tr>
</table>

{*<!-- Contents -->*}
<table border=0 cellspacing=0 cellpadding=0 width=98% align=center>
     <tr>
		<td style="padding: 10px;">

	   <!-- PUBLIC CONTENTS STARTS-->
	   <div id="ListViewContentsEmails" class="small" style="width:100%;position:relative;">
               <table border=0 cellspacing=1 cellpadding=0 width=100% class="lvtBg">
	            <tr >
                <td>
                <table align="center" width="33%"><tr>
                    <td class="small" nowrap>
                        {$recordListRange}
                    </td>
                    <!-- Page Navigation -->
                    <td nowrap width="30%" align="center">
                        <table border=0 cellspacing=0 cellpadding=0 class="small">
                            <tr>{$NAVIGATION}</tr>
                        </table>
                    </td>
                </tr></table></td>
                </td>
			</tr>
		<tr>
		      <td>
		         <table border=0 cellspacing=0 cellpadding=2 width=100% class="small">
			      <tr>

       		       </tr>
			 </table>

                         <div  class="calDIV" style="overflow:auto;">
			 <table border=0 cellspacing=1 cellpadding=3 width=100% class="lvt small" class="small">
			      <tr>
             			 <td class="lvtCol"></td>
				 {foreach name="listviewforeach" item=header from=$LISTHEADER}
        			 <td class="lvtCol">{$header}</td>
			         {/foreach}
			      </tr>
			      {foreach item=entity key=entity_id from=$LISTENTITY}
			      <tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_{$entity_id}">
<!--				 <td width="2%"><input type="checkbox" NAME="selected_id" id="{$entity_id}" value= '{$entity_id}' onClick=check_object(this); toggleSelectAll(this.name,"selectall")></td>-->
				 <td width="2%">&nbsp;</td>
				 {foreach item=data key=val from=$entity }	
				<td onMouseOver="vtlib_listview.trigger('cell.onmouseover', $(this))" onMouseOut="vtlib_listview.trigger('cell.onmouseout', $(this))">
					{if $val eq 2}
						<a onclick="ShowEmail('{$entity_id}');" href="javascript:;">{$data}</a>
					{else}
						{$data}
					{/if}
				</td>
	                         {/foreach}                            
                
			      </tr>
                  <tr id="tbl{$entity_id}" bgcolor=white style=" display:none ">
                    <td colspan="20">
                        <div id="div{$entity_id}">
                        </div>
                    </td>                   
                </tr>
			      {foreachelse}
				<tr><td style="background-color:#efefef;height:340px" align="center" colspan="{$smarty.foreach.listviewforeach.iteration+1}">
						<div style="border: 3px solid rgb(153, 153, 153); background-color: rgb(255, 255, 255); width: 45%; position: relative; z-index: 10000000;">
							{assign var=vowel_conf value='LBL_A'}
							{assign var=MODULE_CREATE value=$SINGLE_MOD}

							{if $CHECK.EditView eq 'yes' && $MODULE neq 'Emails' && $MODULE neq 'Webmails'}
							
							<table border="1" cellpadding="5" cellspacing="0" width="98%">
							<tr>
								<td rowspan="2" width="25%"><img src="{'empty.jpg'|@vtiger_imageurl:$THEME}" height="60" width="61"></td>
								<td style="border-bottom: 1px solid rgb(204, 204, 204);" nowrap="nowrap" width="75%"><span class="genHeaderSmall">{$APP.LBL_NO} Emails {$APP.LBL_FOUND} !</span></td>
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
                <table align="center" width="33%"><tr>
                    <td class="small" nowrap>
                        {$recordListRange}
                    </td>
                    <!-- Page Navigation -->
                    <td nowrap width="30%" align="center">
                        <table border=0 cellspacing=0 cellpadding=0 class="small">
                            <tr>{$NAVIGATION}</tr>
                        </table>
                    </td>
                </tr></table></td>
		   </tr>
	    </table>

	</div>
	 </td></tr></table>


<script>
{literal}


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

function showHideDetailViewVTCall(sId,anchorImgId,entity_id)
{
	$('status').style.display = 'inline';
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
	divid = 'div'+entity_id;
//	url = "module=Calendar&action=CalendarAjax&file=VTCallDetailView&recordid="+entity_id;
	url = "module=Calendar&action=CalendarAjax&file=VTCallDetailView&record="+entity_id;
	new Ajax.Request(
		'index.php',
		{queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: url,
			onComplete: function(response) {
			$(divid).innerHTML = response.responseText;
			$('status').style.display = 'none';
			}
		}
	);

}

{/literal}
</script>