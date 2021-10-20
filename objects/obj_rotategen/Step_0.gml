while (angle<360)
   {
   iii=instance_create(x,y,bullettype)
   iii.angleadd=angleadd
   iii.angle=angle
   iii.dmg=global.monsteratk[myself]
   x+=lengthdir_x(radius,angle)
   y+=lengthdir_y(radius,angle)
   angle+=angleadd
   }
instance_destroy()

