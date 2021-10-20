if dingus=1 and instance_exists(OBJ_WRITER)=false then
  {
  dingus=2
  unfader=instance_create(0,0,obj_unfader)
  unfader.tspeed=0.03
  alarm[4]=60
  }

