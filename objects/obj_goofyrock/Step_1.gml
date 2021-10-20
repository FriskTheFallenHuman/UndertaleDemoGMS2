script_execute(scr_depth,0,0,0,0,0);
if instance_exists(obj_dialoguer)=false and conversation=1 then
   {
   path_start(path_goofyrock,1,0,false)
   alarm[1]=11
   global.interact=1
   conversation+=1
   if obj_mainchara.x>x+15 then obj_mainchara.hspeed=1
   }
   
if instance_exists(obj_dialoguer)=false and conversation=4 then
   {
   path_speed=1
   alarm[1]=11
   global.interact=1
   conversation+=1
   if obj_mainchara.depth>depth then obj_mainchara.vspeed=-1
   }

if instance_exists(obj_dialoguer)=false and conversation=7 then
   {
   path_speed=1
   alarm[1]=61
   global.interact=1
   conversation+=1
   if obj_mainchara.depth<depth then obj_mainchara.vspeed=1
   alarm[2]=11
   }
   
if instance_exists(obj_dialoguer)=false and conversation=10.5 then
   {
   path_speed=2
   alarm[1]=11
   conversation+=0.5
   }

if instance_exists(obj_dialoguer)=false and conversation=13 then
   {
   path_speed=1
   alarm[1]=21
   global.interact=1
   conversation+=1
   if obj_mainchara.x>x+15 then obj_mainchara.hspeed=1
   }

