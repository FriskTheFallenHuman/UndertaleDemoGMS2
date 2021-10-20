myinteract = 3
global.msc=0
global.typer=5
global.facechoice=0
global.faceemotion=0
if room=room_ruins12B then global.msg[0]="* Spider Bake Sale&* All proceeds go to real&  spiders./%%"
if room=room_ruins7 then
    {
    global.msg[0]="1234567890123456789012345678901234567890/"
    global.msg[1]="\\F1 %"
    global.msg[2]="123456789012345678901234567890/"
    global.msg[3]="\\Ts %"
    global.msg[4]="123456789012345678901234567890/"
    global.msg[5]="\\TP %"
    global.msg[6]="123456789012345678901234567890/%%"
    }
mydialoguer = instance_create(0,0,obj_dialoguer)

