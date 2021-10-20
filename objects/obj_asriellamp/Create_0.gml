myinteract=0
read=0
image_xscale=1
image_yscale=1
if global.plot = 0 then instance_destroy()
idealvolume[0]=1
idealvolume[1]=0
curvol1=caster_get_volume(global.currentsong)
curvol2=caster_get_volume(global.currentsong2)
//caster_set_volume(global.currentsong,curvol1)
//caster_set_volume(global.currentsong2,curvol2)

