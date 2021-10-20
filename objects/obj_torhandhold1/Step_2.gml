if path_position=1 and conversation=0 then
   {
   with obj_mainchara path_end()
   path_end()
   global.phasing=0
   obj_spiketile2.solid=1
   obj_mainchara.visible=1
   tor=instance_create(x+12,y,obj_toroverworld4)
   alarm[0]=2
   with tor direction=180
   with tor facing=3
   visible=0
   conversation=2
   }

if conversation=3 and instance_exists(obj_dialoguer)=false then
   {
   with tor path_start(path_walkright,3,0,false)
   global.interact=0
   instance_destroy()
   global.plot=8
   }
   

