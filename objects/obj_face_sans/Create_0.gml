image_speed=0.25

if instance_exists(obj_face_papyrus) with obj_face_papyrus instance_destroy()
if global.faceemotion = 0 and sprite_index!=real(spr_face_sans) then sprite_index=real(spr_face_sans)
if global.faceemotion = 1 and sprite_index!=real(spr_face_sanschuckle) then sprite_index=real(spr_face_sanschuckle)

