if sprite_index=spr_chairielgetup then
   {
   image_index=0
   image_speed=0
   sprite_index=spr_chairempty
   instance_create(x+28,y+3,obj_toroverworld3)
   with obj_toroverworld3 facing=1
   with obj_toroverworld3 path_start(path_torielwalkhouse1,5,0,false)
   global.plot=21
   global.interact=0
  instance_create(x,y,obj_chairiel)
  instance_destroy()
   }

