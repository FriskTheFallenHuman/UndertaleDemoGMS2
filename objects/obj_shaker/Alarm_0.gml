
if hshake != 0 then
{
  if hshake < 0 then
       {
       __view_set( e__VW.XView, myview, __view_get( e__VW.XView, myview ) + (hshake) )
       hshake += 1
       }
       
  if hshake > 0 then
       {
       __view_set( e__VW.XView, myview, __view_get( e__VW.XView, myview ) + (hshake) )
       }
       hshake = -hshake
}

if vshake != 0 then
{
  if vshake > 0 then
       {
       __view_set( e__VW.YView, myview, __view_get( e__VW.YView, myview ) + (vshake) )
       }
  if vshake < 0 then
       {
       __view_set( e__VW.YView, myview, __view_get( e__VW.YView, myview ) + (vshake) )
       vshake += 1
       }
       vshake = -vshake
}
alarm[myview] = shakespeed

if hshake = 0 and vshake = 0 then instance_destroy()

