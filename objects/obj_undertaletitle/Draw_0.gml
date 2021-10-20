draw_sprite_ext(sprite_index,image_index,x,y,1,1,rot,c_white,1)

if ok=1
{
draw_set_color(c_gray)
draw_set_font(fnt_small)
if jok=0
  {
  draw_text(30,150,string_hash_to_newline("Written, programmed, and composed by Toby Fox"))
  draw_text(30,162,string_hash_to_newline("Black and white art by Toby Fox"))
  draw_text(30,174,string_hash_to_newline("Intro art and overworld characters by Tuyoki"))
  draw_text(30,186,string_hash_to_newline("Tiles by Tuyoki, easynam, and Merrigo"))
  draw_text(30,206,string_hash_to_newline("Caster OGG extension by Moacube"))
  draw_text(30,216,string_hash_to_newline("and Marius Utheim"))
  }
else
  {
  draw_set_font(fnt_maintext)
  draw_set_color(c_red)
   draw_text(30,150,string_hash_to_newline("That was fun."))
   draw_text(30,170,string_hash_to_newline("Let's finish the job."))
   }

}


