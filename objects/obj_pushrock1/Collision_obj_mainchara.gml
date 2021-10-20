other.moving=0
if push=0 then
{
if global.facing=1 then
  {
  x+=3
  other.x+=3
  other.moving=1
  }
if global.facing=3
if x>xstart then 
  {
  x-=3
  other.x-=3
  other.moving=1
  }
}

//if keyboard_check(vk_up) or keyboard_check(vk_down) then other.x=other.xprevious

