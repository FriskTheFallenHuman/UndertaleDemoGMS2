if (global.interact == 0 && global.flag[17] == 0)
{
    sound_play(snd_squeak)
    global.interact = 5
    global.menuno = 0
    //control_clear(2)
	keyboard_clear(vk_control)
}
