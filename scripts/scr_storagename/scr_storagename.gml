function scr_storagename(argument0) {
	for (i=argument0;i<(argument0+11);i+=1)
	{
	global.itemname[i-argument0]=" "
	}

	for (i=0;i<(11);i+=1)
	{
	itemid=global.flag[argument0+i]
	scr_itemnamelist()
	}



}
