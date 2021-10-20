image_speed=0.25

if global.faceemotion = 99 then {instance_create(x,y,obj_face_torglasses); global.faceemotion=0}
if global.faceemotion = 0 and sprite_index!=real(spr_face_torielhappytalk) then sprite_index=real(spr_face_torielhappytalk)
if global.faceemotion = 1 and sprite_index!=real(spr_face_torieltalkside) then sprite_index=real(spr_face_torieltalkside)
if global.faceemotion = 2 and sprite_index!=real(spr_face_torieltalk) then sprite_index=real(spr_face_torieltalk)
if global.faceemotion = 3 and sprite_index!=real(spr_face_torielwhat) then sprite_index=real(spr_face_torielwhat)
if global.faceemotion = 4 and sprite_index!=real(spr_face_torielwhatside) then sprite_index=real(spr_face_torielwhatside)
if global.faceemotion = 6 and sprite_index!=real(spr_face_torielcold) then sprite_index=real(spr_face_torielcold)
if global.faceemotion = 7 and sprite_index!=real(spr_face_torielmad) then sprite_index=real(spr_face_torielmad)
if global.faceemotion = 8 and sprite_index!=real(spr_face_torielembarrassed) then sprite_index=real(spr_face_torielembarrassed)

