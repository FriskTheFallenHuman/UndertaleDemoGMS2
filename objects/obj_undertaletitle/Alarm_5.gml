if global.kills>0 then
 {
 if global.flag[202]>monsterpopulation1 and global.flag[45]=4
      {
      caster_free(ii)
     iii=caster_load("music/prebattle1.ogg")
     caster_loop(iii,1,0.2)
     ok=1
     jok=1
     alarm[3]=2
      }
      else
      {
     caster_free(ii)
     iii=caster_load("music/piano.ogg")
     caster_loop(iii,1,0.8)
     ok=1
     }
 }
if global.kills=0 then
  {
  ok=1
  g=instance_create(140,150,obj_mainchara)
  g.visible=0
  global.interact=1
caster_free(ii)
iii=caster_load("music/papyrus.ogg")
caster_loop(iii,0.75,1)
global.typer=18
global.facechoice=4
global.msc=0
global.msg[0]="PSST^1.&IS IT OUR TURN&TO SHOW UP NOW?/"
global.msg[1]="\\TS \\F0 \\F3 \\Ts %"
global.msg[2]="* no^1, not yet./"
global.msg[3]="\\TS \\F0 \\E1 \\F4 \\TP %"
global.msg[4]="REALLY!^1?&WHEN ARE WE&GONNA SHOW UP!?!?/"
global.msg[5]="\\TS \\F0 \\E0 \\F3 \\Ts %"
global.msg[6]="* well^1, this is just a&  demo^1, so.../"
global.msg[7]="\\E1* never?/"
global.msg[8]="\\TS \\F0 \\F4 \\TP %"
global.msg[9]="WHAT!^1!&YOU'RE RIBBING ME!!/"
global.msg[10]="\\E3I THOUGHT I WAS THE&STAR OF THIS GAME./"
global.msg[11]="\\E2NYEH HEH HEH^1!&THEY HAVE TO SEE MY&COOL OUTFIT!!!/"
global.msg[12]="\\TS \\F0 \\E0 \\F3 \\Ts %"
global.msg[13]="* hey^1, you...&* yeah^1, you^1, buddy^1.&* do me a favor./"
global.msg[14]="* my brother really wants&  you to see his.../"
global.msg[15]="\\E1* \"cool outfit.\"/"
global.msg[16]="\\E0* make sure that happens&  some day./"
global.msg[17]="\\TS \\F0 \\E3 \\F4 \\TP %"
global.msg[18]="SANS^1, WHO ARE YOU&TALKING TO?/"
global.msg[19]="\\TS \\F0 \\E1 \\F3 \\Ts %"
global.msg[20]="* nobody^1, papyrus./"
global.msg[21]="\\E2* wink./%%"
global.faceemotion=0
instance_create(0,0,obj_dialoguer)
 }

