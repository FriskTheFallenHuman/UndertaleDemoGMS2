if conversation=0 and (obj_mainchara.x>140 or obj_mainchara.y<170) then
 {
global.msc=204
global.typer=4
global.interact=1
global.facechoice=1
instance_create(0,0,obj_dialoguer)
conversation=1
 }


if conversation=1 and instance_exists(obj_dialoguer)=false then
   {
   global.interact=0
   conversation=2
   with obj_toroverworld4 path_start(path_torielwalk3,3,0,true)
   }

if instance_exists(obj_toroverworld4)
if conversation=2 and obj_toroverworld4.path_position=1 then
   {
   conversation=2.5
   with obj_toroverworld4 path_end()
   if global.plot<4 then
     {
     global.plot=4
     instance_create(obj_toroverworld4.x,obj_toroverworld4.y,obj_torinteractable1)
     with obj_toroverworld4 instance_destroy()
     }
   }

if conversation=2.5 and global.plot=4.5 then
   {
   conversation=3
   if instance_exists(obj_torinteractable1)
     {
     instance_create(obj_torinteractable1.x,obj_torinteractable1.y,obj_toroverworld4)
     with obj_torinteractable1 instance_destroy()
     }
   with obj_toroverworld4 path_start(path_torielwalk3_2,3,0,true)
   }

if instance_exists(obj_toroverworld4)
if conversation=3 and obj_toroverworld4.path_position=1 then
   {
   conversation=4
   with obj_toroverworld4 path_end()
   instance_create(obj_toroverworld4.x,obj_toroverworld4.y,obj_torinteractable2)
   with obj_toroverworld4 instance_destroy()
   }
   
if conversation=4 and global.plot=5 and instance_exists(obj_shaker)=false then
   {
   if instance_exists(obj_torinteractable2)
     {
     instance_create(obj_torinteractable2.x,obj_torinteractable2.y,obj_toroverworld4)
     with obj_torinteractable2 instance_destroy()
     with obj_toroverworld4 facing=3
     with obj_toroverworld4 sprite_index=lsprite
     }
   global.msc=210
   global.typer=4
   global.interact=1
   global.facechoice=1
   instance_create(0,0,obj_dialoguer)
   conversation=5
   }

if conversation=5 and instance_exists(obj_dialoguer)=false then
   {

   conversation=6
   global.interact=0
   with obj_toroverworld4 path_start(path_walkright,3,0,false)
   instance_destroy()
   }

