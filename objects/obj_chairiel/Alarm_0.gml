myinteract = 3
if chair=0 then
{
global.msc=527
if global.flag[103]>0 then global.msc=528
if global.plot=19.1 then global.msc=528
if global.plot=19.2 then global.msc=529
if global.plot=19.3 then global.msc=530
if global.plot=19.4 then global.msc=531
global.choice=-1
global.typer=4
global.facechoice=1
global.faceemotion=99
mydialoguer = instance_create(0,0,obj_dialoguer)
talkedto+=1
}
else
{
myinteract = 3
global.msc=0
global.typer=5
global.facechoice=0
global.faceemotion=0
global.msg[0]="* Seems like the right size for&  Toriel./%%"
mydialoguer = instance_create(0,0,obj_dialoguer)
}

