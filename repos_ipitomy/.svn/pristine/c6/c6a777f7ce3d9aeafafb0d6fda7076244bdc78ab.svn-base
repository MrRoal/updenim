<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
<title>Show a Map of All Neaby Contacts (Radius Default: {if $map_radius eq ''} 1 {else}{$map_radius}{/if} miles)</title>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key={$KEY_JAVA}" type="text/javascript"></script>
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
  		if (GBrowserIsCompatible()) {ldelim}
	        blueIcon = new GIcon(G_DEFAULT_ICON);
	        blueIcon.image = "modules/GoogleMap/images/blue.png";
	        blueIcon.printImage = "modules/GoogleMap/images/blue.gif";
	        blueIcon.mozPrintImage = "modules/GoogleMap/images/blue.gif";
	
	        redIcon = new GIcon(G_DEFAULT_ICON);
	        redIcon.image = "modules/GoogleMap/images/red.png";
	        redIcon.printImage = "modules/GoogleMap/images/red.gif";
	        redIcon.mozPrintImage = "modules/GoogleMap/images/red.gif";			
			
			{$INIT_JAVASCRIPT}
			
      		map.setUIToDefault();
      		map.enableRotation();
      		
			//map.addControl(new MyPane());
			document.getElementById('map_legend').innerHTML = '{$MAP_LEGEND_CONTENT}';
  		{rdelim}
	{rdelim}
	
	function MyPane() {ldelim}{rdelim}
	MyPane.prototype = new GControl;
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

</head>
{if $NOT_SET neq ''}
<script type='text/javascript'>
    var data = 'index.php?module=GoogleMap&action=PopupMap&recordid={$recordid}&addtype=primary';
	window.location.replace(data);
</script>
{else}
<body style="margin:0px; padding:0px;font-family:arial" onLoad="initialize()">
    <table width="100%" height="100%" cellpadding="0" cellspacing="0"><tr>
    	{if $included_panel}
    	<td rowspan="2" style="width:20%;font-size: 13px; border: 1px solid rgb(102, 119, 136);" valign="top">
    		<div id="d1" style="margin: 0px; padding: 0px;font-size: 13px;">
				<form name="filterform">
					<input type="hidden" value="GoogleMap" name="module"/>
					<input type="hidden" value="PopupMap" name="action"/>
					<input type="hidden" value="{$recordid}" name="recordid"/>				
					<input type="hidden" value="{$addtype}" name="addtype"/>
					<input type="hidden" value="{$rmodule}" name="rmodule"/>
					<table width="100%" style="font-size: 13px;">
						<tr>
							<td valign="top">
								&nbsp;Radius <input type="text" size="4" value="{if $map_radius eq ''} 1 {else}{$map_radius}{/if}" name="map_radius" gtbfieldid="1"/> miles&nbsp;&nbsp;
								<input class="button" type="submit" value=" Go " />
							</td>
						</tr>
						<tr>							
							<td valign="top">
								<!--{if $ncldd_pnl.Contacts== 'Yes'}
								<input type="checkbox" value="Contacts" {if $ip.Contacts eq 'Yes'}checked=""{/if} name="show_all[]"/> Contacts
								<br>
								{/if}
								{if $ncldd_pnl.Accounts== 'Yes'}
								<input type="checkbox" value="Accounts" {if $ip.Accounts eq 'Yes'}checked=""{/if} name="show_all[]"/> Accounts
								<br>
								{/if}
								{if $ncldd_pnl.Leads== 'Yes'}
								<input type="checkbox" value="Leads" {if $ip.Leads eq 'Yes'}checked=""{/if} name="show_all[]"/> Leads
								{/if}-->
								<!--
								{if $ncldd_pnl.$rmodule== 'Yes'}
								<div><input type="checkbox" value="{$rmodule}" {if $all_rmodule neq ''}checked=""{/if} name="show_all[]"/> {$rmodule}</div>
								{/if}
								-->
								<!--<div style='margin-left:-14px;padding-left:-14px'>
								<a href='javascript:shwhd()'>
									<img id='shwhd' style='border:0px solid rgb(0, 0, 0)' src='themes/images/inactivate.gif'></img>
								</a>
								</div>
								<div style='display:none' id='shwhdResult'>-->
								{*
								{foreach from=$ncldd_pnl key=key item=value}
									{if $key neq 'Accounts'&& $key neq 'Contacts'&& $key neq 'Leads'}
									<div><input type="checkbox" value="{$key}"{if $ip.$key eq 'Yes'} checked="checked"{/if} name="show_all[]"/> {$key}</div>
									{/if}
								{/foreach}
								*}
								<!--</div>-->
								<table width="100%" style="font-size: 13px;">
								<tr>
								{foreach from=$ncldd_pnl key=key item=value name=list_module}									
									{if $smarty.foreach.list_module.index % 1 == 0}
										<td width="15%">&nbsp;</td><td><input type="checkbox" value="{$key}"{if $ip.$key eq 'Yes'} checked="checked"{/if} name="show_all[]"/> {$value}</td></tr><tr>
									{/if}
								{/foreach}
								</tr>
								</table>
							</td>
						</tr>
					</table>				
				</form>
			</div>
			
			<div id="d2" style="border-top: 2px solid rgb(102, 119, 136); overflow: auto; height: 575px; padding:5px 7px 0 7px;">
				<a href="javascript:void(0);" onClick="marker.openInfoWindowHtml(selectedhtml);">
					<b>{$name}</b>
				</a><img src="{$im}" width="16" alt="{$name}"></img><br>
				<b>{$rmodule}</b><br>
				<!-- 
				{$mailingstreet}<br>
				{$mailingcity}<br>
				{$mailingstate}
				 -->
				<div>{$dp}</div>
				<br><hr>
				{foreach item=contact_near key=i from=$CONTACT_NEARS}					
					<a href="javascript:void(0);" onClick="marker{$i}.openInfoWindowHtml(markerhtml{$i});">
						<b>{$contact_near.name}</b>
					</a><img src="{$contact_near.ic}" width="16" alt="{$contact_near.name}"></img><br>
					<b>{$contact_near.pmodule}</b><br>
					<!-- 
					{$contact_near.mailingstreet}<br>
					{$contact_near.mailingcity}<br>
					{$contact_near.mailingstate}
					 -->
					<div>{$contact_near.dp}</div>
					<br><hr>
				{/foreach}
			</div>
		</td>
		{/if}
    	<td width="80%" id="d3">
    		<div id="map" style="width:100%; height:100%; padding: 0; margin: 0;"></div>
    	</td>
    </tr>
    <tr><td>    	
    	<div id='map_legend' align='center' valign='middle' style='overflow:auto;height: 165px;border: 1px solid gray;background:#EEEFDE;'></div>
    </td></tr>
    </table>	  
</body>
{/if}
{literal}
<script>
	function setMapHeight() {
		/*
		var h1 = document.getElementById('d1').offsetHeight;
		var h2 = document.getElementById('d2').offsetHeight;
		var h = h1 + h2 - 155;
		document.getElementById('d3').style.height = h + 'px';
		*/
		document.getElementById('d3').style.height= (document.body.clientHeight+ 1)+ 'px';
		d1= document.getElementById('d1').offsetHeight;
		d3= document.getElementById('d3').offsetHeight;
		document.getElementById('d2').style.height= (d3+ 155- d1)+ 'px';
	}
	setMapHeight();
</script>
{/literal}
</html>