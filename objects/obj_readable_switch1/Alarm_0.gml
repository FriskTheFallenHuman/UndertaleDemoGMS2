myinteract = 3
if global.plot<5 then
{
obj_torinteractable2.lsprite=spr_toriel_lt
global.msc=0
global.typer=4
global.facechoice=1
global.faceemotion=1
global.msg[0]="* No no no^1!/"
global.msg[1]="\\E0* You want to press the&  other switch./"
global.msg[2]="\\E1* I even labelled it for&  you.../%%"
}
if global.plot>=5 then
{
global.msc=0
global.typer=5
global.facechoice=0
global.faceemotion=0
global.msg[0]="* This switch doesn't even&  work.../%%"
}
mydialoguer = instance_create(0,0,obj_dialoguer)

