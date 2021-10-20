instance_create(x+(sprite_width/2-8),y+(sprite_width/2-8),blt_gen)
dmg = 4
if global.hp<7 then dmg=2
image_speed=0.5
//move_towards_point(obj_heart.x+2,obj_heart.y+2,2.5)
if x<global.idealborder[0] then instance_destroy()
alarm[0]=40
alarm[1]=45
bounced=0

