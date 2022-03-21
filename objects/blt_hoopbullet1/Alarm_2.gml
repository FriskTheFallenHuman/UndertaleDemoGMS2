if (sterile == 0)
{
    iii = instance_create(xstart, ystart, blt_hoopbullet1)
	with(iii)
	{
	    dmg = other.dmg
	    bullettype = 1
	    gravity = other.gravitystart
	    gravity_direction = gravity_direction
	    sterile = 1
	}
}