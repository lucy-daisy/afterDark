/// @description Insert description here
// You can write your code in this editor

// Moves the Killer towards the player, the killer will go around objects marked as "Solid" (walls, buildings, ect.)
// The Killer will not move if they are stunned or if a QTE is active
if (global.qte_going == false) and (stunned == false) {
	mp_potential_step(obj_player.x, obj_player.y, move_speed, false);
}

//Checks if the player is colliding with the killer, if they are activates a QTE
if place_meeting(x, y, obj_player) and (stunned == false) {
	//Instert QTE code
	if global.qte_going == false {
		instance_create_layer(x, y, "text", obj_qte_press_key);
		global.qte_going = true;
	}
}

// Play sound. Volume changes according to distance from player
audio_emitter_position(emit, x, y, 0);

//Sprite control
face = round(direction/90);
if face == 4 {face = 0};
sprite_index = sprite[face];
sprite_set_speed(sprite_index, 8, spritespeed_framespersecond);