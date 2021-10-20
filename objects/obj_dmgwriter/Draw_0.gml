draw_set_color(c_black)
if dmg<20 or dmg=11 or dmg=21 or dmg=31 or dmg=41 or dmg=51 or dmg=61 or dmg=71 or dmg=81 or dmg=91 then draw_rectangle(x, y-24, x+48,y,false)
else draw_rectangle(x, y-24, x+64,y,false)
draw_set_font(fnt_dmg)
if i = 0 or i = 1 then draw_set_color(c_red)
if dmg > 0 then
  {
  draw_text(x, y-24, string_hash_to_newline(dmg))
  draw_set_color(c_dkgray)
  draw_rectangle(x, ystart+8, x + global.monstermaxhp[global.mytarget]*stretchfactor, ystart+20,false)
  draw_set_color(c_lime)
  draw_rectangle(x,ystart+8, x + apparenthp*stretchfactor, ystart+20,false)
  }
  else {
       draw_set_color(c_white)
       draw_text(x, y-24, string_hash_to_newline("MISS"))
       }


if y > ystart then
{
y = ystart
vspeed = 0
gravity = 0
}


