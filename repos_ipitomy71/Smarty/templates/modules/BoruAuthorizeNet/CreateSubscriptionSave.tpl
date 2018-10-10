<link href="themes/softed/style.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
<script type="text/javascript" src="jscalendar/calendar.js"></script>
<script type="text/javascript" src="jscalendar/calendar-setup.js"></script>
<script type="text/javascript" src="jscalendar/lang/calendar-en.js"></script>
<body bottommargin="0" class="small" leftmargin="0" marginheight="0" marginwidth="0" onLoad="set_focus()" rightmargin="0" topmargin="0">
{if $error_string neq "no"}
<div align="center"><h3>{$error_string}</h3></div>
{else}
<script type="text/javascript" language="javascript">
alert("Authorization Successful");
window.close();
</script>
{/if}
</body>