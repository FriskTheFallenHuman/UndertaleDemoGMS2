if global.encounter>steps then
if global.interact=0
   {
   scr_steps(120,100,monsterpopulation1,202)
   //scr_steps(10,1,10,203)
   global.encounter=0
   battlegroup=random(20)
   if battlegroup<=4 then global.battlegroup=11
   if battlegroup>4 then global.battlegroup=12
   if battlegroup>8 then global.battlegroup=13
   if battlegroup>12 then global.battlegroup=16
   if battlegroup>16 then global.battlegroup=17
   if battlegroup>19 then global.battlegroup=15
   if alldead=2 then global.battlegroup=19
   if alldead=1 then
      {
      global.battlegroup=19
      alldead=2
      }
   else
   instance_create(0,0,obj_battleblcon)
   }

