if conversation=3 and instance_exists(obj_toroverworld4)
if obj_toroverworld4.path_position=1 then
   {
   global.currentsong=caster_load("music/toriel.ogg")
   caster_loop(global.currentsong,0.7,0.86)
   with tor path_end()
   with tor direction=180
   with tor facing=3
   with tor sprite_index=spr_toriel_lt
   global.msc=220
   global.typer=4
   global.facechoice=1
   instance_create(0,0,obj_dialoguer)
   conversation=4
   global.phone[0]=201  // papyrus
   global.phone[1]=203  // mettaton
   global.phone[2]=204  // sans
   global.phone[3]=205  // dralphys
   global.menuchoice[2]=1
   instance_create(160,100,obj_stalkerflowey)
   }
   
if conversation=4 and instance_exists(obj_dialoguer)=false then
   {
   with tor path_start(path_walkright,3,0,false)
   scr_tempsave()
   global.interact=0
   instance_destroy()
   }

