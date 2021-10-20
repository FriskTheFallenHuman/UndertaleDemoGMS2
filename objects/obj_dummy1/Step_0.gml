if myinteract=1 and global.plot<6 then
   {
   global.flag[10]=0 //spared in previous battle
   global.flag[11]=0 //ran away from previous battle
   global.flag[12]=0 //fought last battle
   global.flag[13]=0 //OTHER
   global.entrance=0
   global.battlegroup=2
   obj_mainchara.depth=-600
   if instance_exists(obj_battler) = false then instance_create(0,0,obj_battler)
   global.plot=6
   myinteract=0
   }
scr_depth()

