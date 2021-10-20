

if global.interact=5 then
{
currentmenu=global.menuno
if global.menuno<6 then currentspot=global.menucoord[global.menuno]


//draw da rectangles
xx=__view_get( e__VW.XView, view_current )
yy=__view_get( e__VW.YView, view_current ) + 10
moveyy=yy
if obj_mainchara.y > yy+120 then moveyy+=135
if global.menuno!=4 then
   {
draw_set_color(c_white)
draw_rectangle(16+xx,16+moveyy,86+xx,70+moveyy,false)
draw_rectangle(16+xx,74+yy,86+xx,147+yy,false)
if global.menuno=1 || global.menuno=5 || global.menuno=6  then draw_rectangle(94+xx,16+yy,266+xx,196+yy,false)
if global.menuno=2 then draw_rectangle(94+xx,16+yy,266+xx,224+yy,false)
if global.menuno=3 then draw_rectangle(94+xx,16+yy,266+xx,150+yy,false)
if global.menuno=7 then draw_rectangle(94+xx,16+yy,266+xx,216+yy,false)

draw_set_color(c_black)
draw_rectangle(19+xx,19+moveyy,83+xx,67+moveyy,false)
draw_rectangle(19+xx,77+yy,83+xx,144+yy,false)
if global.menuno=1 || global.menuno=5 || global.menuno=6 then draw_rectangle(97+xx,19+yy,263+xx,193+yy,false)
if global.menuno=2 then draw_rectangle(97+xx,19+yy,263+xx,221+yy,false)
if global.menuno=3 then draw_rectangle(97+xx,19+yy,263+xx,147+yy,false)
if global.menuno=7 then draw_rectangle(97+xx,19+yy,263+xx,213+yy,false)

// draw da 0 menu
draw_set_color(c_white)
draw_set_font(fnt_small)
draw_text(23+xx,49+moveyy,string_hash_to_newline("HP  "+string(global.hp)+"/"+string(global.maxhp)))
draw_text(23+xx,40+moveyy,string_hash_to_newline("LV  "+string(global.lv)))
//draw_text(23+xx,49+moveyy,"EN  "+string(global.en)+"/"+string(global.maxen))
draw_text(23+xx,58+moveyy,string_hash_to_newline("G   "+string(global.gold)))
draw_set_font(fnt_maintext)
draw_text(23+xx,20+moveyy,string_hash_to_newline(global.charname))
if global.menuchoice[0]=1 then draw_text(42+xx,84+yy,string_hash_to_newline("ITEM"))
if global.menuchoice[1]=1 draw_text(42+xx,102+yy,string_hash_to_newline("STAT"))
if global.menuchoice[2]=1 draw_text(42+xx,120+yy,string_hash_to_newline("CELL"))
// draw item names
if global.menuno=1 || global.menuno=5 then
   {
   for (i=0;i<8;i+=1)
      {
      draw_text(116+xx,30+yy+(i*16),string_hash_to_newline(global.itemname[i]))
      }  
    draw_text(116+xx,170+yy,string_hash_to_newline("USE"));
   draw_text(116+xx+48,170+yy,string_hash_to_newline("INFO"));
   draw_text(116+xx+105,170+yy,string_hash_to_newline("DROP"));
   }
  }
if global.menuno=3 then
   for (i=0;i<7;i+=1)
      {
      draw_text(116+xx,30+yy+(i*16),string_hash_to_newline(global.phonename[i]))
      }
if global.menuno=6 then //put item in storage
      {
      scr_itemname();
      for (i=0;i<8;i+=1) draw_text(116+xx,30+yy+(i*16),string_hash_to_newline(global.itemname[i]));
      }
if global.menuno=7 then //take item out of storage
      {
      scr_storagename(300)
      for (i=0;i<10;i+=1)
      draw_text(116+xx,30+yy+(i*16),string_hash_to_newline(global.itemname[i]))
      }
      
if global.menuno=2  //status screen
   {
   
   draw_text(108+xx,32+yy,string_hash_to_newline("\""+global.charname+"\""))
   draw_text(108+xx,62+yy,string_hash_to_newline("LV  " +string(global.lv)))
   draw_text(108+xx,78+yy,string_hash_to_newline("HP  " +string(global.hp) +" / " + string(global.maxhp)))
 //  draw_text(108+xx,94+yy,"EN  " +string(global.en) +" / " + string(global.maxen))
   draw_text(108+xx,110+yy,string_hash_to_newline("AT  " +string(global.at) +" (" + string(global.wstrength) + ")"))
   draw_text(108+xx,126+yy,string_hash_to_newline("DF  " +string(global.df) +" (" + string(global.adef) + ")"))
   if global.weapon=3 then weaponname="Stick"
   if global.weapon=13 then weaponname="Toy Knife"
   if global.armor=4 then armorname="Bandage"
   if global.armor=12 then armorname="Faded Ribbon"
   draw_text(108+xx,156+yy, string_hash_to_newline("WEAPON: " + weaponname))
   draw_text(108+xx,172+yy, string_hash_to_newline("ARMOR: " + armorname))
   draw_text(108+xx, 192+yy, string_hash_to_newline("GILD: " + string(global.gold)))
   if global.kills>20 then draw_text(192+xx, 192+yy, string_hash_to_newline("KILLS: " + string(global.kills)))
   draw_text(192+xx, 110+yy, string_hash_to_newline("EXP: " + string(global.xp)))
   if global.lv=1 then nextlevel = 10 - global.xp
   if global.lv=2 then nextlevel = 30 - global.xp
   if global.lv=3 then nextlevel = 70 - global.xp
   if global.lv=4 then nextlevel = 120 - global.xp
   if global.lv=5 then nextlevel = 200 - global.xp
   if global.lv=6 then nextlevel = 300 - global.xp
   if global.lv=7 then nextlevel = 500 - global.xp
   if global.lv=8 then nextlevel = 800 - global.xp
   if global.lv=9 then nextlevel = 1200 - global.xp
   draw_text(192+xx, 126+yy, string_hash_to_newline("NEXT: " + string(nextlevel)))
   }  


//if global.menuchoice[3]=1 draw_text(42+xx,142+yy,'SAVE')



if global.menuno=4 then 
  {
    iniread=ini_open("undertale.ini")
     name=ini_read_string("General","Name","EMPTY")
     love=ini_read_real("General","Love","0")
      time=ini_read_real("General","Time","1")
     kills=ini_read_real("General","Kills","0")
      roome=ini_read_real("General","Room","0")
     ini_close()
  draw_set_font(fnt_maintext)
  draw_set_color(c_white)
  draw_rectangle(54+xx,49+yy,265+xx,135+yy,false) //savemenu
  draw_set_color(c_black)
  draw_rectangle(57+xx,52+yy,262+xx,132+yy,false) //savemenu
  draw_set_color(c_white)
  minutes=floor(time/1800)
  seconds=round(((time/1800-minutes))*60)
  if seconds=60 then seconds=59
  if seconds<10 then seconds="0"+string(seconds)
  scr_roomname(roome)
  draw_text(70+xx,60+yy,string_hash_to_newline(name))
  draw_text(140+xx,60+yy,string_hash_to_newline("LV "+string(love)))
  draw_text(210+xx,60+yy,string_hash_to_newline(string(minutes)+":"+string(seconds)))
  //if kills<23 
  draw_text(70+xx,80+yy,string_hash_to_newline(roomname)) 
  //else
  //draw_text(70+xx,80+yy,"Kills - "+string(kills))
    //draw_text(120,130,string(kills))
  if global.menucoord[4]=0 then draw_sprite(spr_heartsmall,0,xx+71,yy+113)
   draw_text(xx+85,yy+110,string_hash_to_newline("Save"))
   draw_set_color(c_white)
  if global.menucoord[4]=1 then draw_sprite(spr_heartsmall,0,xx+161,yy+113)
   draw_text(xx+175,yy+110,string_hash_to_newline("Return"))
   //draw_sprite(spr_heartsmall,0,74+xx,70+yy)
   if keyboard_check_pressed(vk_left) or keyboard_check_pressed(vk_right) then
       {
       if global.menucoord[4]=1 then global.menucoord[4]=0
       else global.menucoord[4]=1
       keyboard_clear(vk_left)
       keyboard_clear(vk_right)
       }
   if keyboard_multicheck_pressed(vk_enter) and global.menucoord[4]=1 then
       {
       global.menuno=-1
       global.interact=0
       global.menucoord[4]=0
       keyboard_clear(vk_enter)
       }
  }
//draw da heart
if global.menuno=0 then draw_sprite(spr_heartsmall,0,28+xx,88+yy+(18*global.menucoord[0]))
if global.menuno=1 then draw_sprite(spr_heartsmall,0,104+xx,34+yy+(16*global.menucoord[1]))
if global.menuno=3 then draw_sprite(spr_heartsmall,0,104+xx,34+yy+(16*global.menucoord[3]))
if global.menuno=6 then draw_sprite(spr_heartsmall,0,104+xx,34+yy+(16*global.menucoord[6]))
if global.menuno=7 then draw_sprite(spr_heartsmall,0,104+xx,34+yy+(16*global.menucoord[7]))
if global.menuno=5
   {
   if global.menucoord[5]=0 then draw_sprite(spr_heartsmall,0,104+xx+(45*global.menucoord[5]),174+yy)
   if global.menucoord[5]=1 then draw_sprite(spr_heartsmall,0,104+xx+(45*global.menucoord[5]+3),174+yy)
   if global.menucoord[5]=2 then draw_sprite(spr_heartsmall,0,104+xx+(45*global.menucoord[5]+15),174+yy)
   }
//draw the save menu



if keyboard_multicheck_pressed(vk_enter)
   {
   if global.menuno=5 then
      {   
       if global.menucoord[5]=0 then 
           {
           global.menuno=9//dialogue
           scr_itemuseb(global.menucoord[1],global.item[global.menucoord[1]])
           }
         if global.menucoord[5]=1 then
           {
           global.menuno=9//Info
           scr_itemdesc(global.item[global.menucoord[1]])
           scr_writetext(0,"x",0,0)
           }
       if global.menucoord[5]=2 then
           {
           global.menuno=9//threw it out
           scr_writetext(12,"x",0,0)
           scr_itemshift(global.menucoord[1],0)
           }
       }
   if global.menuno=3 then
          {    
           global.menuno=9//dialogue
           scr_itemuseb(global.menucoord[3],global.phone[global.menucoord[3]])
          }
   if global.menuno=6 then
          {    
           global.menuno=9//dialogue
          
           scr_storageget(global.item[global.menucoord[6]],300)
           if noroom=0 then
           {
            scr_writetext(16,"x",0,0)
           scr_itemshift(global.menucoord[6],0)
           }
           else scr_writetext(19,"x",0,0)
          }
   if global.menuno=7 then
          {    
           global.menuno=9//dialogue
           scr_itemget(global.flag[global.menucoord[7]+300])
           if noroom=0 then
             {
             scr_writetext(17,"x",0,0)
             scr_storageshift(global.menucoord[7],0,300)
             }
             else scr_writetext(18,"x",0,0)
          }
   if global.menuno=1 then 
       {
       global.menuno=5
       global.menucoord[5]=0
       }
   if global.menuno=4 then scr_save()
   if global.menuno=0 then global.menuno+=(global.menucoord[0]+1)
   if global.menuno=3 then 
     {
     scr_phonename()
     global.menucoord[3]=0
     }
   if global.menuno=1 then
       {
        if global.item[0]!=0 then
           {
        global.menucoord[1]=0
        scr_itemname()
           }
        else global.menuno=0
       }
  }  


if keyboard_check_pressed(vk_up) then
  {
  if global.menuno=0 then
      {
      if global.menucoord[0]!=0 then
      global.menucoord[0]-=1
      }
  if global.menuno=1 then
      {
      if global.menucoord[1]!=0 then
      global.menucoord[1]-=1
      }
  if global.menuno=3 then
      {
      if global.menucoord[3]!=0 then
      global.menucoord[3]-=1
      }
  if global.menuno=6 then
      {
      if global.menucoord[6]!=0 then
      global.menucoord[6]-=1
      }
    if global.menuno=7 then
      {
      if global.menucoord[7]!=0 then
      global.menucoord[7]-=1
      }
  }

  if keyboard_check_pressed(vk_down) then
  {
  if global.menuno=0 then
      {
      if global.menucoord[0]!=2 then
      if global.menuchoice[global.menucoord[0]+1]!=0 then
      global.menucoord[0]+=1
      }
  if global.menuno=1 then
      {
      if global.menucoord[1]!=7
      if (global.item[global.menucoord[1]+1])!=0 then
      global.menucoord[1]+=1
      }
  if global.menuno=3 then
      {
      if global.menucoord[3]!=7
      if (global.phone[global.menucoord[3]+1])!=0 then
      global.menucoord[3]+=1
      }
  if global.menuno=6 then
      {
      if global.menucoord[6]!=7
      if (global.item[global.menucoord[6]+1])!=0 then
      global.menucoord[6]+=1
      }
   if global.menuno=7 then
      {
      if global.menucoord[7]!=9
      if (global.flag[global.menucoord[7]+301])!=0 then
      global.menucoord[7]+=1
      }
  }

if keyboard_multicheck_pressed(vk_shift) then
   {
   if global.menuno=0 || global.menuno=4 || global.menuno=6 || global.menuno=7 then
        {
        global.menuno=-1
        global.interact=0
        }
      else
        {
        if global.menuno<=3 then global.menuno=0
        }
   if global.menuno=5 then global.menuno=1
   }
   
if keyboard_check_pressed(vk_right) then
     {
        if global.menuno=5 then
            {
            if global.menucoord[5]!=2 then global.menucoord[5]+=1
            }
     }

if keyboard_check_pressed(vk_left) then
     {
        if global.menuno=5 then
            {
            if global.menucoord[5]!=0 then global.menucoord[5]-=1
            }
     }
     
if keyboard_multicheck_pressed(vk_control) then
if global.menuno=0 then
        {
        global.menuno=-1
        global.interact=0
        }
   
if currentmenu<global.menuno and global.menuno!= 9 then sound_play(snd_select)
else
if global.menuno >=0 and global.menuno < 6 then
if currentspot!=global.menucoord[global.menuno] then sound_play(snd_squeak)

}


if global.menuno=9 and instance_exists(obj_dialoguer)=false then
    {
    global.menuno=-1
    global.interact=0
    }


