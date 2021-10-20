if global.turntimer > 0 then
{
depth = -1000
draw_set_color(c_red)
if global.debug=1 then draw_rectangle(300,100,300+(global.turntimer/2),110,false)
global.turntimer-=1
}
if instance_exists(obj_uborder) then
{
  depth=5
  draw_set_color(c_black)
  draw_rectangle((obj_uborder.x+5),(obj_uborder.y+5),obj_rborder.x, obj_dborder.y, false)
}
scr_binfowrite()

if global.bmenuno=1 and global.myfight=0 and global.mnfight=0 then
   {
     xwrite=1
     i=0
     while i<3
      {
      if global.monster[i]=1 then
         {
         ywrite=string_length(global.monstername[i])
         if ywrite>xwrite then xwrite=ywrite
         }  
         i+=1
      }
     xwrite=190+xwrite*16
     i=0
     while i<3
       {
       if global.monster[i]=1 then
         {
         
         draw_set_color(c_red)
         draw_rectangle(xwrite,280+i*32,xwrite+100,280+i*32+16,0)
         draw_set_color(c_lime)
         draw_rectangle(xwrite,280+i*32,xwrite+(global.monsterhp[i]/global.monstermaxhp[i])*100,280+i*32+16,0)
         }
     i+=1
       }
   }

