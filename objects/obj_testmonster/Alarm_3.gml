if image_index != 1 then
{
with (mypart1) instance_destroy();
with (mypart2) instance_destroy();
dmgwriter = instance_create(x + sprite_width/2 - 48,y - 24,obj_dmgwriter);
global.damage = takedamage
with (dmgwriter) dmg = global.damage
image_index = 1
sound_play(snd_damage)
alarm[8]=11
}

x = x + shudder
if shudder < 0 then shudder = -(shudder + 2)
else shudder = -shudder

if shudder = 0 then
  {
   global.hurtanim[myself] = 2
   exit;
  }
alarm[3] = 2



