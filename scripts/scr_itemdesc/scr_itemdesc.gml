function scr_itemdesc(argument0) {
	//argument0 = whats the item
	switch(argument0)
	{
	case 0: // Crash Handler
	        global.msg[0] = "* If you are reading this,&  I messed up somehow./%"
	        break;
	case 1: //monster candy
	        global.msg[0] = "* \"Monster Candy\" - Heals 10 HP&* Has a distinct,^1 &  non-licorice flavor./%"
	        break;
	case 2: // croquette roll
	        global.msg[0] = "* \"Croquet Roll\" - Heals 15 HP&* Fried dough traditionally&  served with a mallet./%"
	        break;
	case 3: //butter knife
	        global.msg[0] = "* \"Stick\" - Weapon AT 0&* Its bark is worse than&  its bite./%"
	        break;
	case 4: //bandage
	        global.msg[0] = "* \"Bandage\" - Heals 10 HP&* It has already been used& several times./%"
	        break;
	case 5: //ancient toffee
	        global.msg[0] = "* \"Rock Candy\" - Heals 1 HP&* Here is a recipe to make&  this at home:/"
	        global.msg[1] = "* 1. Find a rock/%"
	        break;
	case 6: //pumpkin rings
	        global.msg[0] = "* \"Pumpkin Rings\" - Heals 8 HP&* A small pumpkin cooked&  like onion rings./%"
	        break;
	case 7: //Spider Donut
	        global.msg[0] = "* \"Spider Donut\" - Heals 12 HP&* A donut made with Spider&  Cider in the batter./%"
	        break;
	case 8: //Stoic Onions
	        global.msg[0] = "* \"Stoic Onion\" - Heals 5 HP&"+"* Even eating it raw^1, the&  tears just won't come./%"
	        break;
	case 9: //Ghost Fruit
	        global.msg[0] = "* \"Ghost Fruit\" - Heals 16 HP&"+"* If eaten^1, it will never&  pass to the other side./%"
	        break;
	case 10: //Spider Cider
	        global.msg[0] = "* \"Spider Cider\" - Heals 22 HP&* Made with whole spiders^1,&  not just the juice./%"
	        break;
	case 11: //Butterscotch Pie
	        global.msg[0] = "* \"Butterscotch Pie\" - All HP&* Butterscotch-cinnamon&  pie^1, one slice./%"
	        break;
	case 12: //ribbon
	        global.msg[0] = "* \"Faded Ribbon\" - Armor DF 3&* Monsters will be reluctant&  to hit you./%"
	        break;
	case 13: //ribbon
	        global.msg[0] = "* \"Toy Knife\" - Weapon AT 3&* Made of plastic.&* A rarity nowadays./%"
	        break;
	}




}
