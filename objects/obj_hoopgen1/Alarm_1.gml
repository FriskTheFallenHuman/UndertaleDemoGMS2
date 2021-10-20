if ( instance_exists( iii ) )
{
	iii=instance_create(x,y,blt_hoopbullet1)
	iii.dmg= global.monsteratk[myself]
	iii.bullettype=1
}