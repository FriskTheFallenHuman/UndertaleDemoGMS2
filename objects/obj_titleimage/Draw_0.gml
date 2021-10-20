draw_sprite(sprite_index,0,x,y)

if d=1 then
   {
   draw_set_color(c_gray)
   draw_set_font(fnt_small)
   draw_text(120,180,string_hash_to_newline("[PRESS Z OR ENTER]"))
   }
   
if keyboard_multicheck_pressed(0) then 
{
caster_free(intronoise)
room_goto_next()
}

