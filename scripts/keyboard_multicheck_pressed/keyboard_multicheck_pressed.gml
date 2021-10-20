function keyboard_multicheck_pressed(argument0) {
	if argument0=0 or argument0=vk_enter
	if keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("z")) return true
	if argument0=1 or argument0=vk_shift
	if keyboard_check_pressed(vk_shift) or keyboard_check_pressed(ord("x")) return true
	if argument0=2 or argument0=vk_control
	if keyboard_check_pressed(vk_control) or keyboard_check_pressed(ord("c")) return true
	// 0 = enter/z
	// 1 = shift/X
	// 2 = ctrl/C



}
