if caster_get_volume(global.currentsong) > idealvolume[0] then
 {
 curvol1-=0.050
 caster_set_volume(global.currentsong,curvol1)
 }
if caster_get_volume(global.currentsong) < idealvolume[0] then
 {
 curvol1+=0.050
 caster_set_volume(global.currentsong,curvol1)
 }
if caster_get_volume(global.currentsong2) > idealvolume[1] then
 {
 curvol2-=0.050
 caster_set_volume(global.currentsong2,curvol2)
 }
if caster_get_volume(global.currentsong2) < idealvolume[1] then
 {
 curvol2+=0.050
 caster_set_volume(global.currentsong2,curvol2)
 }
 
if curvol1<0 then curvol1=0.051
if curvol2<0 then curvol2=0.051

