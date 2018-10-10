<?php /* Smarty version 2.6.18, created on 2014-04-15 02:27:55
         compiled from modules/GoogleMap/GoogleMap.tpl */ ?>
<div id="dummies">
<script type="text/javascript" src="modules/GoogleMap/GoogleMap.js"></script>
<!--
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=<?php echo $this->_tpl_vars['KEY_JAVA']; ?>
" type="text/javascript"></script>
-->

<script type="text/javascript" src="//maps.googleapis.com/maps/api/js?key=<?php echo $this->_tpl_vars['google_api_key']; ?>
&sensor=false"></script> 
<script type="text/javascript">
	function shwhd(){
		if(document.getElementById('shwhdResult').style.display== 'none'){
			document.getElementById('shwhd').src= document.getElementById('shwhd').src.replace('inactivate', 'activate');
			document.getElementById('shwhdResult').style.display= 'inline';
		}
		else if(document.getElementById('shwhdResult').style.display= 'inline'){
			document.getElementById('shwhd').src= document.getElementById('shwhd').src.replace('activate', 'inactivate');
			document.getElementById('shwhdResult').style.display= 'none';
		}
	}
	var map;
  	function initialize() {
  		/*if (GBrowserIsCompatible()) {*/ // dnguyen@boruapps.com 03062013 task_id=12199 - begin
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
			<?php echo $this->_tpl_vars['INIT_JAVASCRIPT']; ?>

			/*
      		map.setUIToDefault();
      		map.enableRotation();
      		*/
			//map.addControl(new MyPane());
			document.getElementById('map_legend').innerHTML = '<?php echo $this->_tpl_vars['MAP_LEGEND_CONTENT']; ?>
';
  		/*}*/ // dnguyen@boruapps.com 03062013 task_id=12199 - end
	}
	
	function MyPane() {}
	/*MyPane.prototype = new GControl;*/ // dnguyen@boruapps.com 03062013 task_id=12199
	MyPane.prototype.initialize = function(map) {
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
	}
	
	MyPane.prototype.getDefaultPosition = function() {
		return new GControlPosition(
		G_ANCHOR_BOTTOM_RIGHT, new GSize(0, -81));
		//Should be _ and not &#95;
	}
	
	MyPane.prototype.getPanel = function() {
		return me.panel;
	}
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
	<?php if ($this->_tpl_vars['included_panel']): ?>
	<td rowspan="2" style="width:20%;font-size: 13px; border-right: 1px solid rgb(102, 119, 136);" valign="top">
		<div style="border-bottom: 2px solid rgb(102, 119, 136);margin: 0px; padding: 5px; height: 20px;">
			<b><?php echo $this->_tpl_vars['MOD']['LBL_SHOW_RECORDS_ON_MAP']; ?>
</b>
		</div>
		<div id="d1" style="margin: 0px; padding: 5px;font-size: 13px;">
			<form name="filterform" id="filterform">

                                <input type="hidden" name="recordid" value="<?php echo $_REQUEST['recordid']; ?>
"></input>
                <input type="hidden" name="rmodule" value="<?php echo $_REQUEST['rmodule']; ?>
"></input>
                
				<input type="hidden" value="GoogleMap" name="module"/>
				<input type="hidden" value="index" name="action"/>
				<input type="hidden" value="<?php echo $this->_tpl_vars['EXPAND_MODULE']; ?>
" name="expandModule" id="expandModule" />
				<table width="100%" style="font-size: 13px;">
					<?php if ($this->_tpl_vars['gglmp']['sfaddress'] == 'Yes'): ?>
					<tr>
						<td valign="top" width="50%"><?php echo $this->_tpl_vars['MOD']['LBL_ADDRESS']; ?>
</td>
						<td valign="top"><input type="text" name="address" id="address" value="<?php echo $this->_tpl_vars['ADDRESS']; ?>
" style="width:160px;"></td>
					</tr>
					<?php endif; ?>
					<?php if ($this->_tpl_vars['gglmp']['sfcity'] == 'Yes'): ?>
					<tr>
						<td valign="top" width="50%"><?php echo $this->_tpl_vars['MOD']['LBL_CITY']; ?>
</td>
						<td valign="top"><input type="text" name="city" id="city" value="<?php echo $this->_tpl_vars['CITY']; ?>
" style="width:160px;"></td>
					</tr>
					<?php endif; ?>
					<?php if ($this->_tpl_vars['gglmp']['sfstate'] == 'Yes'): ?>
					<tr>
						<td valign="top"><?php echo $this->_tpl_vars['MOD']['LBL_STATE']; ?>
</td>
						<td valign="top"><input type="text" name="state" id="state" value="<?php echo $this->_tpl_vars['STATE']; ?>
" style="width:160px;"></td>
					</tr>
					<?php endif; ?>
					<?php if ($this->_tpl_vars['gglmp']['sfzip'] == 'Yes'): ?>
					<tr>
						<td valign="top"><?php echo $this->_tpl_vars['MOD']['LBL_ZIP']; ?>
</td>
						<td valign="top"><input type="text" name="zip" id="zip" value="<?php echo $this->_tpl_vars['ZIP']; ?>
" style="width:160px;"></td>
					</tr>
					<?php endif; ?>
					<?php if ($this->_tpl_vars['gglmp']['sfcountry'] == 'Yes'): ?>
					<tr>
						<td valign="top"><?php echo $this->_tpl_vars['MOD']['LBL_COUNTRY']; ?>
</td>
						<td valign="top"><input type="text" name="country" id="country" value="<?php echo $this->_tpl_vars['COUNTRY']; ?>
" style="width:160px;"></td>
					</tr>
					<?php endif; ?>
					<tr>
						<td valign="top"><?php echo $this->_tpl_vars['MOD']['LBL_RADIUS']; ?>
</td>
						<td valign="top"><input type="text" size="4" value="<?php if ($this->_tpl_vars['map_radius'] == ''): ?> 1 <?php else: ?><?php echo $this->_tpl_vars['map_radius']; ?>
<?php endif; ?>" name="map_radius" gtbfieldid="1"/ style="width:160px;"></td>
					</tr>					
					<tr>							
						<td valign="top" colspan="2">							
							<table width="100%" style="font-size: 13px;" border="0">
							<tr>
							<?php $_from = $this->_tpl_vars['ncldd_pnl']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['list_module'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['list_module']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['value']):
        $this->_foreach['list_module']['iteration']++;
?>									
								<?php if (($this->_foreach['list_module']['iteration']-1) % 1 == 0): ?>
									<td width="10%">&nbsp;</td>
									<td>
										<input type="checkbox" value="<?php echo $this->_tpl_vars['key']; ?>
"<?php if ($this->_tpl_vars['ip'][$this->_tpl_vars['key']] == 'Yes'): ?> checked="checked"<?php endif; ?> name="show_all[]"/ onclick="ajaxRefresh('<?php echo $this->_tpl_vars['gglmp']['on_demand']; ?>
')"> <?php echo $this->_tpl_vars['value']['label']; ?>

										<?php if ($this->_tpl_vars['value']['filter_field'] != ''): ?>
											<span id="filter_field_ex_<?php echo $this->_tpl_vars['key']; ?>
" onmouseover="this.style.cursor='pointer';" style="cursor: pointer;<?php if ($this->_tpl_vars['value']['expand_module'] == 1): ?>display:none;<?php endif; ?>" onclick="expandFilterField('<?php echo $this->_tpl_vars['key']; ?>
',1);">[+]</span>
											<span id="filter_field_co_<?php echo $this->_tpl_vars['key']; ?>
" onmouseover="this.style.cursor='pointer';" style="cursor: pointer;<?php if ($this->_tpl_vars['value']['expand_module'] == 0): ?>display:none;<?php endif; ?>" onclick="expandFilterField('<?php echo $this->_tpl_vars['key']; ?>
',0);">[-]</span>
											<div id="filter_field_div_<?php echo $this->_tpl_vars['key']; ?>
" style="margin-left:15px;<?php if ($this->_tpl_vars['value']['expand_module'] == 0): ?>display:none;<?php endif; ?>">
												<?php echo $this->_tpl_vars['value']['filter_field']; ?>

											</div>
										<?php endif; ?>
									</td>
									</tr><tr>
								<?php endif; ?>
							<?php endforeach; endif; unset($_from); ?>
							</tr>
							</table>
						</td>
					</tr>
					<tr><td colspan="2" align="right"><input class="crmbutton create" type="button" name="search_button" value="<?php echo $this->_tpl_vars['MOD']['LBL_SEARCH']; ?>
" onclick="validateForm(this.form);" /></td></tr>
				</table>				
			</form>
		</div>
		
		<div id="d2" style="border-top: 2px solid rgb(102, 119, 136); overflow: auto; height: 618px; padding:5px 7px 0 7px;">
			<!--<a href="javascript:void(0);" onClick="marker.openInfoWindowHtml(selectedhtml);">
				<b><?php echo $this->_tpl_vars['name']; ?>
</b>
			</a><img src="<?php echo $this->_tpl_vars['im']; ?>
" width="16" alt="<?php echo $this->_tpl_vars['name']; ?>
"></img><br>
			<b><?php echo $this->_tpl_vars['rmodule']; ?>
</b><br>
			<div><?php echo $this->_tpl_vars['dp']; ?>
</div>
			<br><hr>-->
			<?php $_from = $this->_tpl_vars['CONTACT_NEARS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['i'] => $this->_tpl_vars['contact_near']):
?>					
				<a href="javascript:void(0);" onClick="marker<?php echo $this->_tpl_vars['i']; ?>
.info.open(map, marker<?php echo $this->_tpl_vars['i']; ?>
);marker<?php echo $this->_tpl_vars['i']; ?>
.setAnimation(google.maps.Animation.BOUNCE);"> 					<b><?php echo $this->_tpl_vars['contact_near']['name']; ?>
</b>
				</a><img src="<?php echo $this->_tpl_vars['contact_near']['ic']; ?>
" width="16" alt="<?php echo $this->_tpl_vars['contact_near']['name']; ?>
"></img><br>
				<b><?php echo $this->_tpl_vars['contact_near']['pmodule']; ?>
</b><br>
				<div><?php echo $this->_tpl_vars['contact_near']['dp']; ?>
</div>
				<br><hr>
			<?php endforeach; endif; unset($_from); ?>
		</div>
	</td>
	<?php endif; ?>
	<td width="80%" id="d3">
		<div id="map" style="width:100%; height:700px; padding: 0; margin: 0;"></div>
	</td>
</tr>
<tr><td>    	
	<div id='map_legend' align='center' valign='middle' style='overflow:auto;height: 165px;border: 1px solid gray;background:#EEEFDE;'></div>
</td></tr>
</table>
<?php echo '
<script>
	// init google map
	initialize();	
	setMapHeight();
	
	function setMapHeight() {
		d1= document.getElementById(\'d1\').offsetHeight;
		d2= document.getElementById(\'d2\').offsetHeight;
		document.getElementById(\'map\').style.height= (d1+ d2 - 100)+ \'px\';
	}
	
	function expandFilterField(module, type) {
		var expandModule = document.getElementById("expandModule").value;
		if(type == 1) {
			document.getElementById("filter_field_div_" + module).style.display = "";
			document.getElementById("filter_field_ex_" + module).style.display = "none";
			document.getElementById("filter_field_co_" + module).style.display = "";
			expandModule += module + \';\';
		} else {
			document.getElementById("filter_field_div_" + module).style.display = "none";
			document.getElementById("filter_field_ex_" + module).style.display = "";
			document.getElementById("filter_field_co_" + module).style.display = "none";
			temp = expandModule.split(\';\');
			expandModule = "";
			for(i = 0;i < temp.length;i++) {
				if(temp[i] != module && temp[i] != \'\') {
					expandModule += temp[i] + \';\';
				}
			}
		}
		document.getElementById("expandModule").value = expandModule;
		setMapHeight();
	}
</script>
'; ?>

</div>

<div id="__vtigerjs_dialogbox_olayer__" class="small veil" style="z-index: 2147483647; height: 1093px; width: 100%; display: none; opacity: 0.3;"><img src="themes/images/close.gif" alt="X" style="right: 10px; top: 5px; position: absolute; cursor: pointer;"></div>