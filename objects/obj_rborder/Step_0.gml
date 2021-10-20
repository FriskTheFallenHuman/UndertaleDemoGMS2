if x!=global.idealborder[1] then
{
if abs(x-global.idealborder[1]) <= 15 then x=global.idealborder[1]
else
 {
   if x>global.idealborder[1] then x-=15 else x+=15;
 }
}

if y!=global.idealborder[3] then
{
if abs(y-global.idealborder[3]) <= 15 then y=global.idealborder[3]
else
 {
   if y>global.idealborder[3] then y-=15 else y+=15;
 }
}



size = ceil((global.idealborder[2] - global.idealborder[3])/5)

if x = global.idealborder[1] or global.idealborder[2] > (y + image_yscale*5) then
if image_yscale != size then
   {
   if abs(size - image_yscale) <= 3 then image_yscale = size
   if image_yscale > size then image_yscale -= 3
   if image_yscale < size then image_yscale += 3
   }

