action_set_relative(1);

sprite_index=global.bulletappearance
mydirection = global.bulletvariable[6] //direction
mydirectionalspeed = global.bulletvariable[7] //directionalspeed 
gravity = global.bulletvariable[3]
gravity_direction = global.bulletvariable[4]
friction = global.bulletvariable[5]

instance_create(x,y,blt_gen)


action_set_motion(mydirection, mydirectionalspeed);
if sprite_index = spr_dirbullet then image_speed = 0

action_set_relative(0);
