global.interact=3 //battle or doors
instance_create(0,0,obj_unfader)
if room=room_basement1 or room=room_torhouse1 then instance_create(0,0,obj_musfadeout)
if touched=0
    { 
   alarm[2]=14
   touched=1
   }

