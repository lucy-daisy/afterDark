/// @description Insert description here
// You can write your code in this editor

// Moves the Killer towards the player, the killer will go around objects marked as "Solid" (walls, buildings, ect.)

if global.qte_going == false {
	mp_potential_step(obj_player.x, obj_player.y, move_speed, false);
}