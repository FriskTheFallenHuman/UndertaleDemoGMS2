script_execute(scr_depth,0,0,0,0,0);
if talkedto=1 and instance_exists(obj_dialoguer)=false then
   {
   image_alpha-=0.05
   if image_alpha<0.10 then
       {
       global.flag[36]=2
       global.interact=0
       instance_destroy()
       }
   }

