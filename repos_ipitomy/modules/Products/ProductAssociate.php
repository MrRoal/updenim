<?php
include_once('vtlib/Vtiger/Utils.php');

global $adb, $theme,$current_user;
if((int)$current_user->id==0){
	$current_user->id = 1;
}

if (isset($_REQUEST['sns']) && $_REQUEST['sns'] == 'true') {
	if (isset($_REQUEST['snsact'])) {
		$snsid=$_REQUEST['id'];
		$snsval=$_REQUEST['val'];
		if ($_REQUEST['snsact']=='save') {
			$adb->query("UPDATE `product_serial_number` SET `serial_number`='$snsval' WHERE (`id`='$snsid');");
		}else if ($_REQUEST['snsact']=='del') {
			$adb->query("DELETE FROM `product_serial_number` WHERE (`id`='$snsid');")	;
		}else if ($_REQUEST['snsact']=='add'){
			$serial_numbers=explode("\n",$_REQUEST['serialnumbers']); #dnguyen@boruapps.com 07042015 task_id=22932
			$invoiceid=$_REQUEST['invoice_id'];
			$productid=$_REQUEST['product_id'];

			$createAsset = 0;
			if($productid>0){
				$sql = "SELECT cf_create_asset, productname FROM vtiger_products
						INNER JOIN  vtiger_productcf  ON vtiger_productcf.productid = vtiger_products.productid
						INNER JOIN vtiger_crmentity ON vtiger_crmentity.crmid = vtiger_products.productid
						WHERE vtiger_products.productid = '$productid' AND deleted = 0";
				$res = $adb->query($sql);
				if($adb->num_rows($res)>0){
					$createAsset = (int)$adb->query_result($res,0,'cf_create_asset');
					$productname = trim($adb->query_result($res,0,'productname'));
					
					$sql = "SELECT accountid FROM vtiger_invoice WHERE invoiceid='$invoiceid'";
					$res = $adb->query($sql);
					while($row = $adb->fetch_array($res)) {
						$accountid = $row['accountid'];
					}
				}
			}
			
			foreach ($serial_numbers as $snum) {
				if ($snum) {
					$adb->query("INSERT INTO `product_serial_number` (`invoiceid`, `productid`, `serial_number`) VALUES ('{$invoiceid}', '{$productid}', '{$snum}')");
					
					if($createAsset==1){
						$sql = "SELECT COUNT(*) AS assetnums FROM vtiger_assets WHERE product = '$productid' AND serialnumber = ?";
						$res = $adb->pquery($sql,array($snum));
						$assetnums = $adb->query_result($res,0,'assetnums');
						if($assetnums==0){
							require_once 'modules/Assets/Assets.php';
							$objAsset = new Assets();
							$objAsset->column_fields['product'] = $productid;
							$objAsset->column_fields['serialnumber'] = $snum;
							$objAsset->column_fields['datesold'] = date("Y-m-d");
							$objAsset->column_fields['dateinservice'] = date("Y-m-d");
							$objAsset->column_fields['assetstatus'] = 'In Service';
							$objAsset->column_fields['invoiceid'] = $invoiceid;
							$objAsset->column_fields['assigned_user_id'] = $current_user->id;
							$objAsset->column_fields['assetname'] = $productname.'_'.$snum;
							$objAsset->column_fields['account'] = $accountid;
							$objAsset->save('Assets');
						}
					}
				}
			}
		}
	}else{
        $invoiceid=$_REQUEST['invoice_id'];
        $productid=$_REQUEST['product_id'];
        //check product bundle
        $bundles_result = $adb->pquery(" SELECT vtiger_products.*
                                            FROM vtiger_products
                                            INNER JOIN vtiger_seproductsrel ON vtiger_seproductsrel.crmid = vtiger_products.productid
                                            WHERE vtiger_seproductsrel.productid = ?", array($productid));
        if($adb->num_rows($bundles_result)){
            $num_row=$_REQUEST['num_row'];
            $html = '<table width="100%" border="0" cellpadding="5" cellspacing="0" class="small">
                        <tr>
                            <td id="serial_number_title'.$num_row.'" nowrap align="left">
                                <b>Serial Number</b>
                            </td>
                            <td align="right">
                                <span valign="bottom" style="display: none;" id="c_vtbusy_info"><img border="0" src="themes/images/vtbusy.gif"></span>
                                <img src="'.vtiger_imageurl('close.gif',$theme).'" border="0" onClick="fnHidePopDiv(\'serial_number_'.$num_row.'\')" style="cursor:pointer;">
                            </td>
                        </tr>';

            while($product = $adb->fetchByAssoc($bundles_result)){
                $html .='<tr>
                            <td class="dvtCellLabel" colspan="2"><b>'.$product['productname'].'</b><i>(product bundles)</i></td>
                        </tr>';
                // Get serial number
                $query="SELECT * FROM `product_serial_number` where invoiceid = ? AND productid = ?";
                $rs=$adb->pquery($query, array($invoiceid, $product['productid']));
                if ($adb->num_rows($rs)>0) {
                    while ($row=$adb->fetch_array($rs)) {
                        $html .='<tr>
                                    <td><input type="text" value="'.$row['serial_number'].'" id="serial_number'.$row['id'].'" name="serial_number'.$row['id'].'" size="20" class="small"></td>
                                    <td>
                                        <a href="javascript:void(0);" onClick="editSNS(\''.$row['id'].'\');">save</a> | <a href="javascript:void(0);" onClick="delSNS(\''.$row['id'].'\',\''.$num_row.'\');">del</a>
                                    </td>
                                </tr>';
                    }
                }
                // Textbox to add new Serial numbers
                $html .=        '<tr>
                                    <td colspan="2">
                                        <textarea rows="8" cols="10" style="height: 50px;" onblur="this.className=\'detailedViewTextBox\'" name="serialnumbers'.$num_row.'" id="serialnumbers'.$num_row.$product['productid'].'" onfocus="this.className=\'detailedViewTextBoxOn\'" tabindex="" class="detailedViewTextBox"></textarea>
                                        <input type="button" value="add" class="crmbutton small save" onClick="addSNSAdvance('.$num_row.', '.$invoiceid.', '.$product['productid'].');">
                                    </td>
                                </tr>';
            }
            $html.="</table>";
        }else{
            $num_row=$_REQUEST['num_row'];
            $html = '<table width="100%" border="0" cellpadding="5" cellspacing="0" class="small">
		   <tr>
			<td id="serial_number_title'.$num_row.'" nowrap align="left" style="border-bottom:1px solid #999999;"><b>Serial Number</b></td>
			<td align="right" style="border-bottom:1px solid #999999;">
			    <span valign="bottom" style="display: none;" id="c_vtbusy_info"><img border="0" src="themes/images/vtbusy.gif"></span>
				<img src="'.vtiger_imageurl('close.gif',$theme).'" border="0" onClick="fnHidePopDiv(\'serial_number_'.$num_row.'\')" style="cursor:pointer;">
			</td>
		   </tr>';
            // Get serial number
            $query="SELECT * FROM `product_serial_number` where invoiceid = '{$invoiceid}' AND productid = '{$productid}'";
            $rs=$adb->query($query);
            if ($adb->num_rows($rs)>0) {
                while ($row=$adb->fetch_array($rs)) {
                    $html .='<tr>
				<td><input type="text" value="'.$row['serial_number'].'" id="serial_number'.$row['id'].'" name="serial_number'.$row['id'].'" size="20" class="small"></td>
				<td>
					<a href="javascript:void(0);" onClick="editSNS(\''.$row['id'].'\');">save</a> | <a href="javascript:void(0);" onClick="delSNS(\''.$row['id'].'\',\''.$num_row.'\');">del</a>
				</td>
			</tr>';
                }
            }
            // Textbox to add new Serial numbers
            $html .='<tr>
				<td colspan="2" class="lineOnTop">
				<textarea rows="8" cols="10" onblur="this.className=\'detailedViewTextBox\'" name="serialnumbers'.$num_row.'" id="serialnumbers'.$num_row.'" onfocus="this.className=\'detailedViewTextBoxOn\'" tabindex="" class="detailedViewTextBox"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="add" class="crmbutton small save" onClick="addSNS(\''.$num_row.'\');"></td>
			</tr>';
            $html.="</table>";
        }

		exit($html);
	}
}else {
	$cnt = (int)$_REQUEST['cnt'];
	$ptype = $_REQUEST['ptype'];
	$ignore_ids = rtrim($_REQUEST['ignore_ids'],',');
	if($ignore_ids != '') $where_ignore_ids = "AND vtiger_products.productid NOT IN ($ignore_ids)";
	$sql = "SELECT vtiger_products.productid, vtiger_products.productname, vtiger_crmentity.description,
			vtiger_products.productcode, vtiger_products.commissionrate, unit_price,
			case when bundles_qty <> '0' then bundles_qty else qty_per_unit end as qty_per_unit,
			vtiger_crmentity.crmid, vtiger_crmentity.smownerid
		FROM vtiger_products
		INNER JOIN vtiger_crmentity ON vtiger_crmentity.crmid = vtiger_products.productid
		LEFT JOIN vtiger_seproductsrel ON vtiger_seproductsrel.crmid = vtiger_products.productid AND vtiger_seproductsrel.setype='Products'
		LEFT JOIN vtiger_users	ON vtiger_users.id=vtiger_crmentity.smownerid
		LEFT JOIN vtiger_groups	ON vtiger_groups.groupid = vtiger_crmentity.smownerid
		WHERE vtiger_crmentity.deleted = 0 AND vtiger_seproductsrel.productid = '{$_REQUEST['product_id']}' $where_ignore_ids LIMIT 1";

	//echo '<br>Product: '.$sql;
	$res = $adb->query($sql);
	if($adb->num_rows($res) > 0) {
		while($row = $adb->fetch_row($res)) {
			echo $row["productid"].'###Products###<tr id="row'.$cnt.'" valign="top">
    <!-- column 1 - delete link - starts -->
    <td  class="crmTableRow small lineOnTop">
                <img src="themes/images/delete.gif" border="0" onclick="deleteRow(\'SalesOrder\','.$cnt.',\'themes/softed/images/\')">
    <br/><br/>
                &nbsp;<a href="javascript:moveUpDown(\'UP\',\'SalesOrder\','.$cnt.')" title="Move Upward"><img src="themes/images/up_layout.gif" border="0"></a>
                    <input type="hidden" id="deleted'.$cnt.'" name="deleted'.$cnt.'" value="0">
    </td>

    <!-- column '.$cnt.' - Product Name - starts -->
    <td class="crmTableRow small lineOnTop">
    <!-- Product Re-Ordering Feature Code Addition Starts -->
    <input type="hidden" name="hidtax_row_no'.$cnt.'" id="hidtax_row_no'.$cnt.'" value=""/>
    <input type="hidden" product-qty="'.$row["qty_per_unit"].'" parent-product="'.$_REQUEST['product_id'].'" name="row_no'.$cnt.'" id="row_no'.$cnt.'" value="'.$cnt.'"/>
    <!-- Product Re-Ordering Feature Code Addition ends -->
    <table width="100%"  border="0" cellspacing="0" cellpadding="1">
        <tr>
            <td class="small" valign="top">

                <input type="text" id="productName'.$cnt.'" name="productName'.$cnt.'" value="'.$row['productname'].'" class="small" style="width: 70%;" readonly />
                <input type="hidden" id="hdnProductId'.$cnt.'" name="hdnProductId'.$cnt.'" value="'.$row['productid'].'" />
                <input type="hidden" id="lineItemType'.$cnt.'" name="lineItemType'.$cnt.'" value="Products" />
                &nbsp;
                                        <img id="searchIcon'.$cnt.'" title="Products" src="themes/images/products.gif" style="cursor: pointer;" align="absmiddle" onclick="productPickList(this,\'SalesOrder\',\''.$cnt.'\')" />
                                </td>
        </tr>
        <tr><td>
				<div id="placeMeta'.$cnt.'"></div>
			</td></tr>
        <tr>
            <td class="small">

                <input type="hidden" value="" id="subproduct_ids'.$cnt.'" name="subproduct_ids'.$cnt.'" />
                <span id="subprod_names'.$cnt.'" name="subprod_names'.$cnt.'"  style="color:#C0C0C0;font-style:italic;"></span>
            </td>
        </tr>';
			echo '	<tr>
            <td class="small" id="setComment">
                <textarea id="comment'.$cnt.'" name="comment'.$cnt.'" class="small" style="width:70%;height:40px">'.$row['description'].'</textarea>
                <img src="themes/images/clear_field.gif" onClick="getObj(\'comment'.$cnt.'\').value=\'\'"; style="cursor:pointer;" />

            </td>
        </tr>
        <tr><td><input type="button" value="Add SNs" class="crmbutton small save" onclick="showSN(this, \''.$cnt.'\');"/>
			<div id="serial_number_'.$cnt.'" class="discountUI"></div>
			</td></tr>
    </table>
    </td>';

			echo ' <td class="crmTableRow small lineOnTop" valign="top"><span id="qtyInStock'.$cnt.'">'.$row['qtyinstock'].'</span></td>

    <td class="crmTableRow small lineOnTop" valign="top">
    <input id="qty'.$cnt.'" name="qty'.$cnt.'" type="text" class="small " style="width:50px" onfocus="this.className=\'detailedViewTextBoxOn\'" onBlur="settotalnoofrows(); calcTotal(); loadTaxes_Ajax(\''.$cnt.'\');" onChange="setDiscount(this,\''.$cnt.'\')" value="'.$row["qty_per_unit"].'"/><br><span id="stock_alert'.$cnt.'"></span>
    </td>';
			if($_REQUEST['modulerel'] == 'SalesOrder') {
				echo '<td class="crmTableRow small lineOnTop"><input id="qtyused'.$cnt.'" name="qtyused'.$cnt.'" class="small " style="width: 50px;" type="text"></td>
        <td class="crmTableRow small lineOnTop"><input id="qtyreturned'.$cnt.'" name="qtyreturned'.$cnt.'" class="small " style="width: 50px;" type="text"></td>';
			}


			echo '<td class="crmTableRow small lineOnTop" align="right" valign="top">

    <table width="100%" cellpadding="0" cellspacing="0">
       <tr>
        <td align="right">
            <input id="listPrice'.$cnt.'" name="listPrice'.$cnt.'" value="0.00" type="text" class="small " style="width:70px" onBlur="calcTotal(); setDiscount(this,\''.$cnt.'\');callTaxCalc(\''.$cnt.'\');"/>&nbsp;<img src="themes/images/pricebook.gif" onclick="priceBookPickList(this,\''.$cnt.'\')">
        </td>
       </tr>
       <tr>
        <td align="right" style="padding:5px;" nowrap>
            (-)&nbsp;<b><a href="javascript:doNothing();" onClick="displayCoords(this,\'discount_div'.$cnt.'\',\'discount\',\''.$cnt.'\')" >Discount</a> : </b>

            <div class="discountUI" id="discount_div'.$cnt.'">
                <input type="hidden" id="discount_type'.$cnt.'" name="discount_type'.$cnt.'" value="amount">
                <table width="100%" border="0" cellpadding="5" cellspacing="0" class="small">
                   <tr>
                    <td id="discount_div_title'.$cnt.'" nowrap align="left" ></td>
                    <td align="right"><img src="themes/images/close.gif" border="0" onClick="fnHidePopDiv(\'discount_div'.$cnt.'\')" style="cursor:pointer;"></td>
                   </tr>
                   <tr>
                    <td align="left" class="lineOnTop"><input type="radio" name="discount'.$cnt.'"  onclick="setDiscount(this,\''.$cnt.'\'); callTaxCalc(\''.$cnt.'\');calcTotal();">&nbsp; Zero Discount</td>

                    <td class="lineOnTop">&nbsp;</td>
                   </tr>
                   <tr>
                    <td align="left"><input type="radio" name="discount'.$cnt.'" onclick="setDiscount(this,\''.$cnt.'\'); callTaxCalc(\''.$cnt.'\'); calcTotal();" >&nbsp; % of Price</td>
                    <td align="right"><input type="text" class="small" size="5" id="discount_percentage'.$cnt.'" name="discount_percentage'.$cnt.'" value="0"  style="visibility:hidden" onBlur="setDiscount(this,\''.$cnt.'\'); callTaxCalc(\''.$cnt.'\'); calcTotal();">&nbsp;%</td>
                   </tr>
                   <tr>

                    <td align="left" nowrap><input type="radio" name="discount'.$cnt.'" onclick="setDiscount(this,\''.$cnt.'\'); callTaxCalc(\''.$cnt.'\'); calcTotal();"  checked>&nbsp;Direct Price Reduction</td>
                    <td align="right"><input type="text" id="discount_amount'.$cnt.'" name="discount_amount'.$cnt.'" size="5" value="0"  style="visibility:visible" onBlur="setDiscount(this,'.$cnt.'); callTaxCalc(\''.$cnt.'\'); calcTotal();"></td>
                   </tr>
                   <tr><td colspan="2"><b>Discount Note:</b><br><textarea rows="2" class="detailedViewTextBox" id="discount_note'.$cnt.'" name="discount_note'.$cnt.'" value=""></textarea></td></tr>
                </table>
            </div>
        </td>
       </tr>
       <tr>

        <td align="right" style="padding:5px;" nowrap>
            <b>Total After Discount :</b>
        </td>
       </tr>
       <tr id="individual_tax_row'.$cnt.'" class="TaxShow">
        <td align="right" style="padding:5px;" nowrap>
            (+)&nbsp;<b><a href="javascript:doNothing();" onClick="displayCoords(this,\'tax_div'.$cnt.'\',\'tax\',\''.$cnt.'\')" >Tax </a> : </b>

            <div class="discountUI" id="tax_div'.$cnt.'">
                <!-- we will form the table with all taxes -->
                <table width="100%" border="0" cellpadding="5" cellspacing="0" class="small" id="tax_table'.$cnt.'">
                   <tr>
                    <td id="tax_div_title'.$cnt.'" nowrap align="left" ><b>Set Tax for : 0</b></td>
                    <td>&nbsp;</td>
                    <td align="right"><img src="themes/images/close.gif" border="0" onClick="fnHidePopDiv(\'tax_div'.$cnt.'\')" style="cursor:pointer;"></td>
                   </tr>


                </table>
            </div>
            <!-- This above div is added to display the tax informations -->
        </td>
       </tr>
    </table>
    </td>
    <!-- column 5 - List Price with Discount, Total After Discount and Tax as table - ends -->


    <!-- column 6 - Product Total - starts -->
    <td class="crmTableRow small lineOnTop" align="right">
    <table width="100%" cellpadding="5" cellspacing="0">
       <tr>
        <td id="productTotal'.$cnt.'" align="right">0</td>
       </tr>
       <tr>

        <td id="discountTotal'.$cnt.'" align="right">0.000</td>
       </tr>
       <tr>
        <td id="totalAfterDiscount'.$cnt.'" align="right">0</td>
       </tr>
       <tr>
        <td id="taxTotal'.$cnt.'" align="right">0.00</td>

       </tr>
    </table>
    </td>
    <!-- column 6 - Product Total - ends -->

    <!-- column 7 - Net Price - starts -->
    <td valign="bottom" class="crmTableRow small lineOnTop" align="right">
    <span id="netPrice'.$cnt.'"><b>0</b></span>
    </td>

    <!-- column 7 - Net Price - ends -->

    </tr>';

			$cnt++;
		}
		//    echo '<br>Product: '.$sql;
	}
}

?>