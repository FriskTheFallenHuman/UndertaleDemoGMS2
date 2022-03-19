/// @description Draw our bounding box/collision mask
if (collisions_display == 4 )
{
	with(obj_solidparent) 
		draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_lime, c_lime, c_lime, c_lime, true);
		
	with(obj_solidnpcparent) 
		draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_blue, c_blue, c_blue, c_blue, true);
		
	with(obj_doorparent) 
		draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true);

	with(obj_mainchara) 
		draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_red, c_red, c_red, c_red, true);

	if (global.inbattle)
	{
		with(blt_parent) 
			draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_purple, c_purple, c_purple, c_purple, true);
		
		with(obj_borderparent) 
			draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_silver, c_silver, c_silver, c_silver, true);
		
		with(obj_btparent) 
			draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_fuchsia, c_fuchsia, c_fuchsia, c_fuchsia, true);
			
		with(obj_bulletgenparent) 
			draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_aqua, c_aqua, c_aqua, c_aqua, true);
			
		with(obj_monsterparent) 
			draw_rectangle_color( bbox_left, bbox_top, bbox_right, bbox_bottom, c_navy, c_navy, c_navy, c_navy, true);
	}
}

if (collisions_display == 5 )
{
	with(all)
	{
		if (object_get_mask(object_index))
			draw_sprite_ext(mask_index, 0, x, y, 1, 1, 0, c_white, 0.5);
	}	
}

if (names_display)
{
	with(all)
	{
		txt = (string(id) + " - " + object_get_name(object_index));
		draw_set_alpha(1);
		draw_set_halign(fa_center);
		draw_set_color(c_white);
		draw_set_font(fnt_small);
		draw_text((x+15), (y-10), txt);
		draw_set_halign(fa_left);
	}
}