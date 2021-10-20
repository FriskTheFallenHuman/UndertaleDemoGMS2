function scr_gameoverb() {
	global.hp=0
	if global.battlegroup=22 then obj_torielboss.sprite_index=spr_torielboss_mouthcover
	sound_stop_all()
	caster_stop(all)
	caster_free(all)
	global.myxb = obj_heart.x
	global.myyb = obj_heart.y 
	room_goto(room_gameover)



}
