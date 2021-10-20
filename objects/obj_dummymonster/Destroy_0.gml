if killed = 1 then
{
global.flag[14]=1
global.flag[12]=1
global.vaporspeed=0
global.monstersprite = sprite_index
ddd = instance_create(x,y,obj_vaporized)
ddd.image_xscale = image_xscale
ddd.image_yscale = image_yscale
ddd.image_speed = 0
ddd.image_index = 1

global.monster[myself]=0
}

