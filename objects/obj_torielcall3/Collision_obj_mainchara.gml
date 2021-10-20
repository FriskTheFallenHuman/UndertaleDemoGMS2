sound_play(snd_phone)
global.typer=5
global.facechoice=0
global.faceemotion=0
global.msg[0]="* Ring..\\E0.\\TT /"
global.msg[1]="\\F1 %"
global.msg[2]="* Hello?&* This is TORIEL./"
if global.flag[46]=0 then global.msg[3]="\\E1* You do not DISLIKE&  butterscotch^1, do you?/"
if global.flag[46]=1 then global.msg[3]="\\E1* You do not DISLIKE&  cinnamon^1, do you?/"
global.msg[4]="* I know what your&  preference is^1, but.../"
global.msg[5]="* Would you turn up your&  nose if you found&  it on your plate?/"
global.msg[6]="* Right^1, right^1, I&  understand./"
global.msg[7]="\\E0* Thank you for being&  patient^1, by the way./"
global.msg[8]="\\TS \\F0 \\T0 %"
global.msg[9]="* Click.../%%"
scr_writetext(0,"x", 0, 0) // TODO:??
global.interact=1



