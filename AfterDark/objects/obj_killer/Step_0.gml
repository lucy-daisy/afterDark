/// @description Insert description here
// You can write your code in this editor

// Moves the Killer towards the player, the killer will go around objects marked as "Solid" (walls, buildings, ect.)
// The Killer will not move if they are stunned or if a QTE is active
if (global.qte_going == false) and (stunned == false) {
	mp_potential_step(obj_player.x, obj_player.y, move_speed, false);
}


//Sprite control
face = round(direction/90);
if face == 4 {face = 0};
sprite_index = sprite[face];
sprite_set_speed(sprite_index, 8, spritespeed_framespersecond);