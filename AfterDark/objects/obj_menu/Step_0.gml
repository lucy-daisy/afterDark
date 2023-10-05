/// @description Insert description here
// You can write your code in this editor

switch(room){

// Text for the start screen
case rm_start_menu:
	// Checks in Enter Key is pressed
	if keyboard_check_pressed(vk_enter) {
		room_goto(rm_level);
	}
	
	break;
	
case rm_death_screen:
	// Checks in Enter Key is pressed
	if keyboard_check_pressed(vk_enter) {
		room_goto(rm_start_menu);
	}
	
	break;
}