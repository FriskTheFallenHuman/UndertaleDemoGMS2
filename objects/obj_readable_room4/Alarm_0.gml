myinteract = 3
global.msc=0
global.typer=5
global.facechoice=0
global.faceemotion=0
global.msg[0]="%%"
if room=room_torhouse3 then global.msg[0]="* It's you!/%%"
if room=room_torhouse3 and murdererlv1()=1 then global.msg[0]="* It's me^1, " +global.charname+ "./%%"
if room=room_kitchen and x<130 global.msg[0]="* Inside the cupboard are&  cookie cutters for&  gingerbread monsters./%%"
if room=room_kitchen and murdererlv1()=1 and x<130 then global.msg[0]="\\R* Where are the knives./%%"
if room=room_kitchen and x>130 global.msg[0]="* The stovetop is very clean^1.&* Toriel must use fire&  magic instead./%%"
if room=room_kitchen and x>130 and global.flag[45]=4 then global.msg[0]="* No one will use this&  anymore.../%%"

mydialoguer = instance_create(0,0,obj_dialoguer)

