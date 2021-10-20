if global.weapon=3 then instance_create(x-16,y,obj_targetchoice)
if global.weapon=13 then
  {
  r=round(random(1))
  if r=0 then instance_create(x-16,y,obj_targetchoice)
  if r=1 then instance_create(x+570,y,obj_targetchoice)
  }

