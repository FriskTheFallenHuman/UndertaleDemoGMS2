global.border=0
with obj_pbflame instance_destroy()
if global.flag[45]=3 then
   {
   caster_loop(global.currentsong,0.5,0.3)
   obj_mainchara.y+=8
   global.interact=2
   global.typer=4
   global.msc=0
   global.facechoice=1
   global.msg[0]="\\E2* That is right./"
   global.msg[1]="* Go upstairs./%%"
    mydialoguer = instance_create(0,0,obj_dialoguer)
    conversation=9
    }
if global.flag[45]=4 then
    {
    with obj_toroverworld3 instance_destroy()
    global.plot=25
    instance_destroy()
    }

if global.flag[45]=5 then
    {
    obj_mainchara.x=obj_toroverworld3.x+6
    obj_mainchara.y=obj_toroverworld3.y+36
    obj_toroverworld3.direction=270
    global.currentsong=caster_load("music/toriel.ogg")
    caster_loop(global.currentsong,0.8,0.75)
    global.msc=0
    global.typer=4
    global.facechoice=1
    global.msg[0]="\\E2* If you truly wish to&  leave the RUINS.../"
    global.msg[1]="* I will not stop you./"
    global.msg[2]="\\E2* However^1, when you&  leave.../"
    global.msg[3]="\\E1* Please do not come&  back./"
    global.msg[4]="\\E2* I hope you understand./%%"
    mydialoguer = instance_create(0,0,obj_dialoguer)
    conversation=6
    global.interact=2
    }

    global.mercy=0

