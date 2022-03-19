/// @description Draw our overlay
display_set_gui_size(-1, -1)

var draw_color = c_white
var texty = 10
var filtered = gpu_get_texfilter()

if (global.debug == true && overlay)
{
    gpu_set_texfilter(false)
    draw_set_alpha(1)
    draw_set_font(fnt_maintext)
    draw_set_color(draw_color)
    if instance_exists(obj_time)
    {
        with (obj_time)
            draw_text(10, texty, string_hash_to_newline(round((time / 30))))
    }
    ms = (delta_time / 1000)
    fps_var = (1 / (ms / 1000))
    draw_set_color(c_lime)
    if (fps < 25)
        draw_set_color(c_yellow)
    if (fps < 20)
        draw_set_color(c_red)
    draw_text(50, texty, ((((("FPS: " + string(fps)) + " (") + string(round(fps_var))) + ") Max: ") + string(room_speed)))
    draw_set_color(draw_color)
    texty += 20
    draw_text(10, texty, ((((((room_get_name(room) + " (") + room_get_name(global.currentroom)) + ") - ") + string(room)) + " ") + string(global.currentroom)))
    if instance_exists(obj_mainchara)
    {
        with (obj_mainchara)
        {
            texty += 20
            draw_text(10, texty, (((((((("(" + string(x)) + ", ") + string(y)) + ")") + " (") + string(depth)) + ") E:") + string(global.entrance)))
        }
    }
    var interact_val = "UNKNOWN"
    switch global.interact
    {
        case -1:
            interact_val = "Paused"
            break
        case 0:
            interact_val = "Free Movement"
            break
        case 1:
            interact_val = "Movement Locked"
            break
        case 2:
            interact_val = "Toriel Post-Battle"
            break
        case 3:
            if (instance_exists(obj_battleblcon) || instance_exists(obj_battler) || instance_exists(obj_battlerflowey) || room == room_battle || room == room_floweybattle)
                interact_val = "Battle"
            else
                interact_val = "Room Transition"
            break
        case 4:
            interact_val = "Falling"
            break
        case 5:
            interact_val = "Menu Open"
            break
        case 6:
            interact_val = "Toriel Spike Bridge"
            break
        case 99:
            interact_val = "Toriel Event"
            break
    }

    if (global.interact == 0)
        draw_set_color(c_green)
    else
        draw_set_color(c_yellow)
    texty += 20
    draw_text(10, texty, (((("Interact: " + interact_val) + " (") + string(global.interact)) + ")"))
    menu_state = "Enabled"
    draw_set_color(c_green)
    if (global.flag[17] != 0)
    {
        menu_state = "Disabled"
        draw_set_color(c_red)
    }
    else if (!instance_exists(obj_overworldcontroller))
    {
        menu_state = "Unavailable"
        draw_set_color(c_red)
    }
    else if (global.interact == 5)
        menu_state = "Open"
    else if (global.interact > 0)
    {
        menu_state = "Disabled via Interaction"
        draw_set_color(c_yellow)
    }
    texty += 20
    draw_text(10, texty, (((("Menu " + menu_state) + " (") + string(global.flag[17])) + ")"))
    draw_set_color(draw_color)
    texty += 20
    txt = ((((("Story Plot: " + string(global.plot)) + " ") + "Flags: ") + string(global.flag[5])) + " ")
    draw_text(10, texty, txt)
    if (global.flag[498] == 1)
        draw_set_color(c_red)
    texty += 20
    draw_text(10, texty, ("Murder Level: " + string(murdererlv1())))
    draw_set_color(draw_color)
    texty += 20
    draw_set_color(c_green)
    draw_set_color(draw_color)
    if instance_exists(obj_encountererparent)
    {
        texty += 20
        with (obj_encountererparent)
        {
            kill_ptr = global.flag[200]
            kill_counter = global.flag[kill_ptr]
            kill_max = -1
            switch kill_ptr
            {
                case 202:
                    kill_max = 20
                    break
                case 203:
                    kill_max = 16
                    break
                case 204:
                    kill_max = 18
                    break
                case 205:
                    kill_max = 40
                    break
            }

            draw_set_color(make_color_hsv(max(0, (127 * ((kill_max - kill_counter) / kill_max))), 255, 255))
            text = (((((((string(global.encounter) + "/") + string(steps)) + " (") + object_get_name(object_index)) + ", ") + string(battlegroup)) + ")")
            if (kill_counter >= kill_max && kill_max > -1)
                text = "But nobody came"
            draw_text(10, texty, ((((text + " - ") + string(kill_counter)) + "/") + string(kill_max)))
            texty += 20
        }
        draw_set_color(draw_color)
    }
    draw_text(10, texty, ("Battlegroup: " + string(global.battlegroup)))
    draw_set_color(c_lime)
    texty += 20
    draw_text(10, texty, ("Instance Count: " + string(instance_number(all))))
    texty += 20
    draw_text(10, texty, (((("Mouse X, Y: (" + string(mouse_x)) + ", ") + string(mouse_y)) + ")"))
    draw_set_colour(c_white)
    texty += 20
    draw_text(10, texty, ((("ViewPos: " + string(__view_get(0, 0))) + ", ") + string(__view_get(1, 0))))
    texty += 20
    draw_text(10, texty, ("Current Background Music: " + string(global.currentsong)))
    if variable_global_exists("currentsong2")
    {
        texty += 20
        draw_text(10, texty, ("Current Background 2 Music: " + string(global.currentsong2)))
    }
    if instance_exists(obj_battlecontroller)
    {
        draw_set_halign(fa_right)
        var battexty = 10
        draw_text((room_width - 10), battexty, ("Battle Music: " + string(global.batmusic)))
        battexty += 20
        draw_text((room_width - 10), battexty, ("Turn Timer: " + string(global.turntimer)))
        battexty += 20
        draw_text((room_width - 10), battexty, ("Monster Fight: " + string(global.mnfight)))
        battexty += 20
        draw_text((room_width - 10), battexty, ("Player Fight: " + string(global.myfight)))
        draw_set_halign(fa_left)
    }
    gpu_set_texfilter(filtered)
}
if (global.debug == true && (!overlay))
{
    gpu_set_texfilter(false)
    draw_set_font(fnt_main)
    draw_set_halign(fa_center)
    draw_text_colour((display_get_gui_width() / 2), 25, "> DEBUG MODE <", c_red, c_red, c_white, c_white, 1)
    draw_set_halign(fa_left)
    gpu_set_texfilter(filtered)
}
if (global.debug && keyboard_check_pressed(vk_tab))
    overlay = (!overlay)
