function scr_onscreen(argument0, argument1) {
	//argument0=xborder
	//argument1=yborder
	onscreen=0
	if x>__view_get( e__VW.XView, view_current )-argument0 and x<__view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+argument0
	if y<__view_get( e__VW.HView, view_current )+__view_get( e__VW.YView, view_current )+argument1 and y>__view_get( e__VW.YView, view_current )-argument1 then onscreen=1



}
