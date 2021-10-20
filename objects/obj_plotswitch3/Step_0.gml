if myinteract=1 and global.plot<=12 then
{
on=1
myinteract=0
image_index=1
global.plot=13
global.vshake=0
global.hshake=4
global.shakespeed=2
instance_create(0,0,obj_shaker)
global.interact=99
}

if instance_exists(obj_shaker)=false and global.interact=99 then
{
global.interact=0
}
image_index=on

