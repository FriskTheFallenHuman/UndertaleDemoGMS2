

if conversation=0 then
 {
 toriel=instance_create(140,240,obj_toroverworld3)
global.msc=0
global.typer=4
global.interact=1
global.facechoice=1
global.faceemotion=1
global.msg[0]="* Oh dear^1, that took&  longer than I&  thought it would./%%"
instance_create(0,0,obj_dialoguer)
conversation=1
fademusicout=1
global.interact=1
 }

