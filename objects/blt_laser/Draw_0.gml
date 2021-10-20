draw_set_color(c_red)
twdsXspeed+=(owngravity*gravityincrement)

//if collision_line(x,y,twdsX,twdsY,blt_thatch,false,true) > 0 then draw_set_color(c_blue)
if collision_line(x,y,twdsX,twdsY,obj_heart,false,true) then draw_set_color(c_green)
if collision_line(x,y,twdsX+twdsXspeed,twdsY+twdsYspeed,obj_heart,false,true) then draw_set_color(c_green)
draw_triangle(x,y,twdsX,twdsY,twdsX+twdsXspeed,twdsY+twdsYspeed,false)
twdsX +=twdsXspeed
twdsY +=twdsYspeed




