function scr_battlegroup() {
	//make some noise
	   global.monster[0] = 0
	global.monster[1] = 0
	global.monster[2] = 0
	global.monster[3] = 0


	if global.battlegroup = 1 then
	   {
	   global.monstertype[0] = 1
	   global.monstertype[1] = 1
	   global.monstertype[2] = 1
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=2
	   global.battlelv=1
	   global.actfirst=0
	   global.extraintro=0
	   global.monsterinstance[0] = instance_create(216,136,obj_testmonster)
	   global.monsterinstance[1] = instance_create(418,136,obj_testmonster)
	   global.monsterinstance[2] = instance_create(14,136,obj_testmonster)
	   }
   
	if global.battlegroup = 2 then
	   {
	   global.monstertype[0] = 2
	   global.monstertype[1] = 0
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/prebattle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=global.battlegroup+3000
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	   global.monsterinstance[0] = instance_create(216,136,obj_dummymonster)   
	   }
   
	if global.battlegroup = 3 then
	   {
	   global.monstertype[0] = 3
	   global.monstertype[1] = 0
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/prebattle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=global.battlegroup+3000
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	   global.monsterinstance[0] = instance_create(216,136,obj_fakefroggit)   
	   }
   
	if global.battlegroup = 4 then
	   {
	   global.monstertype[0] = 4
	   global.monstertype[1] = 0
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=global.battlegroup+3000
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	   global.monsterinstance[0] = instance_create(216,136,obj_froggit)   
	   }
   
	if global.battlegroup = 5 then
	   {
	   global.monstertype[0] = 5
	   global.monstertype[1] = 0
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=global.battlegroup+3000
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	   global.monsterinstance[0] = instance_create(214,16,obj_whimsun)   
	   }
   
	if global.battlegroup = 6 then
	   {
	   global.monstertype[0] = 4
	   global.monstertype[1] = 5
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=global.battlegroup+3000
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	   global.monsterinstance[0] = instance_create(216,136,obj_froggit) 
	   global.monsterinstance[1] = instance_create(317,16,obj_whimsun)   
	   }

	if global.battlegroup = 7 then
	   {
	   global.monstertype[0] = 6
	   global.monstertype[1] = 0
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=global.battlegroup+3000
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	   global.monsterinstance[0] = instance_create(216,156,obj_moldsmal)
	   }
   
	if global.battlegroup = 8 then
	   {
	   global.monstertype[0] = 6
	   global.monstertype[1] = 6
	   global.monstertype[2] = 6
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=global.battlegroup+3000
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	   global.msc=0
	   global.msg[0]="* You tripped into a&  line of Moldsmals."
	 //  global.monsterinstance[0] = instance_create(115,136,obj_froggit)
	   global.monsterinstance[0] = instance_create(15,156,obj_moldsmal)
	   global.monsterinstance[1] = instance_create(217,156,obj_moldsmal)
	   global.monsterinstance[2] = instance_create(421,156,obj_moldsmal)
	   }
 
	if global.battlegroup = 9 then
	   {
	   global.monstertype[0] = 4
	   global.monstertype[1] = 4
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	    global.msg[0]="* A pair of Froggits hop&  towards you."
	   global.monsterinstance[0] = instance_create(116,136,obj_froggit)
	   global.monsterinstance[1] = instance_create(320,136,obj_froggit) 
	   }
   
	if global.battlegroup = 10 then
	   {
	   global.monstertype[0] = 6
	   global.monstertype[1] = 6
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	    global.msg[0]="* Moldsmal and Moldsmal&  block the way."
	   global.monsterinstance[0] = instance_create(116,156,obj_moldsmal)
	   global.monsterinstance[1] = instance_create(320,156,obj_moldsmal) 
	   }

	if global.battlegroup = 11 then
	   {
	   global.monstertype[0] = 6
	   global.monstertype[1] = 7
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	    global.msg[0]="* Migosp crawled up close!"
	   global.monsterinstance[0] = instance_create(116,156,obj_moldsmal)
	   global.monsterinstance[1] = instance_create(320,136,obj_migosp) 
	   }
   
	if global.battlegroup = 12 then
	   {
	   global.monstertype[0] = 7
	   global.monstertype[1] = 8
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	    global.msg[0]="* Vegetoid came out of the earth!"
	   global.monsterinstance[0] = instance_create(116,136,obj_migosp)
	   global.monsterinstance[1] = instance_create(320,136,obj_vegetoid) 
	   }
   
	if global.battlegroup = 13 then
	   {
	   global.monstertype[0] = 9
	   global.monstertype[1] = 0
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	    global.msg[0]="* Loox drew near!"
	   global.monsterinstance[0] = instance_create(218,124,obj_loox)
	   }
   
	if global.battlegroup = 14 then
	   {
	   global.monstertype[0] = 9
	   global.monstertype[1] = 8
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	    global.msg[0]="* Vegetoid and Loox attacked!"
	   global.monsterinstance[0] = instance_create(116,124,obj_loox)
	   global.monsterinstance[1] = instance_create(320,136,obj_vegetoid) 
	   }
   
	if global.battlegroup = 15 then
	   {
	   global.monstertype[0] = 9
	   global.monstertype[1] = 8
	   global.monstertype[2] = 7
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	    global.msg[0]="* Loox and co. decided to&  pick on you!"
	   global.monsterinstance[0] = instance_create(14,124,obj_loox)
	   global.monsterinstance[1] = instance_create(218,136,obj_vegetoid)
	   global.monsterinstance[2] = instance_create(422,136,obj_migosp) 
	   }

	if global.battlegroup = 16 then
	   {
	   global.monstertype[0] = 8
	   global.monstertype[1] = 8
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	    global.msg[0]="* A pair of Vegetoids&  came out of the ground!"
	   global.monsterinstance[0] = instance_create(116,136,obj_vegetoid)
	   global.monsterinstance[1] = instance_create(320,136,obj_vegetoid)
	   }
   
	if global.battlegroup = 17 then
	   {
	   global.monstertype[0] = 9
	   global.monstertype[1] = 9
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	    global.msg[0]="* A pair of Loox&  decided to pick on you!"
	   global.monsterinstance[0] = instance_create(116,124,obj_loox)
	   global.monsterinstance[1] = instance_create(320,124,obj_loox)
	   }
   
	if global.battlegroup = 18 then
	   {
	   global.monstertype[0] = 8
	   global.monstertype[1] = 0
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	    global.msg[0]="* Vegetoid came out of the earth!"
	   global.monsterinstance[0] = instance_create(218,136,obj_vegetoid)
	   }

	if global.battlegroup = 19 then
	   {
	   global.monstertype[0] = 0
	   global.monstertype[1] = 0
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.3,0.5)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=2
	    global.msg[2]="* But nobody came./%"
	   }



	if global.battlegroup = 20 then
	   {
	   global.monstertype[0] = 11
	   global.monstertype[1] = 0
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/ghostbattle.ogg")
	   caster_loop(global.batmusic,1,1)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	    global.msg[0]="* Here comes Napstablook."
	   global.monsterinstance[0] = instance_create(266,106,obj_napstablook)
	   }   

	if global.battlegroup = 21 then
	   {
	   global.monstertype[0] = 9
	   global.monstertype[1] = 0
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	    global.msg[0]="* Loox drew near!"
	   global.monsterinstance[0] = instance_create(218,124,obj_loox)
	   }
   
	if global.battlegroup = 22 then
	   {
	   global.monstertype[0] = 10
	   global.monstertype[1] = 0
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/boss1.ogg")
	   caster_loop(global.batmusic,1,1)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	   global.msg[0]="* Toriel blocks the way!"
	   global.monsterinstance[0] = instance_create(250,42,obj_torielboss)
	   }
   
   
	if global.battlegroup = 23 then //doge B
	   {
	   global.monstertype[0] = 13
	   global.monstertype[1] = 0
	   global.monstertype[2] = 0
	   global.batmusic=caster_load("music/battle1.ogg")
	   caster_loop(global.batmusic,0.5,1)
	   global.msc=0
	   global.battlelv=0
	   global.actfirst=0
	   global.extraintro=0
	   global.msg[0]="* Doge appears."
	   global.monsterinstance[0] = instance_create(216,38,obj_dogeB)
	   }   
   
	global.turn = 0



}
