if clap<3 then
{
obj_mainchara.depth=depp
if instance_exists(obj_fader)
then with obj_fader instance_destroy()
}
if heartdraw=1 then
 {
 draw_sprite(spr_heartsmall,0,obj_mainchara.x+5,obj_mainchara.y+17)
 }

