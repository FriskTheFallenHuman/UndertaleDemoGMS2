if obj_time.quit>0 then draw_sprite_ext(sprite_index,image_index,__view_get( e__VW.XView, view_current ),__view_get( e__VW.YView, view_current ),1,1,0,c_white,image_alpha) else instance_destroy()
if image_alpha<0.9 then image_alpha+=0.1

