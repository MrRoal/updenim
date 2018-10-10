<!--
/*
*
* THUY@BORU 20110217
* Improved Call List
* 
*/
-->

     <form name="massdelete" method="POST">
    <input type="hidden" id="showStatus" name="showStatus" value="{$OPTIONSTARTUS}" />
    <input type="hidden" id="userget" name="userget" value="{$USERLIST}" />
     <input name='search_url' id="search_url" type='hidden' value='{$SEARCH_URL}'>
     <input name="idlist" id="idlist" type="hidden">
     <input name="change_owner" type="hidden">
     <input name="change_status" type="hidden">
     <input name="allids" type="hidden" value="{$ALLIDS}">
     <input name="selectedboxes" id="selectedboxes" type="hidden" value="{$SELECTEDIDS}">
     <input name="allselectedboxes" id="allselectedboxes" type="hidden" value="{$ALLSELECTEDIDS}">
     <input name="current_page_boxes" id="current_page_boxes" type="hidden" value="{$CURRENT_PAGE_BOXES}">

               <table border=0 cellspacing=1 cellpadding=0 width=100% class="lvtBg">
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
								<a href="index.php?module={$MODULE}&action=EditCustomView&parenttab={$CATEGORY}">{$APP.LNK_CV_CREATEVIEW}</a>
								<span class="small">|</span>
								<span class="small" disabled>{$APP.LNK_CV_EDIT}</span>
								<span class="small">|</span>
                            	<span class="small" disabled>{$APP.LNK_CV_DELETE}</span></td>
						    {else}
								<a href="index.php?module={$MODULE}&action=EditCustomView&parenttab={$CATEGORY}">{$APP.LNK_CV_CREATEVIEW}</a>
								<span class="small">|</span>
                                <a href="index.php?module={$MODULE}&action=EditCustomView&record={$VIEWID}&parenttab={$CATEGORY}">{$APP.LNK_CV_EDIT}</a>
                                <span class="small">|</span>
								<a href="javascript:confirmdelete('index.php?module={$MODULE}&action=DeleteCustomView&record={$VIEWID}&parenttab={$CATEGORY}')">{$APP.LNK_CV_DELETE}</a>
						    {/if}
							{if $CUSTOMVIEW_PERMISSION.ChangedStatus neq '' && $CUSTOMVIEW_PERMISSION.Label neq ''}
								<span class="small">|</span>	
							   		<a href="#" id="customstatus_id" onClick="ChangeCustomViewStatus({$VIEWID},{$CUSTOMVIEW_PERMISSION.Status},{$CUSTOMVIEW_PERMISSION.ChangedStatus},'{$MODULE}','{$CATEGORY}')">{$CUSTOMVIEW_PERMISSION.Label}</a>
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
			      </tr>
			      {foreach item=entity key=entity_id from=$LISTENTITY}
			      <tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_{$entity_id}">
<!--				 <td width="2%"><input type="checkbox" NAME="selected_id" id="{$entity_id}" value= '{$entity_id}' onClick=check_object(this); toggleSelectAll(this.name,"selectall")></td>-->
				 {foreach item=value key=check from=$entity}	
                                    {if ($check eq 'contactid')}
                                        {assign var=contactid value=$value}
                                    {else}
                                        {assign var=contactid value=''}
                                    {/if}
                                 {/foreach}
                 {if $contactid == '' }
					 <td width="2%"></td>
                 {else}
                     <td width="2%"><a href="javascript:showHideDetailViewVTCall('tbc{$entity_id}','tbl{$entity_id}','aid{$entity_id}','{$entity_id}','{$contactid}','{$DATEFORMAT_VTCALL}')"><img style="border:0px;" id="aid{$entity_id}" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>
				 {/if}                     
				 {foreach item=data key=number from=$entity}	
                 {if $number eq '0'}
				<td onMouseOver="vtlib_listview.trigger('cell.onmouseover', $(this))" onMouseOut="vtlib_listview.trigger('cell.onmouseout', $(this))">{$data}</td>
                 {/if}
                 {if $number neq 'contactid' }
				<td onMouseOver="vtlib_listview.trigger('cell.onmouseover', $(this))" onMouseOut="vtlib_listview.trigger('cell.onmouseout', $(this))">{$data}</td>
                {/if}
	                         {/foreach}                            
                
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
                </tr>
			      {foreachelse}
				<tr><td style="background-color:#efefef;height:340px" align="center" colspan="{$smarty.foreach.listviewforeach.iteration+1}">
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
<!--
/*
*
* BLOCK END
*
*/
-->             
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
</form>

<!--
/*
*
* BLOCK END
*
*/
-->