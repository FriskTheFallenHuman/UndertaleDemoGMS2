function scr_storageget(argument0, argument1) {
	//argument0=id of item we are being given
	//argument1=offset
	i=0
	loop=1
	noroom=0
	global.flag[argument1+10]=999
	while (loop=1)
	   {
	     if global.flag[i+argument1]=0 then
	        {
	        global.flag[i+argument1]=argument0
	        break
	        }
	     if i=10 then
	        {
	        scr_itemnospace()
	        break;
	        }
	        i+=1
	   }

	//TODO: Actually checks if i need to put arguments here
	scr_itemnameb(argument1)
	scr_storagename(argument0)



}
