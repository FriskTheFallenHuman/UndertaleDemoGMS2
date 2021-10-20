sprite_index = global.monstersprite
line = 0
finished = 0
linefriended=0
ht = sprite_get_height(sprite_index)
wd = sprite_get_width(sprite_index)
myvapor=global.vaporspeed

if myvapor=0 then
{
sound_play(snd_vaporized)
}

fileplace="data/monster/" + string(global.monstersprite)
file=file_text_open_read(fileplace)

action_set_alarm(2, 0);
