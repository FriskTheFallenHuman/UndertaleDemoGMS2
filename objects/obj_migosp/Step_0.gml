if global.mnfight = 3 then attacked = 0

scr_blconmatch() //extend ballcons
  
if global.mnfight = 1 then
if talked = 0 then
    {
    alarm[5] = 60
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
    sprite_index=spr_migosp
     if mercymod>0 then sprite_index=spr_migosphappy
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
    global.turntimer = 110
    global.firingrate= 6
    if global.monster[0]+global.monster[1]+global.monster[2]=3 then mycommand=99
    if mercymod<0 then
       {
       if mycommand<5 then
          {
          global.firingrate=15
          gen=instance_create(0,0,obj_1sidegen)
          gen.bullettype=1
          }
       if mycommand>=5 then
          {
          global.firingrate=7
          gen=instance_create(0,0,obj_1sidegen)
          gen.bullettype=4
          }
       }
    else 
       {
       gen=instance_create(0,0,blt_roachdance)
       }
    gen.myself=myself
    gen.dmg=global.monsteratk[myself]
    if mycommand >= 0 then global.msg[0] = "* Migosp skitters around."
    if mycommand >= 30 then global.msg[0] = "* Migosp is knitting its brow."
    if mycommand >= 70 then global.msg[0] = "* Migosp is whispering to the&  others."
    if mycommand >= 90 then global.msg[0] = "* It's starting to smell like&  a roach motel."
    if mercymod > 0 then global.msg[0]    = "* Migosp doesn't have a care&  in the world."
    if global.monsterhp[myself] < global.monstermaxhp[myself]/3 then global.msg[0]="* Migosp refuses to give&  up."
    attacked = 1
    }
    }


//if whatiheard=3 and instance_exists(OBJ_WRITER)=false then
 //  {
 //  scr_mercystandard()
  // if mercy <0 then instance_destroy()
  // }

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
                   global.msg[0] = "* MIGOSP - ATK 7 DEF 5&* It seems evil^1, but it's&  just with the wrong crowd.../^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
               }
           if whatiheard = 3 then
               {
                   global.myfight=0
                   global.mnfight=1
               }
               
         //  if whatiheard = 1 then
           //    {
             //      global.msc = 0
               //    global.msg[0] = "* You raise your arms and&  wiggle your fingers.&* Whimsun freaks out!/^"
                 //  OBJ_WRITER.halt = 3
                 //  iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                  // with iii halt = 0
                  // mercymod=101
              // }
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

