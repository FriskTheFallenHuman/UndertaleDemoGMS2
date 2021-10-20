if instance_exists(OBJ_WRITER)=false and skip=0 then
   {
   skip=1
   fader=instance_create(0,0,obj_unfader)
   fader.tspeed=0.05
   alarm[1]=30
   }

if skip=1 then
   {
   vol-=0.05
   caster_set_volume(intromusic, vol)
   }
   
if global.faceemotion=2 and dongs=0 then
   {
   dongs=1
   instance_create(x,y,obj_introlast)
   }
   
   

