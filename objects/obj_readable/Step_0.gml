if myinteract = 1 then
   {
   global.interact=1
   alarm[0]=1
   myinteract=2
   }
   
if myinteract = 3 then
   {
   if instance_exists(mydialoguer) = false then 
     {
     global.interact = 0
     myinteract = 0
     }
   }

