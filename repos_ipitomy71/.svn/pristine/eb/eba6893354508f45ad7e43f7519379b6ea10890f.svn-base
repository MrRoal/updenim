{*<!--
/*+********************************************************************************
  * The contents of this file are subject to the vtiger CRM Public License Version 1.0
  * ("License"); You may not use this file except in compliance with the License
  * The Original Code is:  vtiger CRM Open Source
  * The Initial Developer of the Original Code is vtiger.
  * Portions created by vtiger are Copyright (C) vtiger.
  * All Rights Reserved.
  *********************************************************************************/
-->*}
<div style="padding:10px;">
<table border=0 cellspacing=0 cellpadding=0 width=100% class="small" 
	style="border-bottom:1px solid #999999;padding:5px; background-color: #eeeeff; display:none">
	<tr>
		<td align="left">
			{$RELATEDLISTDATA.navigation.0}
			{if $MODULE eq 'Campaigns' && ($RELATED_MODULE eq 'Contacts' || $RELATED_MODULE eq 
				'Leads' || $RELATED_MODULE eq 'Accounts') && $RELATEDLISTDATA.entries|@count > 0}
				<br>{$APP.LBL_SELECT_BUTTON_LABEL}: <a href="javascript:void(0);"
					onclick="clear_checked_all('{$RELATED_MODULE}');">{$APP.LBL_NONE_NO_LINE}</a>
			{/if}
		</td>
		<td align="center">{$RELATEDLISTDATA.navigation.1} </td>
		<td align="right">
			{$RELATEDLISTDATA.CUSTOM_BUTTON}

			{if $HEADER eq 'Contacts' && $MODULE neq 'Campaigns' && $MODULE neq 'Accounts' && $MODULE neq 'Potentials' && $MODULE neq 'Products' && $MODULE neq 'Vendors'}
				{if $MODULE eq 'Calendar'}
					<input alt="{$APP.LBL_SELECT_CONTACT_BUTTON_LABEL}" title="{$APP.LBL_SELECT_CONTACT_BUTTON_LABEL}" accessKey="" class="crmbutton small edit" value="{$APP.LBL_SELECT_BUTTON_LABEL} {$APP.Contacts}" LANGUAGE=javascript onclick='return window.open("index.php?module=Contacts&return_module={$MODULE}&action=Popup&popuptype=detailview&select=enable&form=EditView&form_submit=false&recordid={$ID}{$search_string}","test","width=640,height=602,resizable=0,scrollbars=0");' type="button"  name="button"></td>
				{elseif $MODULE neq 'Services'}
					<input title="{$APP.LBL_ADD_NEW} {$APP.Contact}" accessyKey="F" class="crmbutton small create" onclick="this.form.action.value='EditView';this.form.module.value='Contacts'" type="submit" name="button" value="{$APP.LBL_ADD_NEW} {$APP.Contact}"></td>
				{/if}
			{elseif $HEADER eq 'Users' && $MODULE eq 'Calendar'}
				<input title="Change" accessKey="" tabindex="2" type="button" class="crmbutton small edit" value="{$APP.LBL_SELECT_USER_BUTTON_LABEL}" name="button" LANGUAGE=javascript onclick='return window.open("index.php?module=Users&return_module=Calendar&return_action={$return_modname}&activity_mode=Events&action=Popup&popuptype=detailview&form=EditView&form_submit=true&select=enable&return_id={$ID}&recordid={$ID}","test","width=640,height=525,resizable=0,scrollbars=0")';>
            {/if}
            
		</td>
	</tr>
</table>

<table border=0 cellspacing=1 cellpadding=3 width=100% style="background-color:#eaeaea;" class="small">
	<tr style="height:25px" bgcolor=white>
        {if $MODULE eq 'Campaigns' && ($RELATED_MODULE eq 'Contacts' || $RELATED_MODULE eq 'Leads' || $RELATED_MODULE eq 'Accounts')
			&& $RELATEDLISTDATA.entries|@count > 0}
		<td class="lvtCol">
			<input name ="{$RELATED_MODULE}_selectall" onclick="rel_toggleSelect(this.checked,'{$RELATED_MODULE}_selected_id','{$RELATED_MODULE}');"  type="checkbox">
		</td>
        {/if}
		{foreach key=index item=_HEADER_FIELD from=$RELATEDLISTDATA.header}
			{if $_HEADER_FIELD|strip_tags ne 'ID'}
			<td class="lvtCol">{$_HEADER_FIELD|strip_tags}</td>
			{/if}
		{/foreach}
	</tr>
	{foreach key=_RECORD_ID item=_RECORD from=$RELATEDLISTDATA.entries}
		<tr bgcolor=white>
        	{foreach key=index item=_RECORD_DATA from=$_RECORD}
				 {* vtlib customization: Trigger events on listview cell *}
				 {assign var=label$index value=label$index}
				 {if $index eq 0}
				 	{assign var=label value='Last Name'}
					{assign var=keyfldname value='lastname'}
				 {elseif $index eq 1}
				 	{assign var=label value='First Name'}
					{assign var=keyfldname value='firstname'}
				{elseif $index eq 2}
				 	{assign var=label value='Office Phone'}
					{assign var=keyfldname value='phone'}
				{elseif $index eq 3}
				 	{assign var=label value='Home Phone'}
					{assign var=keyfldname value='homephone'}
				{elseif $index eq 4}
				 	{assign var=label value='Mobile'}
					{assign var=keyfldname value='mobile'}
				{elseif $index eq 5}
				 	{assign var=label value='Email'}
					{assign var=keyfldname value='email'}
				{/if}
				{assign var='ID' value=$_RECORD[6]|strip_tags|trim}
				{assign var='EVENTID' value=$index}
				 {if $index lt'6'}
                 <td id="mouseArea_{$ID}_{$EVENTID}_{$label}" onmouseover="hndMouseOverVTCall(55,'{$label}','{$ID}','{$EVENTID}');" onmouseout="fnhide('crmspanid');" width="17%">
				 <span id="dtlview_{$ID}_{$EVENTID}_{$label}">{$_RECORD_DATA}</span>
			
					 <div id="editarea_{$ID}_{$EVENTID}_{$label}" style="display:none;">
								<input class="detailedViewTextBox" onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'" type="text" id="txtbox_{$ID}_{$EVENTID}_{$label}" name="{$keyfldname}" maxlength='100' value="{$_RECORD_DATA|strip_tags|trim}" style="width:125px">
								 
								<input name="button_{$label}" type="button" class="crmbutton small save" value="{$APP.LBL_SAVE_LABEL}" onclick="dtlViewAjaxSaveVTCallPotential('{$label}','Contacts',55,'vtiger_contactdetails','{$keyfldname}','{$ID}','{$EVENTID}');fnhide('crmspanid');"/>
								{$APP.LBL_OR}
								<a href="javascript:;" onclick="hndCancel('dtlview_{$ID}_{$EVENTID}_{$label}','editarea_{$ID}_{$EVENTID}_{$label}','{$label}')" class="link">
									{$APP.LBL_CANCEL_BUTTON_LABEL}
								</a>
							</div>
				 </td>
				 {/if}
                 {* END *}
			{/foreach}
		</tr>
	{foreachelse}
		<tr style="height: 25px;" bgcolor="white"><td><i>{$APP.LBL_NONE_INCLUDED}</i></td></tr>
	{/foreach}
</table>
</div>
{if $MODULE eq 'Campaigns' && ($RELATED_MODULE eq 'Contacts' || $RELATED_MODULE eq 'Leads' || $RELATED_MODULE eq 'Accounts')
			&& $RELATEDLISTDATA.entries|@count > 0 && $RESET_COOKIE eq 'true'}
			<script type='text/javascript'>set_cookie('{$RELATED_MODULE}_all', '');</script>
{/if}