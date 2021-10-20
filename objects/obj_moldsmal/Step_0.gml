if image_yscale<0.9 then scalevalue=0.01
if image_yscale>1.1 then scalevalue=-0.01
image_yscale+=scalevalue
y-=102*scalevalue

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
    image_index = 0
    scalevalue=0.01
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
    global.turntimer = 120
    if mycommand >=0 and mycommand <=50 then
       {
        global.firingrate=15
        if global.monster[0]+global.monster[1]+global.monster[2]=3 then global.firingrate=global.firingrate*2
        if global.monster[0]+global.monster[1]+global.monster[2]=2 then global.firingrate=global.firingrate*1.5
        gen=instance_create(0,0,obj_1sidegen)
       gen.bullettype=3
       }
    else 
       {
       global.firingrate=30
       if global.monster[0]+global.monster[1]+global.monster[2]=3 then global.firingrate=global.firingrate*2
        if global.monster[0]+global.monster[1]+global.monster[2]=2 then global.firingrate=global.firingrate*1.5
       gen=instance_create(0,0,obj_1sidegen)
       gen.bullettype=2
       }
    gen.myself=myself
    if mycommand >= 0 then global.msg[0] = "* Moldsmal burbles quietly."
    if mycommand >= 30 then global.msg[0] = "* Moldsmal waits pensively."
    if mycommand >= 70 then global.msg[0] = "* Moldsmal is ruminating."
    if mycommand >= 90 then global.msg[0] = "* The aroma of lime gelatin&  wafts through."
    if global.monsterhp[myself] < 15 then global.msg[0]="* Moldsmal has started to spoil."
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
                   global.msg[0] = "* MOLDSMAL - ATK 6 DEF 0&* Stereotypical: Curvaceously&  attractive, but no brains.../^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
               }
           if whatiheard = 3 then
               {
                   global.msc = 0
                   global.msg[0] = "* You lie immobile with Moldsmal.&* You feel like you understand&  the world a little better./^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
                   mercymod=101
                   
               }
               
           if whatiheard = 1 then
               {
                   global.msc = 0
                   global.msg[0] = "* You wiggle your hips.&* Moldsmal wiggles back.&* What a meaningful conversation!/^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
                   mercymod=101
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

