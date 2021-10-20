function scr_runaway() {
	runvalue= (random(100) + global.lv*2 - global.battlelv*2 + 10*global.turn)
	if runvalue > 50 then
	   {
	   runaway=1
	   sound_play(snd_escaped)
	   obj_heart.hspeed=-3
	   obj_heart.sprite_index=spr_heartgtfo
	   obj_heart.image_speed=0.5
	   OBJ_WRITER.halt=3
	   global.msc=14
	   instance_create(global.idealborder[0],global.idealborder[2],OBJ_INSTAWRITER)
	   global.flag[11]=1
	   }




}
