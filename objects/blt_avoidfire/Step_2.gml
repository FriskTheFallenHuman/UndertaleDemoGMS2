if distance_to_point(x,obj_heart.y)<100 then
hspeed=(180/(distance_to_point(obj_heart.x,y)+10))-1
//if hspeed<1 then hspeed=0
if obj_heart.x>x then hspeed=-hspeed
if global.turntimer < 1 then instance_destroy()
if x<global.idealborder[0] then instance_destroy()
if x>global.idealborder[1] then instance_destroy()
if y>global.idealborder[2] then visible=1
if y>global.idealborder[3] then instance_destroy()

