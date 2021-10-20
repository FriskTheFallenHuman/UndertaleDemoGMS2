image_angle=(direction+90)
if disappear=1 then
   {
   image_alpha-=0.08
   if image_alpha<0.10 then instance_destroy()
   }

