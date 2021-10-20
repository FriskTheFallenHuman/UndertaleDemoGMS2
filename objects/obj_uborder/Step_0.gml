if x!=global.idealborder[0] then
{
if abs(x-global.idealborder[0]) <= 15 then x=global.idealborder[0]
else
 {
   if x>global.idealborder[0] then x-=15 else x+=15;
 }
}

if x = global.idealborder[0] or y < global.idealborder[2] then
if y!=global.idealborder[2] then
{
if abs(y-global.idealborder[2]) <= 15 then y=global.idealborder[2]
else
 {
   if y>global.idealborder[2] then y-=15 else y+=15;
 }
}



size = round((global.idealborder[1] - global.idealborder[0])/5)

if image_xscale != size then
   {
   if abs(size - image_xscale) <= 6 then image_xscale = size
   if image_xscale > size then image_xscale -= 6
   if image_xscale < size then image_xscale += 6
   }

