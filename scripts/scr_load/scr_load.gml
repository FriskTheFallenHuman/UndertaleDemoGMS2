function scr_load() {
	filechoicebk=global.filechoice
	room_set_persistent(global.currentroom,0)
	SCR_GAMESTART()
	global.filechoice=filechoicebk
	//now load everything that isnt default

	file="file"+string(global.filechoice)
	myfileid=file_text_open_read(file)
	global.charname=file_text_read_string(myfileid); file_text_readln(myfileid);
	global.lv=file_text_read_real(myfileid); file_text_readln(myfileid);
	global.maxhp=file_text_read_real(myfileid); file_text_readln(myfileid);
	global.maxen=file_text_read_real(myfileid); file_text_readln(myfileid);
	global.at=file_text_read_real(myfileid); file_text_readln(myfileid);
	global.wstrength=file_text_read_real(myfileid); file_text_readln(myfileid);
	global.df=file_text_read_real(myfileid); file_text_readln(myfileid);
	global.adef=file_text_read_real(myfileid); file_text_readln(myfileid);
	global.sp=file_text_read_real(myfileid); file_text_readln(myfileid);
	global.xp=file_text_read_real(myfileid); file_text_readln(myfileid);
	global.gold=file_text_read_real(myfileid); file_text_readln(myfileid);
	global.kills=file_text_read_real(myfileid); file_text_readln(myfileid);

	for (i=0; i<8; i+=1)
	{
	global.item[i]=file_text_read_real(myfileid); file_text_readln(myfileid);
	global.phone[i]=file_text_read_real(myfileid); file_text_readln(myfileid);
	}

	global.weapon=file_text_read_real(myfileid); file_text_readln(myfileid);
	global.armor=file_text_read_real(myfileid); file_text_readln(myfileid);

	for (i=0; i<512; i+=1)
	{
	global.flag[i]=file_text_read_real(myfileid); file_text_readln(myfileid);
	}
	global.plot=file_text_read_real(myfileid); file_text_readln(myfileid);

	for (i=0; i<3; i+=1)
	{
	global.menuchoice[i]=file_text_read_real(myfileid); file_text_readln(myfileid);
	}

	global.currentsong=file_text_read_real(myfileid); file_text_readln(myfileid);
	global.currentroom=file_text_read_real(myfileid); file_text_readln(myfileid);
	obj_time.time=file_text_read_real(myfileid); file_text_readln(myfileid);

	global.lastsavedkills=global.kills
	global.lastsavedtime=obj_time.time
	global.lastsavedlv=global.lv

	file_text_close(myfileid)

	global.hp=global.maxhp
	global.en=global.maxen

	scr_tempsave()

	room_goto(global.currentroom)





}
