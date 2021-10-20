function scr_facechoice() {
	if global.facechoice=1
	{
	instance_create(writer.x-33,writer.y+25,obj_face_torieltalk)
	instance_create(0,0,obj_torbody)
	}
	if global.facechoice=2
	{
	instance_create(writer.x-36,writer.y+25,obj_face_floweytalk)
	}
	if global.facechoice=3
	{
	instance_create(writer.x-35,writer.y+25,obj_face_sans)
	}
	if global.facechoice=4
	{
	instance_create(writer.x-35,writer.y+25,obj_face_papyrus)
	}



}
