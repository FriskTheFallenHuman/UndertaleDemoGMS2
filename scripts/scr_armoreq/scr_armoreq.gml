function scr_armoreq(argument0, argument1) {
	//argument0=which item are we equipping
	//argument1=what's the item ID we're shifting? if the ID is 0, the item has been used up
	global.item[argument0]=global.armor
	global.armor=argument1
	if global.armor=4 then global.adef = 0
	if global.armor=12 then global.adef = 3
	//TODO: Actually checks if i need to put arguments here
	scr_itemnameb(argument0)
	scr_itemname(argument1)



}
