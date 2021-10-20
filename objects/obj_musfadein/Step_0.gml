volume+=0.04
if volume>0.95 then volume=1
caster_set_volume(mysong,volume)
if volume=1 then instance_destroy()

