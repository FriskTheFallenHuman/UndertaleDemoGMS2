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
    mypart1 = instance_create(x,y,obj_froghead)
    mypart2 = instance_create(x,y,obj_froglegs)
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
    global.turntimer = 100
    global.firingrate = 20
    gen = instance_create(x,y,obj_1sidegen)
    if mycommand >= 0 then global.msg[0] = "* Froggit doesn't seem to&  know why it's here."
    if mycommand >= 30 then global.msg[0] = "* Froggit hops to and fro."
    if mycommand >= 60 then global.msg[0] = "* The battlefield is filled   with the smell of&   mustard seed."
    if mycommand >= 80 then global.msg[0] = "* You are intimidated by&  Froggit's raw strength^4.&  * Only kidding."
    if mercymod > 5 then global.msg[0]    = "* Froggit seems reluctant&  to fight you."
    if global.monsterhp[myself] < 5 then global.msg[0]="* Froggit is trying to&  run away."
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
                   global.msg[0] = "* FROGGIT - ATK 4 DEF 5&* Life is difficult for&  this enemy./^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
               }
           if whatiheard = 3 then
               {
                   global.msc = 0
                   global.msg[0] = "* Froggit didn't understand&  what you said^1, but was&  scared anyway./^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
                   mercymod=30
               }
               
           if whatiheard = 1 then
               {
                   global.msc = 0
                   global.msg[0] = "* Froggit didn't understand&  what you said^1, but was&  flattered anyway./^"
                   OBJ_WRITER.halt = 3
                   iii = instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
                   with iii halt = 0
                   mercymod=30
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

