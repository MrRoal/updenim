<?php /* Smarty version 2.6.18, created on 2014-03-19 01:31:07
         compiled from AddProductsToPriceBook.tpl */ ?>
<!--*********************************************************************************
** The contents of this file are subject to the vtiger CRM Public License Version 1.0
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
*
 ********************************************************************************/
-->
<script language="javascript">
var parenttab = "<?php echo $this->_tpl_vars['CATEGORY']; ?>
";
function updateAllListPrice()
{
	var unitprice_array = new Array(<?php echo $this->_tpl_vars['UNIT_PRICE_ARRAY']; ?>
);
	var fieldname_array = new Array(<?php echo $this->_tpl_vars['FIELD_NAME_ARRAY']; ?>
);

	var n=unitprice_array.length;	
	var unitprice,fieldname;
	var id;
	var fieldinfo;
	var checkid;

	for(j=0; j<unitprice_array.length; j++)
	{
		fieldinfo = fieldname_array[j].split("_");
		id = fieldinfo[0];
		checkid = "check_"+id;

		unitprice=unitprice_array[j];
		fieldname=fieldname_array[j];	
		updateListPrice(unitprice,fieldname,document.getElementById(checkid));
	}
}

function updateListPriceForField(fieldname,element)
{
	var unitprice_array = new Array(<?php echo $this->_tpl_vars['UNIT_PRICE_ARRAY']; ?>
);
	var fieldname_array = new Array(<?php echo $this->_tpl_vars['FIELD_NAME_ARRAY']; ?>
);

	var index = fieldname_array.indexOf(fieldname);
	updateListPrice(unitprice_array[index],fieldname,element);
}

</script>
<script language="javascript" src="modules/PriceBooks/PriceBooks.js"></script>
<BR>
<BR>
<?php echo $this->_tpl_vars['PRODUCTLISTHEADER']; ?>

<table border="0" cellpadding="0" cellspacing="0" class="FormBorder" width="100%">
  <tr height="20"> 
    <td >
	 <table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
			<td>&nbsp;<?php echo $this->_tpl_vars['RECORD_COUNTS']; ?>
</td>
			   <?php echo $this->_tpl_vars['NAVIGATION']; ?>

		</tr>
	 </table>
    </td>
   </tr>
   <tr><td >
   <table style="background-color: rgb(204, 204, 204);" class="small" border="0" cellpadding="3" cellspacing="1" width="90%" align="center">
   <?php echo $this->_tpl_vars['LISTHEADER']; ?>

   <?php echo $this->_tpl_vars['LISTENTITY']; ?>

   </table>
   </td></tr>
   <tr><td>&nbsp;</td></tr>
   </form>
</table>

</form>
</table>

