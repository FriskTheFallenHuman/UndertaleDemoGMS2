script_execute(SCR_BORDERSETUP,0,0,0,0,0);
currentplace=global.bmenuno



if global.monster[0] = 0
if global.monster[1] = 0
if global.monster[2] = 0
if won = 0
    {
    won = 1
    global.xp += global.xpreward[3]
    global.gold += global.goldreward[3]
    tlvl=global.lv
    scr_levelup()
    caster_stop(global.batmusic)
    caster_free(global.batmusic)
    global.msg[0]="* YOU WON!&* You earned "
    global.msg[0]+= string(global.xpreward[3]) + " XP and "
    global.msg[0]+= string(global.goldreward[3]) + " gold."
    if tlvl!=global.lv then { global.msg[0]+="&* Your LOVE increased."; sound_play(snd_levelup) }
    global.msg[0]+="/%"
    if global.extraintro=2 then
       {
       global.typer=5
       if global.flag[202]>=monsterpopulation1 then
         {
         caster_free(global.currentsong)
         audio_stop_sound(mus_battle1)
         global.currentsong=caster_load("music/toomuch.ogg")
         caster_loop(global.currentsong,1,1)
         global.flag[221]=1
         }
         else
         {
         caster_free(global.currentsong)
         global.currentsong="music/silence.ogg"
         caster_load(global.currentsong)
         caster_loop(global.currentsong,1,1)
         }
       global.msg[0]=global.msg[2]
       global.myfight=0
       global.mnfight=2
       obj_heart.x=-200
       }
    global.msc=0
    instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
    exit
    }
    

if global.mnfight = 0 and global.myfight = 0 then
{
// how to advance every menu
// menu 0 = fight,spell,etc. 1 = fight choice 2 = talk choice 10 = talk select 3 = item choice 3.5 = itemchoicepg2 11 = item target select 4 = spare choice
// 6 = 2ndary talk choice 7 = tertiary talk choice 8 = quaternary talk choice 9 = quintuple talk choice
  global.typer = 1
  if keyboard_multicheck_pressed(vk_shift) = false then
  if keyboard_multicheck_pressed(vk_enter) then
     {
      if global.bmenuno = 0 then
       { 
       global.talked = -1
       global.bmenucoord[2] = 0
       global.bmenuno = (global.bmenucoord[0] + 1)
       if global.bmenuno = 1 || global.bmenuno=2 || global.bmenuno=11 then
             {
               global.msc = 3
               if global.monster[global.bmenucoord[1]] = 0 then global.bmenucoord[1] += 1
               if global.monster[global.bmenucoord[1]] = 0 then global.bmenucoord[1] += 1
               if global.monster[0] = 0 and global.monster[2] = 0 then global.bmenucoord[1] = 1
               if global.bmenucoord[1] > 2 then
                    {
                    global.bmenucoord[1] = 0
                    if global.monster[0] = 0 then global.bmenucoord[1] = 1
                    if global.monster[1] = 0 then global.bmenucoord[1] = 2
                    if global.monster[2] = 0 then global.bmenucoord[1] = 0
                    }
      
               }
      if global.bmenuno = 3 then
             {
         if global.item[0]!= 0 then
              {
                global.bmenucoord[3]=0
                scr_itemnameb()
                //sound_play(snd_select)
                global.msc=9
               }
            else global.bmenuno=0
             }
      if global.bmenuno = 4 then global.msc=7            
              global.msg[4] = global.msg[0]
              sound_play(snd_select)
              with( OBJ_WRITER )
				halt = 3
              with( OBJ_INSTAWRITER )
				halt = 3
              instance_create(global.idealborder[0],global.idealborder[2],OBJ_INSTAWRITER)
              keyboard_clear(vk_enter)
              exit
       }
  // if you are already in a menu
       
     if global.bmenuno = 1 then
         {
         global.mytarget = global.bmenucoord[1]
         with( OBJ_WRITER )
			halt = 3
         with( OBJ_INSTAWRITER )
			halt = 3
         global.myfight = 1 //attacking
         obj_heart.x = -200
         sound_play(snd_select)
         scr_attack()
         keyboard_clear(vk_enter)
         }
       if global.bmenuno = 10 then
         {
         global.talked = global.bmenucoord[2]
         global.mntrg = global.monsterinstance[global.mytarget]
         with global.mntrg whatiheard = global.talked
         with( OBJ_WRITER )
			halt = 3
         with( OBJ_INSTAWRITER )
			halt = 3
          sound_play(snd_select)
         global.myfight = 2 //talking
         obj_heart.x = -200
         keyboard_clear(vk_enter)
         }
   if global.bmenuno = 2 then
         {
         global.mytarget = global.bmenucoord[1]
         with( OBJ_WRITER )
			halt = 3
         with ( OBJ_INSTAWRITER )
			halt = 3
         global.bmenuno = 10
         global.msc = (1000 + global.monstertype[global.mytarget])
         instance_create(global.idealborder[0],global.idealborder[2],OBJ_INSTAWRITER)
         keyboard_clear(vk_enter)
         }
   if global.bmenuno = 3 || global.bmenuno=3.5 then // items
         {
         if keyboard_check(vk_right)=false and keyboard_check(vk_left)=false
          {
         with( OBJ_WRITER )
			halt = 3
         itempos=global.bmenucoord[3]+((global.bmenuno-3)*8)
         thisitemid=global.item[itempos]
         scr_itemuseb(itempos,thisitemid)
         global.talked=91
         global.myfight = 4 //item usage (i suppose?)
         obj_heart.x = -200
         sound_play(snd_select)
          }
         keyboard_clear(vk_enter)
         }
   if global.bmenuno = 4 // mercy
         {
         with ( OBJ_WRITER )
			halt = 3
         global.mercyuse=global.bmenucoord[4]
         if global.mercyuse=1 then
         {scr_runaway(); global.talked=90}
         if runaway=0 then  sound_play(snd_select)
         global.myfight = 4 //item usage (i suppose?)
         obj_heart.x = -200
         keyboard_clear(vk_enter)
         }
      } 
      
//go backwards through the menu

 if keyboard_multicheck_pressed(vk_shift) then
      {
          if global.bmenuno != 0 and global.bmenuno < 6 then
            {
            with ( OBJ_WRITER )
				halt = 3
            with( OBJ_INSTAWRITER )
				halt = 3
            global.bmenuno = 0
            global.typer = 1
            global.msg[0] = global.msg[4]
            global.msc = 0
            instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
            keyboard_clear(vk_shift)
            }
          if global.bmenuno = 10 then
           {
            with ( OBJ_WRITER )
				halt = 3
            with ( OBJ_INSTAWRITER )
				halt = 3
            global.bmenuno = 2
            global.typer = 1
            global.msc = 3
            instance_create(global.idealborder[0],global.idealborder[2],OBJ_INSTAWRITER)
            keyboard_clear(vk_shift)
            }
          if global.bmenuno = 11 then
           {
            with ( OBJ_WRITER )
				halt = 3
            with ( OBJ_INSTAWRITER )
				halt = 3
            global.bmenuno = 3
            global.typer = 1
            global.msc = 0
            instance_create(global.idealborder[0],global.idealborder[2],OBJ_INSTAWRITER)
            keyboard_clear(vk_shift)
            }
      }
        
   // let's set the coordinates. fight menu then talk menu. then item menu. then mercy menu
  if global.bmenuno = 1 || global.bmenuno=2 || global.bmenuno=11 then
            {
            obj_heart.x = global.idealborder[0] + 32
            obj_heart.y = global.idealborder[2] + 28 + global.bmenucoord[1]*32
            }
  if global.bmenuno = 10 then
            {
            if global.bmenucoord[2] <= 2 then obj_heart.x = global.idealborder[0] + 32
            else obj_heart.x = global.idealborder[0] + 292
            if global.bmenucoord[2] <= 2 then
            obj_heart.y = global.idealborder[2] + 28 + global.bmenucoord[2]*32
            else
            obj_heart.y = global.idealborder[2] + 28 + (global.bmenucoord[2] - 3)*32
            }
    if global.bmenuno = 3 or global.bmenuno=3.5 then
            {
            if global.bmenucoord[3] <= 1 then obj_heart.y = global.idealborder[2] + 28
              else obj_heart.y = global.idealborder[2] + 60
            
            if global.bmenucoord[3] = 0 or global.bmenucoord[3] = 2 then obj_heart.x = global.idealborder[0] + 32
            else obj_heart.x = global.idealborder[0] + 280
            }
    if global.bmenuno = 4 then
            {
            obj_heart.x = global.idealborder[0] + 32
            obj_heart.y = global.idealborder[2] + 28 + global.bmenucoord[4]*32
            }        
}
// more coordinates



if keyboard_multicheck_pressed(vk_shift) then
if global.mnfight = 0
            {
            if instance_number(OBJ_WRITER) > 0 then
            OBJ_WRITER.stringpos = string_length(OBJ_WRITER.originalstring)
            keyboard_clear(vk_shift)
            }

//// well, this is if it's not your turn

if global.myfight = 1 or global.myfight = 2 or global.mnfight = 3 then obj_heart.x = -400
if global.mnfight = 3 then
   {
   global.border = 0
   SCR_BORDERSETUP()
   if obj_lborder.x = global.idealborder[0] then
      {
      global.typer=1
      global.msc=0
      instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
      global.bmenuno = 0
      global.myfight = 0
      global.mnfight = 0
      global.turn+=1
      global.mercyuse=-1
      }
   }
   
 if global.myfight = 3 then
            {
            obj_heart.x = global.idealborder[0] + 32 + global.bmenucoord[6]*252
            obj_heart.y = global.idealborder[2] + 92
           if keyboard_multicheck_pressed(vk_enter)
               {
                   global.heard = 0
                  global.talked = 6 + global.bmenucoord[6]
                   with global.monsterinstance[global.mytarget] whatiheard = global.talked
                  obj_heart.x = -200
                 global.myfight = 4
                 global.mnfight = 2
               }
            }   
 if global.myfight = 4 then // using an item + running away
           {
           if runaway=0 then
              {
           obj_heart.x = - 200
           if instance_exists(OBJ_WRITER)=false then
              {
              global.myfight = 0
              global.mnfight = 1
              keyboard_clear(vk_enter)
              }
              }
           }
           

   
if global.hp < 1 then scr_gameoverb()

if currentplace<global.bmenuno then 
if sound_isplaying(snd_select) != true sound_play(snd_select)

