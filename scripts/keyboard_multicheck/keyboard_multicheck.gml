function keyboard_multicheck(argument0) {
	if argument0=0 or argument0=vk_enter
	if keyboard_check(vk_enter) or keyboard_check(ord("z")) return true
	if argument0=1 or argument0=vk_shift
	if keyboard_check(vk_shift) or keyboard_check(ord("x")) return true
	if argument0=2 or argument0=vk_control
	if keyboard_check(vk_control) or keyboard_check(ord("c")) return true
	// 0 = enter/z
	// 1 = shift/X
	// 2 = ctrl/C



}
