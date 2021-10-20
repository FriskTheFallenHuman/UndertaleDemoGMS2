if conversation=2 and instance_exists(obj_dialoguer) = false
    {
    global.interact=0
    global.flag[51]+=1
   instance_destroy()
    }

if conversation=1 then
    {
    global.interact=1
    myinteract=3
    global.typer=5
    global.facechoice=0
    global.faceemotion=0
    global.msc=0
    global.msg[0]="* (You noticed there was&  a blue switch behind the&  top pillar.)/%%"
    mydialoguer = instance_create(0,0,obj_dialoguer)
    conversation=2
    }
    



