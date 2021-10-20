

if global.plot<19.9 then
{
if instance_exists(obj_face_torieltalk) image_index = obj_face_torieltalk.image_index
else image_index=0
scr_npcdir(2)
}

if global.plot=19.9 and instance_exists(obj_dialoguer)=false then
  {
  sprite_index=spr_chairielgetup
  image_index=0
  image_speed=0.2
  global.interact=1
  global.plot=20
  }



