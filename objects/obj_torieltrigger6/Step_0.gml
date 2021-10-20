if conversation=1 and instance_exists(obj_dialoguer)=false then
   {
   global.interact=0
   conversation=2
   with toriel path_start(path_walkright,4,0,false)
   global.plot=18
   instance_destroy()
   }

