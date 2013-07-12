include 'win32ax.inc'
.code
  start:
	invoke	ShellExecute,NULL,NULL,'BnS.exe', '/LaunchByLauncher /Sesskey=0123456789 /LoginMode'
	invoke	ExitProcess,0
.end start

section '.rsrc' resource data readable
	directory RT_ICON, icons,\
		RT_GROUP_ICON, group_icons	
		
	resource icons,\
		1, LANG_NEUTRAL, icon_data		
		
	resource group_icons,\
		1, LANG_NEUTRAL, main_icon
	
	icon main_icon, icon_data, 'BnSClient.ico'