if inactive=0 then
  {
  if x1=0 then iii=instance_create(x+22,y+5,blt_chasefire1)
  else iii=instance_create(x+22,y+5,blt_chasefire2)
  if global.hp<8 then with( iii ) dmg=2
   if global.hp<6 then with( iii ) dmg=1
  sound_play(snd_noise)
  alarm[0]=4
  }
  else alarm[1]=100
  if global.hp<8 then dmg=2
   if global.hp<6 then dmg=1

