function scr_weaponeq(argument0, argument1) {
	//argument0=which item are we equipping
	//argument1=what's the item ID we're shifting? if the ID is 0, the item has been used up
	global.item[argument0]=global.weapon
	global.weapon=argument1
	if global.weapon=3 then global.wstrength = 0
	if global.weapon=13 then global.wstrength = 3
	//TODO: Actually checks if i need to put arguments here
	scr_itemnameb(argument1)
	scr_itemname(argument0)



}
