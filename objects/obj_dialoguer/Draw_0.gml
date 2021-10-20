if instance_exists (obj_mainchara)
if obj_mainchara.y > yy+130 then 
{
draw_set_color(c_white)
draw_rectangle(__view_get( e__VW.XView, view_current )+16,__view_get( e__VW.YView, view_current )+5,__view_get( e__VW.XView, view_current )+304,__view_get( e__VW.YView, view_current )+80,false)

draw_set_color(c_black)
draw_rectangle(__view_get( e__VW.XView, view_current )+19,__view_get( e__VW.YView, view_current )+8,__view_get( e__VW.XView, view_current )+301,__view_get( e__VW.YView, view_current )+77,false)
}
else
{
draw_set_color(c_white)
draw_rectangle(__view_get( e__VW.XView, view_current )+16,__view_get( e__VW.YView, view_current )+160,__view_get( e__VW.XView, view_current )+304,__view_get( e__VW.YView, view_current )+235,false)

draw_set_color(c_black)
draw_rectangle(__view_get( e__VW.XView, view_current )+19,__view_get( e__VW.YView, view_current )+163,__view_get( e__VW.XView, view_current )+301,__view_get( e__VW.YView, view_current )+232,false)
}

