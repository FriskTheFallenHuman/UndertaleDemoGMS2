function scr_phonename() {
	for (i=0;i<8;i+=1)
	{
	global.phonename[i]=" "
	}

	for (i=0;i<8;i+=1)
	{
	itemid=global.phone[i]




	switch(itemid)
	{
	//phone numbers
	case 201: 
	        global.phonename[i]="Say Hello"
	        break;
	case 202: 
	        global.phonename[i]="Puzzle Help"
	        break;
	case 203: 
	        global.phonename[i]="About Yourself"
	        break;
	case 204: 
	        global.phonename[i]="Call Her \"Mom\""
	        break;
	case 205: 
	        global.phonename[i]="Flirt"
	        break;
	}




	}



}
