if global.encounter>steps then
if global.phasing=0
   {
if global.interact=0
   {
   scr_steps(140,210,monsterpopulation1,202)
   global.encounter=0
   battlegroup=random(15)
     if battlegroup<=2 then global.battlegroup=18
   if battlegroup>2 then global.battlegroup=11
   if battlegroup>9 then global.battlegroup=13
   if alldead=2 then global.battlegroup=19
   if alldead=1 then
      {
      global.battlegroup=19
      alldead=2
      }
   else
   instance_create(0,0,obj_battleblcon)
   }
   }
   else steps=0

