function scr_writetext(argument0, argument1, argument2, argument3) {
	//arg0 = msc
	//arg1 = msg
	//arg2 = face plate
	//arg3 = typer

	global.facechoice=0

	global.msc=argument0
	if argument1 != "x" then global.msg[0]=argument1
	if argument2 != 0 then global.facechoice=argument2

	if global.inbattle=0 then
	   {
	   global.typer=5
	   if argument3!=0 then global.typer=argument3
	   instance_create(0,0,obj_dialoguer)
	   }
   
	if global.inbattle=1 then
	   {
	   with( OBJ_WRITER )
			halt=3
	   global.typer=1
	   if argument3!=0 then global.typer=argument3
	   instance_create(global.idealborder[0],global.idealborder[2],OBJ_WRITER)
	   }



}
