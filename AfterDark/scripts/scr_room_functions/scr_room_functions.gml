// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function next_level(){
	if room != rm_museum {
		room_goto(rm_museum);
	} 
	else {
		room_goto(obj_game_mgmt.level[obj_game_mgmt.current_level]);
		obj_game_mgmt.current_level += 1;
	}
}