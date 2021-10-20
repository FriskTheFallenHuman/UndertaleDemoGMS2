function SCR_GAMESTART() {
	randomize()

	global.hp = 20 //hp
	global.maxhp = 20 //hp
	global.en = 20 //energy
	global.maxen = 20 //energy
	global.at = 10 //attk
	global.df = 10 //def
	global.adef= 0 // armor defence
	global.sp = 4 //sped
	global.asp = 4 //actual sped
	global.hb = 5 //hitbox
	global.gt = 5 //guts
	global.km = 0 //karma
	global.ph = 30 //phasing
	global.gold = 0
	global.xp = 0
	global.lv = 1
	global.charname=" "
	for (i=0; i<8; i+=1)
	{
	global.item[i]= 0
	global.spell[i] = 1
	global.bulletvariable[i] = 0
	global.menuno = -1
	global.menucoord[i] = 0
	global.bmenuno = 0
	global.bmenucoord[i] = 0
	}

	for (i=0; i<24; i+=1)
	{
	global.msg[i] = "%%%"
	global.areapop[i]=0
	}
	global.area=0
	for (i=0; i<512; i+=1)
	{
	global.flag[i]= 0
	}
	global.idealborder[0]= 0
	global.idealborder[1]= 0
	global.idealborder[2]= 0
	global.idealborder[3]= 0

	global.plot = 0
	global.currentroom=0

	for (i=0; i<3; i+=1)
	{
	global.monstername[i]="Error"
	global.monsterhp[i]=50
	global.monstermaxhp[i]=50
	global.monsterdef[i]=0
	global.xpreward[i] = 0
	global.goldreward[i] =0
	global.itemrewardid[i] = 0
	global.itemrewardchance[i] = 0
	global.monster[i] = 0
	global.attacker[i] = 0
	global.mnpwr[i] = 0
	global.bulletpwr[i] = 0
	global.hurtanim[i] = 0
	}
	global.xpreward[3] = 0
	global.goldreward[3] = 0

	global.battlegroup = 3
	global.turntimer = 0
	global.talked = 0
	global.inv = 20
	global.invc = 0
	global.turnmax = 0
	global.myfight = 0
	global.mnfight = 0
	global.incombat = 0
	global.firingrate = 14
	global.border = 0
	global.turn = 0
	global.actfirst = 0
	global.extraintro = 0
	global.mytarget = 0
	global.confirm = "ord('z')"
	global.damagetimer = 90

	//spellnames

	//itemnames

	global.attacktype = 1
	global.wstrength = 0
	global.pwr = 0
	global.attackspeed = 11
	global.attackspeedr = 2

	global.wstrength = 0
	global.kills = 0
	global.specialbattle=0

	global.myview = 0
	global.hshake = 0
	global.vshake = 0
	global.shakespeed = 0
	global.encounter=0


	// overworld

	global.facing = 0
	global.phasing= 0

	global.choices = 0

	global.interact = 0
	global.viewpan = 0
	global.inbattle=0
	global.facechoice=0
	global.faceemotion=0
	global.seriousbattle=0
	global.mercy=0 // if 1, then there's no "run" command. if 2, then you cannot select anything at all.

	global.item[0]= 0
	global.item[1]= 0
	global.item[2]= 0
	global.item[3]= 0
	global.item[4]= 0
	global.item[5]= 0
	global.item[6]= 0
	global.item[7]= 0
	global.item[8]= 0
	global.weapon = 3
	global.armor = 4

	global.phone[0]=0  // papyrus
	global.phone[1]=0  // undine
	global.phone[2]=0  // mettaton
	global.phone[3]=0  // sans
	global.phone[4]=0  // dralphys
	global.phone[5]=0  // other
	global.phone[6]=0
	global.phone[7]=0
	global.phone[8]=0
	//0 --> nobody
	//1 --> torielHello
	//2 --> torielPuzzleHelp
	//3 --> torielAboutYou
	//4 --> torielMom...
	//5 --> torielFlirt
	//6 --> Papyrus
	//7 --> Sans1 (prank number 1)
	//8 --> Sans2 (prank number 2)
	//9 --> Sans3 (prank number 3)
	//10 --> GrandpaSemi (Hello... id like a large pepperoni pizza...)
	//11 --> DrAlphys
	//12 --> Undine
	//13 --> Mettaton


	global.menuchoice[0]=1
	global.menuchoice[1]=1
	global.menuchoice[2]=0
	global.menuchoice[3]=0
	global.choice=-1

	global.lastsavedtime = 0
	global.lastsavedkills = 0
	global.lastsavedlv=0
	global.filechoice=0
	global.dontfade=0

	global.entrance=0
	global.currentsong=" "
	global.typer=5

	global.debug=1



}
