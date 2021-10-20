x=obj_mainchara.x
y=(horizon)-(obj_mainchara.y-horizon)
if y<ceiling then y=ceiling
sprite_index=obj_mainchara.sprite_index
image_index=obj_mainchara.image_index
if sprite_index=spr_maincharad and flip=0 then {sprite_index=spr_maincharau; flip=1; }
//if sprite_index=spr_maincharal and flip=0 then {sprite_index=spr_maincharar; flip=1; }
//if sprite_index=spr_maincharar and flip=0 then {sprite_index=spr_maincharal; flip=1; }
if sprite_index=spr_maincharau and flip=0 then {sprite_index=spr_maincharad; flip=1; }
flip=0

