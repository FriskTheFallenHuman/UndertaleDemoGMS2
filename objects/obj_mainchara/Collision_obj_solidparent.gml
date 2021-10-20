
if global.phasing=0 then
{
x = xprevious
y = yprevious

if obj_time.up=1 then
if collision_rectangle(x+2,y+15,x+18,y+19,obj_solidparent,false,true) > 0 then
    {
    if obj_time.left=1 then x-=3
    if obj_time.right=1 then x+=3
    }
    else y-=3
if obj_time.down=1 then
if collision_rectangle(x+2,y+30,x+18,y+33,obj_solidparent,false,true) > 0 then
    {
    if obj_time.left=1 then x-=3
    if obj_time.right=1 then x+=3
    }
   else y+=3
 

//if global.facing=0 and keyboard_check(vk_right) then x+=3
//if global.facing=1 and keyboard_check(vk_up) then y-=3
//if global.facing=2 and keyboard_check(vk_left) then x-=3
//if global.facing=3 and keyboard_check(vk_down) then y+=3

moving = 0
}

