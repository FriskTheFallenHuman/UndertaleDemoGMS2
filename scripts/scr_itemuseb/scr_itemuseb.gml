function scr_itemuseb(argument0, argument1) {
	//argument0 = where's the item
	//argument1 = whats the item
	switch(argument1)
	{
	case 1: //monster candy
	        global.msg[0] = "* You ate the Monster Candy."
	        if global.seriousbattle=0
	          {
	        randomtext=round(random(15))
	        if randomtext<=2 then global.msg[0] += " &* Very un-licorice-like."
	        if randomtext=15 then global.msg[0] += " &* ... tastes like licorice."
	          }
	        scr_recoitem(10)
	        instance_create(0,0,obj_foodsound)
	        scr_itemshift(argument0,0)
	        break;
	case 2: // croquette roll
	        global.msg[0] = "* You hit the Croquet Roll into&  your mouth."
	          if global.seriousbattle=1 then global.msg[0]="* You ate the Croquet Roll."
	          instance_create(0,0,obj_foodsound)
	        scr_recoitem(15)
	        scr_itemshift(argument0,0)
	        break;
	case 3: //butter knife
	       // scr_weaponeq(argument0,argument1)
	       // sound_play(snd_item)
	        scr_writetext(0,"* You threw the stick away^1.&* Then picked it back up./%",0,0)
	        break;
	case 4: //bandage
	        global.msg[0] = "* You re-applied the bandage."
	        sound_play(snd_power)
	        if global.seriousbattle=0 then global.msg[0] += "&* Still kind of gooey."
	        scr_recoitem(10)
	        scr_itemshift(argument0,0)
	        break;
	case 5: //rock candy
	        global.msg[0] = "* You ate the Rock Candy."
	        scr_recoitem(1)
	        instance_create(0,0,obj_foodsound)
	        scr_itemshift(argument0,0)
	        break;        
        
	case 6: // pumpkin rings
	        global.msg[0] = "* You ate the Pumpkin Rings."
	          instance_create(0,0,obj_foodsound)
	        scr_recoitem(8)
	        scr_itemshift(argument0,0)
	        break;

	case 7: // Spider Donut
	        global.msg[0] = "* You ate the Spider Donut."
	        if global.seriousbattle=0
	        if global.inbattle=1
	          {
	        randomtext=ceil(random(10))
	        if randomtext>9 then
	        global.msg[0]= "* Don't worry^1, Spider didn't."
	          }
	          instance_create(0,0,obj_foodsound)
	        scr_recoitem(12)
	        scr_itemshift(argument0,0)
	        break;

	case 8: // stoc on
	        global.msg[0] = "* You ate the Stoic Onion."
	          if global.seriousbattle=0
	          {
	        randomtext=round(random(10))
	        if randomtext>8 then
	        global.msg[0]+= "&* You didn't cry..."
	          }
	          instance_create(0,0,obj_foodsound)
	        scr_recoitem(5)
	        scr_itemshift(argument0,0)
	        break;
	case 9: // ghstrfuit
	        global.msg[0] = "* You ate the Ghost Fruit."
	          foodsounder=instance_create(0,0,obj_foodsound)
	          if global.seriousbattle=0 with foodsounder soundtype=2
	        scr_recoitem(16)
	        scr_itemshift(argument0,0)
	        break;
	case 10: // spider cider
	        global.msg[0] = "* You drank the Spider Cider."
	          instance_create(0,0,obj_foodsound)
	        scr_recoitem(22)
	        scr_itemshift(argument0,0)
	        break;
	case 11: // Butterscotch pie
	        global.msg[0] = "* You ate the Butterscotch Pie."
	          instance_create(0,0,obj_foodsound)
	        scr_recoitem(999)
	        scr_itemshift(argument0,0)
	        break;
	case 12: //ribbon
	        scr_armoreq(argument0,argument1)
	        sound_play(snd_item)
	        scr_writetext(0,"* You equipped the ribbon./%",0,0)
	        break;
	case 13: //soul knife
	        scr_weaponeq(argument0,argument1)
	        sound_play(snd_item)
	        scr_writetext(0,"* You equipped Toy Knife./%",0,0)
	        break;


	case 201: //Say Hello
	        if global.plot<19.9
	        {
	          if global.plot>18 and room=room_torhouse2
	              {
	               sound_play(snd_phone)
	               scr_writetext(1507,"x",0,0)
	              }
	              else
	              {
	              sound_play(snd_phone)
	              scr_writetext(1501,"x",0,0)
	              }
	        }
	        else
	         {
	          sound_play(snd_phone)
	          scr_writetext(1506,"x",0,0)
	         }
	        break;
	case 202: //Puzzle Help
	        if global.plot<19.9
	        {
	          if global.plot>18 and room=room_torhouse2
	              {
	               sound_play(snd_phone)
	               scr_writetext(1507,"x",0,0)
	              }
	              else
	              {
	              sound_play(snd_phone)
	               scr_writetext(1502,"x",0,0)
	               scr_phoneshift(argument0,0)
	               }
	        }
	         else
	         {
	          sound_play(snd_phone)
	          scr_writetext(1506,"x",0,0)
	         }
	        break;
	case 203: //About Yourself
	    if global.plot<19.9
	        {
	          if global.plot>18 and room=room_torhouse2
	              {
	               sound_play(snd_phone)
	               scr_writetext(1507,"x",0,0)
	              }
	              else
	              {
	              sound_play(snd_phone)
	               scr_writetext(1503,"x",0,0)
	              scr_phoneshift(argument0,0)
	              }
	        }
	         else
	         {
	          sound_play(snd_phone)
	          scr_writetext(1506,"x",0,0)
	         }
	        break;
	case 204: //Call her "mom"
	        if global.plot<19.9
	        {
	          if global.plot>18 and room=room_torhouse2
	              {
	               sound_play(snd_phone)
	               scr_writetext(1507,"x",0,0)
	              }
	              else
	              {
	              sound_play(snd_phone)
	             scr_writetext(1504,"x",0,0)
	              scr_phoneshift(argument0,0)
	              }
	        }
	         else
	         {
	          sound_play(snd_phone)
	          scr_writetext(1506,"x",0,0)
	         }
	        break;
	case 205: //flirt
	        if global.plot<19.9
	        {
	          if global.plot>18 and room=room_torhouse2
	              {
	               sound_play(snd_phone)
	               scr_writetext(1507,"x",0,0)
	              }
	              else
	              {
	              sound_play(snd_phone)
	             if global.flag[41]=1 then scr_phoneshift(argument0,0)
	              scr_writetext(1505,"x",0,0)
	              }
	        }
	         else
	         {
	          sound_play(snd_phone)
	          scr_writetext(1506,"x",0,0)
	         }
	        break;
	}




}
