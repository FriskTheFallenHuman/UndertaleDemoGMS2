function SCR_DIRECT(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	global.bulletvariable[0] = argument0 //chasespeed
	global.bulletvariable[1] = argument1 //speedvariance
	global.bulletvariable[2] = argument2 //direction variance
	global.bulletvariable[3] = argument3 //gravity
	global.bulletvariable[4] = argument4 //gdirection
	global.bulletvariable[5] = argument5 //friction
	global.bulletvariable[6] = argument6 //direction
	global.bulletvariable[7] = argument7 //directionalspeed
	bulletnumber = argument8 
	global.bulletappearance = argument9


	for (i=0; i<=bulletnumber;i+=1)
	{
	iii=instance_create(x,y,blt_direct)
	iii.dmg = global.monsteratk[myself]
	}

	//1, 4, 60, 0.5, 270, 0.1, 8 rain



}
