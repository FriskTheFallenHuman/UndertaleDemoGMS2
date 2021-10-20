myx=global.monsterinstance[myself].x
myy=global.monsterinstance[myself].y
blt1=instance_create(myx+26*2,myy+24*2,blt_crybullet2)
blt2=instance_create(myx+41*2,myy+29*2,blt_crybullet2)
blt1.dmg=0
blt2.dmg=0
alarm[0]=global.firingrate

