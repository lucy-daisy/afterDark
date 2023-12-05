/// @description Insert description here
// You can write your code in this editor


draw_sprite_stretched(slide[current_slide], 0, x, y, display_get_gui_width(), display_get_gui_height());

if current_slide == 4 {
		instance_destroy();
}

show_debug_message(string(current_slide))