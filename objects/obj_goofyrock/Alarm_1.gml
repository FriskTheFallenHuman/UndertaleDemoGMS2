global.interact=0
conversation+=1
path_speed=0
obj_mainchara.speed=0
if ( conversation == 9 ) 
{
	with ( obj_spikes_room )
		image_index = 1
}

if ( conversation > 13 )
{
	global.flag[33] = 1
	x = 280
	conversation = 15
	with ( obj_spikes_room )
	    image_index = 1
}