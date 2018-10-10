<?php /* Smarty version 2.6.18, created on 2014-04-15 18:36:21
         compiled from modules/VTCall/vt_callPanel.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'getTranslatedString', 'modules/VTCall/vt_callPanel.tpl', 116, false),)), $this); ?>
<style>
<?php echo '
.wrapper{
 width:100%;
 min-height:500px;
 height:auto;
 position:relative;
 float:left;
 clear:both;
 border:1px solid red;
}

.panelContainer{
 width: 300px;
 height: auto;
 position: relative;
 float:left;
 left: 50%;
 margin-left: -150px;
 margin-top: 30px;
 margin-bottom: 50px;
}

.checkme{
 background-color:#0066CC;
 border:1px solid #FFF;
 padding-left: 5px;
 color: #FFF;
 font-weight:bold;
 font-family: Arial;
}
'; ?>

</style>

<script language="javascript">
<?php echo '
 /**
 * Ezri April 3rd 2012
 * Will save into db which activity types to include in vtcall list
 * @params: --NONE-- Bases on checkbox selection
 * @result: --NONE-- Will update DB at backend
 */
 function saveSettings(){
  totalents = document.getElementById("totalEnts").value;
  entities = totalents.split("~|~");
  url = "";
  for (i=0; i < entities.length; i++) {
	//alert(entities[i]);
	tmp = "check_"+entities[i];
	isObjSel = document.getElementById(tmp).checked;
	//alert(tmp +" - "+ isObjSel);
	if(isObjSel){
		url = url + entities[i]  + "~||~";
	}
  }

  // AJAX CALL TO SAVE INTO DB
  new Ajax.Request(
	    \'index.php\',
	    {queue: {position: \'end\', scope: \'command\'},
            method: \'post\',
            postBody: \'module=VTCall&action=VTCallAjax&file=saveVTCallSettings&ids=\'+url,
            onComplete: function(response) {
				$("ajaxMsg").innerHTML=response.responseText;
				window.location=\'index.php?module=VTCall&action=index&parenttab=My Home Page\';
//				setInterval(function(){
//					location.href=\'index.php?module=VTCall&action=index&parenttab=My Home Page\';
//				}, 1000);
            }
	    }
   );
 }


'; ?>

</script>

<div class="wrapper">
<table width="100%" align="center">
	<tr>
		<td>
			<div class="panelContainer">
				<h3> <?php echo $this->_tpl_vars['MOD']['LBL_SELECT_ACTIVITY_TYPE']; ?>
</h3>
				<table border=0 cellpadding=0 cellspacing=0 width="100%">
					<tr><td colspan="2" align="center"> <input type="button" value="<?php echo $this->_tpl_vars['MOD']['LBL_SAVE']; ?>
" onclick="saveSettings()">&nbsp;<input type="button" value="<?php echo $this->_tpl_vars['MOD']['LBL_RESET']; ?>
" onclick="location.href='index.php?module=VTCall&action=index&parenttab=My Home Page';"> </td></tr>
					<tr style='height:25px;'><td align="left" colspan="2"><div id="ajaxMsg"></div></td></tr>
					<tr style='background-color:#CCC;height:20px;'><th style='border:1px solid #FFF' width="30%"><?php echo $this->_tpl_vars['MOD']['LBL_SELECT']; ?>
</th> <th style='border:1px solid #FFF' width="70%"><?php echo $this->_tpl_vars['MOD']['LBL_ACTIVITY_TYPE']; ?>
</th></tr>
					<?php $_from = $this->_tpl_vars['LISTENTITY']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
							<tr><td align="center" class="checkme">
								<input type="checkbox" id="check_<?php echo $this->_tpl_vars['LISTIDS'][$this->_tpl_vars['k']]; ?>
" value="<?php echo $this->_tpl_vars['LISTIDS'][$this->_tpl_vars['k']]; ?>
"
								<?php $_from = $this->_tpl_vars['SETTINGS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['sk'] => $this->_tpl_vars['sv']):
?>
									<?php if ($this->_tpl_vars['sv'] == $this->_tpl_vars['LISTIDS'][$this->_tpl_vars['k']]): ?>
										checked="checked"
									<?php endif; ?>
								<?php endforeach; endif; unset($_from); ?>
								>
							    </td>
							    <td class="checkme"> <?php echo $this->_tpl_vars['v']; ?>
</td></tr>
					<?php endforeach; endif; unset($_from); ?>
				</table>
			<input type="hidden" value="<?php echo $this->_tpl_vars['NUM_ENTS']; ?>
" id="totalEnts">
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div class="panelContainer">
				<h3 align="center"> Show only activities linked to the following record types </h3>
				<table border=0 cellpadding=0 cellspacing=0 width="100%">					
					<tr style='background-color:#CCC;height:20px;'><th style='border:1px solid #FFF' width="30%"><?php echo $this->_tpl_vars['MOD']['LBL_SELECT']; ?>
</th> <th style='border:1px solid #FFF' width="70%">Record type</th></tr>
					<?php $_from = $this->_tpl_vars['LISTENTITYTYPE']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['v']):
?>
						<tr>
							<td align="center" class="checkme">
								<input type="checkbox" id="check_<?php echo $this->_tpl_vars['v']['name']; ?>
" value="<?php echo $this->_tpl_vars['v']['name']; ?>
" <?php echo $this->_tpl_vars['v']['checked']; ?>
 onchange="saveCheckedType('<?php echo $this->_tpl_vars['v']['name']; ?>
', this.checked,'<?php echo $this->_tpl_vars['USERID']; ?>
');">
						    </td>
						    <td class="checkme"><?php echo getTranslatedString($this->_tpl_vars['v']['name'], $this->_tpl_vars['v']['name']); ?>
</td>
						</tr>
					<?php endforeach; endif; unset($_from); ?>
				</table>			
			</div>
		</td>
	</tr>
	</table>
</div>
<script type="text/javascript">
<?php echo '
function saveCheckedType(module,checked,userid) {
	$("status").style.display="inline";
	var val=0;
	if(checked == true) {
		val=1;
	}
	new Ajax.Request(
               	\'index.php\',
                {queue: {position: \'end\', scope: \'command\'},
                       	method: \'post\',
                        postBody:"module=VTCall&action=VTCallAjax&file=VTCallFunctions&ajax=true&save_select_type=true&select_module="+module+"&value="+val+"&userid="+userid,
						onComplete: function(response) {
								$("status").style.display="none";									
						}
                }
	);
}
'; ?>

</script>