if global.encounter>steps then
if global.interact=0
   {
   scr_steps(130,100,monsterpopulation1,202)
   global.encounter=0
   battlegroup=random(20)
   if battlegroup<=5 then global.battlegroup=6
   if battlegroup>5 then global.battlegroup=7
   if battlegroup>10 then global.battlegroup=8
   if battlegroup>15 then global.battlegroup=9
   if battlegroup>18 then global.battlegroup=10
   if alldead=2 then global.battlegroup=19
   if alldead=1 then
      {
      global.battlegroup=19
      alldead=2
      }
   else
   instance_create(0,0,obj_battleblcon)
   }

