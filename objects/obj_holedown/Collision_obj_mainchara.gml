if global.phasing=0 then
{
global.interact=4
global.phasing=1
alarm[0]=10
instance_create(other.x,other.y+20,obj_cosmetichole)
if instance_number(obj_cosmetichole)>10 and room=room_ruins10 then 
{
obj_cosmetichole.destroyme=1
global.interact=0
global.phasing=0
instance_destroy()
}
}



