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
    sprite_index=normalsprite
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
         // if mercymod<0 then global.firingrate-=6
        //  if mercymod>6 then global.firingrate+=5
         // if global.monster[0]+global.monster[1]+global.monster[2]>1 then global.firingrate=global.firingrate*1.5
         // if global.monster[0]+global.monster[1]+global.monster[2]=3 then global.firingrate=global.firingrate*2
          gen=instance_create(global.idealborder[1]-50,global.idealborder[3]-45,blt_tinypom_leap)
          gen.dmg=global.monsteratk[myself]
          global.border=8
          gen.bullettype=0
          }
       if mycommand>=50 then
          {
          global.firingrate=13
         // if mercymod<0 then global.firingrate-=6
        //  if mercymod>6 then global.firingrate+=5
         // if global.monster[0]+global.monster[1]+global.monster[2]>1 then global.firingrate=global.firingrate*1.5
         // if global.monster[0]+global.monster[1]+global.monster[2]=3 then global.firingrate=global.firingrate*2
          gen=instance_create(global.idealborder[1]-50,global.idealborder[3]-45,blt_bluespear)
          gen.dmg=global.monsteratk[myself]
          global.border=8
          gen.bullettype=0
          }
    gen.myself=myself
    gen.dmg=global.monsteratk[myself]
    if mycommand >= 0 then global.msg[0] = "* Doge is pacing anxiously."
    if mycommand >= 30 then global.msg[0] = "* Doge paws at an imaginary&  door."
    if mycommand >= 70 then global.msg[0] = "* Doge is looking at you and&  whining."
    if mycommand >= 90 then global.msg[0] = "* Doge is wondering where she&  put her leash."
  //  if mercymod<-100 then global.msg[0]= "* Loox has gone bloodshot."
    if mercymod>=20 then global.msg[0]= "* Doge is now primed for petting."
    if mercymod>=100 then global.msg[0]= "* Doge looks satisfied."
    if global.monsterhp[myself] < global.monstermaxhp[myself]/3 then global.msg[0]="* Doge needs a vet."
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
                   global.msg[0] = "* DOGE - ATK 7 DEF 5&* Pronounced \"dohj.\" Soft j^1.&* Seems like she wants a walk./^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
               }
                 if whatiheard = 1 then
               {
                  global.msc = 0
                   global.msg[0] = "* You tried to bathe Doge^2,&  but she's perfectly clean.../^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
               }
                  if whatiheard = 2 then
                   {
                if mercymod<=10 then
                   {
                     global.msc = 0
                     global.msg[0] = "* You go on a short walk with&  the Doge./^"
                     OBJ_WRITER.halt = 3
                     iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                     with iii halt = 0
                     mercymod=20
                    }
                  else
                   {
                     global.msc = 0
                     global.msg[0] = "* The Doge seems all tuckered&  out./^"
                     OBJ_WRITER.halt = 3
                     iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                     with iii halt = 0
                    }
                     
                  }
           if whatiheard = 3 then
               {
                  global.msc = 0
                   global.msg[0] = "* You called Doge over.&* Doge came close./^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
                   if mercymod=0 then mercymod=10
               }
             if whatiheard = 4 then
               {
                  global.msc = 0
                   global.msg[0] = "* Dry a dry doge?&* Your mind boggles at this&  impossibility./^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
               }   
           if whatiheard = 5 then
                   {
                if mercymod>=20 then
                   {
                     global.msc = 0
                     global.msg[0] = "* You pet the Doge.&* What a good Doge./^"
                     OBJ_WRITER.halt = 3
                     iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                     with iii halt = 0
                     mercymod=100
                    }
                  else
                   {
                     global.msc = 0
                     global.msg[0] = "* Doge seems too dangerous&  to pet..^1.&* For now./^"
                     OBJ_WRITER.halt = 3
                     iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                     with iii halt = 0
                    }
                     
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

