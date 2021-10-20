if conversation=1 and instance_exists(OBJ_WRITER)=false then
   {
   global.interact=3
   alarm[0]=1
   conversation=2
   instance_create(0,0,obj_fader)
   }

if conversation=3 and instance_exists(obj_torface) then
   {
   conversation=3.5
   }

if conversation=3.5 and instance_exists(obj_torface)=false then
   {
   global.specialbattle=0
   obj_toroverworld1.direction=90
   obj_toroverworld1.speed=2
   alarm[3]=15
   conversation=4
   }

