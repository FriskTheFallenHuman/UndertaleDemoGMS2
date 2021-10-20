function scr_namingscreen() {
	//selected=65
	//charname=""
	//naming=3
	//selected2=0
	//selected3=0
	//q=0


	draw_set_color(c_white)
	draw_set_font(fnt_maintext)

	if naming=4 then
	   {
	   global.charname=charname
	   instance_create(0,0,obj_whitefader)
	   caster_free(menusong1)
	   caster_free(menusong2)
	   caster_free(menusong3)
	   caster_free(menusong4)
	   alerm=0
	   naming=5
	   cy=caster_load("music/cymbal.ogg")
	   caster_play(cy,0.8,0.95)
	   }
   
	if naming=5 then
	{
	alerm+=1
	if q<120 then q+=1
	draw_text_transformed(140+random(r*2)-q/3,q/2+55+random(r*2),string_hash_to_newline(charname),1+q/50,1+q/50,random_ranger(-r*q/60,r*q/60))
	if alerm>179 then
	   {
	   instance_create(0,0,obj_persistentfader)
	   caster_free(cy)
	   room_goto_next()
	   }
	}

	if naming=2
	  {
	  if keyboard_multicheck_pressed(0)=1
	   {
	   if selected2=1 and string_length(charname)>0 then naming=4
	   if selected2=0 then naming=1
	   keyboard_clear(vk_enter)
	   }
	   if naming=2
	   {
	   draw_set_color(c_white)
	   if q<120 then q+=1
	  draw_text_transformed(140+random(r*2)-q/3,q/2+55+random(r*2),string_hash_to_newline(charname),1+q/50,1+q/50,random_ranger(-r*q/60,r*q/60))
	  draw_text(90,30,string_hash_to_newline("Is this name correct?"))
	  draw_set_color(c_white)
	  if selected2=0 then draw_set_color(c_yellow) //Quit
	  draw_text(70,200,string_hash_to_newline("No"))
	  draw_set_color(c_white)
	  if selected2=1 then draw_set_color(c_yellow) //Done
	  draw_text(210,200,string_hash_to_newline("Yes"))
  
	    if keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_left)
	     {
	     if selected2=1 then selected2=0
	     else selected2=1
	     }
	     }
	  }

	if naming=1 then
	{
	if selected<65 then selected=65
	i=0
	j=0
	m=0
	r=0.5
	q=0
	for (n=65; n<91; n+=1)
	  {
	   draw_set_color(c_white)
	   if n=selected then draw_set_color(c_yellow)
	  draw_text(60+j*32+random(r),75+m*14+random(r),string_hash_to_newline(chr(n)))
	    j+=1
	    if j>6 then {m+=1; j=0}
	  }

	i=0
	j=0
	m=0
	for (n=97; n<123; n+=1)
	  {
	   draw_set_color(c_white)
	   if n=selected then draw_set_color(c_yellow)
	  draw_text(60+j*32+random(r),135+m*14+random(r),string_hash_to_newline(chr(n)))
	    j+=1
	    if j>6 then {m+=1; j=0}
	  }
  
	draw_set_color(c_white)
	if selected=123 then draw_set_color(c_yellow) //Quit
	draw_text(60,200,string_hash_to_newline("Quit"))
	draw_set_color(c_white)
	if selected=124 then draw_set_color(c_yellow) //Backspace
	draw_text(120,200,string_hash_to_newline("Backspace"))
	draw_set_color(c_white)
	if selected=125 then draw_set_color(c_yellow) //Done
	draw_text(220,200,string_hash_to_newline("Done"))

	if keyboard_check_pressed(vk_right)
	   {
	   if selected=90 then selected=97
	   else
	   if selected<125 then selected+=1
	   }
   
	if keyboard_check_pressed(vk_left)
	   {
	   if selected=97 then selected=90
	   else
	   if selected>65 then selected-=1
	   }

	if keyboard_check_pressed(vk_down)
	   {
	   if selected<=122
	     {
	     if selected>=86 and selected<=90 then selected+=4
	     if selected=84 or selected=85 then selected+=11
	     selected+=7
	     if selected>=123 then selected=124
	     }
	     else {
	         if (selected == 125) { selected = 70; }
	         else if (selected == 124) { selected = 68; }
	         else { selected = 65; }
	     }
	   }

	if keyboard_check_pressed(vk_up)
	   {
	   if selected>71
	     {
	     if selected<=122
	        {
	        if selected>=97 and selected<=101 then selected-=4
	         if selected=102 or selected=103 then selected-=11
	         selected-=7
	         }
	         else selected=122
	     }
	     else {
	         if (selected > 69) { selected = 125; }
	         else if (selected > 67) { selected = 124; }
	         else selected = 123;
	     }
	   }

   
	if keyboard_multicheck_pressed(0)=1
	   {
	   if selected>122 then
	     {
	     if selected=123 then naming=3
	     if selected=124 then keyboard_key_press(vk_shift)
	     if selected=125 then
	     if string_length(charname)>0 then {naming=2; selected2=0}
	     keyboard_clear(vk_enter)
	     }
	     else 
	     {
	     if string_length(charname)=6 then charname=string_delete(charname,6,1)
	     charname+=chr(selected)
	     //if string_length(charname)=6 and selected<123 then selected=125
	     }
	   }
   
	if keyboard_multicheck_pressed(1)=1
	   {
	   s=string_length(charname)
	   if s>0 then
	      {
	      charname=string_delete(charname,s,1)
	      }
	      keyboard_key_release(vk_shift)
	   }

	draw_set_color(c_white)
	draw_text(140,55,string_hash_to_newline(charname))
	draw_text(90,30,string_hash_to_newline("Name the fallen human."))

	}

	if naming=3 then
	{
	iniread=ini_open("undertale.ini")
	if ini_section_exists("General") then
	    {

	    minutes=floor(time/1800)
	    seconds=round(((time/1800-minutes))*60)
	    if seconds=60 then seconds=0
	    if seconds<10 then seconds="0"+string(seconds)
	    scr_roomname(roome)
	    draw_text(70,60,string_hash_to_newline(name))
	    draw_text(140,60,string_hash_to_newline("LV "+string(love)))
	    draw_text(210,60,string_hash_to_newline(string(minutes)+":"+string(seconds)))
	    draw_text(70,80,string_hash_to_newline(roomname))
	    //draw_text(120,130,string(kills))
	    if selected3=0 then draw_set_color(c_yellow)
	    draw_text(85,110,string_hash_to_newline("Continue"))
	    draw_set_color(c_white)
	    if selected3=1 then draw_set_color(c_yellow)
	    draw_text(175,110,string_hash_to_newline("Restart"))
    
	    if keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_left) then
	        {
	        if selected3=0 then selected3=1
	        else selected3=0
	        keyboard_clear(vk_left)
	        keyboard_clear(vk_right)
	        }
	    if keyboard_multicheck_pressed(0)=1 then
	        {
	        if selected3=0 then
	            {
	            caster_free(menusong1)
	            caster_free(menusong2)
	            caster_free(menusong3)
	            caster_free(menusong4)
	            if file_exists("file0")=false then room_goto_next()
	            else 
	            {
	            scr_load()
	            }
	           }
	        if selected3=1 then
	            {
	            naming=1
	            keyboard_clear(vk_enter)
	            }
	        }
	    }
	else
	    {
	    draw_text(70,60,string_hash_to_newline("EMPTY"))
	   // draw_text(140,60,"LV "+string(love))
	    draw_text(210,60,string_hash_to_newline("0:00"))
	    draw_set_color(c_yellow)
	    draw_text(85,90,string_hash_to_newline(" --- Instruction --"))
	    draw_text(85,110,string_hash_to_newline("[Z] - Confirm"))
	    draw_text(85,128,string_hash_to_newline("[X] - Cancel"))
	    draw_text(85,146,string_hash_to_newline("[C] - Menu (In-game)"))
	    draw_text(85,164,string_hash_to_newline("[F4] - Fullscreen"))
	    draw_text(85,182,string_hash_to_newline("[Hold ESC] - Quit"))
	    draw_text(85,200,string_hash_to_newline("When HP=0, you lose."))
	    if keyboard_multicheck_pressed(0)=1 then
	       {
	       naming=1
	       keyboard_clear(vk_enter)
	       }
	    }
	}




}
