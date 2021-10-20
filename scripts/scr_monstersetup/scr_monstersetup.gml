function scr_monstersetup() {
	//determine our ID based on who else is around. we're alive

	myself = 0

	if global.monster[1] = 1 then
	   {
	   myself = 2
	   global.monster[2] = 1
	  }

	if global.monster[0] = 1 and myself != 2 then
	   {
	   myself = 1
	   global.monster[1] = 1
	   }
   
	if global.monster[0] = 0 then
	   {
	   myself = 0
	   global.monster[0] = 1
	   }

	if global.monstertype[myself] = 1 then
	   {
	   global.monstername[myself]="TestFroggit"
	   global.monstermaxhp[myself]=23
	   global.monsterhp[myself]=23
	   global.monsteratk[myself]=4
	   global.monsterdef[myself]=1
	   global.xpreward[myself] = 2
	   global.goldreward[myself] = 2
	   global.itemrewardid = 1
	   global.itemrewardchance = 50
	   }

	if global.monstertype[myself] = 2 then
	   {
	   global.monstername[myself]="Dummy"
	   global.monstermaxhp[myself]=15
	   global.monsterhp[myself]=15
	   global.monsteratk[myself]=0
	   global.monsterdef[myself]=-5
	   global.xpreward[myself] = 0
	   global.goldreward[myself] = 0
	   global.itemrewardid = 0
	   global.itemrewardchance = 0
	   }
	if global.monstertype[myself] = 3 then
	   {
	   global.monstername[myself]="Froggit"
	   global.monstermaxhp[myself]=23
	   global.monsterhp[myself]=23
	   global.monsteratk[myself]=4
	   global.monsterdef[myself]=1
	   global.xpreward[myself] = 10
	   global.goldreward[myself] = 20
	   global.itemrewardid = 1
	   global.itemrewardchance = 50
	   }
   
	if global.monstertype[myself] = 4 then
	   {
	   global.monstername[myself]="Froggit"
	   global.monstermaxhp[myself]=30
	   global.monsterhp[myself]=30
	   global.monsteratk[myself]=4
	   global.monsterdef[myself]=4
	   global.xpreward[myself] = 3
	   global.goldreward[myself] = 2
	   global.itemrewardid = 1
	   global.itemrewardchance = 50
	   }
   
   
	if global.monstertype[myself] = 5 then
	   {
	   global.monstername[myself]="Whimsun"
	   global.monstermaxhp[myself]=10
	   global.monsterhp[myself]=10
	   global.monsteratk[myself]=4
	   global.monsterdef[myself]=0
	   global.xpreward[myself] = 2
	   global.goldreward[myself] = 2
	   global.itemrewardid = 1
	   global.itemrewardchance = 50
	   }
   
	if global.monstertype[myself] = 6 then
	   {
	   global.monstername[myself]="Moldsmal"
	   global.monstermaxhp[myself]=50
	   global.monsterhp[myself]=50
	   global.monsteratk[myself]=4
	   global.monsterdef[myself]=0
	   global.xpreward[myself] = 3
	   global.goldreward[myself] = 3
	   global.itemrewardid = 1
	   global.itemrewardchance = 50
	   }

	if global.monstertype[myself] = 7 then
	   {
	   global.monstername[myself]="Migosp"
	   global.monstermaxhp[myself]=40
	   global.monsterhp[myself]=40
	   global.monsteratk[myself]=5
	   global.monsterdef[myself]=4
	   global.xpreward[myself] = 5
	   global.goldreward[myself] = 4
	   global.itemrewardid = 1
	   global.itemrewardchance = 50
	   }

   
	if global.monstertype[myself] = 8 then
	   {
	   global.monstername[myself]="Vegetoid"
	   global.monstermaxhp[myself]=72
	   global.monsterhp[myself]=72
	   global.monsteratk[myself]=5
	   global.monsterdef[myself]=0
	   global.xpreward[myself] = 6
	   global.goldreward[myself] = 1
	   global.itemrewardid = 1
	   global.itemrewardchance = 50
	   }   

	if global.monstertype[myself] = 9 then
	   {
	   global.monstername[myself]="Loox"
	   global.monstermaxhp[myself]=50
	   global.monsterhp[myself]=50
	   global.monsteratk[myself]=5
	   global.monsterdef[myself]=4
	   global.xpreward[myself] = 7
	   global.goldreward[myself] = 5
	   global.itemrewardid = 1
	   global.itemrewardchance = 50
	   }
   
	if global.monstertype[myself] = 10 then
	   {
	   global.monstername[myself]="Toriel"
	   global.monstermaxhp[myself]=440
	   global.monsterhp[myself]=440
	   global.monsteratk[myself]=6
	   global.monsterdef[myself]=2
	   if global.flag[202]>11 and global.flag[203]>11 then global.monsterdef[myself]=-9999
	   global.xpreward[myself] = 0
	   global.goldreward[myself] = 0
	   global.itemrewardid = 0
	   global.itemrewardchance = 0
	   }

   
	if global.monstertype[myself] = 11 then
	   {
	   global.monstername[myself]="Napstablook"
	   global.monstermaxhp[myself]=88
	   global.monsterhp[myself]=88
	   global.monsteratk[myself]=5
	   global.monsterdef[myself]=4
	   global.xpreward[myself] = -1
	   global.goldreward[myself] = 0
	   global.itemrewardid = 0
	   global.itemrewardchance = 0
	   }
   
	if global.monstertype[myself] = 13 then //Doge B
	   {
	   global.monstername[myself]="Doge"
	   global.monstermaxhp[myself]=62
	   global.monsterhp[myself]=62
	   global.monsteratk[myself]=7
	   global.monsterdef[myself]=5
	   global.xpreward[myself] =30
	   global.goldreward[myself] =9
	   global.itemrewardid = 0
	   global.itemrewardchance = 0
	   }



}
