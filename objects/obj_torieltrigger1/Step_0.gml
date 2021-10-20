if conversation=1 and instance_exists(OBJ_WRITER)=false then
   {
   global.interact=1
   conversation=2
   with obj_toroverworld3 path_start(path_torielwalk2,3,0,true)
   }

if instance_exists(obj_toroverworld3)
if conversation=2 and obj_toroverworld3.path_position=1 then
   {
   conversation=2.5
   with obj_wallswitchcut1 on=1
   with obj_toroverworld3 path_end()
   obj_toroverworld3.direction=90
   alarm[4]=20
   }

if conversation=3 and instance_exists(OBJ_WRITER)=false then
   {
   conversation=4
   global.interact=0
     global.plot=3
   }

if instance_exists(obj_toroverworld3)
if conversation=4 and obj_toroverworld3.path_position=1 and (abs(obj_mainchara.y-obj_toroverworld3.y)) <50 then
   {
   conversation=5
   with obj_toroverworld3 path_start(path_walkup,3,0,false)
   }

