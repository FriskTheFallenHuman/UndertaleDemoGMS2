image_speed=0.25
//0 happy
//1 hiding something
//2 sassy
//3 angry
//4 evil
//5 grin
if global.faceemotion = 0 and sprite_index!=real(spr_floweynice) then sprite_index=real(spr_floweynice)
if global.faceemotion = 1 and sprite_index!=real(spr_floweynicesideum) then sprite_index=real(spr_floweynicesideum)
if global.faceemotion = 2 and sprite_index!=real(spr_floweysassy) then sprite_index=real(spr_floweysassy)
if global.faceemotion = 3 and sprite_index!=real(spr_floweypissed) then sprite_index=real(spr_floweypissed)
if global.faceemotion = 4 and sprite_index!=real(spr_floweyevil) then sprite_index=real(spr_floweyevil)
if global.faceemotion = 5 and sprite_index!=real(spr_floweygrin) then sprite_index=real(spr_floweygrin)

