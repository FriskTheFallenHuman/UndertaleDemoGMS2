if keyboard_check(vk_left) = false
if keyboard_check(vk_right) = false
if keyboard_check(vk_down) = false
if keyboard_check(vk_up) = false then
    {
    moving = 0
    }
    
if global.interact > 0 then
  {
  moving = 0
  movement = 0
  }
 else
 movement = 1

if xprevious != x or yprevious != y then moving = 1
    
if moving = 0 then
  {
  image_speed = 0
  image_index = 0
  }

if global.interact=0
if moving=1 then global.encounter+=1


  //camera follows ya
  if instance_exists(obj_shaker)=false then
  {
__view_set( e__VW.XView, 0, round(x - __view_get( e__VW.WView, 0 )/2 + sprite_width/2) )
__view_set( e__VW.YView, 0, round(y - __view_get( e__VW.HView, 0 )/2 + sprite_height/2) )
  }

