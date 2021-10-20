image_speed=0.25

if instance_exists(obj_face_sans) with obj_face_sans instance_destroy()
if global.faceemotion = 0 and sprite_index!=real(spr_face_papyrus) then sprite_index=real(spr_face_papyrus)
if global.faceemotion = 1 and sprite_index!=real(spr_face_papyrusmad) then sprite_index=real(spr_face_papyrusmad)
if global.faceemotion = 2 and sprite_index!=real(spr_face_papyruslaugh) then sprite_index=real(spr_face_papyruslaugh)
if global.faceemotion = 3 and sprite_index!=real(spr_face_papyrusside) then sprite_index=real(spr_face_papyrusside)
if global.faceemotion = 4 and sprite_index!=real(spr_face_papyrusevil) then sprite_index=real(spr_face_papyrusevil)

