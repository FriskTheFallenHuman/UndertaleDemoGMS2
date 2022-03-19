scr_depth();

if (global.flag[7] == 1)
{
    if (global.flag[287] <= global.flag[286])
        global.flag[287] = (global.flag[286] + 1)
}

//if (global.flag[6] == 1 && (!scr_hardmodename(global.charname)))
//    global.flag[6] = 0

global.flag[462] = 0

x = 3 * round(x / 3);
y = 3 * round(y / 3);

image_speed = 0;

global.currentroom = room;

if ((global.interact == 3) && (global.entrance > 0))
{
	global.interact = 0;
	for ( var i = 0; i < 11; ++i ) 
	{
		if ( global.entrance == i )
		{
			var room_string = string(string_replace(room_get_name(global.currentroom), "room_", ""))
			ini_open(working_directory + "data\\maps\\" + "door_marker_" + room_string + ".ini")
				x = ini_read_real("Marker" + string(i), "xpos", 0)
				y = ini_read_real("Marker" + string(i), "ypos", 0)
			ini_close()

			show_debug_message("Loading Door Marker: " + string(global.entrance) + " for room: " + room_get_name(global.currentroom) + " INI file: " + "door_marker_" + room_string + ".ini")
		}
	}
}

/*if (global.flag[85] == 1)
{
    dsprite = spr_maincharad_umbrella
    rsprite = spr_maincharar_umbrella
    usprite = spr_maincharau_umbrella
    lsprite = spr_maincharal_umbrella
}*/

// Choose what sprite we should use based on our direction
switch(global.facing)
{
	case 0:
		sprite_index = dsprite;
	break;
	case 1:
		sprite_index = rsprite;
	break;
	case 2:
		sprite_index = usprite;
	break;
	case 3:
		sprite_index = lsprite;
	break;
};

if (global.flag[480] == 1)
    image_blend = merge_color(c_gray, c_white, 0.3)