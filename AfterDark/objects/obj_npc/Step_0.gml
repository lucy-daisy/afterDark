/// @description Insert description here
// You can write your code in this editor

// If the NPC is colliding with the player
if place_meeting(x, y, obj_player) {

// Create a texbox object if the player presses space and there is not already a textbox object
	if keyboard_check_pressed(vk_space) {
		if my_textbox == noone {
			my_textbox = instance_create_layer(x, y, "text", obj_textbox);
			// Set the textbox's text to this NPC's variable: npc_dialogue
			my_textbox.text = npc_dialogue;
			my_textbox.name = npc_name;
			my_textbox.creator = self;
		}
	}


} else {
	if (my_textbox != noone) {
		instance_destroy(my_textbox);
		my_textbox = noone;
	}
}