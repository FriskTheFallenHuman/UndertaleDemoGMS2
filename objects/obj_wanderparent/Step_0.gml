script_execute(scr_depth,0,0,0,0,0);
if global.interact < 1 then
  {
    if halt = 1 then 
      {
      speed = memoryspeed
      image_speed=memoryispeed
      }
    movementalarm[0] -= 1
    movementalarm[1] -= 1
    
    if movementalarm[0] = 0 then
    {
    i = round(random(3))
    direction = i*90
    speed = 2
    stopped = 0
    image_index=1
    image_speed=0.2
    movementalarm[1] = 10 + round(random(10))
    scr_npcdir(0) // TODO: ??
    }

    if movementalarm[1] = 0 then
    {
    image_speed=0
    image_index=0
    speed = 0
    halt = 0
    stopped = 1
    movementalarm[0] = 30 + round(random(20))
    }

  }
else
    {
    if stopped = 0 then
       {
       memoryispeed=image_speed
       memoryspeed =speed
       if myinteract=0 then image_speed=0
       speed = 0
       stopped = 1
       halt = 1
       }
    }
    
if myinteract = 1 then
   {
   global.interact=1
   image_speed=0.2
   scr_npcdir(0) // TODO: ??
   alarm[0]=1
   myinteract=2
   }

if myinteract = 3 then
   {
   if instance_exists(mydialoguer) = false then 
     {
     global.interact = 0
     myinteract = 0
     image_speed=memoryispeed
     scr_npcdir(0) // TODO: ??
     }
   }

