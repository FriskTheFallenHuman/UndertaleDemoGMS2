sprite_index = global.monstersprite
line = 0
finished = 0
ht = sprite_get_height(sprite_index)
wd = sprite_get_width(sprite_index)
myvapor=global.vaporspeed

fileplace="data/monster/" + sprite_get_name(sprite_index)
file=file_text_open_write(fileplace)
if instance_exists(obj_dmgwriter) with obj_dmgwriter instance_destroy()

action_set_alarm(2, 0);
