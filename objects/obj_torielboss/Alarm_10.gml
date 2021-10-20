if instance_exists(blcon) then with blcon instance_destroy()

if image_alpha>0.10 then
{
sprite_index=spr_torielboss_kneelsmile2
y+=56
image_xscale=1
image_yscale=1
killed=1
room_speed=20
instance_create(obj_heart.x,sprite_height/2+y,obj_torheart)
global.flag[45]=4
ini_open("undertale.ini")
TK=ini_read_real("Toriel","TK",0)
ini_write_real("Toriel","TK",TK+1)
ini_close()
instance_destroy()
image_alpha-=0.05
alarm[10]=1
}
else
{
caster_stop(global.batmusic)
caster_free(global.batmusic)
global.typer=1
scr_writetext(0,"* YOU WON!&* You lost 1 experience point./%",0 ,0) //TODO: ??
alarm[11]=1
}

