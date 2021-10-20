if unpersist=1 then
   {
   room_goto(global.currentroom)
   }

if room=global.currentroom then
   {
   room_persistent=0
   scr_tempload()
   instance_destroy()
   }

