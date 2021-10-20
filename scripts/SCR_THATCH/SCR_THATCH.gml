function SCR_THATCH(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10) {
	xdiff = argument0 //xdiff
	ydiff = argument1 //ydiff
	global.bulletvariable[2] = argument2 //thatch angle
	global.bulletvariable[3] = argument3 //gravity
	global.bulletvariable[4] = argument4 //gdirection
	global.bulletvariable[5] = argument5 //friction
	global.bulletvariable[6] = argument6 //direction
	global.bulletvariable[7] = argument7 //directionalspeed
	thatchbonus = argument8 //thatchbonus
	bulletnumber = argument9
	global.bulletappearance = argument10


	for (i=0; i<=bulletnumber;i+=1)
	{
	global.bulletvariable[6] += argument2
	global.bulletvariable[7] += (argument8*i)
	iii = instance_create(x+(i*xdiff),y+(i*ydiff),blt_thatch)
	with (iii) dmg = 5
	global.bulletvariable[6] -= argument2*2
	global.bulletvariable[7] -= (argument8*i)*2
	iii = instance_create(x+(i*xdiff),y+(i*ydiff),blt_thatch)
	with (iii) dmg = 5
	global.bulletvariable[6] = argument6
	global.bulletvariable[7] = argument7
	}

	//1, 4, 60, 0.5, 270, 0.1, 8 rain



}
