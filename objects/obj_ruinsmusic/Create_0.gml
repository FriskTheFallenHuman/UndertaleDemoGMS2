if caster_is_playing(global.currentsong) != 1 then
{
if global.flag[221]=0 then
  {
  global.currentsong=caster_load("music/ruins.ogg")
  caster_loop(global.currentsong,1,1)
  }
else
 {
  global.currentsong=caster_load("music/toomuch.ogg")
  caster_loop(global.currentsong,1,1)
  }
}

