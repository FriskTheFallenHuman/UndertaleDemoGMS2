// Choose what sprite we should use based on our direction
switch(global.facing)
{
	case 0:
		sprite_index = dsprite;
	break;
	case 1:
		sprite_index = rsprite;
	break;
	case 2:
		sprite_index = usprite;
	break;
	case 3:
		sprite_index = lsprite;
	break;
};

if (collision_point((bbox_left - 3), (bbox_top - 3), obj_solidparent, 0, 1) == noone)
    crumpet = 1
else
    crumpet = 2

strumpet = bbox_top
trumpet = bbox_left

if (global.inbattle == 1)
{
    if (global.flag[15] == 0)
    {
        instance_create(0, 0, obj_musfadein)
        caster_resume(global.currentsong)
    }
    room_persistent = false
    global.inbattle = 0
    if (global.specialbattle == 0)
        global.interact = 0
    depth = 100
    if (global.flag[200] != 0)
    {
        if (global.flag[201] != global.kills)
            global.flag[global.flag[200]] += (global.kills - global.flag[201])
    }
}

if (obj_time.left)
{
    if (movement == 1)
    {
        turned = 1
        if (xprevious == (x + 3))
            x -= 2
        else
            x -= 3
        if (moving != true)
            image_index = 1
        moving = true
        if (global.debug == true)
        {
            if keyboard_check(vk_backspace)
                x -= 5
        }
        image_speed = 0.2
        if (obj_time.up && global.facing == 2)
            turned = 0
        if (obj_time.down && global.facing == 0)
            turned = 0
        if (turned == 1)
            global.facing = 3
    }
}

if (obj_time.up)
{
    if (movement == 1)
    {
        turned = 1
        y -= 3
        if (global.debug == true)
        {
            if keyboard_check(vk_backspace)
                y -= 5
        }
        if (moving != true)
            image_index = 1
        moving = true
        image_speed = 0.2
        if (obj_time.right && global.facing == 1)
            turned = 0
        if (obj_time.left && global.facing == 3)
            turned = 0
        if (turned == 1)
            global.facing = 2
    }
}

if (obj_time.right)
{
    if (movement == 1)
    {
        if (obj_time.left == 0)
        {
            turned = 1
            if (xprevious == (x - 3))
                x += 2
            else
                x += 3
            if (global.debug == true)
            {
                if keyboard_check(vk_backspace)
                    x += 5
            }
            moving = true
            image_speed = 0.2
            if (moving != true)
                image_index = 1
            if (obj_time.up && global.facing == 2)
                turned = 0
            if (obj_time.down && global.facing == 0)
                turned = 0
            if (turned == 1)
                global.facing = 1
        }
    }
}

if (obj_time.down)
{
    if (movement == 1)
    {
        if (obj_time.up == 0)
        {
            turned = 1
            y += 3
            if (global.debug == true)
            {
                if keyboard_check(vk_backspace)
                    y += 5
            }
            if (moving != true)
                image_index = 1
            moving = true
            image_speed = 0.2
            if (obj_time.right && global.facing == 1)
                turned = 0
            if (obj_time.left && global.facing == 3)
                turned = 0
            if (turned == 1)
                global.facing = 0
        }
    }
}

if (keyboard_multicheck_pressed(0)) //control_check_pressed(0)
    event_user(0)

if (keyboard_multicheck_pressed(2)) //control_check_pressed(2)
    event_user(2)

with (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_doorparent, 0, 0))
    event_user(9)

if (instance_exists(obj_battler) == 0)
{
    scr_depth()
    /*if (global.flag[85] == 1 && dsprite == spr_maincharad_umbrella)
        depth = (50000 - ((y * 10) + 300))*/
}