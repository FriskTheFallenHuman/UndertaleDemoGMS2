if global.faceemotion = 0 and sprite_index!=real(spr_floweynice) then sprite_index=real(spr_floweynice)
if global.faceemotion = 1 and sprite_index!=real(spr_floweynicesideum) then sprite_index=real(spr_floweynicesideum)
if global.faceemotion = 2 and sprite_index!=real(spr_floweysassy) then sprite_index=real(spr_floweysassy)
if global.faceemotion = 3 and sprite_index!=real(spr_floweypissed) then sprite_index=real(spr_floweypissed)
if global.faceemotion = 4 and sprite_index!=real(spr_floweyevil) then sprite_index=real(spr_floweyevil)
if global.faceemotion = 5 and sprite_index!=real(spr_floweygrin) then sprite_index=real(spr_floweygrin)
if room=room_ruinsexit then
  {
  if global.faceemotion = 6 and sprite_index!=real(spr_floweygrin) then sprite_index=real(spr_floweytoriel)
  if global.faceemotion = 7 and sprite_index!=real(spr_floweygrin) then sprite_index=real(spr_floweytoriel2)
  if global.faceemotion = 8 and sprite_index!=real(spr_floweygrin) then sprite_index=real(spr_floweyplain)
  }

if OBJ_WRITER.halt != 0 then 
{
image_speed=0 
image_index=0
}
else image_speed=0.2

