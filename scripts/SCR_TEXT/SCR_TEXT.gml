function SCR_TEXT(argument0) {
	switch(argument0)
	{
	case 0:
	        break;
	case 1:
	     global.msg[0]="\\XLa, la.^3 &Time to wake&up and\\R smell\\X &the^4 pain./";
	     global.msg[1]="* Though^2.^4.^6.^8.&It's still a&little shaky./";
	     global.msg[2]="fhuehfuehfuehfuheufhe/%";
	     global.msg[3]="%%%";
	     break;
	case 2:
	     global.msg[0]="* TestMonster and its cohorts&draw near!";
	     global.msg[1]="%%%";
	     break;
	case 3: //monster names
	     global.msg[0] = " "
	     if global.monster[0] = 1 then 
	     {
	     global.msg[0]="   * " + global.monstername[0];
	     if global.monstertype[0] = global.monstertype[1] or global.monstertype[0] = global.monstertype[2] then global.msg[0]+=" A"
	     }
	     global.msg[0]+=" &"
	     if global.monster[1] = 1 then
	     {
	     global.msg[0]+="   * " + global.monstername[1];
	     if global.monstertype[1] = global.monstertype[0] then global.msg[0]+=" B"
	     }
	     global.msg[0]+=" &"
	     if global.monster[2] = 1 then 
	     {
	     global.msg[0]+="   * " + global.monstername[2]; 
	     if global.monstertype[2] = global.monstertype[1] then global.msg[0]+=" C"
	     }
	     global.msg[1]="%%%";
	     break;

	case 7:
	     global.msg[0]="   * Spare"
	     if global.mercy=0 then global.msg[0]+="&   * Flee"
	     break;

	case 9: //itemnames for first menu
	     global.msg[0] = "   * " + global.itemnameb[0] + "     "
	     if global.item[1]!=0 then global.msg[0]+= "* " + global.itemnameb[1]
	     global.msg[0]+=" &"
	     if global.item[2]!=0 then global.msg[0]+= "   * " + global.itemnameb[2] +"     "
	     if global.item[3]!=0 then global.msg[0]+= "* " + global.itemnameb[3]
	     global.msg[0]+=" &                     PAGE 1"
	     global.msg[1]="%%%"
	     break;
	case 10: //itemnames for second menu
	     global.msg[0] = "   * " + global.itemnameb[4] + "     "
	     if global.item[5]!=0 then global.msg[0]+= "* " + global.itemnameb[5]
	     global.msg[0]+=" &"
	     if global.item[6]!=0 then global.msg[0]+= "   * " + global.itemnameb[6] +"     "
	     if global.item[7]!=0 then global.msg[0]+= "* " + global.itemnameb[7]
	     global.msg[0]+=" &                     PAGE 2"
	     global.msg[1]="%%%"
	     break;
     
	case 11: //recovery item add
	     global.msg[0] += " &"
	     if global.item[8] < 9990 then
	     {
	     global.msg[0] += "* You recovered " + string(global.item[8]) + " HP!/%"
	     }
	     else global.msg[0] += "* Your HP was maxed out./%"
	     break;

	case 12: //throwing away an item
	     i=round(random(14))
	     if i=0 then global.msg[0]="* You bid a quiet farewell&  to the " + global.itemname[global.menucoord[1]] + "."
	     if i=1 then global.msg[0]="* You put the " + global.itemname[global.menucoord[1]] + "&  on the ground and gave it a&  little pat."
	    // if i=2 then global.msg[0]="* Nothing but somber goodbyes&  for the " + global.itemname[global.menucoord[1]] + "."
	     if i=2 then global.msg[0]="* You threw the " + global.itemname[global.menucoord[1]] + "&  on the ground like the piece&  of trash it is."
	     if i=3 then global.msg[0]="* You abandoned the &  " + global.itemname[global.menucoord[1]] + "."
	     if i>3 then global.msg[0]="* The " + global.itemname[global.menucoord[1]] + " was&  thrown away."
	     global.msg[0]+="/%"
	     break;
     

	case 14: //RUNNING AWAY
	     i=round(random(20))
	     if i=0 or i=1 then global.msg[0]="   * I'm outta here."
	     if i=2 then global.msg[0]="   * I've got better to do."
	     if i>3 then global.msg[0]="   * Escaped..."
	     if i=3 then global.msg[0]="   * Don't slow me down."
	     break;
     
	case 15: //save pt
	     if room=room_ruins1 then global.msg[0]="* (The shadow of the ruins&  looms above^1, filling you with&  determination.)/%%"
	     if room=room_ruins7 then global.msg[0]="* (Playfully crinkling through&  the leaves fills you with&  determination.)/%%"
	     if room=room_ruins12A then { global.msg[0]="* (Knowing the mouse might one&  day leave its hole and&  get the cheese...)/"; global.msg[1]="* (It fills you with&  determination.)/%%"; }
	     if room=room_ruins19 then global.msg[0]="* (Seeing such a cute^1, tidy&  house in the RUINS gives&  you determination.)/%%"
	     if global.flag[202]>=monsterpopulation1 then global.msg[0]="* Determination./%%"
	     break;
     
	case 16: //putting away an item
	     i=round(random(14))
	     //TODO: Actually checks if i need to put arguments here
	     scr_itemname(argument0)
	     if i<=12 then global.msg[0]="* The " + global.itemname[global.menucoord[6]] + " was&  put away."
	     if i>12 then global.msg[0]="* The " + global.itemname[global.menucoord[6]] + " was&  tossed inside recklessly."
	     if i>13 then global.msg[0]="* The " + global.itemname[global.menucoord[6]] + " was&  placed thoughtfully inside."
	     global.msg[0]+="/%"
	     break;
     
	case 17: //getting an item
	     i=round(random(14))
	     scr_storagename(300)
	      if i<=12 then global.msg[0]="* The " + global.itemname[global.menucoord[7]] + " was&  taken out."
	     if i>12 then global.msg[0]="* The " + global.itemname[global.menucoord[7]] + " was&  grabbed impatiently."
	     if i>13 then global.msg[0]="* The " + global.itemname[global.menucoord[7]] + " was&  taken out and held like a&  small puppy."
	     global.msg[0]+="/%"
	     break;

	case 18: //can't carry any more
	        global.msg[0]="* You can't carry any more./%%"
	        break;
        
	case 19: //can't carry any more
	        global.msg[0]="* The box is full./%%"
	        break;

	case 30: //itembox1
	        global.msg[0]="* Use the box?& &         Yes         No      \\C /"
	        global.msg[1]=" "
	        global.msg[2]=" "
	        break;
        
	case 31: //itembox2
	        if global.choice=0 then
	          {
	         global.msg[0]="* What to do?& &         Put in      Take out\\C /"
	         global.msg[1]=" "
	         global.msg[2]=" "
	          }
	        if global.choice=1 then global.msg[0]="%%"
	        break;
        
	case 32: //itembox2
	        if global.choice=0 then
	          {
	          if instance_exists(obj_storagemenu)==false
	          instance_create(0,0,obj_storagemenu)
	          obj_storagemenu.j=1
	          global.menucoord[6]=0
	         global.msg[0]="%%"
	          }
	        if global.choice=1 then
	          {
	           if instance_exists(obj_storagemenu)==false
	           instance_create(0,0,obj_storagemenu)
	          obj_storagemenu.j=2
	          global.menucoord[7]=0
	         global.msg[0]="%%"
	          }
	          break;
         
     
     
	// main script
     
	case 200: //flowey's first message
	     global.msg[0]="\\W* Howdy^2!&* I'm\\Y FLOWEY\\W.^2 &* \\YFLOWEY\\W the \\YFLOWER\\W!/"
	     global.msg[1]="* Hmmm.../"
	     global.msg[2]="* You're new to the&  UNDERGROUND^2, aren'tcha?/"
	     global.msg[3]="* Golly^1, you must be&  so confused./"
	     global.msg[4]="* Someone ought to teach&  you how things work&  around here!/"
	     global.msg[5]="* I guess little old me&  will have to do./"
	     global.msg[6]="* Ready^2?&* Here we go!/%%"
	     break;
     
	case 201: //toriel says "this way"
	     global.msg[0]="\\E2* This way./%%"
	     global.msg[1]="%%%"
	     break;
     
	case 202: //toriel from here on
	     global.msg[0]="\\E2* Welcome to your new&  home^1, innocent one./"
	     global.msg[1]="* Allow me to educate you&  in the operation of the&  RUINS./%%"
	     break;
     
	case 203:
	     global.msg[0]="\\E2* The RUINS are full of&  puzzles./"
	     global.msg[1]="* Ancient fusions between &  diversions and doorkeys./"
	    global.msg[2]="* One must solve them&  to move from room to&  room./"
	    global.msg[3]="* Please adjust yourself    to the sight of them./%"
	    break;

	case 204:
	    global.msg[0]="\\E2* To make progress here,^1 &  you will need to trigger&  several switches./"
	    global.msg[1]="* Do not worry,^1 I have &  labelled the ones that&  you need to flip./%"
	    break;

	case 205:
	    global.msg[0]="\\E2* The first switch is over&  on the wall./%"
	    break;

	case 206:
	    global.msg[0]="\\E1* Do you need some help..^1?&* Press the switch on the   wall./"
	    global.msg[1]="\\E0* Come on^1, you can do it!/%"
	    break;

	case 207:
	    global.msg[0]="\\E2* Go on^1, press the switch&  on the left./%"
	    break;    
	case 208:
	    global.msg[0]="\\E1* You do know which way&  left is^1, do you not?/"
	    global.msg[1]="\\E0* Press the switch that I&  labelled for you./%"
	    break;

	case 209:
	global.msg[0]="\\E1* You are very curious,^1 &  are you not?/"
	global.msg[1]="\\E1* Please understand.^2 & \\E0I only want the best&  for you./%"
	break;

	case 210:
	global.msg[0]="\\E0* Splendid!^2 &* I am proud of you,^1 &  little one./"
	global.msg[1]="* Let us move to the&  next room./%"
	break;

	case 211:
	global.msg[0]="\\E1* As a human living in&  the UNDERGROUND,^1 &  monsters may attack you./"
	global.msg[1]="\\E2* You will need to be&  prepared for this&  situation./"
	global.msg[2]="\\E0* However, worry not!^2 &* The process is simple./"
	global.msg[3]="\\E2* When you encounter a &  monster,^1 you will enter&  a FIGHT./"
	global.msg[4]="* While you are in a&  FIGHT^1, strike up a&  friendly conversation./"
	global.msg[5]="\\E2* Stall for time.&  I will come to resolve&  the conflict./"
	global.msg[6]="\\E2* Practice talking to&  the dummy./%"
	break;

	case 212:
	if global.flag[12]=1
	   {
	   global.msg[0]="\\E1* Ahh,^1 the dummies are&  not for fighting!^2 &* They are for talking!/"
	   global.msg[1]="* We do not want to hurt&  anybody, do we...?^2 \\E0 &* Come now./%"
	   }
	if global.flag[10]=1
	   {
	   global.msg[0]="\\E0* Ah,^1 very good!^2 &* You are very good./%"
	   }
	if global.flag[11]=1
	   {
	global.msg[0]="\\E1* .../"
	global.msg[1]="\\E1* ... you ran away.../"
	global.msg[2]="\\E0* Truthfully^1, that was&  not a poor choice./"
	global.msg[3]="\\E0* It is better to&  avoid conflict&  whenever possible./"
	global.msg[4]="\\E1* That..^1. however^1, is&  only a dummy^2.&* It cannot harm you./"
	global.msg[5]="\\E1* It is made of cotton^1.&* It has no desire&  for revenge.../"
	global.msg[6]="\\E0* Nevermind^2.&* Stay close to me and&  I will keep you safe./%"  
	   }
	if global.flag[13]=1
	   {
	global.msg[0]="\\E3* ^1.^1.^1./"
	global.msg[1]="\\E4* ^1.^1.^1./"
	global.msg[2]="\\E0* The next room awaits./%"
	  }
	break;

	case 213:
	global.msg[0]="\\E2* Practice talking to&  the dummy./"
	global.msg[1]="\\E1* You can say anything..^2.\\E2 &* I do not think the dummy&  will be bothered./%"
	break;


	case 214:
	global.msg[0]="\\E0* Do you need some&  ideas for conversation&  topics?/"
	global.msg[1]="* Well^1, I often start with&  a simple 'how do you&  do...'/"
	global.msg[2]="* You could ask them about&  their favorite books.../"
	global.msg[3]="* Jokes can be useful for&  'breaking the ice.'/"
	global.msg[4]="* Listen to this one.../"
	global.msg[5]="* What did the skeleton&  tile his roof with?/"
	global.msg[6]="* ... SHIN-gles!/"
	global.msg[7]="\\E1* .../"
	global.msg[8]="\\E0* Well^1, I thought it&  was amusing./%"
	break;

	case 215:
	global.msg[0]="\\E2* Practice talking to&  the dummy./"
	global.msg[1]="\\E1* You can say anything..^2.\\E0 &* The dummy will not&  be bothered./%"
	break;

	case 216:
	global.msg[0]="\\E1* There is another puzzle&  in this room.../"
	global.msg[1]="\\E0* I wonder if you can&  solve it?/%"
	break;

	case 217:
	global.msg[0]="\\E1* This is the puzzle^1,&  but.../"
	global.msg[1]="\\E0* Here^1, take my hand&  for a moment./%"
	break;

	case 218:
	global.msg[0]="\\E1* Puzzles seem a little&  too dangerous for&  now./%"
	break;

	case 219:
	global.msg[0]=".../%"
	break;

	case 220:
	global.msg[0]="\\E2* Greetings,^1 my child^2.&* Do not worry^1, I did&  not leave you./"
	global.msg[1]="\\E0* I was merely behind this&  pillar the whole time./"
	global.msg[2]="* Thank you for trusting&  me./"
	global.msg[3]="\\E2* However^1, there was an&  important reason for&  this exercise./"
	global.msg[4]="* ... to test your&  independence./"
	global.msg[5]="\\E1* I must attend to some&  business^1, and you must&  stay alone for a while./"
	global.msg[6]="\\E0* Please remain here^2.&*\\E1 It's dangerous to&  explore by yourself./"
	global.msg[7]="\\E0* I have an idea^2.&* I will give you a&  CELL PHONE./"
	global.msg[8]="* If you have a need for&  anything^1, just call./"
	global.msg[9]="\\E1* Be good^1, alright?/%"
	break;

	case 221:
	global.msg[0]="\\E0* You have done&  excellently thus&  far^1, my child./"
	global.msg[1]="\\E2* However... I have a&  difficult request to ask&  of you./"
	global.msg[2]="* .../"
	global.msg[3]="* I would like you to walk&  to the end of the room&  by yourself./"
	global.msg[4]="\\E1* Forgive me for this./%"
	break;

	case 222:
	global.msg[0]="* Ring..\\E0.\\TT /"
	global.msg[1]="\\F1 %"
	global.msg[2]="* Hello?&* This is TORIEL./"
	global.msg[3]="* For no reason in&  particular...&* Which do you prefer?/"
	global.msg[4]="* Cinnamon or&  butterscotch?&  Cinnamon    Bscotch \\C /"
	global.msg[5]=" "
	break;

	case 223:
	if global.choice=0 then global.flag[46]=0
	if global.choice=1 then global.flag[46]=1
	global.msg[0]="* Oh^1, I see.&* Thank you very much!/"
	global.msg[1]="\\TS \\F0 \\T0 %"
	global.msg[2]="* Click.../%%"
	global.msg[5]="* /"
	break;


	case 500: //flowers
	     global.msg[0]="* Beautiful flowers^2.&* They must have&  broken your fall./%%"
	     global.msg[1]="%%%"
	     break;
     
	case 501: //sign
	     global.msg[0]="* \"Press [Z] to read signs!\"/%%"
	     break;
     
	case 502: //pillar1
	     global.msg[0]="* Just a regular old pillar./%%"
	     break;

	case 503: //sign1
	     global.msg[0]="* Please don't step on the&  leaves./%%"
	     break;

	case 504: //sign1
	     global.msg[0]="* Didn't you read the sign&  downstairs?/%%"
	     break;

	case 505: //goofyrock
	     conversation=obj_goofyrock.conversation
	     if global.flag[33]=0 then
	     {
	     if conversation=0 then
	        {
	        global.msg[0]="* WHOA there^1, pardner^2!&* Who said you could push&  me around?/"
	        global.msg[1]="* HMM^2?&* So you're ASKIN' me to&  move over?/"
	        global.msg[2]="* Okay^1, just for you^1,&  pumpkin./%%"
	        }
	     if conversation=3 then
	        {
	        global.msg[0]="* HMM^2?&* You want me to move some&  more?/"
	        global.msg[1]="* Alrighty^1, how's this?/%%"
	        }
	     if conversation=6 then
	        {
	        global.msg[0]="* HMM^2?&* That was the wrong direction?/"
	        global.msg[1]="* Okay^1, think I got it./%%"
	        }
	      if conversation=9 then
	     global.msg[0]="* Was that helpful?/%%"
	      if conversation=12 then
	        {
	        global.msg[0]="* HMM^2?&* You wanted me to STAY there?/"
	        global.msg[1]="* You're giving me a real&  workout./%%"
	        }
	     }
	     else
	     global.msg[0]="* Aren't things easier when&  you just ask?/%%"
	     break; 
     
	case 508:
	     doak=0
	     noroom=0
	     if global.flag[34]<4 then
	     {
	     global.msg[0]="*'Take one.'&* Take a candy?&         Yes         No \\C"
	     if global.flag[34]=0 then global.msg[0]="* It says 'take one.'&* Take a piece of candy?&         Yes         No \\C"
	     }
	     else global.msg[0]="* Look at what you've done./%%"
	     break;

	case 509:
	     if global.choice=0 then
	           {
	               if global.flag[34]<4 then
	               { 
	               if doak=0 then
	                  {
	                  doak=1
	                  scr_itemget(1)
	                  if noroom=0 then global.flag[34]+=1
	                  }
	               }
	           if noroom=0 then 
	                {
	                if global.flag[34]=1 then global.msg[0]="* You took a piece of candy.&* (Press [C] to open the menu.)/%%"
	                if global.flag[34]=2 then global.msg[0]="* You took more candy^1.&* How disgusting../%%"
	                if global.flag[34]=3 then global.msg[0]="* You take another piece.&* You feel like the&  scum of the earth.../%%"
	                if global.flag[34]=4 then global.msg[0]="* You took too much too fast.&* The candy spills onto&  the floor./%%"
	                }
	           if noroom=1 then global.msg[0]="* You tried to take a piece&  of candy^1, but you didn't&  have any room./%%"
	           }
	     if global.choice=1 then
	           {
	           global.msg[0]="* You decided not to take some./%%"
	           }
	           break;

	case 510:
	     global.msg[0]="* zzzzzzzzzzzzzzz..^1.&* zzzzzzzzzzzzzz.../"
	     global.msg[1]="* zzzzzzzzzz..^1.&* (are they gone yet^1)&* zzzzzzzzzzzzzzz.../"
	     global.msg[2]="* (This ghost keeps saying 'z'&  out loud repeatedly^1,&  pretending to sleep.)/"
	     global.msg[3]="* Move it with force?& &         Yes         No \\C"
	     break;

	case 511:
	       global.msg[0]="%%"
	    // if global.choice=0 then
	     //      {

	     //           if global.flag[34]=1 then global.msg[0]="* You took a piece of candy.&* (Press CTRL to open the menu.)/%%"
	       //         if global.flag[34]=2 then global.msg[0]="* You took more candy^1.&* No one will know you took&  more than one.../%%"
	      //          if global.flag[34]=3 then global.msg[0]="* You take another piece.&* Your inhibitions begin to&  melt away./%%"
	       //         if global.flag[34]=4 then global.msg[0]="* You took too much too fast.&* The candy spills onto&  the floor./%%"
	       //    }

	     //if global.choice=1 then
	      //     {
	       //    global.msg[0]="* You decided not to take some./%%"
	       //    }
	           break;
       
	case 512:
	     doak=0
	     noroom=0
	     global.msg[0]="* It says 'Take them all.'&* Take a candy?&         Yes         No \\C"
	     break;

	case 513:
	     scr_itemcheck(5)
	     if global.choice=0 then
	               {
	               if haveit=0 then
	               if doak=0 then
	                  {
	                  doak=1
	                  scr_itemget(5)
	                  }
	               }
	           if noroom=0 then 
	                {
	                global.msg[0]="* You took a piece.&* Boy^1, that's heavy./%%"
	                }
	           if haveit=1 then global.msg[0]="* You can't carry more.&* It's just too heavy./%%"
	           if noroom=1 then global.msg[0]="* You tried to take a piece&  of candy^1, but you didn't&  have any room./%%"
	          if global.choice=1 then
	             {
	             global.msg[0]="* You decided not to take some./%%"
	             }
	           break;
     
	case 514:
	     doak=0
	     noroom=0
	     global.msg[0]="* Leave 7G in the web?& &         Yes         No \\C"
	     break;

	case 515:
	     scr_cost(7)
	     if global.choice=0 then
	               {
	               if afford=1 then
	               if doak=0 then
	                  {
	                  doak=1
	                  scr_itemget(7)
	                  if noroom=0 then global.gold-=7
	                  }
	               }
	           if noroom=0 then 
	                {
	                global.msg[0]="* Some spiders crawled down&  and gave you a donut./%%"
	                if afford=0 then global.msg[0]="* You didn't have enough&  gold./%%"
	                }
	           if noroom=1 then global.msg[0]="* You are carrying too&  many items./%%"
	          if global.choice=1 then
	             {
	             global.msg[0]="*%%"
	             }
	           break;
           
	case 516:
	     doak=0
	     noroom=0
	     global.msg[0]="* Leave 18G in the web?& &         Yes         No \\C"
	     break;

	case 517:
	     scr_cost(18)
	     if global.choice=0 then
	               {
	               if afford=1 then
	               if doak=0 then
	                  {
	                  doak=1
	                  scr_itemget(10)
	                  if noroom=0 then global.gold-=18
	                  }
	               }
	           if noroom=0 then 
	                {
	                global.msg[0]="* Some spiders crawled down&  and gave you a jug./%%"
	                if afford=0 then global.msg[0]="* You didn't have enough&  gold./%%"
	                }
	           if noroom=1 then global.msg[0]="* You are carrying too&  many items./%%"
	          if global.choice=1 then
	             {
	             global.msg[0]="*%%"
	             }
	           break;

	case 518:
	     if doak=0 then
	        {
	          scr_itemget(12)
	          if noroom=0 then global.flag[100]=1
	          doak=1
	        }
	     global.msg[0]="* You found a Faded Ribbon./%%"
	     if noroom=1 then global.msg[0]="* You are carrying too&  much./%%"
	     break;
     
	case 519:
	     doak=0
	     noroom=0
	     global.msg[0]="* It's a switch.&* Press it?&         Yes         No \\C"
	     break;

	case 520:
	     if doak=0 then
	        {
	        global.flag[43]+=1
	        doak=1
	        }
	     if global.choice=0 then global.msg[0]="* Nothing happened./%%"
	     if global.choice=1 then global.msg[0]="%%"
	     if global.flag[43]>25 then global.msg[0]= "* You're making the switches&  uncomfortable with all&  this attention./%%"
	     break;
     
	case 521:
	     doak=0
	     noroom=0
	     global.msg[0]="* It's a switch.&* Press it?&         Yes         No \\C"
	     break;
     
	case 522:
	     if doak=0 then
	        {
	        global.flag[43]+=1
	        doak=1
	        }
	     if global.choice=0 then { global.msg[0]="* You hear a clicking sound./%%"; if room=room_ruins15B and global.plot<14 then global.plot=14; if room=room_ruins15C and global.plot<15 then global.plot=15; if room=room_ruins15D and global.plot<16 then global.plot=16; }
	     if global.choice=1 then global.msg[0]="%%"
	     break;
     
	case 523:
	     if doak=0 then
	        {
	          scr_itemget(13)
	          if noroom=0 then global.flag[102]=1
	          doak=1
	        }
	     global.msg[0]="* You found the Toy Knife./%%"
	     if noroom=1 then global.msg[0]="* You are carrying too&  much./%%"
	     break;

	case 524:
	     doak=0
	     noroom=0
	     global.msg[0]="* It's TORIEL's diary.&* Read the circled passage?&         Yes         No \\C"
	     break;
     
	case 525:
	     if global.choice=0 then { global.msg[0]="* You read the passage.../"; global.msg[1]="\"* Why did the skeleton want&   a friend?\"/" global.msg[2]="\"* Because she was feeling&   BONELY...\"/" global.msg[3]="* The rest of the page is&  filled with jokes of&  a similar caliber./%%"}
	     if global.choice=1 then global.msg[0]="%%"
	     break;
     
	case 526:
	     if doak=0 then
	        {
	          scr_itemget(11)
	          if noroom=0 then global.flag[103]=2
	          doak=1
	        }
	     global.msg[0]="* You found a slice of&  butterscotch-cinnamon&  pie./%%"
	     if noroom=1 then global.msg[0]="* You are carrying too&  much./%%"
	     break;

	case 527:
	global.msg[0]="* Hello there^1,&  little one!/"
	global.msg[1]="* The pie has not&  cooled down yet./"
	global.msg[2]="* Perhaps you should&  take a nap.&  Yes         No      \\C /"
	global.msg[3]=" "
	break;

	case 528:
	     global.plot=19.1
	     if global.choice=0 then { global.msg[0]="* Sweet dreams./%%" ; }
	     else 
	          { 
	            global.msg[0]="\\E1* You'd rather stay&  up and chat with&  me^1, then?/"
	            if global.flag[103]>0 then global.msg[0]="* Up already^1, I see?/"
	            global.msg[1]="\\E0* Um^1, I want you to know&  how glad I am to&  have someone here./"
	            global.msg[2]="* There are so many&  old books I want&  to share./"
	            global.msg[3]="* I want to show you&  my favorite bug-&  hunting spot./"
	            global.msg[4]="* I've also prepared&  a curriculum for&  your education./"
	            global.msg[5]="* This may come as&  a surprise to you.../"
	            global.msg[6]="* But I have always&  wanted to be a&  teacher./"
	            global.msg[7]="\\E1* ... actually^1, perhaps&  that isn't very&  surprising./"
	            global.msg[8]="\\E5* STILL./"
	            global.msg[9]="\\E0* I am glad to have&  you living here./"
	            global.msg[10]="\\E1* Oh^1, did you&  want something?/"
	            global.msg[11]="* What is it?&               When can&  Nothing      I go home?\\C /"
	            global.msg[12]=" "
	            }
	     break;

	case 529:
	global.plot=19.2
	if global.choice=0 then
	   {
	   global.msg[0]="* Well^1, talk to me&  again if you&  need anything./%%"
	   }
	 else 
	   {
	   global.msg[0]="\\E1* What^1?&* This..^1. this IS your&  home now./"
	   global.msg[1]="* Um..^1. would you like&  to hear about this&  book I am reading?/"
	   if global.choice=-1 then 
	    { global.msg[0]="\\E0* Oh^1, hello!/"; global.msg[1]="* Did you want to&  hear about the&  book I am reading?/" }
	   global.msg[2]="\\E0* It is called&  \"72 Uses for Snails.\"/"
	   global.msg[3]="* How about it?&              How to exit&  Sure        the RUINS\\C /"
	   global.msg[4]=" "
	    }
	break;
    
	case 530:
	    global.plot=19.3
	    global.msg[0]="* Here is an exciting&  snail fact./"
	    if global.choice=1 then global.msg[0]="\\E1* Um^1.^1.^1.&*\\E0 How about an exciting&  snail fact?/"
	    global.msg[1]="\\E2* Did you know&  that snails.../"
	    r=round(random(3))
	    if r = 0 then global.msg[2]="\\E0* Have a chainsaw-like&  tongue called a&  radula?/"
	    if r = 1 then global.msg[2]="\\E0* Sometimes flip their&  digestive systems&  as they mature?/"
	    if r = 2 then global.msg[2]="\\E0* Make terrible&  shoelaces?/"
	    if r = 3 then global.msg[2]="\\E0* Talk^2. Really^2. Slowly^2?&* Just kidding^1, snails&  don't talk./"
	    global.msg[3]="\\E0* Interesting.&              How to exit&  Yeah        the RUINS\\C /"
	    global.msg[4]=" "
	break;

	case 531:
	    global.plot=19.4
	    if global.choice=0 then global.msg[0]="* Well^1, bother me&  if you need anything&  else./%%"
	    else
	    { 
	      if global.choice=1 then { global.msg[0]="\\E1* ... I have to do&  something^1.&* Stay here./%%" ; global.plot=19.9 }
	      if global.choice=-1 then 
	         {
	         global.msg[0]="\\E0* What is it?&              How to exit&  Nothing     the RUINS\\C /"
	         }
	      }
	    break;
    
	case 532:
	    if global.choice=0 then global.msg[0]="* If you need anything^1,&  just ask./%%"
	    if global.choice=1 then{  global.msg[0]="\\E1* ... I have to do&  something.&* Stay here./%%."; global.plot=19.9; }
	break;
    
	case 666: //flowey
	     global.msg[0]="See that heart^1? &That is your SOUL^1,&the very culmination&of your being!/"
	     global.msg[1]="Your SOUL starts off&weak^1, but can grow&strong if you gain&a lot of LV./"
	     global.msg[2]="What's LV stand for^1?&Why^1, LOVE^1, of course!/"
	     global.msg[3]="You want some&LOVE, don't you?/"
	     global.msg[4]="Don't worry,&I'll share some&with you!/%"
	     break;

	case 667:
	     global.msg[0]="Down here^1, LOVE is&shared through..^1./"
	     global.msg[1]="Little white..^2.\\E1 &\"friendliness&pellets.\"/"
	     global.msg[2]="\\E2Are you ready\\E0?/%"
	    break;

	case 668:
	     global.msg[0]="Move around^1!&Get as many as&you can^2!%%%"
	     global.msg[1]="%%%"
	    break;

	case 669:
	     global.msg[0]="You idiot./"
	     global.msg[1]="In this world^1, it's&kill or BE killed./"
	     global.msg[2]="Why would ANYONE pass&up an opportunity&like this!?/%"
	    break;

	case 670:
	     global.msg[0]="Die./%"
	     break;
     
	case 671:
	     global.msg[0]="Hey buddy^1,&you missed them./"
	     global.msg[1]="Let's try again^1,&okay?/%"
	     break;
	case 672:
	     global.msg[0]="Is this a joke^2?&Are you braindead^2?&RUN^2. INTO^2. THE^2.&BULLETS!!!"
	     break;
	case 673:
	     global.msg[0]="You know what's&going on here^1,&don't you?/"
	     global.msg[1]="You just wanted to&see me suffer./%"
	     break;
	case 674:
	     global.msg[0]="\\E1What a cretin^1,&torturing such a&poor^1, innocent&youth.../"
	     global.msg[1]="\\E2Ah, do not be&afraid^1, my child./"
	     global.msg[2]="\\XI am \\BTORIEL\\X,&caretaker of&the \\RRUINS\\X./"
	     global.msg[3]="I pass through this&place every day to&see if anyone has&fallen down./"
	     global.msg[4]="You are the first&human to come here&in a long time./"
	     global.msg[5]="I will do my best&to ensure your&protection during&your time here./%%"
	     global.msg[5]="\\E2Come^2!&I will guide you&through the&catacombs./%%"   
	     global.msg[6]="%%%"

	     break;
     
	// talk choices
	case 1001:
	     global.msg[0]="   * Check         * Compliment&   * Threat";
	     global.choices[0] = 1
	     global.choices[1] = 1
	     global.choices[2] = 0
	     global.choices[3] = 1
	     global.choices[4] = 0
	     global.choices[5] = 0
	        break;

	        //dummy
	case 1002:
	     global.msg[0]="   * Check         * Talk";
	     global.choices[0] = 1
	     global.choices[1] = 0
	     global.choices[2] = 0
	     global.choices[3] = 1
	     global.choices[4] = 0
	     global.choices[5] = 0
	        break;

	// fake froggit
	case 1003:
	     global.msg[0]="   * Check         * Compliment&   * Threat";
	     global.choices[0] = 1
	     global.choices[1] = 1
	     global.choices[2] = 0
	     global.choices[3] = 1
	     global.choices[4] = 0
	     global.choices[5] = 0
	        break;                

	// real froggit
	case 1004:
	     global.msg[0]="   * Check         * Compliment&   * Threat";
	     global.choices[0] = 1
	     global.choices[1] = 1
	     global.choices[2] = 0
	     global.choices[3] = 1
	     global.choices[4] = 0
	     global.choices[5] = 0
	        break;               
        
	// whimsun
	case 1005:
	     global.msg[0]="   * Check         * Console&   * Terrorize";
	     global.choices[0] = 1
	     global.choices[1] = 1
	     global.choices[2] = 0
	     global.choices[3] = 1
	     global.choices[4] = 0
	     global.choices[5] = 0
	        break;

	case 1006: // moldsmal
	     global.msg[0]="   * Check         * Imitate&   * Flirt";
	     global.choices[0] = 1
	     global.choices[1] = 1
	     global.choices[2] = 0
	     global.choices[3] = 1
	     global.choices[4] = 0
	     global.choices[5] = 0
	        break;

	case 1007: // migosp
	     global.msg[0]="   * Check         * Talk";
	     global.choices[0] = 1
	     global.choices[1] = 0
	     global.choices[2] = 0
	     global.choices[3] = 1
	     global.choices[4] = 0
	     global.choices[5] = 0
	        break;
        
	case 1008: // vegetoid
	     global.msg[0]="   * Check         * Talk&   * Eat";
	     global.choices[0] = 1
	     global.choices[1] = 1
	     global.choices[2] = 0
	     global.choices[3] = 1
	     global.choices[4] = 0
	     global.choices[5] = 0
	        break;
        
	case 1009: // Loox
	     global.msg[0]="   * Check         * Pick On&   * Don't Pick On";
	     global.choices[0] = 1
	     global.choices[1] = 1
	     global.choices[2] = 0
	     global.choices[3] = 1
	     global.choices[4] = 0
	     global.choices[5] = 0
	        break;
        
	case 1010: // Toriel
	     global.msg[0]="   * Check         * Talk";
	     global.choices[0] = 1
	     global.choices[1] = 0
	     global.choices[2] = 0
	     global.choices[3] = 1
	     global.choices[4] = 0
	     global.choices[5] = 0
	        break;
        
	case 1011: // napstablook
	     global.msg[0]="   * Check         * Flirt&   * Threat        * Cheer";
	     global.choices[0] = 1
	     global.choices[1] = 1
	     global.choices[2] = 0
	     global.choices[3] = 1
	     global.choices[4] = 1
	     global.choices[5] = 0
	        break;
        
	/*case argument0>=1012 and argument0<=1015: // doges
	     global.msg[0]="   * Check         * Beckon&   * Bathe         * Dry  &   * Walk          * Pet  ";
	     global.choices[0] = 1
	     global.choices[1] = 1
	     global.choices[2] = 1
	     global.choices[3] = 1
	     global.choices[4] = 1
	     global.choices[5] = 1
	        break;*/   
        
        
	// phone dialogue
	case 1501:
	     global.msg[0]="* Dialing..\\E0.\\TT /"
	     if doak=0 then
	        {
	        doak=1
	        global.flag[40]+=1
	        }
	     if global.flag[40]=1 then
	       {
	       global.msg[1]="\\F1 %"
	       global.msg[2]="\\E0* This is TORIEL./"
	       global.msg[3]="* You only wanted to&  say hello...^2?&* Well then./"
	       global.msg[4]="\\E0* 'Hello!'/"
	       global.msg[5]="* I hope that suffices^1.&* Hee hee./"
	       global.msg[6]="\\TS \\F0 \\T0 %"
	       global.msg[7]="* Click.../%%"
	       }
	     if global.flag[40]=2 then
	       {
	       global.msg[1]="\\F1 %"
	       global.msg[2]="\\E0* This is TORIEL./"
	       global.msg[3]="* You want to say&  hello again?/"
	       global.msg[4]="* 'Salutations!'/"
	       global.msg[5]="* Is that enough?/"
	       global.msg[6]="\\TS \\F0 \\T0 %"
	       global.msg[7]="* Click.../%%"
	       }
	     if global.flag[40]=3 then
	       {
	       global.msg[1]="\\F1 \\TT %"
	       global.msg[2]="\\E0* This is TORIEL./"
	       global.msg[3]="* Are you bored^1?&* I should have given& a book to you./"
	       global.msg[4]="* My apologies./"
	       global.msg[5]="* Why not use your&  imagination to&  divert yourself?/"
	       global.msg[6]="* Pretend you are..^1.&* A monarch!/"
	       global.msg[7]="* Rule over the leaf pile&  with a fist of iron./"
	       global.msg[8]="* Can you do that for me?/"
	       global.msg[9]="\\TS \\F0 \\T0 %"
	       global.msg[10]="* Click.../%%"
	       }
	      if global.flag[40]>3 then
	       {
	       global.msg[1]="\\F1 \\TT %"
	       global.msg[2]="\\E0* This is TORIEL./"
	       global.msg[3]="* Hello^1, my child./"
	       global.msg[4]="\\E1* Sorry^1, I do not have&  much to say./"
	       global.msg[5]="\\E0* It was nice to hear&  your voice^1, though^1./"
	       global.msg[6]="\\TS \\F0 \\T0 %"
	       global.msg[7]="* Click.../%%"
	       }
	        break;
        
	case 1502:
	     global.msg[0]="* Dialing..\\E0.\\TT /"
	     global.msg[1]="\\F1 %"
	     global.msg[2]="* This is TORIEL./"
	     global.msg[3]="\\E1* Help with a puzzle^1.^1.^1.?/"
	     global.msg[4]="* Um^1, you have not&  left the room^1, have you?/"
	     global.msg[5]="\\E0* Wait patiently for&  me and we can solve&  it together!/"
	     global.msg[6]="\\TS \\F0 \\T0 %"
	     global.msg[7]="* Click.../%%"
	     break;

	case 1503: // about yourself
	     global.msg[0]="* Dialing..\\E0.\\TT /"
	     global.msg[1]="\\F1 %"
	     global.msg[2]="* This is TORIEL./"
	     global.msg[3]="\\E1* You want to know&  more about me?/"
	     global.msg[4]="* Well^1, I am afraid there&  is not much to say./"
	     global.msg[5]="\\E0* I am just a silly little&  lady who worries too&  much!/"
	     global.msg[6]="\\TS \\F0 \\T0 %"
	     global.msg[7]="* Click.../%%"
	     break;

	case 1504: // call her mom
	     global.flag[42]=1
	     global.msg[0]="* Dialing..\\E0.\\TT /"
	     global.msg[1]="\\F1 %"
	     global.msg[2]="* This is TORIEL./"
	     global.msg[3]="\\E8* Huh^2?&* Did you just call&  me... \"Mom\"?/"
	     global.msg[4]="\\E1* Well...&* I suppose.../"
	     global.msg[5]="* Would that make you&  happy?/"
	     global.msg[6]="* To call me..^2.&* \"Mother?\"/"
	     global.msg[7]="\\E0* Well then^1, call me&  whatever you like!/!"
	     global.msg[8]="\\TS \\F0 \\T0 %"
	     global.msg[9]="* Click.../%%"
	     break;
     
	case 1505: // flirt
	     if doak=0 then
	        {
	        doak=1
	        global.flag[41]+=1
	        }
	     if global.flag[41]=1 then
	     {
	     global.msg[0]="* Dialing..\\E0.\\TT /"
	     global.msg[1]="\\F1 %"
	     global.msg[2]="\\E8* ...^2 huh???/"
	     global.msg[3]="\\E1* Oh,^1 heh..^1 heh...^1 \\E0 &* Ha ha ha!/"
	     global.msg[4]="* How adorable...^1 I&  could pinch your cheek!/"
	     global.msg[5]="* You can certainly find&  better than an old woman&  like me./"
	     global.msg[6]="\\TS \\F0 \\T0 %"
	     global.msg[7]="* Click.../%%"
	     }
	     if global.flag[41]=2 then
	     {
	     global.msg[0]="* Dialing..\\E0.\\TT /"
	     global.msg[1]="\\F1 %"
	     global.msg[2]="\\E1* Oh dear,^1 are you&  serious...?/"
	     global.msg[3]="\\E1* I do not know if this is&  pathetic,^1 or endearing./"
	     global.msg[4]="\\TS \\F0 \\T0 %"
	     global.msg[5]="* Click.../%%"
	         if global.flag[42]=1 then
	                {
	                global.msg[3]="\\E8* And after you said you&  want to call&  me \"mother...\"/"
	                global.msg[4]="\\E0* You are an...^2 &  \\E1... \"interesting\"&  child./"
	                global.msg[5]="\\TS \\F0 \\T0 %"
	                global.msg[6]="* Click.../%%"
	                }
	     }
	     break;

	case 1506: // nobody's home
	     global.flag[42]=1
	     global.msg[0]="* Dialing... /"
	     global.msg[1]="* ... /"
	     global.msg[2]="* No one picked up.../%%"
	     break;

	case 1507:
	     global.faceemotion=99
	     global.msg[0]="* Dialing...\\TT /"
	     global.msg[1]="\\F1 %"
	     global.msg[2]="* Hey^1, you silly&  child./"
	     global.msg[3]="* If you want to&  talk to me^1, I am&  right here./"
	     global.msg[4]="\\TS \\F0 \\T0 %"
	     global.msg[5]="* Click.../%%"
	     break;




	// npc dialogue
	case 2001:
	     global.msg[0]="\\E2* Welcome to your new& home,^1 innocent one./"
	     global.msg[1]="* Allow me to educate you&  in the operation of&  the RUINS./%"
	     break;


	case 2002: // toriel flirt phone call
	     global.faceplate=1
	     global.msg[0]="\\E8* ...^2 huh???/"
	     global.msg[1]="\\E1* Oh,^1 heh..^1 heh...^1 \\E0 &* Ha ha ha!/"
	     global.msg[2]="* How adorable...^1 I&  could pinch your cheek!/"
	     global.msg[3]="* You can certainly find&  better than an old woman&  like me./%"
	     // "\E1* Oh dear,^1 are you&  serious...?/"
	     //// alt --> '\E8* And after you said you&  want to call me "mother..."/'
	     //// alt --> '\E0* You are an...^2& \E1... "interesting" child.'
	     // "\E0* I do not know if this is&  pathetic,^1 or endearing./%"
	     //
	     // "\E0*
	     // "
	     break;
     
	case 3002: //battle intro messages
	     global.msg[0]="* You encountered the Dummy."
	     global.msg[1]="%%%"     
	     break;

	case 3003: //froggit
	     global.msg[0]="* Froggit attacks you!"
	     global.msg[1]="%%%"     
	     break;
     
	case 3004: //froggit
	     global.msg[0]="* Froggit hopped close!"
	     global.msg[1]="%%%"     
	     break;

	case 3005: //whimsun
	     global.msg[0]="* Whimsun approached meekly!"
	     global.msg[1]="%%%"     
	     break;
     
	case 3006: //whimsun
	     global.msg[0]="* Froggit and Whimsun drew near!"
	     global.msg[1]="%%%"     
	     break;

	case 3007: //moldsmal
	     global.msg[0]="* Moldsmal blocked the way!"
	     global.msg[1]="%%%"     
	     break;     
               
	case 9999: // test line
	     i=0
	     fileid=file_text_open_read("testlines.txt")
	     while (file_text_eof(fileid))=false
	        {
	         global.msg[i]=file_text_read_string(fileid)
	         file_text_readln(fileid)
	         i+=1
	        }
	     file_text_close(fileid)
	     break;
         
     
     
     
     
     
     
     
     
     
     
     
     
	}



}
