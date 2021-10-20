if naming=3 then
   {
   if m2>0 then draw_background(bg_floweyglow,0,-120)
   if m3>0 then draw_sprite(spr_flowey,0,190,170)
   if m4>0 then draw_sprite(spr_chairiel,0,40,150)
   }
scr_namingscreen()

if naming=3 then
  {
  draw_set_color(c_gray)
draw_set_font(fnt_small)
draw_text(90,232,string_hash_to_newline("UnderTale (C) Toby Fox 2013"))
}

