myinteract = 3
global.msc=0
global.typer=5
global.facechoice=0
global.faceemotion=0
global.msg[0]="%%"
if room=room_ruins2 then global.msg[0]="* Only the fearless may proceed.&* Brave ones, foolish ones.&* Both walk not the middle road./%%"
if room=room_ruins3 then global.msg[0]="* Stay on the path./%%"
if room=room_ruins5 then global.msg[0]="* The western room is the&  eastern room's blueprint./%%"
if room=room_ruins9 then global.msg[0]="* Three out of four grey rocks&  recommend you push them./%%"
if room=room_ruins14 then global.msg[0]="* There is just one switch./%%"
if room=room_ruins15A then global.msg[0]="* The far door is not an exit^1.&* It simply marks a change&  in perspective./%%"
if room=room_ruins15B then global.msg[0]="* If you can read this^1,&  press the blue switch./%%"
if room=room_ruins15C then global.msg[0]="* If you can read this^1,&  press the red switch./%%"
if room=room_ruins15D then global.msg[0]="* If you can read this^1,&  press the green switch./%%"
if room=room_torhouse1 then global.msg[0]="* These books are worn...&* They must have been read&  many times./%%"
if room=room_torhouse2 then global.msg[0]="* The ends of the tools have&  been filed down to&  make them safer./%%"
if room=room_asrielroom then global.msg[0]="* Look at these cool toys^2!&* They don't interest you&  at all./%%"
if room=room_torielroom then
    { 
    global.msc=524
    if x>192 then 
           { global.msc=0;
             global.msg[0]="* You peek inside..^2.&* Scandalous!/"
             global.msg[1]="* It's TORIEL's sock drawer./%%"
             if read>0 then global.msg[0]="* You can't stop looking&  at the socks./%%"
             }
    }
if room=room_torhouse3 then global.msg[0]="* \"Room under renovations.\"/%%"
if room=room_kitchen then global.msg[0]="* For some reason^1, there&  is a brand-name chocolate&  bar in the fridge./%%"
read+=1

//global.msg[0]="* just letting you know.&* WE ARE VERY COOL./"
//global.msg[1]="* not so sure about that./"
//global.msg[2]="EVERY MORNING I&SHALL BATHE IN A&SHOWER OF KISSES./%%"

mydialoguer = instance_create(0,0,obj_dialoguer)

