function scr_itemnameb() {
	for (i=0;i<8;i+=1)
	{
	itemid=global.item[i]




	switch(itemid)
	{
	case 1:
	        global.itemnameb[i]="MnstrCndy"
	        break;
	case 2:
	        global.itemnameb[i]="CroqtRoll"
	        break;
	case 3:
	      if global.seriousbattle=0 then global.itemnameb[i]="Stick    "
	      if global.seriousbattle=1 then global.itemnameb[i]="Stick    "
	        break;
	case 4:
	        global.itemnameb[i]="Bandage  "
	        break;
	case 5:
	        global.itemnameb[i]="RockCandy"
	        break;
	case 6:
	        global.itemnameb[i]="PunkRings"
	        if global.seriousbattle=1 then global.itemnameb[i]="PmknRings"
	        break;
	case 7:
	        global.itemnameb[i]="SpidrDont"
	        if global.seriousbattle=1 then global.itemnameb[i]="SpdrDonut"
	        break;
	case 8:
	        global.itemnameb[i]="StocOnoin"
	        if global.seriousbattle=1 then global.itemnameb[i]="Onion    "
	        break;
	case 9:
	        global.itemnameb[i]="GhostFrut"
	        if global.seriousbattle=1 then global.itemnameb[i]="GhstFruit"
	        break;
	case 10:
	        global.itemnameb[i]="SpidrCidr"
	        if global.seriousbattle=1 then global.itemnameb[i]="SpdrCider"
	        break;
	case 11:
	        global.itemnameb[i]="ButtsPie "
	        if global.seriousbattle=1 then global.itemnameb[i]="Pie      "
	        break;
	case 12:
	        global.itemnameb[i]="Ribbon   "
	        break;
	case 13:
	        global.itemnameb[i]="Toy Knife"
	        break;
	}




	}



}
