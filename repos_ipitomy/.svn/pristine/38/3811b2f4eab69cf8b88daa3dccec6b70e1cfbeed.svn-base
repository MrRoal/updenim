<?php /* Smarty version 2.6.18, created on 2014-04-15 18:13:34
         compiled from modules/VTCall/RelatedFields.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'count', 'modules/VTCall/RelatedFields.tpl', 4, false),)), $this); ?>
<table align="left" width="50%" border="0" cellpadding=0 cellpadding=0>
<tr><td>
	<form action="index.php" method="post" name="<?php echo $this->_tpl_vars['related_section']; ?>
_fields" id="<?php echo $this->_tpl_vars['related_section']; ?>
_fields" onsubmit="VtigerJS_DialogBox.block();">
	<input type="hidden" value="<?php echo count($this->_tpl_vars['PREFIELD']); ?>
" id="<?php echo $this->_tpl_vars['related_section']; ?>
_field_count" name="<?php echo $this->_tpl_vars['related_section']; ?>
_field_count">
		<table align="left" id="customize_search" border="0" width="100%">
			<tbody id="customize_search_body">

		<?php if ($this->_tpl_vars['PREFIELD'] == ''): ?>
			<tr>
				<td align="center">
					<b>No field.</b>
				</td>
			</tr>
		<?php else: ?>
			<?php $_from = $this->_tpl_vars['PREFIELD']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['k'] => $this->_tpl_vars['prefields']):
?>
					<tr>
						<?php $this->assign('x', 0); ?>
						<td width="40%">
						<select name="<?php echo $this->_tpl_vars['related_section']; ?>
_<?php echo $this->_tpl_vars['prefields']['id']; ?>
" id="<?php echo $this->_tpl_vars['related_section']; ?>
_<?php echo $this->_tpl_vars['prefields']['id']; ?>
" class="detailedViewTextBox fix-me" onchange="saveField(<?php echo $this->_tpl_vars['prefields']['id']; ?>
,this.value,'<?php echo $this->_tpl_vars['related_section']; ?>
')">
						<option value=''>--None--</option>
						<?php $_from = $this->_tpl_vars['ALLFIELDS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['groupfields'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['groupfields']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['label'] => $this->_tpl_vars['filteroption']):
        $this->_foreach['groupfields']['iteration']++;
?>
							<optgroup label="<?php echo $this->_tpl_vars['label']; ?>
" class=\"select\" style=\"border:none\">
								<?php $_from = $this->_tpl_vars['filteroption']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['elementsinfo']):
?>
									<?php if ($this->_tpl_vars['PREFIELD'][$this->_tpl_vars['k']]['field'] == $this->_tpl_vars['elementsinfo']['value']): ?>
										<option value='<?php echo $this->_tpl_vars['elementsinfo']['value']; ?>
' selected><?php echo $this->_tpl_vars['elementsinfo']['text']; ?>
</option>
									<?php else: ?>
										<option value='<?php echo $this->_tpl_vars['elementsinfo']['value']; ?>
'><?php echo $this->_tpl_vars['elementsinfo']['text']; ?>
</option>
									<?php endif; ?>
								<?php endforeach; endif; unset($_from); ?>
						<?php endforeach; endif; unset($_from); ?>
						</td>
						<?php $this->assign('x', $this->_tpl_vars['x']++); ?>

						<td width="75">&nbsp;<img border="0" title="Remove field" alt="Remove field" src="themes/images/clear_field.gif" onclick="deleteMoreField('<?php echo $this->_tpl_vars['prefields']['id']; ?>
','<?php echo $this->_tpl_vars['related_section']; ?>
');" style="cursor:pointer;">
						<?php if ($this->_tpl_vars['k'] > 0): ?>
							&nbsp;<img src="themes/softed/images/arrow_up.png" border="0" style="cursor:pointer;" onclick="return saveOrder('<?php echo $this->_tpl_vars['prefields']['id']; ?>
','up','<?php echo $this->_tpl_vars['prefields']['ordering']; ?>
','<?php echo $this->_tpl_vars['related_section']; ?>
')" alt="Up" title="Up">
						<?php endif; ?>
						<?php if ($this->_tpl_vars['k']+1 < count($this->_tpl_vars['PREFIELD'])): ?>
							&nbsp;<img src="themes/softed/images/arrow_down.png" border="0" style="cursor:pointer;" onclick="return saveOrder('<?php echo $this->_tpl_vars['prefields']['id']; ?>
','down','<?php echo $this->_tpl_vars['prefields']['ordering']; ?>
','<?php echo $this->_tpl_vars['related_section']; ?>
')" alt="Down" title="Down">
						<?php endif; ?>
						</td>
					</tr>

			<?php endforeach; endif; unset($_from); ?>
		<?php endif; ?>
		<tr>
			<td colspan="2" style="background:white">&nbsp;<img border="0" title="Add more field" alt="Add more field" src="themes/softed/images/select.gif" onclick="addRelatedField('<?php echo $this->_tpl_vars['related_section']; ?>
');" style="cursor:pointer;"></td>
		</tr>
		</tbody>
	</table>
</td>
</tr>
</table>