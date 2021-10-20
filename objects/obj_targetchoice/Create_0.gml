image_speed = 0
xxx=0
if x <= obj_target.x then hspeed = (global.attackspeed + random(global.attackspeedr))
if x > (obj_target.x + obj_target.sprite_width) then hspeed = -(global.attackspeed + random(global.attackspeedr))

if global.weapon=13 then hspeed=hspeed*1.25

