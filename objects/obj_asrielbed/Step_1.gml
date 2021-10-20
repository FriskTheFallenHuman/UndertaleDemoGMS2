if jump=1 and obj_mainchara.path_position=1 then
{
  instance_create(0,0,obj_unfader)
  alarm[2]=60
  jump=2
}
   

if jump=3 and obj_mainchara.path_position=1 then
{
global.interact=0
myinteract=0
jump=0
__background_set( e__BG.Visible, 2, 0 )
obj_solidsmall.solid=1
global.phasing=0
}

