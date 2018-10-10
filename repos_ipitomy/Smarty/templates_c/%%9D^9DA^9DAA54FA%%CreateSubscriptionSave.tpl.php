<?php /* Smarty version 2.6.18, created on 2014-04-21 17:29:33
         compiled from modules/BoruAuthorizeNet/CreateSubscriptionSave.tpl */ ?>
<link href="themes/softed/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
<script type="text/javascript" src="jscalendar/calendar.js"></script>
<script type="text/javascript" src="jscalendar/calendar-setup.js"></script>
<script type="text/javascript" src="jscalendar/lang/calendar-en.js"></script>
<body bottommargin="0" class="small" leftmargin="0" marginheight="0" marginwidth="0" onLoad="set_focus()" rightmargin="0" topmargin="0">
<?php if ($this->_tpl_vars['error_string'] != 'no'): ?>
<div align="center"><h3><?php echo $this->_tpl_vars['error_string']; ?>
</h3></div>
<?php else: ?>
<script type="text/javascript" language="javascript">
alert("Authorization Successful");
window.close();
</script>
<?php endif; ?>
</body>