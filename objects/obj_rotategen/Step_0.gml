while (angle < 360)
{
    iii = instance_create(x, y, bullettype)
    with(iii)
    {
        angleadd = other.angleadd
        angle = other.angle
        dmg = global.monsteratk[other.myself]
    }
    x += lengthdir_x(radius, angle)
    y += lengthdir_y(radius, angle)
    angle += angleadd
}
instance_destroy()