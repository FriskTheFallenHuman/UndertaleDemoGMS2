function scr_marker( argument0, argument1 )
{
	thismarker = instance_create(argument0, argument1, obj_npc_marker)
	with( thismarker )
	{
		visible = true
		image_speed = 0
		sprite_index = argument2
	}
	return thismarker;
}