function scr_npcdir(argument0) {
	if myinteract=0 then
	{

	if direction>=225 and direction < 315 then
	{
	facing = 0
	sprite_index=dsprite
	}
	if direction>= 315 or direction < 45 then 
	{
	facing = 1
	sprite_index=rsprite
	}
	if direction>=45 and direction < 135 then
	{
	facing = 2
	sprite_index=usprite
	}
	if direction>=135 and direction < 225 then
	{
	facing = 3
	sprite_index=lsprite
	}

	}

	if myinteract=1+argument0 then
	{
	if facing=0 then sprite_index=dtsprite
	if facing=1 then sprite_index=rtsprite
	if facing=2 then sprite_index=utsprite
	if facing=3 then sprite_index=ltsprite
	}



}
