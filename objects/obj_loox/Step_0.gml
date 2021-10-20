if global.mnfight = 3 then attacked = 0

scr_blconmatch() //extend ballcons
  
if global.mnfight = 1 then
if talked = 0 then
    {
    alarm[5] = 70
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
    sprite_index=spr_loox
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
    global.firingrate= 4
    if global.monster[0]+global.monster[1]+global.monster[2]=3 then mycommand=2
       if mycommand<50 then
          {
          global.firingrate=13
          if mercymod<0 then global.firingrate-=6
          if mercymod>6 then global.firingrate+=5
          if global.monster[0]+global.monster[1]+global.monster[2]>1 then global.firingrate=global.firingrate*1.5
          if global.monster[0]+global.monster[1]+global.monster[2]=3 then global.firingrate=global.firingrate*2
          gen=instance_create(0,0,obj_hoopgen1)
          gen.bullettype=0
          }
       if mycommand>=50 then
          {
          global.firingrate=15
          if mercymod<0 then global.firingrate-=6
          if mercymod>6 then global.firingrate+=5
          if global.monster[0]+global.monster[1]+global.monster[2]=2 then global.firingrate=global.firingrate*1.5
          if global.monster[0]+global.monster[1]+global.monster[2]=3 then global.firingrate=global.firingrate*2
          gen=instance_create(0,0,obj_hoopgen1)
          gen.bullettype=1
          }
    gen.myself=myself
    gen.dmg=global.monsteratk[myself]
    if mycommand >= 0 then global.msg[0] = "* Loox is gazing at you."
    if mycommand >= 30 then global.msg[0] = "* Loox is staring right&  through you."
    if mycommand >= 70 then global.msg[0] = "* Loox gnashes its teeth."
    if mycommand >= 90 then global.msg[0] = "* Smells like eyedrops."
    if mercymod<-100 then global.msg[0]= "* Loox has gone bloodshot."
    if mercymod>100 then global.msg[0]= "* Loox doesn't care about&  fighting anymore."
    if global.monsterhp[myself] < global.monstermaxhp[myself]/3 then global.msg[0]="* Loox is watering."
    attacked = 1
    }
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
                   global.msg[0] = "* LOOX - ATK 6 DEF 6&* Don't pick on him.&* Family name: Eyewalker/^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
               }
           if whatiheard = 3 then
               {
                  if mercymod<100 then global.xpreward[myself]+=5
                   mercymod=-100
                   global.myfight=0
                   global.mnfight=1
                  
               }
            if whatiheard = 1 then
               {
                   if global.xpreward[myself]>4 then global.xpreward[myself]-=2
                   mercymod=100
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

