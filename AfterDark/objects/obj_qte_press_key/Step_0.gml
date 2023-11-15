/// @description
// You can write your code in this editor



// If you pick the correcct key, win the QTE
if keyboard_check_pressed(ord(correct_key)) {
	global.qte_going = false;
	obj_killer.stunned = true;
	obj_killer.alarm[0] = obj_killer.recovery_time;
	instance_destroy();
}