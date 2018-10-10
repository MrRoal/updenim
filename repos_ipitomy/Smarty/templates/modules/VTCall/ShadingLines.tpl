<table align="left" width="70%" border="0" cellpadding=0 cellpadding=0>
<tr><td>
	<form action="index.php" method="post" name="{$related_section}_fields" id="{$related_section}_fields" onsubmit="VtigerJS_DialogBox.block();">
	<input type="hidden" value="{$PREFIELD|@count}" id="{$related_section}_field_count" name="{$related_section}_field_count">
		<table align="left" id="customize_search" border="0" width="100%">
			<tbody id="customize_search_body">

		{if $SHADING_COLOR eq ''}
			<tr>
				<td align="center">
					<b>No condition.</b>
				</td>
			</tr>
		{else}
			{foreach key=k item=prefields from=$SHADING_COLOR}
					<tr>
						{assign var="x" value=0}
						<td width="75">&nbsp;
							<img border="0" title="Remove field" alt="Remove field" src="themes/images/clear_field.gif" onclick="deleteShading('{$prefields.id}');" style="cursor:pointer;">
						</td>
						<td>
							<select name="field_{$prefields.id}" id="field_{$prefields.id}" class="fix-me" onchange="saveShading({$prefields.id},this,'field')" style="font-size:11px;">
								<option value=''>--None--</option>
								<option value='date_start' {if $SHADING_COLOR.$k.field eq 'date_start' } selected {/if}>Start Date</option>
								<option value='due_date' {if $SHADING_COLOR.$k.field eq 'due_date' } selected {/if}>Due Date</option>
							</select>
						</td>
						<td>
							Past Due <select name="comparator_{$prefields.id}" id="comparator_{$prefields.id}" class="fix-me" onchange="saveShading({$prefields.id},this,'comparator')" style="font-size:11px;">
								<option value=''>--None--</option>
								<option value='exactly' {if $SHADING_COLOR.$k.comparator eq 'exactly' } selected {/if}>Exactly</option>
								<option value='more_than' {if $SHADING_COLOR.$k.comparator eq 'more_than' } selected {/if}>More Than</option>
								<option value='less_than' {if $SHADING_COLOR.$k.comparator eq 'less_than' } selected {/if}>Less Than</option>
							</select>
						</td>
						<td>
							<input type="text" value="{$SHADING_COLOR.$k.days}" name="days" id="days" style="width:5em;font-size:11px;" onchange="saveShading({$prefields.id},this,'days')"> Days
						</td>

						<td>
							Shade the line <select name="line_color_{$prefields.id}" id="line_color_{$prefields.id}" class="fix-me color_dropdown" onchange="saveShading({$prefields.id},this,'line_color')" style="font-size:11px; background-color:{$SHADING_COLOR.$k.line_color};">
								<option style="background-color: #FFFFFF;" {if $SHADING_COLOR.$k.line_color eq '#FF0000' || $SHADING_COLOR.$k.line_color eq ''} selected {/if} value='#FFFFFF'></option>
								<option style="background-color: #FF0000;" value="#FF0000" {if $SHADING_COLOR.$k.line_color eq '#FF0000' } selected {/if}>Red</option>
								<option style="background-color: #808080;" value="#808080" {if $SHADING_COLOR.$k.line_color eq '#808080' } selected {/if}>Gray</option>
								<option style="background-color: #0000FF;" value="#0000FF" {if $SHADING_COLOR.$k.line_color eq '#0000FF' } selected {/if}>Blue</option>
								<option style="background-color: #FFFF00;" value="#FFFF00" {if $SHADING_COLOR.$k.line_color eq '#FFFF00' } selected {/if}>Yellow</option>
								<option style="background-color: #008000;" value="#008000" {if $SHADING_COLOR.$k.line_color eq '#008000' } selected {/if}>Green</option>
								<option style="background-color: #800080;" value="#800080" {if $SHADING_COLOR.$k.line_color eq '#800080' } selected {/if}>Purple</option>
							</select>
						</td>

					</tr>

			{/foreach}
		{/if}
		</tbody>
	</table>
</td>
</tr>
</table>