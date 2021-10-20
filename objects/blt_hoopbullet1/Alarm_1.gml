if bullettype=1 then {sprite_index=spr_circlebulletmd1}
if bullettype=2 then {sprite_index=spr_circlebulletsm}
if hspeed>0 then x+=sprite_width/2
if hspeed<0 then x-=sprite_width/2
visible=1

