function SCR_BORDER(argument0, argument1) {
	xx = 0
	yy = 0
	if argument0 = 0 then
	{
	xx = round(random(global.idealborder[1] - global.idealborder[0])) + global.idealborder[0]
	yy = global.idealborder[2]
	}
	if argument0 = 1 then
	{
	xx = round(random(global.idealborder[1] - global.idealborder[0])) + global.idealborder[0]
	yy = global.idealborder[3] - argument1
	}
	if argument0 = 2 then
	{
	yy = round(random(global.idealborder[3] - global.idealborder[2])) + global.idealborder[2]
	xx = global.idealborder[0]
	}
	if argument0 = 3 then
	{
	yy = round(random(global.idealborder[3] - global.idealborder[2])) + global.idealborder[2]
	xx = global.idealborder[1] - argument1
	}



}
