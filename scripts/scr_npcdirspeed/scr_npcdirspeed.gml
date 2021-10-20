function scr_npcdirspeed() {
	if myinteract=0 then
	{

	if vspeed>0 and vspeed>abs(hspeed) then
	{
	facing = 0
	sprite_index=dsprite
	}
	if hspeed>0 and hspeed>abs(vspeed) then 
	{
	facing = 1
	sprite_index=rsprite
	}
	if vspeed<0 and abs(vspeed)>abs(hspeed) then
	{
	facing = 2
	sprite_index=usprite
	}
	if hspeed<0 and abs(hspeed)>abs(vspeed) then
	{
	facing = 3
	sprite_index=lsprite
	}

	}

	if myinteract=1 then
	{
	if facing=0 then sprite_index=dtsprite
	if facing=1 then sprite_index=rtsprite
	if facing=2 then sprite_index=utsprite
	if facing=3 then sprite_index=ltsprite
	}



}
