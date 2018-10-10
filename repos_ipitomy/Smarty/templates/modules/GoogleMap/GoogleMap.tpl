<div id="dummies">
<script type="text/javascript" src="modules/GoogleMap/GoogleMap.js"></script>
<!--
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key={$KEY_JAVA}" type="text/javascript"></script>
-->

<script type="text/javascript" src="//maps.googleapis.com/maps/api/js?key={$google_api_key}&sensor=false"></script> {* dnguyen@boruapps.com 03062013 task_id=12199 *}

<script type="text/javascript">
	function shwhd(){ldelim}
		if(document.getElementById('shwhdResult').style.display== 'none'){ldelim}
			document.getElementById('shwhd').src= document.getElementById('shwhd').src.replace('inactivate', 'activate');
			document.getElementById('shwhdResult').style.display= 'inline';
		{rdelim}
		else if(document.getElementById('shwhdResult').style.display= 'inline'){ldelim}
			document.getElementById('shwhd').src= document.getElementById('shwhd').src.replace('activate', 'inactivate');
			document.getElementById('shwhdResult').style.display= 'none';
		{rdelim}
	{rdelim}
	var map;
  	function initialize() {ldelim}
  		/*if (GBrowserIsCompatible()) {ldelim}*/ // dnguyen@boruapps.com 03062013 task_id=12199 - begin
  			/*
	        blueIcon = new GIcon(G_DEFAULT_ICON);
	        blueIcon.image = "modules/GoogleMap/images/blue.png";
	        blueIcon.printImage = "modules/GoogleMap/images/blue.gif";
	        blueIcon.mozPrintImage = "modules/GoogleMap/images/blue.gif";
	
	        redIcon = new GIcon(G_DEFAULT_ICON);
	        redIcon.image = "modules/GoogleMap/images/red.png";
	        redIcon.printImage = "modules/GoogleMap/images/red.gif";
	        redIcon.mozPrintImage = "modules/GoogleMap/images/red.gif";			
			*/
			{$INIT_JAVASCRIPT}
			/*
      		map.setUIToDefault();
      		map.enableRotation();
      		*/
			//map.addControl(new MyPane());
			document.getElementById('map_legend').innerHTML = '{$MAP_LEGEND_CONTENT}';
  		/*{rdelim}*/ // dnguyen@boruapps.com 03062013 task_id=12199 - end
	{rdelim}
	
	function MyPane() {ldelim}{rdelim}
	/*MyPane.prototype = new GControl;*/ // dnguyen@boruapps.com 03062013 task_id=12199
	MyPane.prototype.initialize = function(map) {ldelim}
		var me = this;
		me.panel = document.createElement("div");
		me.panel.style.width = "100%";
		me.panel.style.height = "80px";
		me.panel.style.border = "1px solid gray";
		me.panel.style.background = "#EEEFDE";
		me.panel.overflow = "auto";
		me.panel.innerHTML = "<div id='map_legend' align='center' valign='middle' style='overflow:auto;height: 80px;'></div>";
		map.getContainer().appendChild(me.panel);
		return me.panel;
	{rdelim}
	
	MyPane.prototype.getDefaultPosition = function() {ldelim}
		return new GControlPosition(
		G_ANCHOR_BOTTOM_RIGHT, new GSize(0, -81));
		//Should be _ and not &#95;
	{rdelim}
	
	MyPane.prototype.getPanel = function() {ldelim}
		return me.panel;
	{rdelim}
</script>
<table width="100%" cellspacing="0" cellpadding="0" border="0" class="small">
	<tbody><tr><td style="height:2px">&nbsp;</td></tr>
	<tr>
		<td nowrap="" class="moduleName" style="padding-left:10px;padding-right:50px">
			<a href="index.php?module=GoogleMap&action=index&parenttab=Tools" class="hdrLink">Google Map</a>
		</td>
	<tr><td style="height:2px">&nbsp;</td></tr>
</tbody></table>
<table width="100%" height="100%" cellpadding="0" cellspacing="0" class="searchUIBasic"><tr>
	{if $included_panel}
	<td rowspan="2" style="width:20%;font-size: 13px; border-right: 1px solid rgb(102, 119, 136);" valign="top">
		<div style="border-bottom: 2px solid rgb(102, 119, 136);margin: 0px; padding: 5px; height: 20px;">
			<b>{$MOD.LBL_SHOW_RECORDS_ON_MAP}</b>
		</div>
		<div id="d1" style="margin: 0px; padding: 5px;font-size: 13px;">
			<form name="filterform" id="filterform">

                {* dnguyen@boruapps.com 01142014 task_id=18050 - begin *}
                <input type="hidden" name="recordid" value="{$smarty.request.recordid}"></input>
                <input type="hidden" name="rmodule" value="{$smarty.request.rmodule}"></input>
                {* dnguyen@boruapps.com 01142014 task_id=18050 - end *}

				<input type="hidden" value="GoogleMap" name="module"/>
				<input type="hidden" value="index" name="action"/>
				<input type="hidden" value="{$EXPAND_MODULE}" name="expandModule" id="expandModule" />
				<table width="100%" style="font-size: 13px;">
					{if $gglmp.sfaddress== 'Yes'}
					<tr>
						<td valign="top" width="50%">{$MOD.LBL_ADDRESS}</td>
						<td valign="top"><input type="text" name="address" id="address" value="{$ADDRESS}" style="width:160px;"></td>
					</tr>
					{/if}
					{if $gglmp.sfcity== 'Yes'}
					<tr>
						<td valign="top" width="50%">{$MOD.LBL_CITY}</td>
						<td valign="top"><input type="text" name="city" id="city" value="{$CITY}" style="width:160px;"></td>
					</tr>
					{/if}
					{if $gglmp.sfstate== 'Yes'}
					<tr>
						<td valign="top">{$MOD.LBL_STATE}</td>
						<td valign="top"><input type="text" name="state" id="state" value="{$STATE}" style="width:160px;"></td>
					</tr>
					{/if}
					{if $gglmp.sfzip== 'Yes'}
					<tr>
						<td valign="top">{$MOD.LBL_ZIP}</td>
						<td valign="top"><input type="text" name="zip" id="zip" value="{$ZIP}" style="width:160px;"></td>
					</tr>
					{/if}
					{if $gglmp.sfcountry== 'Yes'}
					<tr>
						<td valign="top">{$MOD.LBL_COUNTRY}</td>
						<td valign="top"><input type="text" name="country" id="country" value="{$COUNTRY}" style="width:160px;"></td>
					</tr>
					{/if}
					<tr>
						<td valign="top">{$MOD.LBL_RADIUS}</td>
						<td valign="top"><input type="text" size="4" value="{if $map_radius eq ''} 1 {else}{$map_radius}{/if}" name="map_radius" gtbfieldid="1"/ style="width:160px;"></td>
					</tr>					
					<tr>							
						<td valign="top" colspan="2">							
							<table width="100%" style="font-size: 13px;" border="0">
							<tr>
							{foreach from=$ncldd_pnl key=key item=value name=list_module}									
								{if $smarty.foreach.list_module.index % 1 == 0}
									<td width="10%">&nbsp;</td>
									<td>
										<input type="checkbox" value="{$key}"{if $ip.$key eq 'Yes'} checked="checked"{/if} name="show_all[]"/ onclick="ajaxRefresh('{$gglmp.on_demand}')"> {$value.label}
										{if $value.filter_field neq ''}
											<span id="filter_field_ex_{$key}" onmouseover="this.style.cursor='pointer';" style="cursor: pointer;{if $value.expand_module eq 1}display:none;{/if}" onclick="expandFilterField('{$key}',1);">[+]</span>
											<span id="filter_field_co_{$key}" onmouseover="this.style.cursor='pointer';" style="cursor: pointer;{if $value.expand_module eq 0}display:none;{/if}" onclick="expandFilterField('{$key}',0);">[-]</span>
											<div id="filter_field_div_{$key}" style="margin-left:15px;{if $value.expand_module eq 0}display:none;{/if}">
												{$value.filter_field}
											</div>
										{/if}
									</td>
									</tr><tr>
								{/if}
							{/foreach}
							</tr>
							</table>
						</td>
					</tr>
					<tr><td colspan="2" align="right"><input class="crmbutton create" type="button" name="search_button" value="{$MOD.LBL_SEARCH}" onclick="validateForm(this.form);" /></td></tr>
				</table>				
			</form>
		</div>
		
		<div id="d2" style="border-top: 2px solid rgb(102, 119, 136); overflow: auto; height: 618px; padding:5px 7px 0 7px;">
			<!--<a href="javascript:void(0);" onClick="marker.openInfoWindowHtml(selectedhtml);">
				<b>{$name}</b>
			</a><img src="{$im}" width="16" alt="{$name}"></img><br>
			<b>{$rmodule}</b><br>
			<div>{$dp}</div>
			<br><hr>-->
			{foreach item=contact_near key=i from=$CONTACT_NEARS}					
				<a href="javascript:void(0);" onClick="marker{$i}.info.open(map, marker{$i});marker{$i}.setAnimation(google.maps.Animation.BOUNCE);"> {* dnguyen@boruapps.com 03062013 task_id=12199 *}
					<b>{$contact_near.name}</b>
				</a><img src="{$contact_near.ic}" width="16" alt="{$contact_near.name}"></img><br>
				<b>{$contact_near.pmodule}</b><br>
				<div>{$contact_near.dp}</div>
				<br><hr>
			{/foreach}
		</div>
	</td>
	{/if}
	<td width="80%" id="d3">
		<div id="map" style="width:100%; height:700px; padding: 0; margin: 0;"></div>
	</td>
</tr>
<tr><td>    	
	<div id='map_legend' align='center' valign='middle' style='overflow:auto;height: 165px;border: 1px solid gray;background:#EEEFDE;'></div>
</td></tr>
</table>
{literal}
<script>
	// init google map
	initialize();	
	setMapHeight();
	
	function setMapHeight() {
		d1= document.getElementById('d1').offsetHeight;
		d2= document.getElementById('d2').offsetHeight;
		document.getElementById('map').style.height= (d1+ d2 - 100)+ 'px';
	}
	
	function expandFilterField(module, type) {
		var expandModule = document.getElementById("expandModule").value;
		if(type == 1) {
			document.getElementById("filter_field_div_" + module).style.display = "";
			document.getElementById("filter_field_ex_" + module).style.display = "none";
			document.getElementById("filter_field_co_" + module).style.display = "";
			expandModule += module + ';';
		} else {
			document.getElementById("filter_field_div_" + module).style.display = "none";
			document.getElementById("filter_field_ex_" + module).style.display = "";
			document.getElementById("filter_field_co_" + module).style.display = "none";
			temp = expandModule.split(';');
			expandModule = "";
			for(i = 0;i < temp.length;i++) {
				if(temp[i] != module && temp[i] != '') {
					expandModule += temp[i] + ';';
				}
			}
		}
		document.getElementById("expandModule").value = expandModule;
		setMapHeight();
	}
</script>
{/literal}
</div>

<div id="__vtigerjs_dialogbox_olayer__" class="small veil" style="z-index: 2147483647; height: 1093px; width: 100%; display: none; opacity: 0.3;"><img src="themes/images/close.gif" alt="X" style="right: 10px; top: 5px; position: absolute; cursor: pointer;"></div>
