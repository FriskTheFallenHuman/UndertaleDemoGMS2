script_execute(scr_depth,0,0,0,0,0);
if obj_mainchara.x < x-40 then 
{
if t=0 then
  {
  alarm[5]= 30
  t=1
  }
}
else 
{
alarm[5]= 24
path_speed=2
if obj_mainchara.x > x-25 then path_speed=3
if obj_mainchara.x > x-10 then path_speed=5
image_speed=0.2
}

scr_npcdir(0) //TODO: ??

if path_position=1 then
   {
   instance_create(x,y,obj_torinteractable5)
   instance_destroy()
   }

