if sprite_index != spr_looxhurt then
{
dmgwriter = instance_create(x + sprite_width/2 - 48,y,obj_dmgwriter);
global.damage = takedamage
with (dmgwriter) dmg = global.damage
sprite_index=spr_looxhurt
sound_play(hurtsound)
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



