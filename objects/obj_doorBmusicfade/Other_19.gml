global.interact=3 //battle or doors
instance_create(0,0,obj_unfader)
instance_create(0,0,obj_musfadeout)
if touched=0
    { 
   alarm[2]=13
   touched=1
   }
if room=room_torhouse1 then caster_free(global.currentsong2)

