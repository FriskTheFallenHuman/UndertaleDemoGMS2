image_speed = 0
image_index = 0
alarm[0] = 20 + round(random(30))

if global.faceemotion = 99 then {instance_create(x,y,obj_face_torglasses); global.faceemotion=0}
if global.faceemotion = 0 and sprite_index!=spr_face_torielhappyblink then sprite_index=spr_face_torielhappyblink
if global.faceemotion = 1 and sprite_index!=spr_face_torielblinkside then sprite_index=spr_face_torielblinkside
if global.faceemotion = 2 and sprite_index!=spr_face_torielblink then sprite_index=spr_face_torielblink
if global.faceemotion = 3 and sprite_index!=real(spr_face_torielwhat) then sprite_index=real(spr_face_torielwhat)
if global.faceemotion = 4 and sprite_index!=real(spr_face_torielwhatside) then sprite_index=real(spr_face_torielwhatside)
if global.faceemotion = 6 and sprite_index!=real(spr_face_torielcold) then sprite_index=real(spr_face_torielcold)
if global.faceemotion = 7 and sprite_index!=real(spr_face_torielmad) then sprite_index=real(spr_face_torielmad)
if global.faceemotion = 8 and sprite_index!=real(spr_face_torielembarrassed) then sprite_index=real(spr_face_torielembarrassed)

