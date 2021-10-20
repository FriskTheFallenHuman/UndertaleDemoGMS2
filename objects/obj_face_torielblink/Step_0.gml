if image_index = 0
if instance_exists(OBJ_WRITER)
if OBJ_WRITER.halt = 0 then instance_change(obj_face_torieltalk,true)
if global.faceemotion = 0 and sprite_index!=spr_face_torielhappyblink then sprite_index=spr_face_torielhappyblink
if global.faceemotion = 1 and sprite_index!=spr_face_torielblinkside then sprite_index=spr_face_torielblinkside
if global.faceemotion = 2 and sprite_index!=real(spr_face_torielblink) then sprite_index=real(spr_face_torielblink)
if global.faceemotion = 3 and sprite_index!=real(spr_face_torielwhat) then sprite_index=real(spr_face_torielwhat)
if global.faceemotion = 4 and sprite_index!=real(spr_face_torielwhatside) then sprite_index=real(spr_face_torielwhatside)
if global.faceemotion = 5 and sprite_index!=real(spr_face_torielrevenge) then sprite_index=real(spr_face_torielrevenge)
if global.faceemotion = 6 and sprite_index!=real(spr_face_torielcold) then sprite_index=real(spr_face_torielcoldblink)
if global.faceemotion = 7 and sprite_index!=real(spr_face_torielmad) then sprite_index=real(spr_face_torielmadblink)
if global.faceemotion = 8 and sprite_index!=real(spr_face_torielembarrassed) then sprite_index=real(spr_face_torielembarrassed)

