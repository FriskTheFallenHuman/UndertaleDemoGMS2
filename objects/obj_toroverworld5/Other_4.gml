if global.plot>7 or global.plot<6 then instance_destroy()
else
{
direction=270
facing=0
global.msc=216
global.typer=4
global.facechoice=1
instance_create(0,0,obj_dialoguer)
global.interact=1
}

