x=xstart
if sprite_index != spr_torielboss_hurt and sprite_index != spr_torielboss_reallyhurt and sprite_index != spr_torielboss_murdered
{
if shudder=16 or shudder=32 then
  {
  dmgwriter = instance_create(x + sprite_width/2 - 48,y-20,obj_dmgwriter);
  global.damage = takedamage
  with (dmgwriter) dmg = global.damage
  if conversation<4
  then conversation=0
  }
sprite_index=spr_torielboss_hurt
if global.damage>100 then { sprite_index=spr_torielboss_reallyhurt; caster_set_volume(global.batmusic,0); }
if global.damage>100 and conversation>13 then { sprite_index=spr_torielboss_murdered}
if global.flag[202]>=monsterpopulation1 then { sprite_index=spr_torielboss_murdered}
sound_play(hurtsound)
}

x = x + shudder
if shudder < 0 then shudder = -(shudder + 2)
else shudder = -shudder
shudder-=2
 if shudder = 0 then
   {
   global.hurtanim[myself] = 2
   exit;
   }
   
 alarm[3]=2
 if global.damage>100 then alarm[3]=3


