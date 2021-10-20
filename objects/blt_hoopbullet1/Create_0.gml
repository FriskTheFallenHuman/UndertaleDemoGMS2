dmg=0
bullettype=0
if x<global.idealborder[0]+20 then hspeed=2
else hspeed=-2
//gravity=random(0.04)-0.02   ASTIGMATISM
gravitystart=0.1+random(0.2)
gravity=gravitystart
gravitywave=1
r=round(random(1))
if r=0 then gravity_direction=270
if r=1 then gravity_direction=90
alarm[0]=10
alarm[1]=1
alarm[2]=4
alarm[3]=8
sterile=0
if y>global.idealborder[3]-20 then y-=20
if y<global.idealborder[2]+20 then y+=20

