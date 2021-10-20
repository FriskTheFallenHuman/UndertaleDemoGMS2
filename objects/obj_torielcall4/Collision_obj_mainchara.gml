sound_play(snd_phone)
global.typer=5
global.facechoice=0
global.faceemotion=0
global.msg[0]="* Ring..\\E0.\\TT /"
global.msg[1]="\\F1 %"
global.msg[2]="* Hello?/"
global.msg[3]="\\E1* You do not have&  any allergies^1, do&  you?/"
global.msg[4]="* Huh^1?&* Why am I asking?/"
global.msg[5]="\\E0* No reason..^1.&* No reason at all./"
global.msg[6]="\\TS \\F0 \\T0 %"
global.msg[7]="* Click.../%%"
scr_writetext(0,"x", 0, 0)
global.interact=1
scr_phoneget(202)


