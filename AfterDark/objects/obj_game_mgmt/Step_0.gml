/// @description Insert description here
// You can write your code in this editor

//DEBUGGING -- DELETE LATER
if keyboard_check_pressed(vk_tab) {
	player_dies();
}


switch(room){

// Start Screen
case rm_start_menu:
	// Checks in Enter Key is pressed
	if keyboard_check_pressed(vk_enter) {
		room_goto(rm_museum);
	}
	
	break;


case rm_death_screen:
	// Checks in Enter Key is pressed
	if keyboard_check_pressed(vk_enter) {
		game_restart();
	}
	
	break;
}