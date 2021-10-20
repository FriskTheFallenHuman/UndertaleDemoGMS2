function scr_recover(argument0) {
	global.hp+=argument0
	recovered=argument0
	if global.hp>global.maxhp then
	  {
	  global.hp=global.maxhp
	  maxedout=1
	  }
	  else maxedout=0



}
