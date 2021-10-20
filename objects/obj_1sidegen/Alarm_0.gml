//SCR_DIRECT(3, 1, 10, 0.5, 270, 0.1, 90, 6, 8, spr_dirbullet)
//SCR_DIRECT(0, 0, 60, 0.4, 270, 0, 90, 6, 18, spr_dirbullet)
SCR_BORDER(0,6)
x = xx
y = yy
if bullettype=0 then SCR_DIRECT(2.5, 0.2, 0, 0, 0, 0, 0, 0, 0, spr_bulletsm)
if bullettype=1 then 
   {
   iii=instance_create(x,y,blt_flybullet)
   iii.dmg = global.monsteratk[myself]
   }
if bullettype=2 then
   {
   iii=instance_create(x,y,blt_splinterbig)
   iii.dmg= global.monsteratk[myself]
   }
if bullettype=3 then
   {
   iii=instance_create(x,y,blt_pollendrop)
   iii.dmg= global.monsteratk[myself]
   }
if bullettype=4 then
   {
   iii=instance_create(global.idealborder[0],global.idealborder[2]+round(random(global.idealborder[3]-global.idealborder[2]-60))+30,blt_roachbullet)
   iii.dmg= global.monsteratk[myself]
   iii=instance_create(global.idealborder[1]-4,global.idealborder[2]+round(random(global.idealborder[3]-global.idealborder[2]-60))+30,blt_roachbullet)
   iii.dmg= global.monsteratk[myself]
   }
if bullettype=5 then
   {
   SCR_BORDER(0,40)
   x-=20
   y+=5
   iii=instance_create(x,y,blt_vegbullet)
   iii.dmg= global.monsteratk[myself]
   }
if bullettype=6 then
   {
   SCR_BORDER(0,40)
   x-=20
   y+=5
   iii=instance_create(x,y,blt_gravbullet)
   iii.dmg= global.monsteratk[myself]
   }
if bullettype=7 then
   {
   x=(global.idealborder[0]+(global.idealborder[1]-global.idealborder[0])/2)-3
   y=global.idealborder[2]-25
   iii=instance_create(x,y,blt_firehelix1)
   iii.dmg= global.monsteratk[myself]
   if global.hp<8 then iii.dmg=2
   if global.hp<6 then iii.dmg=1
   if global.hp<=2 then global.turntimer=-100
   }   
if bullettype=8 then
   {
   x=(global.idealborder[0]+(global.idealborder[1]-global.idealborder[0])/2)-3
   y=global.idealborder[2]+5
   iii=instance_create(x,y,blt_minihelix)
   iii.dmg= global.monsteratk[myself]
   if global.hp<8 then iii.dmg=2
   if global.hp<6 then iii.dmg=1
   if global.hp<=2 then global.turntimer=-100
   }   
if bullettype=9 then
   {
   SCR_BORDER(0,80)
   x-=40
   y-=20
   iii=instance_create(x,y,blt_avoidfire)
   iii.dmg=1
   }
if bullettype=10 then
   {
   x=(global.idealborder[0]+(global.idealborder[1]-global.idealborder[0])/2)-3
   y=global.idealborder[2]-25
   iii=instance_create(x,y,blt_firehelix1)
   iii.dmg= global.monsteratk[myself]
   if global.hp<8 then iii.dmg=2
   if global.hp<6 then iii.dmg=1
   if global.hp<=2 then global.turntimer=-100
   x=global.idealborder[0]+2
   y=global.idealborder[2]+90
   iiii=instance_create(x,y,blt_floatfire)
   iiii.dmg= global.monsteratk[myself]
   if global.hp<8 then iiii.dmg=2
   if global.hp<6 then iiii.dmg=1
   x=global.idealborder[1]-18
   iiiii=instance_create(x,y,blt_floatfire)
   iiiii.dmg= global.monsteratk[myself]
   if global.hp<8 then iiiii.dmg=2
   if global.hp<6 then iiiii.dmg=1
   }   
      
alarm[0]=firingspeed

