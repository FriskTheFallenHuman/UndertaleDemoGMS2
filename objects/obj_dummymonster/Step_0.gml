if global.mnfight = 3 then attacked = 0

if alarm[5] > 0 //makes all of the monsters extend their balloons as long as the longest one
  {
  if global.monster[0] = 1 if global.monsterinstance[0].alarm[5] > alarm[5] then alarm[5] = global.monsterinstance[0].alarm[5]
  if global.monster[1] = 1 if global.monsterinstance[1].alarm[5] > alarm[5] then alarm[5] = global.monsterinstance[1].alarm[5]
  if global.monster[2] = 1 then if global.monsterinstance[2].alarm[5] > alarm[5] then alarm[5] = global.monsterinstance[2].alarm[5]
  }
  
if global.mnfight = 1 then
if talked = 0 then
    {
    attacked=0
    alarm[5] = 80
    alarm[6] = 1
    talked = 1
    global.heard = 0
    }

if keyboard_multicheck_pressed(vk_enter) //cuts balloons short
   {
   if alarm[5] > 5 and obj_lborder.x = global.idealborder[0] then alarm[5] = 2
   }


if global.hurtanim[myself] = 1 then
{
shudder = 16
alarm[3] = global.damagetimer
global.hurtanim[myself] = 3
}

if global.hurtanim[myself] = 2 then
{
global.monsterhp[myself] -= takedamage
with (dmgwriter) alarm[2] = 15
   if global.monsterhp[myself] >= 1 then
     {
    global.hurtanim[myself] = 0
    image_index = 0
    global.myfight = 0
    global.mnfight = 1
     }
   else
     {
     global.myfight = 0
     global.mnfight = 1
     killed = 1
     instance_destroy()
     }
}

if global.hurtanim[myself] = 5 then
{
global.damage=0
instance_create(x + sprite_width/2 - 48,y - 24,obj_dmgwriter);
with (obj_dmgwriter) alarm[2] = 30
global.myfight = 0
global.mnfight = 1
global.hurtanim[myself] = 0
}

if global.mnfight = 2 then
    {
    if attacked = 0 then
    {
    global.turntimer = 1
    global.firingrate = 1
    if mycommand >= 0 then global.msg[0] = "* Dummy looks like it's&  going to fall over."
    if mycommand >= 50 then global.msg[0]= "* Dummy stands around&  absentmindedly."
     global.mnfight=3
    if global.turn > 6 then
    if outside=0 then
         {
         global.msg[0]= "* Dummy tires of your&  aimless shenanigans."
         global.flag[13]=1
         alarm[7]=2
         global.mnfight=2
         global.typer=1
         global.msc=0
         iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
         }
    attacked = 1
   
    }
    }

if whatiheard=0 then
if instance_exists(OBJ_WRITER)=false
  {
   global.mnfight=1
   global.myfight=0
  }
    
if whatiheard=3 //talkvictiry
if instance_exists(OBJ_WRITER)=false
   {
     global.flag[10]=1
     global.monster[myself]=0
   }
    
    // talk commands and results
if global.myfight = 2 then
   {
      if whatiheard != -1
      {
      if global.heard = 0
       {
          if whatiheard = 0 then
               {
                   global.msc = 0
                   global.msg[0] = "* DUMMY - ATK 0 DEF 0^1 &* A cotton heart and a button ey^1e* You are the apple of my eye/%%"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
               }
           if whatiheard = 3 then
               {
                   global.msc = 0
                   global.msg[0] = "* You talk to the DUMMY^2.&* .../"
                   global.msg[1] = "* It doesn't seem much for&  conversation./"
                   global.msg[2] = "* TORIEL seems happy with you./%%"
                   global.flag[14]=2
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
               }
               global.heard = 1
         }
         }
   }

if global.myfight=4 then
    {
    if global.mercyuse=0 then
      {
       scr_mercystandard()
       // cannot be spared
      }
    }

