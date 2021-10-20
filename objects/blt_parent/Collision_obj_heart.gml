if global.invc < 1 then
{
dmgamt = round(dmg - (global.df+global.adef)/5)
if dmgamt<1 then dmgamt=1
global.hp -= dmgamt
sound_play(snd_hurt1)
global.hshake = 2
global.shakespeed = 2
global.vshake = 2
instance_create(0,0,obj_shaker)
instance_destroy()
global.invc = global.inv
if global.battlegroup=22 then if global.hp<1 then obj_torielboss.sprite_index=spr_torielboss_mouthcover
}

