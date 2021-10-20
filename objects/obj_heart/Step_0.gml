if global.mnfight = 2 then movement = 1
else movement = 0
global.invc -= 1
if global.invc > 0 or obj_battlecontroller.runaway=1 then
{
image_speed = 0.5
}
else
{
image_index = 0
image_speed = 0
}

if ( instance_exists( obj_battlecontroller ) )
{
    if ( obj_battlecontroller.runaway == 1 && x < -20 )
    {
        if ( instance_exists( obj_unfader ) == false && instance_create( 0, 0, obj_unfader ) )
		{
	        if ( x < -60 )
	        {
	            //this commented code from full version
	            //if global.flag[15] = 0
	            //{
	                caster_stop( global.batmusic )
	                caster_free (global.batmusic )
	            //}
	            room_goto( global.currentroom )
	        }
		}
    }
}