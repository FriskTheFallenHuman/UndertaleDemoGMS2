function scr_binfowrite() {
	draw_set_color(c_red)
	draw_rectangle(275,400,275 + global.maxhp*1.2, 420, false)
	draw_set_color(c_yellow)
	draw_rectangle(275,400,275 + global.hp*1.2, 420, false)
	draw_set_color(c_white)
	draw_set_font(fnt_curs)
	hpwrite=string(global.hp)
	if global.hp<10 then hpwrite="0"+string(global.hp)
	draw_text(290+global.maxhp*1.2,400,string_hash_to_newline(hpwrite+ " / "+string(global.maxhp)))
	draw_text(30,400,string_hash_to_newline(string(global.charname) +"   LV " + string(global.lv)))



}
