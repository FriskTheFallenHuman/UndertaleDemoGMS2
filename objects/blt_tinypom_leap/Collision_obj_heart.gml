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
global.invc = global.inv
}

