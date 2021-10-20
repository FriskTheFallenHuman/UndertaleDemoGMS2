volume-=fadespeed
if volume<0.05 then volume=0
caster_set_volume(mysong,volume)
if volume=0 then 
{
caster_stop(mysong)
caster_free(mysong)
instance_destroy()
}

