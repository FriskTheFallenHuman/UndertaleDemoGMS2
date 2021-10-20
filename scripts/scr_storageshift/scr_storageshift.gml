function scr_storageshift(argument0, argument1, argument2) {
	//argument0=from which item are we shifting
	//argument1=what's the item ID we're shifting? if the ID is 0, the item has been used up
	//argument2=offset
	global.flag[argument2+10]=argument1
	for (i=argument0;i<10;i+=1)
	  {
	  global.flag[i+argument2]=global.flag[i+argument2+1]
	  }
  
	//TODO: Actually checks if i need to put arguments here
	scr_itemnameb(argument0)
	scr_storagename(argument1)



}
