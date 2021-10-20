if instance_exists(blcon) then with blcon instance_destroy()

if image_alpha>0.10 then
{
image_alpha-=0.05
alarm[10]=1
}
else
{
caster_stop(global.batmusic)
caster_free(global.batmusic)
global.typer=1
scr_writetext(0,"* YOU WON!&* You lost 1 experience point./%",0,0) //TODO: ??
alarm[11]=1
}

