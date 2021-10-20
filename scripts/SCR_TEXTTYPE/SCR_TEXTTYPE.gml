function SCR_TEXTTYPE(argument0) {
	if argument0 != 0 then global.typer = argument0
	if global.typer = 1 then SCR_TEXTSETUP(fnt_main,c_white,x+20,y+20,x+(global.idealborder[1]-55),1,1,SND_TXT2,16,32) //main battle
	if global.typer = 2 then SCR_TEXTSETUP(fnt_plain,c_black,x,y,x+190,43,2,SND_TXT1,9,20)
	if global.typer = 3 then SCR_TEXTSETUP(fnt_curs,c_teal,x,y,x+100,39,3,SND_TXT1,10,10)
	if global.typer = 4 then SCR_TEXTSETUP(fnt_maintext,c_white,x+20,y+20,__view_get( e__VW.XView, view_current )+290,0,1,snd_txttor,8,18) //main toriel
	if global.typer = 5 then SCR_TEXTSETUP(fnt_maintext,c_white,x+20,y+20,__view_get( e__VW.XView, view_current )+290,0,1,SND_TXT1,8,18) //main overworld
	if global.typer = 6 then SCR_TEXTSETUP(fnt_plain,c_black,x,y,x+200,0.5,1,snd_floweytalk1,9,20) //flowey in battle
	if global.typer = 7 then SCR_TEXTSETUP(fnt_plain,c_black,x,y,x+200,2,2,snd_floweytalk2,9,20) //evilflowey in battle
	if global.typer = 8 then SCR_TEXTSETUP(fnt_plain,c_black,x,y,x+200,0.5,1,snd_txttor,9,20) //toriel in battle
	if global.typer = 9 then SCR_TEXTSETUP(fnt_maintext,c_white,x+20,y+20,__view_get( e__VW.XView, view_current )+290,0,1,snd_floweytalk1,8,18) //flowey overworld
	if global.typer = 10 then SCR_TEXTSETUP(fnt_maintext,c_white,x+20,y+20,__view_get( e__VW.XView, view_current )+290,0,1,snd_nosound,8,18) //main overworld SILENT
	if global.typer = 11 then SCR_TEXTSETUP(fnt_maintext,c_white,x+20,y+20,__view_get( e__VW.XView, view_current )+290,0,2,SND_TXT2,9,18) //intro
	if global.typer = 12 then SCR_TEXTSETUP(fnt_plain,c_black,x,y,x+200,1,3,snd_txttor2,10,20) //toriel-beaten in battle
	if global.typer = 13 then SCR_TEXTSETUP(fnt_plain,c_black,x,y,x+200,2,4,snd_txttor2,11,20) //toriel-beaten in battle
	if global.typer = 14 then SCR_TEXTSETUP(fnt_plain,c_black,x,y,x+200,3,5,snd_txttor2,14,20) //toriel-beaten in battle
	if global.typer = 15 then SCR_TEXTSETUP(fnt_plain,c_black,x,y,x+200,0,10,snd_txttor2,18,20) //toriel-beaten in battle
	if global.typer = 16 then SCR_TEXTSETUP(fnt_maintext,c_white,x+20,y+20,__view_get( e__VW.XView, view_current )+290,1.2,2,snd_floweytalk2,8,18) //evilflowey overworld
	if global.typer = 17 then SCR_TEXTSETUP(fnt_comicsans,c_white,x+20,y+20,__view_get( e__VW.XView, view_current )+290,0.8,1,snd_txtsans,8,18) //sas overworld
	if global.typer = 18 then SCR_TEXTSETUP(fnt_papyrus,c_white,x+20,y+20,__view_get( e__VW.XView, view_current )+290,0,1,snd_txtpap,11,18) //pap overworld
	if global.typer = 19 then SCR_TEXTSETUP(fnt_papyrus,c_white,x+20,y+20,__view_get( e__VW.XView, view_current )+290,0,1,snd_txtpap,15,18) //pap all capitals overworld
	if global.typer = 20 then SCR_TEXTSETUP(fnt_plainbig,c_black,x,y,x+200,0,2,snd_floweytalk2,25,20) //huge evilflowey
	if global.typer = 30 then SCR_TEXTSETUP(fnt_main,c_white,x+20,y+20,9999,0,2,snd_txtasg,20,36) //asgore gameover text
	if global.typer = 31 then SCR_TEXTSETUP(fnt_maintext,c_white,x+20,y+20,9999,0,2,snd_txtasg,12,18)



}
