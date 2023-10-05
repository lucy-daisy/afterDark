/// @description Insert description here
// You can write your code in this editor

switch(room){

// Text for the start screen
case rm_start_menu:
	// Title
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_qte);
	draw_set_color(c_white);
	draw_text(room_width/2, room_height/2, "After Dark");
	
	// Subtitle
	draw_set_font(fnt_textbox);
	draw_text(room_width/2, room_height/2 + 100, "Press Enter to Start");

	// Checks in Enter Key is pressed
	if keyboard_check_pressed(vk_enter) {
		room_goto(rm_level);
	}
	
	break;
	
case rm_death_screen:
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_qte);
	draw_set_color(c_red);
	draw_text(room_width/2, room_height/2, "You Died.");
	
	draw_set_font(fnt_textbox);
	draw_text(room_width/2, room_height/2 + 100, "Press Enter");
	
	
	break;
}