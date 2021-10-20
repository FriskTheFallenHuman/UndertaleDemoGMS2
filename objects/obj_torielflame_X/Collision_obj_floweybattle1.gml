other.conversation=17
other.sprite_index=spr_floweyhurt
instance_destroy()

sound_play(snd_ehurt1)
global.hshake = 2
global.shakespeed = 2
global.vshake = 0
instance_create(0,0,obj_shaker)

