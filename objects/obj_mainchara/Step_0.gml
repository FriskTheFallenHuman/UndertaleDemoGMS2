if global.facing = 0 then sprite_index = spr_maincharad
if global.facing = 1 then sprite_index = spr_maincharar
if global.facing = 2 then sprite_index = spr_maincharau
if global.facing = 3 then sprite_index = spr_maincharal

if global.inbattle=1 then
{
instance_create(0,0,obj_musfadein)
caster_resume(global.currentsong)
room_persistent=0
global.inbattle=0
if global.specialbattle=0 then global.interact=0
depth=100
if global.flag[200]!=0
if global.flag[201]!=global.kills
global.flag[global.flag[200]]+=(global.kills-global.flag[201])
      
}

if obj_time.left=1
if movement = 1
{
if xprevious=x+3 then x-=2 else x -=3
global.facing = 3
if moving != 1 then image_index = 1
moving = 1
image_speed = 0.2
}

if obj_time.up=1
if movement = 1
{
y-=3
//if oldy-y=3 then ymove=-2 else ymove=-3
//oldy=y
//y+=ymove
if moving != 1 then image_index = 1
moving = 1
image_speed = 0.2
global.facing = 2
}

if obj_time.right=1
if movement = 1
if keyboard_check(vk_left) = false then
{
if xprevious=x-3 then x+=2 else x += 3
moving = 1
image_speed = 0.2
if moving != 1 then image_index = 1
global.facing = 1
}

if obj_time.down=1
if movement = 1
if keyboard_check(vk_up) = false then
{
y+=3
//if oldy-y=-3 then ymove=2 else ymove= 3
//oldy=y
//y+=ymove
if moving != 1 then image_index = 1
moving = 1
image_speed = 0.2
global.facing = 0
if keyboard_check(vk_left) = true then global.facing = 3
}

if keyboard_multicheck_pressed(0) then event_user(0)
if keyboard_multicheck_pressed(2) then event_user(2)

with collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_doorparent,0,0) {
  event_user(9);
}

var __b__;
__b__ = action_if_variable(instance_exists(obj_battler), false, 0);
if __b__
{
script_execute(scr_depth,0,0,0,0,0);
}
