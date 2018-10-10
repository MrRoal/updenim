<style>
{literal}
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
{/literal}
</style>

<script language="javascript">
{literal}
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
	    'index.php',
	    {queue: {position: 'end', scope: 'command'},
            method: 'post',
            postBody: 'module=VTCall&action=VTCallAjax&file=saveVTCallSettings&ids='+url,
            onComplete: function(response) {
				$("ajaxMsg").innerHTML=response.responseText;
				window.location='index.php?module=VTCall&action=index&parenttab=My Home Page';
//				setInterval(function(){
//					location.href='index.php?module=VTCall&action=index&parenttab=My Home Page';
//				}, 1000);
            }
	    }
   );
 }


{/literal}
</script>

<div class="wrapper">
<table width="100%" align="center">
	<tr>
		<td>
			<div class="panelContainer">
				<h3> {$MOD.LBL_SELECT_ACTIVITY_TYPE}</h3>
				<table border=0 cellpadding=0 cellspacing=0 width="100%">
					<tr><td colspan="2" align="center"> <input type="button" value="{$MOD.LBL_SAVE}" onclick="saveSettings()">&nbsp;<input type="button" value="{$MOD.LBL_RESET}" onclick="location.href='index.php?module=VTCall&action=index&parenttab=My Home Page';"> </td></tr>
					<tr style='height:25px;'><td align="left" colspan="2"><div id="ajaxMsg"></div></td></tr>
					<tr style='background-color:#CCC;height:20px;'><th style='border:1px solid #FFF' width="30%">{$MOD.LBL_SELECT}</th> <th style='border:1px solid #FFF' width="70%">{$MOD.LBL_ACTIVITY_TYPE}</th></tr>
					{foreach from=$LISTENTITY key=k item=v}
							<tr><td align="center" class="checkme">
								<input type="checkbox" id="check_{$LISTIDS[$k]}" value="{$LISTIDS[$k]}"
								{foreach from=$SETTINGS key=sk item=sv}
									{if $sv eq $LISTIDS[$k]}
										checked="checked"
									{/if}
								{/foreach}
								>
							    </td>
							    <td class="checkme"> {$v}</td></tr>
					{/foreach}
				</table>
			<input type="hidden" value="{$NUM_ENTS}" id="totalEnts">
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div class="panelContainer">
				<h3 align="center"> Show only activities linked to the following record types </h3>
				<table border=0 cellpadding=0 cellspacing=0 width="100%">					
					<tr style='background-color:#CCC;height:20px;'><th style='border:1px solid #FFF' width="30%">{$MOD.LBL_SELECT}</th> <th style='border:1px solid #FFF' width="70%">Record type</th></tr>
					{foreach from=$LISTENTITYTYPE key=k item=v}
						<tr>
							<td align="center" class="checkme">
								<input type="checkbox" id="check_{$v.name}" value="{$v.name}" {$v.checked} onchange="saveCheckedType('{$v.name}', this.checked,'{$USERID}');">
						    </td>
						    <td class="checkme">{$v.name|@getTranslatedString:$v.name}</td>
						</tr>
					{/foreach}
				</table>			
			</div>
		</td>
	</tr>
	</table>
</div>
<script type="text/javascript">
{literal}
function saveCheckedType(module,checked,userid) {
	$("status").style.display="inline";
	var val=0;
	if(checked == true) {
		val=1;
	}
	new Ajax.Request(
               	'index.php',
                {queue: {position: 'end', scope: 'command'},
                       	method: 'post',
                        postBody:"module=VTCall&action=VTCallAjax&file=VTCallFunctions&ajax=true&save_select_type=true&select_module="+module+"&value="+val+"&userid="+userid,
						onComplete: function(response) {
								$("status").style.display="none";									
						}
                }
	);
}
{/literal}
</script>
