global.interact=3 //battle or doors
if touched=0
    {
    cym=caster_load("music/cymbal.ogg")
    caster_play(cym,0.9,0.95)
    instance_create(0,0,obj_whitefader)
   alarm[2]=180
   touched=1
   }

