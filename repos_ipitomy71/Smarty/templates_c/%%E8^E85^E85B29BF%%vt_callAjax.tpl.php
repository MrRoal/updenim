<?php /* Smarty version 2.6.18, created on 2014-04-15 18:36:17
         compiled from modules/VTCall/vt_callAjax.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'count', 'modules/VTCall/vt_callAjax.tpl', 59, false),array('modifier', 'vtiger_imageurl', 'modules/VTCall/vt_callAjax.tpl', 302, false),)), $this); ?>
<!--
/*
*
* THUY@BORU 20110217
* Improved Call List
*
*/
-->

     <form name="massdelete" method="POST">
    <input type="hidden" id="showStatus" name="showStatus" value="<?php echo $this->_tpl_vars['OPTIONSTARTUS']; ?>
" />
    <input type="hidden" id="userget" name="userget" value="<?php echo $this->_tpl_vars['USERLIST']; ?>
" />
     <input name='search_url' id="search_url" type='hidden' value='<?php echo $this->_tpl_vars['SEARCH_URL']; ?>
'>
     <input name="idlist" id="idlist" type="hidden">
     <input name="change_owner" type="hidden">
     <input name="change_status" type="hidden">
     <input name="allids" type="hidden" value="<?php echo $this->_tpl_vars['ALLIDS']; ?>
">
     <input name="selectedboxes" id="selectedboxes" type="hidden" value="<?php echo $this->_tpl_vars['SELECTEDIDS']; ?>
">
     <input name="allselectedboxes" id="allselectedboxes" type="hidden" value="<?php echo $this->_tpl_vars['ALLSELECTEDIDS']; ?>
">
     <input name="current_page_boxes" id="current_page_boxes" type="hidden" value="<?php echo $this->_tpl_vars['CURRENT_PAGE_BOXES']; ?>
">

               <table border=0 cellspacing=1 cellpadding=0 width=100% class="lvtBg">
			    <!-- Tarang 13/09/2012 -->
			<!-- <tr>
			<td nowrap width="30%" align="center">
			<table border=0 cellspacing=0 cellpadding=0 class="small" style="width:50px;background-color:#CCC;border:1px solid #333;padding:5px;">
				<tr>
						<td width="20%"><input type="radio" name="usertype" id="usertype1" value="mine" onclick="quickFilters('')" <?php if (isset ( $this->_tpl_vars['mineonly'] )): ?>checked<?php endif; ?>> <?php echo $this->_tpl_vars['MOD']['LBL_MINE_ONLY']; ?>
&nbsp;</td>
						<td width="20%"><input type="radio" name="usertype" id="usertype2" value="all"onclick="quickFilters('')" <?php if (isset ( $this->_tpl_vars['allusers'] )): ?>checked<?php endif; ?>> <?php echo $this->_tpl_vars['MOD']['LBL_ALL_USERS']; ?>
&nbsp;</td>
			   </tr>
			</table>
			 </td>
			 </tr>-->
		<!-- End Tarang  13/09/2012 -->
	            <tr>
		      <td>
		         <table border=0 cellspacing=0 cellpadding=2 width=100% class="small">
			      <tr>
				 <td style="padding-right:20px" nowrap>
                                 <?php $_from = $this->_tpl_vars['BUTTONS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['button_check'] => $this->_tpl_vars['button_label']):
?>
                                        <?php if ($this->_tpl_vars['button_check'] == 'del'): ?>
                                             <input class="crmbutton small delete" type="button" value="<?php echo $this->_tpl_vars['button_label']; ?>
" onClick="return massDelete('<?php echo $this->_tpl_vars['MODULE']; ?>
')"/>
                                        <?php elseif ($this->_tpl_vars['button_check'] == 's_mail'): ?>
                                             <input class="crmbutton small edit" type="button" value="<?php echo $this->_tpl_vars['button_label']; ?>
" onClick="return eMail('<?php echo $this->_tpl_vars['MODULE']; ?>
',this);"/>
                                        <?php elseif ($this->_tpl_vars['button_check'] == 's_cmail'): ?>
                                             <input class="crmbutton small edit" type="submit" value="<?php echo $this->_tpl_vars['button_label']; ?>
" onClick="return massMail('<?php echo $this->_tpl_vars['MODULE']; ?>
')"/>
                                        <?php elseif ($this->_tpl_vars['button_check'] == 'c_status'): ?>
                                             <input class="crmbutton small edit" type="button" value="<?php echo $this->_tpl_vars['button_label']; ?>
" onClick="return change(this,'changestatus')"/>
					<?php elseif ($this->_tpl_vars['button_check'] == 'c_owner'): ?>
						<?php if ($this->_tpl_vars['MODULE'] != 'Documents' && $this->_tpl_vars['MODULE'] != 'Products' && $this->_tpl_vars['MODULE'] != 'Faq' && $this->_tpl_vars['MODULE'] != 'Vendors' && $this->_tpl_vars['MODULE'] != 'PriceBooks'): ?>
						     <input class="crmbutton small edit" type="button" value="<?php echo $this->_tpl_vars['button_label']; ?>
" onClick="return change(this,'changeowner')"/>
                                                <?php endif; ?>
                                        <?php endif; ?>

                                 <?php endforeach; endif; unset($_from); ?>
                    </td>
					<td class="small" nowrap>
						<?php echo $this->_tpl_vars['recordListRange']; ?>

						<?php if (count($this->_tpl_vars['LISTENTITY']) > 0): ?>
							of <input class="crmbutton small create" type="button" value="Total" onClick="get_total_vtcall(this,'<?php echo $this->_tpl_vars['TOTAL']; ?>
')"/>
							<select onChange="changeListViewVTCall(this,'<?php echo $this->_tpl_vars['MODULE']; ?>
','<?php echo $this->_tpl_vars['CATEGORY']; ?>
')" class="small" id="viewnum" name="viewnum">
								<option value="25" <?php if ($this->_tpl_vars['VIEWNUM'] == '25'): ?> selected="selected" <?php endif; ?>>25</option>
								<option value="50" <?php if ($this->_tpl_vars['VIEWNUM'] == '50'): ?> selected="selected" <?php endif; ?>>50</option>
								<option value="75" <?php if ($this->_tpl_vars['VIEWNUM'] == '75'): ?> selected="selected" <?php endif; ?>>75</option>
								<option value="100" <?php if ($this->_tpl_vars['VIEWNUM'] == '100'): ?> selected="selected" <?php endif; ?>>100</option>
							</select>
						<?php endif; ?>
					</td>
					<!-- Page Navigation -->
					<td nowrap width="30%" align="center">
						<table border=0 cellspacing=0 cellpadding=0 class="small">
							<tr><?php echo $this->_tpl_vars['NAVIGATION']; ?>
</tr>
						</table>
	                		</td>
					<!-- Ezri April 2nd 2012, ::: To Print New Options to Filter data --- HICCUP-->
                                        <td>
                                                <?php if ($this->_tpl_vars['RF_COUNT'] > 0): ?>
                                                <table border=0 cellspacing=0 cellpadding=0 class="small" style="width:<?php echo $this->_tpl_vars['RF_TABLE_WIDTH']; ?>
px;background-color:#CCC;border:1px solid #333;padding:5px;">
                                                        <tr>
														<input type="hidden" name="callingOption" id="callingOption" value="all_dates"  />
														<input type="hidden" id="selectedOption" value="<?php echo $this->_tpl_vars['selectedOption']; ?>
"  />
														<?php if ($this->_tpl_vars['RADIO_FILTER']['all_dates'] == 'yes'): ?>
                                                                <td align="center" width="<?php echo $this->_tpl_vars['RF_TD_WIDTH']; ?>
px"><input type="radio" name="dateRange1" id="dateRange1" value="all_dates" onclick="quickFilters('all_dates')" <?php if (isset ( $this->_tpl_vars['optall'] )): ?>checked<?php endif; ?>><br><?php echo $this->_tpl_vars['MOD']['LBL_ALL_DATES']; ?>
</td>
                                                        <?php endif; ?>
                                                        <?php if ($this->_tpl_vars['RADIO_FILTER']['today'] == 'yes'): ?>
                                                                <td align="center" width="<?php echo $this->_tpl_vars['RF_TD_WIDTH']; ?>
px"><input type="radio" name="dateRange1" id="dateRange2" value="today" onclick="quickFilters('today')" <?php if (isset ( $this->_tpl_vars['opttoday'] )): ?>checked<?php endif; ?>><br><?php echo $this->_tpl_vars['MOD']['LBL_ALL_TODAY']; ?>
</td>
                                                        <?php endif; ?>
														<?php if ($this->_tpl_vars['RADIO_FILTER']['yesterday'] == 'yes'): ?>
                                                                <td align="center" width="<?php echo $this->_tpl_vars['RF_TD_WIDTH']; ?>
px"><input type="radio" name="dateRange1" id="dateRange3" value="yesterday" onclick="quickFilters('yesterday')" <?php if (isset ( $this->_tpl_vars['optyesterday'] )): ?>checked<?php endif; ?>><br><?php echo $this->_tpl_vars['MOD']['LBL_ALL_YESTERDAY']; ?>
</td>
                                                        <?php endif; ?>
                                                        <?php if ($this->_tpl_vars['RADIO_FILTER']['today_and_prior'] == 'yes'): ?>
                                                                <td align="center" width="100px"><input type="radio" name="dateRange1" id="dateRange4" value="today_and_prior" onclick="quickFilters('today_and_prior')" <?php if (isset ( $this->_tpl_vars['opttoday_and_prior'] )): ?>checked<?php endif; ?>><br>Today And Prior</td>
                                                        <?php endif; ?>

                                                        <?php if ($this->_tpl_vars['RADIO_FILTER']['last_7_days'] == 'yes'): ?>
                                                                <td align="center" width="<?php echo $this->_tpl_vars['RF_TD_WIDTH']; ?>
px"><input type="radio" name="dateRange1" id="dateRange5" value="last_7_days" onclick="quickFilters('last_7_days')" <?php if (isset ( $this->_tpl_vars['optlast_7_days'] )): ?>checked<?php endif; ?>><br>Last 7 Days</td>
                                                        <?php endif; ?>
                                                        <?php if ($this->_tpl_vars['RADIO_FILTER']['tomorrow'] == 'yes'): ?>
                                                                <td align="center" width="<?php echo $this->_tpl_vars['RF_TD_WIDTH']; ?>
px"><input type="radio" name="dateRange1" id="dateRange6" value="tomorrow" onclick="quickFilters('tomorrow')" <?php if (isset ( $this->_tpl_vars['opttomorrow'] )): ?>checked<?php endif; ?>><br><?php echo $this->_tpl_vars['MOD']['LBL_ALL_TOMORROW']; ?>
</td>
                                                    	<?php endif; ?>
														<?php if ($this->_tpl_vars['RADIO_FILTER']['this_week'] == 'yes'): ?>
                                                                <td align="center" width="<?php echo $this->_tpl_vars['RF_TD_WIDTH']; ?>
px"><input type="radio" name="dateRange1" id="dateRange7" value="thisweek" onclick="quickFilters('thisweek')" <?php if (isset ( $this->_tpl_vars['optthisweek'] )): ?>checked<?php endif; ?>><br><?php echo $this->_tpl_vars['MOD']['LBL_ALL_THIS_WEEK']; ?>
</td>
                                                        <?php endif; ?>
                                                        <?php if ($this->_tpl_vars['RADIO_FILTER']['next_week'] == 'yes'): ?>
                                                                <td align="center" width="<?php echo $this->_tpl_vars['RF_TD_WIDTH']; ?>
px"><input type="radio" name="dateRange1" id="dateRange8" value="nextweek" onclick="quickFilters('nextweek')" <?php if (isset ( $this->_tpl_vars['optnextweek'] )): ?>checked<?php endif; ?>><br><?php echo $this->_tpl_vars['MOD']['LBL_ALL_NEXT_WEEK']; ?>
</td>
                                                        <?php endif; ?>
                                                        </tr>
														<tr><td colspan="5" align="center">
															<div id="radioMessages" style='display:none; width:100%;text-align:center;color:red;font-weight:bold'></div>
														</td></tr>
                                                </table>
                                            <?php endif; ?>
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
						<td><?php echo $this->_tpl_vars['APP']['LBL_VIEW']; ?>
</td>
						<td style="padding-left:5px;padding-right:5px">
                            <SELECT NAME="viewname" id="viewname" class="small" onChange="showDefaultCustomViewVTCall(this,'<?php echo $this->_tpl_vars['MODULE']; ?>
','<?php echo $this->_tpl_vars['CATEGORY']; ?>
')"><?php echo $this->_tpl_vars['CUSTOMVIEW_OPTION']; ?>
</SELECT>
                        </td>
                        <td>
                            <?php if ($this->_tpl_vars['ALL'] == 'All'): ?>
								<a href="index.php?module=<?php echo $this->_tpl_vars['MODULE']; ?>
&action=EditCustomView&parenttab=<?php echo $this->_tpl_vars['CATEGORY']; ?>
"><?php echo $this->_tpl_vars['APP']['LNK_CV_CREATEVIEW']; ?>
</a>
								<span class="small">|</span>
								<span class="small" disabled><?php echo $this->_tpl_vars['APP']['LNK_CV_EDIT']; ?>
</span>
								<span class="small">|</span>
                            	<span class="small" disabled><?php echo $this->_tpl_vars['APP']['LNK_CV_DELETE']; ?>
</span></td>
						    <?php else: ?>
								<a href="index.php?module=<?php echo $this->_tpl_vars['MODULE']; ?>
&action=EditCustomView&parenttab=<?php echo $this->_tpl_vars['CATEGORY']; ?>
"><?php echo $this->_tpl_vars['APP']['LNK_CV_CREATEVIEW']; ?>
</a>
								<span class="small">|</span>
                                <a href="index.php?module=<?php echo $this->_tpl_vars['MODULE']; ?>
&action=EditCustomView&record=<?php echo $this->_tpl_vars['VIEWID']; ?>
&parenttab=<?php echo $this->_tpl_vars['CATEGORY']; ?>
"><?php echo $this->_tpl_vars['APP']['LNK_CV_EDIT']; ?>
</a>
                                <span class="small">|</span>
								<a href="javascript:confirmdelete('index.php?module=<?php echo $this->_tpl_vars['MODULE']; ?>
&action=DeleteCustomView&record=<?php echo $this->_tpl_vars['VIEWID']; ?>
&parenttab=<?php echo $this->_tpl_vars['CATEGORY']; ?>
')"><?php echo $this->_tpl_vars['APP']['LNK_CV_DELETE']; ?>
</a>
						    <?php endif; ?>
							<?php if ($this->_tpl_vars['CUSTOMVIEW_PERMISSION']['ChangedStatus'] != '' && $this->_tpl_vars['CUSTOMVIEW_PERMISSION']['Label'] != ''): ?>
								<span class="small">|</span>
							   		<a href="#" id="customstatus_id" onClick="ChangeCustomViewStatus(<?php echo $this->_tpl_vars['VIEWID']; ?>
,<?php echo $this->_tpl_vars['CUSTOMVIEW_PERMISSION']['Status']; ?>
,<?php echo $this->_tpl_vars['CUSTOMVIEW_PERMISSION']['ChangedStatus']; ?>
,'<?php echo $this->_tpl_vars['MODULE']; ?>
','<?php echo $this->_tpl_vars['CATEGORY']; ?>
')"><?php echo $this->_tpl_vars['CUSTOMVIEW_PERMISSION']['Label']; ?>
</a>
							<?php endif; ?>
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
				 <?php $_from = $this->_tpl_vars['LISTHEADER']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['listviewforeach'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['listviewforeach']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['header']):
        $this->_foreach['listviewforeach']['iteration']++;
?>
        			 <td class="lvtCol"><?php echo $this->_tpl_vars['header']; ?>
</td>
			         <?php endforeach; endif; unset($_from); ?>
					  <td class="lvtCol">Action</td>
			      </tr>
			      <?php $_from = $this->_tpl_vars['LISTENTITY']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['entity_id'] => $this->_tpl_vars['entity']):
?>

				 <?php $_from = $this->_tpl_vars['entity']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['check'] => $this->_tpl_vars['value']):
?>
                                     <?php if (( $this->_tpl_vars['check'] == 'contactid' ) && ( trim ( $this->_tpl_vars['check'] ) != "" )): ?>
                                        <?php $this->assign('contactid', $this->_tpl_vars['value']); ?>
                                    <?php elseif (( $this->_tpl_vars['check'] == 'contactid' ) && ( trim ( $this->_tpl_vars['check'] ) == "" )): ?>
                                        <?php $this->assign('contactid', ''); ?>
                                    <?php endif; ?>

                                    <?php if (( $this->_tpl_vars['check'] == 'accountid' ) && ( trim ( $this->_tpl_vars['check'] ) != "" )): ?>
                                        <?php $this->assign('accountid', $this->_tpl_vars['value']); ?>
                                    <?php elseif (( $this->_tpl_vars['check'] == 'accountid' ) && ( trim ( $this->_tpl_vars['check'] ) == "" )): ?>
                                        <?php $this->assign('accountid', ''); ?>
                                    <?php endif; ?>
                                    <?php if (( $this->_tpl_vars['check'] == 'entityid' ) && ( trim ( $this->_tpl_vars['check'] ) != "" )): ?>
                                        <?php $this->assign('entityid', $this->_tpl_vars['value']); ?>
                                    <?php elseif (( $this->_tpl_vars['check'] == 'entityid' ) && ( trim ( $this->_tpl_vars['check'] ) == "" )): ?>
                                        <?php $this->assign('entityid', ''); ?>
                                    <?php endif; ?>

				    <?php if (( $this->_tpl_vars['check'] == 'potentialid' ) && ( trim ( $this->_tpl_vars['check'] ) != "" )): ?>
                                        <?php $this->assign('potentialid', $this->_tpl_vars['value']); ?>
                                    <?php elseif (( $this->_tpl_vars['check'] == 'potentialid' ) && ( trim ( $this->_tpl_vars['check'] ) == "" )): ?>
                                        <?php $this->assign('potentialid', ''); ?>
                                    <?php endif; ?>

                                    <?php if (( $this->_tpl_vars['check'] == 'DisplayFor' ) && ( trim ( $this->_tpl_vars['check'] ) != "" )): ?>
                                        <?php $this->assign('DisplayFor', $this->_tpl_vars['value']); ?>
                                    <?php elseif (( $this->_tpl_vars['check'] == 'DisplayFor' ) && ( trim ( $this->_tpl_vars['check'] ) == "" )): ?>
                                        <?php $this->assign('DisplayFor', ''); ?>
				    <?php elseif (( $this->_tpl_vars['check'] == 'potentials' ) && ( trim ( $this->_tpl_vars['check'] ) != "" )): ?>
                                        <?php $this->assign('Potentials', $this->_tpl_vars['value']); ?>
                                    <?php elseif (( $this->_tpl_vars['check'] == 'potentials' ) && ( trim ( $this->_tpl_vars['check'] ) == "" )): ?>
                                        <?php $this->assign('Potentials', ''); ?>
				    <?php elseif (( $this->_tpl_vars['check'] == 'accounts' ) && ( trim ( $this->_tpl_vars['check'] ) != "" )): ?>
					<?php $this->assign('PotentialAccounts', $this->_tpl_vars['value']); ?>
				    <?php elseif (( $this->_tpl_vars['check'] == 'accounts' ) && ( trim ( $this->_tpl_vars['check'] ) == "" )): ?>
					<?php $this->assign('PotentialAccounts', ''); ?>
				    <?php elseif (( $this->_tpl_vars['check'] == 'contacts' ) && ( trim ( $this->_tpl_vars['check'] ) != "" )): ?>
                                        <?php $this->assign('PotentialContacts', $this->_tpl_vars['value']); ?>
                                    <?php elseif (( $this->_tpl_vars['check'] == 'contacts' ) && ( trim ( $this->_tpl_vars['check'] ) == "" )): ?>
                                        <?php $this->assign('PotentialContacts', ''); ?>
                                    <?php endif; ?>
                                 <?php endforeach; endif; unset($_from); ?>
<!--<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_<?php echo $this->_tpl_vars['entity_id']; ?>
">-->
<?php if ($this->_tpl_vars['entity']['line_color']['line_color'] != '#FFFFFF'): ?>		      
  	<style>
		.vtcall_lv_<?php echo $this->_tpl_vars['entity_id']; ?>
 a {
			color: <?php echo $this->_tpl_vars['entity']['line_color']['text_color']; ?>
;
		}
	</style>
<?php endif; ?>

<tr bgcolor="<?php echo $this->_tpl_vars['entity']['line_color']['line_color']; ?>
" class="vtcall_lv_<?php echo $this->_tpl_vars['entity_id']; ?>
" <?php if ($this->_tpl_vars['entity']['line_color']['line_color'] != '#FFFFFF'): ?> style="color:<?php echo $this->_tpl_vars['entity']['line_color']['text_color']; ?>
;" onMouseOut="this.style.color='<?php echo $this->_tpl_vars['entity']['line_color']['text_color']; ?>
';this.className='vtcall_lv_<?php echo $this->_tpl_vars['entity_id']; ?>
';" <?php else: ?>  onMouseOut="this.style.color='#000000';this.className='vtcall_lv_<?php echo $this->_tpl_vars['entity_id']; ?>
';"  <?php endif; ?> onMouseOver="this.className='lvtColDataHover'; this.style.color='#000000';" id="row_<?php echo $this->_tpl_vars['entity_id']; ?>
">
<?php if ($this->_tpl_vars['DisplayFor'] != ''): ?>
	<?php if ($this->_tpl_vars['DisplayFor'] == 'Accounts'): ?>
		<td width="2%"><input type='hidden' value='<?php echo $this->_tpl_vars['Potentials']; ?>
' id='pot_<?php echo $this->_tpl_vars['entity_id']; ?>
'><a href="javascript:showHideDetailViewVTCallAccounts('tbc<?php echo $this->_tpl_vars['entity_id']; ?>
','tbl<?php echo $this->_tpl_vars['entity_id']; ?>
','aid<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['accountid']; ?>
','<?php echo $this->_tpl_vars['DATEFORMAT_VTCALL']; ?>
','<?php echo $this->_tpl_vars['VIEWID']; ?>
')"><img style="border:0px;" id="aid<?php echo $this->_tpl_vars['entity_id']; ?>
" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>
	<?php elseif ($this->_tpl_vars['contactid'] != ''): ?>
		<td width="2%"><input type='hidden' value='<?php echo $this->_tpl_vars['Potentials']; ?>
' id='pot_<?php echo $this->_tpl_vars['entity_id']; ?>
'><a href="javascript:showHideDetailViewVTCall('tbc<?php echo $this->_tpl_vars['entity_id']; ?>
','tbl<?php echo $this->_tpl_vars['entity_id']; ?>
','aid<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['contactid']; ?>
','<?php echo $this->_tpl_vars['DATEFORMAT_VTCALL']; ?>
','<?php echo $this->_tpl_vars['VIEWID']; ?>
')"><img style="border:0px;" id="aid<?php echo $this->_tpl_vars['entity_id']; ?>
" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>
	<?php elseif ($this->_tpl_vars['DisplayFor'] == 'Leads'): ?>
		<td width="2%"><a href="javascript:showHideDetailViewVTCallLeads('tbc<?php echo $this->_tpl_vars['entity_id']; ?>
','tbl<?php echo $this->_tpl_vars['entity_id']; ?>
','aid<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['accountid']; ?>
','<?php echo $this->_tpl_vars['DATEFORMAT_VTCALL']; ?>
','<?php echo $this->_tpl_vars['VIEWID']; ?>
')"><img style="border:0px;" id="aid<?php echo $this->_tpl_vars['entity_id']; ?>
" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>
	<?php elseif ($this->_tpl_vars['DisplayFor'] == 'Quotes'): ?>
        <td width="2%"><a href="javascript:showHideDetailViewVTCallQuotes('tbc<?php echo $this->_tpl_vars['entity_id']; ?>
','tbl<?php echo $this->_tpl_vars['entity_id']; ?>
','aid<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['quoteid']; ?>
','<?php echo $this->_tpl_vars['DATEFORMAT_VTCALL']; ?>
','<?php echo $this->_tpl_vars['VIEWID']; ?>
')"><img style="border:0px;" id="aid<?php echo $this->_tpl_vars['entity_id']; ?>
" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>
    <?php elseif ($this->_tpl_vars['DisplayFor'] == 'SalesOrder'): ?>
        <td width="2%"><a href="javascript:showHideDetailViewVTCallSalesOrder('tbc<?php echo $this->_tpl_vars['entity_id']; ?>
','tbl<?php echo $this->_tpl_vars['entity_id']; ?>
','aid<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['quoteid']; ?>
','<?php echo $this->_tpl_vars['DATEFORMAT_VTCALL']; ?>
','<?php echo $this->_tpl_vars['VIEWID']; ?>
')"><img style="border:0px;" id="aid<?php echo $this->_tpl_vars['entity_id']; ?>
" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
    <?php elseif ($this->_tpl_vars['DisplayFor'] == 'Invoice'): ?>
        <td width="2%"><a href="javascript:showHideDetailViewVTCallInvoice('tbc<?php echo $this->_tpl_vars['entity_id']; ?>
','tbl<?php echo $this->_tpl_vars['entity_id']; ?>
','aid<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['quoteid']; ?>
','<?php echo $this->_tpl_vars['DATEFORMAT_VTCALL']; ?>
','<?php echo $this->_tpl_vars['VIEWID']; ?>
')"><img style="border:0px;" id="aid<?php echo $this->_tpl_vars['entity_id']; ?>
" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
        </td>
	<?php elseif ($this->_tpl_vars['DisplayFor'] == 'Potentials'): ?>
		<td width="2%">
			<?php if ($this->_tpl_vars['check'] != ""): ?>
				<input type='hidden' value='<?php echo $this->_tpl_vars['PotentialAccounts']; ?>
' id='potAcc_<?php echo $this->_tpl_vars['entity_id']; ?>
'>
			<?php endif; ?>
			<?php if ($this->_tpl_vars['check'] != 'accounts'): ?>
				<input type='hidden' value='<?php echo $this->_tpl_vars['PotentialContacts']; ?>
' id='potCon_<?php echo $this->_tpl_vars['entity_id']; ?>
'>
			<?php else: ?>
			<input type='hidden' value='' id='potCon_<?php echo $this->_tpl_vars['entity_id']; ?>
'>
			<?php endif; ?>
				<a href="javascript:showHideDetailViewVTCallPotentials('tbc<?php echo $this->_tpl_vars['entity_id']; ?>
','tbl<?php echo $this->_tpl_vars['entity_id']; ?>
','aid<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['potentialid']; ?>
','<?php echo $this->_tpl_vars['DATEFORMAT_VTCALL']; ?>
','<?php echo $this->_tpl_vars['VIEWID']; ?>
')"><img style="border:0px;" id="aid<?php echo $this->_tpl_vars['entity_id']; ?>
" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a></td>
	<?php else: ?>
		<td width="2%"><a href="javascript:showHideDetailViewVTCall('tbc<?php echo $this->_tpl_vars['entity_id']; ?>
','tbl<?php echo $this->_tpl_vars['entity_id']; ?>
','aid<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['entity_id']; ?>
','<?php echo $this->_tpl_vars['entityid']; ?>
','<?php echo $this->_tpl_vars['DATEFORMAT_VTCALL']; ?>
','<?php echo $this->_tpl_vars['VIEWID']; ?>
','<?php echo $this->_tpl_vars['DisplayFor']; ?>
')"><img style="border:0px;" id="aid<?php echo $this->_tpl_vars['entity_id']; ?>
" alt="Display" title="Display" src="themes/images/inactivate.gif" /></a>
        </td>
	<?php endif; ?>
<?php else: ?>
	<td width="2%">&nbsp;</td>
<?php endif; ?>
<?php $_from = $this->_tpl_vars['entity']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['number'] => $this->_tpl_vars['data']):
?>
<?php if ($this->_tpl_vars['number'] == '0'): ?>
<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><?php echo $this->_tpl_vars['data']; ?>
&nbsp;</td>
<?php endif; ?>
<?php if ($this->_tpl_vars['number'] != 'contactid'): ?>
<?php if ($this->_tpl_vars['number'] == 'accountid' || $this->_tpl_vars['number'] == 'DisplayFor' || $this->_tpl_vars['number'] == 'potentials' || $this->_tpl_vars['number'] == 'potentialid' || $this->_tpl_vars['number'] == 'accounts' || $this->_tpl_vars['number'] == 'contacts' || $this->_tpl_vars['number'] == 'line_color' || $this->_tpl_vars['number'] == 'entityid'): ?>
<?php else: ?>
<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><?php echo $this->_tpl_vars['data']; ?>
&nbsp;</td>
<?php endif; ?>
<?php endif; ?>
<?php endforeach; endif; unset($_from); ?>
   <td><a href='javascript:confirmdelete("index.php?module=Calendar&action=Delete&record=<?php echo $this->_tpl_vars['entity_id']; ?>
&return_module=VTCall&return_action=index&viewname=<?php echo $this->_tpl_vars['VIEWID']; ?>
")'>Del</a> <span style="float:right"> <a href="javascript:void(0)" onclick="updateActivityDate('<?php echo $this->_tpl_vars['entity_id']; ?>
')">+1</a></span></td>
</tr>
                  <tr id="tbc<?php echo $this->_tpl_vars['entity_id']; ?>
" bgcolor=white style=" display:none ">
                    <td colspan="20">
                        <div id="divc<?php echo $this->_tpl_vars['entity_id']; ?>
">
                        </div>
                    </td>
                  </tr>
                  <tr id="tbl<?php echo $this->_tpl_vars['entity_id']; ?>
" bgcolor=white style=" display:none ">
                    <td colspan="20">
                        <div id="div<?php echo $this->_tpl_vars['entity_id']; ?>
">
                        </div>
                    </td>
                  </tr>
                </tr>
			      <?php endforeach; else: ?>
				<tr><td style="background-color:#efefef;height:340px" align="center" colspan="<?php echo $this->_foreach['listviewforeach']['iteration']+2; ?>
">
						<div style="border: 3px solid rgb(153, 153, 153); background-color: rgb(255, 255, 255); width: 45%; position: relative; z-index: 10000000;">
							<?php $this->assign('vowel_conf', 'LBL_A'); ?>
							<?php $this->assign('MODULE_CREATE', $this->_tpl_vars['SINGLE_MOD']); ?>

							<?php if ($this->_tpl_vars['CHECK']['EditView'] == 'yes' && $this->_tpl_vars['MODULE'] != 'Emails' && $this->_tpl_vars['MODULE'] != 'Webmails'): ?>

							<table border="0" cellpadding="5" cellspacing="0" width="98%">
							<tr>
								<td rowspan="2" width="25%"><img src="<?php echo vtiger_imageurl('empty.jpg', $this->_tpl_vars['THEME']); ?>
" height="60" width="61"></td>
								<td style="border-bottom: 1px solid rgb(204, 204, 204);" nowrap="nowrap" width="75%"><span class="genHeaderSmall"><?php echo $this->_tpl_vars['APP']['LBL_NO']; ?>
 <?php echo $this->_tpl_vars['APP']['ACTIVITIES']; ?>
 <?php echo $this->_tpl_vars['APP']['LBL_FOUND']; ?>
 !</span></td>

							</tr>
							<tr>
							<td class="small" align="left" nowrap="nowrap"><?php echo $this->_tpl_vars['APP']['LBL_YOU_CAN_CREATE']; ?>
 <?php echo $this->_tpl_vars['APP'][$this->_tpl_vars['vowel_conf']]; ?>
 <?php echo $this->_tpl_vars['APP'][$this->_tpl_vars['MODULE_CREATE']]; ?>
 <?php echo $this->_tpl_vars['APP']['LBL_NOW']; ?>
. <?php echo $this->_tpl_vars['APP']['LBL_CLICK_THE_LINK']; ?>
:<br>
									&nbsp;&nbsp;-<a href="index.php?module=<?php echo $this->_tpl_vars['MODULE']; ?>
&action=EditView&return_module=Calendar&activity_mode=Events&return_action=DetailView&parenttab=<?php echo $this->_tpl_vars['CATEGORY']; ?>
"><?php echo $this->_tpl_vars['APP']['LBL_CREATE']; ?>
 <?php echo $this->_tpl_vars['APP']['LBL_AN']; ?>
 <?php echo $this->_tpl_vars['APP']['Event']; ?>
</a><br>
									&nbsp;&nbsp;-<a href="index.php?module=<?php echo $this->_tpl_vars['MODULE']; ?>
&action=EditView&return_module=Calendar&activity_mode=Task&return_action=DetailView&parenttab=<?php echo $this->_tpl_vars['CATEGORY']; ?>
"><?php echo $this->_tpl_vars['APP']['LBL_CREATE']; ?>
 <?php echo $this->_tpl_vars['APP']['LBL_A']; ?>
 <?php echo $this->_tpl_vars['APP']['Todo']; ?>
</a>
								</td>
							</tr>
							</table>
							<?php else: ?>
							<table border="0" cellpadding="5" cellspacing="0" width="98%">
							<tr>
								<td rowspan="2" width="25%"><img src="<?php echo vtiger_imageurl('empty.jpg', $this->_tpl_vars['THEME']); ?>
" height="60" width="61"></td>
								<td style="border-bottom: 1px solid rgb(204, 204, 204);" nowrap="nowrap" width="75%"><span class="genHeaderSmall"><?php echo $this->_tpl_vars['APP']['LBL_NO']; ?>
 <?php echo $this->_tpl_vars['APP']['ACTIVITIES']; ?>
 <?php echo $this->_tpl_vars['APP']['LBL_FOUND']; ?>
 !</span></td>
							</tr>
							<tr>
								<td class="small" align="left" nowrap="nowrap"><?php echo $this->_tpl_vars['APP']['LBL_YOU_ARE_NOT_ALLOWED_TO_CREATE']; ?>
 <?php echo $this->_tpl_vars['APP'][$this->_tpl_vars['vowel_conf']]; ?>
 <?php echo $this->_tpl_vars['APP'][$this->_tpl_vars['MODULE_CREATE']]; ?>
<br>
								</td>
							</tr>
							</table>
							<?php endif; ?>
						</div>
				</td></tr>
			      <?php endif; unset($_from); ?>
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
                                 <?php $_from = $this->_tpl_vars['BUTTONS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['button_check'] => $this->_tpl_vars['button_label']):
?>
                                        <?php if ($this->_tpl_vars['button_check'] == 'del'): ?>
                                            <input class="crmbutton small delete" type="button" value="<?php echo $this->_tpl_vars['button_label']; ?>
" onClick="return massDelete('<?php echo $this->_tpl_vars['MODULE']; ?>
')"/>
                                        <?php elseif ($this->_tpl_vars['button_check'] == 's_mail'): ?>
                                             <input class="crmbutton small edit" type="button" value="<?php echo $this->_tpl_vars['button_label']; ?>
" onClick="return eMail('<?php echo $this->_tpl_vars['MODULE']; ?>
',this)"/>
                                        <?php elseif ($this->_tpl_vars['button_check'] == 's_cmail'): ?>
                                             <input class="crmbutton small edit" type="submit" value="<?php echo $this->_tpl_vars['button_label']; ?>
" onClick="return massMail('<?php echo $this->_tpl_vars['MODULE']; ?>
')"/>
                                        <?php elseif ($this->_tpl_vars['button_check'] == 'c_status'): ?>
                                             <input class="crmbutton small edit" type="button" value="<?php echo $this->_tpl_vars['button_label']; ?>
" onClick="return change(this,'changestatus')"/>
					<?php elseif ($this->_tpl_vars['button_check'] == 'c_owner'): ?>
				                <?php if ($this->_tpl_vars['MODULE'] != 'Documents' && $this->_tpl_vars['MODULE'] != 'Products' && $this->_tpl_vars['MODULE'] != 'Faq' && $this->_tpl_vars['MODULE'] != 'Vendors' && $this->_tpl_vars['MODULE'] != 'PriceBooks'): ?>
                                                     <input class="crmbutton small edit" type="button" value="<?php echo $this->_tpl_vars['button_label']; ?>
" onClick="return change(this,'changeowner')"/>
                                                <?php endif; ?>
                                        <?php endif; ?>

                                 <?php endforeach; endif; unset($_from); ?>
                    </td>
					<td class="small" nowrap>
						<?php echo $this->_tpl_vars['recordListRange']; ?>

						<?php if (count($this->_tpl_vars['LISTENTITY']) > 0): ?>
							of <input class="crmbutton small create" type="button" value="Total" onClick="get_total_vtcall(this,'<?php echo $this->_tpl_vars['TOTAL']; ?>
')"/>
							<select onChange="changeListViewVTCall(this,'<?php echo $this->_tpl_vars['MODULE']; ?>
','<?php echo $this->_tpl_vars['CATEGORY']; ?>
')" class="small" id="viewnum" name="viewnum">
								<option value="25" <?php if ($this->_tpl_vars['VIEWNUM'] == '25'): ?> selected="selected" <?php endif; ?>>25</option>
								<option value="50" <?php if ($this->_tpl_vars['VIEWNUM'] == '50'): ?> selected="selected" <?php endif; ?>>50</option>
								<option value="75" <?php if ($this->_tpl_vars['VIEWNUM'] == '75'): ?> selected="selected" <?php endif; ?>>75</option>
								<option value="100" <?php if ($this->_tpl_vars['VIEWNUM'] == '100'): ?> selected="selected" <?php endif; ?>>100</option>
							</select>
						<?php endif; ?>
					</td>
					<!-- Page Navigation -->
					<td nowrap width="30%" align="center">
						<table border=0 cellspacing=0 cellpadding=0 class="small">
							<tr><?php echo $this->_tpl_vars['NAVIGATION']; ?>
</tr>
						</table>
	                </td>
				 <td align="right" width=100%>
				   <table border=0 cellspacing=0 cellpadding=0 class="small">
					<tr>
                                           <?php echo $this->_tpl_vars['WORDTEMPLATEOPTIONS']; ?>
<?php echo $this->_tpl_vars['MERGEBUTTON']; ?>

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