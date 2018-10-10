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
* THUY@BORU 20110214
* Improved Call List
* 
*/

-->*}


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
