script_execute(scr_depth,0,0,0,0,0);
if talkedto=1 and global.choice=0 and instance_exists(obj_dialoguer)=false then
   {
   global.battlegroup=20
   global.flag[200]=0
   global.mercy=1
   instance_create(0,0,obj_battler)
   talkedto=0
   }

if global.plot=10.3 then
   {
   alarm[4]=2
   global.plot=10.35
   }

if global.plot=10.4 and instance_exists(obj_dialoguer)=false then
   {
   image_alpha-=0.05
   if image_alpha<0.10 then
       {
       global.plot=11
       global.interact=0
       instance_destroy()
       }
       
   }
   
if global.plot=11 then
  {
  global.mercy=0
  instance_destroy()
  }

