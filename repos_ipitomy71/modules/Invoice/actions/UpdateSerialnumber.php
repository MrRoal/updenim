<?php

/* +**********************************************************************************
 * The contents of this file are subject to the vtiger CRM Public License Version 1.1
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is: vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
 * ********************************************************************************** */

class Invoice_UpdateSerialnumber_Action extends Invoice_BasicAjax_Action {

        public function process(Vtiger_Request $request) {
                global $adb;
                $searchValue = $request->get('search_value');
                $searchModule = $request->get('search_module');

                $parentRecordId = $request->get('parent_id');
                $parentModuleName = $request->get('parent_module');
                $relatedModule = $request->get('module');
                
                $cmd = $request->get('cmd');
                switch ($cmd){
                        case "sns":
                                break;
                }
                $result = array('success'=>'error');
                $response = new Vtiger_Response();
                $response->setResult($result);
                $response->emit();
        }

}
