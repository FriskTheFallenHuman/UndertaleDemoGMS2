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
    if global.monsterhp[myself]>0 then alarm[5] = 15
    if mercymod=-49 then alarm[5]=400
    alarm[6] = 2
    talked = 1
    global.heard = 0
    }

if keyboard_multicheck_pressed(vk_enter) //cuts balloons short
   {
   if conversation<13 then
   if alarm[5] > 5 and obj_lborder.x = global.idealborder[0] then alarm[5] = 2
   if conversation>=13 and conversation!=99 then if instance_exists(OBJ_NOMSCWRITER)
   if OBJ_NOMSCWRITER.stringpos >= string_length(OBJ_NOMSCWRITER.mystring) then alarm[5]=2
   }


if global.hurtanim[myself] = 1 then
{
shudder = 16
alarm[3] = global.damagetimer
if global.damage>100 then shudder=32
global.hurtanim[myself] = 3
}

if global.hurtanim[myself] = 2 then
{
global.monsterhp[myself] -= takedamage
with (dmgwriter) alarm[2] = 15
if global.damage>100 then with dmgwriter alarm[2]=60

if global.monsterhp[myself]<=150 then global.monsterdef[myself]=-140
   if global.monsterhp[myself] >= 1 then
     {
    global.hurtanim[myself] = 0
    if conversation<13 then
      {
     if global.hp>2 then sprite_index=spr_torielboss
     if global.hp<=2 then sprite_index=spr_torielboss_side
     }
    image_index = 0
    global.myfight = 0
    global.mnfight = 1
     }
   else
     {
     global.myfight = 0
     global.mnfight = 1
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
    global.turntimer = 160
    if global.hp>2 then
    {
   // if global.turn!=1 then
   //{
    if mycommand >=0 and mycommand <=20 then
       {
       global.turntimer = 140
       global.firingrate=5
       gen=instance_create(0,0,obj_1sidegen)
       gen.bullettype=7
       }
    if mycommand >20 and mycommand <=40 then
       {
       global.turntimer = 140
       global.firingrate=2
       gen=instance_create(0,0,obj_1sidegen)
       gen.bullettype=8
       }
    if mycommand >80 and mycommand <=100 then
       {
       global.turntimer = 200
       global.firingrate=2
       gen=instance_create(global.idealborder[0]-45,global.idealborder[2]+5,blt_handbullet1)
       if global.hp>6 then gen.dmg=5
       }
    if mycommand >60 and mycommand <=80 then
       {
       global.turntimer = 200
       global.firingrate=2
       gen=instance_create(global.idealborder[0]-45,global.idealborder[2]+5,blt_handbullet1)
       gen.x1=1
       if global.hp>6 then gen.dmg=5
       gen2=instance_create(global.idealborder[1]+5,global.idealborder[3]-15,blt_handbullet2)
       if global.hp>6 then gen2.dmg=5
       }
    if mycommand >40 and mycommand <=60 then
       {
       global.turntimer = 140
       global.firingrate=6
       gen=instance_create(0,0,obj_1sidegen)
       gen.bullettype=10
       }
    }
    else
        {
        if global.monsterhp[myself]>150 then global.monsterdef[myself]=-15
       global.turntimer = 140
       global.firingrate=2
       gen=instance_create(0,0,obj_1sidegen)
       if conversation<13 then instance_create(x,y,obj_torgen)
       gen.bullettype=9
       }
    if conversation>13 then { global.turntimer=1; global.monsterdef[myself]=-2000; }
    if global.flag[202]>=monsterpopulation1 then global.monsterdef[myself]=-9999
    gen.myself=myself
    gen.dmg=global.monsteratk[myself]
    if mycommand >= 0 then global.msg[0] =  "* Toriel prepares a magical&  attack."
    if mycommand >= 30 then global.msg[0] = "* Toriel looks through you."
    if mycommand >= 70 then global.msg[0] = "* Toriel is acting aloof."
    if mycommand >= 90 then global.msg[0] = "* Toriel takes a deep breath."
    if conversation>13 then
          {
          global.msg[0]="* ..."
          }
   // if mercymod > -400 then global.msg[0]  = "* Napstablook looks just a&  little bit better."
  //  if mercymod > -290 then global.msg[0]  = "* Cheering seems to have&  improved Napstablook's&  mood again."
    attacked = 1
    }
    }


if whatiheard=3 and instance_exists(OBJ_WRITER)=false then
   {
   scr_mercystandard()
   if mercy <0 then instance_destroy()
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
                   global.msg[0] = "* TORIEL - ATK 80 DEF 80&* Knows best for you./^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
               }
          if whatiheard = 3 then
               {
                   tt+=1
                   global.msc = 0
                   global.msg[0] = "* You couldn't think of&  any conversation&  topics./^"
                   ini_open("undertale.ini")
                   TK=ini_read_real("Toriel","TK",0)
                   ini_close()
                   if tt>1 then global.msg[0]="* You tried to think&  of something to say&  again^1, but.../^"
                   if tt>2 then global.msg[0]="* Ironically^1, talking does not&  seem to be the solution&  to this situation./^"
                   if TK>0 then { global.msg[0]="* You thought about telling&  Toriel that you saw&  her die./"; global.msg[1]="* But...&* That's creepy./"; global.msg[2]="* Can you show mercy without&  fighting or running&  away...?/^" }
                   if TK>0 and tt>1 then global.msg[0]="* Can you show mercy&  without running away...?/^"
                   if global.flag[202]>=monsterpopulation1 then { global.msg[0]="* Not worth talking to./^" }
                   
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
       if mercy <0 then instance_destroy()
      }
    }
    
if destroyed=1 then
   {
   if global.faceemotion=0 then {sprite_index=spr_torielboss_kneel; global.typer=12}
   if global.faceemotion=1 then {sprite_index=spr_torielboss_kneelanguish; global.typer=13}
   if global.faceemotion=2 then {sprite_index=spr_torielboss_kneelanguish2; global.typer=14}
   if global.faceemotion=3 then {sprite_index=spr_torielboss_kneelsmile; global.typer=15}
    if global.faceemotion=4 then {sprite_index=spr_torielboss_murdered; image_speed=0; image_index=0; global.typer=13}
     if global.faceemotion=5 then image_index=1
  if instance_exists(OBJ_WRITER) then
    with OBJ_WRITER SCR_TEXTTYPE(global.typer)
   global.facechange=1
   }
   
if conversation=99 and instance_exists(OBJ_WRITER)=false then
   {
   if instance_exists(OBJ_NOMSCWRITER)
    with blconwd instance_destroy()
    if instance_exists(obj_blconsm)
    with blcon instance_destroy()
    if instance_exists(obj_blconwdflowey)
    with obj_blconwdflowey instance_destroy()
   obj_battlecontroller.runaway=1
   conversation=56
   global.flag[45]=5
   alarm[2]=20
   instance_create(0,0,obj_unfader)
   }

