sprite_index = global.monstersprite
line = 0
finished = 0
ht = sprite_get_height(sprite_index)
wd = sprite_get_width(sprite_index)
myvapor=global.vaporspeed

if myvapor=0 then
{
if ht < 70 then sound_play(snd_vaporizedshort)
if ht >=70 and ht < 180 then sound_play(snd_vaporized)
if ht >= 180 then sound_play(snd_vaporizedlong)
}

action_set_alarm(2, 0);
