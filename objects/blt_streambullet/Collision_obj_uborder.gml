if vspeed<0
{
image_angle=270
if rbord=0 then
  {
   y+=6
   x+=6
  }
else
  {
  y+=2
  x-=2
  }
if obj_heart.x>x then 
    {
    hspeed=-vspeed
    vspeed=0
    gravity_direction=0
    }
if obj_heart.x<x then 
    {
    hspeed=vspeed
    vspeed=0
    gravity_direction=180
    }
dropdown=1

}

