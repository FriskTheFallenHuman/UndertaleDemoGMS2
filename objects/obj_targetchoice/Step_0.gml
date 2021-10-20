if hspeed > 0 then if x > (obj_target.x + obj_target.sprite_width) then xxx=1
if hspeed < 0 then if x < obj_target.x then xxx=1
if xxx=1 then
{
global.damage=0
global.hurtanim[global.mytarget]=5
instance_destroy()
exit
}

if image_speed = 0 then
if keyboard_multicheck_pressed(vk_enter) then
{
mons = global.monsterinstance[global.mytarget]
hspeed = 0
scr_attackcalc()
global.damage = damage
global.damage += random(2)
myx = (x + (sprite_width/2))
myperfectx = (obj_target.x + (obj_target.sprite_width/2))
bonusfactor = abs(myx - myperfectx)
if bonusfactor = 0 then bonusfactor = 1
global.stretch = ((obj_target.sprite_width - bonusfactor)/obj_target.sprite_width)
if bonusfactor <= 12 then
   {
   global.damage = round(global.damage*2.2)
   }
if bonusfactor > 12 then
   {
   global.damage = round(global.damage*global.stretch*2)
   }
mons.takedamage = global.damage
instance_create(mons.x+(mons.sprite_width/2)-5,  mons.y-5,obj_slice)
global.hurtanim[global.mytarget] = 1
image_speed = 0.4
}


if global.myfight != 1 then instance_destroy()

