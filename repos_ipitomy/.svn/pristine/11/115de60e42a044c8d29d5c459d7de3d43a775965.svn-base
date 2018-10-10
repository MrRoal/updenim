/*+*******************************************************************************
 * The contents of this file are subject to the vtiger CRM Public License Version 1.0
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
 ******************************************************************************/

var TOOLTIPVTCALL = {
	/** Tooltip data cache (per module, per field, per record) **/
	_cache : { },
	
	_status : { },
	
	_mouseOverTimeOut : 500,
	
	_relinguishStatusControl : false,
	
		show : function(node, module, fieldname, recordid) {
		if(TOOLTIPVTCALL._status[module][recordid][fieldname]) {
			if(TOOLTIPVTCALL._cache[module][fieldname][recordid]) {
				var tooltipdata = TOOLTIPVTCALL._cache[module][fieldname][recordid];
				tooltipvtcall.tip(node,tooltipdata,recordid,fieldname);
				if(!this._relinguishStatusControl) $('status').style.display = 'none';
			}
		}
	},
	
	hide : function(element,id,fieldname) {
		tooltipvtcall.untip(element,id,fieldname);
	},
	
	_setStatus : function(module, fieldname, recordid, statusflag) {
		if(typeof(TOOLTIPVTCALL._status[module]) == 'undefined') {
			TOOLTIPVTCALL._status[module] = {};
		}
		if(typeof(TOOLTIPVTCALL._status[module][recordid]) == 'undefined') {
			TOOLTIPVTCALL._status[module][recordid] = {};
		}
		TOOLTIPVTCALL._status[module][recordid][fieldname] = statusflag;
	},
/*
	LEE 08192010 - Hide 'status' popup
*/	
/*
*
* THUY@BORU 20101228
* VT Call Process
* 
*/
/*
*
* THUY@BORU 20110105
* VT Call Process
* 
*/
	handler : function(evtparams) {
		var event_type = evtparams['event'];
		var module = evtparams['module'];
		var action = evtparams['action'];
		var fieldname = evtparams['fieldname'];
		var recordid  = evtparams['recordid'];
		var node = evtparams['domnode'];
		var filename = evtparams['filename'];
		if ($('status').style.display == 'block') {
			//this._relinguishStatusControl = true;
		}
		if(evtparams['event'] == 'cell.onmouseover' ) {
//			alert(filename);
			if (filename == 'EmailHistory'){
				TOOLTIPVTCALL._setStatus(module, fieldname, recordid, true);
				_VT__TOOLTIP__TIMER = setTimeout(function(){TOOLTIPVTCALL._showForFieldEmailHistory(node, module, fieldname,recordid)},TOOLTIPVTCALL._mouseOverTimeOut);
			}else if (filename == 'ActivityHistory'){
				TOOLTIPVTCALL._setStatus(module, fieldname, recordid, true);
				_VT__TOOLTIP__TIMER = setTimeout(function(){TOOLTIPVTCALL._showForFieldActivityHistory(node, module, fieldname,recordid)},TOOLTIPVTCALL._mouseOverTimeOut);							
			}else if (action == 'vt_call'){
				TOOLTIPVTCALL._setStatus(module, fieldname, recordid, true);
				_VT__TOOLTIP__TIMER = setTimeout(function(){TOOLTIPVTCALL._showForFieldVTCall(node, module, fieldname,recordid)},TOOLTIPVTCALL._mouseOverTimeOut);
			}else if(action == 'VTCall_History'){
				TOOLTIPVTCALL._setStatus(module, fieldname, recordid, true);
				_VT__TOOLTIP__TIMER = setTimeout(function(){TOOLTIPVTCALL._showForFieldVTCall_History(node, module, fieldname,recordid)},TOOLTIPVTCALL._mouseOverTimeOut);
			}else{
				TOOLTIPVTCALL._setStatus(module, fieldname, recordid, true);
				_VT__TOOLTIP__TIMER = setTimeout(function(){TOOLTIPVTCALL._showForField(node, module, fieldname,recordid)},TOOLTIPVTCALL._mouseOverTimeOut);
			}
		} else if(evtparams['event'] == 'cell.onmouseout' ) {
			TOOLTIPVTCALL._setStatus(module, fieldname, recordid, false);
			TOOLTIPVTCALL.hide(node, recordid, fieldname);
			clearTimeout(_VT__TOOLTIP__TIMER);
		}
	},
/*
	LEE 08192010 - END
*/	
/*
*
* BLOCK END
*
*/
/*
*
* BLOCK END
*
*/

	_showForFieldActivityHistory : function(node, module, fieldname, recordid) {	
		if(!this._relinguishStatusControl) $('status').style.display = 'block';
		if(typeof(TOOLTIPVTCALL._cache[module]) == 'undefined') {
			TOOLTIPVTCALL._cache[module] = {}
		}
		
		if(TOOLTIPVTCALL._cache[module][fieldname] == false) {
			if(!this._relinguishStatusControl) $('status').style.display = 'none';
			return;
		}
		
		if(typeof(TOOLTIPVTCALL._cache[module][fieldname]) == 'undefined') {
			TOOLTIPVTCALL._cache[module][fieldname] = {}
		}
		
		if(typeof(TOOLTIPVTCALL._cache[module][fieldname][recordid]) == 'undefined') {
			// Cache miss
			TOOLTIPVTCALL._cache[module][fieldname][recordid] = false;
			 /* 999_046
			 * FILE ADDED  BY SSHELAVALE@BORU 12 may
			 * to fix the email filed problem
			 */
			
				new Ajax.Request(
						'index.php',
						{queue : {position : 'end', scope: 'command'},
							method : 'post',
							postBody: 'module=VTCall&action=VTCallAjax&file=ComputeTooltipVTCall&fieldname='+fieldname+'&id='+recordid+'&modname='+module+'&ajax=true&submode=getTooltip',
							onComplete: function(response) {
								var data = response.responseText;
								
								if(data != false){
									TOOLTIPVTCALL._cache[module][fieldname][recordid] = data;
									TOOLTIPVTCALL.show(node, module, fieldname, recordid);
									if(!this._relinguishStatusControl) $('status').style.display = 'none';
								}else{
									TOOLTIPVTCALL._cache[module][fieldname] = false;
									if(!this._relinguishStatusControl) $('status').style.display = 'none';
								}
							}
						}
					);				
		} else {
			// Cache hit
			TOOLTIPVTCALL.show(node, module, fieldname, recordid);
		}
	},

	_showForFieldEmailHistory : function(node, module, fieldname, recordid) {	
		if(!this._relinguishStatusControl) $('status').style.display = 'block';
		if(typeof(TOOLTIPVTCALL._cache[module]) == 'undefined') {
			TOOLTIPVTCALL._cache[module] = {}
		}
		
		if(TOOLTIPVTCALL._cache[module][fieldname] == false) {
			if(!this._relinguishStatusControl) $('status').style.display = 'none';
			return;
		}
		
		if(typeof(TOOLTIPVTCALL._cache[module][fieldname]) == 'undefined') {
			TOOLTIPVTCALL._cache[module][fieldname] = {}
		}
		
		if(typeof(TOOLTIPVTCALL._cache[module][fieldname][recordid]) == 'undefined') {
			// Cache miss
			TOOLTIPVTCALL._cache[module][fieldname][recordid] = false;
			 /* 999_046
			 * FILE ADDED  BY SSHELAVALE@BORU 12 may
			 * to fix the email filed problem
			 */
			
				new Ajax.Request(
						'index.php',
						{queue : {position : 'end', scope: 'command'},
							method : 'post',
							postBody: 'module=VTCall&action=VTCallAjax&file=ComputeTooltipEmailHistory&fieldname='+fieldname+'&id='+recordid+'&modname='+module+'&ajax=true&submode=getTooltip',
							onComplete: function(response) {								
								var data = response.responseText;								
								
								if(data != false){
									TOOLTIPVTCALL._cache[module][fieldname][recordid] = data;
									TOOLTIPVTCALL.show(node, module, fieldname, recordid);
									if(!this._relinguishStatusControl) $('status').style.display = 'none';
								}else{
									TOOLTIPVTCALL._cache[module][fieldname] = false;
									if(!this._relinguishStatusControl) $('status').style.display = 'none';
								}
							}
						}
					);				
		} else {
			// Cache hit
			TOOLTIPVTCALL.show(node, module, fieldname, recordid);
		}
	},

/*
*
* THUY@BORU 20110105
* VT Call Process
* 
*/

	_showForFieldVTCall_History : function(node, module, fieldname, recordid) {	
		if(!this._relinguishStatusControl) $('status').style.display = 'block';
		if(typeof(TOOLTIPVTCALL._cache[module]) == 'undefined') {
			TOOLTIPVTCALL._cache[module] = {}
		}
		
		if(TOOLTIPVTCALL._cache[module][fieldname] == false) {
			if(!this._relinguishStatusControl) $('status').style.display = 'none';
			return;
		}
		
		if(typeof(TOOLTIPVTCALL._cache[module][fieldname]) == 'undefined') {
			TOOLTIPVTCALL._cache[module][fieldname] = {}
		}
		
		if(typeof(TOOLTIPVTCALL._cache[module][fieldname][recordid]) == 'undefined') {
			// Cache miss
			TOOLTIPVTCALL._cache[module][fieldname][recordid] = false;
			 /* 999_046
			 * FILE ADDED  BY SSHELAVALE@BORU 12 may
			 * to fix the email filed problem
			 */
			
				new Ajax.Request(
						'index.php',
						{queue : {position : 'end', scope: 'command'},
							method : 'post',
							postBody: 'module=VTCall&action=VTCallAjax&file=ComputeTooltipVTCall&fieldname='+fieldname+'&id='+recordid+'&modname='+module+'&ajax=true&submode=getTooltip',
							onComplete: function(response) {
								var data = response.responseText;
								
								if(data != false){
									TOOLTIPVTCALL._cache[module][fieldname][recordid] = data;
									TOOLTIPVTCALL.show(node, module, fieldname, recordid);
									if(!this._relinguishStatusControl) $('status').style.display = 'none';
								}else{
									TOOLTIPVTCALL._cache[module][fieldname] = false;
									if(!this._relinguishStatusControl) $('status').style.display = 'none';
								}
							}
						}
					);				
		} else {
			// Cache hit
			TOOLTIPVTCALL.show(node, module, fieldname, recordid);
		}
	},
	
/*
*
* BLOCK END
*
*/

/*
*
* THUY@BORU 20101228
* VT Call Process
* 
*/

	_showForFieldVTCall : function(node, module, fieldname, recordid) {	
		if(!this._relinguishStatusControl) $('status').style.display = 'block';
		if(typeof(TOOLTIPVTCALL._cache[module]) == 'undefined') {
			TOOLTIPVTCALL._cache[module] = {}
		}
		
		if(TOOLTIPVTCALL._cache[module][fieldname] == false) {
			if(!this._relinguishStatusControl) $('status').style.display = 'none';
			return;
		}
		
		if(typeof(TOOLTIPVTCALL._cache[module][fieldname]) == 'undefined') {
			TOOLTIPVTCALL._cache[module][fieldname] = {}
		}
		
		if(typeof(TOOLTIPVTCALL._cache[module][fieldname][recordid]) == 'undefined') {
			// Cache miss
			TOOLTIPVTCALL._cache[module][fieldname][recordid] = false;
			 /* 999_046
			 * FILE ADDED  BY SSHELAVALE@BORU 12 may
			 * to fix the email filed problem
			 */
			
				new Ajax.Request(
						'index.php',
						{queue : {position : 'end', scope: 'command'},
							method : 'post',
							postBody: 'module=VTCall&action=VTCallAjax&file=ComputeTooltipVTCall&fieldname='+fieldname+'&id='+recordid+'&modname='+module+'&ajax=true&submode=getTooltip',
							onComplete: function(response) {
								var data = response.responseText;
								
								if(data != false){
									TOOLTIPVTCALL._cache[module][fieldname][recordid] = data;
									TOOLTIPVTCALL.show(node, module, fieldname, recordid);
									if(!this._relinguishStatusControl) $('status').style.display = 'none';
								}else{
									TOOLTIPVTCALL._cache[module][fieldname] = false;
									if(!this._relinguishStatusControl) $('status').style.display = 'none';
								}
							}
						}
					);				
		} else {
			// Cache hit
			TOOLTIPVTCALL.show(node, module, fieldname, recordid);
		}
	},
	
/*
*
* BLOCK END
*
*/

	_showForField : function(node, module, fieldname, recordid) {	
		if(!this._relinguishStatusControl) $('status').style.display = 'block';
		if(typeof(TOOLTIPVTCALL._cache[module]) == 'undefined') {
			TOOLTIPVTCALL._cache[module] = {}
		}
		if(TOOLTIPVTCALL._cache[module][fieldname] == false) {
			if(!this._relinguishStatusControl) $('status').style.display = 'none';
			return;
		}
		
		if(typeof(TOOLTIPVTCALL._cache[module][fieldname]) == 'undefined') {
			TOOLTIPVTCALL._cache[module][fieldname] = {}
		}
		
		if(typeof(TOOLTIPVTCALL._cache[module][fieldname][recordid]) == 'undefined') {
			// Cache miss
			TOOLTIPVTCALL._cache[module][fieldname][recordid] = false;
			 /* 999_046
			 * FILE ADDED  BY SSHELAVALE@BORU 12 may
			 * to fix the email filed problem
			 */
//			alert(module);
			if(module=='Calendar'){				
				new Ajax.Request(
						'index.php',
						{queue : {position : 'end', scope: 'command'},
							method : 'post',
							postBody: 'module=VTCall&action=VTCallAjax&file=ComputeTooltipVTCall&fieldname='+fieldname+'&id='+recordid+'&modname='+module+'&ajax=true&submode=getTooltip',
							onComplete: function(response) {
								var data = response.responseText;
								
								if(data != false){
									TOOLTIPVTCALL._cache[module][fieldname][recordid] = data;
									TOOLTIPVTCALL.show(node, module, fieldname, recordid);
									if(!this._relinguishStatusControl) $('status').style.display = 'none';
								}else{
									TOOLTIPVTCALL._cache[module][fieldname] = false;
									if(!this._relinguishStatusControl) $('status').style.display = 'none';
								}
							}
						}
					);				
			}else{
			new Ajax.Request(
				'index.php',
				{queue : {position : 'end', scope: 'command'},
					method : 'post',
					postBody: 'module=VTCall&action=VTCallAjax&file=ComputeTooltipEmailHistory&fieldname='+fieldname+'&id='+recordid+'&modname='+module+'&ajax=true&submode=getTooltip',
					onComplete: function(response) {
						var data = response.responseText;
						if(data != false){
							TOOLTIPVTCALL._cache[module][fieldname][recordid] = data;
							TOOLTIPVTCALL.show(node, module, fieldname, recordid);
							if(!this._relinguishStatusControl) $('status').style.display = 'none';
						}else{
							TOOLTIPVTCALL._cache[module][fieldname] = false;
							if(!this._relinguishStatusControl) $('status').style.display = 'none';
						}
					}
				}
			);
		 }
		} else {
			// Cache hit
			TOOLTIPVTCALL.show(node, module, fieldname, recordid);
		}
	}
	
}   

vtlib_listview.register( 'cell.onmouseover', TOOLTIPVTCALL.handler);
vtlib_listview.register( 'cell.onmouseout', TOOLTIPVTCALL.handler);
