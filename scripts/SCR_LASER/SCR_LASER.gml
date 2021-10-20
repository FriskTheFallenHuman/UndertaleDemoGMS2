function SCR_LASER(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	global.bulletvariable[0] = argument0 //ORIGINSPEED
	global.bulletvariable[1] = argument1 //ORIGINDIR
	global.bulletvariable[2] = argument2 //GOALX
	global.bulletvariable[3] = argument3 //GOALY
	global.bulletvariable[4] = argument4 //gravity
	global.bulletvariable[5] = argument5 //gdirection
	global.bulletvariable[6] = argument6 //friction
	global.bulletvariable[7] = argument7 //GOALDIR
	global.bulletvariable[8] = argument8 //GOALSPEED
	global.bulletappearance = argument9



	instance_create(x,y,blt_laser)



}
