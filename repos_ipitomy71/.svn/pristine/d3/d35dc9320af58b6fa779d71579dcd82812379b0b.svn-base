<table align="left" width="50%" border="0" cellpadding=0 cellpadding=0>
<tr><td>
	<form action="index.php" method="post" name="{$related_section}_fields" id="{$related_section}_fields" onsubmit="VtigerJS_DialogBox.block();">
	<input type="hidden" value="{$PREFIELD|@count}" id="{$related_section}_field_count" name="{$related_section}_field_count">
		<table align="left" id="customize_search" border="0" width="100%">
			<tbody id="customize_search_body">

		{if $PREFIELD eq ''}
			<tr>
				<td align="center">
					<b>No field.</b>
				</td>
			</tr>
		{else}
			{foreach key=k item=prefields from=$PREFIELD}
					<tr>
						{assign var="x" value=0}
						<td width="40%">
						<select name="{$related_section}_{$prefields.id}" id="{$related_section}_{$prefields.id}" class="detailedViewTextBox fix-me" onchange="saveField({$prefields.id},this.value,'{$related_section}')">
						<option value=''>--None--</option>
						{foreach item=filteroption key=label name=groupfields from=$ALLFIELDS}
							<optgroup label="{$label}" class=\"select\" style=\"border:none\">
								{foreach item=elementsinfo from=$filteroption}
									{if $PREFIELD.$k.field eq $elementsinfo.value}
										<option value='{$elementsinfo.value}' selected>{$elementsinfo.text}</option>
									{else}
										<option value='{$elementsinfo.value}'>{$elementsinfo.text}</option>
									{/if}
								{/foreach}
						{/foreach}
						</td>
						{assign var="x" value=$x++}

						<td width="75">&nbsp;<img border="0" title="Remove field" alt="Remove field" src="themes/images/clear_field.gif" onclick="deleteRelatedField('{$prefields.id}','{$related_section}');" style="cursor:pointer;">
						{if $k gt 0}
							&nbsp;<img src="themes/softed/images/arrow_up.png" border="0" style="cursor:pointer;" onclick="return saveOrder('{$prefields.id}','up','{$prefields.ordering}','{$related_section}')" alt="Up" title="Up">
						{/if}
						{if $k+1 lt $PREFIELD|@count}
							&nbsp;<img src="themes/softed/images/arrow_down.png" border="0" style="cursor:pointer;" onclick="return saveOrder('{$prefields.id}','down','{$prefields.ordering}','{$related_section}')" alt="Down" title="Down">
						{/if}
						</td>
					</tr>

			{/foreach}
		{/if}
		<tr>
			<td colspan="2" style="background:white">&nbsp;<img border="0" title="Add more field" alt="Add more field" src="themes/softed/images/select.gif" onclick="addRelatedField('{$related_section}');" style="cursor:pointer;"></td>
		</tr>
		</tbody>
	</table>
</td>
</tr>
</table>