myx=global.monsterinstance[myself].x
myy=global.monsterinstance[myself].y
blt1=instance_create(myx+26*2,myy+24*2,blt_crybullet)
blt2=instance_create(myx+41*2,myy+29*2,blt_crybullet)
blt1.dmg=dmg
blt2.dmg=dmg
alarm[0]=global.firingrate

