if global.mnfight = 3 then attacked = 0

scr_blconmatch() //extend ballcons
  
if global.mnfight = 1 then
if talked = 0 then
    {
    if global.monsterhp[myself]>0 then alarm[5] = 75
    if mercymod=-49 then alarm[5]=400
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
   // sprite_index=spr_whimsun
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
    if mercymod!=-100 then
    {
    if global.turn!=1 then
    {
    if mycommand >=0 and mycommand <=50 then
       {
       global.turntimer = 140
       global.firingrate= (4000/-(mercymod))
       gen=instance_create(0,0,obj_crygen1)
       }
    else 
       {
       global.turntimer = 170
       global.firingrate= (3600/-(mercymod))
       gen=instance_create(0,0,obj_crygen2)
       }
    }
    else
      {
      global.turntimer = 140
      gen=instance_create(global.idealborder[0]+30,global.idealborder[2]+30,obj_sadmsggen)
      }
    }
    else
       {
       global.turntimer=260
       global.firingrate=8
       instance_create(obj_napstablook.x+34,obj_napstablook.y-30,blt_blookhat)
       gen=instance_create(0,0,obj_crygen3)
       }
    gen.myself=myself
    gen.dmg=global.monsteratk[myself]
    if mycommand >= 0 then global.msg[0] =  "* Napstablook is staring into&  the distance."
    if mycommand >= 30 then global.msg[0] = "* Napstablook is wishing they&  weren't here."
    if mycommand >= 70 then global.msg[0] = "* Napstablook is pretending to&  sleep."
    if mycommand >= 90 then global.msg[0] = "* The faint odor of ectoplasm&  permeates the vicinity."
    if mercymod > -400 then global.msg[0]  = "* Napstablook looks just a&  little bit better."
    if mercymod > -290 then global.msg[0]  = "* Cheering seems to have&  improved Napstablook's&  mood again."
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
                   global.msg[0] = "* NAPSTABLOOK - ATK 10 DEF 10&* This monster doesn't seem to&  have a sense of humor.../^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
               }
           if whatiheard = 3 then // flirt
               {
                 global.myfight = 0
                 global.mnfight = 1    
               }
               
           if whatiheard = 1 then // threat
               {
                   global.msc = 0
                   global.msg[0] = "* You give Napstablook a&  cruel look./^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
               }
           if whatiheard = 4 then // sing
               {
                   global.msc = 0
                     if mercymod=-50
                      {
                      mercymod=-49
                      caster_stop(global.batmusic)
                      caster_free(global.batmusic)
                      global.myfight = 0
                      global.mnfight = 1 
                      }
                      else
                      {
                   if mercymod<-400 then global.msg[0] = "* You try to console&  Napstablook.../^"
                   if mercymod=-400 then global.msg[0] = "* You gave Napstablook a&  patient smile./^"
                   if mercymod=-300 then global.msg[0] = "* You told Napstablook a&  little joke./^"
                   if mercymod=-200 then global.msg[0] = "* Napstablook wants to&  show you something./^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
                   mercymod+=100
                   }
               }
         //  if whatiheard = 6 then
        //       {
        //           global.msc = 0
        //           global.msg[0] = "* Do robots dream of&electric sex?/^"
       //            OBJ_WRITER.halt = 3
       //            iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
       //        }
       //        
        //    if whatiheard = 7 then
        //       {
        //           global.msc = 0
       //            global.msg[0] = "* I hate programming this./^"
         //          OBJ_WRITER.halt = 3
        //           iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
        //           with iii halt = 0
       //        }
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

