function scr_roomname( argument0 ) 
{
	switch( argument0 )
	{
	case 0: 
		roomname = "--";
		break;
	case 6: 
		roomname = "Ruins - Entrance";
		break;
	case 12: 
		roomname = "Ruins - Leaf Pile";
		break;
	case 18: 
		roomname = "Ruins - Mouse Hole";
		break;
	case 31: 
		roomname = "Ruins - Home";
		break;
	default:
		roomname = "Error";
		break;
	}
}
