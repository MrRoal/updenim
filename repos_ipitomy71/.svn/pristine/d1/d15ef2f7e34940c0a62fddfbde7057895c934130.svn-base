<?php /* Smarty version 2.6.18, created on 2014-04-10 19:46:21
         compiled from modules/VTCall/VTCallLeadDetailView.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'replace', 'modules/VTCall/VTCallLeadDetailView.tpl', 300, false),array('modifier', 'vtiger_imageurl', 'modules/VTCall/VTCallLeadDetailView.tpl', 302, false),array('modifier', 'strip_tags', 'modules/VTCall/VTCallLeadDetailView.tpl', 357, false),array('modifier', 'regex_replace', 'modules/VTCall/VTCallLeadDetailView.tpl', 359, false),)), $this); ?>
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
<?php echo '
var gVTModule = \'{$smarty.request.module|@vtlib_purify}\';
function callConvertLeadDiv(id)
{
        new Ajax.Request(
                \'index.php\',
                {queue: {position: \'end\', scope: \'command\'},
                        method: \'post\',
                        postBody: \'module=Leads&action=LeadsAjax&file=ConvertLead&record=\'+id,
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
	var tagName = document.getElementById(\'lstRecordLayout\');
	leftpos  = 0;
	toppos = 0;
	aTag = oBtnObj;
	do{					  
	  leftpos  += aTag.offsetLeft;
	  toppos += aTag.offsetTop;
	} while(aTag = aTag.offsetParent);
	
	tagName.style.top= toppos + 20 + \'px\';
	tagName.style.left= leftpos - 276 + \'px\';
}

function getListOfRecords(obj, sModule, iId,sParentTab)
{
		new Ajax.Request(
		\'index.php\',
		{queue: {position: \'end\', scope: \'command\'},
			method: \'post\',
			postBody: \'module=Users&action=getListOfRecords&ajax=true&CurModule=\'+sModule+\'&CurRecordId=\'+iId+\'&CurParentTab=\'+sParentTab,
			onComplete: function(response) {
				sResponse = response.responseText;
				$("lstRecordLayout").innerHTML = sResponse;
				Lay = \'lstRecordLayout\';	
				var tagName = document.getElementById(Lay);
				var leftSide = findPosX(obj);
				var topSide = findPosY(obj);
				var maxW = tagName.style.width;
				var widthM = maxW.substring(0,maxW.length-2);
				var getVal = parseInt(leftSide) + parseInt(widthM);
				if(getVal  > document.body.clientWidth ){
					leftSide = parseInt(leftSide) - parseInt(widthM);
					tagName.style.left = leftSide + 230 + \'px\';
					tagName.style.top = topSide + 20 + \'px\';
				}else{
					tagName.style.left = leftSide + 230 + \'px\';
				}
				setCoOrdinate(obj.id);
				
				tagName.style.display = \'block\';
				tagName.style.visibility = "visible";
			}
		}
	);
}
<!-- End of code added by SAKTI on 16th Jun, 2008 -->


function Checkaddtopilot()
{
	
	var accountno 		= document.getElementById(\'accountno\').value;	
	var accountname 	= document.getElementById(\'accountname\').value;		
	var emailaccount 	= document.getElementById(\'emailaccount\').value;
	var fisrtname 		= document.getElementById(\'dtlview_First Name\').innerHTML;			
	var lastname 		= document.getElementById(\'dtlview_Last Name\').innerHTML;	
	var accountid 		= document.getElementById(\'accountid\').value;
	var contactid		= document.getElementById(\'ContactID\').value;
	// get home phone.	
	var phone			= document.getElementById(\'dtlview_Home Phone\').innerHTML;
	// get mobile phone.
	var mobile 			= document.getElementById(\'dtlview_Mobile\').innerHTML;
	// get title
	var title 			= document.getElementById(\'dtlview_Title\').innerHTML;
	// get fax 
	var fax				= document.getElementById(\'dtlview_Fax\').innerHTML;
	// get emailcontact
	var email			= document.getElementById(\'dtlview_Email\').getElementsByTagName(\'a\')[0].innerHTML;
	if(accountno ==\'\'){
		alert(\'Cannot create Company in Pilot, because this Contact does not have accountno. Please fix and try again\');
		return false;
	}
	var path 	= document.getElementById(\'url\').value;
	//var url = \'http://localhost:8888/web2project/trunk/modules/companies/addccompanyajx.php\';
	var url = path+\'web2project/modules/companies/addccompanyajx.php\';
	alert(url);
	return false;
	new Ajax.Request(
                url,
                {
						method: \'get\',
						parameters: "action=check&accountid="+accountid+"&contactid="+contactid+"&accountno="+accountno+"&accountname="+accountname,                        
                        onComplete: function(response) {									
								var check = response.responseText;	
								if(check==\'no\'){
									var confnoexists = confirm(\'This Contact\\\'s Account does not exist in Pilot, create a new Company from the Account?\');
									if(confnoexists == true){
										// process create a new company from Account.
										new Ajax.Request(url,{
											method: \'get\',
											parameters: "action=insert&accountid="+accountid+"&contactid="+contactid+"&accountno="+accountno+"&accountname="+accountname+"&title="+title+"&phone="+phone+"&mobile="+mobile+"&email="+email+"&fax="+fax+"&emailaccount="+emailaccount+"&firstname="+fisrtname+"&lastname="+lastname,
											onComplete: function(response){
												alert(\'Insert company success!.\');
											}
										});
									}else{
										return;
									}	
								}else{
									var confexists = confirm(\'Update Company and add this Contact to Pilot\');									
									if(confexists==true){																																				
										new Ajax.Request(url,
											{
											method: \'get\',											
											parameters: "action=checkcontact&accountid="+accountid+"&contactid="+contactid+"&accountno="+accountno+"&accountname="+accountname+"&title="+title+"&phone="+phone+"&mobile="+mobile+"&email="+email+"&fax="+fax+"&emailaccount="+emailaccount+"&firstname="+fisrtname+"&lastname="+lastname,
											onComplete: function(response){												
												//before check for exists contact.
												var contact_exists = response.responseText;													
												if(contact_exists ==\'no\'){													
													new Ajax.Request(url,{
														method: \'get\',
														parameters: "action=insertcontact&accountid="+accountid+"&contactid="+contactid+"&accountno="+accountno+"&accountname="+accountname+"&title="+title+"&phone="+phone+"&mobile="+mobile+"&email="+email+"&fax="+fax+"&emailaccount="+emailaccount+"&firstname="+fisrtname+"&lastname="+lastname,
														onComplete:function(response){
															alert(response.responseText);															
														}	
													});
												}else {													
													new Ajax.Request(url,{
														method: \'get\',
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

 var gettext=document.getElementById(\'eventtext\').value;
 var record=document.getElementById(\'recordid\').value;
 if(gettext!=""){
		new Ajax.Request(
		\'index.php\',
		{queue: {position: \'end\', scope: \'command\'},
			method: \'post\',
			
				postBody: \'module=Calendar&action=CalendarAjax&file=ActivityReminderCallbackAjax&ajax=true&ajxaction=QuickCreateEvent&recordid=\'+record+\'&subject=\'+gettext+\'&pmodule=\'+module,
				
			//	module=Calendar&action=CalendarAjax&file=ActivityReminderCallbackAjax&ajax=true

				onComplete: function(response) {
				sResponse = response.responseText;
				$("lstRecordLayout").innerHTML = sResponse;
				Lay = \'lstRecordLayout\';	
				//var tagName = document.getElementById(Lay);
			
			if(sResponse==":#:SUCCESS"){
			alert("Event added successfully.");
			}
			document.getElementById(\'eventtext\').value=\'\';
				//tagName.style.display = \\\'block\\\';
				//tagName.style.visibility = "visible";
			}
		}
	);
 }	
}

/*
 CODE END
*/

'; ?>

function tagvalidate()
{
	if(trim(document.getElementById('txtbox_tagfields').value) != '')
		SaveTag('txtbox_tagfields','<?php echo $this->_tpl_vars['ID']; ?>
','<?php echo $this->_tpl_vars['MODULE']; ?>
');	
	else
	{
		alert("<?php echo $this->_tpl_vars['APP']['PLEASE_ENTER_TAG']; ?>
");
		return false;
	}
}
function DeleteTag(id,recordid)
{
	$("vtbusy_info").style.display="inline";
	Effect.Fade('tag_'+id);
	new Ajax.Request(
		'index.php',
                {queue: {position: 'end', scope: 'command'},
                        method: 'post',
                        postBody: "file=TagCloud&module=<?php echo $this->_tpl_vars['MODULE']; ?>
&action=<?php echo $this->_tpl_vars['MODULE']; ?>
Ajax&ajxaction=DELETETAG&recordid="+recordid+"&tagid=" +id,
                        onComplete: function(response) {
						getTagCloud();
						$("vtbusy_info").style.display="none";
                        }
                }
        );
}

//Added to send a file, in Documents module, as an attachment in an email
function sendfile_email()
{
	filename = $('dldfilename').value;
    document.DetailView.submit();
	OpenCompose(filename,'Documents');
}

</script>

<!-- Ravish, Code for outlook integration., 10/28/2010 -->
<?php if ($this->_tpl_vars['OUTLOOKPOPUP'] != ''): ?>
    <script type = 'text/javascript'>
        var id = '<?php echo $this->_tpl_vars['OUTLOOKPOPUP']; ?>
';
        var data = "index.php?module=Calendar&action=CalendarAjax&file=AjaxOutlook&ajax=true";
            data += "&recordid="+id;
        window.open(data);
    </script>
<?php endif; ?>
<!-- Ravish, End code., 10/28/2010-->
<!-- Contents -->
<table border=0 cellspacing=0 cellpadding=0 width=100% align=center>
<tr>
	<td class="" valign=top width=100%>
		<!-- PUBLIC CONTENTS STARTS-->
		<!-- Account details tabs -->
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
							<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'DetailViewHidden.tpl', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
						
							  <!-- Start of File Include by SAKTI on 10th Apr, 2008 -->
							 <?php require_once(SMARTY_CORE_DIR . 'core.smarty_include_php.php');
smarty_core_smarty_include_php(array('smarty_file' => "./include/DetailViewBlockStatus.php", 'smarty_assign' => '', 'smarty_once' => false, 'smarty_include_vars' => array()), $this); ?>

							 <!-- Start of File Include by SAKTI on 10th Apr, 2008 -->

							<?php $_from = $this->_tpl_vars['BLOCKS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['header'] => $this->_tpl_vars['detail']):
?>
                                                        
							<!-- Detailed View Code starts here-->
                                                        
							<table border=0 cellspacing=0 cellpadding=0 width=100% class="small">

	<?php if ($this->_tpl_vars['header'] == 'Lead Information'): ?>
 
						     <tr><?php echo '<td colspan=4 class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatusVTCall(\'tbl'; ?><?php echo ((is_array($_tmp=$this->_tpl_vars['header'])) ? $this->_run_mod_handler('replace', true, $_tmp, ' ', '') : smarty_modifier_replace($_tmp, ' ', '')); ?><?php echo '\',\'aid'; ?><?php echo ((is_array($_tmp=$this->_tpl_vars['header'])) ? $this->_run_mod_handler('replace', true, $_tmp, ' ', '') : smarty_modifier_replace($_tmp, ' ', '')); ?><?php echo '\',\''; ?><?php echo $this->_tpl_vars['IMAGE_PATH']; ?><?php echo '\');">'; ?><?php if ($this->_tpl_vars['BLOCKINITIALSTATUS'][$this->_tpl_vars['header']] == 1): ?><?php echo '<img id="aid'; ?><?php echo ((is_array($_tmp=$this->_tpl_vars['header'])) ? $this->_run_mod_handler('replace', true, $_tmp, ' ', '') : smarty_modifier_replace($_tmp, ' ', '')); ?><?php echo '" src="'; ?><?php echo vtiger_imageurl('activate.gif', $this->_tpl_vars['THEME']); ?><?php echo '" style="border: 0px solid #000000;" alt="Hide" title="Hide"/>'; ?><?php else: ?><?php echo '<img id="aid'; ?><?php echo ((is_array($_tmp=$this->_tpl_vars['header'])) ? $this->_run_mod_handler('replace', true, $_tmp, ' ', '') : smarty_modifier_replace($_tmp, ' ', '')); ?><?php echo '" src="'; ?><?php echo vtiger_imageurl('inactivate.gif', $this->_tpl_vars['THEME']); ?><?php echo '" style="border: 0px solid #000000;" alt="Display" title="Display"/>'; ?><?php endif; ?><?php echo '</a></div><b>&nbsp;'; ?><?php echo $this->_tpl_vars['header']; ?><?php echo '</b></div></td>'; ?>

					             </tr>
<?php endif; ?>
							</table>
<?php if ($this->_tpl_vars['header'] == 'Lead Information'): ?>
							<?php if ($this->_tpl_vars['BLOCKINITIALSTATUS'][$this->_tpl_vars['header']] == 1): ?>
							<div style="width:auto;display:block;" id="tbl<?php echo ((is_array($_tmp=$this->_tpl_vars['header'])) ? $this->_run_mod_handler('replace', true, $_tmp, ' ', '') : smarty_modifier_replace($_tmp, ' ', '')); ?>
" >
							<?php else: ?>
							<div style="width:auto;display:none;" id="tbl<?php echo ((is_array($_tmp=$this->_tpl_vars['header'])) ? $this->_run_mod_handler('replace', true, $_tmp, ' ', '') : smarty_modifier_replace($_tmp, ' ', '')); ?>
" >
							<?php endif; ?>
							<table border=0 cellspacing=0 cellpadding=0 width="100%" class="small">
						   <?php $_from = $this->_tpl_vars['detail']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['detail']):
?>
						     <tr style="height:25px">
							<?php $_from = $this->_tpl_vars['detail']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['label'] => $this->_tpl_vars['data']):
?>
							   <?php $this->assign('keyid', $this->_tpl_vars['data']['ui']); ?>
							   <?php $this->assign('keyval', $this->_tpl_vars['data']['value']); ?>
							   <?php $this->assign('keytblname', $this->_tpl_vars['data']['tablename']); ?>
							   <?php $this->assign('keyfldname', $this->_tpl_vars['data']['fldname']); ?>
							   <?php $this->assign('keyfldid', $this->_tpl_vars['data']['fldid']); ?>
							   <?php $this->assign('keyoptions', $this->_tpl_vars['data']['options']); ?>
							   <?php $this->assign('keysecid', $this->_tpl_vars['data']['secid']); ?>
							   <?php $this->assign('keyseclink', $this->_tpl_vars['data']['link']); ?>
							   <?php $this->assign('keycursymb', $this->_tpl_vars['data']['cursymb']); ?>
							   <?php $this->assign('keysalut', $this->_tpl_vars['data']['salut']); ?>
							   <?php $this->assign('keyaccess', $this->_tpl_vars['data']['notaccess']); ?>
							   <?php $this->assign('keycntimage', $this->_tpl_vars['data']['cntimage']); ?>
							   <?php $this->assign('keyadmin', $this->_tpl_vars['data']['isadmin']); ?>
							   <?php $this->assign('display_type', $this->_tpl_vars['data']['displaytype']); ?>
							   
							   
	                           <?php if ($this->_tpl_vars['label'] != ''): ?>
			                        <?php if ($this->_tpl_vars['keycntimage'] != ''): ?>
									<td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value=<?php echo $this->_tpl_vars['keyadmin']; ?>
></input><?php echo $this->_tpl_vars['keycntimage']; ?>
</td>
									<?php elseif ($this->_tpl_vars['keyid'] == '71' || $this->_tpl_vars['keyid'] == '72'): ?><!-- Currency symbol -->
										<td class="dvtCellLabel" align=right width=25%><?php echo $this->_tpl_vars['label']; ?>
<input type="hidden" id="hdtxt_IsAdmin" value=<?php echo $this->_tpl_vars['keyadmin']; ?>
></input> (<?php echo $this->_tpl_vars['keycursymb']; ?>
)</td>
									<?php else: ?>
										<td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value=<?php echo $this->_tpl_vars['keyadmin']; ?>
></input><?php echo $this->_tpl_vars['label']; ?>
</td>
									<?php endif; ?>
									  <!-- <td width=25% class="dvtCellInfo" align="left" id="mouseArea_<?php echo $this->_tpl_vars['label']; ?>
"><?php echo $this->_tpl_vars['data']['value']; ?>
</td>-->
								   <?php if ($this->_tpl_vars['keyid'] == '1' || $this->_tpl_vars['keyid'] == 2 || $this->_tpl_vars['keyid'] == '11' || $this->_tpl_vars['keyid'] == '7' || $this->_tpl_vars['keyid'] == '9' || $this->_tpl_vars['keyid'] == '55' || $this->_tpl_vars['keyid'] == '71' || $this->_tpl_vars['keyid'] == '72' || $this->_tpl_vars['keyid'] == '103' || $this->_tpl_vars['keyid'] == '255' || $this->_tpl_vars['keyid'] == '13' || $this->_tpl_vars['keyid'] == '104' || $this->_tpl_vars['keyid'] == '21' || $this->_tpl_vars['keyid'] == '24' || $this->_tpl_vars['keyid'] == '22'): ?> <!--TextBox-->	
									 <td width=25% class="dvtCellInfo" align="left" id="mouseArea_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
" onmouseover="hndMouseOverVTCall(<?php echo $this->_tpl_vars['keyid']; ?>
,'<?php echo $this->_tpl_vars['label']; ?>
','<?php echo $this->_tpl_vars['ID']; ?>
','<?php echo $this->_tpl_vars['EVENTID']; ?>
');" onmouseout="fnhide('crmspanid');">&nbsp;
						<?php if ($this->_tpl_vars['keyid'] == 11): ?>
                   				<span id="dtlview_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
"><a href='javascript:;' onclick='startCall("<?php echo $this->_tpl_vars['data']['value']; ?>
", "<?php echo $this->_tpl_vars['ID']; ?>
")'><?php echo $this->_tpl_vars['data']['value']; ?>
</a></span>
						<?php else: ?>
				          <span id="dtlview_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
"><?php echo $this->_tpl_vars['data']['value']; ?>
</span>
				       <?php endif; ?>
									 <div id="editarea_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
" style="display:none;">
									  <?php if ($this->_tpl_vars['keyid'] == '13' || $this->_tpl_vars['keyid'] == '104'): ?> <!--Email-->
									  <input class="detailedViewTextBox" onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'" type="text" id="txtbox_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
" name="<?php echo $this->_tpl_vars['keyfldname']; ?>
" maxlength='100' value="<?php echo ((is_array($_tmp=$this->_tpl_vars['data']['value'])) ? $this->_run_mod_handler('strip_tags', true, $_tmp) : smarty_modifier_strip_tags($_tmp)); ?>
"></input>
									  <?php elseif ($this->_tpl_vars['keyid'] == '21' || $this->_tpl_vars['keyid'] == '24' || $this->_tpl_vars['keyid'] == '22'): ?> <!--TextArea/Street-->
                                        <textarea id="txtbox_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
" name="<?php echo $this->_tpl_vars['keyfldname']; ?>
"  class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'"onBlur="this.className='detailedViewTextBox'" rows=2><?php echo ((is_array($_tmp=$this->_tpl_vars['data']['value'])) ? $this->_run_mod_handler('regex_replace', true, $_tmp, "/<br\s*\/>/", "") : smarty_modifier_regex_replace($_tmp, "/<br\s*\/>/", "")); ?>
</textarea>
									  <?php else: ?>
										<input class="detailedViewTextBox" onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'" type="text" id="txtbox_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
" name="<?php echo $this->_tpl_vars['keyfldname']; ?>
" maxlength='100' value="<?php echo $this->_tpl_vars['data']['value']; ?>
"></input>  
									  <?php endif; ?>
									 <br><input name="button_<?php echo $this->_tpl_vars['label']; ?>
" type="button" class="crmbutton small save" value="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_LABEL']; ?>
" onclick="dtlViewAjaxSaveVTCallPotential('<?php echo $this->_tpl_vars['label']; ?>
','<?php echo $this->_tpl_vars['MODULE']; ?>
',<?php echo $this->_tpl_vars['keyid']; ?>
,'<?php echo $this->_tpl_vars['keytblname']; ?>
','<?php echo $this->_tpl_vars['keyfldname']; ?>
','<?php echo $this->_tpl_vars['ID']; ?>
','<?php echo $this->_tpl_vars['EVENTID']; ?>
');fnhide('crmspanid');"/> <?php echo $this->_tpl_vars['APP']['LBL_OR']; ?>

									 <a href="javascript:;" onclick="hndCancel('dtlview_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
','editarea_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
','<?php echo $this->_tpl_vars['label']; ?>
')" class="link"><?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>
</a>
                                </div></td>
								
								<?php elseif ($this->_tpl_vars['keyid'] == '15' || $this->_tpl_vars['keyid'] == '16'): ?>
						<?php $_from = $this->_tpl_vars['keyoptions']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['arr']):
?>
							<?php if ($this->_tpl_vars['arr'][0] == $this->_tpl_vars['APP']['LBL_NOT_ACCESSIBLE'] && $this->_tpl_vars['arr'][2] == 'selected'): ?>
								<?php $this->assign('keyval', $this->_tpl_vars['APP']['LBL_NOT_ACCESSIBLE']); ?>
								<?php $this->assign('fontval', 'red'); ?>
							<?php else: ?>
						        	<?php $this->assign('fontval', ''); ?>
							<?php endif; ?>
						<?php endforeach; endif; unset($_from); ?>               
						<td width=25% class="dvtCellInfo" align="left" id="mouseArea_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
" onmouseover="hndMouseOverVTCall(<?php echo $this->_tpl_vars['keyid']; ?>
,'<?php echo $this->_tpl_vars['label']; ?>
','<?php echo $this->_tpl_vars['ID']; ?>
','<?php echo $this->_tpl_vars['EVENTID']; ?>
');" onmouseout="fnhide('crmspanid');">&nbsp;
							<span id="dtlview_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
">
								<font color="<?php echo $this->_tpl_vars['fontval']; ?>
">
									<?php if ($this->_tpl_vars['APP'][$this->_tpl_vars['keyval']] != ''): ?><?php echo $this->_tpl_vars['APP'][$this->_tpl_vars['keyval']]; ?>
<?php elseif ($this->_tpl_vars['MOD'][$this->_tpl_vars['keyval']] != ''): ?><?php echo $this->_tpl_vars['MOD'][$this->_tpl_vars['keyval']]; ?>
<?php else: ?><?php echo $this->_tpl_vars['keyval']; ?>
<?php endif; ?>
								</font>
							</span>
							<div id="editarea_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
" style="display:none;">
								<select id="txtbox_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
" name="<?php echo $this->_tpl_vars['keyfldname']; ?>
" class="small">
							        <?php $_from = $this->_tpl_vars['keyoptions']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['arr']):
?>
									<?php if ($this->_tpl_vars['arr'][0] == $this->_tpl_vars['APP']['LBL_NOT_ACCESSIBLE']): ?>	
							                	<option value="<?php echo $this->_tpl_vars['arr'][0]; ?>
" <?php echo $this->_tpl_vars['arr'][2]; ?>
><?php echo $this->_tpl_vars['arr'][0]; ?>
</option>
									<?php else: ?>
							        		<option value="<?php echo $this->_tpl_vars['arr'][1]; ?>
" <?php echo $this->_tpl_vars['arr'][2]; ?>
>
										<?php echo $this->_tpl_vars['arr'][0]; ?>

										</option>
									<?php endif; ?>
								<?php endforeach; endif; unset($_from); ?>
								</select>
							        <br>
								<input name="button_<?php echo $this->_tpl_vars['label']; ?>
" type="button" class="crmbutton small save" value="<?php echo $this->_tpl_vars['APP']['LBL_SAVE_LABEL']; ?>
" onclick="dtlViewAjaxSaveVTCallPotential('<?php echo $this->_tpl_vars['label']; ?>
','<?php echo $this->_tpl_vars['MODULE']; ?>
',<?php echo $this->_tpl_vars['keyid']; ?>
,'<?php echo $this->_tpl_vars['keytblname']; ?>
','<?php echo $this->_tpl_vars['keyfldname']; ?>
','<?php echo $this->_tpl_vars['ID']; ?>
','<?php echo $this->_tpl_vars['EVENTID']; ?>
');fnhide('crmspanid');"/>
								<?php echo $this->_tpl_vars['APP']['LBL_OR']; ?>

								<a href="javascript:;" onclick="hndCancel('dtlview_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
','editarea_<?php echo $this->_tpl_vars['ID']; ?>
_<?php echo $this->_tpl_vars['EVENTID']; ?>
_<?php echo $this->_tpl_vars['label']; ?>
','<?php echo $this->_tpl_vars['label']; ?>
')" class="link">
									<?php echo $this->_tpl_vars['APP']['LBL_CANCEL_BUTTON_LABEL']; ?>

								</a>
							</div>
							</td>
								<?php else: ?>
										<td width=25% class="dvtCellInfo" align="left" id="mouseArea_<?php echo $this->_tpl_vars['label']; ?>
"><?php echo $this->_tpl_vars['data']['value']; ?>
</td>
									<?php endif; ?> 
									
									
							   <?php endif; ?>
                             <?php endforeach; endif; unset($_from); ?>
						     </tr>	
						   <?php endforeach; endif; unset($_from); ?>	
                           
		</form>	
							<tr height="5px"><td>&nbsp;</td></tr>						   
                                 <tr><?php echo '<td colspan=4 class="dvInnerHeader2"><div style="float:left;font-weight:bold;"><div style="float:left;"><a onclick="javascript:showHideDetailViewActivityDetails(\'activitydetails'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\'imgad'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\''; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\''; ?><?php echo $this->_tpl_vars['contactid']; ?><?php echo '\',\'divad'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\''; ?><?php echo $this->_tpl_vars['DATEFORMAT_VTCALL']; ?><?php echo '\')" name="'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '" href="#'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '"><img style="border:0px;" id="imgad'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></div><b>&nbsp;'; ?><?php echo $this->_tpl_vars['MOD']['LBL_ACTIVITY_DETAILS']; ?><?php echo '</b></div></td>'; ?>

                                 </tr>
                                  <tr id="activitydetails<?php echo $this->_tpl_vars['EVENTID']; ?>
" bgcolor=white style=" display:none ">
                                    <td colspan="20">
                                        <div id="divad<?php echo $this->_tpl_vars['EVENTID']; ?>
">
                                        </div>
                                    </td>                   
                                  </tr>

							<tr height="5px"><td>&nbsp;</td></tr>						   
                                 <tr><?php echo '<td colspan=4 class="dvInnerHeader3"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideDetailViewEmailHistory(\'emailhistory'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\'imgeh'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\''; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\''; ?><?php echo $this->_tpl_vars['leadid']; ?><?php echo '\',\'diveh'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\'Leads\')"><img style="border:0px;" id="imgeh'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></div><b>&nbsp;'; ?><?php echo $this->_tpl_vars['MOD']['LBL_EMAIL_HISTORY']; ?><?php echo '</b></div></td>'; ?>

                                 </tr>
                                  <tr id="emailhistory<?php echo $this->_tpl_vars['EVENTID']; ?>
" bgcolor=white style=" display:none ">
                                    <td colspan="20">
                                        <div id="diveh<?php echo $this->_tpl_vars['EVENTID']; ?>
">
                                        </div>
                                    </td>                   
                                  </tr>

							<tr height="5px"><td>&nbsp;</td></tr>						   
                                 <tr><?php echo '<td colspan=4 class="dvInnerHeader4"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideDetailViewPendingActivities(\'contactpendingactivities'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\'imgcpa'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\''; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\''; ?><?php echo $this->_tpl_vars['leadid']; ?><?php echo '\',\'divcpa'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\'Leads\')"><img style="border:0px;" id="imgcpa'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></div><b>&nbsp;'; ?><?php echo $this->_tpl_vars['MOD']['LBL_LEAd_PENDING_ACTIVITIES']; ?><?php echo '</b></div></td>'; ?>

                                 </tr>
                                  <tr id="contactpendingactivities<?php echo $this->_tpl_vars['EVENTID']; ?>
" bgcolor=white style=" display:none ">
                                    <td colspan="20">
                                        <div id="divcpa<?php echo $this->_tpl_vars['EVENTID']; ?>
">
                                        </div>
                                    </td>                   
                                  </tr>

							<tr height="5px"><td>&nbsp;</td></tr>						   
                                 <tr><?php echo '<td colspan=4 class="dvInnerHeader4"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideDetailViewActivityHistory(\'contactactivityhistory'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\'imgcah'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\''; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\''; ?><?php echo $this->_tpl_vars['leadid']; ?><?php echo '\',\'divcah'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '\',\'Leads\')"><img style="border:0px;" id="imgcah'; ?><?php echo $this->_tpl_vars['EVENTID']; ?><?php echo '" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></div><b>&nbsp;'; ?><?php echo $this->_tpl_vars['MOD']['LBL_LEAD_ACTIVITY_HISTORY']; ?><?php echo '</b></div></td>'; ?>

                                 </tr>
                                  <tr id="contactactivityhistory<?php echo $this->_tpl_vars['EVENTID']; ?>
" bgcolor=white style=" display:none ">
                                    <td colspan="20">
                                        <div id="divcah<?php echo $this->_tpl_vars['EVENTID']; ?>
">
                                        </div>
                                    </td>                   
                                  </tr>
<!--
/*
*
* BLOCK END
*
*/
-->

                             </table>
							 </div>
<?php endif; ?>
                     	                      </td>
					   </tr>
			<?php endforeach; endif; unset($_from); ?>
                    			   
			
			</form>	
			<!-- End the form related to detail view -->			

		</table>		
		</td>
</tr>

</table>

<?php if ($this->_tpl_vars['MODULE'] == 'Products'): ?>
<script language="JavaScript" type="text/javascript" src="modules/Products/Productsslide.js"></script>
<script language="JavaScript" type="text/javascript">Carousel();</script>
<?php endif; ?>

<script>

function getTagCloud()
{
new Ajax.Request(
        'index.php',
        {queue: {position: 'end', scope: 'command'},
        method: 'post',
        postBody: 'module=<?php echo $this->_tpl_vars['MODULE']; ?>
&action=<?php echo $this->_tpl_vars['MODULE']; ?>
Ajax&file=TagCloud&ajxaction=GETTAGCLOUD&recordid=<?php echo $this->_tpl_vars['ID']; ?>
',
        onComplete: function(response) {
                                $("tagfields").innerHTML=response.responseText;
                                $("txtbox_tagfields").value ='';
                        }
        }
);
}
getTagCloud();
</script>
<!-- added for validation -->
<script language="javascript">
  var fieldname = new Array(<?php echo $this->_tpl_vars['VALIDATION_DATA_FIELDNAME']; ?>
);
  var fieldlabel = new Array(<?php echo $this->_tpl_vars['VALIDATION_DATA_FIELDLABEL']; ?>
);
  var fielddatatype = new Array(<?php echo $this->_tpl_vars['VALIDATION_DATA_FIELDDATATYPE']; ?>
);
  
  
</script>