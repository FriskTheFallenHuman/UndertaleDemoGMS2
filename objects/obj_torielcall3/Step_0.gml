if global.plot>9.5 then instance_destroy()
else
if global.interact=1 and instance_exists(obj_dialoguer)=false then
   {
   global.plot=9.6
   global.interact=0
   instance_destroy()
   }

