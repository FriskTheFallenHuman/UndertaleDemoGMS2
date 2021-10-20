if global.flag[45]!=4
{
if caster_is_playing(global.currentsong) != 1 then
{
global.currentsong=caster_load("music/house1.ogg")
global.currentsong2=caster_load("music/house2.ogg")
caster_loop(global.currentsong,1,1)
caster_loop(global.currentsong2,0,1)
}
}
else
{
if caster_is_playing(global.currentsong) != 1 then
{
global.currentsong=caster_load("music/toriel.ogg")
global.currentsong2=caster_load("music/toriel.ogg")
caster_loop(global.currentsong,1,0.4)
caster_loop(global.currentsong2,0,0.4)
}
}

