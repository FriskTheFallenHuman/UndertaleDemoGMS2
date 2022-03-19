if (global.interact == 0 && uncan == 0)
{
    //if (!instance_exists(obj_itemswapper))
    {
        if (global.facing == 1)
        {
            if collision_rectangle((x + (sprite_width / 2)), (y + 19), ((x + sprite_width) + 15), (y + sprite_height), obj_interactable, 0, 1)
            {
                interactedobject = collision_rectangle((x + (sprite_width / 2)), (y + (sprite_height / 2)), ((x + sprite_width) + 15), (y + sprite_height), obj_interactable, 0, 1)
                if (interactedobject != noone)
                {
                    with (interactedobject)
                        facing = 3
                    with (interactedobject)
                        scr_interact()
                }
            }
        }

        if (global.facing == 3)
        {
            if collision_rectangle((x + (sprite_width / 2)), (y + 19), (x - 15), (y + sprite_height), obj_interactable, 0, 1)
            {
                interactedobject = collision_rectangle((x + (sprite_width / 2)), ((y + 3) + (sprite_height / 2)), (x - 15), ((y + sprite_height) + 3), obj_interactable, 0, 1)
                if (interactedobject != noone)
                {
                    with (interactedobject)
                        facing = 1
                    with (interactedobject)
                        scr_interact()
                }
            }
        }

        if (global.facing == 0)
        {
            if collision_rectangle((x + 4), (y + 20), ((x + sprite_width) - 4), ((y + sprite_height) + 15), obj_interactable, 0, 1)
            {
                interactedobject = collision_rectangle((x + 4), (y + 20), ((x + sprite_width) - 4), ((y + sprite_height) + 15), obj_interactable, 0, 1)
                if (interactedobject != noone)
                {
                    with (interactedobject)
                        facing = 2
                    with (interactedobject)
                        scr_interact()
                }
            }
        }

        if (global.facing == 2)
        {
            if collision_rectangle((x + 4), ((y + sprite_height) - 5), ((x + sprite_width) - 4), (y + 5), obj_interactable, 0, 1)
            {
                interactedobject = collision_rectangle((x + 4), ((y + sprite_height) - 5), ((x + sprite_width) - 4), (y + 8), obj_interactable, 0, 1)
                if (interactedobject != noone)
                {
                    with (interactedobject)
                        facing = 0
                    with (interactedobject)
                        scr_interact()
                }
            }
        }
    }
}