//gravity -=gravitywave*0.02
//if abs(gravity)>1 then gravitywave=-gravitywave
//hspeed=cos(obj_time.time/30)*4
//hspeed=sin(obj_time.time/12)*5
//if r=1 then hspeed=sin(obj_time.time/10)*4.5
//if r=0 then hspeed=-sin(obj_time.time/10)*4.5
hspeed=sin(obj_time.time/10)*4
if r=0 then hspeed=-sin(obj_time.time/10)*4
h+=1

