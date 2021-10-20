script_execute(scr_depth,0,0,0,0,0);
oldx=x
oldy=y
image_speed = 0
global.phasing=0
facing = global.facing
moving = 0
movement = 1
global.currentroom=room
if global.interact = 3 then
   {
   if global.entrance > 0 then
       {
       global.interact=0
      // instance_create(obj_fader,0,0)
       if global.entrance=1 then
          {
          x=obj_markerA.x
          y=obj_markerA.y
          }
       if global.entrance=2 then
          {
          x=obj_markerB.x
          y=obj_markerB.y
          }
        if global.entrance=4 then
          {
          x=obj_markerC.x
          y=obj_markerC.y
          }
        if global.entrance=5 then
          {
          x=obj_markerD.x
          y=obj_markerD.y
          }
        if global.entrance=24 then
          {
          x=obj_markerX.x
          y=obj_markerX.y
          }
       }
   }

