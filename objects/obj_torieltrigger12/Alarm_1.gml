if flames=0 then instance_create(obj_toroverworld3.x,obj_toroverworld3.y,obj_pbflame)

if flames>3 then
   {
   room_persistent=1
   alarm[2]=34
   global.battlegroup=22
   instance_create(0,0,obj_battler)
   }
   else
     {
     flames+=1
     sound_play(snd_noise)
     obj_pbflame.image_alpha+=0.25
     alarm[1]=10
     caster_free(global.currentsong)
     if flames=4 then alarm[1]=30
     }

