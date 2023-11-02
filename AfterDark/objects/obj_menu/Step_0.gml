/// @description Manages moving from room to room
// You can write your code in this editor

switch(room){

// Text for the start screen
case rm_start_menu:
	// Checks in Enter Key is pressed
	if keyboard_check_pressed(vk_enter) {
		room_goto(rm_prepare);
	}
	
	break;

// Inventory Screen
case rm_prepare:
	if keyboard_check_pressed(vk_enter) {
		//item_value = obj_inventory.inventory;
		room_goto(rm_level);
	}
	break;

case rm_level:
	//show_debug_message(item_value);

// Death Screen
case rm_death_screen:
	// Checks in Enter Key is pressed
	if keyboard_check_pressed(vk_enter) {
		room_goto(rm_start_menu);
	}
	
	break;
}