if keyboard_multicheck_pressed(0)
if skip=0
{
skip=1
fader=instance_create(0,0,obj_unfader)
fader.tspeed=0.05
alarm[1]=30
with OBJ_WRITER instance_destroy()
}

