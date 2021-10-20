if global.encounter>steps then
if global.interact=0
   {
   scr_steps(130,80,monsterpopulation1,202)
   global.encounter=0
   battlegroup=random(2)
   if battlegroup<=1 then global.battlegroup=4
   if battlegroup>1 then global.battlegroup=5
   if alldead=2 then global.battlegroup=19
   if alldead=1 then
      {
      global.battlegroup=19
      alldead=2
      }
   else
   instance_create(0,0,obj_battleblcon)
   }

