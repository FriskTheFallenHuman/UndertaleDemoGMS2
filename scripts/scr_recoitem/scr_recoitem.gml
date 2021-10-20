function scr_recoitem(argument0) {
	scr_recover(argument0)
	global.item[8] = recovered
	if maxedout=1 then global.item[8]=9999
	scr_writetext(11,"x",0,0)



}
