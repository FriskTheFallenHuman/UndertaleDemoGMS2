myinteract = 3
global.msc=0
global.typer=5
global.facechoice=0
global.faceemotion=0
global.msg[0]="%%"
if room=room_asrielroom then global.msg[0]="* A box of kids' shoes in&  a disparity of sizes./%%"
if room=room_torielroom then global.msg[0]="* Definitely bigger than&  a twin-sized bed./%%"
if room=room_torhouse3 then global.msg[0]="* Inside the drawer are&  flower seeds and some&  broken crayons./%%"
if room=room_kitchen then global.msg[0]="* There is some white fur&  stuck in the drain./%%"

mydialoguer = instance_create(0,0,obj_dialoguer)

